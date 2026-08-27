Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-jitlink?download=true
inline.NumInlined: 18035
inline.NumDeleted: 8565
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm7Session8FileInfo22registerMultiStubEntryERNS_7jitlink9LinkGraphERNS2_6SymbolENS_15unique_functionIFNS_8ExpectedIS6_EES4_RNS2_5BlockEEEE:bb.a
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 %i.n, ptr %i.o) #38, !noalias !1405
  store ptr %i.p, ptr %0, align 8, !tbaa !83, !alias.scope !1402
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1366, !noalias !1408
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.677") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.d) #38, !inline_history !1371
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.d

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.v = load i64, ptr %8, align 8, !tbaa !86, !noalias !1411
  %i.w = inttoptr i64 %i.v to ptr
  store ptr null, ptr %8, align 8, !tbaa !86, !noalias !1411
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.y = load ptr, ptr %8, align 8, !tbaa !1376
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !635  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !628 ; 7 uses
  %i.ac = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull %i.aa, i64 %i.ab) #38
  %i.ad = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.x, ptr nonnull %i.aa, i64 %i.ab, i32 noundef %i.ac) #38 ; 2 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvm9StringMapINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEENS_15MallocAllocatorEEixENS_9StringRefE.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = add i64 %i.ab, 57
  %i.aj = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ai, i64 noundef 8) #38 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEEE6createINS_15MallocAllocatorEJEEEPS5_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 8 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEEE6createINS_15MallocAllocatorEJEEEPS5_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEEE6createINS_15MallocAllocatorEJEEEPS5_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab
  store i8 0, ptr %i.al, align 1, !tbaa !27
  store i64 %i.ab, ptr %i.aj, align 8, !tbaa !628
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.an, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !1136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 1, ptr %i.ap, align 4, !tbaa !1394
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !627
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !627
  %i.at = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i32 noundef %i.ad) #38
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !111
  br label %_ZN4llvm9StringMapINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm9StringMapINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEENS_15MallocAllocatorEEixENS_9StringRefE.exit: ; preds = %bb.d, %_ZN4llvm14StringMapEntryINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEEE6createINS_15MallocAllocatorEJEEEPS5_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.ax = phi ptr [ %.pre.i, %_ZN4llvm14StringMapEntryINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEEE6createINS_15MallocAllocatorEJEEEPS5_NS_9StringRefERT_DpOT0_.exit.i.i.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !1343 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1347
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = and i64 %i.bd, 144115188075855871       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1375 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  store ptr %i.bh, ptr %9, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bg, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bj = add i64 %.sroa.0.0.copyload.i.i13, %i.be ; 2 uses
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.bk = lshr i64 %i.bd, 63
  %i.bl = trunc nuw nsw i64 %i.bk to i8           ; 2 uses
  store i8 %i.bl, ptr %i.b, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !1394
  %.not.i = icmp ult i32 %i.bn, %i.bp
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !1414

bb.g:                                             ; preds = %_ZN4llvm9StringMapINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEENS_15MallocAllocatorEEixENS_9StringRefE.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE18growAndEmplaceBackIJNS_8ArrayRefIcEEmhEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  %.pre = load i32, ptr %i.bm, align 8, !tbaa !1136
  br label %_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE12emplace_backIJNS_8ArrayRefIcEEmhEEERS2_DpOT_.exit

bb.h:                                             ; preds = %_ZN4llvm9StringMapINS_11SmallVectorINS_18RuntimeDyldChecker16MemoryRegionInfoELj1EEENS_15MallocAllocatorEEixENS_9StringRefE.exit
  %i.br = zext i32 %i.bn to i64
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.br ; 4 uses
  store ptr %i.bh, ptr %i.bt, align 8, !tbaa !1395
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.bj, ptr %i.bv, align 8, !tbaa !1397
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i8 %i.bl, ptr %i.bw, align 8, !tbaa !1398
  %i.bx = or i64 %i.bg, -9223372036854775808
  store i64 %i.bx, ptr %i.bu, align 8
  %i.by = load i32, ptr %i.bm, align 8, !tbaa !1136
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.bz, ptr %i.bm, align 8, !tbaa !1136
  br label %_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE12emplace_backIJNS_8ArrayRefIcEEmhEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE12emplace_backIJNS_8ArrayRefIcEEmhEEERS2_DpOT_.exit: ; preds = %bb.g, %bb.h
  %i.ca = phi i32 [ %.pre, %bb.g ], [ %i.bz, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.cb = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 17 uses
  %i.cc = zext i32 %i.ca to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.cc, 5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx ; 3 uses
  %.not.i.i17 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i17, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE12emplace_backIJNS_8ArrayRefIcEEmhEEERS2_DpOT_.exit
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.cg = shl nuw nsw i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_T1_"(ptr noundef %i.cb, ptr noundef nonnull %i.cd, i64 noundef %i.ch)
  %i.ci = icmp ugt i32 %i.ca, 16
  br i1 %i.ci, label %bb.j, label %.preheader.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr i8, ptr %i.cb, i64 16
  %scevgep.i.i.i = getelementptr i8, ptr %i.cb, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.j
  %.019.i.idx.i.i.i = phi i64 [ 32, %bb.j ], [ %.019.i.add.i.i.i, %bb.p ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %i.cb, %bb.j ], [ %.019.i.ptr.i.i.i, %bb.p ] ; 4 uses
  %.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.019.i.idx.i.i.i ; 5 uses
  %i.ck = getelementptr i8, ptr %.pn18.i.i.i.i, i64 48
  %.0.val.i.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !1397 ; 4 uses
  %.val.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !1397
  %i.cl = icmp ult i64 %.0.val.i.i.i.i, %.val.i.i.i.i
  br i1 %i.cl, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.019.i.ptr.i.i.i, i64 32, i1 false), !tbaa.struct !1137
  %i.cm = icmp samesign ugt i64 %.019.i.idx.i.i.i, 32
  br i1 %i.cm, label %bb.m, label %bb.n, !prof !1414

bb.m:                                             ; preds = %bb.l
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cn, ptr noundef nonnull align 8 dereferenceable(25) %i.cb, i64 25, i1 false), !tbaa.struct !1137
  br label %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i.i.i.i

