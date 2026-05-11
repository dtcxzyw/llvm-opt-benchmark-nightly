inline.NumInlined: 5074
inline.NumDeleted: 2523
begin_hunk_0_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11loadSegmentESt10unique_ptrIKNS_3jsi6BufferESt14default_deleteIS6_EERKNS4_5ValueE:bb.a
  %3 = alloca %"class.std::shared_ptr.331", align 16 ; 9 uses
  %4 = alloca %"struct.std::pair.345", align 8    ; 11 uses
  %5 = alloca %"class.std::unique_ptr.355", align 8 ; 4 uses
  %6 = alloca %"class.std::unique_ptr.363", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11loadSegmentESt10unique_ptrIKNS_3jsi6BufferESt14default_deleteIS6_EERKNS4_5ValueE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #52, !noalias !859 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50, !noalias !859
  invoke void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS3_St14default_deleteIS3_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt10shared_ptrIKN8facebook3jsi6BufferEEC2IS3_St14default_deleteIS3_EvEEOSt10unique_ptrIT_T0_E.exit.i unwind label %bb.j, !noalias !859
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl11loadSegmentESt10unique_ptrIKNS_3jsi6BufferESt14default_deleteIS6_EERKNS4_5ValueE:bb.a
  store ptr %i.f, ptr %i.l, align 8, !tbaa !866, !noalias !859
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.x, align 8, !tbaa !868, !noalias !859
  store ptr %i.a, ptr %6, align 8, !tbaa !869, !alias.scope !859
  %.not.i.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i.i, label %_ZSt11make_uniqueIN8facebook6hermes12_GLOBAL__N_113BufferAdapterEJSt10unique_ptrIKNS0_3jsi6BufferESt14default_deleteIS7_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

end_hunk_2
begin_hunk_3_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE12createObjectESt10shared_ptrINS0_10HostObjectEE
define internal fastcc void @_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE12createObjectESt10shared_ptrINS0_10HostObjectEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Object") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.265", align 8 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.892", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !30, !align !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  store ptr null, ptr %4, align 8, !tbaa !1516, !alias.scope !1513
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #52, !noalias !1513 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i32 1, ptr %i.d, align 8, !tbaa !233, !noalias !1513
end_hunk_3
begin_hunk_4_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE12createObjectESt10shared_ptrINS0_10HostObjectEE:bb.a
  %i.k = load <2 x ptr>, ptr %2, align 8, !tbaa !32, !noalias !1513
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !1513
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook3jsi19DecoratedHostObjectE, i64 16), ptr %i.f, align 8, !tbaa !16, !noalias !1513
  store ptr %1, ptr %i.h, align 8, !tbaa !1519, !noalias !1513
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !32, !noalias !1513
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt11make_sharedIN8facebook3jsi19DecoratedHostObjectEJRNS1_16RuntimeDecoratorINS0_6hermes12_GLOBAL__N_117HermesRuntimeImplENS1_17ThreadSafeRuntimeEEESt10shared_ptrINS1_10HostObjectEEEESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit, label %bb.b
end_hunk_4
begin_hunk_5_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE12createObjectESt10shared_ptrINS0_10HostObjectEE:bb.a
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !16, !noalias !1513
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1513
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #50, !noalias !1513, !inline_history !1521
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !16, !noalias !1513
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1513
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #50, !noalias !1513, !inline_history !1521
  br label %_ZSt11make_sharedIN8facebook3jsi19DecoratedHostObjectEJRNS1_16RuntimeDecoratorINS0_6hermes12_GLOBAL__N_117HermesRuntimeImplENS1_17ThreadSafeRuntimeEEESt10shared_ptrINS1_10HostObjectEEEESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit

bb.g:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE12createObjectESt10shared_ptrINS0_10HostObjectEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !176
  store ptr %i.c, ptr %i.af, align 8, !tbaa !176
  store ptr null, ptr %4, align 8, !tbaa !1516
  invoke void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12createObjectESt10shared_ptrINS_3jsi10HostObjectEE(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.w

end_hunk_6
begin_hunk_7_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE30createFunctionFromHostFunctionERKNS0_10PropNameIDEjSt8functionIFNS0_5ValueERNS0_7RuntimeERKSB_PSE_mEE:bb.a
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.thread, label %bb.b

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.thread: ; preds = %bb.a
  store ptr %1, ptr %6, align 8, !tbaa !1519
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 24, i1 false)
end_hunk_7
begin_hunk_8_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE30createFunctionFromHostFunctionERKNS0_10PropNameIDEjSt8functionIFNS0_5ValueERNS0_7RuntimeERKSB_PSE_mEE:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !1519
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %i.l, align 8, !tbaa !777
end_hunk_8
begin_hunk_9_@_ZN8facebook3jsi16RuntimeDecoratorINS_6hermes12_GLOBAL__N_117HermesRuntimeImplENS0_17ThreadSafeRuntimeEE30createFunctionFromHostFunctionERKNS0_10PropNameIDEjSt8functionIFNS0_5ValueERNS0_7RuntimeERKSB_PSE_mEE:bb.a
          to label %.noexc unwind label %bb.l     ; 5 uses

.noexc:                                           ; preds = %_ZN8facebook3jsi21DecoratedHostFunctionC2ERNS0_7RuntimeESt8functionIFNS0_5ValueES3_RKS5_PS6_mEE.exit
  store ptr %1, ptr %i.q, align 8, !tbaa !1519
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
end_hunk_9
begin_hunk_10_@_ZNSt14_Function_base13_Base_managerIN8facebook3jsi21DecoratedHostFunctionEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !1415   ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #52 ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1529, !nonnull !30, !align !31
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1519
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_10
begin_hunk_11_@llvm.ctpop.i16
!1513 = !{!1514}
!1514 = distinct !{!1514, !1515, !"_ZSt11make_sharedIN8facebook3jsi19DecoratedHostObjectEJRNS1_16RuntimeDecoratorINS0_6hermes12_GLOBAL__N_117HermesRuntimeImplENS1_17ThreadSafeRuntimeEEESt10shared_ptrINS1_10HostObjectEEEESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!1515 = distinct !{!1515, !"_ZSt11make_sharedIN8facebook3jsi19DecoratedHostObjectEJRNS1_16RuntimeDecoratorINS0_6hermes12_GLOBAL__N_117HermesRuntimeImplENS1_17ThreadSafeRuntimeEEESt10shared_ptrINS1_10HostObjectEEEESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!1516 = !{!1517, !1518, i64 0}
!1517 = !{!"_ZTSSt12__shared_ptrIN8facebook3jsi19DecoratedHostObjectELN9__gnu_cxx12_Lock_policyE2EE", !1518, i64 0, !160, i64 8}
!1518 = !{!"p1 _ZTSN8facebook3jsi19DecoratedHostObjectE", !9, i64 0}
!1519 = !{!1520, !1520, i64 0}
!1520 = !{!"p1 _ZTSN8facebook3jsi7RuntimeE", !9, i64 0}
!1521 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1522 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook3jsi19DecoratedHostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1523 = distinct !{null}
!1524 = distinct !{ptr @_ZN8facebook3jsi19DecoratedHostObjectD2Ev, ptr @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1525 = !{ptr @_ZN8facebook3jsi19DecoratedHostObjectD2Ev}
!1526 = !{!1527, !1520, i64 8}
!1527 = !{!"_ZTSN8facebook3jsi19DecoratedHostObjectE", !1528, i64 0, !1520, i64 8, !1206, i64 16}
!1528 = !{!"_ZTSN8facebook3jsi10HostObjectE"}
!1529 = !{!1530, !1520, i64 0}
!1530 = !{!"_ZTSN8facebook3jsi21DecoratedHostFunctionE", !1520, i64 0, !778, i64 8}
!1531 = !{!1532, !1534}
!1532 = distinct !{!1532, !1533, !"_ZSt13__invoke_implIN8facebook3jsi5ValueERNS1_21DecoratedHostFunctionEJRNS1_7RuntimeERKS2_PS7_mEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!1533 = distinct !{!1533, !"_ZSt13__invoke_implIN8facebook3jsi5ValueERNS1_21DecoratedHostFunctionEJRNS1_7RuntimeERKS2_PS7_mEET_St14__invoke_otherOT0_DpOT1_"}
end_hunk_11
