Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Display?download=true
inline.NumInlined: 539
inline.NumDeleted: 220
begin_hunk_0_@_ZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_:bb.a
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 11 uses
  %5 = alloca %class.anon, align 8                ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon, align 8                ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !14
  %i.j = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !19
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !17
  %i.o = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  %i.t = load ptr, ptr %6, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !19
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !17
  %i.y = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.y, ptr %i.v, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %5, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !17  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !18 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !14, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !36
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !19, !noalias !36
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.w, !noalias !36 ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !17, !noalias !36
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !36
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !20, !noalias !36
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !20, !noalias !36
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !20, !noalias !36
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !36
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !18, !noalias !36
  %i.an = load ptr, ptr %3, align 8, !tbaa !17, !noalias !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !20, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !36
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !14, !alias.scope !36
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17, !noalias !36 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !18, !noalias !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !36
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !19, !noalias !36
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !17, !alias.scope !36
  %i.au = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !36
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !20, !alias.scope !36
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !20
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !36 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18, !alias.scope !36
  %i.az = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !36
  %i.bb = load ptr, ptr %3, align 8, !tbaa !17, !noalias !36 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !36
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !17, !noalias !36 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.af
  br i1 %i.bh, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %bb.k
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !36
  %7 = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %7) #17
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val8.i = load ptr, ptr %4, align 8, !tbaa !17 ; 2 uses
  %.val9.i = load i64, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %.val9.i, ptr %i.a, align 8, !tbaa !19
  %i.bk = icmp ugt i64 %.val9.i, 15
  br i1 %i.bk, label %.noexc.i.i.i.i12.i, label %._crit_edge.i.i.i.i.i10.i

.noexc.i.i.i.i12.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13.i unwind label %bb.x ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i.i.i.i12.i
  store ptr %i.bl, ptr %2, align 8, !tbaa !17
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i10.i

._crit_edge.i.i.i.i.i10.i:                        ; preds = %.noexc13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bn = phi ptr [ %i.bl, %.noexc13.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ] ; 2 uses
  switch i64 %.val9.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i"
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  %i.bo = load i8, ptr %.val8.i, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i"

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr readonly align 1 %.val8.i, i64 %.val9.i, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i": ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i10.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !18
  %i.br = load ptr, ptr %2, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bt = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.bu = ptrtoint ptr %i.f to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 88
  %i.bx = ashr i64 %i.bw, 2                       ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i", %bb.q
  %.057.i.i.i = phi i64 [ %i.cl, %bb.q ], [ %i.bx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i" ] ; 2 uses
  %.sroa.037.056.i.i.i = phi ptr [ %i.ck, %bb.q ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i" ] ; 9 uses
  %.val21.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i.i.i.i = load ptr, ptr %.sroa.037.056.i.i.i, align 8, !tbaa !17
  %i.bz = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val21.i.i.i, ptr noundef %.val1.i.i.i.i)
          to label %.noexc.i11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i11.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.noexc.i11.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 88
  %.val20.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i22.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cc = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val20.i.i.i, ptr noundef %.val1.i22.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.n
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", label %bb.o

bb.o:                                             ; preds = %.noexc4.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 176
  %.val19.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i23.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cf = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val19.i.i.i, ptr noundef %.val1.i23.i.i.i)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %bb.o
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", label %bb.p

bb.p:                                             ; preds = %.noexc5.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 264
  %.val18.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i24.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.ci = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val18.i.i.i, ptr noundef %.val1.i24.i.i.i)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i:                                      ; preds = %bb.p
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", label %bb.q

