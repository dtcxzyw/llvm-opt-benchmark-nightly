inline.NumInlined: 2799
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i64 0, ptr %i.hd, align 8, !tbaa !102
  store i8 0, ptr %i.hc, align 8, !tbaa !30
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i8 0, ptr %i.he, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 176
  store i8 0, ptr %i.hf, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.cj, ptr nonnull %11, i64 1, i64 99, ptr nonnull @.str.53)
          to label %bb.ac unwind label %.body74.loopexit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %11) #25
  %i.hg = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ck
  br i1 %i.hh, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_8clEv.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i.i.i: ; preds = %bb.ac
  %i.hi = load i64, ptr %i.ck, align 8, !tbaa !30
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #28
  br label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_8clEv.exit.i.i.i"

bb.ad:                                            ; preds = %.noexc.i43.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i

.body74.loopexit.i.i.i.i:                         ; preds = %bb.ab
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %11) #25
  br label %.body74.i.i.i.i

.body74.i.i.i.i:                                  ; preds = %bb.aa, %.body74.loopexit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71.i.i.i.i
  %.pn34.i.i.i.i = phi { ptr, i32 } [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71.i.i.i.i ], [ %i.hl, %.body74.loopexit.i.i.i.i ], [ %i.gt, %bb.aa ] ; 2 uses
  %i.hm = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ck
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i: ; preds = %.body74.i.i.i.i
  %i.ho = load i64, ptr %i.ck, align 8, !tbaa !30
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i: ; preds = %.body74.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i, %bb.ad
  %.pn34.pn.i.i.i.i = phi { ptr, i32 } [ %i.hk, %bb.ad ], [ %.pn34.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i ], [ %.pn34.i.i.i.i, %.body74.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i.i.i.i
  %.pn37.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn37.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i ], [ %.pn34.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i ], [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i.i.i.i ]
  resume { ptr, i32 } %.pn37.pn.pn.i.i.i.i

"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_8clEv.exit.i.i.i": ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store i8 0, ptr %i.e, align 8, !tbaa !347
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit": ; preds = %bb.a, %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_8clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.g, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !363
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_8vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !364, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !364
  %.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !367
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !54
  %i.d = getelementptr i8, ptr %.val.val.i.i.i, i64 75
  %.val.val.val.i.i.i = load i8, ptr %i.d, align 1, !tbaa !134, !range !47, !noundef !48
  %i.e = trunc nuw i8 %.val.val.val.i.i.i to i1
  br i1 %i.e, label %bb.c, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_9clEv.exit.i.i.i"

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = load ptr, ptr %.val2.i.i.i, align 8, !tbaa !50
  tail call void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.g, ptr null, i64 0, i64 715, ptr nonnull @.str.54)
  br label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_9clEv.exit.i.i.i"

"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_9clEv.exit.i.i.i": ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !364
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit": ; preds = %bb.a, %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK3$_9clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS0_8compiler4java13GenerateLargeEPS2_PKNS0_14EnumDescriptorEbPNS7_7ContextEPNS7_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !233
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %.val, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !368
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE3$_9vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_10vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %2 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.161", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !203   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !369, !range !47, !noundef !48
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4java13GenerateLargeEPS3_PKNS1_14EnumDescriptorEbPNS8_7ContextEPNS8_17ClassNameResolverEE4$_10vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSZ_DpOS10_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !369
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374, !nonnull !48, !align !232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 75
  %i.k = load i8, ptr %i.j, align 1, !tbaa !134, !range !47, !noundef !48
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %"_ZZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverEENK4$_10clEv.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 92, ptr nonnull @.str.55)
          to label %bb.e unwind label %bb.d

common.resume.i.i.i.i:                            ; preds = %bb.bc, %bb.ax, %bb.as, %bb.an, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i.i, %bb.n, %bb.i, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.ae, %bb.i ], [ %i.aq, %bb.n ], [ %i.fj, %bb.aj ], [ %i.gf, %bb.an ], [ %i.gu, %bb.as ], [ %i.he, %bb.ax ], [ %i.hq, %bb.bc ], [ %.pn8.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i.i ], [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %8, align 8, !tbaa !81     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !88
  %i.v = and i64 %i.u, 65536
  %i.w = icmp ne i64 %i.v, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.q, ptr noundef %i.s, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.w)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.z = load ptr, ptr %.val, align 8, !tbaa !376, !nonnull !48, !align !232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ab = call noundef zeroext i1 @_ZNK6google8protobuf14EnumDescriptor9is_closedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aa)
  br i1 %i.ab, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i.i.i.i
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i11.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 149, ptr nonnull @.str.56)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = load i64, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit12.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i11.i.i.i.i, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !88
  %i.ak = and i64 %i.aj, 65536
  %i.al = icmp ne i64 %i.ak, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.af, ptr noundef %i.ah, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.al)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit12.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit12.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit12.i.i.i.i, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit.i.i.i.i
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i13.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 252, ptr nonnull @.str.57)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit14.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i13.i.i.i.i, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !88
  %i.aw = and i64 %i.av, 65536
  %i.ax = icmp ne i64 %i.aw, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ar, ptr noundef %i.at, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ax)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit14.i.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit14.i.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ba = load ptr, ptr %.val, align 8, !tbaa !376, !nonnull !48, !align !232
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  br i1 %i.be, label %bb.r, label %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit29.i.i.i.i.a

