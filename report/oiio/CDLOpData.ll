inline.NumInlined: 516
inline.NumDeleted: 241
begin_hunk_0_@_ZNK16OpenColorIO_v2_59CDLOpData9isInverseERSt10shared_ptrIKS0_E:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit unwind label %bb.g

_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit: ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv.exit
  %i.q = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_59CDLOpData9isInverseERSt10shared_ptrIKS0_E:bb.a
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !133
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !133
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !140
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #23, !noalias !140 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !51, !noalias !140
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !53, !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !140
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(256) %1)
          to label %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !140

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #22, !noalias !140
  resume { ptr, i32 } %i.e

_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit:    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_59CDLOpDataE, i64 16), ptr %i.d, align 8, !tbaa !17, !noalias !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !140
  store ptr %i.a, ptr %i.f, align 8, !tbaa !54, !alias.scope !140
  store ptr %i.d, ptr %0, align 8, !tbaa !55, !alias.scope !140
  %i.i = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %switch.lookup, label %_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !14, !alias.scope !147
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !16, !alias.scope !147
  store i8 0, ptr %i.bt, align 8, !tbaa !7, !alias.scope !147
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !111, !noalias !147 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bw, null
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !147 ; 2 uses
  %i.bz = icmp ugt ptr %i.bw, %i.by
  %.08.i.i.i = select i1 %i.bz, ptr %i.bw, ptr %i.by ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev:bb.a

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !113, !noalias !147 ; 2 uses
  %i.cc = ptrtoint ptr %.08.i.i.i to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev:bb.a
bb.n:                                             ; preds = %bb.o, %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !8, !alias.scope !147 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bt
  br i1 %i.ci, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.cj = load i64, ptr %i.bt, align 8, !tbaa !7, !alias.scope !147
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #22
  br label %.body
end_hunk_5
begin_hunk_6_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !148
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_6
begin_hunk_7_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !148
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_7
begin_hunk_8_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(256) %i.a) #20, !inline_history !149
  ret void
}

end_hunk_8
begin_hunk_9_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_9
begin_hunk_10_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(228) %i.a) #20, !inline_history !152
  ret void
}

end_hunk_10
begin_hunk_11_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_11
begin_hunk_12_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(260) %i.a) #20, !inline_history !153
  ret void
}

end_hunk_12
begin_hunk_13_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_13
begin_hunk_14_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !154    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !158, !noalias !155
  store ptr null, ptr %i.t, align 8, !tbaa !54, !alias.scope !158, !noalias !155
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !155, !noalias !158
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !71, !alias.scope !158, !noalias !155
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !160

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
end_hunk_15
begin_hunk_16_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !77, !alias.scope !164, !noalias !161
  store ptr null, ptr %i.y, align 8, !tbaa !54, !alias.scope !164, !noalias !161
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !77, !alias.scope !161, !noalias !164
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !71, !alias.scope !164, !noalias !161
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !160

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
end_hunk_16
begin_hunk_17_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_56OpDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !154
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !76
end_hunk_17
begin_hunk_18_@llvm.fabs.f64
!130 = distinct !{!130, !131, !"_ZSt11make_sharedIN16OpenColorIO_v2_59CDLOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!131 = distinct !{!131, !"_ZSt11make_sharedIN16OpenColorIO_v2_59CDLOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!132 = !{!130, !127, !124}
!133 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv: argument 0"}
!136 = distinct !{!136, !"_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZSt11make_sharedIN16OpenColorIO_v2_59CDLOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!139 = distinct !{!139, !"_ZSt11make_sharedIN16OpenColorIO_v2_59CDLOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!140 = !{!138, !135}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!146 = distinct !{!146, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!147 = !{!145, !142}
!148 = distinct !{null}
!149 = distinct !{null}
!150 = !{!151, !11, i64 8}
!151 = !{!"_ZTSSt9type_info", !11, i64 8}
!152 = distinct !{null}
!153 = distinct !{null}
!154 = !{!74, !75, i64 0}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_56OpDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!157 = distinct !{!157, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_56OpDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_56OpDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!160 = distinct !{!160, !94}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_56OpDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!163 = distinct !{!163, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_56OpDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aISt10shared_ptrIN16OpenColorIO_v2_56OpDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
end_hunk_18
