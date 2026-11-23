Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_large_page?download=true
inline.NumInlined: 1803
inline.NumDeleted: 643
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4node25MapStaticCodeToLargePagesEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !145
  %i.gr = load ptr, ptr %11, align 8, !noalias !145 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fh
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %_ZN4node12_GLOBAL__N_15DebugIJRPcS3_EEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i
  %i.gt = load i64, ptr %i.fh, align 8, !noalias !145
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29, !noalias !145
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %_ZN4node12_GLOBAL__N_15DebugIJRPcS3_EEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  %i.gv = load ptr, ptr %i.e, align 8, !noalias !145 ; 3 uses
  %i.gw = load ptr, ptr %i.f, align 8, !noalias !145 ; 3 uses
  %i.gx = icmp uge ptr %i.gv, %i.gw
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %.not6.i = icmp ult i64 %i.ha, 2097152
  %or.cond9.i.not.not = or i1 %i.gx, %.not6.i     ; 3 uses
  %.sroa.6.1 = select i1 %or.cond9.i.not.not, ptr null, ptr %i.gw
  %.sroa.0.1 = select i1 %or.cond9.i.not.not, ptr null, ptr %i.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !145
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i43.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, %bb.n, %bb.e
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i ], [ null, %bb.n ], [ null, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i ], [ null, %bb.n ], [ null, %bb.e ] ; 2 uses
  %.sroa.9.0 = phi i1 [ %or.cond9.i.not.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i ], [ true, %bb.n ], [ true, %bb.e ]
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.hb, ptr %12, align 8, !noalias !145
  %i.hc = call noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #28, !noalias !145 ; 3 uses
  store ptr %i.hc, ptr %12, align 8, !noalias !145
  store i64 20, ptr %i.hb, align 8, !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.hc, ptr noundef nonnull align 1 dereferenceable(20) @.str.34, i64 20, i1 false), !noalias !145
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 20, ptr %i.hd, align 8, !noalias !145
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  store i8 0, ptr %i.he, align 1, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26, !noalias !145
  %i.hf = ptrtoint ptr %.sroa.6.0 to i64
  %i.hg = ptrtoint ptr %.sroa.0.0 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = lshr i64 %i.hh, 21
  store i64 %i.hi, ptr %i.g, align 8, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !145
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.hj, ptr %1, align 8, !noalias !145
  %i.hk = call noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #28, !noalias !145 ; 4 uses
  store ptr %i.hk, ptr %1, align 8, !noalias !145
  store i64 16, ptr %i.hj, align 8, !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hk, ptr noundef nonnull align 1 dereferenceable(16) @.str.35, i64 16, i1 false), !noalias !145
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 16, ptr %i.hl, align 8, !noalias !145
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i8 0, ptr %i.hm, align 1, !noalias !145
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.hn = load ptr, ptr %12, align 8, !noalias !153
  %i.ho = load i64, ptr %i.hd, align 8, !noalias !153 ; 4 uses
  %i.hp = icmp ugt i64 %i.ho, 9223372036854775791
  br i1 %i.hp, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i45.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i43.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #27, !noalias !153
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i43.i
  %i.hq = add nuw nsw i64 %i.ho, 16               ; 2 uses
  %.not.i.i.i.i.not.i46.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i.i.not.i46.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i48.i, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i45.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 16, i64 noundef 0, ptr noundef %i.hn, i64 noundef %i.ho), !noalias !153
  %.pre.i47.i = load ptr, ptr %1, align 8, !noalias !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i48.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i45.i
  %i.hr = phi ptr [ %.pre.i47.i, %bb.t ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i45.i ]
  store i64 %i.hq, ptr %i.hl, align 8, !noalias !153
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store i8 0, ptr %i.hs, align 1, !noalias !153
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.ht, ptr %0, align 8, !alias.scope !152, !noalias !145
  %i.hu = load ptr, ptr %1, align 8, !noalias !153 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, %i.hj
  br i1 %i.hv, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i48.i
  %i.hw = load i64, ptr %i.hl, align 8, !noalias !153 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 16
  call void @llvm.assume(i1 %i.hx)
  %i.hy = add nuw nsw i64 %i.hw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ht, ptr noundef nonnull align 8 dereferenceable(1) %i.hj, i64 %i.hy, i1 false), !noalias !145
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i48.i
  store ptr %i.hu, ptr %0, align 8, !alias.scope !152, !noalias !145
  %i.hz = load i64, ptr %i.hj, align 8, !noalias !153
  store i64 %i.hz, ptr %i.ht, align 8, !alias.scope !152, !noalias !145
  %.pre.i.i50.i = load i64, ptr %i.hl, align 8, !noalias !153
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i51.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i51.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i, %bb.u
  %i.ia = phi ptr [ %i.ht, %bb.u ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i ] ; 3 uses
  %i.ib = phi i64 [ %i.hw, %bb.u ], [ %.pre.i.i50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ib, ptr %i.ic, align 8, !alias.scope !152, !noalias !145
  store ptr %i.hj, ptr %1, align 8, !noalias !153
  store i64 0, ptr %i.hl, align 8, !noalias !153
  store i8 0, ptr %i.hj, align 8, !noalias !153
  %i.id = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process18enabled_debug_listE, i64 72), align 1, !range !101, !noalias !145, !noundef !102
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.v, label %_ZN4node5DebugIJmEEEvPNS_16EnabledDebugListENS_13DebugCategoryEPKcDpOT_.exit.i.i, !prof !103

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i51.i
  %i.if = load ptr, ptr @stderr, align 8, !noalias !145
  %i.ig = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ia) #26, !noalias !145
  call void @_ZN4node7FPrintFIJmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.if, i64 %i.ig, ptr nonnull %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #32, !noalias !145
  %.pre6.i57.i = load ptr, ptr %0, align 8, !noalias !145
  br label %_ZN4node5DebugIJmEEEvPNS_16EnabledDebugListENS_13DebugCategoryEPKcDpOT_.exit.i.i