_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cb, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.i.i.i, i64 16, i1 false), !tbaa.struct !1137
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 56
  %i.co = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  %i.cp = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.0.val11.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !1397
  %i.cq = icmp ult i64 %.0.val.i.i.i.i, %.0.val11.i.i.i.i.i
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.0912.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.019.i.ptr.i.i.i, %bb.o ] ; 3 uses
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.0912.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.0912.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.0.i.i.i.i.i, i64 25, i1 false), !tbaa.struct !1137
  %i.cr = getelementptr i8, ptr %.0912.i.i.i.i.i, i64 -48
  %.0.val.i.i.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !1397
  %i.cs = icmp ult i64 %.0.val.i.i.i.i, %.0.val.i.i.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1415

"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.o
  %.09.lcssa.i.i.i.i.i = phi ptr [ %.019.i.ptr.i.i.i, %bb.o ], [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1137
  %.sroa.4.0..09.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 16
  store i64 %.0.val.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i.i.i.i, align 8, !tbaa !59
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 24
  %.sroa.5.0.extract.trunc.i.i.i.i.i = trunc i64 %i.co to i8
  store i8 %.sroa.5.0.extract.trunc.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.p

bb.p:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i.i.i.i
  %.019.i.add.i.i.i = add nuw nsw i64 %.019.i.idx.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.019.i.add.i.i.i, 512
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_.exit.i.i.i", label %bb.k, !llvm.loop !1416

"_ZSt16__insertion_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_.exit.i.i.i": ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 512
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZSt16__insertion_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i"
  %.07.i.i.i.i = phi ptr [ %i.cz, %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i" ], [ %i.ct, %"_ZSt16__insertion_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i13.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i13.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.07.i.i.i.i, i64 16, i1 false), !tbaa.struct !1137
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !59 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 24
  %i.cu = load i64, ptr %.sroa.5.0..sroa_idx.i.i14.i.i.i, align 8
  %i.cv = getelementptr i8, ptr %.07.i.i.i.i, i64 -16
  %.0.val11.i.i15.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !1397
  %i.cw = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i, %.0.val11.i.i15.i.i.i
  br i1 %i.cw, label %.lr.ph.i.i22.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i"

.lr.ph.i.i22.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i22.i.i.i
  %.0912.i.i23.i.i.i = phi ptr [ %.0.i.i24.i.i.i, %.lr.ph.i.i22.i.i.i ], [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.i.i24.i.i.i = getelementptr inbounds i8, ptr %.0912.i.i23.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.0912.i.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.0.i.i24.i.i.i, i64 25, i1 false), !tbaa.struct !1137
  %i.cx = getelementptr i8, ptr %.0912.i.i23.i.i.i, i64 -48
  %.0.val.i.i25.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !1397
  %i.cy = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i, %.0.val.i.i25.i.i.i
  br i1 %i.cy, label %.lr.ph.i.i22.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i", !llvm.loop !1415

"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i": ; preds = %.lr.ph.i.i22.i.i.i, %.lr.ph.i.i.i.i
  %.09.lcssa.i.i17.i.i.i = phi ptr [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i24.i.i.i, %.lr.ph.i.i22.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i17.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i13.i.i.i, i64 16, i1 false), !tbaa.struct !1137
  %.sroa.4.0..09.sroa_idx.i.i19.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i19.i.i.i, align 8, !tbaa !59
  %.sroa.5.0..09.sroa_idx.i.i20.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i, i64 24
  %.sroa.5.0.extract.trunc.i.i21.i.i.i = trunc i64 %i.cu to i8
  store i8 %.sroa.5.0.extract.trunc.i.i21.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i20.i.i.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i13.i.i.i)
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 32 ; 2 uses
  %.not.i21.i.i.i = icmp eq ptr %i.cz, %i.cd
  br i1 %.not.i21.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1417

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.not17.i.i.i.i = icmp eq i32 %i.ca, 1
  br i1 %.not17.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph.i28.i.i.i