bb.r:                                             ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit14.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !377, !nonnull !48, !align !232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  %16 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !378
  %18 = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.bk = load ptr, ptr %18, align 8, !tbaa !379, !nonnull !48
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !53, !range !47, !noundef !48
  %i.bm = trunc nuw i8 %i.bl to i1
  call void @_ZN6google8protobuf8compiler4java17ClassNameResolver12GetClassNameB5cxx11EPKNS0_14FileDescriptorEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef %17, i1 noundef zeroext %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bn = load ptr, ptr %.val, align 8, !tbaa !376, !nonnull !48, !align !232
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !120 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !378
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  br label %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  br label %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit.i.i.i.i

_ZNK6google8protobuf14EnumDescriptor5indexEv.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sink4.in.i.i.i.i.i = phi ptr [ %i.bv, %bb.t ], [ %i.bu, %bb.s ]
  %.sink4.i.i.i.i.i = load ptr, ptr %.sink4.in.i.i.i.i.i, align 8, !tbaa !52
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = ptrtoint ptr %.sink4.i.i.i.i.i to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.0.in.i.i.i.i.i = sdiv exact i64 %i.by, 88
  %.0.i.i.i.i.i = trunc i64 %.0.in.i.i.i.i.i to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ca = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.i.i.i.i.i, ptr noundef nonnull %i.bz)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit.i.i.i.i
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 5 uses
  store i64 %i.cd, ptr %11, align 8, !tbaa !128
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cf, ptr %10, align 8, !tbaa !100, !alias.scope !380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !380
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !90, !noalias !380
  %i.cg = icmp ugt i64 %i.cd, 15
  br i1 %i.cg, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.u
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc15.i.i.i.i unwind label %bb.z ; 2 uses

.noexc15.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.ch, ptr %10, align 8, !tbaa !104, !alias.scope !380
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !90, !noalias !380
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !30, !alias.scope !380
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc15.i.i.i.i, %bb.u
  %i.cj = phi ptr [ %i.ch, %.noexc15.i.i.i.i ], [ %i.cf, %bb.u ] ; 2 uses
  switch i64 %i.cd, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.bz, align 8, !tbaa !30
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !30
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 8 %i.bz, i64 %i.cd, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i.i
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !90, !noalias !380 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !102, !alias.scope !380
  %i.cn = load ptr, ptr %10, align 8, !tbaa !104, !alias.scope !380
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !380
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA6_cSA_EEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %i.bg, i64 54, ptr nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(5) @.str.59, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(6) @.str.60, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %10, align 8, !tbaa !104  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cf
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.cr = load i64, ptr %i.cf, align 8, !tbaa !30
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ct = load ptr, ptr %9, align 8, !tbaa !104   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !30
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.z:                                             ; preds = %.noexc.i.i.i.i.i.i, %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit.i.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %10, align 8, !tbaa !104  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cf
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i: ; preds = %bb.aa
  %i.dc = load i64, ptr %i.cf, align 8, !tbaa !30
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i, %bb.z
  %.pn8.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.z ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i.i ], [ %i.cz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.de = load ptr, ptr %9, align 8, !tbaa !104   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i.i
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !30
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume.i.i.i.i

_ZNK6google8protobuf14EnumDescriptor5indexEv.exit29.i.i.i.i.a: ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit14.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.dj = load ptr, ptr %i.bh, align 8, !tbaa !377, !nonnull !48, !align !232
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %i.dl = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !379, !nonnull !48
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !53, !range !47, !noundef !48
  %i.do = trunc nuw i8 %i.dn to i1
  call void @_ZN6google8protobuf8compiler4java17ClassNameResolver12GetClassNameB5cxx11EPKNS0_10DescriptorEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 1 dereferenceable(1) %i.dk, ptr noundef nonnull %i.bd, i1 noundef zeroext %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.dp = load ptr, ptr %.val, align 8, !tbaa !376, !nonnull !48, !align !232
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !120 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !383
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 49
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !30, !range !47, !noundef !48
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = select i1 %i.dx, ptr @.str.64, ptr @.str.65
  store ptr %i.dy, ptr %i.c, align 8, !tbaa !389
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %19 = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %.sink4.i26.i.i.i.i.a = load ptr, ptr %19, align 8, !tbaa !52
  %20 = ptrtoint ptr %i.dq to i64
  %21 = ptrtoint ptr %.sink4.i26.i.i.i.i.a to i64
  %22 = sub i64 %20, %21
  %.0.in.i27.i.i.i.i = sdiv exact i64 %22, 88
  %.0.i28.i.i.i.i = trunc i64 %.0.in.i27.i.i.i.i to i32
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %24 = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.i28.i.i.i.i, ptr noundef nonnull %23)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit29.i.i.i.i.a
  %i.dz = ptrtoint ptr %24 to i64
  %i.ea = ptrtoint ptr %23 to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 5 uses
  store i64 %i.eb, ptr %14, align 8, !tbaa !128
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %23, ptr %i.ec, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ed, ptr %13, align 8, !tbaa !100, !alias.scope !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !390
  store i64 %i.eb, ptr %i.a, align 8, !tbaa !90, !noalias !390
  %i.ee = icmp ugt i64 %i.eb, 15
  br i1 %i.ee, label %.noexc.i.i34.i.i.i.i, label %._crit_edge.i.i.i33.i.i.i.i

