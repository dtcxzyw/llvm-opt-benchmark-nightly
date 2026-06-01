inline.NumInlined: 30791
inline.NumDeleted: 3684
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !37

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !38
  store i64 %i.c, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !40
  store i8 %i.j, ptr %i.i, align 1, !tbaa !40
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !40
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
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
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal21RegisterVectorSwizzleEPNS0_16FunctionRegistryE:bb.a
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i22.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i22.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dz, %bb.ah ], [ %i.ej, %bb.ai ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ek, label %bb.aj, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i.i, !prof !37

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #25
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i.i

_ZN5arrow7compute10OutputTypeD2Ev.exit.i.i:       ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.af, %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.el = load ptr, ptr %9, align 8, !tbaa !123
  %i.em = load ptr, ptr %i.ae, align 8, !tbaa !127
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.el, ptr noundef %i.em)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i unwind label %bb.al

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i.i
  %i.en = load ptr, ptr %9, align 8, !tbaa !123   ; 3 uses
  %.not.i.i.i23.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i23.i.i, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.eo = load ptr, ptr %i.ad, align 8, !tbaa !126
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #27
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i

bb.al:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit.i.i
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #28
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.eu = load ptr, ptr %i.ab, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i25.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i25.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ev, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !60
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #25, !inline_history !138
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !61
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #25, !inline_history !138
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i26.i.i = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i.i26.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fh = add nsw i32 %i.ey, -1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fi = atomicrmw volatile add ptr %i.ev, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i28.i.i = phi i32 [ %i.ey, %bb.ap ], [ %i.fi, %bb.aq ]
  %i.fj = icmp eq i32 %.0.i.i.i.i.i28.i.i, 1
  br i1 %i.fj, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !37

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #25
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27.i.i, %bb.an, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i
  %i.fk = load ptr, ptr %i.an, align 8, !tbaa !63 ; 8 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fl, align 8, !tbaa !58
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !60
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !61
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #25, !inline_history !139
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #25, !inline_history !139
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.fo, %bb.av ], [ %i.fy, %bb.aw ]
  %i.fz = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.fz, label %bb.ax, label %_ZN5arrow7compute9InputTypeD2Ev.exit.i.i, !prof !37

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #25
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit.i.i

_ZN5arrow7compute9InputTypeD2Ev.exit.i.i:         ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.at, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ga = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 8 uses
  %.not.i.i29.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i29.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gb, align 8, !tbaa !58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !60
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !61
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25, !inline_history !140
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !61
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25, !inline_history !140
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i30.i.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i30.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.go = atomicrmw volatile add ptr %i.gb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i32.i.i = phi i32 [ %i.ge, %bb.bb ], [ %i.go, %bb.bc ]
  %i.gp = icmp eq i32 %.0.i.i.i.i32.i.i, 1
  br i1 %i.gp, label %bb.bd, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !37

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i, %bb.az, %_ZN5arrow7compute9InputTypeD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 0, ptr %i.aq, align 8
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %6, align 16, !tbaa !121
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !141
  store <2 x i64> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.ao, align 16, !tbaa !40
  %i.gq = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !121
  %i.gr = load ptr, ptr %i.ar, align 16, !tbaa !121 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.ar, align 16, !tbaa !121
  store <2 x ptr> %i.gq, ptr %i.ap, align 16, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.as, align 8, !tbaa !121
  %.not.i.i33.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i33.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i unwind label %bb.bf ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #28
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i: ; preds = %bb.be, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %switch.tableidx = add i32 %i.bp, -2            ; 3 uses
  %i.gv = icmp ult i32 %switch.tableidx, 8
  br i1 %i.gv, label %switch.lookup, label %_ZN5arrow7compute8internal15GenerateIntegerITtTpTyENS1_12_GLOBAL__N_125InversePermutationChunkedEvPFNS_6StatusEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumEEJEEET1_NS1_6detail9GetTypeIdE.exit.i.i