.lr.ph.i28.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %.016.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.da = getelementptr i8, ptr %i.cb, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.lr.ph.i28.i.i.i
  %.019.i29.i.i.i = phi ptr [ %.016.i27.i.i.i, %.lr.ph.i28.i.i.i ], [ %.0.i40.i.i.i, %bb.w ] ; 7 uses
  %.pn18.i30.i.i.i = phi ptr [ %i.cb, %.lr.ph.i28.i.i.i ], [ %.019.i29.i.i.i, %bb.w ] ; 5 uses
  %i.db = getelementptr i8, ptr %.pn18.i30.i.i.i, i64 48
  %.0.val.i31.i.i.i = load i64, ptr %i.db, align 8, !tbaa !1397 ; 4 uses
  %.val.i32.i.i.i = load i64, ptr %i.da, align 8, !tbaa !1397
  %i.dc = icmp ult i64 %.0.val.i31.i.i.i, %.val.i32.i.i.i
  br i1 %i.dc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.019.i29.i.i.i, i64 32, i1 false), !tbaa.struct !1137
  %i.dd = ptrtoint ptr %.019.i29.i.i.i to i64
  %i.de = sub i64 %i.dd, %i.ce                    ; 3 uses
  %i.df = ashr exact i64 %i.de, 5                 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 1
  br i1 %i.dg, label %bb.s, label %bb.t, !prof !1414

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn18.i30.i.i.i, i64 64
  %i.di = sub nsw i64 0, %i.df
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.dh, i64 %i.di
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.de, i1 false)
  br label %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i46.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dk = icmp eq i64 %i.de, 32
  br i1 %i.dk, label %bb.u, label %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i46.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn18.i30.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.dl, ptr noundef nonnull align 8 dereferenceable(25) %i.cb, i64 25, i1 false), !tbaa.struct !1137
  br label %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i46.i.i.i

_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i46.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cb, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i26.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i26.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i29.i.i.i, i64 16, i1 false), !tbaa.struct !1137
  %.sroa.5.0..sroa_idx.i.i33.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i30.i.i.i, i64 56
  %i.dm = load i64, ptr %.sroa.5.0..sroa_idx.i.i33.i.i.i, align 8
  %i.dn = getelementptr i8, ptr %.pn18.i30.i.i.i, i64 16
  %.0.val11.i.i34.i.i.i = load i64, ptr %i.dn, align 8, !tbaa !1397
  %i.do = icmp ult i64 %.0.val.i31.i.i.i, %.0.val11.i.i34.i.i.i
  br i1 %i.do, label %.lr.ph.i.i42.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i35.i.i.i"

.lr.ph.i.i42.i.i.i:                               ; preds = %bb.v, %.lr.ph.i.i42.i.i.i
  %.0912.i.i43.i.i.i = phi ptr [ %.0.i.i44.i.i.i, %.lr.ph.i.i42.i.i.i ], [ %.019.i29.i.i.i, %bb.v ] ; 3 uses
  %.0.i.i44.i.i.i = getelementptr inbounds i8, ptr %.0912.i.i43.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.0912.i.i43.i.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.0.i.i44.i.i.i, i64 25, i1 false), !tbaa.struct !1137
  %i.dp = getelementptr i8, ptr %.0912.i.i43.i.i.i, i64 -48
  %.0.val.i.i45.i.i.i = load i64, ptr %i.dp, align 8, !tbaa !1397
  %i.dq = icmp ult i64 %.0.val.i31.i.i.i, %.0.val.i.i45.i.i.i
  br i1 %i.dq, label %.lr.ph.i.i42.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i35.i.i.i", !llvm.loop !1415

"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i35.i.i.i": ; preds = %.lr.ph.i.i42.i.i.i, %bb.v
  %.09.lcssa.i.i36.i.i.i = phi ptr [ %.019.i29.i.i.i, %bb.v ], [ %.0.i.i44.i.i.i, %.lr.ph.i.i42.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i36.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i26.i.i.i, i64 16, i1 false), !tbaa.struct !1137
  %.sroa.4.0..09.sroa_idx.i.i38.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i36.i.i.i, i64 16
  store i64 %.0.val.i31.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i38.i.i.i, align 8, !tbaa !59
  %.sroa.5.0..09.sroa_idx.i.i39.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i36.i.i.i, i64 24
  %.sroa.5.0.extract.trunc.i.i41.i.i.i = trunc i64 %i.dm to i8
  store i8 %.sroa.5.0.extract.trunc.i.i41.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i39.i.i.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i26.i.i.i)
  br label %bb.w

bb.w:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i35.i.i.i", %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit.i46.i.i.i
  %.0.i40.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i29.i.i.i, i64 32 ; 2 uses
  %.not.i41.i.i.i = icmp eq ptr %.0.i40.i.i.i, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.q, !llvm.loop !1416

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.w, %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i", %_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE12emplace_backIJNS_8ArrayRefIcEEmhEEERS2_DpOT_.exit, %.preheader.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %storemerge = phi ptr [ %i.w, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %"_ZSt25__unguarded_linear_insertIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_.exit.i16.i.i.i" ], [ null, %.preheader.i.i.i.i ], [ null, %_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE12emplace_backIJNS_8ArrayRefIcEEmhEEERS2_DpOT_.exit ], [ null, %bb.w ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !83
  %i.dr = load i8, ptr %i.s, align 8
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.x, label %_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit

bb.x:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.dt = load ptr, ptr %8, align 8, !tbaa !86    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i19, label %_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.x
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #38, !inline_history !1378
  br label %_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit

