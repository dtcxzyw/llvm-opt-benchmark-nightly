inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb18UnionBoundCastDataESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEEvT_T0_SH_T1_RT2_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17: ; preds = %bb.l, %bb.k, %bb.j
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !109
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !105
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !100
  %.pre.i.i18 = load ptr, ptr %i.bc, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i13

.thread.i.i20:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !105
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !109
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !109
  %i.bu = load i64, ptr %i.bh, align 8, !tbaa !100
  store i64 %i.bu, ptr %i.be, align 8, !tbaa !100
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10
  %i.bv = load i64, ptr %i.be, align 8, !tbaa !100
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !105
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !109
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !109
  %i.bz = load i64, ptr %i.bh, align 8, !tbaa !100
  store i64 %i.bz, ptr %i.be, align 8, !tbaa !100
  %.not.i.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !105
  store i64 %i.bv, ptr %i.bh, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i13

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11, %.thread.i.i20
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i13: ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17, %bb.i
  %i.ca = phi ptr [ %i.bd, %bb.m ], [ %i.bh, %bb.n ], [ %i.bg, %bb.i ], [ %.pre.i.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i17 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.cb, align 8, !tbaa !109
  store i8 0, ptr %i.ca, align 1, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ce = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #28 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !384
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !384
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !28
  store ptr null, ptr %i.cl, align 8, !tbaa !28
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !28 ; 3 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !28
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit21, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i15

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i13
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #28, !inline_history !1452
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit21

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit21:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i13, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !57
  store i8 %i.a, ptr %0, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !134  ; 8 uses
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !135
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8, !tbaa !136
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !138
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !1459
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !1459
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, !prof !140

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !134 ; 8 uses
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !135
  %.not.i.i.i.i4.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !138
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #28, !inline_history !1459
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #28, !inline_history !1459
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i5.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i7.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i7.i, 1
  br i1 %i.ap, label %bb.m, label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !140

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #28
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i, %bb.m
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN6duckdb18UnionBoundCastDataEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::UnionBoundCastData", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !393
  store i8 %i.c, ptr %i.a, align 8, !tbaa !393
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109  ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8, !tbaa !105
  %i.n = load i64, ptr %i.h, align 8, !tbaa !100
  store i64 %i.n, ptr %i.f, align 8, !tbaa !100
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit

_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i64 %i.o, ptr %i.q, align 8, !tbaa !109
  store ptr %i.h, ptr %i.e, align 8, !tbaa !105
  store i64 0, ptr %i.p, align 8, !tbaa !109
  store i8 0, ptr %i.h, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !384
  store i64 %i.v, ptr %i.t, align 8, !tbaa !384
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !28
  store ptr null, ptr %i.z, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !393
  store i8 %i.ac, ptr %i.b, align 8, !tbaa !393
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !105 ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit
  br i1 %i.ai, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6duckdb18UnionBoundCastDataC2EOS0_.exit
  br i1 %i.ai, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !109 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.d, !prof !140

bb.d:                                             ; preds = %bb.c
  switch i64 %i.ak, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !100
  store i8 %i.am, ptr %i.ae, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !109 ; 2 uses
  store i64 %i.an, ptr %i.p, align 8, !tbaa !109
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !100
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !109
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !109
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !100
  store i64 %i.as, ptr %i.h, align 8, !tbaa !100
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.at = load i64, ptr %i.h, align 8, !tbaa !100
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !105
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !109
  store i64 %i.av, ptr %i.p, align 8, !tbaa !109
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !100
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !105
  store i64 %i.at, ptr %i.ah, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.c
  %i.ax = phi ptr [ %i.ae, %bb.g ], [ %i.ah, %bb.h ], [ %i.ag, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !109
  store i8 0, ptr %i.ax, align 1, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.az) #28 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !384
  store i64 %i.bc, ptr %i.u, align 8, !tbaa !384
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28
  store ptr null, ptr %i.be, align 8, !tbaa !28
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  store ptr %i.bf, ptr %i.z, align 8, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #28, !inline_history !1452
  br label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i.i.i.i.i
  %i.bk = load i8, ptr %i.a, align 8, !tbaa !393
  store i8 %i.bk, ptr %i.ab, align 8, !tbaa !393
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !105 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, %i.f                 ; 2 uses
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  br i1 %i.bp, label %bb.i, label %.thread.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit
  br i1 %i.bp, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !109 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  switch i64 %i.bq, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !100
  store i8 %i.bs, ptr %i.bl, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12: ; preds = %bb.k, %bb.j, %bb.i
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !109 ; 2 uses
  store i64 %i.bt, ptr %i.ay, align 8, !tbaa !109
  %i.bu = load ptr, ptr %i.ad, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !100
  %.pre.i.i13 = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8

.thread.i.i15:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  store ptr %i.bo, ptr %i.ad, align 8, !tbaa !105
  %i.bw = load <2 x i64>, ptr %i.q, align 8, !tbaa !100
  store <2 x i64> %i.bw, ptr %i.ay, align 8, !tbaa !100
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !100
  store ptr %i.bo, ptr %i.ad, align 8, !tbaa !105
  %i.by = load <2 x i64>, ptr %i.q, align 8, !tbaa !100
  store <2 x i64> %i.by, ptr %i.ay, align 8, !tbaa !100
  %.not.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !105
  store i64 %i.bx, ptr %i.f, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6, %.thread.i.i15
  store ptr %i.f, ptr %i.d, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12
  %3 = phi ptr [ %i.bl, %bb.l ], [ %i.f, %bb.m ], [ %.pre.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i12 ]
  store i64 0, ptr %i.q, align 8, !tbaa !109
  store i8 0, ptr %3, align 1, !tbaa !100
  %i.bz = load i8, ptr %i.r, align 8, !tbaa !57
  store i8 %i.bz, ptr %i.az, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !255
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !255
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !135
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !135
  store <2 x ptr> %i.cg, ptr %i.cd, align 8, !tbaa !135
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !135
  %i.ch = load i64, ptr %i.t, align 8, !tbaa !384
  store i64 %i.ch, ptr %i.bb, align 8, !tbaa !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 16, i1 false)
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !28
  store ptr null, ptr %i.y, align 8, !tbaa !28
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !28 ; 3 uses
  store ptr %i.ci, ptr %i.be, align 8, !tbaa !28
  %.not.i.i.i.i.i.i.i9 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i9, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16.thread, label %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !30
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #28, !inline_history !1452
  %.pr18 = load ptr, ptr %i.y, align 8, !tbaa !28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %2, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %.pr18, null
  br i1 %.not.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i: ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16
  %i.cn = load ptr, ptr %.pr18, align 8, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr18) #28, !inline_history !1438
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb13BoundCastInfoD2Ev.exit.i:             ; preds = %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16.thread, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i, %_ZN6duckdb18UnionBoundCastDataaSEOS0_.exit16
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #28, !inline_history !1439
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !105 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.f
  br i1 %i.cr, label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cq) #30, !inline_history !1439
  br label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit

