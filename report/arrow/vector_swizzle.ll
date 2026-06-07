inline.NumInlined: 30791
inline.NumDeleted: 3684
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal21RegisterVectorSwizzleEPNS0_16FunctionRegistryE(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %3 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 14 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 27 uses
  %8 = alloca %"class.std::shared_ptr.47", align 16 ; 7 uses
  %9 = alloca %"class.std::vector.56", align 8    ; 10 uses
  %10 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %11 = alloca %"class.std::shared_ptr.68", align 16 ; 7 uses
  %12 = alloca %"class.arrow::compute::OutputType", align 8 ; 10 uses
  %13 = alloca %"class.std::shared_ptr.64", align 8 ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 16 uses
  %16 = alloca %"class.std::shared_ptr", align 8  ; 8 uses
  %17 = alloca %"struct.arrow::compute::Arity", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i40 1, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load atomic i8, ptr @_ZGVZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEv.exit.i, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions) #25
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow7compute25InversePermutationOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::InversePermutationOptions") align 8 @_ZZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow7compute25InversePermutationOptionsD2Ev, ptr nonnull @_ZZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions) #25
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEv.exit.i

common.resume:                                    ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, %bb.da, %bb.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %i.f, %bb.e ], [ %i.k, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.me, %bb.da ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions) #25
  br label %common.resume

_ZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEv.exit.i: ; preds = %bb.d, %bb.b, %bb.a
  store ptr @_ZZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEvE33kDefaultInversePermutationOptions, ptr %i.a, align 8, !tbaa !50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.g = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26, !noalias !55 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !58, !noalias !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !60, !noalias !52
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !61, !noalias !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute14VectorFunctionEJRA20_KcNS1_5ArityERKNS1_11FunctionDocEPKNS1_25InversePermutationOptionsEEEvPT_DpOT0_(ptr noundef nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, ptr noundef nonnull align 4 dereferenceable(5) %17, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_123inverse_permutation_docE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRA20_KcNS1_5ArityERKNS1_11FunctionDocEPKNS1_25InversePermutationOptionsEEESt10shared_ptrIT_EDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !52

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEv.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 232) #27, !noalias !52
  br label %common.resume

_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRA20_KcNS1_5ArityERKNS1_11FunctionDocEPKNS1_25InversePermutationOptionsEEESt10shared_ptrIT_EDpOT0_.exit.i: ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_135GetDefaultInversePermutationOptionsEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !63, !alias.scope !52
  store ptr %i.j, ptr %16, align 8, !tbaa !66, !alias.scope !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.m = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14SignedIntTypesEv()
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRA20_KcNS1_5ArityERKNS1_11FunctionDocEPKNS1_25InversePermutationOptionsEEESt10shared_ptrIT_EDpOT0_.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 129 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 130 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 120
  br label %bb.h

._crit_edge.loopexit.i:                           ; preds = %bb.bu
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !63
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.bj = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.g, %bb.f ]
  %i.bk = phi ptr [ %i.gy, %._crit_edge.loopexit.i ], [ %i.j, %bb.f ]
  store ptr %i.bk, ptr %19, align 8, !tbaa !70
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !63
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !63
  store ptr null, ptr %16, align 8, !tbaa !73
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %19, i1 noundef zeroext false)
          to label %bb.bv unwind label %bb.ck

bb.g:                                             ; preds = %_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRA20_KcNS1_5ArityERKNS1_11FunctionDocEPKNS1_25InversePermutationOptionsEEESt10shared_ptrIT_EDpOT0_.exit.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.bu, %.lr.ph.i
  %.sroa.016.020.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.hv, %bb.bu ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.016.020.i, align 8, !tbaa !75
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(131) %7, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.r, align 16, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.t, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.u, align 8, !tbaa !105
  store i32 1, ptr %i.v, align 4, !tbaa !110
  store i8 1, ptr %i.w, align 16, !tbaa !111
  store i8 1, ptr %i.x, align 1, !tbaa !112
  store i8 1, ptr %i.y, align 2, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.68") align 8 %11, i32 noundef %i.bp)
          to label %bb.i unwind label %bb.bp

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %10, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.bq = load <2 x ptr>, ptr %11, align 16, !tbaa !121
  store ptr null, ptr %i.ac, align 8, !tbaa !63
  store <2 x ptr> %i.bq, ptr %i.aa, align 8, !tbaa !121
  store ptr null, ptr %11, align 16, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.br = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc3.i.i.i unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i ; 4 uses

.noexc3.i.i.i:                                    ; preds = %bb.i
  store ptr %i.br, ptr %9, align 8, !tbaa !123
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  store ptr %i.bs, ptr %i.ad, align 8, !tbaa !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %10)
  store ptr %i.bs, ptr %i.ae, align 8, !tbaa !127
  store i32 1, ptr %12, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 32, i1 false)
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_135ResolveInversePermutationOutputTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS6_EE, ptr %i.ag, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_, ptr %i.ah, align 8, !tbaa !132
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.ai, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %8, ptr noundef nonnull %9, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef nonnull %13)
          to label %bb.j unwind label %bb.bq

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.j:                                             ; preds = %.noexc3.i.i.i
  %i.bv = load <2 x ptr>, ptr %8, align 16, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.bw = load ptr, ptr %i.ak, align 8, !tbaa !63 ; 8 uses
  store <2 x ptr> %i.bv, ptr %7, align 16, !tbaa !121
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bx, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !60
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #25, !inline_history !134
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #25, !inline_history !134
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.n ], [ %i.ck, %bb.o ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.p, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit.i.i, !prof !37

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal21RegisterVectorSwizzleEPNS0_16FunctionRegistryE:bb.a
  %.not.i.i38.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i38.i.i, label %bb.bu, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit.i.i
  %i.hp = invoke noundef zeroext i1 %i.ho(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i32 noundef 3)
          to label %bb.bu unwind label %bb.bo     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #28
  unreachable

bb.bp:                                            ; preds = %bb.h
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %.noexc3.i.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #25
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #25
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bq, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ht, %bb.bq ], [ %i.bu, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #25
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  br label %bb.br

bb.br:                                            ; preds = %.body.i.i, %bb.bp
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.hs, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bt

bb.bs:                                            ; preds = %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %15) #25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn14.i.i = phi { ptr, i32 } [ %i.hu, %bb.bs ], [ %.pn.pn.i.i, %bb.br ]
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body.i

bb.bu:                                            ; preds = %bb.bn, %_ZN5arrow7compute12VectorKernelD2Ev.exit.i.i
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.016.020.i, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.p
  br i1 %i.hw, label %._crit_edge.loopexit.i, label %bb.h

bb.bv:                                            ; preds = %._crit_edge.i
  %i.hx = load ptr, ptr %18, align 8, !tbaa !148  ; 2 uses
  %.not.i9.i = icmp eq ptr %i.hx, null
  br i1 %.not.i9.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.bw, !prof !151

bb.bw:                                            ; preds = %bb.bv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !152, !range !158, !noundef !159
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.ib = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 8 uses
  %.not.i.i10.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i10.i, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.id = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 4294967297
  %i.if = trunc i64 %i.id to i32                  ; 2 uses
  br i1 %i.ie, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ic, align 8, !tbaa !58
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ig, align 4, !tbaa !60
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !61
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #25, !inline_history !160
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #25, !inline_history !160
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i11.i = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i11.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.io = add nsw i32 %i.if, -1
  store i32 %i.io, ptr %i.ic, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.ip = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i = phi i32 [ %i.if, %bb.cb ], [ %i.ip, %bb.cc ]
  %i.iq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.iq, label %bb.cd, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #25
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bz, %_ZN5arrow6StatusD2Ev.exit.i
  %i.ir = load ptr, ptr %i.l, align 8, !tbaa !63  ; 8 uses
  %.not.i.i12.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i12.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.is, align 8, !tbaa !58
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !60
  %i.ix = load ptr, ptr %i.ir, align 8, !tbaa !61
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #25, !inline_history !161
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !61
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #25, !inline_history !161
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit

