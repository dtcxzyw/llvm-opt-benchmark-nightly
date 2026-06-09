inline.NumInlined: 601
inline.NumDeleted: 500
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.google::protobuf::compiler::java::FieldGeneratorMap" = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *, std::allocator<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *>>::_Vector_impl" }
%"struct.std::_Vector_base<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *, std::allocator<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *, std::allocator<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *, std::allocator<const google::protobuf::compiler::java::ImmutableFieldLiteGenerator *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr.141" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr.141" = type { %"struct.std::__uniq_ptr_data.142" }
%"struct.std::__uniq_ptr_data.142" = type { %"class.std::__uniq_ptr_impl.143" }
%"class.std::__uniq_ptr_impl.143" = type { %"class.std::tuple.144" }
%"class.std::tuple.144" = type { %"struct.std::_Tuple_impl.145" }
%"struct.std::_Tuple_impl.145" = type { %"struct.std::_Head_base.148" }
%"struct.std::_Head_base.148" = type { ptr }

$_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEE3AddEPKNS0_15FieldDescriptorESt10unique_ptrIS4_St14default_deleteIS4_EE = comdat any

$_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEED2Ev = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"field->containing_type() == descriptor_\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/compiler/java/generator_common.h\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4java32MakeImmutableFieldLiteGeneratorsEPKNS0_10DescriptorEPNS2_7ContextE(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::compiler::java::FieldGeneratorMap") align 8 initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %._crit_edge, label %_ZNSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.d, 3
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #13
          to label %.lr.ph unwind label %bb.d     ; 3 uses

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_M_allocateEm.exit.i.i, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_M_allocateEm.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.a, align 8, !tbaa !33
  store ptr %i.h, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  store ptr %i.q, ptr %i.f, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33 ] ; 2 uses
  %.060 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33 ] ; 14 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !noalias !37
  %i.w = and i8 %i.v, 32
  %.not.i21 = icmp eq i8 %i.w, 0
  br i1 %.not.i21, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef i32 @_ZN6google8protobuf8compiler4java11GetJavaTypeEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.t)
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.g
  switch i32 %i.x, label %bb.q [
    i32 8, label %bb.h
    i32 7, label %bb.m
    i32 5, label %bb.o
  ]

bb.h:                                             ; preds = %.noexc
  %i.y = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %.noexc22 unwind label %bb.an

.noexc22:                                         ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40, !noalias !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 51
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41, !range !42, !noalias !37, !noundef !43
  %i.ad = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13
          to label %.noexc23 unwind label %bb.an  ; 6 uses

.noexc23:                                         ; preds = %.noexc22
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.noexc23
  invoke void @_ZN6google8protobuf8compiler4java30ImmutableMapFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.j, !noalias !44

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 64) #14, !noalias !44
  br label %.body

bb.k:                                             ; preds = %.noexc23
  invoke void @_ZN6google8protobuf8compiler4java42RepeatedImmutableMessageFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.l, !noalias !47

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 64) #14, !noalias !47
  br label %.body

bb.m:                                             ; preds = %.noexc
  %i.ah = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13
          to label %.noexc24 unwind label %bb.an  ; 3 uses

.noexc24:                                         ; preds = %bb.m
  invoke void @_ZN6google8protobuf8compiler4java39RepeatedImmutableEnumFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.n, !noalias !50

bb.n:                                             ; preds = %.noexc24
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 64) #14, !noalias !50
  br label %.body

bb.o:                                             ; preds = %.noexc
  %i.aj = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13
          to label %.noexc25 unwind label %bb.an  ; 3 uses

.noexc25:                                         ; preds = %bb.o
  invoke void @_ZN6google8protobuf8compiler4java41RepeatedImmutableStringFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.p, !noalias !53

bb.p:                                             ; preds = %.noexc25
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #14, !noalias !53
  br label %.body

