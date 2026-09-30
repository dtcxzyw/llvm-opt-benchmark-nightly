Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/compiler?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2740
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal19BackgroundMergeTask22BeginMergeInBackgroundEPNS0_12LocalIsolateENS0_12DirectHandleINS0_6ScriptEEE:bb.a
  %i.gd = load ptr, ptr %i.cm, align 8            ; 6 uses
  %i.ge = load ptr, ptr %i.cn, align 8
  %.not.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit91
  store ptr %i.fb, ptr %i.gd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gc, ptr %.sroa.5.0..sroa_idx, align 8
  %i.gf = load ptr, ptr %i.cm, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.gg, ptr %i.cm, align 8
  br label %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE9push_backEOS3_.exit

bb.af:                                            ; preds = %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit91
  %i.gh = load ptr, ptr %i.cl, align 8            ; 5 uses
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 3 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775792
  br i1 %i.gl, label %bb.ag, label %_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #22
  unreachable

_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.gm = ashr exact i64 %i.gk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 576460752303423487)
  %i.gq = select i1 %i.go, i64 576460752303423487, i64 %i.gp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gr = shl nuw nsw i64 %i.gq, 4
  %i.gs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #24 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gk ; 2 uses
  store ptr %i.fb, ptr %i.gt, align 8
  %.sroa.5.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store ptr %i.gc, ptr %.sroa.5.0..sroa_idx169, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.gd
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %i.gs, %_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i ], [ %i.gh, %_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !86
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gu, %i.gd
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !63

_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.gs, %_ZNKSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.gv, %.lr.ph.i.i.i.i.i.i ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.gx = load ptr, ptr %i.cn, align 8
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gz) #23
  br label %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.gs, ptr %i.cl, align 8
  store ptr %i.gw, ptr %i.cm, align 8
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.ha, ptr %i.cn, align 8
  br label %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ae, %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.hb = add i64 %i.ey, 23
  %i.hc = inttoptr i64 %i.hb to ptr               ; 2 uses
  %i.hd = load atomic volatile i64, ptr %i.hc acquire, align 8 ; 3 uses
  %i.he = trunc i64 %i.hd to i1
  br i1 %i.he, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i: ; preds = %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE9push_backEOS3_.exit
  %i.hf = add nsw i64 %i.hd, -1
  %i.hg = inttoptr i64 %i.hf to ptr
  %i.hh = load atomic volatile i64, ptr %i.hg monotonic, align 8
  %i.hi = add i64 %i.hh, 11
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load atomic volatile i16, ptr %i.hj monotonic, align 2
  %i.hl = icmp eq i16 %i.hk, 284
  br i1 %i.hl, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, %_ZNSt6vectorIN2v88internal19BackgroundMergeTask27NewCompiledDataForCachedSfiESaIS3_EE9push_backEOS3_.exit
  %i.hm = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 10624
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 296
  %i.hq = load i64, ptr %i.hp, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit

_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.hq, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i ], [ %i.hd, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i64 %.sroa.06.0.i.i.i, ptr %10, align 8
  %i.hr = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %i.hr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store i64 %i.el, ptr %11, align 8
  call void @_ZN2v88internal18SharedFunctionInfo12SetScopeInfoENS0_6TaggedINS0_9ScopeInfoEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 %.sroa.06.0.i.i.i, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.aj:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i64 %i.ey, ptr %12, align 8
  %i.hs = call noundef zeroext i1 @_ZNK2v88internal18SharedFunctionInfo17HasOuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br i1 %i.hs, label %bb.ak, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ht = add i64 %i.el, 23
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load atomic volatile i64, ptr %i.hu acquire, align 8 ; 3 uses
  %i.hw = trunc i64 %i.hv to i1
  br i1 %i.hw, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i96, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i94

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i96: ; preds = %bb.ak
  %i.hx = add nsw i64 %i.hv, -1
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = load atomic volatile i64, ptr %i.hy monotonic, align 8
  %i.ia = add i64 %i.hz, 11
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = load atomic volatile i16, ptr %i.ib monotonic, align 2
  %i.id = icmp eq i16 %i.ic, 284
  br i1 %i.id, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit97, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i94

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i94: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i96, %bb.ak
  %i.ie = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 10624
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 296
  %i.ii = load i64, ptr %i.ih, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit97

_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit97: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i96, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i94
  %.sroa.06.0.i.i.i95 = phi i64 [ %i.ii, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i94 ], [ %i.hv, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i96 ] ; 6 uses
  %i.ij = load atomic volatile i64, ptr %i.hc acquire, align 8 ; 3 uses
  %i.ik = trunc i64 %i.ij to i1
  br i1 %i.ik, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i101, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i99

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i101: ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit97
  %i.il = add nsw i64 %i.ij, -1
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = load atomic volatile i64, ptr %i.im monotonic, align 8
  %i.io = add i64 %i.in, 11
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load atomic volatile i16, ptr %i.ip monotonic, align 2
  %i.ir = icmp eq i16 %i.iq, 284
  br i1 %i.ir, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i99

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i99: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i101, %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit97
  %i.is = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 10624
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 296
  %i.iw = load i64, ptr %i.iv, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i

_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i99, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i101
  %.sroa.06.0.i.i.i100 = phi i64 [ %i.iw, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i99 ], [ %i.ij, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i101 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %.sroa.06.0.i.i.i100, ptr %5, align 8
  %i.ix = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.ix, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i
  %i.iy = add i64 %i.ey, 31
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = load i64, ptr %i.iz, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit

bb.am:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoENS_14AcquireLoadTagE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 %.sroa.06.0.i.i.i100, ptr %6, align 8
  %i.jb = call i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit

_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit: ; preds = %bb.al, %bb.am
  %.sroa.02.0.i = phi i64 [ %i.ja, %bb.al ], [ %i.jb, %bb.am ] ; 5 uses
  %i.jc = add i64 %.sroa.06.0.i.i.i95, 7
  %i.jd = inttoptr i64 %i.jc to ptr               ; 5 uses
  %i.je = load atomic volatile i32, ptr %i.jd monotonic, align 4, !noalias !87
  %i.jf = and i32 %i.je, 15
  %i.jg = icmp eq i32 %i.jf, 5
  %i.jh = select i1 %i.jg, i64 56, i64 48
  %i.ji = add i64 %.sroa.06.0.i.i.i95, 23
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !88 ; 2 uses
  %i.jl = ashr i64 %i.jk, 29
  %i.jm = and i64 %i.jl, -8                       ; 2 uses
  %i.jn = icmp sgt i64 %i.jk, 322122547199
  %i.jo = select i1 %i.jn, i64 8, i64 %i.jm
  %i.jp = add nsw i64 %i.jm, %i.jh
  %i.jq = add nsw i64 %i.jp, %i.jo
  %i.jr = load atomic volatile i32, ptr %i.jd monotonic, align 4, !noalias !89
  %i.js = lshr i32 %i.jr, 7
  %i.jt = and i32 %i.js, 8
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = add nsw i64 %i.jq, %i.ju
  %i.jw = load atomic volatile i32, ptr %i.jd monotonic, align 4, !noalias !90
  %i.jx = and i32 %i.jw, 12288
  %.not.i.not.i.i.i.i = icmp eq i32 %i.jx, 0
  %i.jy = select i1 %.not.i.not.i.i.i.i, i64 0, i64 16
  %i.jz = add nsw i64 %i.jv, %i.jy
  %i.ka = load atomic volatile i32, ptr %i.jd monotonic, align 4, !noalias !91
  %i.kb = lshr i32 %i.ka, 11
  %i.kc = and i32 %i.kb, 8
  %i.kd = load atomic volatile i32, ptr %i.jd monotonic, align 4, !noalias !92 ; 0 uses
  %i.ke = trunc i64 %i.jz to i32
  %i.kf = add i32 %i.kc, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = add i64 %.sroa.06.0.i.i.i95, -1
  %i.ki = add i64 %i.kh, %i.kg                    ; 3 uses
  %i.kj = inttoptr i64 %i.ki to ptr
  store atomic volatile i64 %.sroa.02.0.i, ptr %i.kj monotonic, align 8
  %i.kk = trunc i64 %.sroa.02.0.i to i1
  br i1 %i.kk, label %bb.an, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.an:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit
  %i.kl = and i64 %.sroa.06.0.i.i.i95, -262144
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = load i64, ptr %i.km, align 262144       ; 2 uses
  %i.ko = and i64 %i.kn, 32
  %.not.i.i.i = icmp eq i64 %i.ko, 0
  %i.kp = and i64 %i.kn, 25
  %.not38.i.i.i = icmp eq i64 %i.kp, 0
  br i1 %.not38.i.i.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.kq = and i64 %.sroa.02.0.i, -262144
  %i.kr = inttoptr i64 %i.kq to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.kr, align 262144
  %i.ks = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not39.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.06.0.i.i.i95, i64 noundef %i.ki, i64 %.sroa.02.0.i) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %.not.i.i.i, label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.ar, !prof !22

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.06.0.i.i.i95, i64 %i.ki, i64 %.sroa.02.0.i) #21
  br label %_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.ar, %bb.aq, %_ZNK2v88internal18SharedFunctionInfo17GetOuterScopeInfoEv.exit, %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i64 %i.el, ptr %13, align 8
  %i.kt = call i64 @_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_12LocalIsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %1)
  call void @_ZN2v88internal28ConstantPoolPointerForwarder16AddBytecodeArrayENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(112) %9, i64 %i.kt)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit88.thread