bb.cg:                                            ; preds = %bb.ce
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i13.i = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i13.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i

bb.ci:                                            ; preds = %bb.cg
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i15.i = phi i32 [ %i.iv, %bb.ch ], [ %i.jf, %bb.ci ]
  %i.jg = icmp eq i32 %.0.i.i.i.i15.i, 1
  br i1 %i.jg, label %bb.cj, label %_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #25
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit

bb.ck:                                            ; preds = %._crit_edge.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.ck, %bb.bt, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.jh, %bb.ck ], [ %i.bm, %bb.g ], [ %.pn14.i.i, %bb.bt ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %common.resume

_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ji = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26, !noalias !162 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i32 1, ptr %i.jj, align 8, !tbaa !58, !noalias !167
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 1, ptr %i.jk, align 4, !tbaa !60, !noalias !167
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ji, align 8, !tbaa !61, !noalias !167
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !167
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.jm, ptr %1, align 8, !tbaa !33, !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.jm, ptr noundef nonnull align 1 dereferenceable(7) @.str.27, i64 7, i1 false), !noalias !167
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.jn, align 8, !tbaa !41, !noalias !167
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.jo, align 1, !tbaa !40, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !167
  store i40 2, ptr %2, align 8, !noalias !167
  invoke void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %3, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_111scatter_docE)
          to label %bb.cl unwind label %bb.cp, !noalias !167

bb.cl:                                            ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit
  %i.jp = load atomic i8, ptr @_ZGVZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEvE22kDefaultScatterOptions acquire, align 8, !noalias !167
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %bb.cm, label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEv.exit.i.i.i.i.i.i.i.i, !prof !49

bb.cm:                                            ; preds = %bb.cl
  %i.jr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEvE22kDefaultScatterOptions) #25, !noalias !167
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEv.exit.i.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN5arrow7compute14ScatterOptionsC1El(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEvE22kDefaultScatterOptions, i64 noundef -1)
          to label %_ZN5arrow7compute14ScatterOptions8DefaultsEv.exit.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i, !noalias !167

_ZN5arrow7compute14ScatterOptions8DefaultsEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cn
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEvE22kDefaultScatterOptions) #25, !noalias !167
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEv.exit.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.cn
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEvE22kDefaultScatterOptions) #25, !noalias !167
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %3) #25, !noalias !167
  br label %bb.cq

_ZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute14ScatterOptions8DefaultsEv.exit.i.i.i.i.i.i.i.i.i, %bb.cm, %bb.cl
  call void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %i.jl, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %3, ptr noundef nonnull @_ZZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEvE22kDefaultScatterOptions), !noalias !167
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !38, !noalias !167 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEv.exit.i.i.i.i.i.i.i.i
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !40, !noalias !167
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #27, !noalias !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_124GetDefaultScatterOptionsEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !42, !noalias !167 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !45, !noalias !167 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ka, %i.kc
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ki, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kd = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38, !noalias !167 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !40, !noalias !167
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #27, !noalias !167
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ki, %i.kc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jz, align 8, !tbaa !42, !noalias !167
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.kj = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !48, !noalias !167
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.ko) #27, !noalias !167
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.co, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !38, !noalias !167 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !40, !noalias !167
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #27, !noalias !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i
  %i.kv = load ptr, ptr %3, align 8, !tbaa !38, !noalias !167 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !40, !noalias !167
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #27, !noalias !167
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i.i

_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !167
  %i.la = load ptr, ptr %1, align 8, !tbaa !38, !noalias !167 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.jm
  br i1 %i.lb, label %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i.i
  %i.lc = load i64, ptr %i.jm, align 8, !tbaa !40, !noalias !167
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #27, !noalias !167
  br label %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit.i

bb.cp:                                            ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_132RegisterVectorInversePermutationEPNS0_16FunctionRegistryE.exit
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.body.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.js, %.body.i.i.i.i.i.i.i.i ], [ %i.le, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !167
  %i.lf = load ptr, ptr %1, align 8, !tbaa !38, !noalias !167 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.jm
  br i1 %i.lg, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.lh = load i64, ptr %i.jm, align 8, !tbaa !40, !noalias !167
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #27, !noalias !167
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef 208) #27, !noalias !167
  br label %common.resume

_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionE, i64 16), ptr %i.jl, align 8, !tbaa !61, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !167
  store ptr %i.jl, ptr %5, align 8, !tbaa !70
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.ji, ptr %i.lj, align 8, !tbaa !63
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.cr unwind label %bb.da

bb.cr:                                            ; preds = %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit.i
  %i.lk = load ptr, ptr %4, align 8, !tbaa !148   ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i4, label %_ZN5arrow6StatusD2Ev.exit.i5, label %bb.cs, !prof !151

bb.cs:                                            ; preds = %bb.cr
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !152, !range !158, !noundef !159
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %_ZN5arrow6StatusD2Ev.exit.i5, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i5

_ZN5arrow6StatusD2Ev.exit.i5:                     ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.lo = load ptr, ptr %i.lj, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i6 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i6, label %_ZN5arrow7compute8internal12_GLOBAL__N_121RegisterVectorScatterEPNS0_16FunctionRegistryE.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i5
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.lp, align 8, !tbaa !58
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !60
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !61
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #25, !inline_history !168
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !61
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #25, !inline_history !168
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_121RegisterVectorScatterEPNS0_16FunctionRegistryE.exit

bb.cw:                                            ; preds = %bb.cu
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i7 = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i.i7, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8

bb.cy:                                            ; preds = %bb.cw
  %i.mc = atomicrmw volatile add ptr %i.lp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i9 = phi i32 [ %i.ls, %bb.cx ], [ %i.mc, %bb.cy ]
  %i.md = icmp eq i32 %.0.i.i.i.i.i9, 1
  br i1 %i.md, label %bb.cz, label %_ZN5arrow7compute8internal12_GLOBAL__N_121RegisterVectorScatterEPNS0_16FunctionRegistryE.exit, !prof !37

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #25
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_121RegisterVectorScatterEPNS0_16FunctionRegistryE.exit

bb.da:                                            ; preds = %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit.i
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %common.resume

