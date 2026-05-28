inline.NumInlined: 6810
inline.NumDeleted: 3465
begin_hunk_0_@_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_:bb.a
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %5, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %4, align 1, !tbaa !23
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !58, !noalias !762 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !155, !alias.scope !762
  %i.k = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !762
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !762
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = load ptr, ptr %6, align 8, !tbaa !18     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %7, align 8, !tbaa !18     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !155  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %7, %6
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !383

bb.h:                                             ; preds = %bb.g
  switch i64 %i.t, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.p, align 1, !tbaa !23
  store i8 %i.v, ptr %i.m, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.w = load i64, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !155
  %i.y = load ptr, ptr %6, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.p, ptr %6, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !23
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !23
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !23
  store ptr %i.p, ptr %6, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !23
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !23
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %7, align 8, !tbaa !18
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ah = phi ptr [ %i.m, %bb.k ], [ %i.q, %bb.l ], [ %i.p, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !155
  store i8 0, ptr %i.ah, align 1, !tbaa !23
  %i.aj = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh9StringRef3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !333    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !155
  store i8 0, ptr %i.c, align 8, !tbaa !23
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !334  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !58
  %i.h = icmp ugt i64 %i.f, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !18
  %i.j = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.j, ptr %i.g, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !23
  store i8 %i.l, ptr %i.k, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.b, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !155
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !178
  %i.k = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !155  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.m, ptr %i.a, align 8, !tbaa !58
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !18
  %i.p = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.p, ptr %i.j, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !23
  store i8 %i.r, ptr %i.q, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.s = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !155
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !178, !alias.scope !765, !noalias !768
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !768, !noalias !765 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !155, !alias.scope !768, !noalias !765 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !770
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !765, !noalias !768
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !23, !alias.scope !768, !noalias !765
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !23, !alias.scope !765, !noalias !768
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !155, !alias.scope !768, !noalias !765
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !155, !alias.scope !765, !noalias !768
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !768, !noalias !765
  store i64 0, ptr %i.ag, align 8, !tbaa !155, !alias.scope !768, !noalias !765
  store i8 0, ptr %i.y, align 8, !tbaa !23, !alias.scope !768, !noalias !765
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !178, !alias.scope !772, !noalias !775
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !775, !noalias !772 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !155, !alias.scope !775, !noalias !772 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !777
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !772, !noalias !775
  %i.at = load i64, ptr %i.an, align 8, !tbaa !23, !alias.scope !775, !noalias !772
  store i64 %i.at, ptr %i.al, align 8, !tbaa !23, !alias.scope !772, !noalias !775
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !155, !alias.scope !775, !noalias !772
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !155, !alias.scope !772, !noalias !775
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !775, !noalias !772
  store i64 0, ptr %i.av, align 8, !tbaa !155, !alias.scope !775, !noalias !772
  store i8 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !775, !noalias !772
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.h
  store ptr %13, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #6

declare void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev(ptr noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN2cl8OptLevelEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorINS_2cl6parserIN2cl8OptLevelEE10OptionInfoELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZN4llvh11SmallVectorINS_2cl6parserIN2cl8OptLevelEE10OptionInfoELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_2cl6parserIN2cl8OptLevelEE10OptionInfoELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE16handleOccurrenceEjNS_9StringRefES7_(ptr noundef nonnull align 8 dereferenceable(592) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = call noundef zeroext i1 @_ZN4llvh2cl6parserIN2cl8OptLevelEE5parseERNS0_6OptionENS_9StringRefES7_RS3_(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.a, align 4, !tbaa !63
  store i32 %i.e, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !431
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !61, !align !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %.not.i = icmp eq i64 %i.d, 0
  %..i = select i1 %.not.i, i32 3, i32 2
  ret i32 %..i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN2cl8OptLevelEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #26, !inline_history !778
  br label %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i

_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i:    ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i
  tail call void @free(ptr noundef %i.h) #26, !inline_history !779
  br label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED2Ev.exit

_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED2Ev.exit: ; preds = %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i64 @_ZNK4llvh2cl19generic_parser_base14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNK4llvh2cl19generic_parser_base15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvh::cl::OptionValue", align 8 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 2 uses
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i8, ptr %i.a, align 4, !tbaa !64, !range !179, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, %.pre
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN2cl8OptLevelEEE, i64 16), ptr %3, align 8, !tbaa !7
  store i8 1, ptr %i.j, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.pre, ptr %i.k, align 8, !tbaa !50
  call void @_ZNK4llvh2cl19generic_parser_base22printGenericOptionDiffERKNS0_6OptionERKNS0_18GenericOptionValueES7_m(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i8, ptr %i.a, align 4, !tbaa !64, !range !179, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14setDefaultImplIS3_vEEvv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  store i32 %i.f, ptr %i.d, align 8, !tbaa !43
  br label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14setDefaultImplIS3_vEEvv.exit

_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14setDefaultImplIS3_vEEvv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66, !nonnull !61, !align !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334
  %.not5.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i, label %bb.b, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !780 ; 2 uses
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:bb.a
  ret void
}

declare void @_ZNK6hermes18SourceMapGenerator12outputAsJSONERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS4_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1216 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %.pre1 = load ptr, ptr %0, align 8, !tbaa !1213 ; 3 uses
  br i1 %i.c, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %.pre1, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.i, %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i ], [ %.pre1, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i32, ptr %.010.i, align 4, !tbaa !3
  %switch.i = icmp ugt i32 %i.f, -3
  br i1 %switch.i, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !375  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.h) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 376) #25
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i, %bb.b, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.e
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !1225

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1213
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit ], [ %.pre1, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.j) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6hermes6ModuleD1Ev(ptr noundef nonnull align 8 dereferenceable(1033)) unnamed_addr #12