bb.as:                                            ; preds = %bb.y
  %i.ku = add i64 %i.el, 39                       ; 3 uses
  %i.kv = inttoptr i64 %i.ku to ptr
  store atomic volatile i64 %i.co, ptr %i.kv release, align 8
  %i.kw = trunc i64 %i.co to i1
  br i1 %i.kw, label %bb.at, label %_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.at:                                            ; preds = %bb.as
  %i.kx = and i64 %i.du, -262144
  %i.ky = inttoptr i64 %i.kx to ptr
  %i.kz = load i64, ptr %i.ky, align 262144       ; 2 uses
  %i.la = and i64 %i.kz, 32
  %.not.i.i.i103 = icmp eq i64 %i.la, 0
  %i.lb = and i64 %i.kz, 25
  %.not38.i.i.i104 = icmp eq i64 %i.lb, 0
  br i1 %.not38.i.i.i104, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.lc = and i64 %i.co, -262144
  %i.ld = inttoptr i64 %i.lc to ptr
  %.sroa.0.0.copyload.i28.i.i.i105 = load i64, ptr %i.ld, align 262144
  %i.le = and i64 %.sroa.0.0.copyload.i28.i.i.i105, 25
  %.not39.i.i.i106 = icmp eq i64 %i.le, 0
  br i1 %.not39.i.i.i106, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.el, i64 noundef %i.ku, i64 %i.co) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  br i1 %.not.i.i.i103, label %_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.ax, !prof !22

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.el, i64 %i.ku, i64 %i.co) #21
  br label %_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.as, %bb.aw, %bb.ax
  %i.lf = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not.i107 = icmp eq ptr %i.lf, null
  br i1 %.not.i107, label %bb.ay, label %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit109

bb.ay:                                            ; preds = %_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit
  call void @_ZN2v88internal9LocalHeap23EnsurePersistentHandlesEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.a) #21
  %.pre.i108 = load ptr, ptr %i.ch, align 8
  br label %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit109

_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit109: ; preds = %_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, %bb.ay
  %i.lg = phi ptr [ %.pre.i108, %bb.ay ], [ %i.lf, %_ZN2v88internal18SharedFunctionInfo10set_scriptENS0_6TaggedINS0_10HeapObjectEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit ]
  %i.lh = call noundef ptr @_ZN2v88internal17PersistentHandles9GetHandleEm(ptr noundef nonnull align 8 dereferenceable(64) %i.lg, i64 noundef %i.el) #21 ; 2 uses
  %i.li = load ptr, ptr %i.ci, align 8            ; 5 uses
  %i.lj = load ptr, ptr %i.cj, align 8
  %.not.i.i110 = icmp eq ptr %i.li, %i.lj
  br i1 %.not.i.i110, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit109
  %i.lk = ptrtoint ptr %i.lh to i64
  store i64 %i.lk, ptr %i.li, align 8
  %i.ll = load ptr, ptr %i.ci, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store ptr %i.lm, ptr %i.ci, align 8
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE9push_backEOS4_.exit

bb.ba:                                            ; preds = %_ZN2v88internal9LocalHeap19NewPersistentHandleINS0_18SharedFunctionInfoEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit109
  %i.ln = load ptr, ptr %i.cg, align 8            ; 5 uses
  %i.lo = ptrtoint ptr %i.li to i64
  %i.lp = ptrtoint ptr %i.ln to i64               ; 2 uses
  %i.lq = sub i64 %i.lo, %i.lp                    ; 3 uses
  %i.lr = icmp eq i64 %i.lq, 9223372036854775800
  br i1 %i.lr, label %bb.bb, label %_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #22
  unreachable

