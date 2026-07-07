inline.NumInlined: 6460
inline.NumDeleted: 1865
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4node17ERR_FS_CP_UNKNOWNIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEN2v85LocalINS8_6ObjectEEEPNS8_7IsolateESt17basic_string_viewIcS4_EDpOT_:bb.a

bb.j:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #36
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.j
  %i.ao = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr %i.al, ptr %i.am, ptr %i.aa) #36
  %i.ap = trunc i16 %i.ao to i1
  br i1 %i.ap, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.k, !prof !48

bb.k:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #36
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.k
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.as = load i64, ptr %i.a, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret ptr %i.aj
}

declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IPcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #36 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.b, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.b, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 2 uses
  store ptr %i.h, ptr %0, align 8
  store i64 %i.b, ptr %i.c, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.a, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.a, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #36
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node11Environment20ThrowStdErrExceptionESt10error_codePKcS3_(ptr noundef nonnull align 8 dereferenceable(3304) %0, i32 %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = load ptr, ptr %2, align 8, !noalias !611
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !611
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1) #36, !inline_history !256
  %i.d = load ptr, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = call ptr @_ZN4node14ErrnoExceptionEPN2v87IsolateEiPKcS4_S4_(ptr noundef %i.f, i32 noundef %1, ptr noundef %3, ptr noundef %i.d, ptr noundef %4) #36
  %i.h = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr %i.g) #36 ; 0 uses
  %i.i = load ptr, ptr %5, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4node2fsL10CopyUtimesERKNSt10filesystem7__cxx114pathES5_PNS_11EnvironmentE(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.uv_fs_s, align 8            ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.a, ptr %3, align 8, !alias.scope !297
  %i.b = icmp ugt i64 %.8.val, 15
  br i1 %i.b, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %.8.val, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = add nuw i64 %.8.val, 1                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.f = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #38 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !alias.scope !297
  store i64 %.8.val, ptr %i.a, align 8, !alias.scope !297
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.g = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %.8.val, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %.0.val, align 1
  store i8 %i.h, ptr %i.g, align 1
  br label %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %.0.val, i64 %.8.val, i1 false)
  br label %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit

_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.8.val, ptr %i.i, align 8, !alias.scope !297
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.8.val
  store i8 0, ptr %i.j, align 1
  %i.k = load ptr, ptr %3, align 8
  %i.l = call i32 @uv_fs_stat(ptr noundef null, ptr noundef nonnull %2, ptr noundef %i.k, ptr noundef null) #36 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit
  %i.n = load ptr, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = call ptr @_ZN4node11UVExceptionEPN2v87IsolateEiPKcS4_S4_S4_(ptr noundef %i.p, i32 noundef %i.l, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef %i.n, ptr noundef null) #36
  %i.r = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr %i.q) #36 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sitofp i64 %i.v to double
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.y = load i64, ptr %i.x, align 8
  %5 = sitofp i64 %i.y to double
  %6 = fdiv double %5, 1.000000e+09
  %7 = fadd double %6, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = sitofp i64 %i.aa to double
  %8 = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %9 = load i64, ptr %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %10, 1.000000e+09
  %i.ac = fadd double %11, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ad, ptr %4, align 8, !alias.scope !614
  %i.ae = load ptr, ptr %0, align 8, !noalias !614 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !614 ; 8 uses
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.j, label %._crit_edge.i.i.i16

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp slt i64 %i.ag, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #37
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aj = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i17, !prof !5

bb.m:                                             ; preds = %bb.l
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i17: ; preds = %bb.l
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #38 ; 2 uses
  store ptr %i.al, ptr %4, align 8, !alias.scope !614
  store i64 %i.ag, ptr %i.ad, align 8, !alias.scope !614
  br label %._crit_edge.i.i.i16

._crit_edge.i.i.i16:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i17, %bb.i
  %i.am = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i17 ], [ %i.ad, %bb.i ] ; 3 uses
  switch i64 %i.ag, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit18
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i16
  %i.an = load i8, ptr %i.ae, align 1
  store i8 %i.an, ptr %i.am, align 1
  br label %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit18