_ZN6duckdb18UnionBoundCastDataD2Ev.exit:          ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb18UnionBoundCastDataESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnionBoundCastData", align 8 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.022 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.0.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not21.i.i = icmp eq ptr %3, %0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.025 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %.sroa.0.0, %bb.m ] ; 5 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %bb.m ] ; 10 uses
  %i.v = call noundef zeroext i1 %2(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.025, ptr noundef nonnull align 8 dereferenceable(104) %0), !inline_history !1453
  br i1 %i.v, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %3, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24, i64 112
  %i.x = load i8, ptr %i.w, align 8, !tbaa !393
  store i8 %i.x, ptr %i.b, align 8, !tbaa !393
  %i.y = getelementptr inbounds nuw i8, ptr %.pn24, i64 120 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !108
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn24, i64 136 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn24, i64 128
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !109 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.z, ptr %i.c, align 8, !tbaa !105
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !100
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn24, i64 128 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !109
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !105
  store i64 0, ptr %i.ah, align 8, !tbaa !109
  store i8 0, ptr %i.aa, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn24, i64 152
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn24, i64 176
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !384
  store i64 %i.al, ptr %i.g, align 8, !tbaa !384
  %i.am = getelementptr inbounds nuw i8, ptr %.pn24, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.pn24, i64 200 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !28
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !28
  store ptr null, ptr %i.an, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24, i64 208
  %i.aq = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN6duckdb18UnionBoundCastDataES5_EET0_T_S7_S6_(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.0.025, ptr noundef nonnull %i.ap) ; 0 uses
  %i.ar = load i8, ptr %i.b, align 8, !tbaa !393
  store i8 %i.ar, ptr %i.j, align 8, !tbaa !393
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !105 ; 6 uses
  %i.at = icmp eq ptr %i.as, %i.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !105 ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.d                 ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  br i1 %i.av, label %bb.f, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  br i1 %i.av, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !109 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.g, !prof !140

bb.g:                                             ; preds = %bb.f
  switch i64 %i.aw, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !100
  store i8 %i.ay, ptr %i.as, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.az = load i64, ptr %i.e, align 8, !tbaa !109 ; 2 uses
  store i64 %i.az, ptr %i.m, align 8, !tbaa !109
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !100
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  store ptr %i.au, ptr %i.k, align 8, !tbaa !105
  %i.bc = load <2 x i64>, ptr %i.e, align 8, !tbaa !100
  store <2 x i64> %i.bc, ptr %i.m, align 8, !tbaa !100
  br label %bb.k
end_hunk_0