_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.x, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7Session12findFileInfoENS_9StringRefE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.700") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(864) %1, ptr %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.b = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %2, i64 %3) #38
  %i.c = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr %2, i64 %3, i32 noundef %i.b) #38 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !107
  br i1 %i.d, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm9StringMapINS_7Session8FileInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZN4llvm9StringMapINS_7Session8FileInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.a
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !110
  %.pre12 = zext i32 %.pre to i64
  %i.g = icmp eq i64 %i.f, %.pre12
  br i1 %i.g, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %_ZN4llvm9StringMapINS_7Session8FileInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.h, align 8, !tbaa !78, !alias.scope !1418
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.i, align 1, !tbaa !75, !alias.scope !1418
  store ptr @.str.191, ptr %5, align 8, !tbaa !27, !alias.scope !1418
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.j, align 8, !tbaa !27, !alias.scope !1418
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %3, ptr %i.k, align 8, !tbaa !27, !alias.scope !1418
  store ptr %5, ptr %4, align 8, !alias.scope !1421
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.192, ptr %i.l, align 8, !alias.scope !1421
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.m, align 8, !tbaa !78, !alias.scope !1421
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.n, align 1, !tbaa !75, !alias.scope !1421
  %i.o = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #38 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0
  %i.q = extractvalue { i32, ptr } %i.o, 1
  %i.r = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #41, !noalias !1426 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.r, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 %i.p, ptr %i.q) #38, !noalias !1426
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringMapINS_7Session8FileInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.v = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, -2
  store i8 %i.aa, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm5ErrorD2Ev.exit
  %.sink = phi ptr [ %i.r, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.x, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7Session15findSectionInfoENS_9StringRefES1_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.715") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(864) %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Expected.700", align 8 ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZN4llvm7Session12findFileInfoENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.700") align 8 %6, ptr noundef nonnull align 8 dereferenceable(864) %1, ptr %2, i64 %3)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %6, align 8, !tbaa !1431   ; 3 uses
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %4, i64 %5) #38
  %i.f = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr %4, i64 %5, i32 noundef %i.e) #38 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !107
  br i1 %i.g, label %_ZN4llvm5ErrorD2Ev.exit44, label %_ZN4llvm9StringMapINS_18RuntimeDyldChecker16MemoryRegionInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZN4llvm9StringMapINS_18RuntimeDyldChecker16MemoryRegionInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.b
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !110
  %.pre66 = zext i32 %.pre to i64
  %i.j = icmp eq i64 %i.i, %.pre66
  br i1 %i.j, label %_ZN4llvm5ErrorD2Ev.exit44, label %bb.c

_ZN4llvm5ErrorD2Ev.exit44:                        ; preds = %bb.b, %_ZN4llvm9StringMapINS_18RuntimeDyldChecker16MemoryRegionInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %i.k, align 8, !tbaa !78, !alias.scope !1434
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 5, ptr %i.l, align 1, !tbaa !75, !alias.scope !1434
  store ptr @.str.193, ptr %10, align 8, !tbaa !27, !alias.scope !1434
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %4, ptr %i.m, align 8, !tbaa !27, !alias.scope !1434
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %5, ptr %i.n, align 8, !tbaa !27, !alias.scope !1434
  store ptr %10, ptr %9, align 8, !alias.scope !1437
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.194, ptr %i.o, align 8, !alias.scope !1437
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.p, align 8, !tbaa !78, !alias.scope !1437
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.q, align 1, !tbaa !75, !alias.scope !1437
  store ptr %9, ptr %8, align 8, !alias.scope !1442
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %2, ptr %i.r, align 8, !alias.scope !1442
  %.sroa.2.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i26, align 8, !tbaa !27, !alias.scope !1442
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.s, align 8, !tbaa !78, !alias.scope !1442
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.t, align 1, !tbaa !75, !alias.scope !1442
  store ptr %8, ptr %7, align 8, !alias.scope !1447
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.195, ptr %i.u, align 8, !alias.scope !1447
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !78, !alias.scope !1447
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !75, !alias.scope !1447
  %i.x = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #38 ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = extractvalue { i32, ptr } %i.x, 1
  %i.aa = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #41, !noalias !1452 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.aa, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 %i.y, ptr %i.z) #38, !noalias !1452
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 8
  store ptr %i.aa, ptr %0, align 8, !tbaa !86, !alias.scope !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZN4llvm8ExpectedIRNS_7Session8FileInfoEED2Ev.exit

bb.c:                                             ; preds = %_ZN4llvm9StringMapINS_18RuntimeDyldChecker16MemoryRegionInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ah, align 8
  store ptr %i.ag, ptr %0, align 8, !tbaa !1460
  br label %_ZN4llvm8ExpectedIRNS_7Session8FileInfoEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = load i64, ptr %6, align 8, !tbaa !86, !noalias !1463
end_hunk_0
begin_hunk_1_@_ZN4llvmlsERNS_11raw_ostreamERKNS_18RuntimeDyldChecker16MemoryRegionInfoE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.d, ptr noundef nonnull align 1 dereferenceable(14) @.str.258, i64 14, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  store ptr %i.k, ptr %i.c, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1397
  store ptr @.str.259, ptr %3, align 8, !tbaa !3280, !alias.scope !3285
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !3288, !alias.scope !3285
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %3, ptr %2, align 8, !tbaa !3289
  %i.o = ptrtoint ptr %2 to i64
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.o) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.q = load ptr, ptr %1, align 8, !tbaa !1395
  %.not.i = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !65   ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = icmp ult i64 %i.v, 13
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.260, i64 noundef 13) #38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) @.str.260, i64 13, i1 false)
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  store ptr %i.z, ptr %i.c, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13