_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.ls = ashr exact i64 %i.lq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i111 = call i64 @llvm.umax.i64(i64 %i.ls, i64 1)
  %i.lt = add nsw i64 %.sroa.speculated.i.i.i.i111, %i.ls ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %i.ls
  %i.lv = call i64 @llvm.umin.i64(i64 %i.lt, i64 1152921504606846975)
  %i.lw = select i1 %i.lu, i64 1152921504606846975, i64 %i.lv ; 3 uses
  %.not.i.i.i.i112 = icmp ne i64 %i.lw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i112)
  %i.lx = shl nuw nsw i64 %i.lw, 3
  %i.ly = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lx) #24 ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lq
  %i.ma = ptrtoint ptr %i.lh to i64
  store i64 %i.ma, ptr %i.lz, align 8
  %.not10.i.i.i.i.i.i113 = icmp eq ptr %i.ln, %i.li
  br i1 %.not10.i.i.i.i.i.i113, label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i114

.lr.ph.i.i.i.i.i.i114:                            ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i114
  %.012.i.i.i.i.i.i115 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i.i114 ], [ %i.ly, %_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i116 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i.i114 ], [ %i.ln, %_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.mb = load i64, ptr %.0911.i.i.i.i.i.i116, align 8, !alias.scope !94, !noalias !93
  store i64 %i.mb, ptr %.012.i.i.i.i.i.i115, align 8, !alias.scope !93, !noalias !94
  %i.mc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i116, i64 8 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i115, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.mc, %i.li
  br i1 %.not.i.i.i.i.i.i117, label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i114, !llvm.loop !83

_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i114, %_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i118 = phi ptr [ %i.ly, %_ZNKSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.md, %.lr.ph.i.i.i.i.i.i114 ]
  %i.me = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i118, i64 8
  %.not.i23.i.i.i119 = icmp eq ptr %i.ln, null
  br i1 %.not.i23.i.i.i119, label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %i.mf = load ptr, ptr %i.cj, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = sub i64 %i.mg, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.mh) #23
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ly, ptr %i.cg, align 8
  store ptr %i.me, ptr %i.ci, align 8
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lw
  store ptr %i.mi, ptr %i.cj, align 8
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.az, %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.mj = add i64 %i.el, 7
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = load atomic volatile i64, ptr %i.mk acquire, align 8 ; 2 uses
  %i.mm = and i64 %i.ml, 1
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit88.thread, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit124

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit124: ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_18SharedFunctionInfoEEESaIS4_EE9push_backEOS4_.exit
  %i.mo = add nsw i64 %i.ml, -1
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load atomic volatile i64, ptr %i.mp monotonic, align 8
  %i.mr = add i64 %i.mq, 11
  %i.ms = inttoptr i64 %i.mr to ptr
  %i.mt = load atomic volatile i16, ptr %i.ms monotonic, align 2
  %.off.i.i121 = add i16 %i.mt, -184
end_hunk_0
begin_hunk_1_@_ZN2v88internal18SharedFunctionInfo12SetScopeInfoENS0_6TaggedINS0_9ScopeInfoEEENS0_16WriteBarrierModeE:bb.a
  %i.da = add i64 %i.cz, 11
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load atomic volatile i16, ptr %i.db monotonic, align 2
  %i.dd = icmp ult i16 %i.dc, 128
  br i1 %i.dd, label %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit27, label %.thread45.i.i21

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i19: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i25, %bb.i
  %.sroa.0.0.copyload.i.i.i.i.i20 = load i64, ptr %0, align 8
  %i.de = add i64 %.sroa.0.0.copyload.i.i.i.i.i20, 7
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = trunc i64 %i.dg to i1
  br i1 %i.dh, label %_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i23, label %.thread45.i.i21

_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i23: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i19
  %i.di = add nsw i64 %i.dg, -1
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8
  %i.dl = add i64 %i.dk, 11
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load atomic volatile i16, ptr %i.dm monotonic, align 2
  %i.do = add i16 %i.dn, -173
  %i.dp = icmp ult i16 %i.do, 4
  br i1 %i.dp, label %bb.l, label %.thread45.i.i21

bb.l:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i23
  %.sroa.0.0.copyload.i.i.i18.i.i24 = load i64, ptr %0, align 8
  %i.dq = add i64 %.sroa.0.0.copyload.i.i.i18.i.i24, 7
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i64, ptr %i.dr acquire, align 8
  %i.dt = add i64 %i.ds, -1
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit27

.thread45.i.i21:                                  ; preds = %_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i23, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i19, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i26, %bb.k, %bb.j
  %i.dx = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 10624
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 136
  %i.eb = load i64, ptr %i.ea, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit27

_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit27: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i26, %bb.l, %.thread45.i.i21
  %.sroa.015.4.i.i22 = phi i64 [ %i.eb, %.thread45.i.i21 ], [ %i.dw, %bb.l ], [ %i.cv, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i26 ]
  %.not71 = icmp eq i64 %i.ci, %.sroa.015.4.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %.not71, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i64 %1, ptr %14, align 8
  %.sroa.0.0.copyload.i.i.i.i28 = load i64, ptr %0, align 8
  %i.ec = add i64 %.sroa.0.0.copyload.i.i.i.i28, 23
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i64, ptr %i.ed acquire, align 8 ; 4 uses
  %i.ef = trunc i64 %i.ee to i1
  br i1 %i.ef, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i35, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i29

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i35: ; preds = %bb.m
  %i.eg = add nsw i64 %i.ee, -1
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 284
  br i1 %i.em, label %bb.n, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i29

bb.n:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 %i.ee, ptr %3, align 8
  %i.en = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23HasInferredFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.en, label %bb.o, label %.thread45.i.i31

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 %i.ee, ptr %4, align 8
  %i.eo = call i64 @_ZNK2v88internal9ScopeInfo20InferredFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ep = trunc i64 %i.eo to i1
  br i1 %i.ep, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i36, label %.thread45.i.i31

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i36: ; preds = %bb.o
  %i.eq = add nsw i64 %i.eo, -1
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.et = add i64 %i.es, 11
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i16, ptr %i.eu monotonic, align 2
  %i.ew = icmp ult i16 %i.ev, 128
  br i1 %i.ew, label %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit37, label %.thread45.i.i31

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i29: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i35, %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i30 = load i64, ptr %0, align 8
  %i.ex = add i64 %.sroa.0.0.copyload.i.i.i.i.i30, 7
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = trunc i64 %i.ez to i1
  br i1 %i.fa, label %_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i33, label %.thread45.i.i31

