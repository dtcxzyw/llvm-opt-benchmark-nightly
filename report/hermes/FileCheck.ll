inline.NumInlined: 1995
inline.NumDeleted: 840
begin_hunk_0_@_ZN4llvh16FileCheckPattern17AddBackrefToRegExEj:._crit_edge.i.i
  %i.g = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !94 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67, !noalias !94 ; 4 uses
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !69, !noalias !94 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a                   ; 2 uses
  br i1 %i.l, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.m = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !noalias !94
  %i.o = select i1 %i.l, i64 15, i64 %i.n
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.q = load ptr, ptr %4, align 8, !tbaa !69, !noalias !94
  %i.r = icmp eq ptr %i.q, %i.f                   ; 2 uses
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i: ; preds = %bb.c, %bb.b
  %i.t = load i64, ptr %i.f, align 8, !noalias !94
  %i.u = select i1 %i.r, i64 15, i64 %i.t
  %.not.i = icmp ugt i64 %i.j, %i.u
  br i1 %.not.i, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.g) #18, !noalias !94 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !78, !alias.scope !94
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge.i
  store ptr %i.x, ptr %2, align 8, !tbaa !69, !alias.scope !94
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !43
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !43, !alias.scope !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !67, !alias.scope !94
  store ptr %i.y, ptr %i.v, align 8, !tbaa !69
  store i64 0, ptr %i.af, align 8, !tbaa !67
  store i8 0, ptr %i.y, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ai = sub i64 4611686018427387903, %i.g
  %i.aj = icmp ult i64 %i.ai, %i.i
  br i1 %i.aj, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19, !noalias !94
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.ak = load ptr, ptr %4, align 8, !tbaa !69, !noalias !94
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ak, i64 noundef %i.i) #18, !noalias !94 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !78, !alias.scope !94
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.an, ptr %2, align 8, !tbaa !69, !alias.scope !94
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !43
  store i64 %i.au, ptr %i.am, align 8, !tbaa !43, !alias.scope !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !67, !alias.scope !94
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !69
  store i64 0, ptr %i.av, align 8, !tbaa !67
  store i8 0, ptr %i.ao, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.f
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !43
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bc = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.a, align 8, !tbaa !43
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !67 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !67
  %i.bk = sub i64 4611686018427387903, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %2, align 8, !tbaa !69
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef %i.bn, i64 noundef %i.bh) #18 ; 0 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !43
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.a, align 8, !tbaa !97
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %2 = icmp ult i64 %i.m, %i.l
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 384307168202282325)
  %3 = select i1 %2, i64 384307168202282325, i64 %i.n ; 3 uses
  %.not.i.i.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = mul nuw nsw i64 %3, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !100
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !104

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !99
  store ptr %i.t, ptr %i.a, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %3
  store ptr %i.u, ptr %i.c, align 8, !tbaa !98
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