_ZN5arrow7compute8internal12_GLOBAL__N_121RegisterVectorScatterEPNS0_16FunctionRegistryE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i5, %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not20 = icmp eq ptr %0, %1
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.022 = phi ptr [ %i.o, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.01221 = phi ptr [ %i.n, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 3 uses
  store ptr %i.a, ptr %.022, align 8, !tbaa !33
  %i.b = load ptr, ptr %.01221, align 8, !tbaa !38 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01221, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !37

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26
          to label %.noexc14 unwind label %.loopexit ; 2 uses

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.i, ptr %.022, align 8, !tbaa !38
  store i64 %i.d, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc14, %.lr.ph
  %i.j = phi ptr [ %i.i, %.noexc14 ], [ %i.a, %.lr.ph ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %.01221, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.022, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute14VectorFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.n, ptr %6, align 8, !tbaa !38
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre9 = load i64, ptr %.phi.trans.insert8, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi i64 [ %.pre9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !41
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.w, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre11 = load i64, ptr %.phi.trans.insert10, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi i64 [ %.pre11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.ak, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !174
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !38
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !40
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !40
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre13 = load i64, ptr %.phi.trans.insert12, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.be = phi i64 [ %i.ba, %bb.e ], [ %.pre13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !41
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !38
  store i64 0, ptr %i.bf, align 8, !tbaa !41
  store i8 0, ptr %i.ax, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !175, !range !158, !noundef !159
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !175
  invoke void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %6, ptr noundef %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !40
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !42 ; 3 uses
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !40
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.am, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aa
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cf = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.a
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute14VectorFunctionE, i64 16), ptr %0, align 8, !tbaa !61
  ret void

bb.h:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %6) #25
  %i.co = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.a
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.h
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.cn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.p, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.o, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !33
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !38 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !37

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !38
  store i64 %i.e, ptr %i.b, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %.lr.ph
  %i.k = phi ptr [ %i.j, %.noexc9 ], [ %i.b, %.lr.ph ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !40
  store i8 %i.l, ptr %i.k, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.o, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !180

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc6.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.r = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #24
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.t

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(5) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %4, align 8, !tbaa !38
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 7 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.al, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 7 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !38
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !40
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !40
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bd, %bb.e ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !41
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !38
  store i64 0, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ba, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !175, !range !158, !noundef !159 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp eq ptr %i.j, %i.a
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.br = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !38
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.bu, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.bv, align 8, !tbaa !181
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bx = load i64, ptr %3, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !33
  %i.ca = icmp eq ptr %i.v, %i.m
  br i1 %i.ca, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  %i.cb = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  store ptr %i.v, ptr %i.by, align 8, !tbaa !38
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.ce, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !33
  %i.ch = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ch, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !38
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !38
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !175
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %5, ptr %i.cx, align 8, !tbaa !186
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i) #25
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !191

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute14VectorFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !193 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28, !inline_history !193
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i.i) #25, !inline_history !193
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !191

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27, !inline_history !193
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #25, !inline_history !193
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute6detail12FunctionImplINS0_12VectorKernelEE11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 136
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function12DispatchBestEPSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #12

declare void @_ZNK5arrow7compute8Function7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #12

declare void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute8Function7is_pureEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !193 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28, !inline_history !193
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i.i) #25, !inline_history !193
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !191

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27, !inline_history !193
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #25, !inline_history !193
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !194
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !194
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !133  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !60
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25, !inline_history !195
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25, !inline_history !195
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i4 = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.o
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !196
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute25InversePermutationOptions8DefaultsEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::InversePermutationOptions") align 8 %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::optional", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !197
  invoke void @_ZN5arrow7compute25InversePermutationOptionsC1ElSt8optionalISt10shared_ptrINS_8DataTypeEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef -1, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !197, !range !158, !noundef !159
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !197
  br i1 %i.c, label %bb.c, label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !60
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !199
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !199
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute25InversePermutationOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !197, !range !158, !noundef !159
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !197
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !60
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !199
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !199
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

declare void @_ZN5arrow7compute25InversePermutationOptionsC1ElSt8optionalISt10shared_ptrINS_8DataTypeEEE(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, ptr noundef) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !197, !range !158, !noundef !159
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !197
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt10shared_ptrIN5arrow8DataTypeEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt17_Optional_payloadISt10shared_ptrIN5arrow8DataTypeEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !60
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !200
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !200
  br label %_ZNSt17_Optional_payloadISt10shared_ptrIN5arrow8DataTypeEELb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt17_Optional_payloadISt10shared_ptrIN5arrow8DataTypeEELb0ELb0ELb0EED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt17_Optional_payloadISt10shared_ptrIN5arrow8DataTypeEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadISt10shared_ptrIN5arrow8DataTypeEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !170
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !170
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute25InversePermutationOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !197, !range !158, !noundef !159
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !197
  br i1 %i.c, label %bb.b, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !60
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !201
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !201
  br label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !202
  br label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

declare void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.47") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #12

declare void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.68") align 8, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_135ResolveInversePermutationOutputTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.71") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.16", align 16 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !207    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load i8, ptr %i.d, align 8, !tbaa !197, !range !158, !noalias !210, !noundef !159
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !210 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !121, !noalias !210
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !121, !alias.scope !210
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !210
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !210
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3, !noalias !210
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !210 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63, !noalias !210 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !121, !noalias !210
  store <2 x ptr> %i.t, ptr %3, align 16, !tbaa !121, !alias.scope !210
  %.not.i.i.i2.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i2.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !210
  %.not.i.i.i.i3.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !210
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3, !noalias !210
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !210 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i
  %i.z = load ptr, ptr %3, align 16, !tbaa !75    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !78
  %i.ac = add i32 %i.ab, -3
  %switch.and.i = and i32 %i.ac, -7
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 63)
          to label %.noexc unwind label %bb.q     ; 6 uses

.noexc:                                           ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !33, !alias.scope !213
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !41 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ai, ptr %5, align 8, !tbaa !38, !alias.scope !213
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !40
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !40, !alias.scope !213
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.aq = phi i64 [ %i.am, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !41, !alias.scope !213
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !38
  store i64 0, ptr %i.ar, align 8, !tbaa !41
  store i8 0, ptr %i.aj, align 8, !tbaa !40
  invoke void @_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN5arrow6Status9TypeErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit unwind label %bb.r

_ZN5arrow6Status9TypeErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit: ; preds = %bb.m
  call void @_ZN5arrow6ResultINS_10TypeHolderEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %i.at = load ptr, ptr %4, align 8, !tbaa !148   ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.n, !prof !151

bb.n:                                             ; preds = %_ZN5arrow6Status9TypeErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute9InputTypeD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !219
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !219
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !60
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !218
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !218
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !170
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !170
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.75") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 6 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !223 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !226, !noalias !223 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !229, !noalias !223 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i8, ptr %i.h, align 8, !tbaa !197, !range !158, !noalias !223, !noundef !159
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEC2ES3_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63, !noalias !223 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !121, !noalias !223
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !223
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3, !noalias !223
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3, !noalias !223
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4, !noalias !223 ; 0 uses
  br label %bb.g

_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEC2ES3_.exit.i: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEE, i64 16), ptr %i.c, align 8, !tbaa !61, !noalias !223
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.u, align 8, !tbaa !226, !noalias !223
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %i.t, align 8, !tbaa !61, !noalias !223
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.g, ptr %i.v, align 8, !tbaa !229, !noalias !223
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 0, ptr %i.w, align 8, !tbaa !197, !noalias !223
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEE, i64 16), ptr %i.c, align 8, !tbaa !61, !noalias !223
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.y, align 8, !tbaa !226, !noalias !223
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %i.x, align 8, !tbaa !61, !noalias !223
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.g, ptr %i.z, align 8, !tbaa !229, !noalias !223
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x ptr> %i.n, ptr %i.ab, align 8, !tbaa !121, !noalias !223
  store i8 1, ptr %i.aa, align 8, !tbaa !197, !noalias !223
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEC2ES3_.exit.i, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !235
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(62) @.str.19)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.ad = load ptr, ptr %3, align 8, !tbaa !148   ; 2 uses
  %.not.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j, !prof !151

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !152, !range !158, !noundef !159
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !114
  store i32 %i.a, ptr %0, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !75
  store ptr %i.d, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %.pr.pre.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !60
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #25, !inline_history !237
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #25, !inline_history !237
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !63
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !122
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !122
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 4 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i4, label %_ZNSt10shared_ptrIN5arrow7compute11TypeMatcherEEaSERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %.not7.i.i.i5 = icmp eq ptr %i.ai, null
  br i1 %.not7.i.i.i5, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i6 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i13 = load ptr, ptr %i.ag, align 8, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7: ; preds = %bb.o, %bb.n, %bb.l
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.n ], [ %.pr.pre.i.i.i13, %bb.o ] ; 8 uses
  %.not8.i.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not8.i.i.i8, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12, label %bb.p

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.aq, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !60
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25, !inline_history !238
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25, !inline_history !238
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12

