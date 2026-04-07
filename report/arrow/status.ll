inline.NumInlined: 188
inline.NumDeleted: 90
begin_hunk_0_@_ZN5arrow6StatusC2ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #22, !inline_history !25
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #22, !inline_history !25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE:bb.a

.critedge15:                                      ; preds = %bb.a, %.critedge
  %i.c = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store i8 %1, ptr %i.c, align 16, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE:bb.a
  store i8 0, ptr %i.h, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load <2 x ptr>, ptr %3, align 8, !tbaa !34
  store ptr null, ptr %i.s, align 8, !tbaa !17
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !34
  store ptr null, ptr %3, align 8, !tbaa !35
  store ptr %i.c, ptr %0, align 8, !tbaa !36
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !39
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !39
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_Znwm
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !33, !range !41, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

end_hunk_4
begin_hunk_5_@_ZN5arrow6Status8CopyFromERKS0_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !36     ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !33, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.f

end_hunk_5
begin_hunk_6_@_ZN5arrow6Status8CopyFromERKS0_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !34
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.k

end_hunk_6
begin_hunk_7_@_ZN5arrow6Status8CopyFromERKS0_:bb.a

_ZN5arrow6Status5StateC2ERKS1_.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.l, %bb.m, %bb.e, %bb.d
  %.sink = phi ptr [ null, %bb.d ], [ %i.e, %bb.e ], [ %i.j, %bb.m ], [ %i.j, %bb.l ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

end_hunk_7
begin_hunk_8_@_ZN5arrow6Status11DeleteStateEv:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !43
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !43
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_ZdlPvm
; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status12CodeAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge.i.i, label %_ZNK5arrow6Status4codeEv.exit

end_hunk_9
begin_hunk_10_@_ZNK5arrow6Status12CodeAsStringB5cxx11Ev:bb.a
  br label %bb.b

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !26
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  br label %bb.b

end_hunk_10
begin_hunk_11_@_ZNK5arrow6Status8ToStringB5cxx11Ev
define void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.a = load ptr, ptr %1, align 8, !tbaa !36, !noalias !44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7, !alias.scope !44
  store i16 19279, ptr %i.c, align 8, !alias.scope !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !14, !alias.scope !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !16, !alias.scope !44
  br label %bb.ae

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit:    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !26, !noalias !44
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %i.g = icmp eq ptr %.pre, null
  br i1 %i.g, label %bb.ae, label %bb.b

end_hunk_11
begin_hunk_12_@_ZNK5arrow6Status8ToStringB5cxx11Ev:bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !16
  %i.v = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
end_hunk_12
begin_hunk_13_@_ZNK5arrow6Status8ToStringB5cxx11Ev:bb.a
  %i.al = load ptr, ptr %0, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1, !tbaa !16
  %i.an = load ptr, ptr %1, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.ae, label %bb.n

end_hunk_13
begin_hunk_14_@_ZNK5arrow6Status8ToStringB5cxx11Ev:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.as
  store i8 0, ptr %i.ba, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bb = load ptr, ptr %1, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
end_hunk_14
begin_hunk_15_@_ZNK5arrow6Status27ToStringWithoutContextLinesB5cxx11Ev:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = select i1 %i.b, ptr @_ZZNK5arrow6Status7messageB5cxx11EvE10no_messageB5cxx11, ptr %i.c
end_hunk_15
begin_hunk_16_@_ZNK5arrow6Status6detailEv:bb.a
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5arrow6Status6detailEvE9no_detail acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5arrow6Status6detailEvE9no_detail) #22
end_hunk_16
begin_hunk_17_@_ZNK5arrow6Status6detailEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %.not1 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %spec.select = select i1 %.not1, ptr @_ZZNK5arrow6Status6detailEvE9no_detail, ptr %i.f
end_hunk_17
begin_hunk_18_@_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

end_hunk_18
begin_hunk_19_@_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !63
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

end_hunk_19
begin_hunk_20_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_20
begin_hunk_21_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !69
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_21
begin_hunk_22_@llvm.memset.p0.i64
!22 = !{!21, !4, i64 12}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow6Status5StateE", !28, i64 0, !29, i64 1, !12, i64 8, !30, i64 40}
!28 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !31, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !18, i64 8}
!32 = !{!"p1 _ZTSN5arrow12StatusDetailE", !10, i64 0}
!33 = !{!27, !29, i64 1}
!34 = !{!10, !10, i64 0}
!35 = !{!31, !32, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN5arrow6StatusE", !38, i64 0}
!38 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!39 = distinct !{null, null}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK5arrow6Status12CodeAsStringB5cxx11Ev: argument 0"}
!46 = distinct !{!46, !"_ZNK5arrow6Status12CodeAsStringB5cxx11Ev"}
!47 = !{!"branch_weights", i32 1, i32 1048575}
!48 = !{!49, !60, i64 240}
!49 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !50, i64 0, !58, i64 216, !5, i64 224, !29, i64 225, !59, i64 232, !60, i64 240, !61, i64 248, !62, i64 256}
!50 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !51, i64 24, !52, i64 28, !52, i64 32, !53, i64 40, !54, i64 48, !5, i64 64, !4, i64 192, !55, i64 200, !56, i64 208}
!51 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!52 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!53 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!54 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !13, i64 8}
!55 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!56 = !{!"_ZTSSt6locale", !57, i64 0}
!57 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!58 = !{!"p1 _ZTSSo", !10, i64 0}
!59 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!60 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!61 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!62 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!63 = !{!64, !5, i64 56}
!64 = !{!"_ZTSSt5ctypeIcE", !65, i64 0, !66, i64 16, !29, i64 24, !67, i64 32, !67, i64 40, !68, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!65 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!66 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!67 = !{!"p1 int", !10, i64 0}
!68 = !{!"p1 short", !10, i64 0}
!69 = distinct !{null}
end_hunk_22