declare void @_ZN4llvh5Regex6escapeB5cxx11ENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvh5RegexC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvh5Regex7isValidERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvh5Regex13getNumMatchesEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh16FileCheckPattern18EvaluateExpressionENS_9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 captures(address) dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %.not.i = icmp ult i64 %2, 5
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  %i.c = xor i32 %i.b, 1313426496
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = xor i32 %i.f, 69
  %i.h = or i32 %i.c, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread59, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread59: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.l = add i64 %2, -5                           ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread59
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !43
  switch i8 %i.o, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread [
    i8 43, label %bb.c
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.q = add i64 %2, -6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.017.0 = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.9.0 = phi i64 [ %i.q, %bb.c ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.r = call noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr nonnull %.sroa.017.0, i64 %.sroa.9.0, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.r, label %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.t = add i64 %i.s, 2147483648
  %.not.i13 = icmp ult i64 %i.t, 4294967296
  br i1 %.not.i13, label %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit, label %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread

_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit: ; preds = %bb.e
  %i.u = trunc nsw i64 %i.s to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit.thread59
  %.057 = phi i32 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread59 ], [ %i.u, %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18
  %i.x = add i32 %i.w, %.057
  %i.y = zext i32 %i.x to i64
  call void @_ZN4llvh6itostrB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %i.y)
  %i.z = load ptr, ptr %3, align 8, !tbaa !69     ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %4, align 8, !tbaa !69    ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ae, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ae, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !67 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %.not21.i = icmp eq ptr %4, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !107

bb.h:                                             ; preds = %bb.g
  switch i64 %i.ag, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !43
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !67
  %i.al = load ptr, ptr %3, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !43
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %3, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !tbaa !43
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !43
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !43
  store ptr %i.ac, ptr %3, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !43
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !43
  %.not.i15 = icmp eq ptr %i.z, null
  br i1 %.not.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %4, align 8, !tbaa !69
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.au = phi ptr [ %i.z, %bb.k ], [ %i.ad, %bb.l ], [ %i.ac, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !67
  store i8 0, ptr %i.au, align 1, !tbaa !43
  %i.aw = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !43
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, %_ZNK4llvh9StringRef10startswithES0_.exit
  %.1 = phi i1 [ false, %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread ], [ false, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh6itostrB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 3 uses
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = sub nsw i64 0, %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !108
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEaSERKS3_:bb.a
  %.not.i.i32 = icmp eq ptr %i.br, %i.ax
  br i1 %.not.i.i32, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27, !llvm.loop !250

bb.j:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.bt = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN4llvh16FileCheckPatternES5_EET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %i.bs, ptr noundef %i.i) ; 0 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !166
  %i.bv = load ptr, ptr %i.as, align 8, !tbaa !163 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !166
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !163 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.j ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.j ] ; 2 uses
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.0810.i.i.i.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 136 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 136
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !251

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31, %.lr.ph.i.i.i.i, %bb.j, %bb.h, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ce = load ptr, ptr %0, align 8, !tbaa !166
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.f
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !163
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4llvh15FileCheckString5CheckERKNS_9SourceMgrENS_9StringRefEbRmRNS_9StringMapIS4_NS_15MallocAllocatorEEERNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(86) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.std::vector.54", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noundef i64 @_ZNK4llvh15FileCheckString8CheckDagERKNS_9SourceMgrENS_9StringRefERSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(86) %7) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.048 = phi i64 [ 0, %bb.a ], [ %i.a, %bb.b ]   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %.048) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated ; 6 uses
  %i.d = sub i64 %3, %.sroa.speculated            ; 4 uses
  %i.e = tail call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %i.c, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(25) %6) ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 85
  %i.h = load i8, ptr %i.g, align 1, !tbaa !252, !range !16, !noundef !17
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.01.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !41
  store ptr %i.c, ptr %8, align 8, !tbaa !41
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !44
  tail call fastcc void @_ZL12PrintNoMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEb(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %6, i1 noundef zeroext %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %5, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.val = load i8, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 85
  %.val56 = load i8, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.01.0.copyload.i58 = load ptr, ptr %i.o, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i61 = load ptr, ptr %i.p, align 8, !tbaa !41
  tail call fastcc void @_ZL10PrintMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEmmRKNS_16FileCheckRequestE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.01.0.copyload.i58, i64 %.sroa.2.0.copyload.i60, ptr %.sroa.0.0.copyload.i61, ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr %i.c, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 noundef range(i64 0, -1) %i.e, i64 noundef %i.l, i8 %.val, i8 %.val56)
  br i1 %4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated78 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e) ; 3 uses
  %i.q = tail call noundef zeroext i1 @_ZNK4llvh15FileCheckString9CheckNextERKNS_9SourceMgrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.c, i64 %.sroa.speculated78)
  br i1 %i.q, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noundef zeroext i1 @_ZNK4llvh15FileCheckString9CheckSameERKNS_9SourceMgrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.c, i64 %.sroa.speculated78)
  br i1 %i.r, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef zeroext i1 @_ZNK4llvh15FileCheckString8CheckNotERKNS_9SourceMgrENS_9StringRefERKSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.c, i64 %.sroa.speculated78, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(86) %7)
  br i1 %i.s, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.t = add i64 %i.e, %.048
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.i, %bb.h, %bb.f, %bb.g, %bb.b
  %.2 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.t, %bb.i ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.g ]
  %i.u = load ptr, ptr %9, align 8, !tbaa !253    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !257
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #21
  br label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EED2Ev.exit: ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4llvh15FileCheckString8CheckDagERKNS_9SourceMgrENS_9StringRefERSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(86) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::__cxx11::list", align 8 ; 23 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca [1 x %"class.llvh::SMRange"], align 8 ; 5 uses
  %11 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %7, ptr %i.g, align 8, !tbaa !258
  store ptr %7, ptr %7, align 8, !tbaa !261
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store i64 0, ptr %i.h, align 8, !tbaa !262
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 85 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 83
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 17
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE9push_backEOS3_.exit.thread
  %.074305 = phi i64 [ 0, %bb.b ], [ %.377246, %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE9push_backEOS3_.exit.thread ] ; 5 uses
  %.sroa.0180.0300 = phi ptr [ %i.c, %bb.b ], [ %i.cy, %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE9push_backEOS3_.exit.thread ] ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0180.0300, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !115
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !264  ; 4 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.0180.0300, ptr %i.t, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.o, align 8, !tbaa !264
  br label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE9push_backEOS3_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %4, align 8, !tbaa !253    ; 4 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %12 = icmp ult i64 %i.ac, %i.ab
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %13 = select i1 %12, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %13, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %13, 3
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #23 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.z ; 2 uses
  store ptr %.sroa.0180.0300, ptr %i.ag, align 8, !tbaa !188
  %i.ah = icmp sgt i64 %i.z, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #21
  br label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.af, ptr %4, align 8, !tbaa !253
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !264
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %13
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !257
  br label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE9push_backEOS3_.exit.thread

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !44
  %.sroa.0175.0288 = load ptr, ptr %7, align 8, !tbaa !261
  %.sroa.speculated197289 = call i64 @llvm.umin.i64(i64 %3, i64 %.074305) ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated197289 ; 3 uses
  %i.al = sub i64 %3, %.sroa.speculated197289     ; 2 uses
  %i.am = call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr %i.ak, i64 %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(25) %5) ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %._crit_edge, label %.lr.ph292

