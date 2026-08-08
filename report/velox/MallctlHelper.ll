inline.NumInlined: 494
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNS_5RangeIPKcEES9_S9_S8_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.z = add i64 %i.v, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.ac = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27 ]
  %.not.i.i.i24 = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i.i24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23
  %.not8.i.i.i25 = icmp eq ptr %.sroa.2.0.copyload.i17, %.sroa.0.0.copyload.i15
  br i1 %.not8.i.i.i25, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i26 = icmp eq i64 %i.v, 1
  br i1 %cond.i.i.i26, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = load i8, ptr %.sroa.0.0.copyload.i15, align 1, !tbaa !28
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !28
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.0.0.copyload.i15, i64 %i.v, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.w, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i15, i64 noundef %i.v)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.z, ptr %i.e, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !28
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !12 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12 ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.ak = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = load i64, ptr %i.e, align 8, !tbaa !27  ; 5 uses
  %i.an = sub i64 9223372036854775807, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29

bb.n:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28
  %i.ap = add i64 %i.al, %i.am                    ; 3 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.as = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.at = load i64, ptr %i.k, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35
  %i.au = phi i64 [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35 ]
  %.not.i.i.i32 = icmp ugt i64 %i.ap, %i.au
  br i1 %.not.i.i.i32, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31
  %.not8.i.i.i33 = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i33, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am ; 2 uses
  %cond.i.i.i34 = icmp eq i64 %i.al, 1
  br i1 %cond.i.i.i34, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !28
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !28
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.al, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.am, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.al)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36: ; preds = %bb.o, %bb.q, %bb.r, %bb.s
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !27
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 0, ptr %i.ay, align 1, !tbaa !28
  %i.az = load ptr, ptr %3, align 8, !tbaa !12    ; 5 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36
  %i.ba = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #22 ; 6 uses
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !27  ; 5 uses
  %i.bc = sub i64 9223372036854775807, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37: ; preds = %bb.t
  %i.be = add i64 %i.bb, %i.ba                    ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.k
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.bh = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43 ]
  %.not.i.i.i40 = icmp ugt i64 %i.be, %i.bj
  br i1 %.not.i.i.i40, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39
  %.not8.i.i.i41 = icmp eq i64 %i.ba, 0
  br i1 %.not8.i.i.i41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb ; 2 uses
  %cond.i.i.i42 = icmp eq i64 %i.ba, 1
  br i1 %cond.i.i.i42, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !28
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bb, i64 noundef 0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  store i64 %i.be, ptr %i.e, align 8, !tbaa !27
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 0, ptr %i.bn, align 1, !tbaa !28
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(21) %1) #5
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 17 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !61    ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 99, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i8, ptr %0, align 1, !tbaa !81      ; 5 uses
  %i.h = icmp slt i8 %i.g, 0
  %.1.i.i66.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %.1.i.i66.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.b, i64 66 ; 7 uses
  %.2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i8 0, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !104
  switch i8 %i.k, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.not = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.060 = phi i8 [ 45, %bb.b ], [ 0, %bb.e ], [ 32, %bb.d ], [ 43, %bb.c ]
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  switch i8 %i.e, label %bb.ah [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
    i8 0, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !105, !range !106, !noundef !39
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !66

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !107, !range !106, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !66

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i8 %.0 to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.18, i64 noundef %i.s) #22
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !12
  br label %bb.ai

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !105, !range !106, !noundef !39
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !66

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.ab = zext i8 %.0 to i64
  %i.ac = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !107, !range !106, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ai

bb.m:                                             ; preds = %bb.f, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !105, !range !106, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !66

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !107, !range !106, !noundef !39
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !66

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.0, ptr %i.an, align 1, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !12
  br label %bb.ai

bb.p:                                             ; preds = %bb.f, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !107, !range !106, !noundef !39
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !66