bb.q:                                             ; preds = %.noexc
  %i.al = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13
          to label %.noexc26 unwind label %bb.an  ; 3 uses

.noexc26:                                         ; preds = %bb.q
  invoke void @_ZN6google8protobuf8compiler4java44RepeatedImmutablePrimitiveFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.r, !noalias !56

bb.r:                                             ; preds = %.noexc26
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 64) #14, !noalias !56
  br label %.body

bb.s:                                             ; preds = %bb.f
  %i.an = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler4java11IsRealOneofEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.t)
          to label %.noexc27 unwind label %bb.an

.noexc27:                                         ; preds = %bb.s
  %i.ao = invoke noundef i32 @_ZN6google8protobuf8compiler4java11GetJavaTypeEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.t)
          to label %.noexc28 unwind label %bb.an  ; 2 uses

.noexc28:                                         ; preds = %.noexc27
  %i.ap = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #13
          to label %.noexc29 unwind label %bb.an  ; 24 uses

.noexc29:                                         ; preds = %.noexc28
  br i1 %i.an, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %.noexc29
  switch i32 %i.ao, label %bb.aa [
    i32 8, label %bb.u
    i32 7, label %bb.w
    i32 5, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6google8protobuf8compiler4java39ImmutableMessageOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.v, !noalias !59

bb.v:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !59
  br label %.body

bb.w:                                             ; preds = %bb.t
  invoke void @_ZN6google8protobuf8compiler4java36ImmutableEnumOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.x, !noalias !62

bb.x:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !62
  br label %.body

bb.y:                                             ; preds = %bb.t
  invoke void @_ZN6google8protobuf8compiler4java38ImmutableStringOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.z, !noalias !65

bb.z:                                             ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !65
  br label %.body

bb.aa:                                            ; preds = %bb.t
  invoke void @_ZN6google8protobuf8compiler4java41ImmutablePrimitiveOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.ab, !noalias !68

bb.ab:                                            ; preds = %bb.aa
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !68
  br label %.body

bb.ac:                                            ; preds = %.noexc29
  switch i32 %i.ao, label %bb.aj [
    i32 8, label %bb.ad
    i32 7, label %bb.af
    i32 5, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6google8protobuf8compiler4java34ImmutableMessageFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.ae, !noalias !71

bb.ae:                                            ; preds = %bb.ad
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !71
  br label %.body

bb.af:                                            ; preds = %bb.ac
  invoke void @_ZN6google8protobuf8compiler4java31ImmutableEnumFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.ag, !noalias !74

bb.ag:                                            ; preds = %bb.af
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !74
  br label %.body

bb.ah:                                            ; preds = %bb.ac
  invoke void @_ZN6google8protobuf8compiler4java33ImmutableStringFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.ai, !noalias !77

bb.ai:                                            ; preds = %bb.ah
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !77
  br label %.body

bb.aj:                                            ; preds = %bb.ac
  invoke void @_ZN6google8protobuf8compiler4java36ImmutablePrimitiveFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull %i.t, i32 noundef %.060, ptr noundef %2)
          to label %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit unwind label %bb.ak, !noalias !80

bb.ak:                                            ; preds = %bb.aj
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #14, !noalias !80
  br label %.body

_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit: ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.aa, %bb.y, %bb.w, %bb.u, %.noexc26, %.noexc25, %.noexc24, %bb.k, %bb.i
  %.sink.i = phi ptr [ %i.ap, %bb.ah ], [ %i.ap, %bb.af ], [ %i.ap, %bb.ad ], [ %i.ap, %bb.aa ], [ %i.ap, %bb.y ], [ %i.ap, %bb.w ], [ %i.ap, %bb.u ], [ %i.al, %.noexc26 ], [ %i.aj, %.noexc25 ], [ %i.ah, %.noexc24 ], [ %i.ad, %bb.k ], [ %i.ad, %bb.i ], [ %i.ap, %bb.aj ] ; 5 uses
  %i.ay = load ptr, ptr %.sink.i, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %.sink.i)
          to label %bb.al unwind label %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i38