.lr.ph292:                                        ; preds = %bb.j, %bb.t
  %i.ao = phi i64 [ %i.by, %bb.t ], [ %i.am, %bb.j ]
  %.sroa.0175.0291 = phi ptr [ %.sroa.0175.0, %bb.t ], [ %.sroa.0175.0288, %bb.j ] ; 3 uses
  %.086290 = phi i64 [ %i.bv, %bb.t ], [ %.074305, %bb.j ]
  %i.ap = add i64 %i.ao, %.086290                 ; 7 uses
  %i.aq = load i8, ptr %i.i, align 1, !tbaa !252, !range !16, !noundef !17
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph292
  %.sroa.018.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !41
  %.sroa.219.0.copyload = load i64, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !44
  %.sroa.0.0.copyload.i129 = load ptr, ptr %.sroa.0180.0300, align 8, !tbaa !41
  %.val110 = load i8, ptr %i.k, align 4
  call fastcc void @_ZL10PrintMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEmmRKNS_16FileCheckRequestE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.018.0.copyload, i64 %.sroa.219.0.copyload, ptr %.sroa.0.0.copyload.i129, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 noundef %i.ap, i64 noundef %.pre, i8 %.val110, i8 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph292
  %i.as = add i64 %.pre, %i.ap                    ; 4 uses
  %i.at = load i8, ptr %i.l, align 1, !tbaa !265, !range !16, !noundef !17
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.not254281 = icmp eq ptr %.sroa.0175.0291, %7
  br i1 %.not254281, label %.critedge93, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %7, align 8, !tbaa !261   ; 3 uses
  %i.aw = icmp eq ptr %i.av, %7
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.ap, ptr %i.ay, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.as, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !44
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %7) #18
  %i.az = load i64, ptr %i.h, align 8, !tbaa !266
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.h, align 8, !tbaa !266
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !44
  %.sroa.speculated163 = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.bc)
  store i64 %.sroa.speculated163, ptr %i.bb, align 8, !tbaa !269
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !44
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.be, i64 %i.as)
  store i64 %.sroa.speculated, ptr %i.bd, align 8, !tbaa !271
  br label %bb.u

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.sroa.0175.1282 = phi ptr [ %i.bm, %bb.q ], [ %.sroa.0175.0291, %.preheader ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0175.1282, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !271 ; 3 uses
  %i.bh = icmp ult i64 %i.ap, %i.bg
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0175.1282, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0175.1282, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !269 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.as
  br i1 %i.bl, label %bb.r, label %.critedge93

bb.q:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %.sroa.0175.1282, align 8, !tbaa !261 ; 3 uses
  %.not254 = icmp eq ptr %i.bm, %7
  br i1 %.not254, label %.critedge93, label %.lr.ph, !llvm.loop !272

.critedge93:                                      ; preds = %bb.p, %.preheader, %bb.q
  %.sroa.0175.1258 = phi ptr [ %i.bm, %bb.q ], [ %.sroa.0175.0291, %.preheader ], [ %.sroa.0175.1282, %bb.p ]
  %i.bn = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.ap, ptr %i.bo, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %i.as, ptr %.sroa.8.0..sroa_idx158, align 8, !tbaa !44
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef %.sroa.0175.1258) #18
  %i.bp = load i64, ptr %i.h, align 8, !tbaa !266
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.h, align 8, !tbaa !266
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.br = load i8, ptr %i.i, align 1, !tbaa !252, !range !16, !noundef !17
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i8 1, ptr %i.n, align 1, !tbaa !53
  store ptr @.str.53, ptr %9, align 8, !tbaa !43
  store i8 3, ptr %i.m, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.bt, ptr %10, align 8, !tbaa !41
  store ptr %i.bu, ptr %.sroa.4150.0..sroa_idx, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.bt, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr nonnull %10, i64 1, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %11, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.pre332 = load i64, ptr %i.bi, align 8, !tbaa !271
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bv = phi i64 [ %.pre332, %bb.s ], [ %i.bg, %bb.r ] ; 2 uses
  %.sroa.0175.0 = load ptr, ptr %.sroa.0175.1282, align 8, !tbaa !261
  %.sroa.speculated197 = call i64 @llvm.umin.i64(i64 %3, i64 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated197 ; 2 uses
  %i.bx = sub i64 %3, %.sroa.speculated197        ; 2 uses
  %i.by = call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr %i.bw, i64 %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(25) %5) ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %._crit_edge, label %.lr.ph292, !llvm.loop !273

._crit_edge:                                      ; preds = %bb.j, %bb.t
  %.lcssa264 = phi ptr [ %i.bw, %bb.t ], [ %i.ak, %bb.j ]
  %.lcssa260 = phi i64 [ %i.bx, %bb.t ], [ %i.al, %bb.j ]
  %.sroa.021.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !41
  %.sroa.222.0.copyload = load i64, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !44
  %.sroa.0.0.copyload.i128 = load ptr, ptr %.sroa.0180.0300, align 8, !tbaa !41
  store ptr %.lcssa264, ptr %8, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa260, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44
  %i.ca = load i8, ptr %i.i, align 1, !tbaa !252, !range !16, !noundef !17
  %i.cb = trunc nuw i8 %i.ca to i1
  call fastcc void @_ZL12PrintNoMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEb(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.021.0.copyload, i64 %.sroa.222.0.copyload, ptr %.sroa.0.0.copyload.i128, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %5, i1 noundef zeroext %i.cb)
  br label %.loopexit256

bb.u:                                             ; preds = %.critedge93, %bb.o, %bb.n
  %i.cc = load i8, ptr %i.i, align 1, !tbaa !252, !range !16, !noundef !17
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.08.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !41
  %.sroa.29.0.copyload = load i64, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !44
  %.sroa.0.0.copyload.i132 = load ptr, ptr %.sroa.0180.0300, align 8, !tbaa !41
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !44
  %.val106 = load i8, ptr %i.k, align 4
  call fastcc void @_ZL10PrintMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEmmRKNS_16FileCheckRequestE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr %.sroa.0.0.copyload.i132, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 noundef %i.ap, i64 noundef %i.ce, i8 %.val106, i8 0)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0180.0300, i64 136
  %i.cg = icmp eq ptr %i.cf, %i.e
  br i1 %i.cg, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0180.0300, i64 264
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !115
  %i.cj = icmp eq i32 %i.ci, 4
  br i1 %i.cj, label %.critedge, label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE9push_backEOS3_.exit

.critedge:                                        ; preds = %bb.w, %bb.x
  %i.ck = load ptr, ptr %4, align 8, !tbaa !274
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !274
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE5clearEv.exit, label %bb.y

bb.y:                                             ; preds = %.critedge
  %.val = load ptr, ptr %7, align 8, !tbaa !261
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269
  %.sroa.speculated220 = call i64 @llvm.umax.i64(i64 %.sroa.speculated197289, i64 %i.co)
  %.sroa.speculated191 = call i64 @llvm.umin.i64(i64 %3, i64 %.sroa.speculated220)
  %i.cp = sub i64 %.sroa.speculated191, %.sroa.speculated197289
  %i.cq = call noundef zeroext i1 @_ZNK4llvh15FileCheckString8CheckNotERKNS_9SourceMgrENS_9StringRefERKSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.ak, i64 %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(86) %6)
  br i1 %i.cq, label %.loopexit256, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = load ptr, ptr %4, align 8, !tbaa !253   ; 2 uses
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !264
  %.not.i.i136 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.i136, label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cr, ptr %i.o, align 8, !tbaa !264
  br label %_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE5clearEv.exit

