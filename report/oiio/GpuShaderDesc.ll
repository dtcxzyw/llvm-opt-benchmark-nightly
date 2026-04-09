inline.NumInlined: 694
inline.NumDeleted: 207
begin_hunk_0_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = invoke noundef signext i8 %i.gz(ptr noundef nonnull align 8 dereferenceable(570) %i.gs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ba, !inline_history !122

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc87, %bb.am
  %.0.i.i.i = phi i8 [ %i.gw, %bb.am ], [ %i.ha, %.noexc87 ]
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef signext i8 %i.hq(ptr noundef nonnull align 8 dereferenceable(570) %i.hj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i94 unwind label %bb.ba, !inline_history !122

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i94: ; preds = %.noexc97, %bb.ao
  %.0.i.i.i95 = phi i8 [ %i.hn, %bb.ao ], [ %i.hr, %.noexc97 ]
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef signext i8 %i.ih(ptr noundef nonnull align 8 dereferenceable(570) %i.ia, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105 unwind label %bb.ba, !inline_history !122

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105: ; preds = %.noexc108, %bb.aq
  %.0.i.i.i106 = phi i8 [ %i.ie, %bb.aq ], [ %i.ii, %.noexc108 ]
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = invoke noundef signext i8 %i.jd(ptr noundef nonnull align 8 dereferenceable(570) %i.iw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i116 unwind label %bb.ba, !inline_history !122

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i116: ; preds = %.noexc119, %bb.as
  %.0.i.i.i117 = phi i8 [ %i.ja, %bb.as ], [ %i.je, %.noexc119 ]
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i

_ZNSolsEPFRSoS_E.exit73:                          ; preds = %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.jh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.jh, ptr %8, align 8, !tbaa !13, !alias.scope !129
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ji, align 8, !tbaa !16, !alias.scope !129
  store i8 0, ptr %i.jh, align 8, !tbaa !19, !alias.scope !129
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !82, !noalias !129 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.jk, null
  %i.jl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !129 ; 2 uses
  %i.jn = icmp ugt ptr %i.jk, %i.jm
  %.08.i.i.i = select i1 %i.jn, ptr %i.jk, ptr %i.jm ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i

bb.au:                                            ; preds = %_ZNSolsEPFRSoS_E.exit73
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !84, !noalias !129 ; 2 uses
  %i.jq = ptrtoint ptr %.08.i.i.i to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_516GpuShaderCreator8finalizeEv:._crit_edge.i.i
bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load ptr, ptr %8, align 8, !tbaa !40, !alias.scope !129 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.jh
  br i1 %i.jw, label %.body, label %.body.sink.split

end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_513GpuShaderDesc5cloneEv:bb.a
  call void @_ZN16OpenColorIO_v2_520GenericGpuShaderDesc6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.6") align 8 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = load ptr, ptr %2, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZN16OpenColorIO_v2_516GpuShaderCreator4ImplaSERKS1_(ptr noundef nonnull align 8 dereferenceable(512) %i.e, ptr noundef nonnull align 8 dereferenceable(512) %i.b)
          to label %bb.b unwind label %bb.m       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.g = load ptr, ptr %2, align 8, !tbaa !130, !noalias !139 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.not.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516GpuShaderCreatorEEC2INS0_13GpuShaderDescEEERKS_IT_EPS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %0, align 8, !tbaa !140, !alias.scope !139
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45, !noalias !139 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !45, !alias.scope !139
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !139
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3, !noalias !139
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3, !noalias !139
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !139 ; 0 uses
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516GpuShaderCreatorEEC2INS0_13GpuShaderDescEEERKS_IT_EPS1_.exit.i.i: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !139
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZNSt10shared_ptrIN16OpenColorIO_v2_516GpuShaderCreatorEEC2INS0_13GpuShaderDescEEERKS_IT_EPS1_.exit.i.i
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_513GpuShaderDesc5cloneEv:bb.a
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #26, !inline_history !143
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #26, !inline_history !143
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513GpuShaderDescELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
end_hunk_8
begin_hunk_9_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_513GpuShaderDescELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !144
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !144
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EED2Ev:bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !145
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !145
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
end_hunk_10
begin_hunk_11_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !146
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_11
begin_hunk_12_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !146
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_12
begin_hunk_13_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !64, !alias.scope !150, !noalias !147
  store ptr null, ptr %i.z, align 8, !tbaa !45, !alias.scope !150, !noalias !147
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !64, !alias.scope !147, !noalias !150
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !60, !alias.scope !150, !noalias !147
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !152

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
end_hunk_13
begin_hunk_14_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !64, !alias.scope !156, !noalias !153
  store ptr null, ptr %i.ae, align 8, !tbaa !45, !alias.scope !156, !noalias !153
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !64, !alias.scope !153, !noalias !156
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !60, !alias.scope !156, !noalias !153
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !152

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
end_hunk_14
begin_hunk_15_@llvm.umax.i64
!119 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!120 = !{!"p1 int", !12, i64 0}
!121 = !{!"p1 short", !12, i64 0}
!122 = distinct !{null, null}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!125 = distinct !{!125, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!128 = distinct !{!128, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!129 = !{!127, !124}
!130 = !{!131, !132, i64 0}
!131 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_513GpuShaderDescELN9__gnu_cxx12_Lock_policyE2EE", !132, i64 0, !46, i64 8}
!132 = !{!"p1 _ZTSN16OpenColorIO_v2_513GpuShaderDescE", !12, i64 0}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E: argument 0"}
!135 = distinct !{!135, !"_ZN16OpenColorIO_v2_514DynamicPtrCastINS_16GpuShaderCreatorENS_13GpuShaderDescEEESt10shared_ptrIT_ERKS3_IT0_E"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_516GpuShaderCreatorENS0_13GpuShaderDescEESt10shared_ptrIT_ERKS3_IT0_E: argument 0"}
!138 = distinct !{!138, !"_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_516GpuShaderCreatorENS0_13GpuShaderDescEESt10shared_ptrIT_ERKS3_IT0_E"}
!139 = !{!137, !134}
!140 = !{!141, !142, i64 0}
!141 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_516GpuShaderCreatorELN9__gnu_cxx12_Lock_policyE2EE", !142, i64 0, !46, i64 8}
!142 = !{!"p1 _ZTSN16OpenColorIO_v2_516GpuShaderCreatorE", !12, i64 0}
!143 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513GpuShaderDescELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!144 = distinct !{null, null}
!145 = distinct !{null, null, null, null, null, null}
!146 = distinct !{null}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!149 = distinct !{!149, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEES3_SaIS3_EEvPT_PT0_RT1_"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!152 = distinct !{!152, !54}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!155 = distinct !{!155, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEES3_SaIS3_EEvPT_PT0_RT1_"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
end_hunk_15
