Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ToolChain?download=true
inline.NumInlined: 4602
inline.NumDeleted: 1691
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK5clang6driver9ToolChain17getCompilerRTPathB5cxx11Ev:bb.a
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !153
  store ptr @.str.28, ptr %11, align 8, !tbaa !43
  store i8 3, ptr %i.bg, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.bi = load ptr, ptr %1, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 360
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call { ptr, i64 } %i.bk(ptr noundef nonnull align 8 dereferenceable(2568) %1) #30 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 5, ptr %i.bo, align 8, !tbaa !152
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.bp, align 1, !tbaa !153
  store ptr %i.bm, ptr %12, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bn, ptr %i.bq, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i16 257, ptr %i.bs, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(34) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.i, %bb.h
  %.pr = load i64, ptr %i.i, align 8, !tbaa !157, !noalias !613
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %_ZN4llvm11SmallStringILj128EEpLENS_9StringRefE.exit
  %i.bt = phi i64 [ %.pr, %thread-pre-split ], [ %i.ax, %_ZN4llvm11SmallStringILj128EEpLENS_9StringRefE.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.bu = load ptr, ptr %2, align 8, !tbaa !156, !noalias !613 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !37, !alias.scope !613
  %i.bw = icmp eq ptr %i.bu, null
  %i.bx = icmp ne i64 %i.bt, 0
  %or.cond.i.i = and i1 %i.bx, %i.bw
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !613
  store i64 %i.bt, ptr %i.a, align 8, !tbaa !42, !noalias !613
  %i.by = icmp ugt i64 %i.bt, 15
  br i1 %i.by, label %bb.m, label %._crit_edge.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !40, !alias.scope !613
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !613
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !43, !alias.scope !613
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.m, %bb.l
  %i.cb = phi ptr [ %i.bz, %bb.m ], [ %i.bv, %bb.l ] ; 2 uses
  switch i64 %i.bt, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNK4llvm11SmallStringILj128EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !43
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !43
  br label %_ZNK4llvm11SmallStringILj128EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.bu, i64 %i.bt, i1 false)
  br label %_ZNK4llvm11SmallStringILj128EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvm11SmallStringILj128EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.n, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !613 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !41, !alias.scope !613
  %i.cf = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !613
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !613
  %i.ch = load ptr, ptr %2, align 8, !tbaa !156   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.h
  br i1 %i.ci, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm11SmallStringILj128EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  call void @free(ptr noundef %i.ch) #30
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNK4llvm11SmallStringILj128EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6driver9ToolChain21getCompilerRTBasenameB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr %3, i64 %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr %3, i64 %4, i32 noundef %5, i1 noundef zeroext false) #30
  %i.e = load ptr, ptr %6, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = call { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr %i.e, i64 %i.g, i32 noundef 0) #30 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %.not.i = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !37, !alias.scope !616
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !41, !alias.scope !616
  store i8 0, ptr %i.k, align 8, !tbaa !43, !alias.scope !616
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !616
  store i64 %i.j, ptr %i.a, align 8, !tbaa !42, !noalias !616
  %i.m = icmp ugt i64 %i.j, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !40, !alias.scope !616
  %i.o = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !616
  store i64 %i.o, ptr %i.k, align 8, !tbaa !43, !alias.scope !616
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !43
  store i8 %i.q, ptr %i.p, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !616 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !41, !alias.scope !616
  %i.t = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !616
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !616
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.v = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !43
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void
}

declare { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6driver9ToolChain23buildCompilerRTBasenameB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEbb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 2 uses
  %i.d = icmp eq i32 %i.c, 15                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %.fr = freeze i32 %i.f                          ; 5 uses
  %i.g = icmp eq i32 %.fr, 28
  %i.h = icmp eq i32 %.fr, 0
  %i.i = or i1 %i.g, %i.h
  %or.cond = and i1 %i.d, %i.i
  br i1 %or.cond, label %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %.fr, 29
  %i.k = and i1 %i.d, %i.j
  br label %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread

_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ true, %bb.a ], [ %i.k, %bb.b ]  ; 3 uses
  switch i32 %5, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %i.m = select i1 %i.l, ptr @.str.29, ptr @.str.30
  br label %bb.h

bb.d:                                             ; preds = %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %i.n = select i1 %i.l, ptr @.str.31, ptr @.str.32
  br label %bb.h