bb.q:                                             ; preds = %bb.p
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.as, ptr %i.c, align 8, !tbaa !12
  %i.at = zext i8 %.0 to i64
  %i.au = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28
  store i8 %i.aw, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !28
  %i.ax = icmp ugt i8 %.0, 7
  br i1 %i.ax, label %bb.r, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.r:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28
  store i8 %i.az, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !28
  %i.ba = icmp ugt i8 %.0, 63
  br i1 %i.ba, label %bb.s, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !28
  store i8 %i.bb, ptr %.2.i.sroa.gep, align 16, !tbaa !28
  br label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit:     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %bb.r, %bb.s
  %.2.i.sroa.phi = phi ptr [ %.2.i.sroa.gep, %bb.s ], [ %.1.i.i66.sroa.gep, %bb.r ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !105, !range !106, !noundef !39
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit
  %i.bf = getelementptr inbounds i8, ptr %.2.i.sroa.phi, i64 -1 ; 2 uses
  store i8 48, ptr %i.bf, align 1, !tbaa !28
  br label %bb.ai

bb.u:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !107, !range !106, !noundef !39
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !66

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !12
  %i.bk = zext i8 %.0 to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28
  store i8 %i.bn, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !28
  %i.bo = icmp ugt i8 %.0, 15
  br i1 %i.bo, label %bb.w, label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

bb.w:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !28
  store i8 %i.bp, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !28
  br label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %bb.w
  %.1.i.i.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.w ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !105, !range !106, !noundef !39
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit
  %i.bt = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -1
  store i8 120, ptr %i.bt, align 1, !tbaa !28
  %i.bu = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.bu, align 1, !tbaa !28
  br label %bb.ai

bb.y:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !107, !range !106, !noundef !39
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !66

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.by, ptr %i.c, align 8, !tbaa !12
  %i.bz = zext i8 %.0 to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  store i8 %i.cc, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !28
  %i.cd = icmp ugt i8 %.0, 15
  br i1 %i.cd, label %bb.aa, label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

bb.aa:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !28
  store i8 %i.ce, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !28
  br label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %bb.aa
  %.1.i.i66.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.aa ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !105, !range !106, !noundef !39
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit
  %i.ci = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -1
  store i8 88, ptr %i.ci, align 1, !tbaa !28
  %i.cj = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.cj, align 1, !tbaa !28
  br label %bb.ai

bb.ac:                                            ; preds = %bb.f, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !107, !range !106, !noundef !39
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ad, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67, !prof !66

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67: ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !12
  %i.co = icmp eq i8 %.0, 0
  br i1 %i.co, label %bb.ae, label %.preheader18.split.us.i

.preheader18.split.us.i:                          ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cq = zext i8 %.0 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 1
  store i64 %i.cs, ptr %i.cp, align 1
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67
  store i8 48, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !28
  br label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit

bb.af:                                            ; preds = %bb.af, %.preheader18.split.us.i
  %.1.i = phi i64 [ %i.cw, %bb.af ], [ 59, %.preheader18.split.us.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !28
  %i.cv = icmp eq i8 %i.cu, 48
  %i.cw = add i64 %.1.i, 1
  br i1 %i.cv, label %bb.af, label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, !llvm.loop !108

_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit:    ; preds = %bb.af, %bb.ae
  %.0.i = phi i64 [ 66, %bb.ae ], [ %.1.i, %bb.af ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !105, !range !106, !noundef !39
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -1
  store i8 %i.e, ptr %i.db, align 1, !tbaa !28
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 -2 ; 2 uses
  store i8 48, ptr %i.dc, align 1, !tbaa !28
  br label %bb.ai

bb.ah:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.3) #24
  unreachable

bb.ai:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, %bb.ag, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit, %bb.x, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit, %bb.t, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, %bb.l, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.z, %bb.l ], [ %i.z, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ %i.an, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.bf, %bb.t ], [ %.2.i.sroa.phi, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ %i.bu, %bb.x ], [ %.1.i.i.sroa.phi, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ %i.cj, %bb.ab ], [ %.1.i.i66.sroa.phi, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ %i.dc, %bb.ag ], [ %i.cx, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.l ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.t ], [ 0, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ 2, %bb.ag ], [ 0, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.dd, align 1, !tbaa !28
  %i.de = add nuw nsw i32 %.057, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.159 = phi ptr [ %i.dd, %bb.aj ], [ %.058, %bb.ai ]
  %.1 = phi i32 [ %i.de, %bb.aj ], [ %.057, %bb.ai ]
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.df, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !94    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.b, align 1, !tbaa !94
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %2, 0
  %i.e = icmp eq i8 %i.c, 3
  %or.cond = and i1 %.not, %i.e
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %2 to i64                       ; 3 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.f) ; 5 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27   ; 5 uses
  %i.m = sub i64 9223372036854775807, %i.l
  %i.n = icmp ult i64 %i.m, %.sroa.speculated.i
  br i1 %i.n, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.o = add i64 %i.l, %.sroa.speculated.i        ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.o, %i.u
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %1, %0
  br i1 %.not8.i.i.i, label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %cond.i.i.i = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.w, ptr %i.v, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %0, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 0, ptr noundef %0, i64 noundef %.sroa.speculated.i)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.o, ptr %i.k, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store i8 0, ptr %i.y, align 1, !tbaa !28
  %i.z = icmp ult i64 %i.i, %i.f
  br i1 %i.z, label %bb.k, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !66

