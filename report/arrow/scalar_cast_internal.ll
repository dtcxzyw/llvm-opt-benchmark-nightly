inline.NumInlined: 1403
inline.NumDeleted: 810
begin_hunk_0_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  %4 = alloca %"class.std::shared_ptr.107", align 16 ; 4 uses
  %5 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %6 = alloca %"class.std::shared_ptr.110", align 16 ; 7 uses
  %7 = alloca %"class.std::vector.113", align 8   ; 10 uses
  %8 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %9 = alloca %"class.std::shared_ptr.17", align 8 ; 5 uses
  %10 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  %12 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %13 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %15 = alloca %"class.std::vector.113", align 8  ; 10 uses
  %16 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %17 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %19 = alloca %"class.std::vector.113", align 8  ; 10 uses
  %20 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %21 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %22 = load ptr, ptr %7, align 8, !tbaa !485     ; 3 uses
  %.not.i.i4.i = icmp eq ptr %22, null
  br i1 %.not.i.i4.i, label %.body, label %23

23:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !488
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %22 to i64
  %28 = sub i64 %26, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %22, i64 noundef %28) #22
  br label %.body

bb.f:                                             ; preds = %.noexc3.i
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  br label %.body

.body:                                            ; preds = %23, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bi ], [ %i.aa, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ], [ %i.aa, %23 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #21
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  br label %bb.bj
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58: ; preds = %bb.bm
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %29 = load ptr, ptr %15, align 8, !tbaa !485    ; 3 uses
  %.not.i.i4.i57 = icmp eq ptr %29, null
  br i1 %.not.i.i4.i57, label %.body64, label %30

30:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !488
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %29 to i64
  %35 = sub i64 %33, %34
  call void @_ZdlPvm(ptr noundef nonnull %29, i64 noundef %35) #22
  br label %.body64

bb.bn:                                            ; preds = %.noexc3.i59
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #21
  br label %.body64

.body64:                                          ; preds = %30, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58, %bb.cq
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.cq ], [ %i.gl, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58 ], [ %i.gl, %30 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #21
  br label %.loopexit127

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93: ; preds = %bb.cr
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %36 = load ptr, ptr %19, align 8, !tbaa !485    ; 3 uses
  %.not.i.i4.i92 = icmp eq ptr %36, null
  br i1 %.not.i.i4.i92, label %.body99, label %37

37:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !488
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %36 to i64
  %42 = sub i64 %40, %41
  call void @_ZdlPvm(ptr noundef nonnull %36, i64 noundef %42) #22
  br label %.body99

bb.cs:                                            ; preds = %.noexc3.i94
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #21
  br label %.body99

.body99:                                          ; preds = %37, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93, %bb.dv
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.dv ], [ %i.jp, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93 ], [ %i.jp, %37 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #21
  br label %.loopexit

end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.g = load ptr, ptr %0, align 8, !tbaa !470    ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !561

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i
  %3 = load ptr, ptr %0, align 8, !tbaa !470      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !471  ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
end_hunk_9