_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i33: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i29
  %i.fb = add nsw i64 %i.ez, -1
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i64, ptr %i.fc monotonic, align 8
  %i.fe = add i64 %i.fd, 11
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = load atomic volatile i16, ptr %i.ff monotonic, align 2
  %i.fh = add i16 %i.fg, -173
  %i.fi = icmp ult i16 %i.fh, 4
  br i1 %i.fi, label %bb.p, label %.thread45.i.i31

bb.p:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i33
  %.sroa.0.0.copyload.i.i.i18.i.i34 = load i64, ptr %0, align 8
  %i.fj = add i64 %.sroa.0.0.copyload.i.i.i18.i.i34, 7
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i64, ptr %i.fk acquire, align 8
  %i.fm = add i64 %i.fl, -1
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit37

.thread45.i.i31:                                  ; preds = %_ZNK2v88internal18SharedFunctionInfo17HasUncompiledDataENS0_17IsolateForSandboxE.exit.i.i33, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i29, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i36, %bb.o, %bb.n
  %i.fq = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 10624
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 136
  %i.fu = load i64, ptr %i.ft, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit37

_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit37: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i36, %bb.p, %.thread45.i.i31
  %.sroa.015.4.i.i32 = phi i64 [ %i.fu, %.thread45.i.i31 ], [ %i.fp, %bb.p ], [ %i.eo, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i36 ]
  call void @_ZN2v88internal9ScopeInfo23SetInferredFunctionNameENS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 %.sroa.015.4.i.i32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.q