bb.k:                                             ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.11) #5
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !52
  %i.ad = sub nsw i32 %i.ac, %2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  store i32 %.sroa.speculated, ptr %i.ab, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %0, %bb.b ], [ %i.aa, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %0, %bb.c ]
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0, ptr %1, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  %i.a = load i8, ptr %2, align 1, !tbaa !28
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(31) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #5
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  %i.a = load i8, ptr %2, align 1, !tbaa !28
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(26) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #5
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !68
  %i.b = icmp ult i64 %2, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %2, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !109
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !68
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !68
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !68
  %i.j = icmp ult i64 %2, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !68
  %i.l = icmp ult i64 %2, %i.k
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !66

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !68
  %i.n = icmp ult i64 %2, %i.m
  br i1 %i.n, label %.loopexit, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm:bb.a
  %i.p = icmp ult i64 %2, %i.o
  br i1 %i.p, label %.loopexit, label %bb.h, !prof !66

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !68
  %i.r = icmp ult i64 %2, %i.q
  br i1 %i.r, label %.loopexit, label %bb.i, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !68
  %i.t = icmp ult i64 %2, %i.s
  br i1 %i.t, label %.loopexit, label %bb.j, !prof !66

bb.j:                                             ; preds = %bb.i
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !68
  %i.v = icmp ult i64 %2, %i.u
  br i1 %i.v, label %.loopexit, label %bb.k, !prof !66

bb.k:                                             ; preds = %bb.j
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !68
  %i.x = icmp ult i64 %2, %i.w
  br i1 %i.x, label %.loopexit, label %bb.l, !prof !66

bb.l:                                             ; preds = %bb.k
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !68
  %i.z = icmp ult i64 %2, %i.y
  br i1 %i.z, label %.loopexit, label %bb.m, !prof !66

bb.m:                                             ; preds = %bb.l
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !68
  %i.ab = icmp ult i64 %2, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.n, !prof !66

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !68
  %i.ad = icmp ult i64 %2, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.o, !prof !66

bb.o:                                             ; preds = %bb.n
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !68
  %i.af = icmp ult i64 %2, %i.ae
  br i1 %i.af, label %.loopexit, label %bb.p, !prof !66

bb.p:                                             ; preds = %bb.o
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !68
  %i.ah = icmp ult i64 %2, %i.ag
  br i1 %i.ah, label %.loopexit, label %bb.q, !prof !66