switch.lookup:                                    ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i
  %i.gw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow7compute8internal21RegisterVectorSwizzleEPNS0_16FunctionRegistryE, i64 %i.gw
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.gx = zext nneg i32 %switch.tableidx to i64
  %switch.gep60 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow7compute8internal21RegisterVectorSwizzleEPNS0_16FunctionRegistryE.1469, i64 %i.gx
  %switch.load61 = load ptr, ptr %switch.gep60, align 8
  br label %_ZN5arrow7compute8internal15GenerateIntegerITtTpTyENS1_12_GLOBAL__N_125InversePermutationChunkedEvPFNS_6StatusEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumEEJEEET1_NS1_6detail9GetTypeIdE.exit.i.i

_ZN5arrow7compute8internal15GenerateIntegerITtTpTyENS1_12_GLOBAL__N_125InversePermutationChunkedEvPFNS_6StatusEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumEEJEEET1_NS1_6detail9GetTypeIdE.exit.i.i: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i, %switch.lookup
  %_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.sink.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i ]
  %.0.i35.i.i = phi ptr [ %switch.load61, %switch.lookup ], [ null, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i ]
  store ptr %_ZN5arrow7compute8internal12_GLOBAL__N_118InversePermutationIvNS_10UInt64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.sink.i.i, ptr %i.at, align 8, !tbaa !142
  store ptr %.0.i35.i.i, ptr %i.t, align 16, !tbaa !143
  store i8 0, ptr %i.x, align 1, !tbaa !112
  store i8 0, ptr %i.y, align 2, !tbaa !113
  %i.gy = load ptr, ptr %16, align 8, !tbaa !73   ; 2 uses
  %i.gz = load <2 x ptr>, ptr %7, align 16, !tbaa !121
  store ptr null, ptr %i.ak, align 8, !tbaa !63
  store <2 x ptr> %i.gz, ptr %15, align 16, !tbaa !121
  store ptr null, ptr %7, align 16, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.au, i8 0, i64 24, i1 false)
  %i.ha = load ptr, ptr %i.as, align 8, !tbaa !145
  store ptr %i.ha, ptr %i.av, align 8, !tbaa !145
  %i.hb = load ptr, ptr %i.ar, align 16, !tbaa !133 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN5arrow7compute8internal15GenerateIntegerITtTpTyENS1_12_GLOBAL__N_125InversePermutationChunkedEvPFNS_6StatusEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumEEJEEET1_NS1_6detail9GetTypeIdE.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.au, ptr noundef nonnull align 16 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !141
  store ptr %i.hb, ptr %i.aw, align 16, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i:       ; preds = %bb.bg, %_ZN5arrow7compute8internal15GenerateIntegerITtTpTyENS1_12_GLOBAL__N_125InversePermutationChunkedEvPFNS_6StatusEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumEEJEEET1_NS1_6detail9GetTypeIdE.exit.i.i
  %i.hc = load i64, ptr %i.r, align 16
  store i64 %i.hc, ptr %i.ax, align 16
  %i.hd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !121
  store ptr null, ptr %i.ba, align 16, !tbaa !63
  store <2 x ptr> %i.hd, ptr %i.ay, align 8, !tbaa !121
  store ptr null, ptr %i.az, align 8, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 24, i1 false)
  %i.he = load ptr, ptr %i.be, align 16, !tbaa !147
  store ptr %i.he, ptr %i.bd, align 16, !tbaa !147
  %i.hf = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 16, i1 false), !tbaa.struct !141
  store ptr %i.hf, ptr %i.bh, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i

_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i:  ; preds = %bb.bh, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bi, ptr noundef nonnull align 8 dereferenceable(11) %i.u, i64 11, i1 false)
  invoke void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(216) %i.gy, ptr noundef nonnull %15)
          to label %bb.bi unwind label %bb.bs

bb.bi:                                            ; preds = %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i
  %i.hg = load ptr, ptr %14, align 8, !tbaa !148  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %bb.bj, !prof !151

bb.bj:                                            ; preds = %bb.bi
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !152, !range !158, !noundef !159
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.hk = load ptr, ptr %i.bh, align 8, !tbaa !133 ; 2 uses
  %.not.i.i36.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i36.i.i, label %_ZN5arrow7compute12VectorKernelD2Ev.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.hl = invoke noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit.i.i unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #28
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit.i.i:     ; preds = %bb.bl, %_ZN5arrow6StatusD2Ev.exit.i.i
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %15) #25
  %i.ho = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 2 uses
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
end_hunk_1