bb.r:                                             ; preds = %bb.p
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i9 = icmp eq i8 %i.bb, 0
  br i1 %.not.i9.i.i.i9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_3
begin_hunk_4_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !40
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !41
  %i.aj = load ptr, ptr %1, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !33
  %i.am = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !38
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !40
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !40
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !41
  store ptr %i.g, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.a, align 8, !tbaa !41
  store i8 0, ptr %i.g, align 8, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E9_M_invokeERKSt9_Any_dataOS6_SB_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !121, !noalias !256
  %i.b = load ptr, ptr %2, align 8, !tbaa !261, !noalias !256
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.arrow::Result.71") align 8 %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !263
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFN5arrow6ResultINS_10TypeHolderEEEPNS_7compute13KernelContextERKSt6vectorIS1_SaIS1_EEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultINS1_10TypeHolderEEEPNS1_7compute13KernelContextERKSt6vectorIS3_SaIS3_EEEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !148
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !148
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !197, !range !158, !noundef !159
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !197
  br i1 %i.d, label %bb.b, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !60
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !201
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !201
  br label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !202
  br label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !197, !range !158, !noundef !159
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !197
  br i1 %i.d, label %bb.b, label %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !60
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !264
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !264
  br label %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !265
  br label %_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev.exit

_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(62) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !266
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !266
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245, !noalias !266, !nonnull !159, !align !255
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(62) %2) #25, !noalias !266
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(62) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !266 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !266
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !266
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !121, !noalias !269
  %i.b = load ptr, ptr %2, align 8, !tbaa !261, !noalias !269
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.arrow::Result.75") align 8 %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !274
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEEPNS2_13KernelContextERKNS2_14KernelInitArgsEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_8Int8TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !293 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !293
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !293
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !293 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !293 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !293
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !293
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !293 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !293
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !296 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !296 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !302, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !302 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !302
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !299, !noalias !296
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !302
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !302
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !302
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !302 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !299, !noalias !296
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !299, !noalias !296
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !302
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !302
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !302
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !302 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !296
  store ptr %1, ptr %5, align 8, !tbaa !303, !noalias !296
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !296
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !309, !noalias !296
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !310, !noalias !296
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !296
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !296 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_8Int8TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !296

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !296 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !296
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !296 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !296
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !296
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !296
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !296
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !296
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !296
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !296
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !296
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !296 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !296
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !296 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !296
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !296 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !296
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !296 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !296
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !296
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !296 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !296
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !296
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !296
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !296
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !296
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !296
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !296
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !296 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !296
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !296
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !296
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !296
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !296
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !296
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_8Int8TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !331
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !331
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !331
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !331
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !333
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9Int16TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.246", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !344 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !344
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !344
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !344 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !344 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !344
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !344
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !344 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !344
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !345 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !345 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !351, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !351 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !351
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !348, !noalias !345
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !351
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !351
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !351
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !351 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !348, !noalias !345
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !348, !noalias !345
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !351
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !351
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !351
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !351 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !345
  store ptr %1, ptr %5, align 8, !tbaa !352, !noalias !345
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !345
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !354, !noalias !345
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !355, !noalias !345
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !345
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !345 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_9Int16TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !345

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !345 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !345
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !345 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !345
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !345
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !345
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !345
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !345
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !345
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !345
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !345
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !345 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !345
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !345 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !345
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !345 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !345
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !345 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !345
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !345
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !345 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !345
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !345
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !345
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !345
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !345
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !345
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !345
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !345 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !345
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !345
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !345
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !345
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !345
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !345
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9Int16TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !366
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !366
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !366
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !366
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !367
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9Int32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.295", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !376 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !376
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !376
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !376 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !376 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !376
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !376
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !376 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !376
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !377 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !377 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !383, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !383 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !383
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !380, !noalias !377
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !383
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !383
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !383
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !383 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !380, !noalias !377
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !380, !noalias !377
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !383
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !383
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !383
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !383 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !377
  store ptr %1, ptr %5, align 8, !tbaa !384, !noalias !377
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !377
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !386, !noalias !377
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !387, !noalias !377
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !377
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !377 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_9Int32TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !377

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !377 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !377
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !377 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !377
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !377
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !377
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !377
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !377
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !377
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !377
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !377
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !377 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !377
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !377 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !377
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !377 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !377
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !377 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !377
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !377
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !377
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !377 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !377
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !377
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !377
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !377
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !377
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !377
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !377
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !377 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !377
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !377
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !377
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !377
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !377
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !377
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9Int32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !398
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !398
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !398
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !398
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !399
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9Int64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.344", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !408 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !408
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !408
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !408 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !408 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !408
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !408
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !408 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !408
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !409 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !409 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !415, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !415 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !415
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !412, !noalias !409
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !415
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !415
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !415
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !415 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !412, !noalias !409
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !412, !noalias !409
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !415
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !415
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !415
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !415 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !409
  store ptr %1, ptr %5, align 8, !tbaa !416, !noalias !409
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !409
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !418, !noalias !409
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !419, !noalias !409
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !409
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !409 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_9Int64TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !409

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !409 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !409
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !409 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !409
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !409
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !409
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !409
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !409
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !409
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !409
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !409
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !409 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !409
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !409 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !409
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !409 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !409
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !409 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !409
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !409
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !409
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !409 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !409
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !409
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !409
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !409
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !409
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !409
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !409
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !409 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !409
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !409
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !409
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !409
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !409
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !409
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9Int64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !430
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !430
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !430
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !430
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !431
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9UInt8TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.393", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !440 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !440
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !440
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !440 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !440
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !440
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !440 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !440
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !441 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !441 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !447, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !447 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !447
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !444, !noalias !441
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !447
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !447
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !447
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !447 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !444, !noalias !441
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !444, !noalias !441
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !447
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !447
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !447
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !447 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !441
  store ptr %1, ptr %5, align 8, !tbaa !448, !noalias !441
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !441
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !450, !noalias !441
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !451, !noalias !441
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !441
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !441 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_9UInt8TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !441

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !441 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !441
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !441 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !441
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !441
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !441
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !441
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !441
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !441
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !441
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !441
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !441 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !441
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !441 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !441
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !441 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !441
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !441 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !441
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !441
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !441 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !441
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !441
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !441
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !441
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !441
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !441
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !441
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !441 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !441
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !441
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !441
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !441
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !441
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !441
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_9UInt8TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !462
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !462
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !462
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !462
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !463
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt16TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.442", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !472 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !472
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !472
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !472 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !472 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !472
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !472
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !472 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !472
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !473 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !473 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !479, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !479 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !479
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !476, !noalias !473
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !479
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !479
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !479
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !479 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !476, !noalias !473
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !476, !noalias !473
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !479
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !479
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !479
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !479 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !473
  store ptr %1, ptr %5, align 8, !tbaa !480, !noalias !473
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !473
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !482, !noalias !473
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !483, !noalias !473
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !473
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !473 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_10UInt16TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !473

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !473 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !473
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !473 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !473
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !473
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !473
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !473
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !473
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !473
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !473
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !473
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !473 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !473
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !473 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !473
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !473 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !473
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !473 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !473
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !473
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !473
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !473 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !473
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !473
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !473
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !473
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !473
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !473
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !473
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !473 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !473
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !473
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !473
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !473
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !473
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !473
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt16TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !494
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !494
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !494
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !494
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !495
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.491", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !504 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !504
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !504
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !504 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !504 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !504
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !504
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !504 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !504
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !505 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !505 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !511, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !511 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !511
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !508, !noalias !505
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !511
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !511
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !511
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !511 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !508, !noalias !505
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !508, !noalias !505
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !511
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !511
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !511
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !511 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !505
  store ptr %1, ptr %5, align 8, !tbaa !512, !noalias !505
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !505
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !514, !noalias !505
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !515, !noalias !505
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !505
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !505 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_10UInt32TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !505

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !505 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !505
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !505 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !505
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !505
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !505
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !505
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !505
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !505
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !505
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !505
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !505 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !505
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !505 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !505
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !505 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !505
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !505 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !505
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !505
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !505 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !505
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !505
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !505
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !505
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !505
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !505
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !505
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !505 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !505
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !505
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !505
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !505
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !505
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !505
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cp

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !121, !noalias !526
  store ptr null, ptr %i.ib, align 8, !tbaa !63, !noalias !526
  store <2 x ptr> %i.ic, ptr %14, align 16, !tbaa !121, !alias.scope !526
  store ptr null, ptr %i.hz, align 8, !tbaa !317, !noalias !526
  %i.id = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #25 ; 0 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.if, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !60
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i16 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i16, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.cf:                                            ; preds = %bb.cd
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i18 = phi i32 [ %i.ii, %bb.ce ], [ %i.is, %bb.cf ]
  %i.it = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.it, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !527
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iu = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.ch:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !60
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cj, %bb.ch
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !148 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i22, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.iu, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !152, !range !158, !noundef !159
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void

