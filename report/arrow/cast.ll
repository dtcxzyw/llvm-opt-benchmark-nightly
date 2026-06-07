inline.NumInlined: 2454
inline.NumDeleted: 1412
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !37

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 2 uses
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
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

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
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29
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
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal18RegisterScalarCastEPNS0_16FunctionRegistryE(ptr noundef %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %3 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 13 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #28, !noalias !49 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !54, !noalias !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !57, !noalias !56
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !58, !noalias !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !33, !noalias !56
  store i32 1953718627, ptr %i.e, align 8, !noalias !56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !41, !noalias !56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 0, ptr %i.g, align 4, !tbaa !40, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !56
  store i40 1, ptr %2, align 8, !noalias !56
  invoke void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %3, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE)
          to label %bb.b unwind label %bb.d, !noalias !56

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %3, ptr noundef null), !noalias !56
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38, !noalias !56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !40, !noalias !56
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29, !noalias !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42, !noalias !56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45, !noalias !56 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38, !noalias !56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !56
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29, !noalias !56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !42, !noalias !56
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48, !noalias !56
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #29, !noalias !56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38, !noalias !56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !40, !noalias !56
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #29, !noalias !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %3, align 8, !tbaa !38, !noalias !56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !40, !noalias !56
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29, !noalias !56
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !56
  %i.ao = load ptr, ptr %1, align 8, !tbaa !38, !noalias !56 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !40, !noalias !56
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29, !noalias !56
  br label %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit

bb.d:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !56
  %i.at = load ptr, ptr %1, align 8, !tbaa !38, !noalias !56 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.e
  br i1 %i.au, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.av = load i64, ptr %i.e, align 8, !tbaa !40, !noalias !56
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #29, !noalias !56
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i

common.resume:                                    ; preds = %bb.p, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.bx, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #29, !noalias !56
  br label %common.resume

_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 88) ({ [13 x ptr] }, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !58, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !56
  store ptr %i.d, ptr %5, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.ax, align 8, !tbaa !65
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit
  %i.ay = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !70, !range !77, !noundef !78
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !65 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bd, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !57
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !79
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !79
  br label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.bg, %bb.k ], [ %i.bq, %bb.l ]
  %i.br = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.br, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i, %_ZN5arrow6StatusD2Ev.exit
  %i.bs = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kCastOptionsTypeE, align 8, !tbaa !80
  call void @_ZN5arrow7compute16FunctionRegistry22AddFunctionOptionsTypeEPKNS0_19FunctionOptionsTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bs, i1 noundef zeroext false)
  %i.bt = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %.not.i8 = icmp eq ptr %i.bt, null
  br i1 %.not.i8, label %_ZN5arrow6StatusD2Ev.exit9, label %bb.n, !prof !69

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !70, !range !77, !noundef !78
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %_ZN5arrow6StatusD2Ev.exit9, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZN5arrow6StatusD2Ev.exit9

_ZN5arrow6StatusD2Ev.exit9:                       ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %bb.o
  ret void

bb.p:                                             ; preds = %_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call fastcc void @_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr null) #26
  br label %common.resume
}

declare void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !82
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
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !57
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #26, !inline_history !82
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #26, !inline_history !82
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7compute16FunctionRegistry22AddFunctionOptionsTypeEPKNS0_19FunctionOptionsTypeEb(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %5 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !33
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !38
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !41
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.k, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i40 1, ptr %4, align 8
  %i.m = invoke noundef nonnull align 8 dereferenceable(121) ptr @_ZN5arrow7compute11FunctionDoc5EmptyEv()
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %5, ptr noundef nonnull align 8 dereferenceable(121) %i.m)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow7compute14ScalarFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsEb(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(5) %4, ptr noundef nonnull %5, ptr noundef null, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !40
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ad = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !40
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.au = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute8internal12CastFunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %2, ptr %i.az, align 8, !tbaa !83
  ret void

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.i ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bc = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.j
  %i.be = load i64, ptr %i.a, align 8, !tbaa !40
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(121) ptr @_ZN5arrow7compute11FunctionDoc5EmptyEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !37

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !38
  store i64 %i.d, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !33
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41   ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.f, label %._crit_edge.i.i11

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc.i14, label %bb.g

.noexc.i14:                                       ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.noexc.i14
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc6.i13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12, !prof !37

.noexc6.i13:                                      ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %.noexc6.i13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12: ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.t   ; 2 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12
  store ptr %i.x, ptr %i.n, align 8, !tbaa !38
  store i64 %i.s, ptr %i.p, align 8, !tbaa !40
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.x, %.noexc16 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i11
  %i.z = load i8, ptr %i.q, align 1, !tbaa !40
  store i8 %i.z, ptr %i.y, align 1, !tbaa !40
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %.noexc19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775776
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !37

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc18 unwind label %bb.u

.noexc18:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #28
          to label %.noexc19 unwind label %bb.u

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.am = phi ptr [ null, %bb.j ], [ %i.al, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !48
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !105
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !105
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aq, ptr %i.ar, ptr noundef %i.am)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc19
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.m
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute14ScalarFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsEb:bb.a
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
  store ptr %i.n, ptr %7, align 8, !tbaa !38
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !41
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.w, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
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
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi i64 [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.ak, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !105
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 5 uses
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
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre14 = load i64, ptr %.phi.trans.insert13, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.be = phi i64 [ %i.ba, %bb.e ], [ %.pre14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !41
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !38
  store i64 0, ptr %i.bf, align 8, !tbaa !41
  store i8 0, ptr %i.ax, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !106, !range !77, !noundef !78
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !106
  invoke void @_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %7, ptr noundef %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !40
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #29
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
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #29
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
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aa
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cf = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #29
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.a
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.cn = zext i1 %5 to i8
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute14ScalarFunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !107
  ret void

bb.h:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %7) #26
  %i.cq = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.a
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %4, align 16, !tbaa !108
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !109
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.d, align 8, !tbaa !108
  store <2 x ptr> %i.f, ptr %i.b, align 16, !tbaa !108
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.e, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = load <2 x ptr>, ptr %3, align 8, !tbaa !108
  store <2 x ptr> %i.m, ptr %6, align 16, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108
  store <2 x ptr> %i.w, ptr %i.t, align 16, !tbaa !108
  br label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 16, !tbaa !110 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 3)
          to label %.body.i.i unwind label %bb.k  ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #30
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i: ; preds = %bb.h, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !108
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !108
  %.not.i.i.i6.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i6.i.i, label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i7.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i7.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit

common.resume:                                    ; preds = %bb.o, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body.i.i ], [ %i.at, %bb.o ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.j, %bb.i
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  br label %common.resume

_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit:     ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, %bb.m, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i64 20, i1 false)
  invoke void @_ZN5arrow7compute14ScalarFunction9AddKernelENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(217) %1, ptr noundef nonnull %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit
  %i.ar = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !66
  store ptr null, ptr %5, align 8, !tbaa !66
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.p, label %bb.v

