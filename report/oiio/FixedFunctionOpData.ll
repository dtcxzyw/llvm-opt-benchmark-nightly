inline.NumInlined: 581
inline.NumDeleted: 180
begin_hunk_0_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData9isInverseERSt10shared_ptrIKS0_E:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(200) %.pre, ptr noundef nonnull align 8 dereferenceable(200) %i.o)
          to label %_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_.exit unwind label %bb.k

_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData9isInverseERSt10shared_ptrIKS0_E:bb.a
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #18, !inline_history !67
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #18, !inline_history !67
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19, !noalias !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !74
  %i.d = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #21, !noalias !74 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !59, !noalias !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !61, !noalias !74
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !17, !noalias !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %i.g, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !74

common.resume.i:                                  ; preds = %bb.b, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %i.m, %bb.b ]
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData7inverseEv:bb.a
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 216) #19, !noalias !74
  br label %common.resume.i

_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !62, !alias.scope !74
  store ptr %i.g, ptr %0, align 8, !tbaa !63, !alias.scope !74
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.j)
          to label %_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv.exit unwind label %bb.b, !noalias !68 ; 0 uses

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i
  %i.m = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData6equalsERKNS_6OpDataE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp ne ptr %i.y, %i.j
  %or.cond.not = select i1 %i.x, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit, !llvm.loop !75

_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.i ]
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData10getCacheIDB5cxx11Ev:bb.a
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 7, ptr %i.s, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.u = load i32, ptr %i.t, align 8, !tbaa !19
  %i.v = invoke noundef ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpData20ConvertStyleToStringENS0_5StyleEb(i32 noundef %i.u, i1 noundef zeroext true)
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData10getCacheIDB5cxx11Ev:bb.a
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !14, !alias.scope !92
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !16, !alias.scope !92
  store i8 0, ptr %i.ac, align 8, !tbaa !13, !alias.scope !92
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !93, !noalias !92 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !92 ; 2 uses
  %i.ai = icmp ugt ptr %i.af, %i.ah
  %.08.i.i.i = select i1 %i.ai, ptr %i.af, ptr %i.ah ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData10getCacheIDB5cxx11Ev:bb.a

bb.j:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95, !noalias !92 ; 2 uses
  %i.al = ptrtoint ptr %.08.i.i.i to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_519FixedFunctionOpData10getCacheIDB5cxx11Ev:bb.a
bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac
  br i1 %i.ar, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !13, !alias.scope !92
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #19
  br label %.body
end_hunk_8
begin_hunk_9_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_9
begin_hunk_10_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !96
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_10
begin_hunk_11_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #18, !inline_history !97
  ret void
}

end_hunk_11
begin_hunk_12_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_12
begin_hunk_13_@llvm.memset.p0.i64
!64 = distinct !{null, null}
!65 = !{!66, !56, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !57, i64 8}
!67 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv: argument 0"}
!70 = distinct !{!70, !"_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!74 = !{!72, !69}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!78, !12, i64 8}
!78 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !79, i64 24, !80, i64 28, !80, i64 32, !81, i64 40, !82, i64 48, !5, i64 64, !4, i64 192, !83, i64 200, !84, i64 208}
!79 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!80 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!81 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!82 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !12, i64 8}
!83 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!84 = !{!"_ZTSSt6locale", !85, i64 0}
!85 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!88 = distinct !{!88, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!91 = distinct !{!91, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!92 = !{!90, !87}
!93 = !{!94, !10, i64 40}
!94 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !84, i64 56}
!95 = !{!94, !10, i64 32}
!96 = distinct !{null}
!97 = distinct !{null}
!98 = !{!99, !10, i64 8}
!99 = !{!"_ZTSSt9type_info", !10, i64 8}
end_hunk_13