_ZN4llvm11raw_ostreamlsEPKc.exit13:               ; preds = %bb.e, %bb.f
  %.0.i.i12 = phi ptr [ %i.x, %bb.e ], [ %0, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 9223372036854775807
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i12, i64 noundef %i.ac) #38 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, 6
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull @.str.261, i64 noundef 6) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.261, i64 6, i1 false)
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ap = icmp ult i64 %i.v, 11
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.262, i64 noundef 11) #38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.s, ptr noundef nonnull align 1 dereferenceable(11) @.str.262, i64 11, i1 false)
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 11
  store ptr %i.as, ptr %i.c, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

_ZN4llvm11raw_ostreamlsEPKc.exit19:               ; preds = %bb.j, %bb.k
  %.0.i.i18 = phi ptr [ %i.aq, %bb.j ], [ %0, %bb.k ]
  %i.at = load ptr, ptr %1, align 8, !tbaa !1395
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i18, ptr noundef %i.at) #38 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, 4
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull @.str.263, i64 noundef 4) #38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19
  store i32 539831584, ptr %i.az, align 1
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22

_ZN4llvm11raw_ostreamlsEPKc.exit22:               ; preds = %bb.l, %bb.m
  %.0.i.i21 = phi ptr [ %i.be, %bb.l ], [ %i.av, %bb.m ]
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1395
  %i.bi = load i64, ptr %i.au, align 8
  %i.bj = and i64 %i.bi, 9223372036854775807
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i21, ptr noundef %i.bk) #38 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ult i64 %i.bs, 2
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit22
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull @.str.264, i64 noundef 2) #38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit22
  store i16 10272, ptr %i.bp, align 1
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZN4llvm11raw_ostreamlsEPKc.exit29:               ; preds = %bb.n, %bb.o
  %.0.i.i28 = phi ptr [ %i.bu, %bb.n ], [ %i.bl, %bb.o ]
  %i.bx = load i64, ptr %i.au, align 8
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i28, i64 noundef %i.by) #38 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !65 ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 7
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull @.str.265, i64 noundef 7) #38 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cd, ptr noundef nonnull align 1 dereferenceable(7) @.str.265, i64 7, i1 false)
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16

_ZN4llvm11raw_ostreamlsEPKc.exit16:               ; preds = %bb.q, %bb.p, %bb.h, %bb.g
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3291, !nonnull !42, !align !115 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !3280
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i64 noundef %i.f) #38
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.1253") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3293, !noalias !3296 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3301, !noalias !3296 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3302, !noalias !3296 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3303, !noalias !3296
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 3 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 13 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 4 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !325, !noalias !3304 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !1296

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !325, !noalias !3304 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !1296

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 3 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1281, !noalias !3307 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1283, !noalias !3310 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1309, !noalias !3310 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1295, !noalias !3310 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1310, !noalias !3310
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.al ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !325, !noalias !3319 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.thread

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader, label %.lr.ph307

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %bb.d
  %3 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ao, i1 true)
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr [8 x i8], ptr %i.ad, i64 %4
  br label %.lr.ph.preheader.a

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader, label %.lr.ph307, !llvm.loop !1280

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !325, !noalias !3319 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.a, !llvm.loop !1280

.lr.ph.i.a:                                       ; preds = %.lr.ph307
  %6 = shl i64 %i.at, 8
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.av, i1 true)
  %.idx294 = zext nneg i32 %i.ax to i64
  %i.ay = getelementptr i8, ptr %i.ad, i64 %6
  %7 = getelementptr [8 x i8], ptr %i.ay, i64 %.idx294
  br label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.a, %._crit_edge.i.i.i.i.i.i.i.i.thread
  %.sroa.991.0228 = phi ptr [ %7, %.lr.ph.i.a ], [ %5, %._crit_edge.i.i.i.i.i.i.i.i.thread ] ; 2 uses
  %8 = icmp eq ptr %.sroa.991.0228, %2
  br i1 %8, label %.lr.ph.preheader, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.c, %.lr.ph.preheader.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !325
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.m
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.m
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !1296

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !325 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !1296

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1281, !noalias !3322 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1283, !noalias !3325 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1309, !noalias !3325 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1295, !noalias !3325 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1310, !noalias !3325
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !325, !noalias !3334 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !1280

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !325, !noalias !3334 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !1280

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %.lr.ph.preheader.a, %bb.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %.sroa.991.0228, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %2, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %i.ad, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %i.af, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.z, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %bb.a ], [ %i.z, %.lr.ph.preheader.a ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 256, ptr %.sroa.8183.0..sroa_idx, align 8
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 256, ptr %.sroa.8198.0..sroa_idx, align 8
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

declare void @_ZN4llvm3orc44addFunctionPointerRelocationsToCurrentSymbolERNS_7jitlink6SymbolERNS1_9LinkGraphERNS_14MCDisassemblerERNS_15MCInstrAnalysisE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm14TargetRegistry12lookupTargetERKNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNK4llvm17SubtargetFeatures9getStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm15MCTargetOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(282)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15MCTargetOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(282) dereferenceable(282) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !27
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !22 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !27
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !27
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !27
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !27
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !27
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm6Target24isValidFeatureListFormatENS_9StringRefE(ptr, i64) local_unnamed_addr #4
end_hunk_1
begin_hunk_2_@_ZN4llvm15SmallVectorImplINS_18RuntimeDyldChecker16MemoryRegionInfoEE15insert_one_implIRKS2_EEPS2_S7_OT_:bb.a
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !1136
  %i.ay = load ptr, ptr %0, align 8, !tbaa !44
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.az
  %i.bb = icmp uge ptr %.016.i.i, %i.ae
  %i.bc = icmp ult ptr %.016.i.i, %i.ba
  %spec.select.i = and i1 %i.bb, %i.bc
  %spec.select.idx = select i1 %spec.select.i, i64 32, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 %spec.select.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ae, ptr noundef nonnull align 8 dereferenceable(25) %spec.select, i64 25, i1 false), !tbaa.struct !1137
  br label %bb.k

