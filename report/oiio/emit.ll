begin_hunk_0_@_ZN4YAMLlsERNS_7EmitterERKNS_4NodeE:bb.a
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !22
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !22
  br label %_ZN4YAML10NodeEventsD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

end_hunk_0
begin_hunk_1_@_ZN4YAMLlsERNS_7EmitterERKNS_4NodeE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.h ], [ %i.u, %bb.i ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.j, label %_ZN4YAML10NodeEventsD2Ev.exit, !prof !24

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12
end_hunk_1
begin_hunk_2_@_ZN4YAMLlsERNS_7EmitterERKNS_4NodeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4YAML14EmitFromEventsE, i64 16), ptr %2, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i6, label %_ZN4YAML14EmitFromEventsD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4YAML10NodeEventsD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.k ] ; 3 uses
  %i.ae = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !31
  call void @_ZdlPv(ptr noundef %i.ae) #14
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ag = icmp ult ptr %.06.i.i.i.i.i, %i.ab
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, !llvm.loop !32

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !25
  br label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, %bb.k
end_hunk_2
begin_hunk_3_@_ZN4YAML10NodeEventsD2Ev:bb.a
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !34
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !inline_history !34
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

end_hunk_3
begin_hunk_4_@_ZN4YAML10NodeEventsD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12
end_hunk_4
begin_hunk_5_@_ZN4YAML14EmitFromEventsD2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4YAML14EmitFromEventsE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN4YAML14EmitFromEvents5State5valueESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !31
  tail call void @_ZdlPv(ptr noundef %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !32

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.b
end_hunk_5
begin_hunk_6_@_ZN4YAML4DumpB5cxx11ERKNS_4NodeE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !35
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.d, label %bb.e

end_hunk_6
begin_hunk_7_@_ZN4YAML4DumpB5cxx11ERKNS_4NodeE:bb.a
bb.e:                                             ; preds = %bb.c
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.f, ptr %i.a, align 8, !tbaa !38
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

end_hunk_7
begin_hunk_8_@_ZN4YAML4DumpB5cxx11ERKNS_4NodeE:bb.a
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %0, align 8, !tbaa !39
  %i.i = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.i, ptr %i.d, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.e
end_hunk_8
begin_hunk_9_@_ZN4YAML4DumpB5cxx11ERKNS_4NodeE:bb.a
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
end_hunk_9
begin_hunk_10_@_ZN4YAML4DumpB5cxx11ERKNS_4NodeE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !41
  %i.n = load ptr, ptr %0, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @_ZN4YAML7EmitterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
end_hunk_10
begin_hunk_11_@_ZNSt8_Rb_treeIPKN4YAML6detail8node_refESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  tail call void @_ZNSt8_Rb_treeIPKN4YAML6detail8node_refESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_11
begin_hunk_12_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_12
begin_hunk_13_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !45
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_13
begin_hunk_14_@llvm.memcpy.p0.p0.i64
!19 = !{!18, !4, i64 12}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !6, i64 0}
!22 = distinct !{ptr @_ZN4YAML10NodeEventsD2Ev, null, null, null}
!23 = !{!5, !5, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt11_Deque_baseIN4YAML14EmitFromEvents5State5valueESaIS3_EE16_Deque_impl_dataE", !27, i64 0, !13, i64 8, !28, i64 16, !28, i64 48}
!27 = !{!"any p2 pointer", !12, i64 0}
!28 = !{!"_ZTSSt15_Deque_iteratorIN4YAML14EmitFromEvents5State5valueERS3_PS3_E", !12, i64 0, !12, i64 8, !12, i64 16, !27, i64 24}
!29 = !{!26, !27, i64 40}
!30 = !{!26, !27, i64 72}
!31 = !{!12, !12, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{null, null, null}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!37 = !{!"p1 omnipotent char", !12, i64 0}
!38 = !{!13, !13, i64 0}
!39 = !{!40, !37, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !13, i64 8, !5, i64 16}
!41 = !{!40, !13, i64 8}
!42 = !{!9, !11, i64 24}
!43 = !{!9, !11, i64 16}
!44 = distinct !{!44, !33}
!45 = distinct !{null}
end_hunk_14