bb.o:                                             ; preds = %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113
  %.not.i12 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %2, ptr %i.aw, align 4, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !112
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !115 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.s, label %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i32 %2, ptr %i.bm, align 4, !tbaa !114
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.t, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.t, %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !115
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !112
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !113
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !116
  br label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 5 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !123 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108, !noalias !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !123 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !108, !noalias !123
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !123
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !123
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !123
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !123 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.p, ptr noundef nonnull align 8 dereferenceable(6) %i.o, i64 6, i1 false), !noalias !123
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEEE, i32 0, i32 0, i32 2), ptr %i.c, align 8, !tbaa !58, !noalias !123
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %i.q, align 8, !tbaa !58, !noalias !123
  store <2 x ptr> %i.e, ptr %i.r, align 8, !tbaa !108, !noalias !123
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x ptr> %i.i, ptr %i.s, align 8, !tbaa !108, !noalias !123
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.t, align 8, !tbaa !126
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(62) @.str.44)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.u = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %.not.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !70, !range !77, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow7compute14ScalarFunction9AddKernelENS0_12ScalarKernelE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !129
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !129
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
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.w) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !57
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !130
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !130
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
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %9 = alloca %"class.std::shared_ptr.31", align 16 ; 7 uses
  %10 = alloca %"class.std::vector.40", align 16  ; 7 uses
  %11 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.51", align 8 ; 4 uses
  %13 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %8, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.a, align 16, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i8 1, ptr %i.c, align 16, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !146
  store <2 x ptr> %i.g, ptr %10, align 16, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148
  store ptr %i.j, ptr %i.h, align 16, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute10OutputTypeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.31") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef nonnull %12)
          to label %bb.c unwind label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal15GetCastFunctionERKNS_8DataTypeE:bb.a
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !215

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !216
  call void @_ZN5arrow8internal12JoinToStringIJRA21_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(21) @.str.16, ptr noundef nonnull align 8 dereferenceable(72) %1), !noalias !216
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !38, !noalias !216 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !40, !noalias !216
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit

bb.k:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !38, !noalias !216 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !40, !noalias !216
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !216
  br label %common.resume

_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !216
  call void @_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.am = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l, !prof !69

bb.l:                                             ; preds = %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !70, !range !77, !noundef !78
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !108
  store <2 x ptr> %i.au, ptr %i.ar, align 8, !tbaa !108
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit: ; preds = %bb.p, %bb.o, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
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
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute11CastOptionsC2Eb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(46) initializes((0, 46)) %0, i1 noundef zeroext %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kCastOptionsTypeE, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !221
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = xor i1 %1, true
  %i.f = zext i1 %i.e to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, i8 %i.f, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow7compute11CastOptions7is_safeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <4 x i8>, ptr %i.a, align 8
  %.fr = freeze <4 x i8> %i.b
  %i.c = trunc <4 x i8> %.fr to <4 x i1>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i8, ptr %i.d, align 4, !range !77
  %.fr14 = freeze i8 %i.e
  %i.f = trunc i8 %.fr14 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.h = load i8, ptr %i.g, align 1, !range !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = bitcast <4 x i1> %i.c to i4
  %i.k = icmp ne i4 %i.j, 0
  %op.rdx = or i1 %i.k, %i.f
  %op.rdx12 = select i1 %op.rdx, i1 true, i1 %i.i
  %i.l = xor i1 %op.rdx12, true
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow7compute11CastOptions9is_unsafeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <4 x i8>, ptr %i.a, align 8
  %.fr = freeze <4 x i8> %i.b
  %i.c = trunc <4 x i8> %.fr to <4 x i1>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i8, ptr %i.d, align 4, !range !77
  %.fr14 = freeze i8 %i.e
  %i.f = trunc i8 %.fr14 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.h = load i8, ptr %i.g, align 1, !range !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = bitcast <4 x i1> %i.c to i4
  %i.k = icmp eq i4 %i.j, -1
  %op.rdx = and i1 %i.k, %i.f
  %op.rdx12 = select i1 %op.rdx, i1 %i.i, i1 false
  ret i1 %op.rdx12
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %class.anon.177, align 1            ; 3 uses
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.162, align 8            ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.92", align 8    ; 11 uses
  %9 = alloca [1 x %"struct.arrow::Datum"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !33
  store i32 1953718627, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i8 -1, ptr %i.d, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %9, ptr %6, align 8, !tbaa !225
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %9) #26
  br label %.body

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !223
  store i8 %i.g, ptr %i.d, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.h, ptr %8, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !231
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_(ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #29
  br label %.body13

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !232
  invoke void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %2, ptr noundef %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8, !tbaa !228    ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !233

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ab = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.i:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %.body13

.body13:                                          ; preds = %.thread, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.i, %.thread ], [ %i.n, %bb.c ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  br label %.body

.body:                                            ; preds = %.body13, %bb.a
  %.pn.pn = phi { ptr, i32 } [ %i.e, %bb.a ], [ %.pn, %.body13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ag = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !233

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %3, ptr noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::compute::CastOptions", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %5, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !108
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 3 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !108
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit

_ZN5arrow7compute11CastOptionsC2ERKS1_.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %i.p = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 8 dereferenceable(6) %i.r, i64 6, i1 false)
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !234
  store <2 x ptr> %i.s, ptr %i.c, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeHolderaSERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit
  %.not7.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.aa = phi ptr [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %.pr.pre.i.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ab, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !57
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26, !inline_history !235
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26, !inline_history !235
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i9.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !37

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.u, ptr %i.g, align 8, !tbaa !65
  br label %_ZN5arrow10TypeHolderaSERKS0_.exit

_ZN5arrow10TypeHolderaSERKS0_.exit:               ; preds = %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(46) %5, ptr noundef %4)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZN5arrow10TypeHolderaSERKS0_.exit
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %5, align 8, !tbaa !58
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !65  ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i6, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ar, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !57
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !236
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !236
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i7 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

bb.t:                                             ; preds = %bb.r
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i9 = phi i32 [ %i.au, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i9, 1
  br i1 %i.bf, label %bb.u, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !37

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !237
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.v:                                             ; preds = %_ZN5arrow10TypeHolderaSERKS0_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.bg
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !238
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5ArrayERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.131") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %3, ptr noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.177, align 1            ; 3 uses
  %7 = alloca %class.anon.177, align 1            ; 3 uses
  %8 = alloca %"class.arrow::Result.88", align 8  ; 14 uses
  %9 = alloca %"struct.arrow::Datum", align 8     ; 7 uses
  %10 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %11 = alloca %"class.std::shared_ptr.135", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN5arrow5DatumC1ERKNS_5ArrayE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.88") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.c = load ptr, ptr %8, align 8, !tbaa !66
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.d, !prof !69

bb.d:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.n

bb.f:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !223, !noalias !245 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.g, label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !108, !noalias !245
  store ptr null, ptr %i.j, align 8, !tbaa !65, !noalias !245
  store <2 x ptr> %i.k, ptr %10, align 16, !tbaa !108, !alias.scope !245
  store ptr null, ptr %i.i, align 8, !tbaa !108, !noalias !245
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 %i.g, ptr %i.l, align 16, !tbaa !223, !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.135") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %11, align 16, !tbaa !108
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit12 unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit12:                       ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.n

bb.j:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit12, %bb.d
  %i.r = load ptr, ptr %8, align 8, !tbaa !66     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !69

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !66   ; 2 uses
  %.not.i.i13 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i13, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !246

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.j
  %i.w = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.r, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !70, !range !77, !noundef !78
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.n:                                             ; preds = %bb.i, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.e, %bb.e ]
  resume { ptr, i32 } %.pn.pn
}