bb.o:                                             ; preds = %._crit_edge.i.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit18

_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit18: ; preds = %._crit_edge.i.i.i16, %bb.n, %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ag, ptr %i.ao, align 8, !alias.scope !614
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 0, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %4, align 8
  %i.ar = call i32 @uv_fs_utime(ptr noundef null, ptr noundef nonnull %2, ptr noundef %i.aq, double noundef %7, double noundef %i.ac, ptr noundef null) #36 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1                  ; 2 uses
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit18
  %i.at = load ptr, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = call ptr @_ZN4node11UVExceptionEPN2v87IsolateEiPKcS4_S4_S4_(ptr noundef %i.av, i32 noundef %i.ar, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef %i.at, ptr noundef null) #36
  %i.ax = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr %i.aw) #36 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN4node17ConvertPathToUTF8ERKNSt10filesystem7__cxx114pathE.exit18, %bb.p
  %i.ay = load ptr, ptr %4, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ad, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bc = load ptr, ptr %3, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %"_ZN4node16OnScopeLeaveImplIZNS_2fsL10CopyUtimesERKNSt10filesystem7__cxx114pathES6_PNS_11EnvironmentEE3$_0ED2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.r
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #39
  br label %"_ZN4node16OnScopeLeaveImplIZNS_2fsL10CopyUtimesERKNSt10filesystem7__cxx114pathES6_PNS_11EnvironmentEE3$_0ED2Ev.exit"

"_ZN4node16OnScopeLeaveImplIZNS_2fsL10CopyUtimesERKNSt10filesystem7__cxx114pathES6_PNS_11EnvironmentEE3$_0ED2Ev.exit": ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNSt10filesystem9copy_fileERKNS_7__cxx114pathES3_NS_12copy_optionsERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare i32 @uv_fs_utime(ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbNSt10filesystem7__cxx114pathES2_EZN4node2fsL13CpSyncCopyDirERKN2v820FunctionCallbackInfoINS6_5ValueEEEE3$_0E9_M_invokeERKSt9_Any_dataOS2_SH_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::error_code", align 8   ; 17 uses
  %10 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 16 ; 5 uses
  %11 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 16 ; 8 uses
  %12 = alloca %"class.std::filesystem::__cxx11::directory_entry", align 8 ; 21 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 26 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 14 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 12 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 8 uses
  %23 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %24 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %25 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %26 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %27 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %28 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %29 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %30 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  %i.d = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  store ptr %i.d, ptr %29, align 8
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %29, align 8
  %i.l = load i64, ptr %i.f, align 8
  store i64 %i.l, ptr %i.d, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit.i.i

_ZNSt10filesystem7__cxx114pathC2EOS1_.exit.i.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.f, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  store ptr null, ptr %i.q, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.f, align 8
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #36
  %i.s = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  store ptr %i.s, ptr %30, align 8
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

bb.c:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit.i.i
  store ptr %i.t, ptr %30, align 8
  %i.aa = load i64, ptr %i.u, align 8
  store i64 %i.aa, ptr %i.s, align 8
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre48.i.i = load i64, ptr %.phi.trans.insert47.i.i, align 8
  br label %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit4.i.i

_ZNSt10filesystem7__cxx114pathC2EOS1_.exit4.i.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i, %bb.c
  %i.ab = phi i64 [ %i.x, %bb.c ], [ %.pre48.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.ad, align 8
  store ptr %i.u, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  store ptr null, ptr %i.af, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.u, align 8
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i32 0, ptr %9, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  store ptr %i.ai, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(40) %29, i8 noundef zeroext 0, ptr noundef null) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load <2 x ptr>, ptr %10, align 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit208.i.thread.i.i, label %bb.d

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit208.i.thread.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %"_ZZN4node2fsL13CpSyncCopyDirERKN2v820FunctionCallbackInfoINS1_5ValueEEEENK3$_0clENSt10filesystem7__cxx114pathESA_.exit.i.i"

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2EOS1_.exit4.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.i.i.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pr.i.i.i = load ptr, ptr %i.aj, align 8       ; 8 uses
end_hunk_0
