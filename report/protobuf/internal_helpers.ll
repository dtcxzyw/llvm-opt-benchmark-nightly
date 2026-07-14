inline.NumInlined: 2799
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  store ptr %i.m, ptr %1, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.m, ptr noundef nonnull align 8 dereferenceable(7) %i.f, i64 7, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.n, align 8, !tbaa !102
  store ptr %i.f, ptr %2, align 8, !tbaa !104
  store i64 0, ptr %i.g, align 8, !tbaa !102
  store i8 0, ptr %i.f, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.p = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc.i11.i.i.i.i unwind label %.body.i.thread.i.i.i.i ; 5 uses

.noexc.i11.i.i.i.i:                               ; preds = %bb.b
  store <2 x ptr> %i.j, ptr %i.p, align 16, !noalias !633
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x ptr> %i.l, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !noalias !633
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16, !noalias !633
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !53, !noalias !633
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.q, align 8, !tbaa !157, !alias.scope !633
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.p, ptr %i.o, align 8, !alias.scope !633
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !30, !alias.scope !633
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation", ptr %i.r, align 8, !tbaa !163, !alias.scope !633
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 1, ptr %i.s, align 8, !tbaa !108, !alias.scope !633
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.v, align 8, !tbaa !102
  store i8 0, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %i.w, align 8, !tbaa !110
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %.body.i.i.i.i.i

.body.i.thread.i.i.i.i:                           ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.o) #25
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !104 ; 2 uses
  %i.ae = icmp eq ptr %.pre.i.i.i.i, %i.m
  br i1 %i.ae, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i
  %i.af = load i64, ptr %i.m, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i.i.i, i64 noundef %i.ag) #28
  br label %.body.i.i.i.i

bb.d:                                             ; preds = %.noexc.i11.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.ah, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.e, ptr nonnull %1, i64 1, i64 146, ptr nonnull @.str.90)
          to label %bb.e unwind label %.body.loopexit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #25
  %i.ai = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEv.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !30
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEv.exit.i.i.i"

.body.loopexit.i.i.i.i:                           ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %1) #25
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.thread.i.i.i.i, %.body.i.i.i.i.i, %.body.loopexit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.am, %.body.loopexit.i.i.i.i ], [ %i.ad, %.body.i.thread.i.i.i.i ], [ %i.y, %.body.i.i.i.i.i ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !104   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.f
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !30
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.i.i.i.i

"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEv.exit.i.i.i": ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.a, align 8, !tbaa !629
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit": ; preds = %bb.a, %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_15clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !587
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_15vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !636, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOS10_DpOS11_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !636
  %i.d = load ptr, ptr %.val, align 8, !tbaa !639, !nonnull !48, !align !246
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !640  ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %i.i = icmp slt i32 %i.e, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !641, !nonnull !48, !align !232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !100, !alias.scope !642
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !102, !alias.scope !642
  store i8 0, ptr %i.m, align 8, !tbaa !30, !alias.scope !642
  br label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.q = sext i32 %i.e to i64
  br label %bb.f

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !641, !nonnull !48, !align !232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !100, !alias.scope !655
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.v, align 8, !tbaa !102, !alias.scope !655
  store i8 0, ptr %i.u, align 8, !tbaa !30, !alias.scope !655
  %.not41.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.032.1.i.i.i.i, %.sroa.9.1.i.i.i.i
  br i1 %.not41.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !128, !noalias !656 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 16 ; 6 uses
  %.not4244.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %.sroa.9.1.i.i.i.i ; 2 uses
  br i1 %.not4244.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c
  %3 = ptrtoint ptr %.sroa.9.1.i.i.i.i to i64
  %4 = ptrtoint ptr %.sroa.032.1.i.i.i.i to i64
  %i.y = sub i64 %3, %4
  %5 = add i64 %i.y, -32                          ; 2 uses
  %min.iters.check = icmp ult i64 %5, 64
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.z = lshr i64 %5, 4
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %n.mod.vf = and i64 %i.aa, 3                    ; 2 uses
  %i.ab = icmp eq i64 %n.mod.vf, 0
  %i.ac = select i1 %i.ab, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.aa, %i.ac               ; 2 uses
  %i.ad = shl i64 %n.vec, 4
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad
  %i.af = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.w, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.af, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi36 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.ag = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  %next.gep37 = getelementptr i8, ptr %i.ah, i64 32
  %i.ai = add <2 x i64> %vec.phi, splat (i64 2)
  %i.aj = add <2 x i64> %vec.phi36, splat (i64 2)
  %i.ak = load <3 x i64>, ptr %next.gep, align 8, !tbaa !128, !noalias !656
  %strided.vec = shufflevector <3 x i64> %i.ak, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.al = load <3 x i64>, ptr %next.gep37, align 8, !tbaa !128, !noalias !656
  %strided.vec39 = shufflevector <3 x i64> %i.al, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.am = add <2 x i64> %i.ai, %strided.vec       ; 2 uses
  %i.an = add <2 x i64> %i.aj, %strided.vec39     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !657

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.an, %i.am
  %i.ap = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader42

.lr.ph.i.i.i.i.i.i.i.i.preheader42:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.02545.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %.025.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.025.lcssa.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %bb.d

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader42, %.lr.ph.i.i.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader42 ] ; 2 uses
  %.02545.i.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.02545.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader42 ]
  %i.ar = add i64 %.02545.i.i.i.i.i.i.i.i, 2
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !128, !noalias !656
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.not42.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %.sroa.9.1.i.i.i.i
  br i1 %.not42.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !660

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.025.lcssa.i.i.i.i.i.i.i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i unwind label %bb.e

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.av = load ptr, ptr %2, align 8, !tbaa !104, !alias.scope !655 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !130, !noalias !656
  %i.ay = load i64, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !128, !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  br i1 %.not4244.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %.lr.ph49.preheader.i.i.i.i.i.i.i.i