end_hunk_2
begin_hunk_3_@_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

declare void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.135") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit:      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.pr = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !246

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit
  %i.f = phi ptr [ %.pr, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !70, !range !77, !noundef !78
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow7compute7CanCastERKNS_8DataTypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_113InitCastTableEv, ptr %2, align 8, !tbaa !108
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !108
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !108
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_122cast_table_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i:              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !108
  store ptr null, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.d

_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !108
  store ptr null, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !188  ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 24), align 8, !tbaa !202
  %.not.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.f

.preheader:                                       ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 16), %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !210 ; 4 uses
  %i.h = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.h, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = icmp eq i32 %i.f, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.preheader, !llvm.loop !211

bb.f:                                             ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit
  %i.l = sext i32 %i.f to i64
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 8), align 8, !tbaa !212 ; 2 uses
  %i.n = urem i64 %i.l, %i.m                      ; 2 uses
  %i.o = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !214  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !210  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.f, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.f, %i.y
  br i1 %i.v, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !215

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !210 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !215

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, !llvm.loop !215

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not29 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not29, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !188
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %.sroa.011.026 = phi ptr [ %i.ae, %.lr.ph ], [ %i.ak, %bb.j ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.011.026, align 4, !tbaa !114
  %.not = icmp eq i32 %i.ai, %i.aj                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 4 ; 2 uses
  %.not30 = icmp eq ptr %i.ak, %i.ag
  %or.cond = select i1 %.not, i1 true, i1 %.not30
  br i1 %or.cond, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.j

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.j, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  %.4 = phi i1 [ %.not, %bb.j ], [ false, %..loopexit_crit_edge21.i.i.i.i ], [ false, %.preheader ], [ false, %bb.f ], [ false, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit ], [ false, %.lr.ph.i.i.i.i ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal12CastFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(252) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute8internal12CastFunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.05.i.i.i.i) #26, !inline_history !252
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !254
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #29, !inline_history !252
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(217) %0) #26, !inline_history !252
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal12CastFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(252) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute8internal12CastFunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29, !inline_history !255
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i ] ; 2 uses
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.05.i.i.i.i.i) #26, !inline_history !256
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i
  %i.m = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow7compute8internal12CastFunctionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !254
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #29, !inline_history !256
  br label %_ZN5arrow7compute8internal12CastFunctionD2Ev.exit

_ZN5arrow7compute8internal12CastFunctionD2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.c
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(252) %0) #26, !inline_history !256
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEE11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 96
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZNK5arrow7compute8Function12DispatchBestEPSt6vectorINS_10TypeHolderESaIS3_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result.54") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute8Function7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute14ScalarFunction7is_pureEv(ptr noundef nonnull align 8 dereferenceable(217) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !107, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !236
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !236
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !237
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !57
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !258
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !258
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 32) #29
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !259

_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !213
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !212
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !213    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !212
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !260
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !260
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14
end_hunk_3
begin_hunk_4_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.o, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !263

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
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #27
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
  tail call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(5) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !106, !range !77, !noundef !78 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !106
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute8FunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
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
  store i32 %2, ptr %i.bv, align 8, !tbaa !264
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
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !106
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %5, ptr %i.cx, align 8, !tbaa !265
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.05.i.i.i) #26
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute14ScalarFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(217) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.05.i.i.i.i) #26, !inline_history !252
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !252
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(217) %0) #26, !inline_history !252
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #29
  ret void
}

declare void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result.54") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.05.i.i.i.i) #26, !inline_history !252
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !252
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #26, !inline_history !252
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute8Function7is_pureEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !82
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
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !266
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !266
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 8 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !57
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !267
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !267
  br label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEE6FinishB5cxx11Ev:bb.a

bb.h:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.i:                                             ; preds = %bb.f, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.c
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !40
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ax, %bb.i ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !329
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !330
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.s ; 5 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !tbaa !40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !331
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.d unwind label %bb.s

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 61)
          to label %bb.d unwind label %bb.s       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.l = load ptr, ptr %0, align 8, !tbaa !340, !nonnull !78, !align !342
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !300
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !343
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc11 unwind label %bb.t

.noexc11:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_10TypeHolderE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.e unwind label %bb.i, !noalias !343 ; 0 uses