bb.cp:                                            ; preds = %bb.bz, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %.pn19.pn.i, %.body ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %5 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.540", align 8 ; 15 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %11 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %12 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.127", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292, !noalias !536 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !63, !alias.scope !536
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8, !noalias !536
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.m = cmpxchg weak ptr %i.j, i32 %.06.i.i.i.i.i.i, i32 %i.l acq_rel monotonic, align 8, !noalias !536 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0
  br i1 %i.n, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit, label %bb.c, !llvm.loop !294

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !536 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.p, align 8, !tbaa !61, !noalias !536
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #24, !noalias !536
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit:         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295, !noalias !536 ; 2 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !75, !alias.scope !536
  %.val14 = load ptr, ptr %i.f, align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203, !noalias !537 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229, !noalias !537 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = select i1 %i.w, i64 %i.d, i64 %i.x       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !197, !range !158, !noalias !543, !noundef !159
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63, !noalias !543 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !121, !noalias !543
  store <2 x ptr> %i.ag, ptr %4, align 16, !tbaa !121, !alias.scope !540, !noalias !537
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !543
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !543
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !543
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !543 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.i:                                             ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit
  store ptr %i.r, ptr %4, align 16, !tbaa !75, !alias.scope !540, !noalias !537
  store ptr %.val14, ptr %i.ac, align 8, !tbaa !63, !alias.scope !540, !noalias !537
  %.not.i.i.i2.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !543
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !543
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !543
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !543 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !537
  store ptr %1, ptr %5, align 8, !tbaa !544, !noalias !537
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !308, !noalias !537
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !546, !noalias !537
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.y, ptr %i.at, align 8, !tbaa !547, !noalias !537
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false), !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !537
  %i.av = load ptr, ptr %4, align 16, !tbaa !75, !noalias !537 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_18InversePermutationIvNS_10UInt64TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.p, !noalias !537

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.aw = load ptr, ptr %7, align 8, !tbaa !148, !noalias !537 ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !148, !noalias !537
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !537
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ay = load ptr, ptr %6, align 8, !tbaa !148, !noalias !537 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ay, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !537
  br label %bb.ay