_ZNSt6vectorIPKN4llvh16FileCheckPatternESaIS3_EE5clearEv.exit: ; preds = %bb.aa, %bb.z, %.critedge
end_hunk_1
begin_hunk_2_@_ZN4llvh9FileCheck10CheckInputERNS_9SourceMgrENS_9StringRefENS_8ArrayRefINS_15FileCheckStringEEE:bb.a
  %.sroa.8.3185 = phi i64 [ %i.ch, %bb.p ], [ %.sroa.8.2, %bb.n ] ; 3 uses
  %.sroa.0.3184 = phi ptr [ %i.cg, %bb.p ], [ %.sroa.093.0.ph, %bb.n ] ; 2 uses
  %i.ca = zext i32 %.144186 to i64
  %i.cb = getelementptr inbounds nuw [184 x i8], ptr %4, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.c, align 8, !tbaa !44
  %i.cc = call noundef i64 @_ZNK4llvh15FileCheckString5CheckERKNS_9SourceMgrENS_9StringRefEbRmRNS_9StringMapIS4_NS_15MallocAllocatorEEERNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.0.3184, i64 %.sroa.8.3185, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(86) %0) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph188
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !44
  %i.cf = add i64 %i.ce, %i.cc
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.3185, i64 %i.cf) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.3184, i64 %.sroa.speculated
  %i.ch = sub i64 %.sroa.8.3185, %.sroa.speculated
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ci = add i32 %.144186, 1                     ; 2 uses
  %.not59 = icmp eq i32 %i.ci, %.351
  br i1 %.not59, label %.loopexit, label %.lr.ph188, !llvm.loop !333

.loopexit:                                        ; preds = %bb.p, %bb.n, %bb.o
  %.346 = phi i32 [ %.351, %bb.o ], [ %.043.ph, %bb.n ], [ %.351, %bb.p ]
  %.341 = phi i1 [ true, %bb.o ], [ %.038.ph, %bb.n ], [ %.038.ph, %bb.p ] ; 2 uses
  %i.cj = icmp eq i32 %.351, %i.j
  br i1 %i.cj, label %bb.q, label %.outer

bb.q:                                             ; preds = %.loopexit
  %i.ck = xor i1 %.341, true
  br label %bb.r

bb.r:                                             ; preds = %.thread163, %bb.q
  %.5 = phi i1 [ false, %.thread163 ], [ %i.ck, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !318
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.o, align 8, !tbaa !319 ; 2 uses
  %.not10.i = icmp eq i32 %i.co, 0
  br i1 %.not10.i, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.preheader.i75

.lr.ph.preheader.i75:                             ; preds = %bb.s
  %i.cp = zext i32 %i.co to i64
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %bb.u, %.lr.ph.preheader.i75
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i75 ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.cq = load ptr, ptr %8, align 8, !tbaa !320
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !117 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.cs to i64
  switch i64 %magicptr.i, label %bb.t [
    i64 0, label %bb.u
    i64 -8, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph.i76
  call void @free(ptr noundef nonnull align 8 dereferenceable(24) %i.cs) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i76, %.lr.ph.i76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i77 = icmp eq i64 %indvars.iv.next.i, %i.cp
  br i1 %.not.i77, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i76, !llvm.loop !334

_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.u, %bb.r, %bb.s
  %i.ct = load ptr, ptr %8, align 8, !tbaa !320
  call void @free(ptr noundef %i.ct) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret i1 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !41    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = icmp ult ptr %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !335

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336
  %i.j = icmp ult ptr %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, %bb.b
  %.08.lcssa.i.i.i20 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %.pre, ptr %i.l, align 8, !tbaa !336
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 8, !tbaa !338
  %i.o = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.p, null
  %i.r = icmp eq ptr %i.q, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = icmp ult ptr %i.s, %i.u
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !187
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !187
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #21
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.b, %bb.e, %.thread.i.i
  %.sroa.018.0 = phi ptr [ %i.p, %bb.e ], [ %i.k, %.thread.i.i ], [ %.19.i.i.i, %bb.b ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %.thread.i.i ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !184    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %4 = select i1 %3, i64 384307168202282325, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 24
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not7.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i) #18
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !339

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not7.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not7.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.09.i.i.i.i.i20 = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i19 ], [ %i.r, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i21 = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i21) #18
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i21, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !339

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.r, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.t, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24 ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #18
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !340

_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !183
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.y) #21
  br label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !184
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %4
  store ptr %i.z, ptr %i.v, align 8, !tbaa !183
  ret void
}

declare void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !187
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = load ptr, ptr %2, align 8, !tbaa !41
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !90 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !90 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !341

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #20 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !41
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !41     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #20 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !342
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !90 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !341

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #20 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #20 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !342
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !90 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !90 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !341

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 25
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #24 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext true) #18
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit

_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !43
  store ptr %i.l, ptr %i.d, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !318
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !318
  %i.t = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #18
  %i.u = load ptr, ptr %0, align 8, !tbaa !320
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %.preheader.i.i22

.preheader.i.i22:                                 ; preds = %.critedge.i.i.i24, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit ], [ %i.y, %.critedge.i.i.i24 ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0, align 8, !tbaa !117
  %magicptr.i.i.i23 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i.i.i23, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i24
    i64 -8, label %.critedge.i.i.i24
  ]

