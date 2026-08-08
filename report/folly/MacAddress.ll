inline.NumInlined: 639
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNS_5RangeIPKcEES9_S9_S8_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.z = add i64 %i.v, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.ac = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i21
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !29
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
  %i.ag = load i8, ptr %.sroa.0.0.copyload.i15, align 1, !tbaa !29
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !29
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.0.0.copyload.i15, i64 %i.v, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i23
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.w, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i15, i64 noundef %i.v)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.z, ptr %i.e, align 8, !tbaa !26
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !29
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !15 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15 ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.ak = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = load i64, ptr %i.e, align 8, !tbaa !26  ; 5 uses
  %i.an = sub i64 9223372036854775807, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29

bb.n:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit28
  %i.ap = add i64 %i.al, %i.am                    ; 3 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.as = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i29
  %i.at = load i64, ptr %i.k, align 8, !tbaa !29
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
  %i.aw = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !29
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !29
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.al, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i31
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.am, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.al)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36: ; preds = %bb.o, %bb.q, %bb.r, %bb.s
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 0, ptr %i.ay, align 1, !tbaa !29
  %i.az = load ptr, ptr %3, align 8, !tbaa !15    ; 5 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36
  %i.ba = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #25 ; 6 uses
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !26  ; 5 uses
  %i.bc = sub i64 9223372036854775807, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37: ; preds = %bb.t
  %i.be = add i64 %i.bb, %i.ba                    ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.k
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.bh = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i37
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !29
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
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !29
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i39
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bb, i64 noundef 0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  store i64 %i.be, ptr %i.e, align 8, !tbaa !26
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 0, ptr %i.bn, align 1, !tbaa !29
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(21) %1) #9
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 17 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !91    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 99, i8 %i.e ; 3 uses
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i8, ptr %0, align 1, !tbaa !109     ; 5 uses
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
  %i.k = load i8, ptr %i.j, align 2, !tbaa !131
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
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %.0.fr = freeze i8 %.0                          ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  switch i8 %spec.store.select, label %bb.aj [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.o
    i8 111, label %bb.r
    i8 79, label %bb.r
    i8 120, label %bb.w
    i8 88, label %bb.aa
    i8 98, label %bb.ae
    i8 66, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !132, !range !133, !noundef !74
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !134, !range !133, !noundef !74
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !71

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i8 %.0.fr to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.18, i64 noundef %i.s) #25
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !15
  br label %bb.ak

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !132, !range !133, !noundef !74
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !71

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.not.i.i.i.i = icmp eq i8 %.0.fr, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i, !prof !71

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  %i.aa = zext i8 %.0.fr to i64                   ; 5 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = sub nuw nsw i64 64, %i.ab
  %i.ad = mul nuw nsw i64 %i.ac, 39
  %i.ae = lshr i64 %i.ad, 7                       ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !97
  %i.ah = icmp ule i64 %i.ag, %i.aa
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ae, %i.ai            ; 4 uses
  %i.ak = icmp samesign ugt i64 %i.aj, 2
  br i1 %i.ak, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i
  %.cmp = icmp ugt i8 %.0.fr, 99
  %i.al = zext i1 %.cmp to i64
  %.urem = add nsw i64 %i.aa, -100
  %.cmp87 = icmp ult i8 %.0.fr, 100
  %i.am = select i1 %.cmp87, i64 %i.aa, i64 %.urem
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.al
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !135
  br label %bb.m

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  %i.as = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !135
  br label %bb.m

._crit_edge.i.i.i:                                ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.aa
  %i.au = load i16, ptr %i.at, align 2, !tbaa !135 ; 2 uses
  %i.av = icmp eq i64 %i.aj, 2
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.au, ptr %i.z, align 1
  br label %_ZN5folly16to_ascii_decimalEPcPKcm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i
  %i.aw = phi i16 [ %i.as, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i ], [ %i.au, %._crit_edge.i.i.i ], [ %i.ar, %._crit_edge.i.i.i.thread ]
  %.0.i2111317.i.i.i = phi i64 [ 1, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i ], [ %i.aj, %._crit_edge.i.i.i ], [ 3, %._crit_edge.i.i.i.thread ]
  %i.ax = lshr i16 %i.aw, 8
  %i.ay = trunc nuw i16 %i.ax to i8
  store i8 %i.ay, ptr %i.z, align 1, !tbaa !29
  br label %_ZN5folly16to_ascii_decimalEPcPKcm.exit