bb.p:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !537
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !537
  br label %.body

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !537
  store ptr %i.av, ptr %9, align 8, !tbaa !75, !noalias !537
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !537
  store ptr null, ptr %i.ac, align 8, !tbaa !63, !noalias !537
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !63, !noalias !537
  store ptr null, ptr %4, align 16, !tbaa !75, !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !537
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !311, !noalias !537 ; 2 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !311, !noalias !537
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !537 ; 4 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !63, !noalias !537
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !311, !noalias !537 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !311, !noalias !537
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !537 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !63, !noalias !537
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !121, !noalias !537
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !537
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.av, !noalias !537 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !312, !noalias !537
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !315, !noalias !537
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !311, !noalias !537
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bi, ptr %i.bs, align 8, !tbaa !63, !noalias !537
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !537
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !537
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !537
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !537 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !537
  %.pre1.i = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !537
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc.i
  %i.by = phi ptr [ %.pre1.i, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %.noexc.i ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %.noexc.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !311, !noalias !537
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63, !noalias !537
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.t

bb.t:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !537
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !537
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal12_GLOBAL__N_122InversePermutationImplINS2_18InversePermutationIvNS_10UInt64TypeEEEE26AllocateValidityBufAndFillEb:bb.a
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_122InversePermutationImplINS2_18InversePermutationIvNS_10UInt64TypeEEEE15AllocateDataBufERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.182", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !544
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !547
  %i.d = load ptr, ptr %2, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.c, %i.h
  call void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.182") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = load ptr, ptr %3, align 8, !tbaa !148
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.b, !prof !151

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !148
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !121, !noalias !8407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !63   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !121
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !60
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !1552
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !1552
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8412
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !148   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !60
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !1557
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !1557
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.q, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !37

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !148  ; 2 uses
  %.not.i.i9 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i9, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.az = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.ag, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_8Int8TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.659", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8438)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8438 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8438 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8441)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8444, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8444 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8444
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8441, !noalias !8438
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8444
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8444
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8444
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8444 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8441, !noalias !8438
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8444
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8444
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8444
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8444 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8438
  store ptr %1, ptr %7, align 8, !tbaa !8445, !noalias !8438
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8438
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8449, !noalias !8438
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8450, !noalias !8438
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8438
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8438
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8438
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8438 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_8Int8TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8438

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8438 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8438
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8438
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8438 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8438
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8438
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8438
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8438
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8438
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8438
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8438
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8438
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8438
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8438
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8438
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8438 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8438
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8438 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8438
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8438 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8438
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8438 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8438
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8438
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8438 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8438
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8438
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8438
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8438
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8438
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8438
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8438
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8438 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8438
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8438
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8438
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8438
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8438
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_8Int8TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8471
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9Int16TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.742", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8474)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8474 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8474 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8477)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8480, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8480 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8480
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8477, !noalias !8474
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8480
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8480
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8480
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8480 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8477, !noalias !8474
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8480
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8480
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8480
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8480 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8474
  store ptr %1, ptr %7, align 8, !tbaa !8481, !noalias !8474
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8474
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8483, !noalias !8474
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8484, !noalias !8474
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8474
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8474
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8474
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8474 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_9Int16TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8474

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8474 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8474
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8474
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8474 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8474
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8474
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8474
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8474
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8474
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8474
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8474
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8474
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8474
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8474
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8474
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8474 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8474
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8474 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8474
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8474 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8474
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8474 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8474
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8474
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8474 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8474
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8474
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8474
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8474
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8474
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8474
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8474
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8474 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8474
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8474
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8474
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8474
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8474
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9Int16TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8499
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9Int32TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.791", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8502)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8502 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8502 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8502
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8505)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8508, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8508 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8508
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8505, !noalias !8502
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8508
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8508
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8508
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8508 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8505, !noalias !8502
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8508
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8508
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8508
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8508 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8502
  store ptr %1, ptr %7, align 8, !tbaa !8509, !noalias !8502
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8502
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8511, !noalias !8502
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8512, !noalias !8502
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8502
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8502
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8502
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8502 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_9Int32TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8502

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8502 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8502
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8502
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8502 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8502
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8502
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8502
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8502
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8502
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8502
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8502
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8502
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8502
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8502
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8502
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8502 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8502
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8502 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8502
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8502 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8502
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8502 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8502
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8502
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8502
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8502 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8502
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8502
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8502
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8502
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8502
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8502
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8502
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8502 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8502
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8502
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8502
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8502
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8502
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9Int32TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8527
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9Int64TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.840", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8530)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8530 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8530 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8533)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8536, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8536 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8536
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8533, !noalias !8530
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8536
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8536
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8536
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8536 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8533, !noalias !8530
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8536
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8536
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8536
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8536 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8530
  store ptr %1, ptr %7, align 8, !tbaa !8537, !noalias !8530
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8530
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8539, !noalias !8530
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8540, !noalias !8530
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8530
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8530
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8530
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8530 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_9Int64TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8530

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8530 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8530
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8530
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8530 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8530
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8530
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8530
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8530
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8530
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8530
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8530
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8530
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8530
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8530
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8530
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8530 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8530
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8530 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8530
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8530 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8530
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8530 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8530
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8530
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8530
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8530 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8530
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8530
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8530
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8530
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8530
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8530
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8530
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8530 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8530
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8530
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8530
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8530
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8530
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9Int64TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8555
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9UInt8TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.889", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8558)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8558 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8558 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8558
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8561)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8564, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8564 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8564
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8561, !noalias !8558
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8564
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8564
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8564
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8564 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8561, !noalias !8558
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8564
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8564
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8564
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8564 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8558
  store ptr %1, ptr %7, align 8, !tbaa !8565, !noalias !8558
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8558
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8567, !noalias !8558
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8568, !noalias !8558
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8558
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8558
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8558
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8558 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_9UInt8TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8558

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8558 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8558
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8558
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8558 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8558
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8558
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8558
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8558
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8558
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8558
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8558
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8558
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8558
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8558
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8558
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8558 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8558
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8558 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8558
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8558 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8558
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8558 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8558
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8558
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8558 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8558
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8558
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8558
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8558
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8558
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8558
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8558
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8558 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8558
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8558
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8558
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8558
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8558
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_9UInt8TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8583
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_10UInt16TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.938", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8586)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8586 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8586 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8589)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8592, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8592 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8592
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8589, !noalias !8586
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8592
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8592
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8592
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8592 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8589, !noalias !8586
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8592
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8592
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8592
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8592 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8586
  store ptr %1, ptr %7, align 8, !tbaa !8593, !noalias !8586
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8586
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8595, !noalias !8586
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8596, !noalias !8586
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8586
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8586
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8586
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8586 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_10UInt16TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8586

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8586 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8586
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8586
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8586 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8586
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8586
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8586
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8586
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8586
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8586
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8586
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8586
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8586
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8586
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8586
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8586 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8586
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8586 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8586
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8586 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8586
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8586 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8586
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8586
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8586
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8586 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8586
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8586
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8586
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8586
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8586
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8586
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8586
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8586 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8586
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8586
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8586
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8586
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8586
end_hunk_17
begin_hunk_18_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_10UInt16TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8611
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_10UInt32TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.987", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8614)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8614 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8614 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8617)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8620, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8620 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8620
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8617, !noalias !8614
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8620
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8620
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8620
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8620 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8617, !noalias !8614
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8620
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8620
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8620
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8620 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8614
  store ptr %1, ptr %7, align 8, !tbaa !8621, !noalias !8614
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8614
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8623, !noalias !8614
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8624, !noalias !8614
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8614
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8614
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8614 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_10UInt32TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8614

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8614 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8614
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8614
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8614 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8614
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8614
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8614
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8614
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8614
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8614
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8614
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8614
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8614
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8614
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8614
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8614 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8614
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8614 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8614
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8614 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8614
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8614 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8614
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8614
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8614 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8614
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8614
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8614
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8614
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8614
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8614
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8614
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8614 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8614
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8614
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8614
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8614
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8614
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_10UInt32TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE:bb.a
  %i.iu = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !8639
  %i.iv = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.iw, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !60
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25, !inline_history !332
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i26 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i26, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.co:                                            ; preds = %bb.cm
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i28 = phi i32 [ %i.iz, %bb.cn ], [ %i.jj, %bb.co ]
  %i.jk = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.jk, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.cq:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.bt
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jm, %bb.cr ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #25
  br label %bb.ct

bb.ct:                                            ; preds = %.body, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dc

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.bq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jo = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !151

bb.cu:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !60
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i.i31, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.cy ], [ %i.kf, %bb.cz ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.da, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !37

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cw, %bb.cu
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !148 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.kh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !152, !range !158, !noundef !159
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.dc:                                            ; preds = %bb.ct, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.hb, %bb.br ], [ %.pn.pn, %bb.ct ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125InversePermutationChunkedIvNS_10UInt64TypeEE4ExecEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.732, align 1            ; 3 uses
  %5 = alloca %class.anon.728, align 8            ; 4 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::InversePermutationImpl.1036", align 8 ; 15 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.139", align 8  ; 10 uses
  %13 = alloca [2 x %"class.std::shared_ptr.136"], align 8 ; 8 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 15 uses
  %15 = alloca %"class.std::shared_ptr.127", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %17 = alloca %"class.std::shared_ptr.619", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.656", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8418
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !1575
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8423 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val19 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8642)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !noalias !8642 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229, !noalias !8642 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add nuw nsw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 %i.h, i64 %i.q       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !8642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8645)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !197, !range !158, !noalias !8648, !noundef !159
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63, !noalias !8648 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !121, !noalias !8648
  store <2 x ptr> %i.z, ptr %6, align 16, !tbaa !121, !alias.scope !8645, !noalias !8642
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8648
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8648
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3, !noalias !8648
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !8648 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.g:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !121, !alias.scope !8645, !noalias !8642
  %.not.i.i.i2.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i2.i.i, label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8648
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8648
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !8648
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !8648 ; 0 uses
  br label %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i

_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !8642
  store ptr %1, ptr %7, align 8, !tbaa !8649, !noalias !8642
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !8448, !noalias !8642
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.h, ptr %i.al, align 8, !tbaa !8651, !noalias !8642
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %i.am, align 8, !tbaa !8652, !noalias !8642
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !noalias !8642
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !8642
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !8642
  %i.ao = load ptr, ptr %6, align 16, !tbaa !75, !noalias !8642 ; 2 uses
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_122InversePermutationImplINS3_25InversePermutationChunkedIvNS_10UInt64TypeEEEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.n, !noalias !8642

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.ap = load ptr, ptr %9, align 8, !tbaa !148, !noalias !8642 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !148, !noalias !8642
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8642
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit27.i, label %bb.k, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.ar = load ptr, ptr %8, align 8, !tbaa !148, !noalias !8642 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ar, null
  br i1 %.not.i22.i, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.l, !prof !151

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !158, !noundef !159
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit23.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit23.i