.critedge:                                        ; preds = %.split, %_ZN2v88internal18SharedFunctionInfo15HasInferredNameEv.exit.thread, %_ZN2v88internal18SharedFunctionInfo15HasInferredNameEv.exit, %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit37, %_ZNK2v88internal18SharedFunctionInfo13inferred_nameEv.exit27
  %.sroa.04.0.copyload.i = load i64, ptr %0, align 8
  %i.fv = add i64 %.sroa.04.0.copyload.i, 23
  %i.fw = inttoptr i64 %i.fv to ptr
  store atomic volatile i64 %1, ptr %i.fw release, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.fx = add i64 %.sroa.02.0.copyload.i, 23      ; 2 uses
  %i.fy = icmp sgt i32 %2, 1
  %i.fz = trunc i64 %1 to i1
  %or.cond.i.i = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %_ZN2v88internal18SharedFunctionInfo22set_name_or_scope_infoENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringENS0_9ScopeInfoEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.r:                                             ; preds = %bb.q
  %i.ga = and i64 %.sroa.02.0.copyload.i, -262144
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load i64, ptr %i.gb, align 262144       ; 2 uses
  %i.gd = and i64 %i.gc, 32
  %.not.i.i.i = icmp eq i64 %i.gd, 0
  %i.ge = and i64 %i.gc, 25
  %.not38.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not38.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gf = and i64 %1, -262144
  %i.gg = inttoptr i64 %i.gf to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.gg, align 262144
  %i.gh = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not39.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.fx, i64 %1) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i, label %_ZN2v88internal18SharedFunctionInfo22set_name_or_scope_infoENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringENS0_9ScopeInfoEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.v, !prof !22

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.fx, i64 %1) #21
  br label %_ZN2v88internal18SharedFunctionInfo22set_name_or_scope_infoENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringENS0_9ScopeInfoEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal18SharedFunctionInfo22set_name_or_scope_infoENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6StringENS0_9ScopeInfoEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.q, %bb.u, %bb.v
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE20set_outer_scope_infoENS0_6TaggedIS2_EENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !112
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 5
  %i.f = select i1 %i.e, i64 56, i64 48
  %i.g = add i64 %.sroa.0.0.copyload.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !noalias !113 ; 2 uses
  %i.j = ashr i64 %i.i, 29
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %i.l = icmp sgt i64 %i.i, 322122547199
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %i.n = add nsw i64 %i.k, %i.f
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !114
  %i.q = lshr i32 %i.p, 7
  %i.r = and i32 %i.q, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.o, %i.s
  %i.u = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !115
  %i.v = and i32 %i.u, 12288
  %.not.i.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i.not.i.i.i, i64 0, i64 16
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !116
  %i.z = lshr i32 %i.y, 11
  %i.aa = and i32 %i.z, 8
  %i.ab = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !117 ; 0 uses
  %i.ac = trunc i64 %i.x to i32
  %i.ad = add i32 %i.aa, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = add i64 %i.af, %.sroa.0.0.copyload.i
  %i.ah = inttoptr i64 %i.ag to ptr
  store atomic volatile i64 %1, ptr %i.ah monotonic, align 8
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.ai = add i64 %i.af, %.sroa.02.0.copyload     ; 2 uses
  %i.aj = icmp sgt i32 %2, 1
  %i.ak = trunc i64 %1 to i1
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal12WriteBarrier8ForValueINS0_9ScopeInfoEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.al = and i64 %.sroa.02.0.copyload, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 262144       ; 2 uses
  %i.ao = and i64 %i.an, 32
  %.not.i.i = icmp eq i64 %i.ao, 0
  %i.ap = and i64 %i.an, 25
  %.not38.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not38.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aq = and i64 %1, -262144
  %i.ar = inttoptr i64 %i.aq to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.ar, align 262144
  %i.as = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.as, 0
  br i1 %.not39.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload, i64 noundef %i.ai, i64 %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_9ScopeInfoEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload, i64 %i.ai, i64 %1) #21
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_9ScopeInfoEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_9ScopeInfoEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal28ConstantPoolPointerForwarder16AddBytecodeArrayENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Tagged.703", align 8 ; 2 uses
  store i64 %1, ptr %2, align 8
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 184
  br i1 %i.g, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.49) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !23, !noundef !24
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.m, i64 noundef %1) #21
  br label %_ZSt12construct_atIN2v88internal6HandleINS1_13BytecodeArrayEEEJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s) #21
  %.pre.i.i = load ptr, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %.pre.i.i, %bb.g ], [ %i.t, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.s, align 8
  store i64 %1, ptr %.0.i.i.i, align 8
  br label %_ZSt12construct_atIN2v88internal6HandleINS1_13BytecodeArrayEEEJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i

_ZSt12construct_atIN2v88internal6HandleINS1_13BytecodeArrayEEEJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i: ; preds = %bb.h, %bb.e
  %.012.i.i.i = phi ptr [ %i.q, %bb.e ], [ %.0.i.i.i, %bb.h ]
  store ptr %.012.i.i.i, ptr %i.j, align 8
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.i, align 8
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_13BytecodeArrayEEESaIS4_EE12emplace_backIJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEERS4_DpOT_.exit

bb.i:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt6vectorIN2v88internal6HandleINS1_13BytecodeArrayEEESaIS4_EE17_M_realloc_insertIJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_13BytecodeArrayEEESaIS4_EE12emplace_backIJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEERS4_DpOT_.exit

_ZNSt6vectorIN2v88internal6HandleINS1_13BytecodeArrayEEESaIS4_EE12emplace_backIJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEERS4_DpOT_.exit: ; preds = %_ZSt12construct_atIN2v88internal6HandleINS1_13BytecodeArrayEEEJRNS1_6TaggedIS3_EERPNS1_9LocalHeapEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSC_DpOSD_.exit.i, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_12LocalIsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1952 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %_ZN2v88internal21MutexGuardIfOffThreadINS0_12LocalIsolateEEC2EPNS_4base5MutexEPS2_.exit, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 58712 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #21
  br label %_ZN2v88internal21MutexGuardIfOffThreadINS0_12LocalIsolateEEC2EPNS_4base5MutexEPS2_.exit

_ZN2v88internal21MutexGuardIfOffThreadINS0_12LocalIsolateEEC2EPNS_4base5MutexEPS2_.exit: ; preds = %bb.a, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i
  %.sroa.014.0 = phi ptr [ undef, %bb.a ], [ %i.f, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJRPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOSA_.exit.i ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = tail call { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g) #21 ; 2 uses
  %i.i = extractvalue { i64, i8 } %i.h, 0         ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.h, 1
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit, label %.critedge

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit: ; preds = %_ZN2v88internal21MutexGuardIfOffThreadINS0_12LocalIsolateEEC2EPNS_4base5MutexEPS2_.exit
  %i.l = add i64 %i.i, 55
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m acquire, align 8
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7, label %.critedge

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit
  %i.p = add i64 %i.i, 47
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo22GetActiveBytecodeArrayENS0_17IsolateForSandboxE.exit

.critedge:                                        ; preds = %_ZN2v88internal21MutexGuardIfOffThreadINS0_12LocalIsolateEEC2EPNS_4base5MutexEPS2_.exit, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit
  %.sroa.0.0.copyload.i.i.i8 = load i64, ptr %0, align 8
  %i.s = add i64 %.sroa.0.0.copyload.i.i.i8, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i64, ptr %i.t acquire, align 8 ; 6 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i: ; preds = %.critedge
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 185
  br i1 %i.ac, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i
  %i.ad = add i64 %i.u, 51
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 4
  %i.ag = and i32 %i.af, 15
  %i.ah = icmp eq i32 %i.ag, 10
  br i1 %i.ah, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i, label %bb.b, !prof !22
end_hunk_1
begin_hunk_2_@_ZN2v88internal28ConstantPoolPointerForwarder14VisitScopeInfoINS0_17TrustedFixedArrayEEEvNS0_6TaggedIT_EEiNS4_INS0_9ScopeInfoEEE:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.f, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %.loopexit71, label %bb.c, !llvm.loop !7

bb.e:                                             ; preds = %bb.a
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.loopexit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.b, %i.s
  br i1 %i.t, label %.loopexit71, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %i.b, %i.x
  br i1 %i.u, label %.loopexit71, label %.lr.ph.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8     ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i, label %.loopexit70, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit70, !llvm.loop !8

.loopexit71:                                      ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.q, %bb.f ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not = icmp eq i64 %3, %i.ac
  br i1 %.not, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit71
  call void @_ZN2v88internal28ConstantPoolPointerForwarder15VerifyScopeInfoENS0_6TaggedINS0_9ScopeInfoEEES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %3, i64 %i.ac)
  %i.ad = add i64 %1, -1                          ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = sext i32 %2 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  store atomic volatile i64 %i.ag, ptr %i.aj monotonic, align 8
  %i.ak = trunc i64 %i.ag to i1
  br i1 %i.ak, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %bb.i
  %i.al = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = and i64 %i.ad, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 262144       ; 2 uses
  %i.aq = and i64 %i.ap, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, 0
  %i.ar = and i64 %i.ap, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %i.ag, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.at, align 262144
  %i.au = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.al, i64 noundef %i.am, i64 %i.ag) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.al, i64 %i.am, i64 %i.ag) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.loopexit70:                                      ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %3, ptr %5, align 8
  %i.av = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo17HasOuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.av, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.o:                                             ; preds = %.loopexit70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 %3, ptr %6, align 8
  %i.aw = call i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.aw, ptr %7, align 8
  %i.ax = call noundef i32 @_ZNK2v88internal9ScopeInfo16UniqueIdInScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21 ; 4 uses
  %i.ay = load i64, ptr %i.c, align 8
  %.not.not.i.i12 = icmp eq i64 %i.ay, 0
  br i1 %.not.not.i.i12, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.sroa.06.0.in.i.i20 = phi ptr [ %i.az, %bb.p ], [ %.sroa.06.0.i.i21, %bb.r ]
  %.sroa.06.0.i.i21 = load ptr, ptr %.sroa.06.0.in.i.i20, align 8 ; 4 uses
  %i.ba = icmp eq ptr %.sroa.06.0.i.i21, null
  br i1 %i.ba, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i21, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.ax, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.q, !llvm.loop !7

bb.s:                                             ; preds = %bb.o
  %i.be = sext i32 %i.ax to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = urem i64 %i.be, %i.bg                   ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i13, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.ax, %i.bn
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i.i.i.i14

bb.u:                                             ; preds = %bb.v
  %i.bp = icmp eq i32 %i.ax, %i.bs
  br i1 %i.bp, label %.loopexit, label %.lr.ph.i.i.i.i14, !llvm.loop !8

.lr.ph.i.i.i.i14:                                 ; preds = %bb.t, %bb.u
  %.020.i.i.i.i15 = phi ptr [ %i.bq, %bb.u ], [ %i.bl, %bb.t ]
  %i.bq = load ptr, ptr %.020.i.i.i.i15, align 8  ; 4 uses
  %.not18.i.i.i.i16 = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i16, label %.critedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = urem i64 %i.bt, %i.bg
  %.not19.i.i.i.i17 = icmp eq i64 %i.bu, %i.bh
  br i1 %.not19.i.i.i.i17, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i18, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i18:                 ; preds = %bb.v
  br label %.critedge, !llvm.loop !8