bb.k:                                             ; preds = %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE9push_backERKS2_.exit
  %.013 = phi ptr [ %i.o, %_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE9push_backERKS2_.exit ], [ %i.ae, %_ZSt13move_backwardIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoES3_ET0_T_S5_S4_.exit ]
  ret ptr %.013
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1137
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1136
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #38
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1136
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1136
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1136
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE18growAndEmplaceBackIJNS_8ArrayRefIcEEmhEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !59
  %i.a = load i64, ptr %2, align 8, !tbaa !59
  %i.b = load i8, ptr %3, align 1, !tbaa !27
  store ptr %.sroa.0.0.copyload, ptr %4, align 8, !tbaa !1395
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.a, ptr %i.d, align 8, !tbaa !1397
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.b, ptr %i.e, align 8, !tbaa !1398
  %i.f = or i64 %.sroa.2.0.copyload, -9223372036854775808
  store i64 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1394
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !1414

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %4)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !1136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !1136
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !1136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.q = load ptr, ptr %0, align 8, !tbaa !44
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  ret ptr %i.t
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #32 {
bb.a:
  %3 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %4 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %5 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %6 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %8 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %9 = alloca %"class.llvm::RuntimeDyldChecker::MemoryRegionInfo", align 8 ; 4 uses
  %.sroa.0.i.i5.i = alloca <{ ptr, i64 }>, align 8 ; 4 uses
  %.sroa.0.i.i.i = alloca <{ ptr, i64 }>, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEET_SN_SN_T0_.exit"
  %i.i = icmp eq i64 %i.bx, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42, !llvm.loop !5500

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.c, %.lr.ph ], [ %i.cp, %bb.b ] ; 2 uses
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.j = lshr i64 %.lcssa38, 5                    ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.lcssa38, 32
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i", %._crit_edge
  %.013.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ao, %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.43.0.copyload.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !tbaa !59 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.54.0.copyload.i.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8
  %i.u = icmp slt i64 %.013.i.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.013.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.034.i.i.i.i, 1                 ; 3 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.v
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !1397
  %i.aa = getelementptr i8, ptr %i.y, i64 48
  %.val28.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !1397
  %i.ab = icmp ult i64 %.val.i.i.i.i, %.val28.i.i.i.i
  %i.ac = or disjoint i64 %i.v, 1
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.034.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ae, ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 25, i1 false), !tbaa.struct !1137
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5501

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.013.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.s, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i64 25, i1 false), !tbaa.struct !1137
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.127.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ah = icmp samesign ugt i64 %.127.i.i.i.i, %.013.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.0133.i.i.i.i.i = phi i64 [ %.048.i.i.i.i.i, %bb.f ], [ %.127.i.i.i.i, %bb.e ] ; 3 uses
  %.04.in.i.i.i.i.i = add nsw i64 %.0133.i.i.i.i.i, -1
  %.048.i.i.i.i.i = lshr i64 %.04.in.i.i.i.i.i, 1 ; 4 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.048.i.i.i.i.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !1397
  %i.ak = icmp ult i64 %.val.i.i.i.i.i, %.sroa.43.0.copyload.i.i.i
  br i1 %i.ak, label %bb.f, label %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0133.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.al, ptr noundef nonnull align 8 dereferenceable(25) %i.ai, i64 25, i1 false), !tbaa.struct !1137
  %i.am = icmp samesign ugt i64 %.048.i.i.i.i.i, %.013.i.i.i
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i", !llvm.loop !5502

"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.127.i.i.i.i, %bb.e ], [ %.0133.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i, %bb.f ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.43.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx30.i.i.i.i, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.5.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.54.0.copyload.i.i.i to i8
  store i8 %.sroa.5.0.extract.trunc.i.i.i.i, ptr %.sroa.5.0..sroa_idx32.i.i.i.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.ao = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i6.i, label %bb.c, !llvm.loop !5503

