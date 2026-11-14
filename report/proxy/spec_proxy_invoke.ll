Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_proxy_invoke?download=true
inline.NumInlined: 102
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"struct.pro::v4::detail::conv_meta" = type { ptr }
%"struct.pro::v4::detail::conv_meta.0" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$__clang_call_terminate = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_5proxyI10StringableEENS1_16destroy_dispatchEDoFvvEEC1IPiEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESE_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10StringableEE12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC1IPiEESt15in_place_type_tIT_EENUlRKS5_E_8__invokeB5cxx11ESL_ = comdat any

$_ZN12FreeToStringclIRiJEEEDcOT_DpOT0_QrqXclsr3stdE9to_stringclgssr3stdE7forwardIS2_Efp_Espclgssr3stdE7forwardIS4_Efp0_EEE = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_Z8ToStringB5cxx11RKN3pro2v423proxy_indirect_accessorI10StringableEE.exit:
  %i.a = alloca i32, align 4                      ; 6 uses
  %0 = alloca %"class.pro::v4::proxy", align 8    ; 11 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 123, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !12
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10StringableEENS1_16destroy_dispatchEDoFvvEEC1IPiEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESE_, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10StringableEE12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC1IPiEESt15in_place_type_tIT_EENUlRKS5_E_8__invokeB5cxx11ESL_, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN12FreeToStringclIRiJEEEDcOT_DpOT0_QrqXclsr3stdE9to_stringclgssr3stdE7forwardIS2_Efp_Espclgssr3stdE7forwardIS4_Efp0_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #13
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_Z8ToStringB5cxx11RKN3pro2v423proxy_indirect_accessorI10StringableEE.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !19
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.m = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !29, !noalias !30
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %_ZN3pro2v412proxy_invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvETkNS0_6facadeE10StringableJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorIT1_EEDpOT2_.exit unwind label %bb.c, !inline_history !26

_ZN3pro2v412proxy_invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvETkNS0_6facadeE10StringableJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorIT1_EEDpOT2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit8 unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit8: ; preds = %_ZN3pro2v412proxy_invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvETkNS0_6facadeE10StringableJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorIT1_EEDpOT2_.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit8
  %i.s = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.v = load i64, ptr %i.t, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.x = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN3pro2v45proxyI10StringableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %0) #13, !inline_history !27
  br label %_ZN3pro2v45proxyI10StringableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit

_ZN3pro2v45proxyI10StringableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_Z8ToStringB5cxx11RKN3pro2v423proxy_indirect_accessorI10StringableEE.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.b
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit8, %_ZN3pro2v412proxy_invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvETkNS0_6facadeE10StringableJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorIT1_EEDpOT2_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.c
  %.pn5 = phi { ptr, i32 } [ %i.ae, %bb.c ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.af, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn5.pn = phi { ptr, i32 } [ %.pn5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  %i.al = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.al, null
  br i1 %.not.i.i19, label %_ZN3pro2v45proxyI10StringableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit20, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(32) %0) #13, !inline_history !27
  br label %_ZN3pro2v45proxyI10StringableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit20

_ZN3pro2v45proxyI10StringableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit20: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn5.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10StringableEENS1_16destroy_dispatchEDoFvvEEC1IPiEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESE_(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10StringableEE12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC1IPiEESt15in_place_type_tIT_EENUlRKS5_E_8__invokeB5cxx11ESL_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !noalias !39
  tail call void @_ZN12FreeToStringclIRiJEEEDcOT_DpOT0_QrqXclsr3stdE9to_stringclgssr3stdE7forwardIS2_Efp_Espclgssr3stdE7forwardIS4_Efp0_EEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12FreeToStringclIRiJEEEDcOT_DpOT0_QrqXclsr3stdE9to_stringclgssr3stdE7forwardIS2_Efp_Espclgssr3stdE7forwardIS4_Efp0_EEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 false) ; 19 uses
  %i.c = icmp ult i32 %i.b, 10
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %2 = icmp ult i32 %i.b, 100
  br i1 %2, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i
  %i.d = icmp ult i32 %i.b, 1000
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.a
  %3 = icmp ult i32 %i.b, 10000
  br i1 %3, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %i.b, 100000
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = icmp ult i32 %i.b, 1000000
  br i1 %4, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ult i32 %i.b, 10000000
  br i1 %i.f, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %5 = icmp ult i32 %i.b, 100000000
  br i1 %5, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %6 = icmp ult i32 %i.b, 1000000000
  %spec.select = select i1 %6, i32 9, i32 10
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.c, %bb.b, %bb.f, %.lr.ph.i.i.a, %bb.e, %.lr.ph.i.i, %bb.d, %bb.a
  %.022.i.i = phi i32 [ 7, %bb.e ], [ %spec.select, %bb.g ], [ 8, %bb.f ], [ 1, %bb.a ], [ 2, %.lr.ph.i.i ], [ 6, %bb.d ], [ 3, %.lr.ph.i.i.a ], [ 4, %bb.b ], [ 5, %bb.c ] ; 9 uses
  %.lobit.i = lshr i32 %i.a, 31                   ; 2 uses
  %i.g = add i32 %.022.i.i, %.lobit.i             ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !43, !alias.scope !42
  %i.j = icmp ugt i32 %i.g, 15
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.k = add nuw nsw i64 %i.h, 1
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #16
          to label %.noexc.i unwind label %bb.o   ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr %i.l, ptr %0, align 8, !tbaa !17, !alias.scope !42
  store i64 %i.h, ptr %i.i, align 8, !tbaa !19, !alias.scope !42
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.i, align 8, !tbaa !19, !alias.scope !42
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.noexc.i
  %i.m = phi ptr [ %i.l, %.noexc.i ], [ %i.i, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 45, i64 %i.h, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.n = phi ptr [ %i.i, %bb.i ], [ %i.m, %bb.k ], [ %i.i, %bb.j ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.o, align 8, !tbaa !18, !alias.scope !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !19
  %i.q = zext nneg i32 %.lobit.i to i64
  %i.r = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 10 uses
  %i.t = icmp ugt i32 %i.b, 99
  br i1 %i.t, label %.lr.ph.i11.i, label %._crit_edge.i.i

.lr.ph.i11.i:                                     ; preds = %bb.l
  %7 = add i32 %.022.i.i, -1
  %8 = urem i32 %i.b, 100
  %9 = shl nuw nsw i32 %8, 1
  %10 = udiv i32 %i.b, 100                        ; 2 uses
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %11 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !19, !noalias !42
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds nuw i8, ptr %i.s, i64 %15
  store i8 %14, ptr %16, align 1, !tbaa !19
  %17 = load i8, ptr %12, align 2, !tbaa !19, !noalias !42
  %18 = add i32 %.022.i.i, -2
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %i.s, i64 %19
  store i8 %17, ptr %20, align 1, !tbaa !19
  %21 = icmp ugt i32 %i.b, 9999
  br i1 %21, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i11.i
  %22 = add i32 %.022.i.i, -3
  %23 = urem i32 %10, 100
  %24 = shl nuw nsw i32 %23, 1
  %25 = udiv i32 %i.b, 10000                      ; 2 uses
  %26 = zext nneg i32 %24 to i64
  %27 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %26 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !19, !noalias !42
  %30 = zext i32 %22 to i64
  %31 = getelementptr inbounds nuw i8, ptr %i.s, i64 %30
  store i8 %29, ptr %31, align 1, !tbaa !19
  %32 = load i8, ptr %27, align 2, !tbaa !19, !noalias !42
  %i.u = add i32 %.022.i.i, -4
  %33 = zext i32 %i.u to i64
  %34 = getelementptr inbounds nuw i8, ptr %i.s, i64 %33
  store i8 %32, ptr %34, align 1, !tbaa !19
  %35 = icmp ugt i32 %i.b, 999999
  br i1 %35, label %.lr.ph.i11.i.a, label %._crit_edge.i.i

.lr.ph.i11.i.a:                                   ; preds = %.lr.ph.preheader.i.i
  %36 = add i32 %.022.i.i, -5
  %i.v = urem i32 %25, 100
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = udiv i32 %i.b, 1000000                   ; 2 uses
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19, !noalias !42
  %i.ac = zext i32 %36 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ac
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !19
  %i.ae = load i8, ptr %i.z, align 2, !tbaa !19, !noalias !42
  %i.af = add i32 %.022.i.i, -6
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !19
  %i.ai = icmp ugt i32 %i.b, 99999999
  br i1 %i.ai, label %.lr.ph.i11.i.3, label %._crit_edge.i.i

.lr.ph.i11.i.3:                                   ; preds = %.lr.ph.i11.i.a
  %37 = add i32 %.022.i.i, -7
  %38 = urem i32 %i.x, 100
  %39 = shl nuw nsw i32 %38, 1
  %40 = udiv i32 %i.b, 100000000
  %41 = zext nneg i32 %39 to i64
  %42 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %41 ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !19, !noalias !42
  %45 = zext i32 %37 to i64
  %46 = getelementptr inbounds nuw i8, ptr %i.s, i64 %45
  store i8 %44, ptr %46, align 1, !tbaa !19
  %47 = load i8, ptr %42, align 2, !tbaa !19, !noalias !42
  %48 = add i32 %.022.i.i, -8
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw i8, ptr %i.s, i64 %49
  store i8 %47, ptr %50, align 1, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i, %.lr.ph.i11.i.a, %.lr.ph.i11.i.3, %bb.l
  %.0.lcssa.i.i = phi i32 [ %i.b, %bb.l ], [ %10, %.lr.ph.i11.i ], [ %25, %.lr.ph.preheader.i.i ], [ %i.x, %.lr.ph.i11.i.a ], [ %40, %.lr.ph.i11.i.3 ] ; 3 uses
  %i.aj = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ak = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19, !noalias !42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !19
  %i.aq = load i8, ptr %i.am, align 2, !tbaa !19, !noalias !42
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ar = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.as = or disjoint i8 %i.ar, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.o:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #15
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.as, %bb.n ], [ %i.aq, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.s, align 1, !tbaa !19
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !5, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, i1 true, !"_ZN3pro2v412proxy_invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvETkNS0_6facadeE10StringableJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorIT1_EEDpOT2_"}
!21 = distinct !{!21, !20, !"_ZN3pro2v412proxy_invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvETkNS0_6facadeE10StringableJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorIT1_EEDpOT2_: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZN3pro2v46invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorI10StringableEEDpOT1_"}
!23 = distinct !{!23, !22, !"_ZN3pro2v46invokeI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEJEEENS0_6detail15overload_traitsIT0_E11return_typeERNS0_23proxy_indirect_accessorI10StringableEEDpOT1_: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZN3pro2v46detail11invoke_implI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvERNS0_23proxy_indirect_accessorI10StringableEEJEEENS1_15overload_traitsIT0_E11return_typeEOT1_DpOT2_"}
!25 = distinct !{!25, !24, !"_ZN3pro2v46detail11invoke_implI12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvERNS0_23proxy_indirect_accessorI10StringableEEJEEENS1_15overload_traitsIT0_E11return_typeEOT1_DpOT2_: argument 0"}
!26 = distinct !{null}
!27 = distinct !{null, null, null, null}
!28 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10StringableEE12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE", !10, i64 0}
!29 = !{!28, !10, i64 0}
!30 = !{!25, !23, !21}
!31 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyI10StringableEENS1_16destroy_dispatchEDoFvvEEE", !10, i64 0}
!32 = !{!31, !10, i64 0}
!33 = distinct !{!33, i1 true, !"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10StringableEE12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC1IPiEESt15in_place_type_tIT_EENKUlRKS5_E_clB5cxx11ESL_"}
!34 = distinct !{!34, !33, !"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10StringableEE12FreeToStringKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC1IPiEESt15in_place_type_tIT_EENKUlRKS5_E_clB5cxx11ESL_: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN3pro2v418reinterpret_invokeIPi12FreeToStringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET1_RKNS0_23proxy_indirect_accessorI10StringableEEDpOT2_"}
!36 = distinct !{!36, !35, !"_ZN3pro2v418reinterpret_invokeIPi12FreeToStringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET1_RKNS0_23proxy_indirect_accessorI10StringableEEDpOT2_: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZN3pro2v46detail18reinterpret_invokeIPi10StringableLb0ELNS1_14qualifier_typeE1E12FreeToStringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET4_NS1_20add_qualifier_traitsINSt11conditionalIXT1_ENS0_5proxyIT0_EENS0_23proxy_indirect_accessorISH_EEE4typeEXT2_EE4typeEDpOT5_"}
!38 = distinct !{!38, !37, !"_ZN3pro2v46detail18reinterpret_invokeIPi10StringableLb0ELNS1_14qualifier_typeE1E12FreeToStringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET4_NS1_20add_qualifier_traitsINSt11conditionalIXT1_ENS0_5proxyIT0_EENS0_23proxy_indirect_accessorISH_EEE4typeEXT2_EE4typeEDpOT5_: argument 0"}
!39 = !{!38, !36, !34}
!40 = distinct !{!40, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!41 = distinct !{!41, !40, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!42 = !{!41}
!43 = !{!14, !13, i64 0}
end_hunk_0