bb.e:                                             ; preds = %.noexc11
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !33, !alias.scope !352
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !41, !alias.scope !352
  store i8 0, ptr %i.r, align 8, !tbaa !40, !alias.scope !352
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !353, !noalias !352 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !noalias !352 ; 2 uses
  %i.x = icmp ugt ptr %i.u, %i.w
  %.08.i.i.i.i = select i1 %i.x, ptr %i.u, ptr %i.w ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !355, !noalias !352 ; 2 uses
  %i.aa = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.z, i64 noundef %i.ac)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !38, !alias.scope !352 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !40, !alias.scope !352
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #29
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.h, %bb.f
  %i.ak = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !343 ; 3 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !58, !noalias !343
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !343 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 -24    ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !58, !noalias !343
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !343 ; 2 uses
  store ptr %i.ap, ptr %i.p, align 8, !tbaa !58, !noalias !343
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.aq, align 8, !tbaa !58, !noalias !343
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38, !noalias !343 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !40, !noalias !343
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.i:                                             ; preds = %.noexc11
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ae, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !343
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.aq, align 8, !tbaa !58, !noalias !343
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !343 ; 3 uses
  store ptr %i.az, ptr %3, align 8, !tbaa !58, !noalias !343
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !343 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 -24    ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %3, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !58, !noalias !343
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !356, !noalias !343
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !343
  %i.bg = load ptr, ptr %5, align 8, !tbaa !38
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !41
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.bj = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.r
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !40
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.bn, ptr %6, align 8, !tbaa !33, !alias.scope !364
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !41, !alias.scope !364
  store i8 0, ptr %i.bn, align 8, !tbaa !40, !alias.scope !364
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !353, !noalias !364 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bq, null
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !364 ; 2 uses
  %i.bt = icmp ugt ptr %i.bq, %i.bs
  %.08.i.i.i = select i1 %i.bt, ptr %i.bq, ptr %i.bs ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !355, !noalias !364 ; 2 uses
  %i.bw = ptrtoint ptr %.08.i.i.i to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bv, i64 noundef %i.by)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %6, align 8, !tbaa !38, !alias.scope !364 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bn
  br i1 %i.cc, label %.body13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.cd = load i64, ptr %i.bn, align 8, !tbaa !40, !alias.scope !364
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %.body13

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %2 ; 9 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 4 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  %i.cm = load ptr, ptr %6, align 8, !tbaa !38    ; 6 uses
  %i.cn = icmp eq ptr %i.cm, %i.bn                ; 2 uses
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cn, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cn, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.co = load i64, ptr %i.bo, align 8, !tbaa !41 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %.not21.i = icmp eq ptr %6, %i.ci
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.n, !prof !37

bb.n:                                             ; preds = %bb.m
  switch i64 %i.co, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !40
  store i8 %i.cq, ptr %i.cj, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cr = load i64, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !41
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !38
  %i.cw = load i64, ptr %i.bo, align 8, !tbaa !41
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !41
  %i.cx = load i64, ptr %i.bn, align 8, !tbaa !40
  store i64 %i.cx, ptr %i.ck, align 8, !tbaa !40
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cy = load i64, ptr %i.ck, align 8, !tbaa !40
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !38
  %i.cz = load i64, ptr %i.bo, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !41
  %i.db = load i64, ptr %i.bn, align 8, !tbaa !40
  store i64 %i.db, ptr %i.ck, align 8, !tbaa !40
  %.not.i15 = icmp eq ptr %i.cj, null
  br i1 %.not.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cj, ptr %6, align 8, !tbaa !38
  store i64 %i.cy, ptr %i.bn, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bn, ptr %6, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.dc = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cj, %bb.q ], [ %i.bn, %bb.r ], [ %i.cm, %bb.m ]
  store i64 0, ptr %i.bo, align 8, !tbaa !41
  store i8 0, ptr %i.dc, align 1, !tbaa !40
  %i.dd = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bn
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.df = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr %i.ak, ptr %4, align 8, !tbaa !58
  %i.dh = load i64, ptr %i.am, align 8
  %i.di = getelementptr inbounds i8, ptr %4, i64 %i.dh
  store ptr %i.al, ptr %i.di, align 8, !tbaa !58
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !58
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.dj, align 8, !tbaa !58
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !38 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !40
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.dj, align 8, !tbaa !58
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dq) #26
  store ptr %i.az, ptr %4, align 8, !tbaa !58
  %i.dr = load i64, ptr %i.bb, align 8
  %i.ds = getelementptr inbounds i8, ptr %4, i64 %i.dr
  store ptr %i.ba, ptr %i.ds, align 8, !tbaa !58
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !356
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.du) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.s:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.d
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.r
  br i1 %i.dz, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.u
  %i.ea = load i64, ptr %i.r, align 8, !tbaa !40
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #29
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.t, %.body.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.dw, %bb.t ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.dx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

.body13:                                          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.v