_ZN4node5DebugIJmEEEvPNS_16EnabledDebugListENS_13DebugCategoryEPKcDpOT_.exit.i.i: ; preds = %bb.v, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i51.i
  %i.ih = phi ptr [ %i.ia, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i51.i ], [ %.pre6.i57.i, %bb.v ] ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.ht
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i52.i: ; preds = %_ZN4node5DebugIJmEEEvPNS_16EnabledDebugListENS_13DebugCategoryEPKcDpOT_.exit.i.i
  %i.ij = load i64, ptr %i.ht, align 8, !noalias !145
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #29, !noalias !145
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53.i: ; preds = %_ZN4node5DebugIJmEEEvPNS_16EnabledDebugListENS_13DebugCategoryEPKcDpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i52.i
  %i.il = load ptr, ptr %1, align 8, !noalias !145 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.hj
  br i1 %i.im, label %_ZN4node12_GLOBAL__N_15DebugIJmEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53.i
  %i.in = load i64, ptr %i.hj, align 8, !noalias !145
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #29, !noalias !145
  br label %_ZN4node12_GLOBAL__N_15DebugIJmEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i

_ZN4node12_GLOBAL__N_15DebugIJmEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !145
  %i.ip = load ptr, ptr %12, align 8, !noalias !145 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.hb
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i: ; preds = %_ZN4node12_GLOBAL__N_15DebugIJmEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i
  %i.ir = load i64, ptr %i.hb, align 8, !noalias !145
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #29, !noalias !145
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i: ; preds = %_ZN4node12_GLOBAL__N_15DebugIJmEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i
  %i.it = load ptr, ptr %i.bi, align 8, !noalias !145 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.bj
  br i1 %i.iu, label %_ZN4node12_GLOBAL__N_118FindNodeTextRegionEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i
  %i.iv = load i64, ptr %i.bj, align 8, !noalias !145
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #29, !noalias !145
  br label %_ZN4node12_GLOBAL__N_118FindNodeTextRegionEv.exit