.critedge.i.i.i24:                                ; preds = %.preheader.i.i22, %.preheader.i.i22
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i22, !llvm.loop !330

_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i22, %.preheader.i.i
  %.sroa.029.0.pn = phi ptr [ %.sroa.029.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i22 ]
  %.pn30 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i22 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.029.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn30, 1
  ret { ptr, i8 } %.pn
}

declare noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !78
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !69
  %i.o = load i64, ptr %i.i, align 8, !tbaa !43
  store i64 %i.o, ptr %i.g, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  store ptr %i.i, ptr %i.f, align 8, !tbaa !69
  store i64 0, ptr %i.p, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !116
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98
  store ptr %i.x, ptr %i.v, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !185
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !90
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !390
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !187
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !187
  store ptr null, ptr %i.z, align 8, !tbaa !89
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !123
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !186
  store i64 0, ptr %i.aj, align 8, !tbaa !187
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr null, ptr %i.am, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.y, ptr %i.an, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 0, ptr %i.ap, align 8, !tbaa !187
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

_ZN4llvh16FileCheckPatternC2EOS0_.exit:           ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ac, %bb.d ]
  store i32 %.sink.i.i.i.i.i, ptr %i.y, align 8, !tbaa !185
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !163
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh16FileCheckPatternC2EOS0_.exit
  %i.av = phi ptr [ %.pre, %bb.f ], [ %i.au, %_ZN4llvh16FileCheckPatternC2EOS0_.exit ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -136
  ret ptr %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !166    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880)
  %4 = select i1 %3, i64 67818912035696880, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 136
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !78
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !69   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.p, align 8, !tbaa !69
  %i.z = load i64, ptr %i.t, align 8, !tbaa !43
  store i64 %i.z, ptr %i.r, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !67
  store ptr %i.t, ptr %i.q, align 8, !tbaa !69
  store i64 0, ptr %i.ab, align 8, !tbaa !67
  store i8 0, ptr %i.t, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !116
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !98
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !185
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !123
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !186
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.aj, ptr %i.at, align 8, !tbaa !390
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !187
  store ptr null, ptr %i.ak, align 8, !tbaa !89
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !123
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !186
  store i64 0, ptr %i.au, align 8, !tbaa !187
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr null, ptr %i.aw, align 8, !tbaa !89
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