bb.v:                                             ; preds = %.body13, %.body, %bb.s
  %.pn8 = phi { ptr, i32 } [ %i.ca, %.body13 ], [ %.pn, %.body ], [ %i.dv, %bb.s ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !329
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !330
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.n ; 5 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !tbaa !40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !331
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.d unwind label %bb.n

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 61)
          to label %bb.d unwind label %bb.n       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.l = load ptr, ptr %0, align 8, !tbaa !340, !nonnull !78, !align !342
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !303
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !305, !range !77, !noundef !78
  %i.q = trunc nuw i8 %i.p to i1                  ; 3 uses
  %i.r = select i1 %i.q, ptr @.str.25, ptr @.str.26
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !33, !alias.scope !365
  %i.t = select i1 %i.q, i64 4, i64 5             ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.s, ptr noundef nonnull align 1 dereferenceable(4) %i.r, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !41, !alias.scope !365
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.q, i64 20, i64 21
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !40, !alias.scope !365
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.s, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.w = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.y = load i64, ptr %i.s, align 8, !tbaa !40
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !33, !alias.scope !374
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !41, !alias.scope !374
  store i8 0, ptr %i.aa, align 8, !tbaa !40, !alias.scope !374
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !353, !noalias !374 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !374 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %.08.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.af ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !355, !noalias !374 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %5, align 8, !tbaa !38, !alias.scope !374 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aa
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !40, !alias.scope !374
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %.body

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %2 ; 9 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  %i.az = load ptr, ptr %5, align 8, !tbaa !38    ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.aa                ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ba, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ba, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !41 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %.not21.i = icmp eq ptr %5, %i.av
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !37

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bb, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !40
  store i8 %i.bd, ptr %i.aw, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.be = load i64, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !41
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !38
  %i.bj = load i64, ptr %i.ab, align 8, !tbaa !41
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !41
  %i.bk = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.bk, ptr %i.ax, align 8, !tbaa !40
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !40
  store ptr %i.az, ptr %i.av, align 8, !tbaa !38
  %i.bm = load i64, ptr %i.ab, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !41
  %i.bo = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.bo, ptr %i.ax, align 8, !tbaa !40
  %.not.i12 = icmp eq ptr %i.aw, null
  br i1 %.not.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aw, ptr %5, align 8, !tbaa !38
  store i64 %i.bl, ptr %i.aa, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %5, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bp = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aw, %bb.l ], [ %i.aa, %bb.m ], [ %i.az, %bb.h ]
  store i64 0, ptr %i.ab, align 8, !tbaa !41
  store i8 0, ptr %i.bp, align 1, !tbaa !40
  %i.bq = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.aa
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bs = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bu = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bu, ptr %3, align 8, !tbaa !58
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %3, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !58
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.ca, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !40
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.ca, align 8, !tbaa !58
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ch) #26
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ci, ptr %3, align 8, !tbaa !58
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ck = getelementptr i8, ptr %i.ci, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %3, i64 %i.cl
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !356
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.s
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.o
  %i.ct = load i64, ptr %i.s, align 8, !tbaa !40
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.p

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.p:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.n
  %.pn8 = phi { ptr, i32 } [ %i.an, %.body ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.cp, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_10TypeHolderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !38     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !69

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  store i8 %i.v, ptr %i.t, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !40
  store i8 %i.w, ptr %i.m, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !41
  %i.x = load ptr, ptr %0, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !40
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal8CopyImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !376
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !376
  br label %_ZN5arrow7compute8internal8CopyImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow7compute8internal8CopyImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m.exit, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26
  br label %_ZN5arrow7compute8internal8CopyImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m.exit

_ZN5arrow7compute8internal8CopyImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m.exit: ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.ah = load ptr, ptr %1, align 8, !tbaa !309   ; 6 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !375, !nonnull !78, !align !342 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !303 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !305, !range !77, !noundef !78
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  store i8 %i.am, ptr %i.an, align 1, !tbaa !305
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !303 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !305, !range !77, !noundef !78
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ap
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !305
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load i64, ptr %i.at, align 8, !tbaa !303 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !305, !range !77, !noundef !78
  %i.ax = getelementptr inbounds i8, ptr %i.ah, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !305
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !303 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ai, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !305, !range !77, !noundef !78
  %i.bc = getelementptr inbounds i8, ptr %i.ah, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !305
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !303 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.ai, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !305, !range !77, !noundef !78
  %i.bh = getelementptr inbounds i8, ptr %i.ah, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !305
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !303 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.ai, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !305, !range !77, !noundef !78
  %i.bm = getelementptr inbounds i8, ptr %i.ah, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !305
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_10TypeHolderEEENS8_IS3_bEESB_SB_SB_SB_SB_EEEEERKS3_RKT_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EEPSI_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !312
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !377
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !381
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %.noexc6 unwind label %bb.b

.noexc6:                                          ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 2)
          to label %.noexc7 unwind label %bb.b

.noexc7:                                          ; preds = %.noexc6
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 3)
          to label %.noexc8 unwind label %bb.b

.noexc8:                                          ; preds = %.noexc7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 4)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %.noexc8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 5)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc9
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef 6)
          to label %_ZNK5arrow8internal13PropertyTupleIJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_EE7ForEachIRNS3_8internal18ToStructScalarImplIS4_EEEEvOT_.exit unwind label %bb.b

_ZNK5arrow8internal13PropertyTupleIJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_EE7ForEachIRNS3_8internal18ToStructScalarImplIS4_EEEEvOT_.exit: ; preds = %.noexc10
  ret void

bb.b:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !70, !range !77, !noundef !78
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.std::shared_ptr.101", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.45", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.45", align 8 ; 8 uses
  %7 = alloca %"class.arrow::Result.225", align 8 ; 16 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.101", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.d = load ptr, ptr %0, align 8, !tbaa !382, !nonnull !78, !align !342
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !300
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  %.val = load ptr, ptr %i.g, align 8, !tbaa !174, !noalias !383 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !398, !noalias !399 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !65, !alias.scope !400, !noalias !386
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load atomic i32, ptr %i.l monotonic, align 8, !noalias !399
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.d ], [ %i.q, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %.06.i.i.i.i.i.i.i.i, 1
  %i.o = cmpxchg weak ptr %i.l, i32 %.06.i.i.i.i.i.i.i.i, i32 %i.n acq_rel monotonic, align 8, !noalias !399 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  %i.q = extractvalue { i32, i1 } %i.o, 0
  br i1 %i.p, label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.i, label %bb.e, !llvm.loop !401

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26, !noalias !399 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12bad_weak_ptr, i32 0, i32 0, i32 2), ptr %i.r, align 8, !tbaa !58, !noalias !399
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #27, !noalias !399
  unreachable

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.thread.i: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !389, !noalias !386
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !386
  br label %bb.g

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.i:    ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402, !noalias !399 ; 3 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !403, !alias.scope !400, !noalias !386
  %.val2.pre.i = load ptr, ptr %i.h, align 8, !noalias !386 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !386
  %.not.i3.i = icmp eq ptr %i.u, null
  br i1 %.not.i3.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.i, %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.thread.i
  %i.v = phi ptr [ %i.s, %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.thread.i ], [ %i.h, %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !407
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.34)
          to label %.noexc.i unwind label %bb.ab, !noalias !386

.noexc.i:                                         ; preds = %bb.g
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.w = load ptr, ptr %3, align 8, !tbaa !66, !noalias !407 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %.noexc.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !70, !range !77, !noundef !78
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.i, %bb.h, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !407
  br label %bb.u