_ZN4node12_GLOBAL__N_118FindNodeTextRegionEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %.sroa.9.0, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4node12_GLOBAL__N_118FindNodeTextRegionEv.exit
  %i.ix = call fastcc noundef i32 @_ZN4node26MoveTextRegionToLargePagesERKNS_12_GLOBAL__N_111text_regionE(ptr %.sroa.0.0, ptr %.sroa.6.0)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4node12_GLOBAL__N_118FindNodeTextRegionEv.exit, %_ZN4node12_GLOBAL__N_129IsTransparentHugePagesEnabledEv.exit
  %.1 = phi i32 [ 13, %_ZN4node12_GLOBAL__N_129IsTransparentHugePagesEnabledEv.exit ], [ %i.ix, %bb.w ], [ 2, %_ZN4node12_GLOBAL__N_118FindNodeTextRegionEv.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @_ZN4node26MoveTextRegionToLargePagesERKNS_12_GLOBAL__N_111text_regionE(ptr %.0.val, ptr %.8.val) unnamed_addr #5 section "lpstub" align 2097152 !guid !154 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64              ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 11 uses
  %i.d = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.c, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #26 ; 5 uses
  %i.e = icmp eq ptr %i.d, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %.0.val, i64 %i.c, i1 false)
  %i.f = tail call ptr @mmap64(ptr noundef %.0.val, i64 noundef %i.c, i32 noundef 7, i32 noundef 50, i32 noundef -1, i64 noundef 0) #26 ; 4 uses
  %i.g = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @madvise(ptr noundef %i.f, i64 noundef %i.c, i32 noundef 14) #26
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.val, ptr align 1 %i.d, i64 %i.c, i1 false)
  %i.j = tail call i32 @mprotect(ptr noundef %.0.val, i64 noundef %i.c, i32 noundef 5) #26
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %magicptr.off.i20 = add i64 %i.b, -1
  %switch.i21 = icmp ult i64 %magicptr.off.i20, -2
  br i1 %switch.i21, label %bb.f, label %_ZN4node12_GLOBAL__N_116MemoryMapPointer7SetNameEPvmPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef ptrtoint (ptr @.str.62 to i64)) #26 ; 0 uses
  br label %_ZN4node12_GLOBAL__N_116MemoryMapPointer7SetNameEPvmPKc.exit

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.6.0 = phi ptr [ null, %bb.a ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  %i.m = tail call ptr @__errno_location() #33
  %i.n = load i32, ptr %i.m, align 4
  tail call fastcc void @_ZN4node12_GLOBAL__N_116PrintSystemErrorEi(i32 noundef %i.n)
  br label %_ZN4node12_GLOBAL__N_116MemoryMapPointer7SetNameEPvmPKc.exit

_ZN4node12_GLOBAL__N_116MemoryMapPointer7SetNameEPvmPKc.exit: ; preds = %bb.f, %bb.e, %bb.g
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %bb.g ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  %.0 = phi i32 [ -1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  %magicptr.i15 = ptrtoint ptr %.sroa.6.1 to i64
  %magicptr.off.i16 = add i64 %magicptr.i15, -1
  %switch.i17 = icmp ult i64 %magicptr.off.i16, -2
  br i1 %switch.i17, label %bb.h, label %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit18

bb.h:                                             ; preds = %_ZN4node12_GLOBAL__N_116MemoryMapPointer7SetNameEPvmPKc.exit
  %i.o = tail call i32 @munmap(ptr noundef nonnull %.sroa.6.1, i64 noundef %.sroa.0.1) #26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @__errno_location() #33
  %i.r = load i32, ptr %i.q, align 4
  tail call fastcc void @_ZN4node12_GLOBAL__N_116PrintSystemErrorEi(i32 noundef %i.r)
  br label %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit18

_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit18: ; preds = %_ZN4node12_GLOBAL__N_116MemoryMapPointer7SetNameEPvmPKc.exit, %bb.h, %bb.i
  %magicptr.i = ptrtoint ptr %i.d to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.j, label %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit

bb.j:                                             ; preds = %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit18
  %i.s = tail call i32 @munmap(ptr noundef nonnull %i.d, i64 noundef %i.c) #26
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @__errno_location() #33
  %i.v = load i32, ptr %i.u, align 4
  tail call fastcc void @_ZN4node12_GLOBAL__N_116PrintSystemErrorEi(i32 noundef %i.v)
  br label %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit

_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit: ; preds = %_ZN4node12_GLOBAL__N_116MemoryMapPointerD2Ev.exit18, %bb.j, %bb.k
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4node15LargePagesErrorEi(i32 noundef %0) local_unnamed_addr #6 !guid !155 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 95, label %bb.g
    i32 13, label %bb.b
    i32 2, label %bb.c
    i32 -1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.15, %bb.f ], [ @.str.14, %bb.e ], [ @.str.11, %bb.b ], [ @.str.12, %bb.c ], [ @.str.13, %bb.d ], [ @.str.10, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder14format_elementERKNS_3dom7elementERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 !guid !156 {
bb.a:
  %4 = alloca %"class.simdjson::dom::array", align 8 ; 8 uses
  %5 = alloca %"class.simdjson::dom::object", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 56
  %trunc = trunc nuw i64 %i.g to i8
  switch i8 %trunc, label %bb.l [
    i8 91, label %bb.b
    i8 123, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.mask.i = and i64 %i.f, -72057594037927936
  %cond.i = icmp eq i64 %.mask.i, 6557241057451442176
  br i1 %cond.i, label %bb.c, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %4, align 8
  store i64 %i.c, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder19format_array_inlineERKNS_3dom5arrayERKNS0_15element_metricsE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder30format_array_compact_multilineERKNS_3dom5arrayERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.f:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder21format_array_as_tableERKNS_3dom5arrayERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

bb.g:                                             ; preds = %bb.c
  call void @_ZN8simdjson8internal24fractured_string_builder21format_array_expandedERKNS_3dom5arrayERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !4
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.mask.i9 = and i64 %i.f, -72057594037927936
  %cond.i10 = icmp eq i64 %.mask.i9, 8863084066665136128
  br i1 %cond.i10, label %bb.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %5, align 8
  store i64 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i8, ptr %i.o, align 8, !range !101
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN8simdjson8internal24fractured_string_builder20format_object_inlineERKNS_3dom6objectERKNS0_15element_metricsE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(88) %2), !inline_history !5
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN8simdjson8internal24fractured_string_builder22format_object_expandedERKNS_3dom6objectERKNS0_15element_metricsEm(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !inline_history !5
  br label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit: ; preds = %bb.k, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN8simdjson8internal24fractured_string_builder13format_scalarERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom6objectEE3tieERS3_RNS_10error_codeE.exit, %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::internal::element_metrics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 !guid !157 {
bb.a:
end_hunk_0