bb.e:                                             ; preds = %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %switch.selectcmp.case1 = icmp eq i32 %.fr, 30
  %switch.selectcmp.case2 = icmp eq i32 %.fr, 1
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.o = select i1 %switch.selectcmp, ptr @.str.33, ptr @.str.31
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.c, 19
  %.str.32..str.34 = select i1 %i.p, ptr @.str.32, ptr @.str.34
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.c, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %.0 = phi ptr [ undef, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %.str.32..str.34, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.r, align 8, !tbaa !41
  store i8 0, ptr %i.q, align 8, !tbaa !43
  br i1 %6, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %1, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 536
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(2568) %1) #30, !inline_history !617
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #30 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  br label %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !127 ; 2 uses
  switch i32 %i.aa, label %.thread.i [
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 40, label %bb.m
    i32 41, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ab = call noundef i32 @_ZN5clang6driver5tools3arm14getARMFloatABIERKNS0_9ToolChainERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) #30
  %i.ac = icmp ne i32 %i.ab, 3
  %.not13.i = or i1 %i.d, %i.ac                   ; 2 uses
  %i.ad = select i1 %.not13.i, ptr @.str.257, ptr @.str.256
  %i.ae = select i1 %.not13.i, i64 3, i64 5
  br label %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit

bb.m:                                             ; preds = %bb.k
  %i.af = load i32, ptr %i.e, align 8, !tbaa !306
  %i.ag = icmp eq i32 %i.af, 17
  br i1 %i.ag, label %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit, label %.thread.i

bb.n:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !306
  switch i32 %i.ah, label %.thread.i [
    i32 25, label %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit
    i32 12, label %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit
  ]

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.k
  %i.ai = call { ptr, i64 } @_ZN4llvm6Triple15getArchTypeNameENS0_8ArchTypeE(i32 noundef %i.aa) #30 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  br label %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit

_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit: ; preds = %bb.j, %bb.l, %bb.m, %bb.n, %bb.n, %.thread.i
  %.sroa.6.0.i = phi i64 [ %i.y, %bb.j ], [ %i.ae, %bb.l ], [ %i.ak, %.thread.i ], [ 4, %bb.m ], [ 3, %bb.n ], [ 3, %bb.n ]
  %.sroa.0.0.i = phi ptr [ %i.x, %bb.j ], [ %i.ad, %bb.l ], [ %i.aj, %.thread.i ], [ @.str.258, %bb.m ], [ @.str.259, %bb.n ], [ @.str.259, %bb.n ]
  %17 = load i32, ptr %i.e, align 8, !tbaa !306
  %i.al = icmp eq i32 %17, 17
  %18 = select i1 %i.al, ptr @.str.35, ptr @.str.2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 3, ptr %i.am, align 8, !tbaa !152, !alias.scope !640
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 5, ptr %i.an, align 1, !tbaa !153, !alias.scope !640
  store ptr @.str.36, ptr %11, align 8, !tbaa !43, !alias.scope !640
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.sroa.0.0.i, ptr %i.ao, align 8, !tbaa !43, !alias.scope !640
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %.sroa.6.0.i, ptr %i.ap, align 8, !tbaa !43, !alias.scope !640
  %19 = load i8, ptr %18, align 1, !tbaa !43
  %.not.i = icmp eq i8 %19, 0
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !641
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.p:                                             ; preds = %_ZL27getArchNameForCompilerRTLibRKN5clang6driver9ToolChainERKN4llvm3opt7ArgListE.exit
  store ptr %11, ptr %10, align 8, !alias.scope !642
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %18, ptr %i.aq, align 8, !alias.scope !642
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ar, align 8, !tbaa !152, !alias.scope !642
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 3, ptr %i.as, align 1, !tbaa !153, !alias.scope !642
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.o, %bb.p
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10) #30
  %i.at = load ptr, ptr %8, align 8, !tbaa !40    ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.q
  %i.av = load ptr, ptr %9, align 8, !tbaa !40    ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ax = icmp eq ptr %i.av, %i.aw                ; 2 uses
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  br i1 %i.ax, label %bb.q, label %.thread.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  br i1 %i.ax, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  switch i64 %i.az, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !43
  store i8 %i.bb, ptr %i.at, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.av, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !41 ; 2 uses
  store i64 %i.bc, ptr %i.r, align 8, !tbaa !41
  %i.bd = load ptr, ptr %8, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !43
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i23:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.av, ptr %8, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !tbaa !43
  store <2 x i64> %i.bg, ptr %i.r, align 8, !tbaa !43
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bh = load i64, ptr %i.q, align 8, !tbaa !43
  store ptr %i.av, ptr %8, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !43
  store <2 x i64> %i.bj, ptr %i.r, align 8, !tbaa !43
  %.not.i22 = icmp eq ptr %i.at, null
  br i1 %.not.i22, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %9, align 8, !tbaa !40
  store i64 %i.bh, ptr %i.aw, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i23
  store ptr %i.aw, ptr %9, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bk = phi ptr [ %i.at, %bb.t ], [ %i.aw, %bb.u ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !41
  store i8 0, ptr %i.bk, align 1, !tbaa !43
  %i.bm = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !43
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.br = icmp eq i32 %5, 0
  %i.bs = or i1 %i.br, %i.l
  %20 = select i1 %i.bs, ptr @.str.2, ptr @.str.28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %.str.37..str.38 = select i1 %7, ptr @.str.37, ptr @.str.38
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bt, ptr %12, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bt, ptr noundef nonnull align 1 dereferenceable(9) %.str.37..str.38, i64 9, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.bu, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 25
  store i8 0, ptr %i.bv, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %.not.i24 = icmp eq i8 %21, 0
  br i1 %.not.i24, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  store ptr %12, ptr %16, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit71

bb.w:                                             ; preds = %._crit_edge.i.i
  store ptr %20, ptr %16, align 8, !alias.scope !643
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %12, ptr %i.bw, align 8, !alias.scope !643
  br label %_ZN4llvmplERKNS_5TwineES2_.exit71

_ZN4llvmplERKNS_5TwineES2_.exit71:                ; preds = %bb.v, %bb.w
  %.sink145 = phi i8 [ 4, %bb.v ], [ 3, %bb.w ]
  %.sink = phi i8 [ 1, %bb.v ], [ 4, %bb.w ]
  %.sroa.05.0.i.i46 = phi ptr [ %12, %bb.v ], [ %16, %bb.w ]
  %.014.i.i45 = phi i8 [ 4, %bb.v ], [ 2, %bb.w ]
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 %.sink145, ptr %.sroa.7114.0..sroa_idx, align 8, !tbaa !307
  %.sroa.9115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 %.sink, ptr %.sroa.9115.0..sroa_idx, align 1, !tbaa !307
  store ptr %.sroa.05.0.i.i46, ptr %15, align 8, !alias.scope !644
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %3, ptr %i.bx, align 8, !alias.scope !644
  %.sroa.2.0..sroa_idx.i.i.i55 = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i.i.i55, align 8, !tbaa !43, !alias.scope !644
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 %.014.i.i45, ptr %i.by, align 8, !tbaa !152, !alias.scope !644
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 5, ptr %i.bz, align 1, !tbaa !153, !alias.scope !644
  store ptr %15, ptr %14, align 8, !alias.scope !645
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %8, ptr %i.ca, align 8, !alias.scope !645
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.cb, align 8, !tbaa !152, !alias.scope !645
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 4, ptr %i.cc, align 1, !tbaa !153, !alias.scope !645
  %i.cd = load i8, ptr %.0, align 1, !tbaa !43
  %.not.i72 = icmp eq i8 %i.cd, 0
  br i1 %.not.i72, label %bb.x, label %_ZN4llvm5TwineC2EPKc.exit74

bb.x:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !641
  br label %_ZN4llvmplERKNS_5TwineES2_.exit89

_ZN4llvm5TwineC2EPKc.exit74:                      ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit71
  store ptr %14, ptr %13, align 8, !alias.scope !646
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.0, ptr %i.ce, align 8, !alias.scope !646
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cf, align 8, !tbaa !152, !alias.scope !646
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cg, align 1, !tbaa !153, !alias.scope !646
  br label %_ZN4llvmplERKNS_5TwineES2_.exit89

_ZN4llvmplERKNS_5TwineES2_.exit89:                ; preds = %bb.x, %_ZN4llvm5TwineC2EPKc.exit74
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ch = load ptr, ptr %12, align 8, !tbaa !40   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bt
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit89
  %i.cj = load i64, ptr %i.bt, align 8, !tbaa !43
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.cl = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.q
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !43
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6driver9ToolChain13getCompilerRTB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallString.123", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallString.123", align 8 ; 13 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.llvm::SmallString.123", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.d = load ptr, ptr %1, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr %3, i64 %4, i32 noundef %5, i1 noundef zeroext false, i1 noundef zeroext %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 0, ptr %i.h, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 128, ptr %i.i, align 8, !tbaa !158
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = shl nuw nsw i64 %i.n, 5
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %.critedge25, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 33
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.053, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.o
  br i1 %.not, label %.critedge25, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.053 = phi ptr [ %i.k, %.lr.ph ], [ %i.ad, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ae = load ptr, ptr %.053, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %.053, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !41 ; 5 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !156
  store i64 0, ptr %i.q, align 8, !tbaa !157
  store i64 128, ptr %i.r, align 8, !tbaa !158
  %i.ah = icmp ugt i64 %i.ag, 128
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %9, ptr noundef nonnull %i.p, i64 noundef %i.ag, i64 noundef 1) #30
  %.pre8.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !157
  %.pre = load ptr, ptr %9, align 8, !tbaa !156
  br label %bb.d

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp samesign eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.p, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !157
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %bb.d
  %i.ak = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.d ]
  %i.al = add i64 %i.ak, %i.ag
  store i64 %i.al, ptr %i.q, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i8 4, ptr %i.s, align 8, !tbaa !152
  store i8 1, ptr %i.t, align 1, !tbaa !153
  store ptr %7, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store i16 257, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i16 257, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store i16 257, ptr %i.w, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !146, !nonnull !144, !align !154
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149 ; 2 uses
end_hunk_0