bb.q:                                             ; preds = %bb.p
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !68
  %i.aj = icmp ult i64 %2, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.r, !prof !66

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !68
  %i.al = icmp ult i64 %2, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.s, !prof !66

bb.s:                                             ; preds = %bb.r
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !68
  %i.an = icmp ult i64 %2, %i.am
  br i1 %i.an, label %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit, label %.loopexit, !prof !66

_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit: ; preds = %bb.s
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit
  %i.ao = phi i1 [ true, %bb.s ], [ false, %bb.a ], [ true, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ]
  %i.ap = phi i64 [ 20, %bb.s ], [ 1, %bb.a ], [ 19, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 11, %bb.k ], [ 12, %bb.l ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ], [ 16, %bb.p ], [ 17, %bb.q ], [ 18, %bb.r ] ; 5 uses
  %i.aq = icmp ult ptr %1, %0
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = ptrtoint ptr %0 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, %i.ap
  %i.av = or i1 %i.aq, %i.au
  br i1 %i.av, label %_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit, label %.preheader, !prof !66

.preheader:                                       ; preds = %.loopexit
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0.i39 = phi i64 [ %i.ax, %.lr.ph ], [ %2, %.preheader ] ; 2 uses
  %.014.i8 = phi i64 [ %i.aw, %.lr.ph ], [ %i.ap, %.preheader ]
  %i.aw = add i64 %.014.i8, -2                    ; 4 uses
  %i.ax = udiv i64 %.0.i39, 100                   ; 2 uses
  %i.ay = urem i64 %.0.i39, 100
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !110
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  store i16 %i.ba, ptr %i.bb, align 1
  %i.bc = icmp ugt i64 %i.aw, 2
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.014.i.lcssa = phi i64 [ %i.ap, %.preheader ], [ %i.aw, %.lr.ph ]
  %.0.i3.lcssa = phi i64 [ %2, %.preheader ], [ %i.ax, %.lr.ph ]
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i3.lcssa
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !110 ; 2 uses
  %i.bf = icmp eq i64 %.014.i.lcssa, 2
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  store i16 %i.be, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit

bb.u:                                             ; preds = %._crit_edge
  %i.bg = lshr i16 %i.be, 8
  %i.bh = trunc nuw i16 %i.bg to i8
  store i8 %i.bh, ptr %0, align 1, !tbaa !28
  br label %_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit

_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit: ; preds = %bb.u, %bb.t, %.loopexit
  %.0.i = phi i64 [ 0, %.loopexit ], [ %i.ap, %bb.t ], [ %i.ap, %bb.u ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(45) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
  %i.a = load i8, ptr %2, align 1, !tbaa !28
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(45) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #5
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE6formatINS_6detail27BaseFormatterAppendToStringIS6_EEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.6", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !61
  switch i8 %i.k, label %bb.c [
    i8 115, label %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
    i8 0, label %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ], !prof !83

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(2) @.str.3) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.b, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !12
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.l = tail call noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %1)
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp ugt i64 %i.s, %i.m
  br i1 %.not.i, label %_ZNK5folly5RangeIPKcE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.11) #5
  unreachable

_ZNK5folly5RangeIPKcE2atEm.exit:                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28
  store i8 %i.u, ptr %3, align 1, !tbaa !81
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE2atEm.exit, %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIivE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 31 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !61    ; 4 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i32, ptr %0, align 4, !tbaa !113    ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i32 0, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !104
  switch i8 %i.k, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.not = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.060 = phi i8 [ 45, %bb.b ], [ 0, %bb.e ], [ 32, %bb.d ], [ 43, %bb.c ]
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  switch i8 %i.e, label %bb.ag [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
    i8 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !105, !range !106, !noundef !39
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !66

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !107, !range !106, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !66

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i32 %.0 to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.18, i64 noundef %i.s) #22
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !12
  br label %bb.ah