_ZN5folly16to_ascii_decimalEPcPKcm.exit:          ; preds = %bb.l, %bb.m
  %.0.i.i.i.i = phi i64 [ %.0.i2111317.i.i.i, %bb.m ], [ %i.aj, %bb.l ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i.i.i.i
  store ptr %i.az, ptr %i.c, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !134, !range !133, !noundef !74
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %_ZN5folly16to_ascii_decimalEPcPKcm.exit
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ak

bb.o:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !132, !range !133, !noundef !74
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.p, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !71

bb.p:                                             ; preds = %bb.o
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !134, !range !133, !noundef !74
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !71

bb.q:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.0.fr, ptr %i.bj, align 1, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !15
  br label %bb.ak

bb.r:                                             ; preds = %bb.f, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !134, !range !133, !noundef !74
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.s, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !71

bb.s:                                             ; preds = %bb.r
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !15
  %i.bp = zext i8 %.0.fr to i64
  %i.bq = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  store i8 %i.bs, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !29
  %i.bt = icmp ugt i8 %.0.fr, 7
  br i1 %i.bt, label %bb.t, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.t:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !29
  store i8 %i.bv, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !29
  %i.bw = icmp ugt i8 %.0.fr, 63
  br i1 %i.bw, label %bb.u, label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

bb.u:                                             ; preds = %bb.t
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !29
  store i8 %i.bx, ptr %.2.i.sroa.gep, align 16, !tbaa !29
  br label %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit

_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit:     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %bb.t, %bb.u
  %.2.i.sroa.phi = phi ptr [ %.2.i.sroa.gep, %bb.u ], [ %.1.i.i66.sroa.gep, %bb.t ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !132, !range !133, !noundef !74
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit
  %i.cb = getelementptr inbounds i8, ptr %.2.i.sroa.phi, i64 -1 ; 2 uses
  store i8 48, ptr %i.cb, align 1, !tbaa !29
  br label %bb.ak

bb.w:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !134, !range !133, !noundef !74
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.x, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !71

bb.x:                                             ; preds = %bb.w
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !15
  %i.cg = zext i8 %.0.fr to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  store i8 %i.cj, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !29
  %i.ck = icmp ugt i8 %.0.fr, 15
  br i1 %i.ck, label %bb.y, label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

bb.y:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !29
  store i8 %i.cl, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !29
  br label %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %bb.y
  %.1.i.i.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.y ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !132, !range !133, !noundef !74
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit
  %i.cp = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -1
  store i8 120, ptr %i.cp, align 1, !tbaa !29
  %i.cq = getelementptr inbounds i8, ptr %.1.i.i.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.cq, align 1, !tbaa !29
  br label %bb.ak

bb.aa:                                            ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !134, !range !133, !noundef !74
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ab, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, !prof !71

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65: ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.cu, ptr %i.c, align 8, !tbaa !15
  %i.cv = zext i8 %.0.fr to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  store i8 %i.cy, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !29
  %i.cz = icmp ugt i8 %.0.fr, 15
  br i1 %i.cz, label %bb.ac, label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

bb.ac:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !29
  store i8 %i.da, ptr %.1.i.i66.sroa.gep, align 1, !tbaa !29
  br label %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit:  ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65, %bb.ac
  %.1.i.i66.sroa.phi = phi ptr [ %.1.i.i66.sroa.gep, %bb.ac ], [ %.1.i.i66.sroa.gep76, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit65 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !132, !range !133, !noundef !74
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit
  %i.de = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -1
  store i8 88, ptr %i.de, align 1, !tbaa !29
  %i.df = getelementptr inbounds i8, ptr %.1.i.i66.sroa.phi, i64 -2 ; 2 uses
  store i8 48, ptr %i.df, align 1, !tbaa !29
  br label %bb.ak

bb.ae:                                            ; preds = %bb.f, %bb.f
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !134, !range !133, !noundef !74
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.af, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67, !prof !71

bb.af:                                            ; preds = %bb.ae
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67: ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !15
  %i.dk = icmp eq i8 %.0.fr, 0
  br i1 %i.dk, label %bb.ag, label %.preheader18.split.us.i

.preheader18.split.us.i:                          ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.dm = zext i8 %.0.fr to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 1
  store i64 %i.do, ptr %i.dl, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit67
  store i8 48, ptr %.1.i.i66.sroa.gep76, align 2, !tbaa !29
  br label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit

bb.ah:                                            ; preds = %bb.ah, %.preheader18.split.us.i
  %.1.i = phi i64 [ %i.ds, %bb.ah ], [ 59, %.preheader18.split.us.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !29
  %i.dr = icmp eq i8 %i.dq, 48
  %i.ds = add i64 %.1.i, 1
  br i1 %i.dr, label %bb.ah, label %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, !llvm.loop !137

_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit:    ; preds = %bb.ah, %bb.ag
  %.0.i = phi i64 [ 66, %bb.ag ], [ %.1.i, %bb.ah ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !132, !range !133, !noundef !74
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 -1
  store i8 %spec.store.select, ptr %i.dx, align 1, !tbaa !29
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 -2 ; 2 uses
  store i8 48, ptr %i.dy, align 1, !tbaa !29
  br label %bb.ak

bb.aj:                                            ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.5) #27
  unreachable

bb.ak:                                            ; preds = %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit, %bb.ai, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit, %bb.ad, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit, %bb.z, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit, %bb.v, %_ZN5folly16to_ascii_decimalEPcPKcm.exit, %bb.n, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %.058 = phi ptr [ %i.r, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.z, %bb.n ], [ %i.z, %_ZN5folly16to_ascii_decimalEPcPKcm.exit ], [ %i.bj, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.cb, %bb.v ], [ %.2.i.sroa.phi, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ %i.cq, %bb.z ], [ %.1.i.i.sroa.phi, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ %i.df, %bb.ad ], [ %.1.i.i66.sroa.phi, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ %i.dy, %bb.ai ], [ %i.dt, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  %.057 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.n ], [ 0, %_ZN5folly16to_ascii_decimalEPcPKcm.exit ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.v ], [ 0, %_ZN5folly6detail11uintToOctalIhEEmPcmT_.exit ], [ 2, %bb.z ], [ 0, %_ZN5folly6detail14uintToHexLowerIhEEmPcmT_.exit ], [ 2, %bb.ad ], [ 0, %_ZN5folly6detail14uintToHexUpperIhEEmPcmT_.exit ], [ 2, %bb.ai ], [ 0, %_ZN5folly6detail12uintToBinaryIhEEmPcmT_.exit ] ; 2 uses
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds i8, ptr %.058, i64 -1 ; 2 uses
  store i8 %.060, ptr %i.dz, align 1, !tbaa !29
  %i.ea = add nuw nsw i32 %.057, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.159 = phi ptr [ %i.dz, %bb.al ], [ %.058, %bb.ak ]
  %.1 = phi i32 [ %i.ea, %bb.al ], [ %.057, %bb.ak ]
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !15
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.159, ptr %i.eb, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !112   ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.b, align 1, !tbaa !112
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
  %i.j = load ptr, ptr %4, align 8, !tbaa !78, !nonnull !74, !align !75 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 5 uses
  %i.m = sub i64 9223372036854775807, %i.l
  %i.n = icmp ult i64 %i.m, %.sroa.speculated.i
  br i1 %i.n, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.o = add i64 %i.l, %.sroa.speculated.i        ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !29
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
  %i.w = load i8, ptr %0, align 1, !tbaa !29
  store i8 %i.w, ptr %i.v, align 1, !tbaa !29
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %0, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.l, i64 noundef 0, ptr noundef %0, i64 noundef %.sroa.speculated.i)
  br label %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit

_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.o, ptr %i.k, align 8, !tbaa !26
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store i8 0, ptr %i.y, align 1, !tbaa !29
  %i.z = icmp ult i64 %i.i, %i.f
  br i1 %i.z, label %bb.k, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !71

bb.k:                                             ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.11) #9
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !82
  %i.ad = sub nsw i32 %i.ac, %2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  store i32 %.sroa.speculated, ptr %i.ab, align 8, !tbaa !82
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %0, %bb.b ], [ %i.aa, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %0, %bb.c ]
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0, ptr %1, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.a = load i8, ptr %2, align 1, !tbaa !29
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(31) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #9
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.a = load i8, ptr %2, align 1, !tbaa !29
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(26) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #9
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(45) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.a = load i8, ptr %2, align 1, !tbaa !29
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_cS6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(45) %1, i8 noundef signext %i.a, ptr noundef nonnull align 1 dereferenceable(12) %3) #9
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_ENKUlNS_5RangeIPKcEEE_clESU_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.e = tail call noundef ptr @memchr(ptr noundef %.01743, i32 noundef 125, i64 noundef %i.d) #29 ; 3 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.d, label %bb.j
end_hunk_0
begin_hunk_1_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5EEEE4callIJNS_5RangeIPKcEES9_S9_S8_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !29
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i42
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bb, i64 noundef 0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  store i64 %i.be, ptr %i.e, align 8, !tbaa !26
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 0, ptr %i.bn, align 1, !tbaa !29
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bo = load i64, ptr %4, align 8, !tbaa !97
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.bo, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i, !prof !71

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !135
  br label %bb.c

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 39
  %i.f = lshr i64 %i.e, 7                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !97
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 5 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i, %.lr.ph.i.i.i
  %.0.i4.i2.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ] ; 2 uses
  %.014.i.i1.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ]
  %i.m = add i64 %.014.i.i1.i.i.i, -2             ; 4 uses
  %i.n = udiv i64 %.0.i4.i2.i.i.i, 100            ; 2 uses
  %i.o = urem i64 %.0.i4.i2.i.i.i, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !135
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !143

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i
  %.014.i.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i4.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i4.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !135  ; 3 uses
  %i.v = icmp eq i64 %.014.i.i.lcssa.i.i.i, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.u, ptr %i.a, align 16
  %i.w = trunc i16 %i.u to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.x = phi i16 [ %i.b, %._crit_edge.thread.i.i.i ], [ %i.u, %._crit_edge.i.i.i ]
  %.0.i.i712.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.k, %._crit_edge.i.i.i ]
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8                 ; 2 uses
  store i8 %i.z, ptr %i.a, align 16, !tbaa !29
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i.i711.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i.i712.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i.i711.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i.i711.i.i.i         ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.af, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i.i711.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i.i711.i.i.i, 1
  br i1 %cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !26
  %i.an = load ptr, ptr %1, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(46) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(46) %1) #9
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA31_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(31) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(31) %1) #9
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA36_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(36) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(36) %1) #9
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9FormatterILb0EJmEE11doFormatArgILm0ENS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKNS3_17BaseFormatterBaseERNS_9FormatArgERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.51", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.b, ptr %3, align 8
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueImvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueImvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 30 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !91    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e ; 3 uses
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i64, ptr %0, align 8, !tbaa !144    ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !131
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, label %bb.b, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg5errorIJRA52_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(52) @.str.34) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  switch i8 %spec.store.select, label %bb.ae [
    i8 110, label %bb.c
    i8 100, label %bb.f
    i8 99, label %bb.k
    i8 111, label %bb.n
    i8 79, label %bb.n
    i8 120, label %bb.s
    i8 88, label %bb.w
    i8 98, label %bb.aa
    i8 66, label %bb.aa
  ]