.loopexit:                                        ; preds = %bb.u, %bb.r, %bb.t
  %.sroa.06.1.i.i19 = phi ptr [ %.sroa.06.0.i.i21, %bb.r ], [ %i.bl, %bb.t ], [ %i.bq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i19, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %.not67 = icmp eq i64 %i.aw, %i.bx
  br i1 %.not67, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  call void @_ZN2v88internal28ConstantPoolPointerForwarder15VerifyScopeInfoENS0_6TaggedINS0_9ScopeInfoEEES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %i.aw, i64 %i.bx)
  %i.by = load ptr, ptr %i.bv, align 8
  %i.bz = load i64, ptr %i.by, align 8            ; 5 uses
  %i.ca = add i64 %3, 7
  %i.cb = inttoptr i64 %i.ca to ptr               ; 5 uses
  %i.cc = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !174
  %i.cd = and i32 %i.cc, 15
  %i.ce = icmp eq i32 %i.cd, 5
  %i.cf = select i1 %i.ce, i64 56, i64 48
  %i.cg = add i64 %3, 23
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !175 ; 2 uses
  %i.cj = ashr i64 %i.ci, 29
  %i.ck = and i64 %i.cj, -8                       ; 2 uses
  %i.cl = icmp sgt i64 %i.ci, 322122547199
  %i.cm = select i1 %i.cl, i64 8, i64 %i.ck
  %i.cn = add nsw i64 %i.ck, %i.cf
  %i.co = add nsw i64 %i.cn, %i.cm
  %i.cp = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !176
  %i.cq = lshr i32 %i.cp, 7
  %i.cr = and i32 %i.cq, 8
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = add nsw i64 %i.co, %i.cs
  %i.cu = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !177
  %i.cv = and i32 %i.cu, 12288
  %.not.i.not.i.i.i.i = icmp eq i32 %i.cv, 0
  %i.cw = select i1 %.not.i.not.i.i.i.i, i64 0, i64 16
  %i.cx = add nsw i64 %i.ct, %i.cw
  %i.cy = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !178
  %i.cz = lshr i32 %i.cy, 11
  %i.da = and i32 %i.cz, 8
  %i.db = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !179 ; 0 uses
  %i.dc = trunc i64 %i.cx to i32
  %i.dd = add i32 %i.da, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = add i64 %3, -1
  %i.dg = add i64 %i.df, %i.de                    ; 3 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  store atomic volatile i64 %i.bz, ptr %i.dh monotonic, align 8
  %i.di = trunc i64 %i.bz to i1
  br i1 %i.di, label %bb.x, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.x:                                             ; preds = %bb.w
  %i.dj = and i64 %3, -262144
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load i64, ptr %i.dk, align 262144       ; 2 uses
  %i.dm = and i64 %i.dl, 32
  %.not.i.i.i = icmp eq i64 %i.dm, 0
  %i.dn = and i64 %i.dl, 25
  %.not38.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not38.i.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.do = and i64 %i.bz, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.dp, align 262144
  %i.dq = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not39.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %3, i64 noundef %i.dg, i64 %i.bz) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  br i1 %.not.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.ab, !prof !22

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %3, i64 %i.dg, i64 %i.bz) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.critedge:                                        ; preds = %.lr.ph.i.i.i.i14, %bb.q, %..loopexit_crit_edge21.i.i.i.i18, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.loopexit, %.critedge, %bb.w, %bb.aa, %bb.ab, %bb.n, %bb.m, %bb.i, %.loopexit70, %.loopexit71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal28ConstantPoolPointerForwarder24IterateConstantPoolEntryINS0_10FixedArrayEEEvNS0_6TaggedIT_EEi(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1                           ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.f, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = add i16 %i.n, -205
  %i.p = icmp ult i16 %i.o, 13
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32                ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0.i59 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZN2v88internal28ConstantPoolPointerForwarder24IterateConstantPoolEntryINS0_10FixedArrayEEEvNS0_6TaggedIT_EEi(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %i.f, i32 noundef %.0.i59), !inline_history !10
  %i.v = add nuw nsw i32 %.0.i59, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.t
  br i1 %exitcond.not, label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit, label %.lr.ph, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i8, ptr %i.w, align 8, !range !23, !noundef !24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.z = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 286
  br i1 %i.ad, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i28 = load ptr, ptr %i.ae, align 8
  %i.af = load i64, ptr %.sroa.0.0.copyload.i.i28, align 8 ; 2 uses
  %i.ag = add i64 %i.af, 47
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %.mask.i.i.i = and i64 %i.ai, -4294967296
  %i.aj = icmp eq i64 %.mask.i.i.i, 12884901888
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 10624
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1376
  br label %_ZNK2v88internal6Script5infosEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ao = add i64 %i.af, 87
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %_ZNK2v88internal6Script5infosEv.exit.i

_ZNK2v88internal6Script5infosEv.exit.i:           ; preds = %bb.h, %bb.g
  %.sroa.01.0.in.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.ap, %bb.h ]
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8
  %i.aq = add i64 %.sroa.01.0.i.i.i, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = add i64 %i.f, 59
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i32, ptr %i.at monotonic, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 4 uses
  %i.az = and i64 %i.ay, 3
  %i.ba = icmp eq i64 %i.az, 3
  %i.bb = and i64 %i.ay, 4294967295
  %i.bc = icmp ne i64 %i.bb, 3
  %i.bd = and i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit

bb.i:                                             ; preds = %_ZNK2v88internal6Script5infosEv.exit.i
  %i.be = and i64 %i.ay, -3                       ; 3 uses
  store atomic volatile i64 %i.be, ptr %i.e monotonic, align 8
  %i.bf = or disjoint i64 %i.a, 1                 ; 2 uses
  %i.bg = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bh = and i64 %i.a, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = and i64 %i.ay, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bf, i64 noundef %i.bg, i64 %i.be) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bf, i64 %i.bg, i64 %i.be) #21
  br label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit

bb.n:                                             ; preds = %bb.e, %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN2v88internal28ConstantPoolPointerForwarder30IterateConstantPoolNestedArrayENS0_6TaggedINS0_10FixedArrayEEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i16, ptr %i.bu monotonic, align 2
end_hunk_2
begin_hunk_3_@_ZN2v88internal28ConstantPoolPointerForwarder14VisitScopeInfoINS0_10FixedArrayEEEvNS0_6TaggedIT_EEiNS4_INS0_9ScopeInfoEEE:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.f, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %.loopexit71, label %bb.c, !llvm.loop !7