.noexc.i.i34.i.i.i.i:                             ; preds = %bb.ab
  %i.ef = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc37.i.i.i.i unwind label %bb.ag ; 2 uses

.noexc37.i.i.i.i:                                 ; preds = %.noexc.i.i34.i.i.i.i
  store ptr %i.ef, ptr %13, align 8, !tbaa !104, !alias.scope !390
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !390
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !30, !alias.scope !390
  br label %._crit_edge.i.i.i33.i.i.i.i

._crit_edge.i.i.i33.i.i.i.i:                      ; preds = %.noexc37.i.i.i.i, %bb.ab
  %i.eh = phi ptr [ %i.ef, %.noexc37.i.i.i.i ], [ %i.ed, %bb.ab ] ; 2 uses
  switch i64 %i.eb, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i33.i.i.i.i
  %i.ei = load i8, ptr %23, align 8, !tbaa !30
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !30
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i33.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr nonnull align 8 %23, i64 %i.eb, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i33.i.i.i.i
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !390 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !102, !alias.scope !390
  %i.el = load ptr, ptr %13, align 8, !tbaa !104, !alias.scope !390
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ej
  store i8 0, ptr %i.em, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !390
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cPKcA6_cSA_EEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %i.bg, i64 53, ptr nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(7) @.str.62, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(11) @.str.63, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.60, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.en = load ptr, ptr %13, align 8, !tbaa !104  ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ed
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i: ; preds = %bb.af
  %i.ep = load i64, ptr %i.ed, align 8, !tbaa !30
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.er = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !30
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ai

bb.ag:                                            ; preds = %.noexc.i.i34.i.i.i.i, %_ZNK6google8protobuf14EnumDescriptor5indexEv.exit29.i.i.i.i.a
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %13, align 8, !tbaa !104  ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ed
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i: ; preds = %bb.ah
  %i.fa = load i64, ptr %i.ed, align 8, !tbaa !30
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i, %bb.ag
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.ag ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i ], [ %i.ex, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.fc = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !30
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i.i
  %i.fh = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i51.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i51.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 3, ptr nonnull @.str.66)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fk = load i64, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit52.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i51.i.i.i.i, align 8, !tbaa !30
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !88
  %i.fp = and i64 %i.fo, 65536
  %i.fq = icmp ne i64 %i.fp, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fk, ptr noundef %i.fm, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.fq)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit52.i.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit52.i.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.fv = load ptr, ptr %.val, align 8, !tbaa !376, !nonnull !48, !align !232
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !52
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !49 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.fy, align 1
  %i.fz = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ga = xor i64 %i.fz, -1
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.ga
  store i64 %i.fz, ptr %15, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.gb, ptr %i.gc, align 8
  call void @_ZN6google8protobuf2io7Printer5PrintIJA10_cSt17basic_string_viewIcSt11char_traitsIcEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %i.fu, i64 249, ptr nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(10) @.str, ptr noundef nonnull align 8 dereferenceable(16) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.gd = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i53.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i53.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 191, ptr nonnull @.str.68)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit52.i.i.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume.i.i.i.i

bb.ao:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit52.i.i.i.i
  %i.gg = load i64, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit54.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i53.i.i.i.i, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !88
  %i.gl = and i64 %i.gk, 65536
  %i.gm = icmp ne i64 %i.gl, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.gg, ptr noundef %i.gi, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.gm)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit54.i.i.i.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit54.i.i.i.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.gp = load ptr, ptr %.val, align 8, !tbaa !376, !nonnull !48, !align !232
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !52
  %i.gr = call noundef zeroext i1 @_ZNK6google8protobuf14EnumDescriptor9is_closedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.gq)
  %i.gs = load ptr, ptr %i.m, align 8, !tbaa !375, !nonnull !48, !align !232
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !50 ; 2 uses
  br i1 %i.gr, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i55.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i55.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 23, ptr nonnull @.str.69)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.gv = load i64, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit56.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i55.i.i.i.i, align 8, !tbaa !30
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !88
  %i.ha = and i64 %i.gz, 65536
  %i.hb = icmp ne i64 %i.ha, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.gv, ptr noundef %i.gx, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.hb)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit56.i.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #27
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit56.i.i.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bb

bb.aw:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i57.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i57.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 101, ptr nonnull @.str.70)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hf = load i64, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit58.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
end_hunk_0