_ZN5arrow6StatusD2Ev.exit23.i:                    ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8642
  br label %bb.aw

bb.n:                                             ; preds = %_ZNKRSt8optionalISt10shared_ptrIN5arrow8DataTypeEEE8value_orIRKS3_EES3_OT_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !8642
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8642
  br label %bb.bp

_ZN5arrow6StatusD2Ev.exit27.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !8642
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !8642
  store ptr %i.ao, ptr %11, align 8, !tbaa !75, !noalias !8642
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !63, !noalias !8642
  store ptr null, ptr %i.v, align 8, !tbaa !63, !noalias !8642
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !63, !noalias !8642
  store ptr null, ptr %6, align 16, !tbaa !75, !noalias !8642
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !8642
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !311, !noalias !8642 ; 2 uses
  store ptr %i.ay, ptr %13, align 8, !tbaa !311, !noalias !8642
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63, !noalias !8642 ; 4 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63, !noalias !8642
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !311, !noalias !8642 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !311, !noalias !8642
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63, !noalias !8642 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !63, !noalias !8642
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !121, !noalias !8642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !8642
  %i.bi = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.at, !noalias !8642 ; 6 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit27.i
  store ptr %i.bi, ptr %12, align 8, !tbaa !312, !noalias !8642
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !315, !noalias !8642
  store ptr %i.ay, ptr %i.bi, align 8, !tbaa !311, !noalias !8642
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !63, !noalias !8642
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8642
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !8642
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3, !noalias !8642
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !8642 ; 0 uses
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !311, !noalias !8642
  %.pre1.i = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !8642
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.noexc.i
  %i.br = phi ptr [ %.pre1.i, %bb.q ], [ %i.bh, %bb.p ], [ %i.bh, %.noexc.i ] ; 3 uses
  %i.bs = phi ptr [ %.pre.i, %bb.q ], [ %i.be, %bb.p ], [ %i.be, %.noexc.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !311, !noalias !8642
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !63, !noalias !8642
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !8642
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute8internal12_GLOBAL__N_122InversePermutationImplINS2_25InversePermutationChunkedIvNS_8Int8TypeEEEE26AllocateValidityBufAndFillEb:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.n, %bb.l
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !148  ; 2 uses
  %.not.i.i10 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i10, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bh = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.ao, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_122InversePermutationImplINS2_25InversePermutationChunkedIvNS_8Int8TypeEEEE15AllocateDataBufERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.182", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !8445
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8450
  %i.d = load ptr, ptr %2, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.c, %i.h
  call void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.182") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = load ptr, ptr %3, align 8, !tbaa !148
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.b, !prof !151

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !148
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !121, !noalias !9660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !63   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !121
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !60
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !1552
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25, !inline_history !1552
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #25
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !148, !alias.scope !9665
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !148   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !151

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !60
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !1557
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !1557
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.q, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !37

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !148  ; 2 uses
  %.not.i.i9 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i9, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.az = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.ag, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !152, !range !158, !noundef !159
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.656", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !121
  store ptr null, ptr %i.d, align 8, !tbaa !63
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !121
  store ptr null, ptr %1, align 8, !tbaa !8701
  invoke void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !60
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #25, !inline_history !9668
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #25, !inline_history !9668
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #25
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ChunkedArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow12ChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.644", align 8   ; 8 uses
  %3 = alloca [1 x %"class.std::shared_ptr.656"], align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.16", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !8701   ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !8701
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !63
  store ptr %i.d, ptr %i.b, align 8, !tbaa !63
  store ptr null, ptr %1, align 8, !tbaa !8701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc unwind label %bb.y     ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %2, align 8, !tbaa !9669
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !9670
  store ptr %i.a, ptr %i.e, align 8, !tbaa !8701
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.n, align 8, !tbaa !9671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12ChunkedArrayC2ESt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EES2_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %2, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !60
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #25, !inline_history !218
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !61
end_hunk_20
begin_hunk_21_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #25, !inline_history !16634
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.al, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 7 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !38
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !40
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !40
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bd, %bb.e ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !41
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !38
  store i64 0, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ba, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !175, !range !158, !noundef !159 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !175
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp eq ptr %i.j, %i.a
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.br = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !38
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.bu, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.bv, align 8, !tbaa !181
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bx = load i64, ptr %2, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !33
  %i.ca = icmp eq ptr %i.v, %i.m
  br i1 %i.ca, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  %i.cb = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  store ptr %i.v, ptr %i.by, align 8, !tbaa !38
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.ce, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !33
  %i.ch = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ch, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !38
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !38
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !175
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.cx, align 8, !tbaa !186
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute12MetaFunctionE, i64 16), ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute12MetaFunction11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #12

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.732, align 1            ; 3 uses
  %6 = alloca %class.anon.732, align 1            ; 3 uses
  %7 = alloca %class.anon.732, align 1            ; 6 uses
  %8 = alloca %class.anon.732, align 1            ; 3 uses
  %9 = alloca %class.anon.1102, align 8           ; 5 uses
  %10 = alloca %class.anon.1102, align 8          ; 5 uses
  %11 = alloca %class.anon.732, align 1           ; 3 uses
  %12 = alloca %class.anon.732, align 1           ; 3 uses
  %13 = alloca %class.anon.1102, align 8          ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.arrow::compute::InversePermutationOptions", align 8 ; 9 uses
  %32 = alloca %"class.std::optional", align 16   ; 5 uses
  %33 = alloca %"class.std::shared_ptr.16", align 16 ; 11 uses
  %34 = alloca %"class.arrow::Result", align 8    ; 14 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::vector.589", align 8  ; 13 uses
  %37 = alloca [1 x %"struct.arrow::Datum"], align 8 ; 10 uses
  %38 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %39 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::vector.589", align 8  ; 13 uses
  %42 = alloca [2 x %"struct.arrow::Datum"], align 8 ; 15 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8415   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !8418  ; 3 uses
  %i.e = and i8 %i.d, -2
  %spec.select.i = icmp eq i8 %i.e, 2
  br i1 %spec.select.i, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %switch.tableidx.i = add i8 %i.d, -1            ; 2 uses
  %i.f = icmp ult i8 %switch.tableidx.i, 5
  %switch.idx.cast.i = zext i8 %switch.tableidx.i to i32
  %switch.offset.i = add nuw nsw i32 %switch.idx.cast.i, 1
  %.0.i = select i1 %i.f, i32 %switch.offset.i, i32 0
  call void @_ZN5arrow8ToStringB5cxx11ENS_5Datum4KindE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i32 noundef %.0.i)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 25)
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 14 uses
  store ptr %i.h, ptr %17, align 8, !tbaa !33, !alias.scope !16635
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.i, ptr %17, align 8, !tbaa !38, !alias.scope !16635
  %i.p = load i64, ptr %i.j, align 8, !tbaa !40
end_hunk_21
begin_hunk_22_@_ZNK5arrow7compute8internal12_GLOBAL__N_119ScatterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
          to label %bb.ed unwind label %bb.eb

bb.eb:                                            ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i244, %bb.ea
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sp = load ptr, ptr %41, align 8, !tbaa !8415 ; 3 uses
  %.not.i.i5.i242 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i5.i242, label %.body245, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sq = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !16672
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.sp to i64
  %i.su = sub i64 %i.ss, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %i.sp, i64 noundef %i.su) #27
  br label %.body245