bb.j:                                             ; preds = %bb.f, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !105, !range !106, !noundef !39
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !66

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.ab = zext i32 %.0 to i64
  %i.ac = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !107, !range !106, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ah

bb.m:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !105, !range !106, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !66

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !107, !range !106, !noundef !39
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !66

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.ao = trunc i32 %.0 to i8
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !12
  br label %bb.ah

bb.p:                                             ; preds = %bb.f, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !107, !range !106, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !66

bb.q:                                             ; preds = %bb.p
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.at, ptr %i.c, align 8, !tbaa !12
  %i.au = icmp ult i32 %.0, 512
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %.lr.ph.i
  %.028.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %.02527.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 3 uses
  %i.av = and i32 %.02527.i, 511
  %i.aw = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.ax ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28
  %i.bd = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = getelementptr i8, ptr %i.bd, i64 -1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !28
  %i.bi = lshr i32 %.02527.i, 9                   ; 2 uses
  %i.bj = icmp ult i32 %.02527.i, 262144
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %.025.lcssa.i = phi i32 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.bi, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.aw, %.lr.ph.i ] ; 3 uses
  %i.bk = zext nneg i32 %.025.lcssa.i to i64
  %i.bl = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.bo = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !28
  %i.bq = icmp samesign ugt i32 %.025.lcssa.i, 7
  br i1 %i.bq, label %bb.r, label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

bb.r:                                             ; preds = %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = add i64 %.0.lcssa.i, -2                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !28
  %i.bv = icmp samesign ugt i32 %.025.lcssa.i, 63
  br i1 %i.bv, label %bb.s, label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