bb.q:                                             ; preds = %.noexc6.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 352 ; 3 uses
  %i.cl = add nsw i64 %.057.i.i.i, -1
  %i.cm = icmp sgt i64 %.057.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !35

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.ck to i64
  %.pre62.i.i.i = sub i64 %i.bt, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.ck, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i" ] ; 5 uses
  %i.cn = sdiv exact i64 %.pre-phi63.i.i.i, 88
  switch i64 %i.cn, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !17
  %i.co = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 88
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cq, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !17
  %i.cr = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i:                                      ; preds = %bb.t
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 88
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.ct, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !17
  %i.cu = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cv = icmp eq i32 %i.cu, 0
  %spec.select.i.i.i = select i1 %i.cv, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 264
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44": ; preds = %.noexc5.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 176
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46": ; preds = %.noexc4.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 88
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46" ], [ %i.cw, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.cz = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bj
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"
  %i.db = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i, %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bj
  br i1 %i.de, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.df = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dh = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ap
  br i1 %i.di, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dl = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.v
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"
  %i.dn = load i64, ptr %i.v, align 8, !tbaa !20
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %lpad.loopexit.split-lp57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ap
  br i1 %i.ds, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a: ; preds = %.body14.i
  %8 = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dt = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dt) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a ], [ %i.dp, %bb.w ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.v
  br i1 %i.dv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dw = load i64, ptr %i.v, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dy = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.i
  br i1 %i.dz, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ea = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ed = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.i
  br i1 %i.ee, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.ef = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.21", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.4, align 8              ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.21", align 8 ; 11 uses
  %5 = alloca %class.anon.4, align 8              ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.4, align 8              ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !14
  %i.j = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !19
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !17
  %i.o = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  %i.t = load ptr, ptr %6, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !19
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !17
  %i.y = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.y, ptr %i.v, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %5, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !17  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !18 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !14, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !40
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !19, !noalias !40
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.w, !noalias !40 ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !17, !noalias !40
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !40
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !20, !noalias !40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !20, !noalias !40
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !20, !noalias !40
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !40
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !18, !noalias !40
  %i.an = load ptr, ptr %3, align 8, !tbaa !17, !noalias !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !20, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !40
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !14, !alias.scope !40
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17, !noalias !40 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !18, !noalias !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !40
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !19, !noalias !40
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !17, !alias.scope !40
  %i.au = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !40
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !20, !alias.scope !40
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !20
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18, !alias.scope !40
  %i.az = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !40
  %i.bb = load ptr, ptr %3, align 8, !tbaa !17, !noalias !40 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !40
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !17, !noalias !40 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.af
  br i1 %i.bh, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %bb.k
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !40
  %7 = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %7) #17
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val8.i = load ptr, ptr %4, align 8, !tbaa !17 ; 2 uses
  %.val9.i = load i64, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %.val9.i, ptr %i.a, align 8, !tbaa !19
  %i.bk = icmp ugt i64 %.val9.i, 15
  br i1 %i.bk, label %.noexc.i.i.i.i12.i, label %._crit_edge.i.i.i.i.i10.i

.noexc.i.i.i.i12.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13.i unwind label %bb.x ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i.i.i.i12.i
  store ptr %i.bl, ptr %2, align 8, !tbaa !17
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i10.i

._crit_edge.i.i.i.i.i10.i:                        ; preds = %.noexc13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bn = phi ptr [ %i.bl, %.noexc13.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ] ; 2 uses
  switch i64 %.val9.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i"
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  %i.bo = load i8, ptr %.val8.i, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i"

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr readonly align 1 %.val8.i, i64 %.val9.i, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i": ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i10.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !18
  %i.br = load ptr, ptr %2, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bt = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.bu = ptrtoint ptr %i.f to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 88
  %i.bx = ashr i64 %i.bw, 2                       ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i", %bb.q
  %.057.i.i.i = phi i64 [ %i.cl, %bb.q ], [ %i.bx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i" ] ; 2 uses
  %.sroa.037.056.i.i.i = phi ptr [ %i.ck, %bb.q ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i" ] ; 9 uses
  %.val21.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i.i.i.i = load ptr, ptr %.sroa.037.056.i.i.i, align 8, !tbaa !17
  %i.bz = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val21.i.i.i, ptr noundef %.val1.i.i.i.i)
          to label %.noexc.i11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i11.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.noexc.i11.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 88
  %.val20.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i22.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cc = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val20.i.i.i, ptr noundef %.val1.i22.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.n
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", label %bb.o

bb.o:                                             ; preds = %.noexc4.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 176
  %.val19.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i23.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cf = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val19.i.i.i, ptr noundef %.val1.i23.i.i.i)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %bb.o
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", label %bb.p

bb.p:                                             ; preds = %.noexc5.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 264
  %.val18.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i24.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.ci = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val18.i.i.i, ptr noundef %.val1.i24.i.i.i)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i:                                      ; preds = %bb.p
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", label %bb.q

