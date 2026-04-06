begin_hunk_0_@_ZN4YAML7LoadAllERSi:bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_ZN4YAML7LoadAllERSi:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.m ], [ %i.v, %bb.n ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.o, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !49

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
end_hunk_1
begin_hunk_2_@_ZN4YAML4NodeD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN4YAML4NodeD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
end_hunk_3
begin_hunk_4_@_ZN4YAML4NodeD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4YAML4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4YAML4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN4YAML4NodeESaIS1_EED2Ev:bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN4YAML4NodeESaIS1_EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN4YAML4NodeESaIS1_EED2Ev:bb.a
_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i:         ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4YAML4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !54

_ZSt8_DestroyIPN4YAML4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPN4YAML4NodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4YAML4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4YAML4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
end_hunk_7
begin_hunk_8_@_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML9ExceptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !26
end_hunk_8
begin_hunk_9_@_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !57
  %i.c = icmp eq i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
end_hunk_9
begin_hunk_10_@_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK4YAML4Mark7is_nullEv.exit.thread
  %i.y = load i32, ptr %i.d, align 4, !tbaa !59
  %i.z = add nsw i32 %i.y, 1
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %i.z)
          to label %bb.e unwind label %bb.j       ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.e
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !60
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ad)
          to label %bb.f unwind label %bb.j       ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !26, !alias.scope !67
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !27, !alias.scope !67
  store i8 0, ptr %i.ak, align 8, !tbaa !28, !alias.scope !67
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68, !noalias !67 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !67 ; 2 uses
  %i.aq = icmp ugt ptr %i.an, %i.ap
  %.08.i.i.i = select i1 %i.aq, ptr %i.an, ptr %i.ap ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_12
begin_hunk_13_@_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70, !noalias !67 ; 2 uses
  %i.at = ptrtoint ptr %.08.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
end_hunk_13
begin_hunk_14_@_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !9, !alias.scope !67 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

end_hunk_14
begin_hunk_15_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_15
begin_hunk_16_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_16
begin_hunk_17_@_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
end_hunk_17
begin_hunk_18_@_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
end_hunk_18
begin_hunk_19_@_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_:bb.a
_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i:           ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4YAML4NodeEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !54

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4YAML4NodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i, %bb.a
  ret void
end_hunk_19
begin_hunk_20_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE12emplace_backIJS1_EEEvDpOT_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 8, !tbaa !17, !range !72, !noundef !73
  store i8 %i.f, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_20
begin_hunk_21_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE12emplace_backIJS1_EEEvDpOT_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !74
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN4YAML4NodeC2ERKS0_.exit, label %bb.e

end_hunk_21
begin_hunk_22_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE12emplace_backIJS1_EEEvDpOT_:bb.a
_ZN4YAML4NodeC2ERKS0_.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !75
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !53
  br label %bb.i

bb.h:                                             ; preds = %bb.a
end_hunk_22
begin_hunk_23_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !50     ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
end_hunk_23
begin_hunk_24_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4YAML4NodeESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZNKSt6vectorIN4YAML4NodeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 7 uses
  %i.t = load i8, ptr %2, align 8, !tbaa !17, !range !72, !noundef !73
  store i8 %i.t, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_24
begin_hunk_25_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !74
  store <2 x ptr> %i.an, ptr %i.aj, align 8, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

end_hunk_25
begin_hunk_26_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75
  store ptr %i.av, ptr %i.at, align 8, !tbaa !75
  %i.aw = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.r)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.q

end_hunk_26
begin_hunk_27_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #20
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #20
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
end_hunk_27
begin_hunk_28_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.m ], [ %i.bo, %bb.n ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.o, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !49

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #20
end_hunk_28
begin_hunk_29_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i:         ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !54

_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit:          ; preds = %_ZSt8_DestroyIN4YAML4NodeEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit30
  %.not.i31 = icmp eq ptr %i.d, null
end_hunk_29
begin_hunk_30_@_ZNSt6vectorIN4YAML4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a

_ZNSt12_Vector_baseIN4YAML4NodeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4YAML4NodeEEvT_S3_.exit, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !50
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.m
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !71
  ret void

bb.q:                                             ; preds = %bb.i
end_hunk_30
begin_hunk_31_@_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.016 = phi ptr [ %i.af, %bb.g ], [ %2, %bb.a ] ; 8 uses
  %.01215 = phi ptr [ %i.ae, %bb.g ], [ %0, %bb.a ] ; 7 uses
  %i.b = load i8, ptr %.01215, align 8, !tbaa !17, !range !72, !noundef !73
  store i8 %i.b, ptr %.016, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
end_hunk_31
begin_hunk_32_@_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.01215, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !74
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !74
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

end_hunk_32
begin_hunk_33_@_ZSt16__do_uninit_copyIPKN4YAML4NodeEPS1_ET0_T_S6_S5_:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.016, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %.01215, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.016, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ag = landingpad { ptr, i32 }
end_hunk_33
begin_hunk_34_@llvm.umax.i64
!46 = !{!47, !4, i64 8}
!47 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!48 = !{!47, !4, i64 12}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN4YAML4NodeESaIS1_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTSN4YAML4NodeE", !13, i64 0}
!53 = !{!51, !52, i64 8}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!57 = !{!58, !4, i64 0}
!58 = !{!"_ZTSN4YAML4MarkE", !4, i64 0, !4, i64 4, !4, i64 8}
!59 = !{!58, !4, i64 4}
!60 = !{!58, !4, i64 8}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!63 = distinct !{!63, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!66 = distinct !{!66, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!67 = !{!65, !62}
!68 = !{!69, !12, i64 40}
!69 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !37, i64 56}
!70 = !{!69, !12, i64 32}
!71 = !{!51, !52, i64 16}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!13, !13, i64 0}
!75 = !{!18, !25, i64 56}
!76 = distinct !{!76, !55}
end_hunk_34