bb.s:                                             ; preds = %bb.r
  %i.bw = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bx = add i64 %.0.lcssa.i, -3                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !28
  br label %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit:     ; preds = %._crit_edge.i, %bb.r, %bb.s
  %.2.i = phi i64 [ %i.bx, %bb.s ], [ %i.bt, %bb.r ], [ %i.bo, %._crit_edge.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !105, !range !106, !noundef !39
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 2 uses
  store i8 48, ptr %i.cd, align 1, !tbaa !28
  br label %bb.ah

bb.u:                                             ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !107, !range !106, !noundef !39
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !66

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !12
  %i.ci = icmp ult i32 %.0, 256
  br i1 %i.ci, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 2 uses
  %.02223.i.i = phi i32 [ %i.ct, %.lr.ph.i.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.cj = and i32 %.02223.i.i, 255
  %i.ck = add nsw i64 %.024.i.i, -2               ; 3 uses
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !28
  %i.cr = getelementptr i8, ptr %i.b, i64 %.024.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !28
  %i.ct = lshr i32 %.02223.i.i, 8                 ; 2 uses
  %i.cu = icmp ult i32 %.02223.i.i, 65536
  br i1 %i.cu, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !116

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %.022.lcssa.i.i = phi i32 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.ct, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.ck, %.lr.ph.i.i ] ; 2 uses
  %i.cv = zext nneg i32 %.022.lcssa.i.i to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.cz = add i64 %.0.lcssa.i.i, -1               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !28
  %i.db = icmp samesign ugt i32 %.022.lcssa.i.i, 15
  br i1 %i.db, label %bb.w, label %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !28
  %i.dd = add i64 %.0.lcssa.i.i, -2               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dd
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !28
  br label %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit:  ; preds = %._crit_edge.i.i, %bb.w
  %.1.i.i = phi i64 [ %i.dd, %bb.w ], [ %i.cz, %._crit_edge.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !105, !range !106, !noundef !39
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 -1
  store i8 120, ptr %i.dj, align 1, !tbaa !28
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 -2 ; 2 uses
  store i8 48, ptr %i.dk, align 1, !tbaa !28
  br label %bb.ah

bb.y:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !107, !range !106, !noundef !39
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !66

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.do, ptr %i.c, align 8, !tbaa !12
  %i.dp = icmp ult i32 %.0, 256
  br i1 %i.dp, label %._crit_edge.i.i69, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %.lr.ph.i.i66
  %.024.i.i67 = phi i64 [ %i.dr, %.lr.ph.i.i66 ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 2 uses
  %.02223.i.i68 = phi i32 [ %i.ea, %.lr.ph.i.i66 ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.dq = and i32 %.02223.i.i68, 255
  %i.dr = add nsw i64 %.024.i.i67, -2             ; 3 uses
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dr
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = getelementptr i8, ptr %i.b, i64 %.024.i.i67
  %i.dz = getelementptr i8, ptr %i.dy, i64 -1
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !28
  %i.ea = lshr i32 %.02223.i.i68, 8               ; 2 uses
  %i.eb = icmp ult i32 %.02223.i.i68, 65536
  br i1 %i.eb, label %._crit_edge.i.i69, label %.lr.ph.i.i66, !llvm.loop !116

._crit_edge.i.i69:                                ; preds = %.lr.ph.i.i66, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %.022.lcssa.i.i70 = phi i32 [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ], [ %i.ea, %.lr.ph.i.i66 ] ; 2 uses
  %.0.lcssa.i.i71 = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ], [ %i.dr, %.lr.ph.i.i66 ] ; 2 uses
  %i.ec = zext nneg i32 %.022.lcssa.i.i70 to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !28
  %i.eg = add i64 %.0.lcssa.i.i71, -1             ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eg
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !28
  %i.ei = icmp samesign ugt i32 %.022.lcssa.i.i70, 15
  br i1 %i.ei, label %bb.aa, label %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit

bb.aa:                                            ; preds = %._crit_edge.i.i69
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !28
  %i.ek = add i64 %.0.lcssa.i.i71, -2             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ek
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !28
  br label %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit:  ; preds = %._crit_edge.i.i69, %bb.aa
  %.1.i.i72 = phi i64 [ %i.ek, %bb.aa ], [ %i.eg, %._crit_edge.i.i69 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i72 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !105, !range !106, !noundef !39
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 -1
  store i8 88, ptr %i.eq, align 1, !tbaa !28
  %i.er = getelementptr inbounds i8, ptr %i.em, i64 -2 ; 2 uses
  store i8 48, ptr %i.er, align 1, !tbaa !28
  br label %bb.ah

bb.ac:                                            ; preds = %bb.f, %bb.f
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.et = load i8, ptr %i.es, align 4, !tbaa !107, !range !106, !noundef !39
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ad, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73, !prof !66

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73: ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.ev, ptr %i.c, align 8, !tbaa !12
  %i.ew = icmp eq i32 %.0, 0
  br i1 %i.ew, label %bb.ae, label %.preheader19.i

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 48, ptr %i.ex, align 2, !tbaa !28
  br label %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit

.preheader19.i:                                   ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73, %.preheader19.i
  %.01621.i = phi i64 [ %i.ez, %.preheader19.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73 ]
  %.01720.i = phi i32 [ %i.fe, %.preheader19.i ], [ %.0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit73 ] ; 2 uses
  %i.ey = and i32 %.01720.i, 255
  %i.ez = add nsw i64 %.01621.i, -8               ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ez
  %i.fb = zext nneg i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 1
  store i64 %i.fd, ptr %i.fa, align 1
  %i.fe = lshr i32 %.01720.i, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !117

.preheader.i:                                     ; preds = %.preheader19.i, %.preheader.i
  %.1.i = phi i64 [ %i.fi, %.preheader.i ], [ %i.ez, %.preheader19.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !28
  %i.fh = icmp eq i8 %i.fg, 48
  %i.fi = add i64 %.1.i, 1
  br i1 %i.fh, label %.preheader.i, label %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit, !llvm.loop !118

_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit:    ; preds = %.preheader.i, %bb.ae
  %.0.i = phi i64 [ 66, %bb.ae ], [ %.1.i, %.preheader.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !105, !range !106, !noundef !39
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 -1
  store i8 %i.e, ptr %i.fn, align 1, !tbaa !28
  %i.fo = getelementptr inbounds i8, ptr %i.fj, i64 -2 ; 2 uses
  store i8 48, ptr %i.fo, align 1, !tbaa !28
  br label %bb.ah

bb.ag:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.3) #24
  unreachable

bb.ah:                                            ; preds = %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit, %bb.af, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit, %bb.x, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit, %bb.t, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, %bb.l, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.z, %bb.l ], [ %i.z, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ %i.an, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.cd, %bb.t ], [ %i.bz, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ %i.dk, %bb.x ], [ %i.df, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ %i.er, %bb.ab ], [ %i.em, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ %i.fo, %bb.af ], [ %i.fj, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.l ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.t ], [ 0, %_ZN5folly6detail11uintToOctalIjEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexLowerIjEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail14uintToHexUpperIjEEmPcmT_.exit ], [ 2, %bb.af ], [ 0, %_ZN5folly6detail12uintToBinaryIjEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.fp, align 1, !tbaa !28
  %i.fq = add nuw nsw i32 %.057, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.159 = phi ptr [ %i.fp, %bb.ai ], [ %.058, %bb.ah ]
  %.1 = phi i32 [ %i.fq, %bb.ai ], [ %.057, %bb.ah ]
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.fr, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_ENKUlNS_5RangeIPKcEEE_clESU_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not42 = icmp eq ptr %1, %2
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.q
  %i.b = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.b, %2
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01743 = phi ptr [ %1, %.lr.ph ], [ %i.b, %bb.b ] ; 9 uses
  %i.c = ptrtoint ptr %.01743 to i64              ; 2 uses
  %i.d = sub i64 %i.a, %i.c                       ; 6 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %.01743, i32 noundef 125, i64 noundef %i.d) #25 ; 3 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !119, !nonnull !39, !align !40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.l = add i64 %i.i, %i.d                       ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %.01743, align 1, !tbaa !28
  store i8 %i.t, ptr %i.s, align 1, !tbaa !28
  br label %.thread

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.01743, i64 %i.d, i1 false)
  br label %.thread

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.i, i64 noundef 0, ptr noundef %.01743, i64 noundef %i.d)
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !27
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !28
  br label %.loopexit

bb.j:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !119, !nonnull !39, !align !40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48, !nonnull !39, !align !40 ; 5 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.z, %i.c                      ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23: ; preds = %bb.j
  %i.af = add i64 %i.ac, %i.aa                    ; 3 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !24  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29 ]
  %.not.i.i.i26 = icmp ugt i64 %i.af, %i.al
  br i1 %.not.i.i.i26, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25
  %.not8.i.i.i27 = icmp eq ptr %i.w, %.01743
  br i1 %.not8.i.i.i27, label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i.i28 = icmp eq i64 %i.aa, 1
  br i1 %cond.i.i.i28, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr %.01743, align 1, !tbaa !28
  store i8 %i.an, ptr %i.am, align 1, !tbaa !28
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %.01743, i64 %i.aa, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ac, i64 noundef 0, ptr noundef %.01743, i64 noundef %i.aa)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30: ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !27
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  store i8 0, ptr %i.ap, align 1, !tbaa !28
  %i.aq = icmp eq ptr %i.w, %2
  br i1 %i.aq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30
  %i.ar = load i8, ptr %i.w, align 1, !tbaa !28
  %.not22 = icmp eq i8 %i.ar, 125
  br i1 %.not22, label %bb.b, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit30
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJPKcEEEvDpT0_(ptr noundef nonnull @.str.28) #5
  unreachable

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  ret void
}

declare void @_ZN5folly9FormatArg8initSlowEv(ptr noundef nonnull align 8 dereferenceable(84)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA55_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(55) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !12
end_hunk_1