bb.j:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !407
  store ptr %i.u, ptr %5, align 8, !tbaa !403, !noalias !407
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.val2.pre.i, ptr %i.aa, align 8, !tbaa !65, !noalias !407
  %.not.i.i.i.i.i = icmp eq ptr %.val2.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.pre.i, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !407
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3, !noalias !407
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3, !noalias !407
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4, !noalias !407 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.j
  invoke void @_ZN5arrow14MakeNullScalarESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.101") align 8 %4, ptr noundef nonnull %5)
          to label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i unwind label %bb.t, !noalias !407

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i
  store ptr null, ptr %7, align 8, !tbaa !66, !alias.scope !407
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load <2 x ptr>, ptr %4, align 16, !tbaa !108, !noalias !407
  store ptr null, ptr %i.ah, align 8, !tbaa !65, !noalias !407
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !108, !alias.scope !407
  store ptr null, ptr %4, align 16, !tbaa !408, !noalias !407
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !65, !noalias !407 ; 8 uses
  %.not.i.i4.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !407 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !54, !noalias !407
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !57, !noalias !407
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !58, !noalias !407
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !407
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26, !noalias !407, !inline_history !411
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !58, !noalias !407
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !noalias !407
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26, !noalias !407, !inline_history !411
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !407
  %.not.i.i.i5.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i5.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3, !noalias !407
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4, !noalias !407
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i7.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i7.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !37

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26, !noalias !407
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6.i.i, %bb.o, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !407
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !407
  br label %.body.i

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.ba = phi ptr [ %i.h, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %i.v, %_ZN5arrow6StatusD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !386
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65, !noalias !386 ; 8 uses
  %.not.i.i4.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i4.i, label %_ZN5arrow7compute8internalL15GenericToScalarERKNS_10TypeHolderE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bc, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !57
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !412
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !412
  br label %_ZN5arrow7compute8internalL15GenericToScalarERKNS_10TypeHolderE.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !386
  %.not.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.bf, %bb.y ], [ %i.bp, %bb.z ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.aa, label %_ZN5arrow7compute8internalL15GenericToScalarERKNS_10TypeHolderE.exit, !prof !37

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26
  br label %_ZN5arrow7compute8internalL15GenericToScalarERKNS_10TypeHolderE.exit

bb.ab:                                            ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %bb.bd, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

end_hunk_6
begin_hunk_7_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33, %bb.j
  %i.bb = phi i64 [ %i.ax, %bb.j ], [ %.pre.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !41, !alias.scope !455, !noalias !458
  store ptr %i.au, ptr %.0911.i.i.i32, align 8, !tbaa !38, !alias.scope !458, !noalias !455
  store i64 0, ptr %i.bc, align 8, !tbaa !41, !alias.scope !458, !noalias !455
  store i8 0, ptr %i.au, align 8, !tbaa !40, !alias.scope !458, !noalias !455
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30, !llvm.loop !454

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !48
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !48
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc9.i.i.i.i, %.noexc.i.i.i.i, %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #29
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bl

bb.o:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #30
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !461    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %i.r, align 8, !tbaa !65
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !108
  store ptr null, ptr %2, align 8, !tbaa !408
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !108, !alias.scope !465, !noalias !462
  store ptr null, ptr %i.t, align 8, !tbaa !65, !alias.scope !465, !noalias !462
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !108, !alias.scope !462, !noalias !465
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !408, !alias.scope !465, !noalias !462
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !467

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !108, !alias.scope !471, !noalias !468
  store ptr null, ptr %i.y, align 8, !tbaa !65, !alias.scope !471, !noalias !468
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !108, !alias.scope !468, !noalias !471
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !408, !alias.scope !471, !noalias !468
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !467

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !419
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !461
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !416
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow10MakeScalarIbNS_11CTypeTraitsIbEENS_13BooleanScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.101") align 8 %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.45", align 16 ; 8 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv(), !noalias !473 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65, !noalias !473 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !108, !noalias !473
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !108, !alias.scope !473
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !473
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !473
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3, !noalias !473
  br label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !473 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %.noexc unwind label %bb.o     ; 11 uses

.noexc:                                           ; preds = %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !54, !noalias !476
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  store i32 1, ptr %i.n, align 4, !tbaa !57, !noalias !476
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.l, align 8, !tbaa !58, !noalias !476
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load <2 x ptr>, ptr %2, align 16, !tbaa !108, !noalias !476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !476
  store i64 0, ptr %i.q, align 8, !noalias !476
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !108, !noalias !476
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i8 1, ptr %i.t, align 8, !tbaa !479, !noalias !476
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 %i.a, ptr %i.u, align 1, !tbaa !484, !noalias !476
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN5arrow13BooleanScalarE, i32 0, i32 0, i32 2), ptr %i.o, align 8, !tbaa !58, !noalias !476
  store ptr %i.o, ptr %i.p, align 8, !tbaa !487, !noalias !476
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !476
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %.noexc
  store i32 2, ptr %i.n, align 4, !tbaa !3, !noalias !476
  br label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.w = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !476 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !398, !noalias !476 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !476
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !476 ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !476
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4, !noalias !476
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !58, !noalias !476
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !476
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i) #26, !noalias !476, !inline_history !488
  br label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h
  store ptr %i.l, ptr %i.q, align 8, !tbaa !398, !noalias !476
  store ptr %i.o, ptr %0, align 8, !tbaa !408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !65
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !65  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !57
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !167
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !167
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.al, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.aw, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.o:                                             ; preds = %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow13BooleanScalarEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(42) %i.a) #26, !inline_history !489
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !490  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
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
define linkonce_odr void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !167
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !167
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !398  ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !492
  br label %_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit

_ZNSt23enable_shared_from_thisIN5arrow6ScalarEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow13BooleanScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !493
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !493
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !494
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !398  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !495
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_11BooleanTypeEbE4dataEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_11BooleanTypeEbE4viewEv(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %.fca.1.insert = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6ScalarE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !493
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !493
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !494
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !398  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !495
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_10TypeHolderEEENS8_IS3_bEESB_SB_SB_SB_SB_EEEEEPS3_RKNS_12StructScalarERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(168) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !496
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !499
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 144
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 120
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 2)
          to label %.noexc6 unwind label %bb.b

.noexc6:                                          ; preds = %.noexc5
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 3)
          to label %.noexc7 unwind label %bb.b

.noexc7:                                          ; preds = %.noexc6
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 4)
          to label %.noexc8 unwind label %bb.b

.noexc8:                                          ; preds = %.noexc7
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 5)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %.noexc8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11CastOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef 6)
          to label %_ZNK5arrow8internal13PropertyTupleIJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_EE7ForEachIRNS3_8internal20FromStructScalarImplIS4_EEEEvOT_.exit unwind label %bb.b

_ZNK5arrow8internal13PropertyTupleIJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_EE7ForEachIRNS3_8internal20FromStructScalarImplIS4_EEEEvOT_.exit: ; preds = %.noexc9
  ret void

bb.b:                                             ; preds = %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc5, %.noexc, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !70, !range !77, !noundef !78
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
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

end_hunk_7
begin_hunk_8_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26, !inline_history !553
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !490  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
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
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !106, !range !77, !noundef !78 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !106
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute8FunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
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
  store i32 4, ptr %i.bv, align 8, !tbaa !264
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
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !106
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.cx, align 8, !tbaa !265
  store ptr getelementptr inbounds inrange(-16, 88) ({ [13 x ptr] }, ptr @_ZTVN5arrow7compute12MetaFunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow7compute8FunctionE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
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
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #29
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
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
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
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute12MetaFunction11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.177, align 1            ; 3 uses
  %7 = alloca %class.anon.162, align 8            ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.arrow::Result.335", align 8 ; 13 uses
  %10 = alloca %"class.arrow::Result.339", align 8 ; 11 uses
  %11 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %12 = alloca %"class.arrow::Result.343", align 8 ; 13 uses
  %13 = alloca %"class.std::shared_ptr.113", align 8 ; 6 uses
  %14 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %15 = alloca %"class.std::shared_ptr.113", align 8 ; 4 uses
  %16 = alloca %"class.arrow::Result.79", align 8 ; 12 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 11 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174, !noalias !554
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !554
  call void @_ZN5arrow6Status8FromArgsIJRA64_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(64) @.str.41), !noalias !554
  call void @_ZN5arrow6ResultIPKNS_7compute11CastOptionsEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !66, !noalias !554 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !70, !range !77, !noundef !78
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit

_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread: ; preds = %bb.b
  store ptr null, ptr %9, align 8, !tbaa !66, !alias.scope !554
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.i, align 8, !tbaa !312, !alias.scope !554
  br label %bb.g

_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !554
  %.pr = load ptr, ptr %9, align 8, !tbaa !66
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge, label %bb.f, !prof !557

_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge: ; preds = %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !312
  br label %bb.g

bb.f:                                             ; preds = %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br label %bb.cv

bb.g:                                             ; preds = %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge, %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread
  %i.k = phi ptr [ %.pre, %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge ], [ %3, %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread ] ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !228
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !403
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.bq, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %2, align 8, !tbaa !228
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.j unwind label %bb.n

end_hunk_8
begin_hunk_9_@_ZN5arrow6Status8FromArgsIJRA64_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !583
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA64_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA64_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !583
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA64_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA64_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.c = load ptr, ptr %1, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E1_clIS9_EEDaSJ_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E1_clIS9_EEDaSJ_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %2) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E1_clIS9_EEDaSJ_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E1_clIS9_EEDaSJ_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRNS_8DataTypeEEEES7_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.l, %bb.c ], [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn9
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
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
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !57
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !236
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !236
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !237
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow7compute11CastOptionsE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !57
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !586
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !586
  br label %_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !587
  br label %_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED2Ev.exit

_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(62) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !588
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !588
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437, !noalias !588, !nonnull !78, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(62) %2) #26, !noalias !588
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(62) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !588 ; 0 uses

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
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !588
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !588
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
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
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
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !108, !noalias !591
  %i.b = load ptr, ptr %2, align 8, !tbaa !596, !noalias !591
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !598
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !108
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEEPNS2_13KernelContextERKNS2_14KernelInitArgsEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !108
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !82
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal12JoinToStringIJRA21_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cast.cc() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 48), ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, align 8, !tbaa !213
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 8), align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 32), align 8, !tbaa !599
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 40), i8 0, i64 16, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEED2Ev, ptr nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #28 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !38
  store i64 32, ptr %i.b, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) @.str, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 0, ptr %i.e, align 1, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !33
  %i.g = invoke noalias noundef nonnull dereferenceable(92) ptr @_Znwm(i64 noundef 92) #28
          to label %.noexc21.i unwind label %bb.c ; 3 uses

.noexc21.i:                                       ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !38
  store i64 91, ptr %i.f, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %i.g, ptr noundef nonnull align 1 dereferenceable(91) @.str.2, i64 91, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 91, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 91
  store i8 0, ptr %i.i, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.j, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 5, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.l, align 1, !tbaa !40
  %i.m = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %.body.i.thread ; 4 uses

.body.i.thread:                                   ; preds = %.noexc21.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %.noexc21.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.o, ptr noundef nonnull %i.m)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i unwind label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.r, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.t, align 1, !tbaa !40
  store ptr %i.c, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, align 8, !tbaa !38
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 16), align 8, !tbaa !40
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 8), align 8, !tbaa !41
  store ptr %i.b, ptr %0, align 8, !tbaa !38
  store i64 0, ptr %i.d, align 8, !tbaa !41
  store i8 0, ptr %i.b, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 32), align 8, !tbaa !33
  %i.u = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.w = load i64, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 48), ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.y, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 32), align 8, !tbaa !38
  %i.z = load i64, ptr %i.f, align 8, !tbaa !40
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 48), align 8, !tbaa !40
  %.pre67.i = load i64, ptr %i.h, align 8, !tbaa !41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i, %bb.b
  %i.aa = phi i64 [ %.pre67.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i ], [ %i.w, %bb.b ]
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 40), align 8, !tbaa !41
  store ptr %i.f, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.h, align 8, !tbaa !41
  store i8 0, ptr %i.f, align 8, !tbaa !40
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 64), align 8, !tbaa !42
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 72), align 8, !tbaa !45
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 80), align 8, !tbaa !48
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 88), align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 104), ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false)
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 96), align 8, !tbaa !41
  store ptr %i.r, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.s, align 8, !tbaa !41
  store i8 0, ptr %i.r, align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, i64 120), align 8, !tbaa !106
  %.pre68.i = load ptr, ptr %2, align 8, !tbaa !38 ; 2 uses
  %i.ab = icmp eq ptr %.pre68.i, %i.j
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !40
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre68.i, i64 noundef %i.ad) #29
  %.pre69.i = load ptr, ptr %1, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ae = icmp eq ptr %.pre69.i, %i.f
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %i.af = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre69.i, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !40
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %__cxx_global_var_init.1.exit

bb.c:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

.body.i:                                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #29
  %.pre = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.an = icmp eq ptr %.pre, %i.j
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %.body.i
  %i.ao = load i64, ptr %i.j, align 8, !tbaa !40
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %.body.i, %.body.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  %i.aq = phi { ptr, i32 } [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i ], [ %i.n, %.body.i.thread ], [ %i.am, %.body.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ar = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.at = load i64, ptr %i.f, align 8, !tbaa !40
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i, %bb.c
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.al, %bb.c ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 33) #29
  resume { ptr, i32 } %.pn.pn.pn.i

__cxx_global_var_init.1.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %i.av = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow7compute11FunctionDocD2Ev, ptr nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_18cast_docE, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aw = load atomic i8, ptr @_ZGVZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %__cxx_global_var_init.5.exit, !prof !600

