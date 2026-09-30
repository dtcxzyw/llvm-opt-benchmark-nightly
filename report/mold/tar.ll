Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/tar?download=true
inline.NumInlined: 271
inline.NumDeleted: 117
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mold9TarWriter6appendENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_E:bb.a
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18 ; 2 uses
  store ptr %i.j, ptr %15, align 8, !tbaa !13
  store i64 %i.e, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.l, ptr %i.k, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.o, ptr %16, align 8, !tbaa !14
  %i.p = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15   ; 8 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.h, label %._crit_edge.i.i2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = icmp slt i64 %i.r, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = add nuw i64 %i.r, 1                      ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3, !prof !16

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3: ; preds = %bb.j
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18 ; 2 uses
  store ptr %i.w, ptr %16, align 8, !tbaa !13
  store i64 %i.r, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i2

._crit_edge.i.i2:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i3 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.r, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  ]

bb.l:                                             ; preds = %._crit_edge.i.i2
  %i.y = load i8, ptr %i.p, align 1, !tbaa !17
  store i8 %i.y, ptr %i.x, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

bb.m:                                             ; preds = %._crit_edge.i.i2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4: ; preds = %._crit_edge.i.i2, %bb.l, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i64 %i.r, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  %.val = load ptr, ptr %15, align 8, !tbaa !13, !noalias !54
  %.val1 = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !54
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !56
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %.val, i64 noundef %.val1, ptr noundef nonnull @.str.4, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ab = load ptr, ptr %16, align 8, !tbaa !13, !noalias !58 ; 3 uses
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !15, !noalias !58 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15, !noalias !58 ; 5 uses
  %i.af = sub i64 9223372036854775807, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ac
  br i1 %i.ag, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19, !noalias !58
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  %i.ah = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !13, !noalias !58 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.al = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !17, !noalias !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.an = phi i64 [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.ah, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.ac, 1
  br i1 %cond.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = load i8, ptr %i.ab, align 1, !tbaa !17, !noalias !58
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !17, !noalias !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ab, i64 %i.ac, i1 false), !noalias !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ae, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ac), !noalias !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !15, !noalias !58
  %i.aq = load ptr, ptr %7, align 8, !tbaa !13, !noalias !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ah
  store i8 0, ptr %i.ar, align 1, !tbaa !17, !noalias !58
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !14, !alias.scope !57, !noalias !55
  %i.at = load ptr, ptr %7, align 8, !tbaa !13, !noalias !58 ; 3 uses
  %i.au = icmp eq ptr %i.at, %i.aj
  br i1 %i.au, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !15, !noalias !58 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ax, i1 false), !noalias !55
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.at, ptr %6, align 8, !tbaa !13, !alias.scope !57, !noalias !55
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !17, !noalias !58
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !17, !alias.scope !57, !noalias !55
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !15, !noalias !58
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.t
  %i.az = phi ptr [ %i.as, %bb.t ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ba = phi i64 [ %i.av, %bb.t ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !15, !alias.scope !57, !noalias !55
  store ptr %i.aj, ptr %7, align 8, !tbaa !13, !noalias !58
  store i64 0, ptr %i.ad, align 8, !tbaa !15, !noalias !58
  store i8 0, ptr %i.aj, align 8, !tbaa !17, !noalias !58
  call void @_ZN4mold10path_cleanB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.ba, ptr %i.az), !noalias !55
  %i.bc = load ptr, ptr %16, align 8, !tbaa !13, !noalias !55 ; 6 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !13, !noalias !55 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i
  %18 = icmp eq ptr %i.bc, %i.o
  br i1 %18, label %.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !15, !noalias !55 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  switch i64 %i.bh, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !17, !noalias !55
  store i8 %i.bj, ptr %i.bc, align 1, !tbaa !17, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %i.bh, i1 false), !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !15, !noalias !55 ; 2 uses
  store i64 %i.bk, ptr %i.z, align 8, !tbaa !15, !noalias !55
  %i.bl = load ptr, ptr %16, align 8, !tbaa !13, !noalias !55
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !17, !noalias !55
  %.pre.i5.i = load ptr, ptr %5, align 8, !tbaa !13, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  store ptr %i.bd, ptr %16, align 8, !tbaa !13, !noalias !55
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !tbaa !17, !noalias !55
  store <2 x i64> %i.bo, ptr %i.z, align 8, !tbaa !17, !noalias !55
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !55
  store ptr %i.bd, ptr %16, align 8, !tbaa !13, !noalias !55
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load <2 x i64>, ptr %i.bq, align 8, !tbaa !17, !noalias !55
  store <2 x i64> %i.br, ptr %i.z, align 8, !tbaa !17, !noalias !55
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bc, ptr %5, align 8, !tbaa !13, !noalias !55
  store i64 %i.bp, ptr %i.be, align 8, !tbaa !17, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.be, ptr %5, align 8, !tbaa !13, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bs = phi ptr [ %i.bc, %bb.x ], [ %i.be, %bb.y ], [ %.pre.i5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !15, !noalias !55
  store i8 0, ptr %i.bs, align 1, !tbaa !17, !noalias !55
  %i.bu = load ptr, ptr %5, align 8, !tbaa !13, !noalias !55 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !17, !noalias !55
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #17, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  %i.bz = load ptr, ptr %6, align 8, !tbaa !13, !noalias !55 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.as
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !17, !noalias !55
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #17, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.cd = load ptr, ptr %7, align 8, !tbaa !13, !noalias !55 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.aj
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.cf = load i64, ptr %i.aj, align 8, !tbaa !17, !noalias !55
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #17, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !55
  %i.ch = load i64, ptr %i.z, align 8, !tbaa !15, !noalias !55
  %i.ci = add i64 %i.ch, 7                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !55
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.cj = call i64 @llvm.abs.i64(i64 %i.ci, i1 false) ; 5 uses
  %i.ck = icmp ult i64 %i.cj, 10
  br i1 %i.ck, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, %bb.ae
  %.029.i.i.i = phi i32 [ %i.cs, %bb.ae ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.cr, %bb.ae ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ] ; 5 uses
  %i.cl = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.cn = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cp = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cq = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cr = udiv i64 %.02328.i.i.i, 10000
  %i.cs = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.ct = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.ct, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i
  %.022.i.i.i = phi i32 [ %i.cq, %bb.ad ], [ %i.cm, %bb.z ], [ %i.co, %bb.ab ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %i.cs, %bb.ae ] ; 2 uses
  %.lobit.i.i = lshr i64 %i.ci, 63                ; 2 uses
  %i.cu = trunc nuw nsw i64 %.lobit.i.i to i32
  %i.cv = add i32 %.022.i.i.i, %i.cu              ; 3 uses
  %i.cw = zext i32 %i.cv to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.cx, ptr %8, align 8, !tbaa !14, !alias.scope !59, !noalias !55
  %i.cy = icmp ugt i32 %i.cv, 15
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.cz = add nuw nsw i64 %i.cw, 1
  %i.da = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #18, !noalias !55 ; 2 uses
  store ptr %i.da, ptr %8, align 8, !tbaa !13, !alias.scope !59, !noalias !55
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !17, !alias.scope !59, !noalias !55
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  switch i32 %i.cv, label %bb.ai [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  store i8 45, ptr %i.cx, align 8, !tbaa !17, !alias.scope !59, !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.db = phi ptr [ %i.da, %bb.af ], [ %i.cx, %bb.ag ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.db, i8 45, i64 %i.cw, i1 false), !noalias !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.dc = phi ptr [ %i.cx, %bb.ag ], [ %i.cx, %bb.ah ], [ %i.db, %bb.ai ]
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.cw, ptr %i.dd, align 8, !tbaa !15, !alias.scope !59, !noalias !55
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cw
  store i8 0, ptr %i.de, align 1, !tbaa !17, !noalias !55
  %i.df = load ptr, ptr %8, align 8, !tbaa !13, !alias.scope !59, !noalias !55
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.lobit.i.i ; 4 uses
  %i.dh = icmp ugt i64 %i.cj, 99
  br i1 %i.dh, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i16.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %i.di = add i32 %.022.i.i.i, -1
  br label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph.i11.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.dl, %.lr.ph.i11.i.i ], [ %i.cj, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.dv, %.lr.ph.i11.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.dj = urem i64 %.020.i.i.i, 100
  %i.dk = shl nuw nsw i64 %i.dj, 1
  %i.dl = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !17, !noalias !61
  %i.dp = zext i32 %.01819.i.i.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dp
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !17, !noalias !55
  %i.dr = load i8, ptr %i.dm, align 2, !tbaa !17, !noalias !61
  %i.ds = add i32 %.01819.i.i.i, -1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dt
  store i8 %i.dr, ptr %i.du, align 1, !tbaa !17, !noalias !55
  %i.dv = add i32 %.01819.i.i.i, -2
  %i.dw = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.dw, label %.lr.ph.i11.i.i, label %._crit_edge.i.i16.i, !llvm.loop !41

._crit_edge.i.i16.i:                              ; preds = %.lr.ph.i11.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %.0.lcssa.i.i.i = phi i64 [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ], [ %i.dl, %.lr.ph.i11.i.i ] ; 3 uses
  %i.dx = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i16.i
  %i.dy = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.dz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17, !noalias !61
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !17, !noalias !55
  %i.ed = load i8, ptr %i.dz, align 2, !tbaa !17, !noalias !61
  br label %_ZNSt7__cxx119to_stringEl.exit.i

bb.ak:                                            ; preds = %._crit_edge.i.i16.i
  %i.ee = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.ef = or disjoint i8 %i.ee, 48
  br label %_ZNSt7__cxx119to_stringEl.exit.i

_ZNSt7__cxx119to_stringEl.exit.i:                 ; preds = %bb.ak, %bb.aj
  %storemerge.i.i.i = phi i8 [ %i.ef, %bb.ak ], [ %i.ed, %bb.aj ]
  store i8 %storemerge.i.i.i, ptr %i.dg, align 1, !tbaa !17, !noalias !55
  %i.eg = load i64, ptr %i.dd, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %i.eh = add i64 %i.eg, %i.ci                    ; 2 uses
end_hunk_0
