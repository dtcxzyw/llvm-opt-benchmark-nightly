inline.NumInlined: 719
inline.NumDeleted: 388
begin_hunk_0_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  %6 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %9 = alloca %"class.std::vector.43", align 8    ; 9 uses
  %10 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %11 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %12 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 9 uses
  %16 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %17 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %18 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %21 = alloca %"class.std::vector.43", align 8   ; 9 uses
  %22 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %23 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %24 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 8
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit105
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %27 = load ptr, ptr %9, align 8, !tbaa !93      ; 3 uses
  %.not.i.i4.i = icmp eq ptr %27, null
  br i1 %.not.i.i4.i, label %.body, label %28

28:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i
  %29 = load ptr, ptr %i.ge, align 8, !tbaa !96
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %27 to i64
  %32 = sub i64 %30, %31
  call void @_ZdlPvm(ptr noundef nonnull %27, i64 noundef %32) #22
  br label %.body

bb.cl:                                            ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #20
  br label %.body

.body:                                            ; preds = %28, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i, %bb.ec
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %bb.ec ], [ %i.jg, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ], [ %i.jg, %28 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  %i.nt = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %18, i64 8
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i143: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit141
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %33 = load ptr, ptr %15, align 8, !tbaa !93     ; 3 uses
  %.not.i.i4.i142 = icmp eq ptr %33, null
  br i1 %.not.i.i4.i142, label %.body149, label %34

34:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i143
  %35 = load ptr, ptr %i.nw, align 8, !tbaa !96
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %33 to i64
  %38 = sub i64 %36, %37
  call void @_ZdlPvm(ptr noundef nonnull %33, i64 noundef %38) #22
  br label %.body149

bb.fc:                                            ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit272
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #20
  br label %.body149

.body149:                                         ; preds = %34, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i143, %bb.gt
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.gt ], [ %i.qs, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i143 ], [ %i.qs, %34 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  %i.vf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.vh = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %24, i64 8
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit: ; preds = %._crit_edge339, %bb.gw, %bb.gx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.vz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %.noexc unwind label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit.i ; 3 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit
  store ptr %i.vz, ptr %0, align 8, !tbaa !118
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  %.not.i.i241 = icmp eq ptr %.pre376.a, null
  br i1 %.not.i.i241, label %_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.jn

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.jz

bb.gz:                                            ; preds = %._crit_edge335
  %i.wl = landingpad { ptr, i32 }
          cleanup
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i196: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit194
  %i.yx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %40 = load ptr, ptr %21, align 8, !tbaa !93     ; 3 uses
  %.not.i.i4.i199 = icmp eq ptr %40, null
  br i1 %.not.i.i4.i199, label %.body202, label %41

41:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i196
  %42 = load ptr, ptr %i.vi, align 8, !tbaa !96
  %43 = ptrtoint ptr %42 to i64
  %44 = ptrtoint ptr %40 to i64
  %45 = sub i64 %43, %44
  call void @_ZdlPvm(ptr noundef nonnull %40, i64 noundef %45) #22
  br label %.body202

bb.hv:                                            ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit294
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #20
  br label %.body202

.body202:                                         ; preds = %41, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i196, %bb.jm
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.jm ], [ %i.yx, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i196 ], [ %i.yx, %41 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal15GetBooleanCastsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.jz:                                            ; preds = %.body202, %.body149, %.body, %bb.gz, %bb.ee, %bb.bp, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit.i, %bb.bo, %bb.bl, %bb.bk
  %.pn66.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gp, %bb.bl ], [ %i.gs, %bb.bp ], [ %i.og, %bb.ee ], [ %39, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit.i ], [ %.pn, %bb.bo ], [ %i.go, %bb.bk ], [ %i.wl, %bb.gz ], [ %.pn61.pn, %.body149 ], [ %.pn56.pn, %.body202 ], [ %.pn66.pn, %.body ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %common.resume
end_hunk_12