bb.d:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.ay = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance) #26
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %__cxx_global_var_init.5.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E11OptionsType, i32 0, i32 0, i32 2), ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, align 8, !tbaa !58
  store i64 18, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), align 8
  store ptr @.str.12, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 8), align 8
  store i64 45, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 16), align 8
  store i64 20, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 24), align 8
  store ptr @.str.11, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 32), align 8
  store i64 44, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 40), align 8
  store i64 22, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 48), align 8
  store ptr @.str.10, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 56), align 8
  store i64 43, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 64), align 8
  store i64 19, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 72), align 8
  store ptr @.str.9, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 80), align 8
  store i64 42, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 88), align 8
  store i64 19, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 96), align 8
  store ptr @.str.8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 104), align 8
  store i64 41, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 112), align 8
  store i64 18, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 120), align 8
  store ptr @.str.7, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 128), align 8
  store i64 40, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 136), align 8
  store i64 7, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 144), align 8
  store ptr @.str.6, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 152), align 8
  store i64 16, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, i64 8), i64 160), align 8
  %i.az = call ptr @llvm.invariant.start.p0(i64 176, ptr nonnull @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance) #26
  br label %__cxx_global_var_init.5.exit

__cxx_global_var_init.5.exit:                     ; preds = %__cxx_global_var_init.1.exit, %bb.d, %bb.e
  store ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_E8instance, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kCastOptionsTypeE, align 8, !tbaa !80
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!35 = !{!"p1 omnipotent char", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!39, !35, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !28, i64 8, !5, i64 16}
!40 = !{!5, !5, i64 0}
!41 = !{!39, !28, i64 8}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!45 = !{!43, !44, i64 8}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!43, !44, i64 16}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!51 = distinct !{!51, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!52 = distinct !{!52, !53, !"_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!53 = distinct !{!53, !"_ZSt11make_sharedIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEJEESt10shared_ptrIT_EDpOT0_"}
!54 = !{!55, !4, i64 8}
!55 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!56 = !{!52}
!57 = !{!55, !4, i64 12}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !6, i64 0}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0, !63, i64 8}
!62 = !{!"p1 _ZTSN5arrow7compute8FunctionE", !36, i64 0}
!63 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !64, i64 0}
!64 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!65 = !{!63, !64, i64 0}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN5arrow6StatusE", !68, i64 0}
!68 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!71, !73, i64 1}
!71 = !{!"_ZTSN5arrow6Status5StateE", !72, i64 0, !73, i64 1, !39, i64 8, !74, i64 40}
!72 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!73 = !{!"bool", !5, i64 0}
!74 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !75, i64 0}
!75 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !63, i64 8}
!76 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN5arrow7compute19FunctionOptionsTypeE", !36, i64 0}
!82 = distinct !{null, null}
!83 = !{!84, !104, i64 248}
!84 = !{!"_ZTSN5arrow7compute8internal12CastFunctionE", !85, i64 0, !100, i64 224, !104, i64 248}
!85 = !{!"_ZTSN5arrow7compute14ScalarFunctionE", !86, i64 0, !73, i64 216}
!86 = !{!"_ZTSN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE", !87, i64 0, !95, i64 192}
!87 = !{!"_ZTSN5arrow7compute8FunctionE", !39, i64 8, !88, i64 40, !89, i64 44, !90, i64 56, !94, i64 184}
!88 = !{!"_ZTSN5arrow7compute8Function4KindE", !5, i64 0}
!89 = !{!"_ZTSN5arrow7compute5ArityE", !4, i64 0, !73, i64 4}
!90 = !{!"_ZTSN5arrow7compute11FunctionDocE", !39, i64 0, !39, i64 32, !91, i64 64, !39, i64 88, !73, i64 120}
!91 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !43, i64 0}
!94 = !{!"p1 _ZTSN5arrow7compute15FunctionOptionsE", !36, i64 0}
!95 = !{!"_ZTSSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE", !96, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE12_Vector_implE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!99 = !{!"p1 _ZTSN5arrow7compute12ScalarKernelE", !36, i64 0}
!100 = !{!"_ZTSSt6vectorIN5arrow4Type4typeESaIS2_EE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIN5arrow4Type4typeESaIS2_EE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN5arrow4Type4typeESaIS2_EE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN5arrow4Type4typeESaIS2_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!104 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!105 = !{!44, !44, i64 0}
!106 = !{!90, !73, i64 120}
!107 = !{!85, !73, i64 216}
!108 = !{!36, !36, i64 0}
!109 = !{i64 0, i64 16, !40}
!110 = !{!111, !36, i64 16}
!111 = !{!"_ZTSSt14_Function_base", !5, i64 0, !36, i64 16}
!112 = !{!103, !36, i64 8}
!113 = !{!103, !36, i64 16}
!114 = !{!104, !104, i64 0}
!115 = !{!103, !36, i64 0}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN5arrow6Status2OKEv: argument 0"}
!118 = distinct !{!118, !"_ZN5arrow6Status2OKEv"}
!119 = !{!120, !94, i64 16}
!120 = !{!"_ZTSN5arrow7compute14KernelInitArgsE", !121, i64 0, !122, i64 8, !94, i64 16}
!121 = !{!"p1 _ZTSN5arrow7compute6KernelE", !36, i64 0}
!122 = !{!"p1 _ZTSSt6vectorIN5arrow10TypeHolderESaIS1_EE", !36, i64 0}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt11make_uniqueIN5arrow7compute8internal14OptionsWrapperINS1_11CastOptionsEEEJRKS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!125 = distinct !{!125, !"_ZSt11make_uniqueIN5arrow7compute8internal14OptionsWrapperINS1_11CastOptionsEEEJRKS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!126 = !{!127, !128, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow7compute11KernelStateELb0EE", !128, i64 0}
!128 = !{!"p1 _ZTSN5arrow7compute11KernelStateE", !36, i64 0}
!129 = distinct !{null, null, null}
!130 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!131 = !{!132, !73, i64 48}
!132 = !{!"_ZTSN5arrow7compute6KernelE", !133, i64 0, !136, i64 16, !73, i64 48, !137, i64 52, !138, i64 56}
!133 = !{!"_ZTSSt10shared_ptrIN5arrow7compute15KernelSignatureEE", !134, i64 0}
!134 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EE", !135, i64 0, !63, i64 8}
!135 = !{!"p1 _ZTSN5arrow7compute15KernelSignatureE", !36, i64 0}
!136 = !{!"_ZTSSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEE", !111, i64 0, !36, i64 24}
!137 = !{!"_ZTSN5arrow7compute9SimdLevel4typeE", !5, i64 0}
!138 = !{!"_ZTSSt10shared_ptrIN5arrow7compute11KernelStateEE", !139, i64 0}
!139 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !63, i64 8}
!140 = !{!141, !73, i64 80}
!141 = !{!"_ZTSN5arrow7compute12ScalarKernelE", !132, i64 0, !36, i64 72, !73, i64 80, !142, i64 84, !143, i64 88}
end_hunk_10