bb.c:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !132, !range !133, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !71

bb.d:                                             ; preds = %bb.c
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i8, ptr %i.n, align 4, !tbaa !134, !range !133, !noundef !74
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !71

bb.e:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 66, ptr noundef nonnull @.str.18, i64 noundef %i.g) #25
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !15
  br label %bb.af

bb.f:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.v = load i8, ptr %i.u, align 1, !tbaa !132, !range !133, !noundef !74
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60, !prof !71

bb.g:                                             ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 7 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i, !prof !71

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.z = sub nuw nsw i64 64, %i.y
  %i.aa = mul nuw nsw i64 %i.z, 39
  %i.ab = lshr i64 %i.aa, 7                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !97
  %i.ae = icmp uge i64 %i.g, %i.ad
  %i.af = zext i1 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.ab, %i.af            ; 5 uses
  %i.ah = icmp samesign ugt i64 %i.ag, 2
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60
  %i.ai = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !135
  br label %bb.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i35.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ] ; 2 uses
  %.014.i4.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %i.ag, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ]
  %i.aj = add i64 %.014.i4.i.i.i, -2              ; 4 uses
  %i.ak = udiv i64 %.0.i35.i.i.i, 100             ; 2 uses
  %i.al = urem i64 %.0.i35.i.i.i, 100
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !135
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aj
  store i16 %i.an, ptr %i.ao, align 1
  %i.ap = icmp ugt i64 %i.aj, 2
  br i1 %i.ap, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !143

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.ag, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ], [ %i.aj, %.lr.ph.i.i.i ]
  %.0.i3.lcssa.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i3.lcssa.i.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !135 ; 2 uses
  %i.as = icmp eq i64 %.014.i.lcssa.i.i.i, 2
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.ar, ptr %i.x, align 1
  br label %_ZN5folly16to_ascii_decimalEPcPKcm.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i
  %i.at = phi i16 [ %i.ai, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i ], [ %i.ar, %._crit_edge.i.i.i ]
  %.0.i2111317.i.i.i = phi i64 [ 1, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.thread.i.i.i ], [ %i.ag, %._crit_edge.i.i.i ]
  %i.au = lshr i16 %i.at, 8
  %i.av = trunc nuw i16 %i.au to i8
  store i8 %i.av, ptr %i.x, align 1, !tbaa !29
  br label %_ZN5folly16to_ascii_decimalEPcPKcm.exit