bb.e:                                             ; preds = %bb.a
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.loopexit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.b, %i.s
  br i1 %i.t, label %.loopexit71, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %i.b, %i.x
  br i1 %i.u, label %.loopexit71, label %.lr.ph.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8     ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i, label %.loopexit70, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit70, !llvm.loop !8

.loopexit71:                                      ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.q, %bb.f ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not = icmp eq i64 %3, %i.ac
  br i1 %.not, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit71
  call void @_ZN2v88internal28ConstantPoolPointerForwarder15VerifyScopeInfoENS0_6TaggedINS0_9ScopeInfoEEES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %3, i64 %i.ac)
  %i.ad = add i64 %1, -1                          ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = sext i32 %2 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  store atomic volatile i64 %i.ag, ptr %i.aj monotonic, align 8
  %i.ak = trunc i64 %i.ag to i1
  br i1 %i.ak, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %bb.i
  %i.al = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = and i64 %i.ad, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 262144       ; 2 uses
  %i.aq = and i64 %i.ap, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, 0
  %i.ar = and i64 %i.ap, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %i.ag, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.at, align 262144
  %i.au = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.al, i64 noundef %i.am, i64 %i.ag) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.al, i64 %i.am, i64 %i.ag) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.loopexit70:                                      ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %3, ptr %5, align 8
  %i.av = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo17HasOuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.av, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.o:                                             ; preds = %.loopexit70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 %3, ptr %6, align 8
  %i.aw = call i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.aw, ptr %7, align 8
  %i.ax = call noundef i32 @_ZNK2v88internal9ScopeInfo16UniqueIdInScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21 ; 4 uses
  %i.ay = load i64, ptr %i.c, align 8
  %.not.not.i.i12 = icmp eq i64 %i.ay, 0
  br i1 %.not.not.i.i12, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.sroa.06.0.in.i.i20 = phi ptr [ %i.az, %bb.p ], [ %.sroa.06.0.i.i21, %bb.r ]
  %.sroa.06.0.i.i21 = load ptr, ptr %.sroa.06.0.in.i.i20, align 8 ; 4 uses
  %i.ba = icmp eq ptr %.sroa.06.0.i.i21, null
  br i1 %i.ba, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i21, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.ax, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.q, !llvm.loop !7

bb.s:                                             ; preds = %bb.o
  %i.be = sext i32 %i.ax to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = urem i64 %i.be, %i.bg                   ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i13, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.ax, %i.bn
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i.i.i.i14

bb.u:                                             ; preds = %bb.v
  %i.bp = icmp eq i32 %i.ax, %i.bs
  br i1 %i.bp, label %.loopexit, label %.lr.ph.i.i.i.i14, !llvm.loop !8

.lr.ph.i.i.i.i14:                                 ; preds = %bb.t, %bb.u
  %.020.i.i.i.i15 = phi ptr [ %i.bq, %bb.u ], [ %i.bl, %bb.t ]
  %i.bq = load ptr, ptr %.020.i.i.i.i15, align 8  ; 4 uses
  %.not18.i.i.i.i16 = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i16, label %.critedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = urem i64 %i.bt, %i.bg
  %.not19.i.i.i.i17 = icmp eq i64 %i.bu, %i.bh
  br i1 %.not19.i.i.i.i17, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i18, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i18:                 ; preds = %bb.v
  br label %.critedge, !llvm.loop !8

.loopexit:                                        ; preds = %bb.u, %bb.r, %bb.t
  %.sroa.06.1.i.i19 = phi ptr [ %.sroa.06.0.i.i21, %bb.r ], [ %i.bl, %bb.t ], [ %i.bq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i19, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %.not67 = icmp eq i64 %i.aw, %i.bx
  br i1 %.not67, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  call void @_ZN2v88internal28ConstantPoolPointerForwarder15VerifyScopeInfoENS0_6TaggedINS0_9ScopeInfoEEES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 %i.aw, i64 %i.bx)
  %i.by = load ptr, ptr %i.bv, align 8
  %i.bz = load i64, ptr %i.by, align 8            ; 5 uses
  %i.ca = add i64 %3, 7
  %i.cb = inttoptr i64 %i.ca to ptr               ; 5 uses
  %i.cc = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !196
  %i.cd = and i32 %i.cc, 15
  %i.ce = icmp eq i32 %i.cd, 5
  %i.cf = select i1 %i.ce, i64 56, i64 48
  %i.cg = add i64 %3, 23
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !197 ; 2 uses
  %i.cj = ashr i64 %i.ci, 29
  %i.ck = and i64 %i.cj, -8                       ; 2 uses
  %i.cl = icmp sgt i64 %i.ci, 322122547199
  %i.cm = select i1 %i.cl, i64 8, i64 %i.ck
  %i.cn = add nsw i64 %i.ck, %i.cf
  %i.co = add nsw i64 %i.cn, %i.cm
  %i.cp = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !198
  %i.cq = lshr i32 %i.cp, 7
  %i.cr = and i32 %i.cq, 8
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = add nsw i64 %i.co, %i.cs
  %i.cu = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !199
  %i.cv = and i32 %i.cu, 12288
  %.not.i.not.i.i.i.i = icmp eq i32 %i.cv, 0
  %i.cw = select i1 %.not.i.not.i.i.i.i, i64 0, i64 16
  %i.cx = add nsw i64 %i.ct, %i.cw
  %i.cy = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !200
  %i.cz = lshr i32 %i.cy, 11
  %i.da = and i32 %i.cz, 8
  %i.db = load atomic volatile i32, ptr %i.cb monotonic, align 4, !noalias !201 ; 0 uses
  %i.dc = trunc i64 %i.cx to i32
  %i.dd = add i32 %i.da, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = add i64 %3, -1
  %i.dg = add i64 %i.df, %i.de                    ; 3 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  store atomic volatile i64 %i.bz, ptr %i.dh monotonic, align 8
  %i.di = trunc i64 %i.bz to i1
  br i1 %i.di, label %bb.x, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.x:                                             ; preds = %bb.w
  %i.dj = and i64 %3, -262144
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load i64, ptr %i.dk, align 262144       ; 2 uses
  %i.dm = and i64 %i.dl, 32
  %.not.i.i.i = icmp eq i64 %i.dm, 0
  %i.dn = and i64 %i.dl, 25
  %.not38.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not38.i.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.do = and i64 %i.bz, -262144
  %i.dp = inttoptr i64 %i.do to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.dp, align 262144
  %i.dq = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not39.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %3, i64 noundef %i.dg, i64 %i.bz) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  br i1 %.not.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.ab, !prof !22

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %3, i64 %i.dg, i64 %i.bz) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.critedge:                                        ; preds = %.lr.ph.i.i.i.i14, %bb.q, %..loopexit_crit_edge21.i.i.i.i18, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.loopexit, %.critedge, %bb.w, %bb.aa, %bb.ab, %bb.n, %bb.m, %bb.i, %.loopexit70, %.loopexit71
  ret void
}