bb.q:                                             ; preds = %.noexc6.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 352 ; 3 uses
  %i.cl = add nsw i64 %.057.i.i.i, -1
  %i.cm = icmp sgt i64 %.057.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !39

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.ck to i64
  %.pre62.i.i.i = sub i64 %i.bt, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.ck, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i" ] ; 5 uses
  %i.cn = sdiv exact i64 %.pre-phi63.i.i.i, 88
  switch i64 %i.cn, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !17
  %i.co = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 88
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cq, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !17
  %i.cr = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i:                                      ; preds = %bb.t
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 88
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.ct, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !17
  %i.cu = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cv = icmp eq i32 %i.cu, 0
  %spec.select.i.i.i = select i1 %i.cv, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 264
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44": ; preds = %.noexc5.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 176
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46": ; preds = %.noexc4.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 88
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46" ], [ %i.cw, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.cz = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bj
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"
  %i.db = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i, %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bj
  br i1 %i.de, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.df = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dh = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ap
  br i1 %i.di, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dl = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.v
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"
  %i.dn = load i64, ptr %i.v, align 8, !tbaa !20
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %lpad.loopexit.split-lp57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ap
  br i1 %i.ds, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a: ; preds = %.body14.i
  %8 = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dt = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dt) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a ], [ %i.dp, %bb.w ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.v
  br i1 %i.dv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dw = load i64, ptr %i.v, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dy = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.i
  br i1 %i.dz, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ea = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ed = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.i
  br i1 %i.ee, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.ef = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.22", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.6, align 8              ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.22", align 8 ; 11 uses
  %5 = alloca %class.anon.6, align 8              ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.6, align 8              ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !14
  %i.j = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !19
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !17
  %i.o = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  %i.t = load ptr, ptr %6, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !19
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !17
  %i.y = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.y, ptr %i.v, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %5, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !17  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !18 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !14, !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !44
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !19, !noalias !44
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.w, !noalias !44 ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !17, !noalias !44
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !44
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !20, !noalias !44
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !20, !noalias !44
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !20, !noalias !44
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !44
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !44 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !18, !noalias !44
  %i.an = load ptr, ptr %3, align 8, !tbaa !17, !noalias !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !20, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !44
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !14, !alias.scope !44
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17, !noalias !44 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !18, !noalias !44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !44
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !19, !noalias !44
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !17, !alias.scope !44
  %i.au = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !44
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !20, !alias.scope !44
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !20
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18, !alias.scope !44
  %i.az = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !44
  %i.bb = load ptr, ptr %3, align 8, !tbaa !17, !noalias !44 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !44
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !17, !noalias !44 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.af
  br i1 %i.bh, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %bb.k
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !44
  %7 = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %7) #17
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val8.i = load ptr, ptr %4, align 8, !tbaa !17 ; 2 uses
  %.val9.i = load i64, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %.val9.i, ptr %i.a, align 8, !tbaa !19
  %i.bk = icmp ugt i64 %.val9.i, 15
  br i1 %i.bk, label %.noexc.i.i.i.i12.i, label %._crit_edge.i.i.i.i.i10.i

.noexc.i.i.i.i12.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13.i unwind label %bb.x ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i.i.i.i12.i
  store ptr %i.bl, ptr %2, align 8, !tbaa !17
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i10.i

._crit_edge.i.i.i.i.i10.i:                        ; preds = %.noexc13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bn = phi ptr [ %i.bl, %.noexc13.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ] ; 2 uses
  switch i64 %.val9.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i"
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  %i.bo = load i8, ptr %.val8.i, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i"

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr readonly align 1 %.val8.i, i64 %.val9.i, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i": ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i10.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !18
  %i.br = load ptr, ptr %2, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bt = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.bu = ptrtoint ptr %i.f to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 192
  %i.bx = ashr i64 %i.bw, 2                       ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i", %bb.q
  %.057.i.i.i = phi i64 [ %i.cl, %bb.q ], [ %i.bx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i" ] ; 2 uses
  %.sroa.037.056.i.i.i = phi ptr [ %i.ck, %bb.q ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i" ] ; 9 uses
  %.val21.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i.i.i.i = load ptr, ptr %.sroa.037.056.i.i.i, align 8, !tbaa !17
  %i.bz = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val21.i.i.i, ptr noundef %.val1.i.i.i.i)
          to label %.noexc.i11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i11.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.noexc.i11.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 192
  %.val20.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i22.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cc = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val20.i.i.i, ptr noundef %.val1.i22.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.n
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", label %bb.o

bb.o:                                             ; preds = %.noexc4.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 384
  %.val19.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i23.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cf = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val19.i.i.i, ptr noundef %.val1.i23.i.i.i)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %bb.o
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", label %bb.p