_ZN5folly16to_ascii_decimalEPcPKcm.exit:          ; preds = %bb.h, %bb.i
  %.0.i.i.i.i = phi i64 [ %.0.i2111317.i.i.i, %bb.i ], [ %i.ag, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i.i.i.i ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !134, !range !133, !noundef !74
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %bb.af

bb.j:                                             ; preds = %_ZN5folly16to_ascii_decimalEPcPKcm.exit
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.x, ptr noundef nonnull %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %bb.af

bb.k:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !132, !range !133, !noundef !74
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !71

bb.l:                                             ; preds = %bb.k
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !134, !range !133, !noundef !74
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !71

bb.m:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.bh = trunc i64 %i.g to i8
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !15
  br label %bb.af

bb.n:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !134, !range !133, !noundef !74
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !71

bb.o:                                             ; preds = %bb.n
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !15
  %i.bn = icmp ult i64 %i.g, 512
  br i1 %i.bn, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, %.lr.ph.i
  %.028.i = phi i64 [ %i.bp, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 2 uses
  %.02527.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 3 uses
  %i.bo = and i64 %.02527.i, 511
  %i.bp = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.bq = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.bo ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -2
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !29
  %i.bz = getelementptr i8, ptr %i.bv, i64 -1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !29
  %i.ca = lshr i64 %.02527.i, 9                   ; 2 uses
  %i.cb = icmp ult i64 %.02527.i, 262144
  br i1 %i.cb, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !146

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %.025.lcssa.i = phi i64 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ], [ %i.bp, %.lr.ph.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %.025.lcssa.i ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = add i64 %.0.lcssa.i, -1                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !29
  %i.ch = icmp samesign ugt i64 %.025.lcssa.i, 7
  br i1 %i.ch, label %bb.p, label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

bb.p:                                             ; preds = %._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  %i.ck = add i64 %.0.lcssa.i, -2                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !29
  %i.cm = icmp samesign ugt i64 %.025.lcssa.i, 63
  br i1 %i.cm, label %bb.q, label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

bb.q:                                             ; preds = %bb.p
  %i.cn = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.co = add i64 %.0.lcssa.i, -3                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !29
  br label %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit

_ZN5folly6detail11uintToOctalImEEmPcmT_.exit:     ; preds = %._crit_edge.i, %bb.p, %bb.q
  %.2.i = phi i64 [ %i.co, %bb.q ], [ %i.ck, %bb.p ], [ %i.cf, %._crit_edge.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !132, !range !133, !noundef !74
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.r, label %bb.af

bb.r:                                             ; preds = %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  store i8 48, ptr %i.cu, align 1, !tbaa !29
  br label %bb.af

bb.s:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !134, !range !133, !noundef !74
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.t, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, !prof !71

bb.t:                                             ; preds = %bb.s
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63: ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !15
  %i.cz = icmp ult i64 %i.g, 256
  br i1 %i.cz, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.db, %.lr.ph.i.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 2 uses
  %.02223.i.i = phi i64 [ %i.dj, %.lr.ph.i.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ] ; 3 uses
  %i.da = and i64 %.02223.i.i, 255
  %i.db = add nsw i64 %.024.i.i, -2               ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %i.da ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dh = getelementptr i8, ptr %i.b, i64 %.024.i.i
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !29
  %i.dj = lshr i64 %.02223.i.i, 8                 ; 2 uses
  %i.dk = icmp ult i64 %.02223.i.i, 65536
  br i1 %i.dk, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !147

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63
  %.022.lcssa.i.i = phi i64 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.dj, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit63 ], [ %i.db, %.lr.ph.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexLowerE, i64 %.022.lcssa.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !29
  %i.do = add i64 %.0.lcssa.i.i, -1               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.do
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !29
  %i.dq = icmp samesign ugt i64 %.022.lcssa.i.i, 15
  br i1 %i.dq, label %bb.u, label %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.dr = load i8, ptr %i.dl, align 1, !tbaa !29
  %i.ds = add i64 %.0.lcssa.i.i, -2               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ds
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !29
  br label %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit

_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit:  ; preds = %._crit_edge.i.i, %bb.u
  %.1.i.i = phi i64 [ %i.ds, %bb.u ], [ %i.do, %._crit_edge.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !132, !range !133, !noundef !74
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.v, label %bb.af

bb.v:                                             ; preds = %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit
  %i.dy = getelementptr inbounds i8, ptr %i.du, i64 -1
  store i8 120, ptr %i.dy, align 1, !tbaa !29
  %i.dz = getelementptr inbounds i8, ptr %i.du, i64 -2 ; 2 uses
  store i8 48, ptr %i.dz, align 1, !tbaa !29
  br label %bb.af

bb.w:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !134, !range !133, !noundef !74
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.x, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, !prof !71

bb.x:                                             ; preds = %bb.w
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64: ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.ed, ptr %i.c, align 8, !tbaa !15
  %i.ee = icmp ult i64 %i.g, 256
  br i1 %i.ee, label %._crit_edge.i.i68, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64, %.lr.ph.i.i65
  %.024.i.i66 = phi i64 [ %i.eg, %.lr.ph.i.i65 ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 2 uses
  %.02223.i.i67 = phi i64 [ %i.eo, %.lr.ph.i.i65 ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ] ; 3 uses
  %i.ef = and i64 %.02223.i.i67, 255
  %i.eg = add nsw i64 %.024.i.i66, -2             ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %i.ef ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eg
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !29
  %i.em = getelementptr i8, ptr %i.b, i64 %.024.i.i66
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  store i8 %i.el, ptr %i.en, align 1, !tbaa !29
  %i.eo = lshr i64 %.02223.i.i67, 8               ; 2 uses
  %i.ep = icmp ult i64 %.02223.i.i67, 65536
  br i1 %i.ep, label %._crit_edge.i.i68, label %.lr.ph.i.i65, !llvm.loop !147

._crit_edge.i.i68:                                ; preds = %.lr.ph.i.i65, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64
  %.022.lcssa.i.i69 = phi i64 [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.eo, %.lr.ph.i.i65 ] ; 2 uses
  %.0.lcssa.i.i70 = phi i64 [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit64 ], [ %i.eg, %.lr.ph.i.i65 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14formatHexUpperE, i64 %.022.lcssa.i.i69 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !29
  %i.et = add i64 %.0.lcssa.i.i70, -1             ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.et
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !29
  %i.ev = icmp samesign ugt i64 %.022.lcssa.i.i69, 15
  br i1 %i.ev, label %bb.y, label %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit

bb.y:                                             ; preds = %._crit_edge.i.i68
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !29
  %i.ex = add i64 %.0.lcssa.i.i70, -2             ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ex
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !29
  br label %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit

_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit:  ; preds = %._crit_edge.i.i68, %bb.y
  %.1.i.i71 = phi i64 [ %i.ex, %bb.y ], [ %i.et, %._crit_edge.i.i68 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i71 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !132, !range !133, !noundef !74
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.z, label %bb.af

bb.z:                                             ; preds = %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 -1
  store i8 88, ptr %i.fd, align 1, !tbaa !29
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 -2 ; 2 uses
  store i8 48, ptr %i.fe, align 1, !tbaa !29
  br label %bb.af

bb.aa:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !134, !range !133, !noundef !74
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ab, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72, !prof !71

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.16) #27
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72: ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.fi, ptr %i.c, align 8, !tbaa !15
  %i.fj = icmp eq i64 %i.g, 0
  br i1 %i.fj, label %bb.ac, label %.preheader19.i

bb.ac:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 48, ptr %i.fk, align 2, !tbaa !29
  br label %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit

.preheader19.i:                                   ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72, %.preheader19.i
  %.01621.i = phi i64 [ %i.fm, %.preheader19.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72 ]
  %.01720.i = phi i64 [ %i.fq, %.preheader19.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit72 ] ; 2 uses
  %i.fl = and i64 %.01720.i, 255
  %i.fm = add nsw i64 %.01621.i, -8               ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail12formatBinaryE, i64 %i.fl
  %i.fp = load i64, ptr %i.fo, align 1
  store i64 %i.fp, ptr %i.fn, align 1
  %i.fq = lshr i64 %.01720.i, 8                   ; 2 uses
  %.not.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !148

.preheader.i:                                     ; preds = %.preheader19.i, %.preheader.i
  %.1.i = phi i64 [ %i.fu, %.preheader.i ], [ %i.fm, %.preheader19.i ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !29
  %i.ft = icmp eq i8 %i.fs, 48
  %i.fu = add i64 %.1.i, 1
  br i1 %i.ft, label %.preheader.i, label %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit, !llvm.loop !149

_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit:    ; preds = %.preheader.i, %bb.ac
  %.0.i = phi i64 [ 66, %bb.ac ], [ %.1.i, %.preheader.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !132, !range !133, !noundef !74
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 -1
  store i8 %spec.store.select, ptr %i.fz, align 1, !tbaa !29
  %i.ga = getelementptr inbounds i8, ptr %i.fv, i64 -2 ; 2 uses
  store i8 48, ptr %i.ga, align 1, !tbaa !29
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.5) #27
  unreachable

bb.af:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, %bb.j, %_ZN5folly16to_ascii_decimalEPcPKcm.exit, %bb.r, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit, %bb.v, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit, %bb.z, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit, %bb.ad, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit
  %i.gb = phi ptr [ %i.t, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %.pre, %bb.j ], [ %i.aw, %_ZN5folly16to_ascii_decimalEPcPKcm.exit ], [ %i.bi, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.bm, %bb.r ], [ %i.bm, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ %i.cy, %bb.v ], [ %i.cy, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ %i.ed, %bb.z ], [ %i.ed, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ %i.fi, %bb.ad ], [ %i.fi, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ]
  %.058 = phi i32 [ 0, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 0, %bb.j ], [ 0, %_ZN5folly16to_ascii_decimalEPcPKcm.exit ], [ 0, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ 1, %bb.r ], [ 0, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ 2, %bb.v ], [ 0, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ 2, %bb.z ], [ 0, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ 2, %bb.ad ], [ 0, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ]
  %.0 = phi ptr [ %i.q, %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.x, %bb.j ], [ %i.x, %_ZN5folly16to_ascii_decimalEPcPKcm.exit ], [ %i.bg, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit ], [ %i.cu, %bb.r ], [ %i.cq, %_ZN5folly6detail11uintToOctalImEEmPcmT_.exit ], [ %i.dz, %bb.v ], [ %i.du, %_ZN5folly6detail14uintToHexLowerImEEmPcmT_.exit ], [ %i.fe, %bb.z ], [ %i.ez, %_ZN5folly6detail14uintToHexUpperImEEmPcmT_.exit ], [ %i.ga, %bb.ad ], [ %i.fv, %_ZN5folly6detail12uintToBinaryImEEmPcmT_.exit ]
  call void @_ZN5folly12format_value12formatNumberINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEEiRNS_9FormatArgERT_(ptr nonnull %.0, ptr %i.gb, i32 noundef %.058, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA52_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(52) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(52) %1) #9
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 1, 3) i64 @_ZN5folly10MacAddress16trySetFromBinaryENS_5RangeIPKhEE(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not.i = icmp eq i64 %i.c, 6
  br i1 %.not.i, label %bb.b, label %"_ZN5folly10MacAddress13setFromBinaryIZNS0_16trySetFromBinaryENS_5RangeIPKhEEE3$_0EENS_8ExpectedINS_4UnitENS_21MacAddressFormatErrorEEES5_T_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  br label %"_ZN5folly10MacAddress13setFromBinaryIZNS0_16trySetFromBinaryENS_5RangeIPKhEEE3$_0EENS_8ExpectedINS_4UnitENS_21MacAddressFormatErrorEEES5_T_.exit"

"_ZN5folly10MacAddress13setFromBinaryIZNS0_16trySetFromBinaryENS_5RangeIPKhEEE3$_0EENS_8ExpectedINS_4UnitENS_21MacAddressFormatErrorEEES5_T_.exit": ; preds = %bb.a, %bb.b
  %.sroa.03.0.i = phi i64 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsERSoNS_10MacAddressE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.shift = lshr i64 %1, 24
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.4.0.extract.shift = lshr i64 %1, 40
  %.sroa.5.0.extract.shift = lshr i64 %1, 48
  %.sroa.6.0.extract.shift = lshr i64 %1, 56
  %i.a = tail call noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #28 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.b, align 1, !tbaa !29
  %i.c = lshr i64 %1, 20
  %i.d = and i64 %i.c, 15
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29, !noalias !150
  store i8 %i.f, ptr %i.a, align 1, !tbaa !29
  %i.g = and i64 %.sroa.1.0.extract.shift, 15
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29, !noalias !150
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 58, ptr %i.k, align 1, !tbaa !29
  %i.l = lshr i64 %1, 28
  %i.m = and i64 %i.l, 15
  %i.n = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !29, !noalias !150
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !29
  %i.q = and i64 %.sroa.2.0.extract.shift, 15
  %i.r = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29, !noalias !150
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.s, ptr %i.t, align 1, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 58, ptr %i.u, align 1, !tbaa !29
  %i.v = lshr i64 %1, 36
  %i.w = and i64 %i.v, 15
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !29, !noalias !150
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.y, ptr %i.z, align 1, !tbaa !29
  %i.aa = and i64 %.sroa.3.0.extract.shift, 15
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29, !noalias !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 58, ptr %i.ae, align 1, !tbaa !29
  %i.af = lshr i64 %1, 44
  %i.ag = and i64 %i.af, 15
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29, !noalias !150
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !29
  %i.ak = and i64 %.sroa.4.0.extract.shift, 15
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29, !noalias !150
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.am, ptr %i.an, align 1, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 58, ptr %i.ao, align 1, !tbaa !29
  %i.ap = lshr i64 %1, 52
  %i.aq = and i64 %i.ap, 15
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29, !noalias !150
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.as, ptr %i.at, align 1, !tbaa !29
  %i.au = and i64 %.sroa.5.0.extract.shift, 15
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29, !noalias !150
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 58, ptr %i.ay, align 1, !tbaa !29
  %i.az = lshr i64 %1, 60
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29, !noalias !150
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !29
  %i.bd = and i64 %.sroa.6.0.extract.shift, 15
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29, !noalias !150
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !29
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 17)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 31) #26
  ret ptr %0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 31) #26
  resume { ptr, i32 } %i.bi
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_MacAddress.cpp() #21 section ".text.startup" {
bb.a:
  store i64 -65536, ptr @_ZN5folly10MacAddress9BROADCASTE, align 1
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN5folly10MacAddress9BROADCASTE) ; 0 uses
  store i64 0, ptr @_ZN5folly10MacAddress4ZEROE, align 1
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN5folly10MacAddress4ZEROE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
end_hunk_1