_ZN4llvh16FileCheckPatternC2EOS0_.exit:           ; preds = %bb.d, %bb.e
  %.sink30 = phi ptr [ %i.aj, %bb.e ], [ %i.aq, %bb.d ]
  %.sink29 = phi ptr [ %i.aj, %bb.e ], [ %i.as, %bb.d ]
  %.sink = phi i64 [ 0, %bb.e ], [ %i.av, %bb.d ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.an, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr %.sink30, ptr %i.ax, align 8, !tbaa !123
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store ptr %.sink29, ptr %i.ay, align 8, !tbaa !186
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i64 %.sink, ptr %i.az, align 8, !tbaa !187
  store i32 %.sink.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !185
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bc = load i64, ptr %i.bb, align 8
  store i64 %i.bc, ptr %i.ba, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh16FileCheckPatternC2EOS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %i.n, %_ZN4llvh16FileCheckPatternC2EOS0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %i.c, %_ZN4llvh16FileCheckPatternC2EOS0_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN4llvh16FileCheckPatternES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !391

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvh16FileCheckPatternC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZN4llvh16FileCheckPatternC2EOS0_.exit ], [ %i.be, %.lr.ph.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bh, %.lr.ph.i.i.i17 ], [ %i.bf, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bg, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN4llvh16FileCheckPatternES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i18, ptr noundef %.0911.i.i.i19, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 136 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 136 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !391

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.bf, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bh, %.lr.ph.i.i.i17 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !167
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #21
  br label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !166
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !163
  %i.bm = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %4
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !167
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt19__relocate_object_aIN4llvh16FileCheckPatternES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !78
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !69
  %i.k = load i64, ptr %i.e, align 8, !tbaa !43
  store i64 %i.k, ptr %i.c, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.l, ptr %i.n, align 8, !tbaa !67
  store ptr %i.e, ptr %i.b, align 8, !tbaa !69
  store i64 0, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !116
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  store ptr %i.t, ptr %i.r, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !185
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.w, ptr %i.z, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.u, ptr %i.ae, align 8, !tbaa !390
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !187
  store ptr null, ptr %i.v, align 8, !tbaa !89
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !123
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !186
  store i64 0, ptr %i.af, align 8, !tbaa !187
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.ah, align 8, !tbaa !89
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

_ZN4llvh16FileCheckPatternC2EOS0_.exit:           ; preds = %bb.c, %bb.d
  %.sink6 = phi ptr [ %i.u, %bb.d ], [ %i.ab, %bb.c ]
  %.sink5 = phi ptr [ %i.u, %bb.d ], [ %i.ad, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ag, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.y, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sink6, ptr %i.ai, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sink5, ptr %i.aj, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !187
  store i32 %.sink.i.i.i.i.i, ptr %i.u, align 8, !tbaa !185
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef null)
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !99  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh16FileCheckPatternC2EOS0_.exit
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvh16FileCheckPatternC2EOS0_.exit
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %_ZN4llvh16FileCheckPatternD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !43
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #21
  br label %_ZN4llvh16FileCheckPatternD2Ev.exit

_ZN4llvh16FileCheckPatternD2Ev.exit:              ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !78
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.g, ptr %i.a, align 8, !tbaa !44
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.j, ptr %i.d, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !43
  store i8 %i.l, ptr %i.k, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !67
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !99   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %bb.f, label %_ZNSt15__new_allocatorISt4pairIN4llvh9StringRefEjEE8allocateEmPKv.exit.i.i.i.i, !prof !107

bb.f:                                             ; preds = %bb.e
  call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorISt4pairIN4llvh9StringRefEjEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #23
  br label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorISt4pairIN4llvh9StringRefEjEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.aa, %_ZNSt15__new_allocatorISt4pairIN4llvh9StringRefEjEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !98
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !116 ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !392

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !97
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !185
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !123
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !186
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !187
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !89 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEC2ERKS8_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEC2ERKS5_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.aq, ptr %2, align 8, !tbaa !393
  %i.ar = call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.at, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !343 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.h, !llvm.loop !395

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.h
  store ptr %.0.i.i.i.i.i.i, ptr %i.al, align 8, !tbaa !90
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.ar, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !342 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyERKSA_.exit.i.i, label %bb.i, !llvm.loop !396

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyERKSA_.exit.i.i: ; preds = %bb.i
  store ptr %.0.i.i7.i.i.i.i, ptr %i.am, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !187
  store i64 %i.ax, ptr %i.an, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !90
  br label %_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEC2ERKS8_.exit

_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEC2ERKS8_.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEC2ERKS5_.exit, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyERKSA_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.d = load i32, ptr %1, align 8, !tbaa !397
  store i32 %i.d, ptr %i.b, align 8, !tbaa !397
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !390
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !342
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !343 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.l, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.n = load i32, ptr %.034, align 8, !tbaa !397
  store i32 %i.n, ptr %i.l, align 8, !tbaa !397
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !390
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !342  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !342
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !343 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !398

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !166    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880)
  %4 = select i1 %3, i64 67818912035696880, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 136
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN4llvh16FileCheckPatternES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !391

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.q, %.lr.ph.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.t, %.lr.ph.i.i.i17 ], [ %i.r, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.s, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN4llvh16FileCheckPatternES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i18, ptr noundef %.0911.i.i.i19, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 136 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !391

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.r, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.t, %.lr.ph.i.i.i17 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #21
  br label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !166
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %4
  store ptr %i.y, ptr %i.u, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJRNS0_16FileCheckPatternERNS0_9StringRefERNS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !399    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %5 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %6 = select i1 %5, i64 50127021939428129, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %6, 184
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 5 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !41
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr %.sroa.01.0.copyload.i, ptr %i.p, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i18, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  store ptr %.sroa.0.0.copyload.i, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = tail call noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.u = tail call noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.t, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i19 = icmp eq ptr %i.c, null
  br i1 %.not.i19, label %_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !245
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.y) #21
  br label %_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !399
  store ptr %i.u, ptr %i.a, align 8, !tbaa !243
  %i.z = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %6
  store ptr %i.z, ptr %i.v, align 8, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN4llvh15FileCheckStringES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 17 uses
  %.0911.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i, i64 24, i1 false), !alias.scope !405
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !78, !alias.scope !400, !noalias !403
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !69, !alias.scope !403, !noalias !400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 40 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67, !alias.scope !403, !noalias !400 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false), !alias.scope !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.d, ptr %i.a, align 8, !tbaa !69, !alias.scope !400, !noalias !403
  %i.k = load i64, ptr %i.e, align 8, !tbaa !43, !alias.scope !403, !noalias !400
  store i64 %i.k, ptr %i.c, align 8, !tbaa !43, !alias.scope !400, !noalias !403
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !67, !alias.scope !403, !noalias !400
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  store i64 %i.l, ptr %i.n, align 8, !tbaa !67, !alias.scope !400, !noalias !403
  store ptr %i.e, ptr %i.b, align 8, !tbaa !69, !alias.scope !403, !noalias !400
  store i64 0, ptr %i.m, align 8, !tbaa !67, !alias.scope !403, !noalias !400
  store i8 0, ptr %i.e, align 8, !tbaa !43, !alias.scope !403, !noalias !400
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !116, !alias.scope !403, !noalias !400
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !116, !alias.scope !400, !noalias !403
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98, !alias.scope !403, !noalias !400
  store ptr %i.t, ptr %i.r, align 8, !tbaa !98, !alias.scope !400, !noalias !403
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !alias.scope !403, !noalias !400
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89, !alias.scope !403, !noalias !400 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !185, !alias.scope !403, !noalias !400
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  store ptr %i.w, ptr %i.z, align 8, !tbaa !89, !alias.scope !400, !noalias !403
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123, !alias.scope !403, !noalias !400
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !186, !alias.scope !403, !noalias !400
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.u, ptr %i.ae, align 8, !tbaa !390
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !187, !alias.scope !403, !noalias !400
  store ptr null, ptr %i.v, align 8, !tbaa !89, !alias.scope !403, !noalias !400
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !123, !alias.scope !403, !noalias !400
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !186, !alias.scope !403, !noalias !400
  store i64 0, ptr %i.af, align 8, !tbaa !187, !alias.scope !403, !noalias !400
  br label %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  store ptr null, ptr %i.ah, align 8, !tbaa !89, !alias.scope !400, !noalias !403
  br label %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sink6.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.ab, %bb.c ]
  %.sink5.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.ad, %bb.c ]
  %.sink.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ag, %bb.c ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.y, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  store ptr %.sink6.i.i.i, ptr %i.ai, align 8, !tbaa !123, !alias.scope !400, !noalias !403
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  store ptr %.sink5.i.i.i, ptr %i.aj, align 8, !tbaa !186, !alias.scope !400, !noalias !403
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120
  store i64 %.sink.i.i.i, ptr %i.ak, align 8, !tbaa !187, !alias.scope !400, !noalias !403
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !185, !alias.scope !400, !noalias !403
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !403, !noalias !400
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !400, !noalias !403
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !alias.scope !405
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 160 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !188, !alias.scope !403, !noalias !400
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !188, !alias.scope !400, !noalias !403
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 176
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !167, !alias.scope !403, !noalias !400
  store ptr %i.av, ptr %i.at, align 8, !tbaa !167, !alias.scope !400, !noalias !403
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !alias.scope !403, !noalias !400
  tail call void @_ZN4llvh15FileCheckStringD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 184 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN4llvh15FileCheckStringES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !406