bb.al:                                            ; preds = %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit
  %i.bc = ptrtoint ptr %.sink.i to i64
  store i64 %i.bc, ptr %3, align 8, !tbaa !85
  invoke void @_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEE3AddEPKNS0_15FieldDescriptorESt10unique_ptrIS4_St14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %3)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.bd = add nsw i32 %i.bb, %.060
  %i.be = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i30 = icmp eq ptr %i.be, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33, label %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i

_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i: ; preds = %bb.am
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #15, !inline_history !87
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33

_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33: ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i, %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !17
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.f, label %._crit_edge, !llvm.loop !88

bb.an:                                            ; preds = %.noexc28, %.noexc27, %bb.s, %bb.q, %bb.o, %bb.m, %.noexc22, %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.al
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i34 = icmp eq ptr %i.bn, null
  br i1 %.not.i34, label %.body, label %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i35

_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i35: ; preds = %bb.ao
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #15, !inline_history !87
  br label %.body

_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i38: ; preds = %_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %.sink.i, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %.sink.i) #15, !inline_history !87
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i35, %bb.ao, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.an, %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i38
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i35 ], [ %i.ax, %bb.ak ], [ %i.bl, %bb.an ], [ %i.af, %bb.j ], [ %i.ag, %bb.l ], [ %i.ai, %bb.n ], [ %i.ak, %bb.p ], [ %i.am, %bb.r ], [ %i.aq, %bb.v ], [ %i.ar, %bb.x ], [ %i.as, %bb.z ], [ %i.at, %bb.ab ], [ %i.au, %bb.ae ], [ %i.av, %bb.ag ], [ %i.aw, %bb.ai ], [ %i.br, %_ZNKSt14default_deleteIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorEEclEPS4_.exit.i38 ], [ %i.bm, %bb.ao ]
  call void @_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  br label %common.resume

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESt14default_deleteIS4_EED2Ev.exit33, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEE3AddEPKNS0_15FieldDescriptorESt10unique_ptrIS4_St14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.h, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.h, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !35
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE9push_backEOS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #13 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.f, ptr %i.x, align 8, !tbaa !85
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #14
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !33
  store ptr %i.z, ptr %i.g, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !34
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull @.str.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef nonnull %i.ab) #16
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.h
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #14
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.04.08 = phi ptr [ %i.p, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.04.08, align 8, !tbaa !85 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

declare noundef i32 @_ZN6google8protobuf8compiler4java11GetJavaTypeEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf8compiler4java11IsRealOneofEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8compiler4java30ImmutableMapFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf8compiler4java42RepeatedImmutableMessageFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java39RepeatedImmutableEnumFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java41RepeatedImmutableStringFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java44RepeatedImmutablePrimitiveFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java39ImmutableMessageOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java36ImmutableEnumOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java38ImmutableStringOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java41ImmutablePrimitiveOneofFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java34ImmutableMessageFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java31ImmutableEnumFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java33ImmutableStringFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8compiler4java36ImmutablePrimitiveFieldLiteGeneratorC1EPKNS0_15FieldDescriptorEiPNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEEE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt6vectorIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorESaIS6_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p2 _ZTSN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorE", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!18, !4, i64 8}
!18 = !{!"_ZTSN6google8protobuf10DescriptorE", !19, i64 0, !20, i64 1, !20, i64 1, !5, i64 1, !5, i64 2, !21, i64 4, !4, i64 8, !22, i64 16, !24, i64 24, !9, i64 32, !25, i64 40, !26, i64 48, !26, i64 56, !27, i64 64, !28, i64 72, !9, i64 80, !29, i64 88, !30, i64 96, !27, i64 104, !31, i64 112, !32, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!19 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !10, i64 0}
!24 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !10, i64 0}
!25 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !10, i64 0}
!26 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !10, i64 0}
!27 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !10, i64 0}
!28 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !10, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !10, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !10, i64 0}
!31 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !10, i64 0}
!32 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!33 = !{!14, !15, i64 0}
!34 = !{!14, !15, i64 16}
!35 = !{!14, !15, i64 8}
!36 = !{!18, !27, i64 64}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE: argument 0"}
!39 = distinct !{!39, !"_ZN6google8protobuf8compiler4java12_GLOBAL__N_128CreateImmutableLiteGeneratorEPKNS0_15FieldDescriptorEiPNS2_7ContextE"}
!40 = !{!18, !25, i64 40}
!41 = !{!5, !5, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!45, !38}
!45 = distinct !{!45, !46, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java30ImmutableMapFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!46 = distinct !{!46, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java30ImmutableMapFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!47 = !{!48, !38}
!48 = distinct !{!48, !49, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java42RepeatedImmutableMessageFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!49 = distinct !{!49, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java42RepeatedImmutableMessageFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!50 = !{!51, !38}
!51 = distinct !{!51, !52, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java39RepeatedImmutableEnumFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!52 = distinct !{!52, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java39RepeatedImmutableEnumFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!53 = !{!54, !38}
!54 = distinct !{!54, !55, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java41RepeatedImmutableStringFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!55 = distinct !{!55, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java41RepeatedImmutableStringFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!56 = !{!57, !38}
!57 = distinct !{!57, !58, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java44RepeatedImmutablePrimitiveFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!58 = distinct !{!58, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java44RepeatedImmutablePrimitiveFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!59 = !{!60, !38}
!60 = distinct !{!60, !61, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java39ImmutableMessageOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!61 = distinct !{!61, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java39ImmutableMessageOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!62 = !{!63, !38}
!63 = distinct !{!63, !64, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java36ImmutableEnumOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!64 = distinct !{!64, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java36ImmutableEnumOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!65 = !{!66, !38}
!66 = distinct !{!66, !67, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java38ImmutableStringOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!67 = distinct !{!67, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java38ImmutableStringOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!68 = !{!69, !38}
!69 = distinct !{!69, !70, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java41ImmutablePrimitiveOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!70 = distinct !{!70, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java41ImmutablePrimitiveOneofFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!71 = !{!72, !38}
!72 = distinct !{!72, !73, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java34ImmutableMessageFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java34ImmutableMessageFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!74 = !{!75, !38}
!75 = distinct !{!75, !76, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java31ImmutableEnumFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!76 = distinct !{!76, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java31ImmutableEnumFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!77 = !{!78, !38}
!78 = distinct !{!78, !79, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java33ImmutableStringFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!79 = distinct !{!79, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java33ImmutableStringFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!80 = !{!81, !38}
!81 = distinct !{!81, !82, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java36ImmutablePrimitiveFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!82 = distinct !{!82, !"_ZSt11make_uniqueIN6google8protobuf8compiler4java36ImmutablePrimitiveFieldLiteGeneratorEJRPKNS1_15FieldDescriptorERiRPNS3_7ContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!83 = !{!84, !84, i64 0}
!84 = !{!"vtable pointer", !6, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSN6google8protobuf8compiler4java27ImmutableFieldLiteGeneratorE", !10, i64 0}
!87 = distinct !{null, null}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!91, !9, i64 32}
!91 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !19, i64 0, !20, i64 1, !20, i64 1, !20, i64 1, !20, i64 1, !20, i64 1, !20, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !20, i64 3, !20, i64 3, !5, i64 3, !4, i64 4, !22, i64 8, !24, i64 16, !92, i64 24, !9, i64 32, !5, i64 40, !5, i64 48, !93, i64 56, !26, i64 64, !26, i64 72, !5, i64 80}
!92 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !10, i64 0}
!93 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !10, i64 0}
!94 = !{!9, !9, i64 0}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{!15, !15, i64 0}
end_hunk_0