bb.ed:                                            ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i244
  %i.sv = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store ptr %i.sn, ptr %i.sv, align 8, !tbaa !16673
  invoke void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull %39, ptr noundef %4)
          to label %bb.ee unwind label %bb.ek

bb.ee:                                            ; preds = %bb.ed
  %i.sw = load ptr, ptr %41, align 8, !tbaa !8415 ; 3 uses
  %i.sx = load ptr, ptr %i.sv, align 8, !tbaa !16673 ; 2 uses
  %.not4.i.i.i248 = icmp eq ptr %i.sw, %i.sx
  br i1 %.not4.i.i.i248, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i255, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %bb.ee, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i251
  %.05.i.i.i250 = phi ptr [ %i.ta, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i251 ], [ %i.sw, %bb.ee ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i250)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i251 unwind label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i.i249
  %i.sy = landingpad { ptr, i32 }
          catch ptr null
  %i.sz = extractvalue { ptr, i32 } %i.sy, 0
  call void @__clang_call_terminate(ptr %i.sz) #28
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i251:  ; preds = %.lr.ph.i.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ta = getelementptr inbounds nuw i8, ptr %.05.i.i.i250, i64 24 ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %i.ta, %i.sx
  br i1 %.not.i.i.i252, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i253, label %.lr.ph.i.i.i249, !llvm.loop !16674

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i253: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i251
  %.pr.i254 = load ptr, ptr %41, align 8, !tbaa !8415
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i255

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i255: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i253, %bb.ee
  %i.tb = phi ptr [ %.pr.i254, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i253 ], [ %i.sw, %bb.ee ] ; 3 uses
  %.not.i.i1.i256 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i1.i256, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit258, label %bb.eg

bb.eg:                                            ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i255
  %i.tc = load ptr, ptr %i.sm, align 8, !tbaa !16672
  %i.td = ptrtoint ptr %i.tc to i64
  %i.te = ptrtoint ptr %i.tb to i64
  %i.tf = sub i64 %i.td, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.tf) #27
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit258

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit258:  ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i255, %bb.eg
  %i.tg = getelementptr inbounds nuw i8, ptr %42, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.tg)
          to label %_ZN5arrow5DatumD2Ev.exit259 unwind label %bb.eh

bb.eh:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit259, %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit258
  %i.th = landingpad { ptr, i32 }
          catch ptr null
  %i.ti = extractvalue { ptr, i32 } %i.th, 0
  call void @__clang_call_terminate(ptr %i.ti) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit259:                      ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit258
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %_ZN5arrow5DatumD2Ev.exit259.1 unwind label %bb.eh

_ZN5arrow5DatumD2Ev.exit259.1:                    ; preds = %_ZN5arrow5DatumD2Ev.exit259
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.tj = load ptr, ptr %40, align 8, !tbaa !38   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.rz
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZN5arrow5DatumD2Ev.exit259.1
  %i.tl = load i64, ptr %i.rz, align 8, !tbaa !40
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZN5arrow5DatumD2Ev.exit259.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %_ZN5arrow5DatumD2Ev.exit263 unwind label %bb.ei

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %i.tn = landingpad { ptr, i32 }
          catch ptr null
  %i.to = extractvalue { ptr, i32 } %i.tn, 0
  call void @__clang_call_terminate(ptr %i.to) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit263:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.em

bb.ej:                                            ; preds = %bb.dy
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.ed
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %41) #25
  br label %.body245

.body245:                                         ; preds = %bb.ec, %bb.eb, %bb.ek
  %.pn56 = phi { ptr, i32 } [ %i.tq, %bb.ek ], [ %i.so, %bb.eb ], [ %i.so, %bb.ec ]
  %i.tr = getelementptr inbounds nuw i8, ptr %42, i64 24
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.tr) #25
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #25
  br label %.loopexit

.loopexit:                                        ; preds = %.body236, %.body245, %.body236.thread
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %.body245 ], [ %i.sd, %.body236.thread ], [ %i.sh, %.body236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.ts = load ptr, ptr %40, align 8, !tbaa !38   ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.rz
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %.loopexit
  %i.tu = load i64, ptr %i.rz, align 8, !tbaa !40
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.ej
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %i.tp, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %bb.ex

bb.em:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit263, %bb.dt
  %i.tw = load ptr, ptr %34, align 8, !tbaa !148  ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.en, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !151

bb.en:                                            ; preds = %bb.em
  %i.ty = getelementptr inbounds nuw i8, ptr %34, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.tz = landingpad { ptr, i32 }
          catch ptr null
  %i.ua = extractvalue { ptr, i32 } %i.tz, 0
  call void @__clang_call_terminate(ptr %i.ua) #28
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pr.i267 = load ptr, ptr %34, align 8, !tbaa !148 ; 2 uses
  %.not.i.i268 = icmp eq ptr %.pr.i267, null
  br i1 %.not.i.i268, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !337

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.em
  %i.ub = phi ptr [ %.pr.i267, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.tw, %bb.em ]
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !152, !range !158, !noundef !159
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ep

bb.ep:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #25
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute25InversePermutationOptionsE, i64 16), ptr %31, align 8, !tbaa !61
  %i.uf = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 8, !tbaa !197, !range !158, !noundef !159
  %i.uh = trunc nuw i8 %i.ug to i1
  store i8 0, ptr %i.uf, align 8, !tbaa !197
  br i1 %i.uh, label %bb.eq, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

bb.eq:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.ui = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i.i.i269 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i.i.i.i269, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8 ; 4 uses
  %i.ul = load atomic i64, ptr %i.uk acquire, align 8 ; 2 uses
  %i.um = icmp eq i64 %i.ul, 4294967297
  %i.un = trunc i64 %i.ul to i32                  ; 2 uses
  br i1 %i.um, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store i32 0, ptr %i.uk, align 8, !tbaa !58
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  store i32 0, ptr %i.uo, align 4, !tbaa !60
  %i.up = load ptr, ptr %i.uj, align 8, !tbaa !61
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(16) %i.uj) #25, !inline_history !201
  %i.us = load ptr, ptr %i.uj, align 8, !tbaa !61
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(16) %i.uj) #25, !inline_history !201
  br label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

bb.et:                                            ; preds = %bb.er
  %i.uv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.uv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.uw = add nsw i32 %i.un, -1
  store i32 %i.uw, ptr %i.uk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.ux = atomicrmw volatile add ptr %i.uk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ev, %bb.eu
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.un, %bb.eu ], [ %i.ux, %bb.ev ]
  %i.uy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.uy, label %bb.ew, label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, !prof !37

bb.ew:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uj) #25, !inline_history !202
  br label %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit

_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit: ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.eq, %bb.es, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %bb.ez

bb.ex:                                            ; preds = %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn, %bb.el ], [ %.pn52.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  call void @_ZN5arrow7compute25InversePermutationOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %31) #25
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.du
  %.pn56.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn, %bb.ex ], [ %i.rl, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %bb.fa

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZN5arrow7compute25InversePermutationOptionsD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  ret void

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %.pn64.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn64.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.pn56.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ]
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn
}

declare void @_ZN5arrow7compute14ScatterOptionsC1El(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #12

declare void @_ZN5arrow8ToStringB5cxx11ENS_5Datum4KindE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !148
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !148
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

declare noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

declare void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.732, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8415   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16673 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
end_hunk_22