declare void @_ZN4llvh4SHA14initEv(ptr noundef nonnull align 4 dereferenceable(112)) local_unnamed_addr #6

declare void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112), ptr, i64) local_unnamed_addr #6

declare void @_ZN6hermes6parser8JSParserC1ERNS_7ContextESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(656), ptr noundef) unnamed_addr #6

declare { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

declare void @_ZN4llvh14FoldingSetBase6anchorEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh10FoldingSetIN6hermes13LiteralNumberEE14GetNodeProfileEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1226
  tail call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %i.b) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh10FoldingSetIN6hermes13LiteralNumberEE10NodeEqualsEPNS_14FoldingSetBase4NodeERKNS_16FoldingSetNodeIDEjRS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1226
  tail call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %4, i64 noundef %i.b) #26
  %i.c = tail call noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh10FoldingSetIN6hermes13LiteralNumberEE15ComputeNodeHashEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1226
  tail call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %i.b) #26
  %i.c = tail call noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i32 %i.c
}

declare void @_ZN4llvh14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #6

declare void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

declare noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh10FoldingSetIN6hermes13LiteralBigIntEE14GetNodeProfileEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %i.b) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh10FoldingSetIN6hermes13LiteralBigIntEE10NodeEqualsEPNS_14FoldingSetBase4NodeERKNS_16FoldingSetNodeIDEjRS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %i.b) #26
  %i.c = tail call noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh10FoldingSetIN6hermes13LiteralBigIntEE15ComputeNodeHashEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %i.b) #26
  %i.c = tail call noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i32 %i.c
}

declare void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh10FoldingSetIN6hermes13LiteralStringEE14GetNodeProfileEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !1230
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %.sroa.0.0.copyload.i.i) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh10FoldingSetIN6hermes13LiteralStringEE10NodeEqualsEPNS_14FoldingSetBase4NodeERKNS_16FoldingSetNodeIDEjRS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1230
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %.sroa.0.0.copyload.i.i.i) #26
  %i.b = tail call noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh10FoldingSetIN6hermes13LiteralStringEE15ComputeNodeHashEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1230
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %.sroa.0.0.copyload.i.i.i) #26
  %i.b = tail call noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i32 %i.b
}

declare void @_ZN4llvh3sys4path15remove_filenameERNS_15SmallVectorImplIcEENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh3sys4path19replace_path_prefixERNS_15SmallVectorImplIcEERKNS_9StringRefES7_NS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh12MemoryBuffer16getMemBufferCopyENS_9StringRefERKNS_5TwineE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.173") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #6