.lr.ph.i6.i:                                      ; preds = %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i"
  %.01.i.i = phi ptr [ %i.ap, %"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i" ], [ %.025.lcssa, %"_ZSt13__adjust_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i" ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.01.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.43.0..sroa_idx.i.i7.i = getelementptr inbounds i8, ptr %.01.i.i, i64 -16
  %.sroa.43.0.copyload.i.i8.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i7.i, align 8, !tbaa !59 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i9.i = getelementptr inbounds i8, ptr %.01.i.i, i64 -8
  %.sroa.54.0.copyload.i.i10.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i9.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, ptr noundef nonnull align 8 dereferenceable(25) %0, i64 25, i1 false), !tbaa.struct !1137
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.a                     ; 3 uses
  %i.as = ashr exact i64 %i.ar, 5                 ; 3 uses
  %i.at = add nsw i64 %i.as, -1
  %i.au = lshr i64 %i.at, 1
  %i.av = icmp sgt i64 %i.as, 2
  br i1 %i.av, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i6.i, %.lr.ph.i.i.i28.i
  %.034.i.i.i29.i = phi i64 [ %spec.select.i.i.i32.i, %.lr.ph.i.i.i28.i ], [ 0, %.lr.ph.i6.i ] ; 2 uses
  %i.aw = shl i64 %.034.i.i.i29.i, 1              ; 3 uses
  %i.ax = add i64 %i.aw, 2                        ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.aw
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %.val.i.i.i30.i = load i64, ptr %i.ba, align 8, !tbaa !1397
  %i.bb = getelementptr i8, ptr %i.az, i64 48
  %.val28.i.i.i31.i = load i64, ptr %i.bb, align 8, !tbaa !1397
  %i.bc = icmp ult i64 %.val.i.i.i30.i, %.val28.i.i.i31.i
  %i.bd = or disjoint i64 %i.aw, 1
  %spec.select.i.i.i32.i = select i1 %i.bc, i64 %i.bd, i64 %i.ax ; 4 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select.i.i.i32.i
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.034.i.i.i29.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bf, ptr noundef nonnull align 8 dereferenceable(25) %i.be, i64 25, i1 false), !tbaa.struct !1137
  %i.bg = icmp slt i64 %spec.select.i.i.i32.i, %i.au
  br i1 %i.bg, label %.lr.ph.i.i.i28.i, label %._crit_edge.i.i.i11.i, !llvm.loop !5501

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i28.i, %.lr.ph.i6.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i6.i ], [ %spec.select.i.i.i32.i, %.lr.ph.i.i.i28.i ] ; 5 uses
  %i.bh = and i64 %i.ar, 32
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bj = add nsw i64 %i.as, -2
  %i.bk = ashr exact i64 %i.bj, 1
  %i.bl = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bk
  br i1 %i.bl, label %.thread.i.i27.i, label %bb.h

.thread.i.i27.i:                                  ; preds = %bb.g
  %i.bm = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.bn = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bp, ptr noundef nonnull align 8 dereferenceable(25) %i.bo, i64 25, i1 false), !tbaa.struct !1137
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i27.i
  %.0133.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.bn, %.thread.i.i27.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.0133.i.i.i.i17.i = phi i64 [ %.048.i.i.i.i19.i, %bb.i ], [ %.0133.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.04.in.i.i.i.i18.i = add nsw i64 %.0133.i.i.i.i17.i, -1
  %.048.i.i.i.i19.i = lshr i64 %.04.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.048.i.i.i.i19.i ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %.val.i.i.i.i20.i = load i64, ptr %i.br, align 8, !tbaa !1397
  %i.bs = icmp ult i64 %.val.i.i.i.i20.i, %.sroa.43.0.copyload.i.i8.i
  br i1 %i.bs, label %bb.i, label %"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0133.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bt, ptr noundef nonnull align 8 dereferenceable(25) %i.bq, i64 25, i1 false), !tbaa.struct !1137
  %.not5.i.i26.i = icmp eq i64 %.048.i.i.i.i19.i, 0
  br i1 %.not5.i.i26.i, label %"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !5502

"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.013.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.0133.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i22.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i5.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx30.i.i.i24.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.43.0.copyload.i.i8.i, ptr %.sroa.4.0..sroa_idx30.i.i.i24.i, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx32.i.i.i25.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.5.0.extract.trunc.i.i.i25.i = trunc i64 %.sroa.54.0.copyload.i.i10.i to i8
  store i8 %.sroa.5.0.extract.trunc.i.i.i25.i, ptr %.sroa.5.0..sroa_idx32.i.i.i25.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i5.i)
  %i.bv = icmp sgt i64 %i.ar, 32
  br i1 %i.bv, label %.lr.ph.i6.i, label %"_ZSt14__partial_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !5504

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %.0172441 = phi i64 [ %i.bx, %bb.b ], [ %2, %.lr.ph ]
  %.02540 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %i.bw = phi i64 [ %i.cp, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bx = add nsw i64 %.0172441, -1               ; 3 uses
  %i.by = lshr i64 %i.bw, 6
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds i8, ptr %.02540, i64 -32 ; 4 uses
  %.val29.i.i = load i64, ptr %i.f, align 8, !tbaa !1397 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 16
  %.val30.i.i = load i64, ptr %i.cb, align 8, !tbaa !1397 ; 3 uses
  %i.cc = icmp ult i64 %.val29.i.i, %.val30.i.i
  %i.cd = getelementptr i8, ptr %.02540, i64 -16
  %.val28.i.i = load i64, ptr %i.cd, align 8, !tbaa !1397 ; 4 uses
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.ce = icmp ult i64 %.val30.i.i, %.val28.i.i
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.bz, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bz, ptr noundef nonnull align 8 dereferenceable(25) %9, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp ult i64 %.val29.i.i, %.val28.i.i
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.ca, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ca, ptr noundef nonnull align 8 dereferenceable(25) %8, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, ptr noundef nonnull align 8 dereferenceable(25) %7, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.cg = icmp ult i64 %.val29.i.i, %.val28.i.i
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.ch = icmp ult i64 %.val30.i.i, %.val28.i.i
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.ca, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ca, ptr noundef nonnull align 8 dereferenceable(25) %5, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.bz, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bz, ptr noundef nonnull align 8 dereferenceable(25) %4, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"

"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader", %bb.v
  %.013.i.i = phi ptr [ %.114.i.i, %bb.v ], [ %.02540, %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.ck, %bb.v ], [ %i.e, %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.val15.i.i = load i64, ptr %i.g, align 8, !tbaa !1397 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i" ], [ %i.ck, %bb.t ] ; 9 uses
  %i.ci = getelementptr i8, ptr %.1.i.i, i64 16
  %.1.val.i.i = load i64, ptr %i.ci, align 8, !tbaa !1397
  %i.cj = icmp ult i64 %.1.val.i.i, %.val15.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  br i1 %i.cj, label %bb.t, label %.preheader.i.i, !llvm.loop !5505

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.t ] ; 2 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -32 ; 5 uses
  %i.cl = getelementptr i8, ptr %.013.pn.i.i, i64 -16
  %.114.val.i.i = load i64, ptr %i.cl, align 8, !tbaa !1397
  %i.cm = icmp ult i64 %.val15.i.i, %.114.val.i.i
  br i1 %i.cm, label %.preheader.i.i, label %bb.u, !llvm.loop !5506

bb.u:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cn, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEET_SN_SN_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false), !tbaa.struct !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(25) %.114.i.i, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(25) %3, i64 25, i1 false), !tbaa.struct !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i", !llvm.loop !5507