.lr.ph49.preheader.i.i.i.i.i.i.i.i:               ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i.i.i.i.i
  %i.az = load i64, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !128, !noalias !656
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  br label %.lr.ph49.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %2, align 8, !tbaa !104, !alias.scope !655 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.u
  br i1 %i.bd, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.be = load i64, ptr %i.u, align 8, !tbaa !30, !alias.scope !655
  br label %.body.i.i.i.i.sink.split

.lr.ph49.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph49.i.i.i.i.i.i.i.i, %.lr.ph49.preheader.i.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bm, %.lr.ph49.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph49.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %.048.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph49.i.i.i.i.i.i.i.i ], [ %i.ba, %.lr.ph49.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.047.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph49.i.i.i.i.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %.lr.ph49.preheader.i.i.i.i.i.i.i.i ]
  store i16 8236, ptr %.048.i.i.i.i.i.i.i.i, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i.i.i.i.i.i.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !130, !noalias !656
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !128, !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.bi, i64 %i.bj, i1 false)
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !128, !noalias !656
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.not43.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %.sroa.9.1.i.i.i.i
  br i1 %.not43.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.i.i.i.i, label %.lr.ph49.i.i.i.i.i.i.i.i, !llvm.loop !661

bb.f:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.pre65.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %.pre66.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 4 uses
  %i.bn = phi i32 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.ej, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 2 uses
  %.sroa.032.054.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.032.1.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 10 uses
  %.sroa.9.053.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.9.1.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 11 uses
  %.sroa.14.052.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.sroa.14.1.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 4 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !662, !nonnull !48, !align !232
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65
  %i.bs = getelementptr inbounds [48 x i8], ptr %i.br, i64 %indvars.iv.i.i.i.i ; 4 uses
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !663, !nonnull !48, !align !232 ; 6 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !81 ; 4 uses
  %i.bv = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp ult i64 %i.bu, 2
  br i1 %i.bw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.by, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !66
  %i.cb = icmp eq ptr %i.ca, %i.bs
  br i1 %i.cb, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.cd, i32 0, i32 1, i32 1)
  %i.ce = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.cf = xor i64 %i.ce, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cg = mul i64 %i.cf, -2543921745674291987
  %i.ch = tail call noundef i64 @llvm.bswap.i64(i64 %i.cg)
  %i.ci = xor i64 %i.ch, %i.ce
  %i.cj = mul i64 %i.ci, -2543921745674291987
  %i.ck = tail call noundef i64 @llvm.bswap.i64(i64 %i.cj) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !88, !noalias !664
  %i.cn = and i64 %i.cm, 65535
  %i.co = lshr i64 %i.ck, 7
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.ck to i8
  %i.cr = and i8 %i.cq, 127
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.ct = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.pn.i6.i.i.i.i.i.i.i = phi i64 [ %i.cp, %bb.i ], [ %i.dm, %bb.l ]
  %.sroa.13.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.dl, %bb.l ]
  %.sroa.6.0.i.i.i.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i.i, %i.bu ; 4 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.cv, i32 0, i32 3, i32 1)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  %i.cx = load <16 x i8>, ptr %i.cw, align 1, !tbaa !30 ; 2 uses
  %i.cy = icmp eq <16 x i8> %i.cu, %i.cx
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not45.i.i.i.i.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not45.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i15.i.i.i.i, label %.lr.ph.i.i.i.i13.i.i.i.i

.lr.ph.i.i.i.i13.i.i.i.i:                         ; preds = %bb.j, %bb.k
  %.sroa.017.046.i.i.i.i.i.i.i.i = phi i16 [ %i.di, %bb.k ], [ %i.cz, %bb.j ] ; 3 uses
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i.i.i.i.i, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i, %i.db
  %i.dd = and i64 %i.dc, %i.bu
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !66
  %i.dg = icmp eq ptr %i.df, %i.bs
  br i1 %i.dg, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, label %bb.k, !prof !223

bb.k:                                             ; preds = %.lr.ph.i.i.i.i13.i.i.i.i
  %i.dh = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
  %i.di = and i16 %i.dh, %.sroa.017.046.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i14.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not.i.i.i.i14.i.i.i.i, label %._crit_edge.i.i.i.i15.i.i.i.i, label %.lr.ph.i.i.i.i13.i.i.i.i

._crit_edge.i.i.i.i15.i.i.i.i:                    ; preds = %bb.k, %bb.j
  %i.dj = icmp eq <16 x i8> %i.cx, splat (i8 -128)
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %.not43.i.i.i.i16.i.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not43.i.i.i.i16.i.i.i.i, label %bb.l, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, !prof !23

bb.l:                                             ; preds = %._crit_edge.i.i.i.i15.i.i.i.i
  %i.dl = add i64 %.sroa.13.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.j, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i13.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i15.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %bb.h, %bb.g
end_hunk_0
