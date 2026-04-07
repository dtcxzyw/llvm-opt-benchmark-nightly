inline.NumInlined: 89
inline.NumDeleted: 45
begin_hunk_0_@_ZN6hermes24convert_error_to_messageB5cxx11ESt10error_code:_ZN4llvhplERKNS_5TwineES2_.exit7
  %i.r = load ptr, ptr %2, align 8, !tbaa !23, !noalias !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !39
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1) #13, !inline_history !42
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.u, align 8, !tbaa !14, !alias.scope !43
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.v, align 1, !tbaa !17, !alias.scope !43
  br label %_ZN4llvhplERKNS_5TwineES2_.exit37

_ZN4llvhplERKNS_5TwineES2_.exit22:                ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit14, %_ZN4llvhplERKNS_5TwineES2_.exit14.thread
end_hunk_0
begin_hunk_1_@_ZN6hermes24convert_error_to_messageB5cxx11ESt10error_code:_ZN4llvhplERKNS_5TwineES2_.exit7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !39
  call void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1) #13
  store ptr %i.ac, ptr %4, align 8, !tbaa !8, !alias.scope !43
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %9, ptr %i.ai, align 8, !tbaa !8, !alias.scope !43
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.ab, ptr %i.aj, align 8, !tbaa !14, !alias.scope !43
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 4, ptr %i.ak, align 1, !tbaa !17, !alias.scope !43
  store ptr %4, ptr %3, align 8, !tbaa !8, !alias.scope !48
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.3, ptr %i.al, align 8, !tbaa !8, !alias.scope !48
  br label %_ZN4llvhplERKNS_5TwineES2_.exit37

_ZN4llvhplERKNS_5TwineES2_.exit37:                ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71, %bb.b
  %.sink95 = phi i8 [ 0, %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71 ], [ 2, %bb.b ]
  %.sink93 = phi i8 [ 1, %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71 ], [ 3, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink95, ptr %i.am, align 8, !tbaa !14, !alias.scope !48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %.sink93, ptr %i.an, align 1, !tbaa !17, !alias.scope !48
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %3) #13
  %i.ao = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
begin_hunk_2_@llvm.lifetime.start.p0
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !noalias !59 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14, !noalias !59 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !14, !alias.scope !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !17, !alias.scope !59
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN4llvhplERKNS_5TwineES2_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17, !noalias !59
  %i.m = icmp eq i8 %i.l, 1                       ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !noalias !59
  %spec.select.i = select i1 %i.m, i8 %i.b, i8 2
  %spec.select14.i = select i1 %i.m, ptr %.sroa.04.0.copyload.i, ptr %1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17, !noalias !59
  %i.p = icmp eq i8 %i.o, 1                       ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !59
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.03.0.i = select i1 %i.p, ptr %.sroa.03.0.copyload.i, ptr %2
  store ptr %spec.select14.i, ptr %0, align 8, !tbaa !8, !alias.scope !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.q, align 8, !tbaa !8, !alias.scope !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %spec.select.i, ptr %i.r, align 8, !tbaa !14, !alias.scope !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !17, !alias.scope !59
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

_ZNK4llvh5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
end_hunk_3
begin_hunk_4_@_ZN4llvh18report_fatal_errorEPKcb
; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN6hermes12hermes_fatalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef %i.a, i1 noundef zeroext true) #15
  unreachable
}
end_hunk_4
begin_hunk_5_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !62
  switch i32 %2, label %._crit_edge.i.i13 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i1
end_hunk_5
begin_hunk_6_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a
._crit_edge.i.i:                                  ; preds = %bb.a
  store i64 8245935278387130190, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !8
  br label %bb.b

._crit_edge.i.i1:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 26, ptr %i.e, align 8, !tbaa !64
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #13 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !53
  %i.j = load i64, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.i, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, i64 26, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = load ptr, ptr %0, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
end_hunk_6
begin_hunk_7_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a

._crit_edge.i.i3:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 47, ptr %i.d, align 8, !tbaa !64
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #13 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !53
  %i.o = load i64, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.n, ptr noundef nonnull align 1 dereferenceable(47) @.str.8, i64 47, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
end_hunk_7
begin_hunk_8_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a
._crit_edge.i.i5:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.f, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.s, align 1, !tbaa !8
  br label %bb.b

._crit_edge.i.i7:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 55, ptr %i.c, align 8, !tbaa !64
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #13 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !53
  %i.u = load i64, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.t, ptr noundef nonnull align 1 dereferenceable(55) @.str.10, i64 55, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
end_hunk_8
begin_hunk_9_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a

._crit_edge.i.i9:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 40, ptr %i.b, align 8, !tbaa !64
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !53
  %i.y = load i64, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.x, ptr noundef nonnull align 1 dereferenceable(40) @.str.11, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
end_hunk_9
begin_hunk_10_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a

._crit_edge.i.i11:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 55, ptr %i.a, align 8, !tbaa !64
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !53
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ab, ptr noundef nonnull align 1 dereferenceable(55) @.str.12, i64 55, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
end_hunk_10
begin_hunk_11_@_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei:bb.a
._crit_edge.i.i13:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.13, i64 7, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.af, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ag, align 1, !tbaa !8
  br label %bb.b
end_hunk_11
begin_hunk_12_@llvm.experimental.noalias.scope.decl
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!41 = distinct !{!41, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!42 = distinct !{null}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!45 = distinct !{!45, !"_ZNK4llvh5Twine6concatERKS0_"}
!46 = distinct !{!46, !47, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!47 = distinct !{!47, !"_ZN4llvhplERKNS_5TwineES2_"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!50 = distinct !{!50, !"_ZNK4llvh5Twine6concatERKS0_"}
!51 = distinct !{!51, !52, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!52 = distinct !{!52, !"_ZN4llvhplERKNS_5TwineES2_"}
!53 = !{!54, !56, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !55, i64 0, !58, i64 8, !5, i64 16}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!56 = !{!"p1 omnipotent char", !57, i64 0}
!57 = !{!"any pointer", !5, i64 0}
!58 = !{!"long", !5, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!61 = distinct !{!61, !"_ZNK4llvh5Twine6concatERKS0_"}
!62 = !{!55, !56, i64 0}
!63 = !{!54, !58, i64 8}
!64 = !{!58, !58, i64 0}
end_hunk_12