_ZSt12__relocate_aIPN4llvh15FileCheckStringES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.ax, %_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh15FileCheckStringD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  tail call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !43
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !249

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !166
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !89
  tail call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !342 ; 2 uses
  %.not11.i.i.i36 = icmp eq ptr %i.ah, null
  br i1 %.not11.i.i.i36, label %bb.m, label %.preheader.i.i.i34, !llvm.loop !415

bb.m:                                             ; preds = %.preheader.i.i.i34
  %i.ai = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !343 ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.aj, null
  %spec.store.select.i.i.i38 = select i1 %.not12.i.i.i37, ptr %storemerge.i.i.i35, ptr %i.aj
  store ptr %spec.store.select.i.i.i38, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40

bb.n:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr null, ptr %i.ak, align 8, !tbaa !343
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40

bb.o:                                             ; preds = %bb.j
  store ptr null, ptr %3, align 8, !tbaa !407
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39: ; preds = %.lr.ph
  %i.al = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39
  %.sink12.i.i32 = phi ptr [ %i.al, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39 ], [ %i.y, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.n ], [ %i.y, %bb.o ] ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.045, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.sink12.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ao = load i32, ptr %.045, align 8, !tbaa !397
  store i32 %i.ao, ptr %.sink12.i.i32, align 8, !tbaa !397
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink12.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.02744, i64 16
  store ptr %.sink12.i.i32, ptr %i.aq, align 8, !tbaa !343
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink12.i.i32, i64 8
  store ptr %.02744, ptr %i.ar, align 8, !tbaa !390
  %i.as = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !342 ; 2 uses
  %.not29 = icmp eq ptr %i.at, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40
  %i.au = tail call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.at, ptr noundef nonnull %.sink12.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.av = getelementptr inbounds nuw i8, ptr %.sink12.i.i32, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !342
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !343 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !416

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink12.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN4llvh16FileCheckPatternES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 136
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvh16FileCheckPatternaSERKS0_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.am, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ]
  ret ptr %.08.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh16FileCheckPatternaSERKS0_.exit
  %.012 = phi i64 [ %i.e, %.lr.ph ], [ %i.an, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 2 uses
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.am, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 12 uses
  %.0910 = phi ptr [ %0, %.lr.ph ], [ %i.al, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.0811, ptr noundef nonnull align 8 dereferenceable(136) %.0910, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.0910, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %.0811, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.0910, i64 56
  %i.l = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0811, i64 80 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0811, %.0910
  br i1 %.not.i.i.i, label %_ZN4llvh16FileCheckPatternaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %.0811, i64 96 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 4 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !407
  %i.p = getelementptr inbounds nuw i8, ptr %.0811, i64 112 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !409
  store ptr %i.m, ptr %i.g, align 8, !tbaa !393
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !390
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !343  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ null, %bb.c ]
  store ptr %.sink.i.i.i.i, ptr %i.f, align 8, !tbaa !409
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0811, i64 88 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %.0811, i64 104 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !123
  store ptr %i.u, ptr %i.p, align 8, !tbaa !186
  %i.w = getelementptr inbounds nuw i8, ptr %.0811, i64 120 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !187
  %i.x = getelementptr inbounds nuw i8, ptr %.0910, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i
  %i.z = call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull %i.y, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !343 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.f, !llvm.loop !395

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !90
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.z, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !342 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i, label %bb.g, !llvm.loop !396

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i.i, ptr %i.p, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !187
  store i64 %i.af, ptr %i.w, align 8, !tbaa !187
  store ptr %i.z, ptr %i.n, align 8, !tbaa !90
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !410
  %.pre6.i.i.i = load ptr, ptr %3, align 8, !tbaa !407
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i
  %i.ag = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i ], [ %i.o, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i ]
  %i.ah = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i ], [ %i.m, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvh16FileCheckPatternaSERKS0_.exit

_ZN4llvh16FileCheckPatternaSERKS0_.exit:          ; preds = %bb.b, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910, i64 128
  %i.ak = load i64, ptr %i.aj, align 8
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0910, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 136 ; 2 uses
  %i.an = add nsw i64 %.012, -1
  %i.ao = icmp sgt i64 %.012, 1
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !417
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !399    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %5 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %6 = select i1 %5, i64 50127021939428129, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %6, 184
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 5 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !41
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr %i.p, ptr %i.s, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store i64 %i.r, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  store ptr %.sroa.0.0.copyload.i, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = tail call noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.x = tail call noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.w, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.c, null
  br i1 %.not.i18, label %_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !245
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #21
  br label %_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !399
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  %i.ac = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %6
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !245
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvh9StringMapIcNS_15MallocAllocatorEE11try_emplaceIJcEEESt4pairINS_17StringMapIteratorIcEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #18 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !320
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  switch i64 %magicptr, label %.preheader.i.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i.i:                                   ; preds = %bb.a, %.critedge.i.i.i
  %i.f = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.030.0 = phi ptr [ %i.g, %.critedge.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIteratorIcEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i
    i64 -8, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !117
  br label %.preheader.i.i, !llvm.loop !418

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !389
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !389
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 17
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #24 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext true) #18
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i8, ptr %3, align 1, !tbaa !43
  store i8 %i.o, ptr %i.n, align 8, !tbaa !419
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit

_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %2
  store i8 0, ptr %i.q, align 1, !tbaa !43
  store ptr %i.l, ptr %i.d, align 8, !tbaa !117
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !318
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !318
  %i.u = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #18
  %i.v = load ptr, ptr %0, align 8, !tbaa !320
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  br label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %.critedge.i.i.i25, %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.x, %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit ], [ %i.z, %.critedge.i.i.i25 ] ; 3 uses
  %i.y = load ptr, ptr %.sroa.0.0, align 8, !tbaa !117
  %magicptr.i.i.i24 = ptrtoint ptr %i.y to i64
  switch i64 %magicptr.i.i.i24, label %_ZN4llvh17StringMapIteratorIcEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i25
    i64 -8, label %.critedge.i.i.i25
  ]