"_ZSt27__unguarded_partition_pivotIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEET_SN_SN_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02540, i64 noundef %i.bx)
  %i.co = ptrtoint ptr %.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a                     ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, 512
  br i1 %i.cq, label %bb.b, label %"_ZSt14__partial_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !5500

"_ZSt14__partial_sortIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEET_SN_SN_T0_.exit", %"_ZSt10__pop_heapIPN4llvm18RuntimeDyldChecker16MemoryRegionInfoEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_7Session8FileInfo22registerMultiStubEntryERNS0_7jitlink9LinkGraphERNS9_6SymbolENS0_15unique_functionIFNS0_8ExpectedISD_EESB_RNS9_5BlockEEEEE3$_0EEEvT_SN_SN_RT0_.exit.i21.i", %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_18RuntimeDyldChecker16MemoryRegionInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1136
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #38
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1136
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1136
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1136
  ret void
}

declare void @_ZN4llvm10TimerGroupC1ENS_9StringRefES1_b(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64, ptr, i64, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvm5Timer4initENS_9StringRefES1_RNS_10TimerGroupE(ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4llvm10TimerGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_llvm_jitlink.cpp() #33 section ".text.startup" {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %1 = alloca %"struct.llvm::cl::initializer.74", align 8 ; 4 uses
  %2 = alloca %"struct.llvm::cl::initializer.74", align 8 ; 4 uses
  %3 = alloca %"struct.llvm::cl::initializer.74", align 8 ; 4 uses
  %4 = alloca %"class.llvm::cl::ValuesClass", align 8 ; 27 uses
  %5 = alloca %"struct.llvm::cl::initializer.74", align 8 ; 4 uses
  %6 = alloca %"struct.llvm::cl::initializer.74", align 8 ; 4 uses
  %7 = alloca %"struct.llvm::cl::initializer.74", align 8 ; 4 uses
  %8 = alloca %"struct.llvm::cl::initializer.73", align 8 ; 4 uses
  %9 = alloca %"class.llvm::cl::ValuesClass", align 8 ; 17 uses
  store ptr @.str, ptr @_ZL15JITLinkCategory, align 8, !tbaa !69
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZL15JITLinkCategory, i64 8), align 8, !tbaa !59
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15JITLinkCategory, i64 16), align 8, !tbaa !69
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15JITLinkCategory, i64 24), align 8, !tbaa !59
  tail call void @_ZN4llvm2cl14OptionCategory16registerCategoryEv(ptr noundef nonnull align 8 dereferenceable(32) @_ZL15JITLinkCategory) #38
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL10InputFilesB5cxx11, i32 noundef 1, i32 noundef 0) #38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 120), i8 0, i64 49, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE, i64 16), ptr @_ZL10InputFilesB5cxx11, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 176), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 200), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 208), i8 0, i64 32, i1 false)
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 10), align 2
  %i.b = and i16 %i.a, -385
  %i.c = or disjoint i16 %i.b, 128
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 10), align 2
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 32), align 8, !tbaa !69
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZL10InputFilesB5cxx11, i64 40), align 8, !tbaa !59
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(240) @_ZL10InputFilesB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) @_ZL15JITLinkCategory) #38
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL10InputFilesB5cxx11) #38
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL10InputFilesB5cxx11, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL8LazyLink, i32 noundef 1, i32 noundef 0) #38
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL8LazyLink, i64 120), align 8, !tbaa !50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL8LazyLink, i64 128), align 8, !tbaa !2785
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL8LazyLink, i64 136), align 8, !tbaa !50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL8LazyLink, i64 144), align 8, !tbaa !2785
end_hunk_2