bb.p:                                             ; preds = %.noexc5.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 576
  %.val18.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i24.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.ci = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val18.i.i.i, ptr noundef %.val1.i24.i.i.i)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i:                                      ; preds = %bb.p
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", label %bb.q

bb.q:                                             ; preds = %.noexc6.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 768 ; 3 uses
  %i.cl = add nsw i64 %.057.i.i.i, -1
  %i.cm = icmp sgt i64 %.057.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !43

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.ck to i64
  %.pre62.i.i.i = sub i64 %i.bt, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.ck, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i" ] ; 5 uses
  %i.cn = sdiv exact i64 %.pre-phi63.i.i.i, 192
  switch i64 %i.cn, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !17
  %i.co = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 192
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cq, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !17
  %i.cr = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i:                                      ; preds = %bb.t
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 192
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.ct, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !17
  %i.cu = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cv = icmp eq i32 %i.cu, 0
  %spec.select.i.i.i = select i1 %i.cv, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 576
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44": ; preds = %.noexc5.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 384
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46": ; preds = %.noexc4.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 192
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46" ], [ %i.cw, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.cz = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bj
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"
  %i.db = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i, %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bj
  br i1 %i.de, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.df = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dh = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ap
  br i1 %i.di, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dl = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.v
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i"
  %i.dn = load i64, ptr %i.v, align 8, !tbaa !20
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %lpad.loopexit.split-lp57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ap
  br i1 %i.ds, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a: ; preds = %.body14.i
  %8 = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dt = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dt) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a ], [ %i.dp, %bb.w ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.v
  br i1 %i.dv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dw = load i64, ptr %i.v, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dy = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.i
  br i1 %i.dz, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ea = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #17
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ed = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.i
  br i1 %i.ee, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.ef = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #17
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.23", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.13, align 8             ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.23", align 8 ; 11 uses
  %5 = alloca %class.anon.13, align 8             ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.13, align 8             ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !14
  %i.j = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !19
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !17
  %i.o = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  %i.t = load ptr, ptr %6, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !19
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !17
  %i.y = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.y, ptr %i.v, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"

"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %5, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !17  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !18 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !14, !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !48
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !19, !noalias !48
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.w, !noalias !48 ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !17, !noalias !48
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !48
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !20, !noalias !48
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !20, !noalias !48
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !20, !noalias !48
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !48
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"

"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !18, !noalias !48
  %i.an = load ptr, ptr %3, align 8, !tbaa !17, !noalias !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !20, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !48
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !14, !alias.scope !48
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17, !noalias !48 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !18, !noalias !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !48
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !19, !noalias !48
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !17, !alias.scope !48
  %i.au = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !48
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !20, !alias.scope !48
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !20
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18, !alias.scope !48
  %i.az = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !48
  %i.bb = load ptr, ptr %3, align 8, !tbaa !17, !noalias !48 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !48
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !17, !noalias !48 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.af
  br i1 %i.bh, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %bb.k
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !48
  %7 = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %7) #17
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val8.i = load ptr, ptr %4, align 8, !tbaa !17 ; 2 uses
  %.val9.i = load i64, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %.val9.i, ptr %i.a, align 8, !tbaa !19
  %i.bk = icmp ugt i64 %.val9.i, 15
  br i1 %i.bk, label %.noexc.i.i.i.i12.i, label %._crit_edge.i.i.i.i.i10.i

.noexc.i.i.i.i12.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13.i unwind label %bb.x ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i.i.i.i12.i
  store ptr %i.bl, ptr %2, align 8, !tbaa !17
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i10.i

