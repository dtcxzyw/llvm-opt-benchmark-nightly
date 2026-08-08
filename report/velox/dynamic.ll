inline.NumInlined: 2716
inline.NumDeleted: 1111
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNS_5RangeIPKcEES9_S9_S8_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.z = add i64 %i.v, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.ac = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !34
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
  %i.ag = load i8, ptr %.sroa.0.0.copyload.i15, align 1, !tbaa !34
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !34
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.0.0.copyload.i15, i64 %i.v, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.w, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i15, i64 noundef %i.v)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.z, ptr %i.e, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !34
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !18 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18 ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.ak = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = load i64, ptr %i.e, align 8, !tbaa !31  ; 5 uses
  %i.an = sub i64 9223372036854775807, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29

bb.n:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28
  %i.ap = add i64 %i.al, %i.am                    ; 3 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.as = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.at = load i64, ptr %i.k, align 8, !tbaa !34
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
  %i.aw = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !34
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !34
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.al, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.am, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.al)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36: ; preds = %bb.o, %bb.q, %bb.r, %bb.s
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !31
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 0, ptr %i.ay, align 1, !tbaa !34
  %i.az = load ptr, ptr %3, align 8, !tbaa !18    ; 5 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36
  %i.ba = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #33 ; 6 uses
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !31  ; 5 uses
  %i.bc = sub i64 9223372036854775807, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37: ; preds = %bb.t
  %i.be = add i64 %i.bb, %i.ba                    ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.k
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.bh = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !34
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
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !34
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bb, i64 noundef 0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  store i64 %i.be, ptr %i.e, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 0, ptr %i.bn, align 1, !tbaa !34
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(21) %1) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 17 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !58    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 99, i8 %i.e ; 3 uses
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i8, ptr %0, align 1, !tbaa !77      ; 5 uses
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
  %i.k = load i8, ptr %i.j, align 2, !tbaa !102
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  switch i8 %spec.store.select, label %bb.ah [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !103, !range !104, !noundef !41
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !63

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !105, !range !104, !noundef !41
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !63

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i8 %.0 to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.23, i64 noundef %i.s) #33
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !18
  br label %bb.ai

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !103, !range !104, !noundef !41
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !63

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.ab = zext i8 %.0 to i64
  %i.ac = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !105, !range !104, !noundef !41
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ai

bb.m:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !103, !range !104, !noundef !41
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !63

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !105, !range !104, !noundef !41
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !63

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.0, ptr %i.an, align 1, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !18
  br label %bb.ai

bb.p:                                             ; preds = %bb.f, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !105, !range !104, !noundef !41
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !63

bb.q:                                             ; preds = %bb.p
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.as, ptr %i.c, align 8, !tbaa !18
  %i.at = zext i8 %.0 to i64
  %i.au = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  store i8 %i.aw, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !34
  %i.ax = icmp ugt i8 %.0, 7
  br i1 %i.ax, label %bb.r, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.r:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34
  store i8 %i.az, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !34
  %i.ba = icmp ugt i8 %.0, 63
  br i1 %i.ba, label %bb.s, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !34
  store i8 %i.bb, ptr %.2.i.sroa.gep, align 16, !tbaa !34
  br label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit:     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %bb.r, %bb.s
  %.2.i.sroa.phi = phi ptr [ %.2.i.sroa.gep, %bb.s ], [ %.1.i.i66.sroa.gep, %bb.r ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !103, !range !104, !noundef !41
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit
  %i.bf = getelementptr inbounds i8, ptr %.2.i.sroa.phi, i64 -1 ; 2 uses
  store i8 48, ptr %i.bf, align 1, !tbaa !34
  br label %bb.ai

bb.u:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !105, !range !104, !noundef !41
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.v, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !63

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !18
  %i.bk = zext i8 %.0 to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34
  store i8 %i.bn, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !34
  %i.bo = icmp ugt i8 %.0, 15
  br i1 %i.bo, label %bb.w, label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

bb.w:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !34
  store i8 %i.bp, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !34
  br label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %bb.w
  %.1.i.i.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.w ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !103, !range !104, !noundef !41
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit
  %i.bt = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -1
  store i8 120, ptr %i.bt, align 1, !tbaa !34
  %i.bu = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.bu, align 1, !tbaa !34
  br label %bb.ai

bb.y:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !105, !range !104, !noundef !41
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !63

bb.z:                                             ; preds = %bb.y
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.by, ptr %i.c, align 8, !tbaa !18
  %i.bz = zext i8 %.0 to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34
  store i8 %i.cc, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !34
  %i.cd = icmp ugt i8 %.0, 15
  br i1 %i.cd, label %bb.aa, label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

bb.aa:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !34
  store i8 %i.ce, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !34
  br label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %bb.aa
  %.1.i.i66.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.aa ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !103, !range !104, !noundef !41
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit
  %i.ci = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -1
  store i8 88, ptr %i.ci, align 1, !tbaa !34
  %i.cj = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.cj, align 1, !tbaa !34
  br label %bb.ai

bb.ac:                                            ; preds = %bb.f, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !105, !range !104, !noundef !41
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ad, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67, !prof !63

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.21) #37
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67: ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !18
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
  store i8 48, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !34
  br label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit

bb.af:                                            ; preds = %bb.af, %.preheader18.split.us.i
  %.1.i = phi i64 [ %i.cw, %bb.af ], [ 59, %.preheader18.split.us.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !34
  %i.cv = icmp eq i8 %i.cu, 48
  %i.cw = add i64 %.1.i, 1
  br i1 %i.cv, label %bb.af, label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, !llvm.loop !106

_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit:    ; preds = %bb.af, %bb.ae
  %.0.i = phi i64 [ 66, %bb.ae ], [ %.1.i, %bb.af ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !103, !range !104, !noundef !41
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -1
  store i8 %spec.store.select, ptr %i.db, align 1, !tbaa !34
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 -2 ; 2 uses
  store i8 48, ptr %i.dc, align 1, !tbaa !34
  br label %bb.ai

bb.ah:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.9) #37
  unreachable

bb.ai:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, %bb.ag, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit, %bb.ab, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit, %bb.x, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit, %bb.t, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, %bb.l, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.z, %bb.l ], [ %i.z, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ %i.an, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.bf, %bb.t ], [ %.2.i.sroa.phi, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ %i.bu, %bb.x ], [ %.1.i.i.sroa.phi, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ %i.cj, %bb.ab ], [ %.1.i.i66.sroa.phi, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ %i.dc, %bb.ag ], [ %i.cx, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.l ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61 ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.t ], [ 0, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ 2, %bb.x ], [ 0, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ 2, %bb.ab ], [ 0, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ 2, %bb.ag ], [ 0, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.dd, align 1, !tbaa !34
  %i.de = add nuw nsw i32 %.057, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.159 = phi ptr [ %i.dd, %bb.aj ], [ %.058, %bb.ai ]
  %.1 = phi i32 [ %i.de, %bb.aj ], [ %.057, %bb.ai ]
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !18
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.df, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.b, align 1, !tbaa !80
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
  %i.j = load ptr, ptr %4, align 8, !tbaa !45, !nonnull !41, !align !42 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 5 uses
  %i.m = sub i64 9223372036854775807, %i.l
  %i.n = icmp ult i64 %i.m, %.sroa.speculated.i
  br i1 %i.n, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.o = add i64 %i.l, %.sroa.speculated.i        ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !34
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
  %i.w = load i8, ptr %0, align 1, !tbaa !34
  store i8 %i.w, ptr %i.v, align 1, !tbaa !34
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %0, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 0, ptr noundef %0, i64 noundef %.sroa.speculated.i)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.o, ptr %i.k, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store i8 0, ptr %i.y, align 1, !tbaa !34
  %i.z = icmp ult i64 %i.i, %i.f
  br i1 %i.z, label %bb.k, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !63

bb.k:                                             ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.16) #12
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !49
  %i.ad = sub nsw i32 %i.ac, %2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  store i32 %.sroa.speculated, ptr %i.ab, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %0, %bb.b ], [ %i.aa, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %0, %bb.c ]
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0, ptr %1, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  %i.a = load i8, ptr %2, align 1, !tbaa !34
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(31) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #12
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  %i.a = load i8, ptr %2, align 1, !tbaa !34
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(26) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !65
  %i.b = icmp ult i64 %2, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %2, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !107
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !65
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !65
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !65
  %i.j = icmp ult i64 %2, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !63

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !65
  %i.l = icmp ult i64 %2, %i.k
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !65
  %i.n = icmp ult i64 %2, %i.m
  br i1 %i.n, label %.loopexit, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
end_hunk_0