.critedge.i.i.i25:                                ; preds = %.preheader.i.i23, %.preheader.i.i23
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i23, !llvm.loop !418

_ZN4llvh17StringMapIteratorIcEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i23, %.preheader.i.i
  %.sroa.030.0.pn = phi ptr [ %.sroa.030.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i23 ]
  %.pn31 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i23 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn31, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !78
  %i.r = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !69
  %i.y = load i64, ptr %i.s, align 8, !tbaa !43
  store i64 %i.y, ptr %i.q, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !67
  store ptr %i.s, ptr %2, align 8, !tbaa !69
  store i64 0, ptr %i.aa, align 8, !tbaa !67
  store i8 0, ptr %i.s, align 8, !tbaa !43
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !78, !alias.scope !421, !noalias !424
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !69, !alias.scope !424, !noalias !421 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67, !alias.scope !424, !noalias !421 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !426
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !69, !alias.scope !421, !noalias !424
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !43, !alias.scope !424, !noalias !421
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !43, !alias.scope !421, !noalias !424
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !67, !alias.scope !424, !noalias !421
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !67, !alias.scope !421, !noalias !424
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !69, !alias.scope !424, !noalias !421
  store i64 0, ptr %i.am, align 8, !tbaa !67, !alias.scope !424, !noalias !421
  store i8 0, ptr %i.ae, align 8, !tbaa !43, !alias.scope !424, !noalias !421
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !427

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !78, !alias.scope !428, !noalias !431
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !69, !alias.scope !431, !noalias !428 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !67, !alias.scope !431, !noalias !428 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !433
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !69, !alias.scope !428, !noalias !431
  %i.az = load i64, ptr %i.at, align 8, !tbaa !43, !alias.scope !431, !noalias !428
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !43, !alias.scope !428, !noalias !431
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !67, !alias.scope !431, !noalias !428
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !67, !alias.scope !428, !noalias !431
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !69, !alias.scope !431, !noalias !428
  store i64 0, ptr %i.bb, align 8, !tbaa !67, !alias.scope !431, !noalias !428
  store i8 0, ptr %i.at, align 8, !tbaa !43, !alias.scope !431, !noalias !428
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !427

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !322
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !247
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !246
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %4
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJS1_EEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #18 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !320
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  switch i64 %magicptr, label %.preheader.i.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i.i:                                   ; preds = %bb.a, %.critedge.i.i.i
  %i.f = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.030.0 = phi ptr [ %i.g, %.critedge.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i
    i64 -8, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !117
  br label %.preheader.i.i, !llvm.loop !330

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !389
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !389
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 25
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #24 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext true) #18
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit

_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !43
  store ptr %i.l, ptr %i.d, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !318
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !318
  %i.t = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #18
  %i.u = load ptr, ptr %0, align 8, !tbaa !320
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %.critedge.i.i.i25, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit ], [ %i.y, %.critedge.i.i.i25 ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0, align 8, !tbaa !117
  %magicptr.i.i.i24 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i.i.i24, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i25
    i64 -8, label %.critedge.i.i.i25
  ]

.critedge.i.i.i25:                                ; preds = %.preheader.i.i23, %.preheader.i.i23
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i23, !llvm.loop !330

_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i23, %.preheader.i.i
  %.sroa.030.0.pn = phi ptr [ %.sroa.030.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i23 ]
  %.pn31 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i23 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn31, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !15, i64 81}
!8 = !{!"_ZTSN4llvh16FileCheckRequestE", !9, i64 0, !15, i64 24, !9, i64 32, !9, i64 56, !15, i64 80, !15, i64 81, !15, i64 82, !15, i64 83, !15, i64 84, !15, i64 85}
!9 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !10, i64 0}
!10 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !11, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!19, !4, i64 132}
!19 = !{!"_ZTSN4llvh16FileCheckPatternE", !20, i64 0, !22, i64 8, !24, i64 24, !26, i64 56, !31, i64 80, !40, i64 128, !4, i64 132}
!20 = !{!"_ZTSN4llvh5SMLocE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !14, i64 0}
!22 = !{!"_ZTSN4llvh9StringRefE", !21, i64 0, !23, i64 8}
!23 = !{!"long", !5, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !23, i64 8, !5, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!26 = !{!"_ZTSSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSSt4pairIN4llvh9StringRefEjE", !14, i64 0}
!31 = !{!"_ZTSSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE", !32, i64 0}
!32 = !{!"_ZTSSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !33, i64 0}
!33 = !{!"_ZTSNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !34, i64 0, !36, i64 8}
!34 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvh9StringRefEEE", !35, i64 0}
!35 = !{!"_ZTSSt4lessIN4llvh9StringRefEE"}
!36 = !{!"_ZTSSt15_Rb_tree_header", !37, i64 0, !23, i64 32}
!37 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!38 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!39 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!40 = !{!"_ZTSN4llvh5Check13FileCheckTypeE", !5, i64 0}
!41 = !{!21, !21, i64 0}
!42 = !{!8, !15, i64 24}
!43 = !{!5, !5, i64 0}
!44 = !{!23, !23, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !49, i64 16}
!48 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !49, i64 16, !49, i64 17}
!49 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4llvhplEPKcRKNS_9StringRefE: argument 0"}
!52 = distinct !{!52, !"_ZN4llvhplEPKcRKNS_9StringRefE"}
!53 = !{!48, !49, i64 17}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
end_hunk_4