._crit_edge.i.i.i.i.i10.i:                        ; preds = %.noexc13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bn = phi ptr [ %i.bl, %.noexc13.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ] ; 2 uses
  switch i64 %.val9.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i"
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  %i.bo = load i8, ptr %.val8.i, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i"

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr readonly align 1 %.val8.i, i64 %.val9.i, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i": ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i10.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !18
  %i.br = load ptr, ptr %2, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bt = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.bu = ptrtoint ptr %i.f to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 192
  %i.bx = ashr i64 %i.bw, 2                       ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i", %bb.q
  %.057.i.i.i = phi i64 [ %i.cl, %bb.q ], [ %i.bx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i" ] ; 2 uses
  %.sroa.037.056.i.i.i = phi ptr [ %i.ck, %bb.q ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i" ] ; 9 uses
  %.val21.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i.i.i.i = load ptr, ptr %.sroa.037.056.i.i.i, align 8, !tbaa !17
  %i.bz = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val21.i.i.i, ptr noundef %.val1.i.i.i.i)
          to label %.noexc.i11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i11.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.noexc.i11.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 192
  %.val20.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i22.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cc = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val20.i.i.i, ptr noundef %.val1.i22.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.n
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", label %bb.o

bb.o:                                             ; preds = %.noexc4.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 384
  %.val19.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i23.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cf = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val19.i.i.i, ptr noundef %.val1.i23.i.i.i)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %bb.o
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", label %bb.p

bb.p:                                             ; preds = %.noexc5.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 576
  %.val18.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i24.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.ci = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val18.i.i.i, ptr noundef %.val1.i24.i.i.i)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i:                                      ; preds = %bb.p
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", label %bb.q

bb.q:                                             ; preds = %.noexc6.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 768 ; 3 uses
  %i.cl = add nsw i64 %.057.i.i.i, -1
  %i.cm = icmp sgt i64 %.057.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !47

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.ck to i64
  %.pre62.i.i.i = sub i64 %i.bt, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.ck, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSH_.exit.i.i" ] ; 5 uses
  %i.cn = sdiv exact i64 %.pre-phi63.i.i.i, 192
  switch i64 %i.cn, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !17
  %i.co = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 192
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cq, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !17
  %i.cr = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i:                                      ; preds = %bb.t
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 192
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.ct, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !17
  %i.cu = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cv = icmp eq i32 %i.cu, 0
  %spec.select.i.i.i = select i1 %i.cv, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 576
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44": ; preds = %.noexc5.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 384
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46": ; preds = %.noexc4.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 192
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit46" ], [ %i.cw, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit44" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.cz = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bj
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i"
  %i.db = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i, %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bj
  br i1 %i.de, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.df = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERS7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SM_SM_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dh = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ap
  br i1 %i.di, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dl = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.v
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i"
  %i.dn = load i64, ptr %i.v, align 8, !tbaa !20
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %lpad.loopexit.split-lp57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ap
  br i1 %i.ds, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a: ; preds = %.body14.i
  %8 = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.dt = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dt) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.a ], [ %i.dp, %bb.w ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.v
  br i1 %i.dv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dw = load i64, ptr %i.v, align 8, !tbaa !20
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dy = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.i
  br i1 %i.dz, label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ea = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #17
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ed = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.i
  br i1 %i.ee, label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.ef = load i64, ptr %i.i, align 8, !tbaa !20
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #17
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_57AddViewERSt6vectorINS_4ViewESaIS1_EEPKcS6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::View", align 8 ; 49 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN16OpenColorIO_v2_526OCIO_VIEW_USE_DISPLAY_NAMEE, align 8, !tbaa !49
  %i.c = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %3, ptr noundef %i.b)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load ptr, ptr @_ZN16OpenColorIO_v2_526OCIO_VIEW_USE_DISPLAY_NAMEE, align 8
  %spec.select = select i1 %i.d, ptr %i.e, ptr %3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.025 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !14
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.h, ptr %i.a, align 8, !tbaa !19
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.s   ; 2 uses

.noexc36:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %7, align 8, !tbaa !17
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.k, ptr %i.f, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc36, %bb.e
  %i.l = phi ptr [ %i.j, %.noexc36 ], [ %i.f, %bb.e ] ; 2 uses
  switch i64 %i.h, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.m, ptr %i.l, align 1, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %1, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !18
  %i.p = load ptr, ptr %7, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.r = invoke ptr @_ZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.t       ; 11 uses

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.f, align 8, !tbaa !20
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = icmp eq ptr %i.r, %i.x
  br i1 %i.y, label %bb.j, label %bb.v

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZN16OpenColorIO_v2_54ViewC2EPKcS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.025, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !25   ; 21 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !14
  %i.ad = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.k
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !17
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !20
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.l
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.ah, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !18
  store ptr %i.ae, ptr %8, align 8, !tbaa !17
  store i64 0, ptr %i.am, align 8, !tbaa !18
  store i8 0, ptr %i.ae, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !14
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
end_hunk_0