declare void @_ZN6hermes22generateIRForCJSModuleEPNS_6ESTree22FunctionExpressionNodeEjjN4llvh9StringRefEPNS_6ModuleEPNS_8FunctionERKSt6vectorIPNS0_11ProgramNodeESaISB_EE(ptr noundef, i32 noundef, i32 noundef, ptr, i64, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i.a = icmp eq i64 %i.l, 0
  br i1 %.not.i.a, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %3

3:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %4 = shl nuw nsw i64 %i.l, 5
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %3
  %6 = phi ptr [ %5, %3 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.n ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !178
  %9 = load ptr, ptr %2, align 8, !tbaa !18       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !155  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %9, ptr %7, align 8, !tbaa !18
  %i.s = load i64, ptr %10, align 8, !tbaa !23
  store i64 %i.s, ptr %8, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !155
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !155
  store ptr %10, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %i.u, align 8, !tbaa !155
  store i8 0, ptr %10, align 8, !tbaa !23
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !178, !alias.scope !1231, !noalias !1234
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !1234, !noalias !1231 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !155, !alias.scope !1234, !noalias !1231 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !1236
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !1231, !noalias !1234
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !23, !alias.scope !1234, !noalias !1231
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !23, !alias.scope !1231, !noalias !1234
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !155, !alias.scope !1234, !noalias !1231
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !155, !alias.scope !1231, !noalias !1234
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !1234, !noalias !1231
  store i64 0, ptr %i.ag, align 8, !tbaa !155, !alias.scope !1234, !noalias !1231
  store i8 0, ptr %i.y, align 8, !tbaa !23, !alias.scope !1234, !noalias !1231
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !178, !alias.scope !1237, !noalias !1240
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !1240, !noalias !1237 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !155, !alias.scope !1240, !noalias !1237 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1242
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !1237, !noalias !1240
  %i.at = load i64, ptr %i.an, align 8, !tbaa !23, !alias.scope !1240, !noalias !1237
  store i64 %i.at, ptr %i.al, align 8, !tbaa !23, !alias.scope !1237, !noalias !1240
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !155, !alias.scope !1240, !noalias !1237
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.au = phi i64 [ %i.aq, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !155, !alias.scope !1237, !noalias !1240
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !1240, !noalias !1237
  store i64 0, ptr %i.av, align 8, !tbaa !155, !alias.scope !1240, !noalias !1237
  store i8 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !1240, !noalias !1237
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %6, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !639  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !636    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !639
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #30 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !636
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !682
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !683
  %i.w = load i32, ptr %i.a, align 8, !tbaa !639  ; 2 uses
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %.idx.i, i1 false), !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit
  %i.y = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.y, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !682
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !683
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !639 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i, %bb.f
  %i.ae = phi i32 [ %i.bb, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i ] ; 2 uses
  %.019.i = phi ptr [ %i.bc, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i ] ; 2 uses
  %i.af = load i32, ptr %.019.i, align 4, !tbaa !3 ; 5 uses
  %switch.i = icmp ugt i32 %i.af, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !639 ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = mul i32 %i.af, 37
  %i.aj = add i32 %i.ag, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.aj, %i.ai            ; 2 uses
  %i.ak = zext i32 %.02744.i.i.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ak ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %i.an = icmp eq i32 %i.af, %i.am
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !640

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.ao = phi i32 [ %i.ay, %bb.e ], [ %i.am, %bb.c ] ; 2 uses
  %i.ap = phi ptr [ %i.ax, %bb.e ], [ %i.al, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.au, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !65

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.ar = select i1 %.not.i.i.i, ptr %i.ap, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = icmp eq i32 %i.ao, -2
  %i.at = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ap, ptr %.02945.i.i.i
  %i.au = add i32 %.02546.i.i.i, 1
  %i.av = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.av, %i.aj              ; 2 uses
  %i.aw = zext i32 %.027.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aw ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = icmp eq i32 %i.af, %i.ay
  br i1 %i.az, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !641, !llvm.loop !642

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.al, %bb.c ], [ %i.ax, %bb.e ]
  store i32 %i.af, ptr %.sink.i.i.i, align 4, !tbaa !3
  %i.ba = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.aa, align 8, !tbaa !682
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, %.lr.ph.i
  %i.bb = phi i32 [ %i.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i ], [ %i.ae, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i, !llvm.loop !1243

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit: ; preds = %.lr.ph.preheader.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1076 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1079 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !690, !range !179, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !570  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !442
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !445
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !1080
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !1080
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
end_hunk_1