declare preserve_mostcc void @_ZN2v88internal6Script20InitLineEndsInternalINS0_7IsolateEEEvPT_NS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_139FinalizeSingleUnoptimizedCompilationJobINS0_7IsolateEEENS0_14CompilationJob6StatusEPNS0_25UnoptimizedCompilationJobENS0_6HandleINS0_18SharedFunctionInfoEEEPT_PSt6vectorINS0_34FinalizeUnoptimizedCompilationDataESaISE_EE(ptr noundef %0, ptr %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef %2) #21
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1842), align 2, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %i.d, label %bb.b, label %_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  br label %_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i

_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ]
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef %2) #21, !inline_history !28 ; 3 uses
  switch i32 %i.j, label %_ZN2v88internal14CompilationJob11UpdateStateENS1_6StatusENS1_5StateE.exit.i [
    i32 0, label %.sink.split.i.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i
  %.sink.i.i = phi i32 [ 4, %bb.c ], [ 3, %_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i.i, ptr %i.k, align 8
  br label %_ZN2v88internal14CompilationJob11UpdateStateENS1_6StatusENS1_5StateE.exit.i

_ZN2v88internal14CompilationJob11UpdateStateENS1_6StatusENS1_5StateE.exit.i: ; preds = %.sink.split.i.i, %_ZN2v84base11ScopedTimerC2EPNS0_9TimeDeltaE.exit.i
  br i1 %i.d, label %bb.d, label %_ZN2v88internal25UnoptimizedCompilationJob11FinalizeJobENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE.exit

bb.d:                                             ; preds = %_ZN2v88internal14CompilationJob11UpdateStateENS1_6StatusENS1_5StateE.exit.i
  %i.l = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.m = sub i64 %i.l, %.sroa.0.0.i
  %i.n = load i64, ptr %i.e, align 8
  %i.o = add nsw i64 %i.m, %i.n
  store i64 %i.o, ptr %i.e, align 8
  br label %_ZN2v88internal25UnoptimizedCompilationJob11FinalizeJobENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE.exit

_ZN2v88internal25UnoptimizedCompilationJob11FinalizeJobENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal14CompilationJob11UpdateStateENS1_6StatusENS1_5StateE.exit.i, %bb.d
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.p = icmp eq i32 %i.j, 0
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIN2v88internal34FinalizeUnoptimizedCompilationDataESaIS2_EE12emplace_backIJRPNS1_7IsolateERNS1_6HandleINS1_18SharedFunctionInfoEEERNS1_11MaybeHandleINS1_12CoverageInfoEEENS0_4base9TimeDeltaESI_EEERS2_DpOT_.exit

bb.e:                                             ; preds = %_ZN2v88internal25UnoptimizedCompilationJob11FinalizeJobENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 @_ZNK2v88internal5Scope11IsAsmModuleEv(ptr noundef nonnull align 8 dereferenceable(124) %i.v) #21
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %1, align 8
  %i.y = add i64 %i.x, 55
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 4
  %i.ab = or i32 %i.aa, 8192
  store atomic volatile i32 %i.ab, ptr %i.z monotonic, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ad = call ptr @_ZN2v88internal16FeedbackMetadata3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_PKNS0_18FeedbackVectorSpecE(ptr noundef %2, ptr noundef nonnull %i.ac) #21
  %i.ae = load i64, ptr %1, align 8               ; 4 uses
  %i.af = load i64, ptr %i.ad, align 8            ; 5 uses
  %i.ag = add i64 %i.ae, 31                       ; 3 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  store atomic volatile i64 %i.af, ptr %i.ah release, align 8
  %i.ai = trunc i64 %i.af to i1
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal18SharedFunctionInfo21set_feedback_metadataENS0_6TaggedINS0_16FeedbackMetadataEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aj = and i64 %i.ae, -262144
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 262144       ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = and i64 %i.af, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.ap, align 262144
  %i.aq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not39.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ae, i64 noundef %i.ag, i64 %i.af) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i, label %_ZN2v88internal18SharedFunctionInfo21set_feedback_metadataENS0_6TaggedINS0_16FeedbackMetadataEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ae, i64 %i.ag, i64 %i.af) #21
  br label %_ZN2v88internal18SharedFunctionInfo21set_feedback_metadataENS0_6TaggedINS0_16FeedbackMetadataEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal18SharedFunctionInfo21set_feedback_metadataENS0_6TaggedINS0_16FeedbackMetadataEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.m, %bb.l, %bb.h
  %i.ar = load i64, ptr %1, align 8
  %i.as = add i64 %i.ar, 67
  %i.at = inttoptr i64 %i.as to ptr
  store atomic volatile i16 0, ptr %i.at monotonic, align 2
  %i.au = load i64, ptr %1, align 8               ; 5 uses
  %.sroa.0.0.copyload.i16.i = load ptr, ptr %i.q, align 8
  %i.av = load i64, ptr %.sroa.0.0.copyload.i16.i, align 8 ; 5 uses
  %i.aw = add i64 %i.au, 7                        ; 3 uses
  %i.ax = inttoptr i64 %i.aw to ptr
  store atomic volatile i64 %i.av, ptr %i.ax release, align 8
  %i.ay = add i64 %i.au, 15
  %i.az = inttoptr i64 %i.ay to ptr
  store atomic volatile i64 -4294967296, ptr %i.az release, align 8
  %i.ba = trunc i64 %i.av to i1
  br i1 %i.ba, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_122InstallUnoptimizedCodeINS0_7IsolateEEEvPNS0_26UnoptimizedCompilationInfoENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPT_.exit

bb.n:                                             ; preds = %_ZN2v88internal18SharedFunctionInfo21set_feedback_metadataENS0_6TaggedINS0_16FeedbackMetadataEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit.i
  %i.bb = and i64 %i.au, -262144
end_hunk_3
