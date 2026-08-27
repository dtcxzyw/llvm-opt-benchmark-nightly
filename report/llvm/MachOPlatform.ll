Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOPlatform?download=true
inline.NumInlined: 9432
inline.NumDeleted: 4632
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm3orc13MachOPlatformC2ERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS0_19DefinitionGeneratorESt14default_deleteIS7_EENS_15unique_functionIFNS1_13HeaderOptionsES5_EEESC_NSB_IFS6_INS0_19MaterializationUnitES8_ISF_EERS1_SC_EEERNS_5ErrorE:bb.a
bb.q:                                             ; preds = %bb.p
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !36 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 16
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nuw nsw i64 %i.gp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull align 8 dereferenceable(1) %i.gm, i64 %i.gr, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN4llvm3orc13MachOPlatform13HeaderOptions5DylibEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  store ptr %i.gl, ptr %37, align 8, !tbaa !35
  %i.gs = load i64, ptr %i.gm, align 8, !tbaa !41
  store i64 %i.gs, ptr %i.gk, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt22_Optional_payload_baseIN4llvm3orc13MachOPlatform13HeaderOptions5DylibEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm3orc13MachOPlatform13HeaderOptions5DylibEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.gt = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %bb.q ]
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %i.gt, ptr %i.gv, align 8, !tbaa !36
  store ptr %i.gm, ptr %5, align 8, !tbaa !35
  store i64 0, ptr %i.gu, align 8, !tbaa !36
  store i8 0, ptr %i.gm, align 8, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gw, ptr noundef nonnull align 8 dereferenceable(12) %i.gx, i64 12, i1 false)
  store i8 1, ptr %i.gh, align 8, !tbaa !196
  br label %_ZN4llvm3orc13MachOPlatform13HeaderOptionsC2EOS2_.exit

_ZN4llvm3orc13MachOPlatform13HeaderOptionsC2EOS2_.exit: ; preds = %bb.o, %_ZNSt22_Optional_payload_baseIN4llvm3orc13MachOPlatform13HeaderOptions5DylibEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ha = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !198
  store <2 x ptr> %i.ha, ptr %i.gy, align 8, !tbaa !198
  %i.hb = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !200
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, i8 0, i64 24, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %37, i64 80
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.hg = load <2 x ptr>, ptr %i.hf, align 8, !tbaa !202
  store <2 x ptr> %i.hg, ptr %i.he, align 8, !tbaa !202
  %i.hh = getelementptr inbounds nuw i8, ptr %37, i64 96
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !204
  store ptr %i.hj, ptr %i.hh, align 8, !tbaa !204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i8 0, i64 24, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %37, i64 104
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.hm = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !206
  store <2 x ptr> %i.hm, ptr %i.hk, align 8, !tbaa !206
  %i.hn = getelementptr inbounds nuw i8, ptr %37, i64 120
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !208
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.hq, ptr noundef nonnull align 8 dereferenceable(17) %i.hr, i64 17, i1 false)
  %i.hs = load ptr, ptr %i.n, align 8, !tbaa !250, !noalias !471
  call void %i.hs(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.195") align 8 %36, ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(152) %37) #27, !inline_history !254
  store ptr null, ptr %38, align 8, !tbaa !83
  %i.ht = load ptr, ptr %36, align 8, !tbaa !258, !noalias !474
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !89, !noalias !474
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %_ZN4llvm5ErrorD2Ev.exit49.thread, label %bb.r

_ZN4llvm5ErrorD2Ev.exit49.thread:                 ; preds = %_ZN4llvm3orc13MachOPlatform13HeaderOptionsC2EOS2_.exit
  store ptr null, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %35, align 8, !tbaa !92
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.r:                                             ; preds = %_ZN4llvm3orc13MachOPlatform13HeaderOptionsC2EOS2_.exit
  %i.hx = load ptr, ptr %i.fn, align 8, !tbaa !94, !noalias !474, !nonnull !27, !align !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !474
  store ptr %2, ptr %14, align 8, !tbaa !260, !noalias !474
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %36, ptr %i.hy, align 8, !tbaa !263, !noalias !474
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %38, ptr %i.hz, align 8, !tbaa !129, !noalias !474
  %i.ia = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.hx) #27, !noalias !477 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit49, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ia) #28, !noalias !477
  unreachable

_ZN4llvm5ErrorD2Ev.exit49:                        ; preds = %bb.r
  call void @_ZZN4llvm3orc8JITDylib6defineINS0_19MaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.ib = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.hx) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !474
  %.pr = load ptr, ptr %35, align 8, !tbaa !92    ; 2 uses
  %.pre252 = load ptr, ptr %38, align 8, !tbaa !83 ; 4 uses
  store ptr %.pr, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %35, align 8, !tbaa !92
  %.not211 = icmp eq ptr %.pr, null               ; 3 uses
  %.not.i.i50 = icmp eq ptr %.pre252, null
  br i1 %.not.i.i50, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit49
  %i.ic = atomicrmw sub ptr %.pre252, i32 1 acq_rel, align 4
  %.not.i.i.i.i51 = icmp eq i32 %i.ic, 1
  br i1 %.not.i.i.i.i51, label %bb.u, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pre252) #27
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.pre252, i64 noundef 16) #30
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit49.thread, %_ZN4llvm5ErrorD2Ev.exit49, %bb.t, %bb.u
  %.not211326 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit49.thread ], [ %.not211, %_ZN4llvm5ErrorD2Ev.exit49 ], [ %.not211, %bb.t ], [ %.not211, %bb.u ]
  %i.id = load ptr, ptr %36, align 8, !tbaa !258  ; 3 uses
  %.not.i52 = icmp eq ptr %i.id, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !133
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(40) %i.id) #27, !inline_history !267
  br label %_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i
  call void @_ZN4llvm3orc13MachOPlatform13HeaderOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br i1 %.not211326, label %bb.v, label %bb.dg

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  %i.ih = load ptr, ptr %i.b, align 8, !tbaa !268, !nonnull !27, !align !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %2, ptr %i.a, align 8, !tbaa !286
  %i.ii = load ptr, ptr %i.s, align 8, !tbaa !71  ; 3 uses
  store ptr %i.ii, ptr %40, align 8, !tbaa !71
  %i.ij = ptrtoint ptr %i.ii to i64
  %notsub.i.i.i53 = add i64 %i.ij, -1
  %i.ik = icmp ult i64 %notsub.i.i.i53, -32
  br i1 %i.ik, label %bb.w, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.w:                                             ; preds = %bb.v
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.im = atomicrmw add ptr %i.il, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %bb.v, %bb.w
  call void @_ZN4llvm3orc16ExecutionSession6lookupENS_8ArrayRefIPNS0_8JITDylibEEENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.203") align 8 %39, ptr noundef nonnull align 8 dereferenceable(392) %i.ih, ptr nonnull %i.a, i64 1, ptr nofree noundef nonnull align 8 dereferenceable(8) %40, i8 noundef zeroext 63) #27
  %i.in = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.io = load i8, ptr %i.in, align 8, !noalias !480
  %i.ip = trunc i8 %i.io to i1
  br i1 %i.ip, label %bb.x, label %_ZN4llvm5ErrorD2Ev.exit55

_ZN4llvm5ErrorD2Ev.exit55:                        ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  store ptr null, ptr %7, align 8, !tbaa !92
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

bb.x:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %i.iq = load i64, ptr %39, align 8, !tbaa !51, !noalias !480 ; 2 uses
  %i.ir = inttoptr i64 %i.iq to ptr
  store ptr null, ptr %39, align 8, !tbaa !51, !noalias !480
  store ptr %i.ir, ptr %7, align 8, !tbaa !92
  %.not212328 = icmp eq i64 %i.iq, 0
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit: ; preds = %bb.x, %_ZN4llvm5ErrorD2Ev.exit55
  %.not212329 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit55 ], [ %.not212328, %bb.x ]
  %i.is = load ptr, ptr %40, align 8, !tbaa !71   ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %notsub.i.i.i58 = add i64 %i.it, -1
  %i.iu = icmp ult i64 %notsub.i.i.i58, -32
  br i1 %i.iu, label %bb.y, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit59

bb.y:                                             ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit59

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit59:         ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br i1 %.not212329, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i, label %bb.dg

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !268, !nonnull !27, !align !28
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.iy = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.iz = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29, !noalias !483 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  store ptr %2, ptr %i.iz, align 8, !noalias !483
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !483
  store ptr %i.jb, ptr %i.ja, align 8, !tbaa !486, !alias.scope !483
  %.pre253 = load ptr, ptr %i.y, align 8, !tbaa !71 ; 6 uses
  store ptr %i.jb, ptr %i.iy, align 8, !alias.scope !483
  store ptr %i.iz, ptr %42, align 8, !alias.scope !483
  %i.jc = ptrtoint ptr %.pre253 to i64
  %notsub.i.i.i62 = add i64 %i.jc, -1
  %i.jd = icmp ult i64 %notsub.i.i.i62, -32       ; 3 uses
  br i1 %i.jd, label %bb.z, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit63

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.je = getelementptr inbounds nuw i8, ptr %.pre253, i64 8
  %i.jf = atomicrmw add ptr %i.je, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit63

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit63:     ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i, %bb.z
  %i.jg = load ptr, ptr %i.ag, align 8, !tbaa !71 ; 6 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %notsub.i.i.i64 = add i64 %i.jh, -1
  %i.ji = icmp ult i64 %notsub.i.i.i64, -32       ; 3 uses
  br i1 %i.ji, label %bb.aa, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit65

bb.aa:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit63
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jk = atomicrmw add ptr %i.jj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit65

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit65:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit63, %bb.aa
  %i.jl = load ptr, ptr %i.be, align 8, !tbaa !71 ; 6 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %notsub.i.i.i66 = add i64 %i.jm, -1
  %i.jn = icmp ult i64 %notsub.i.i.i66, -32       ; 3 uses
  br i1 %i.jn, label %bb.ab, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit67

bb.ab:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit65
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = atomicrmw add ptr %i.jo, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit67

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit67:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit65, %bb.ab
  %i.jq = load ptr, ptr %i.bm, align 8, !tbaa !71 ; 6 uses
  %i.jr = ptrtoint ptr %i.jq to i64
  %notsub.i.i.i68 = add i64 %i.jr, -1
  %i.js = icmp ult i64 %notsub.i.i.i68, -32       ; 3 uses
  br i1 %i.js, label %bb.ac, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit69

bb.ac:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit67
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.ju = atomicrmw add ptr %i.jt, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit69

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit69:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit67, %bb.ac
  %i.jv = load ptr, ptr %i.bu, align 8, !tbaa !71 ; 6 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %notsub.i.i.i70 = add i64 %i.jw, -1
  %i.jx = icmp ult i64 %notsub.i.i.i70, -32       ; 3 uses
  br i1 %i.jx, label %bb.ad, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit71

bb.ad:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit69
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jz = atomicrmw add ptr %i.jy, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit71

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit71:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit69, %bb.ad
  %i.ka = load ptr, ptr %i.cc, align 8, !tbaa !71 ; 6 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %notsub.i.i.i72 = add i64 %i.kb, -1
  %i.kc = icmp ult i64 %notsub.i.i.i72, -32       ; 3 uses
  br i1 %i.kc, label %bb.ae, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit73

bb.ae:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit71
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.ke = atomicrmw add ptr %i.kd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit73

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit73:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit71, %bb.ae
  %i.kf = load ptr, ptr %i.ck, align 8, !tbaa !71 ; 6 uses
  %i.kg = ptrtoint ptr %i.kf to i64
  %notsub.i.i.i74 = add i64 %i.kg, -1
  %i.kh = icmp ult i64 %notsub.i.i.i74, -32       ; 3 uses
  br i1 %i.kh, label %bb.af, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit75

bb.af:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit73
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = atomicrmw add ptr %i.ki, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit75

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit75:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit73, %bb.af
  %i.kk = load ptr, ptr %i.cs, align 8, !tbaa !71 ; 6 uses
  %i.kl = ptrtoint ptr %i.kk to i64
  %notsub.i.i.i76 = add i64 %i.kl, -1
  %i.km = icmp ult i64 %notsub.i.i.i76, -32       ; 3 uses
  br i1 %i.km, label %bb.ag, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit77

bb.ag:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit75
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ko = atomicrmw add ptr %i.kn, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit77

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit77:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit75, %bb.ag
  %i.kp = load ptr, ptr %i.da, align 8, !tbaa !71 ; 6 uses
  %i.kq = ptrtoint ptr %i.kp to i64
  %notsub.i.i.i78 = add i64 %i.kq, -1
  %i.kr = icmp ult i64 %notsub.i.i.i78, -32       ; 3 uses
  br i1 %i.kr, label %bb.ah, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79

bb.ah:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit77
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kt = atomicrmw add ptr %i.ks, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit77, %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 12 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 21 uses
  %i.kw = call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #29 ; 4 uses
  %i.kx = load ptr, ptr %43, align 8, !tbaa !487  ; 3 uses
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kx, %i.ky
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.le, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i ], [ %i.kx, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79 ] ; 2 uses
  %i.kz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.la, -1
  %i.lb = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.lb, label %bb.ai, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i155
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i155
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.le, %i.ky
  br i1 %.not.i.i7.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i155, !llvm.loop !488

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %43, align 8, !tbaa !487
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79
  %i.lf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i ], [ %i.kx, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit79 ] ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i156, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i
  %i.lg = load ptr, ptr %i.ku, align 8, !tbaa !333
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lj) #30
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.aj, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i
  store ptr %i.kw, ptr %43, align 8, !tbaa !487
  store ptr %i.kw, ptr %i.kv, align 8, !tbaa !330
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 144
  store ptr %i.lk, ptr %i.ku, align 8, !tbaa !333
  %i.ll = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  br i1 %i.jd, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.thread

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i32 0, ptr %i.ll, align 8, !tbaa !327, !alias.scope !489
  br label %bb.ak

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i:     ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre253, i64 8
  %i.ln = atomicrmw add ptr %i.lm, i64 1 seq_cst, align 8 ; 0 uses
  %.pre254 = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 3 uses
  %.pre255 = load ptr, ptr %i.ku, align 8, !tbaa !333
  %i.lo = icmp eq ptr %.pre254, %.pre255
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %.pre253, ptr %13, align 8, !tbaa !323, !alias.scope !489
  store i32 0, ptr %i.ll, align 8, !tbaa !327, !alias.scope !489
  br i1 %i.lo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.thread, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i
  %i.lp = phi ptr [ %i.kw, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.thread ], [ %.pre254, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i ] ; 3 uses
  store ptr %.pre253, ptr %i.lp, align 8, !tbaa !323
  store ptr null, ptr %13, align 8, !tbaa !323
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 0, ptr %i.lq, align 8, !tbaa !327
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store ptr %i.lr, ptr %i.kv, align 8, !tbaa !330
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i

bb.al:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %.pre254, ptr noundef nonnull align 8 dereferenceable(12) %13)
  %.pre.i.i = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i: ; preds = %bb.al, %bb.ak
  %i.ls = phi ptr [ null, %bb.ak ], [ %.pre.i.i, %bb.al ] ; 2 uses
  %i.lt = ptrtoint ptr %i.ls to i64
  %notsub.i.i.i.i.i.i = add i64 %i.lt, -1
  %i.lu = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.lu, label %bb.am, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.am:                                            ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lw = atomicrmw sub ptr %i.lv, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.am, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %i.ji, label %bb.an, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.1

bb.an:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ly = atomicrmw add ptr %i.lx, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.1

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.1:   ; preds = %bb.an, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %i.jg, ptr %13, align 8, !tbaa !323, !alias.scope !489
  store i32 0, ptr %i.ll, align 8, !tbaa !327, !alias.scope !489
  %i.lz = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 5 uses
  %i.ma = load ptr, ptr %i.ku, align 8, !tbaa !333
  %.not.i.i.i.i80.1 = icmp eq ptr %i.lz, %i.ma
  br i1 %.not.i.i.i.i80.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.1
  store ptr %i.jg, ptr %i.lz, align 8, !tbaa !323
  store ptr null, ptr %13, align 8, !tbaa !323
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i32 0, ptr %i.mb, align 8, !tbaa !327
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store ptr %i.mc, ptr %i.kv, align 8, !tbaa !330
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.1

bb.ap:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.1
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.lz, ptr noundef nonnull align 8 dereferenceable(12) %13)
  %.pre.i.i.1 = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.1

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.1: ; preds = %bb.ap, %bb.ao
  %i.md = phi ptr [ null, %bb.ao ], [ %.pre.i.i.1, %bb.ap ] ; 2 uses
  %i.me = ptrtoint ptr %i.md to i64
  %notsub.i.i.i.i.i.i.1 = add i64 %i.me, -1
  %i.mf = icmp ult i64 %notsub.i.i.i.i.i.i.1, -32
  br i1 %i.mf, label %bb.aq, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.1

bb.aq:                                            ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mh = atomicrmw sub ptr %i.mg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.1

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.1:       ; preds = %bb.aq, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %i.jn, label %bb.ar, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.2

bb.ar:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.mj = atomicrmw add ptr %i.mi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.2

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.2:   ; preds = %bb.ar, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %i.jl, ptr %13, align 8, !tbaa !323, !alias.scope !489
  store i32 0, ptr %i.ll, align 8, !tbaa !327, !alias.scope !489
  %i.mk = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 5 uses
  %i.ml = load ptr, ptr %i.ku, align 8, !tbaa !333
  %.not.i.i.i.i80.2 = icmp eq ptr %i.mk, %i.ml
  br i1 %.not.i.i.i.i80.2, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.2
  store ptr %i.jl, ptr %i.mk, align 8, !tbaa !323
  store ptr null, ptr %13, align 8, !tbaa !323
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i32 0, ptr %i.mm, align 8, !tbaa !327
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store ptr %i.mn, ptr %i.kv, align 8, !tbaa !330
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.2

bb.at:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.2
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.mk, ptr noundef nonnull align 8 dereferenceable(12) %13)
  %.pre.i.i.2 = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.2

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.2: ; preds = %bb.at, %bb.as
  %i.mo = phi ptr [ null, %bb.as ], [ %.pre.i.i.2, %bb.at ] ; 2 uses
  %i.mp = ptrtoint ptr %i.mo to i64
  %notsub.i.i.i.i.i.i.2 = add i64 %i.mp, -1
  %i.mq = icmp ult i64 %notsub.i.i.i.i.i.i.2, -32
  br i1 %i.mq, label %bb.au, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.2

bb.au:                                            ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.2
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.ms = atomicrmw sub ptr %i.mr, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.2

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.2:       ; preds = %bb.au, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %i.js, label %bb.av, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.3

bb.av:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.2
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.mu = atomicrmw add ptr %i.mt, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.3

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.3:   ; preds = %bb.av, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %i.jq, ptr %13, align 8, !tbaa !323, !alias.scope !489
  store i32 0, ptr %i.ll, align 8, !tbaa !327, !alias.scope !489
  %i.mv = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 5 uses
  %i.mw = load ptr, ptr %i.ku, align 8, !tbaa !333
  %.not.i.i.i.i80.3 = icmp eq ptr %i.mv, %i.mw
  br i1 %.not.i.i.i.i80.3, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.3
  store ptr %i.jq, ptr %i.mv, align 8, !tbaa !323
  store ptr null, ptr %13, align 8, !tbaa !323
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i32 0, ptr %i.mx, align 8, !tbaa !327
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store ptr %i.my, ptr %i.kv, align 8, !tbaa !330
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.3

bb.ax:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.3
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.mv, ptr noundef nonnull align 8 dereferenceable(12) %13)
  %.pre.i.i.3 = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.3

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.3: ; preds = %bb.ax, %bb.aw
  %i.mz = phi ptr [ null, %bb.aw ], [ %.pre.i.i.3, %bb.ax ] ; 2 uses
  %i.na = ptrtoint ptr %i.mz to i64
  %notsub.i.i.i.i.i.i.3 = add i64 %i.na, -1
  %i.nb = icmp ult i64 %notsub.i.i.i.i.i.i.3, -32
  br i1 %i.nb, label %bb.ay, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.3

bb.ay:                                            ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nd = atomicrmw sub ptr %i.nc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.3

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.3:       ; preds = %bb.ay, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %i.jx, label %bb.az, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.4

bb.az:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.3
  %i.ne = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.nf = atomicrmw add ptr %i.ne, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.4

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.4:   ; preds = %bb.az, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %i.jv, ptr %13, align 8, !tbaa !323, !alias.scope !489
  store i32 0, ptr %i.ll, align 8, !tbaa !327, !alias.scope !489
  %i.ng = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 5 uses
  %i.nh = load ptr, ptr %i.ku, align 8, !tbaa !333
  %.not.i.i.i.i80.4 = icmp eq ptr %i.ng, %i.nh
  br i1 %.not.i.i.i.i80.4, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.4
  store ptr %i.jv, ptr %i.ng, align 8, !tbaa !323
  store ptr null, ptr %13, align 8, !tbaa !323
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i32 0, ptr %i.ni, align 8, !tbaa !327
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store ptr %i.nj, ptr %i.kv, align 8, !tbaa !330
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.4

bb.bb:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i.4
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.ng, ptr noundef nonnull align 8 dereferenceable(12) %13)
  %.pre.i.i.4 = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.4

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.4: ; preds = %bb.bb, %bb.ba
  %i.nk = phi ptr [ null, %bb.ba ], [ %.pre.i.i.4, %bb.bb ] ; 2 uses
  %i.nl = ptrtoint ptr %i.nk to i64
  %notsub.i.i.i.i.i.i.4 = add i64 %i.nl, -1
  %i.nm = icmp ult i64 %notsub.i.i.i.i.i.i.4, -32
  br i1 %i.nm, label %bb.bc, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.4

bb.bc:                                            ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i.i.4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = atomicrmw sub ptr %i.nn, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.4

end_hunk_0
begin_hunk_1_@_ZN4llvm3orc13MachOPlatformC2ERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS0_19DefinitionGeneratorESt14default_deleteIS7_EENS_15unique_functionIFNS1_13HeaderOptionsES5_EEESC_NSB_IFS6_INS0_19MaterializationUnitES8_ISF_EERS1_SC_EEERNS_5ErrorE:bb.a
bb.bu:                                            ; preds = %_ZNSt8functionIFvRKN4llvm8DenseMapIPNS0_3orc8JITDylibENS0_8DenseSetINS2_15SymbolStringPtrENS0_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS0_6detail12DenseMapPairIS4_S9_EEEEEEC2ERKSI_.exit
  store ptr null, ptr %7, align 8, !tbaa !92
  %i.po = getelementptr inbounds nuw i8, ptr %41, i64 20 ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !157 ; 2 uses
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.bu
  %i.pr = load ptr, ptr %41, align 8, !tbaa !160
  %i.ps = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !161
  %i.pu = zext i32 %i.pp to i64
  %i.pv = add nuw nsw i64 %i.pu, 31
  %i.pw = lshr i64 %i.pv, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv.i.i.i
  %i.py = load i32, ptr %i.px, align 4, !tbaa !61 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.py, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.pz = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.bv

bb.bv:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.py, %.lr.ph.i.i.i ], [ %i.qk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.qa = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.qb = or disjoint i32 %i.qa, %i.pz
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %i.qc
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !71 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.qf, -1
  %i.qg = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.qg, label %bb.bw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qi = atomicrmw sub ptr %i.qh, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.bw, %bb.bv
  %i.qj = add i32 %.0.i3.i.i.i, -1
  %i.qk = and i32 %i.qj, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.qk, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.bv, !llvm.loop !175

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i86 = icmp eq i64 %indvars.iv.next.i.i.i, %i.pw
  br i1 %.not.i.i.i.i86, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !176

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.po, align 4, !tbaa !157 ; 2 uses
  %i.ql = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ql, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.qm = load ptr, ptr %41, align 8, !tbaa !160
  %i.qn = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.qo = mul nuw nsw i64 %i.qn, 24
  %i.qp = add nuw nsw i64 %i.qn, 31
  %i.qq = lshr i64 %i.qp, 3
  %i.qr = and i64 %i.qq, 1073741820
  %i.qs = add nuw nsw i64 %i.qr, %i.qo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qm, i64 noundef %i.qs, i64 noundef 8) #27
  br label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit

bb.by:                                            ; preds = %_ZNSt8functionIFvRKN4llvm8DenseMapIPNS0_3orc8JITDylibENS0_8DenseSetINS2_15SymbolStringPtrENS0_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS0_6detail12DenseMapPairIS4_S9_EEEEEEC2ERKSI_.exit
  %i.qt = load i64, ptr %41, align 8, !tbaa !51, !noalias !495 ; 2 uses
  %i.qu = inttoptr i64 %i.qt to ptr
  store ptr null, ptr %41, align 8, !tbaa !51, !noalias !495
  store ptr %i.qu, ptr %7, align 8, !tbaa !92
  %.not213333 = icmp eq i64 %i.qt, 0
  br label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit: ; preds = %bb.by, %bb.bu, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.bx
  %.not213334 = phi i1 [ true, %bb.bu ], [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i ], [ true, %bb.bx ], [ %.not213333, %bb.by ]
  %i.qv = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !492 ; 2 uses
  %.not.i89 = icmp eq ptr %i.qw, null
  br i1 %.not.i89, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit
  %i.qx = call noundef zeroext i1 %i.qw(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %44, i32 noundef 3) #27, !inline_history !498 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, %bb.bz
  %i.qy = load ptr, ptr %43, align 8, !tbaa !487  ; 3 uses
  %i.qz = load ptr, ptr %i.kv, align 8, !tbaa !330 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.qy, %i.qz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.rf, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i ], [ %i.qy, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.ra = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.rb = ptrtoint ptr %i.ra to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.rb, -1
  %i.rc = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.rc, label %bb.ca, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.re = atomicrmw sub ptr %i.rd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i: ; preds = %bb.ca, %.lr.ph.i.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i90 = icmp eq ptr %i.rf, %i.qz
  br i1 %.not.i.i.i.i90, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !488

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.pr.i.i91 = load ptr, ptr %43, align 8, !tbaa !487
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.rg = phi ptr [ %.pr.i.i91, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.qy, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i
  %i.rh = load ptr, ptr %i.ku, align 8, !tbaa !333
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rg to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rk) #30
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, %bb.cb
  br i1 %i.kr, label %bb.cc, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93

bb.cc:                                            ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit
  %i.rl = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.rm = atomicrmw sub ptr %i.rl, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93:         ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, %bb.cc
  br i1 %i.km, label %bb.cd, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.1

bb.cd:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93
  %i.rn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ro = atomicrmw sub ptr %i.rn, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.1

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.1:       ; preds = %bb.cd, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93
  br i1 %i.kh, label %bb.ce, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.2

bb.ce:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.1
  %i.rp = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.rq = atomicrmw sub ptr %i.rp, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.2

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.2:       ; preds = %bb.ce, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.1
  br i1 %i.kc, label %bb.cf, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.3

bb.cf:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.rs = atomicrmw sub ptr %i.rr, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.3

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.3:       ; preds = %bb.cf, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.2
  br i1 %i.jx, label %bb.cg, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.4

bb.cg:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.3
  %i.rt = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.ru = atomicrmw sub ptr %i.rt, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.4

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.4:       ; preds = %bb.cg, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.3
  br i1 %i.js, label %bb.ch, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.5

bb.ch:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.rw = atomicrmw sub ptr %i.rv, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.5

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.5:       ; preds = %bb.ch, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.4
  br i1 %i.jn, label %bb.ci, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.6

bb.ci:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.5
  %i.rx = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.ry = atomicrmw sub ptr %i.rx, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.6

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.6:       ; preds = %bb.ci, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.5
  br i1 %i.ji, label %bb.cj, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.7

bb.cj:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.6
  %i.rz = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.sa = atomicrmw sub ptr %i.rz, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.7

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.7:       ; preds = %bb.cj, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.6
  br i1 %i.jd, label %bb.ck, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.8

bb.ck:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.7
  %i.sb = getelementptr inbounds nuw i8, ptr %.pre253, i64 8
  %i.sc = atomicrmw sub ptr %i.sb, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.8

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.8:       ; preds = %bb.ck, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.7
  %i.sd = load ptr, ptr %42, align 8, !tbaa !499  ; 3 uses
  %.not.i.i.i94 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.8
  %i.se = load ptr, ptr %i.iy, align 8, !tbaa !500
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = ptrtoint ptr %i.sd to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %i.sd, i64 noundef %i.sh) #30
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit93.8, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  br i1 %.not213334, label %bb.cm, label %bb.dg

bb.cm:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  store ptr %i.dy, ptr %45, align 8, !tbaa !501
  %i.si = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  store i8 0, ptr %i.si, align 8, !tbaa !504
  %i.sj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.dy) #27 ; 2 uses
  %.not.i.i.i95 = icmp eq i32 %i.sj, 0
  br i1 %.not.i.i.i95, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZSt20__throw_system_errori(i32 noundef %i.sj) #28
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.cm
  store i8 1, ptr %i.si, align 8, !tbaa !504
  %.val.val2.i = load i64, ptr %i.gb, align 8, !tbaa !505
  %i.sk = icmp eq i64 %.val.val2.i, 0
  br i1 %i.sk, label %"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.lr.ph.i

"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread": ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store ptr null, ptr %i.ea, align 8, !tbaa !470
  br label %bb.co

.lr.ph.i:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.lr.ph.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(9) %45) #27
  %.val.val.i = load i64, ptr %i.gb, align 8, !tbaa !505
  %i.sl = icmp eq i64 %.val.val.i, 0
  br i1 %i.sl, label %"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", label %.lr.ph.i, !llvm.loop !519

"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.lr.ph.i
  %.pre256 = load i8, ptr %i.si, align 8, !tbaa !504, !range !59
  %i.sm = trunc nuw i8 %.pre256 to i1
  store ptr null, ptr %i.ea, align 8, !tbaa !470
  br i1 %i.sm, label %bb.co, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.co:                                            ; preds = %"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", %"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit"
  %i.sn = load ptr, ptr %45, align 8, !tbaa !501  ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i96, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.so = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.sn) #27 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZNSt18condition_variable4waitIZN4llvm3orc13MachOPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EENS1_15unique_functionIFNS3_13HeaderOptionsES7_EEESE_NSD_IFS8_INS2_19MaterializationUnitESA_ISH_EERS3_SE_EEERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  %i.sp = load ptr, ptr %i.b, align 8, !tbaa !268, !nonnull !27, !align !28
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !29, !noalias !520
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !142, !noalias !523
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %46, ptr noundef nonnull align 8 dereferenceable(64) %i.st, ptr nonnull @.str.38, i64 33)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %34, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.sx = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #29, !noalias !526 ; 30 uses
  %i.sy = load ptr, ptr %i.su, align 8, !tbaa !35, !noalias !526
  %i.sz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !36, !noalias !526
  %i.tb = load ptr, ptr %46, align 8, !tbaa !71, !noalias !526 ; 5 uses
  %i.tc = ptrtoint ptr %i.tb to i64
  %notsub.i.i.i.i97 = add i64 %i.tc, -1
  %i.td = icmp ult i64 %notsub.i.i.i.i97, -32     ; 2 uses
  br i1 %i.td, label %bb.cq, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i98

bb.cq:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tf = atomicrmw add ptr %i.te, i64 1 seq_cst, align 8, !noalias !526 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i98

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i98:   ; preds = %bb.cq, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.tg, ptr %12, align 8, !tbaa !466, !noalias !526
  %i.th = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 0, ptr %i.th, align 8, !tbaa !468, !noalias !526
  %i.ti = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 2, ptr %i.ti, align 4, !tbaa !469, !noalias !526
  %i.tj = load i32, ptr %i.ge, align 8, !tbaa !468, !noalias !526
  %.not.i.i.i99 = icmp eq i32 %i.tj, 0
  br i1 %.not.i.i.i99, label %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EEC2EOS7_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i98
  %i.tk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %i.gc), !noalias !526 ; 0 uses
  br label %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EEC2EOS7_.exit.i: ; preds = %bb.cr, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i98
  %i.tl = load <2 x ptr>, ptr %i.sv, align 8, !tbaa !529, !noalias !526
  %i.tm = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !530, !noalias !526
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sv, i8 0, i64 24, i1 false), !noalias !526
  %.sroa.06.0.copyload.i = load i64, ptr %i.sw, align 8, !tbaa !150, !noalias !526
  %.sroa.05.0.copyload.i = load i64, ptr %i.af, align 8, !tbaa !150, !noalias !526
  %.sroa.04.0.copyload.i = load i64, ptr %i.an, align 8, !tbaa !150, !noalias !526
  %.sroa.03.0.copyload.i = load i64, ptr %i.bl, align 8, !tbaa !150, !noalias !526
  %.sroa.02.0.copyload.i = load i64, ptr %i.bt, align 8, !tbaa !150, !noalias !526
  %.sroa.01.0.copyload.i = load i64, ptr %i.cb, align 8, !tbaa !150, !noalias !526
  %.sroa.0.0.copyload.i = load i64, ptr %i.cj, align 8, !tbaa !150, !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !526
  store ptr %i.tb, ptr %11, align 8, !tbaa !71, !noalias !526
  br i1 %i.td, label %bb.cs, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i

bb.cs:                                            ; preds = %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EEC2EOS7_.exit.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tp = atomicrmw add ptr %i.to, i64 1 seq_cst, align 8, !noalias !526 ; 0 uses
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i: ; preds = %bb.cs, %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EEC2EOS7_.exit.i
  %i.tq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i8 0, ptr %i.tq, align 8, !tbaa !531, !noalias !526
  %i.tr = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 0, ptr %i.tr, align 1, !tbaa !534, !noalias !526
  %i.ts = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  store i32 4, ptr %i.ts, align 4, !tbaa !535, !noalias !526
  %i.tt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.tv = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 68, i64 noundef 8) #27, !noalias !526 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 64 ; 2 uses
  store ptr %i.tv, ptr %10, align 16, !tbaa !536, !noalias !526
  store ptr %i.tw, ptr %i.tu, align 8, !tbaa !537, !noalias !526
  store i32 0, ptr %i.tt, align 16, !tbaa !89, !noalias !526
  store i32 0, ptr %i.tw, align 4, !noalias !526
  %i.tx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull align 1 dereferenceable(2) %i.tq), !noalias !538 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3orc19MaterializationUnitE, i64 16), ptr %i.sx, align 8, !tbaa !133, !noalias !526
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.tz = load <2 x ptr>, ptr %10, align 16, !tbaa !60, !noalias !526
  store ptr null, ptr %10, align 16, !tbaa !543, !noalias !526
  store ptr null, ptr %i.tu, align 8, !tbaa !172, !noalias !526
  store <2 x ptr> %i.tz, ptr %i.ty, align 8, !tbaa !60, !noalias !526
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sx, i64 24 ; 2 uses
  %i.ub = load <2 x i32>, ptr %i.tt, align 16, !tbaa !61, !noalias !526
  store i32 0, ptr %i.tt, align 16, !tbaa !61, !noalias !526
  store i32 0, ptr %i.ts, align 4, !tbaa !61, !noalias !526
  store <2 x i32> %i.ub, ptr %i.ua, align 8, !tbaa !61, !noalias !526
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  store ptr null, ptr %i.uc, align 8, !tbaa !323, !noalias !526
  %i.ud = load ptr, ptr %11, align 8, !tbaa !71, !noalias !526 ; 2 uses
  %i.ue = ptrtoint ptr %i.ud to i64
  %notsub.i.i.i.i13.i.i = add i64 %i.ue, -1
  %i.uf = icmp ult i64 %notsub.i.i.i.i13.i.i, -32
  br i1 %i.uf, label %bb.ct, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS0_14JITSymbolFlagsEED2Ev.exit.i.i

bb.ct:                                            ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uh = atomicrmw sub ptr %i.ug, i64 1 seq_cst, align 8, !noalias !526 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS0_14JITSymbolFlagsEED2Ev.exit.i.i

_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS0_14JITSymbolFlagsEED2Ev.exit.i.i: ; preds = %bb.ct, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !526
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitE, i64 16), ptr %i.sx, align 8, !tbaa !133, !noalias !526
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  store ptr %0, ptr %i.ui, align 8, !tbaa !438, !noalias !526
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  store ptr %i.sy, ptr %i.uj, align 8, !tbaa !544, !noalias !526
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 56
  store i64 %i.ta, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !tbaa !150, !noalias !526
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sx, i64 64
  store ptr %i.tb, ptr %i.uk, align 8, !tbaa !323, !noalias !526
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sx, i64 72 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.sx, i64 88
  store ptr %i.um, ptr %i.ul, align 8, !tbaa !466, !noalias !526
  %i.un = getelementptr inbounds nuw i8, ptr %i.sx, i64 80
  store i32 0, ptr %i.un, align 8, !tbaa !468, !noalias !526
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sx, i64 84
  store i32 2, ptr %i.uo, align 4, !tbaa !469, !noalias !526
  %i.up = load i32, ptr %i.th, align 8, !tbaa !468, !noalias !526
  %.not.i.i.i.i100 = icmp eq i32 %i.up, 0
  br i1 %.not.i.i.i.i100, label %_ZNSt6vectorIN4llvm3orc6shared19AllocActionCallPairESaIS3_EED2Ev.exit.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS0_14JITSymbolFlagsEED2Ev.exit.i.i
  %i.uq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.ul, ptr noundef nonnull align 8 dereferenceable(64) %12), !noalias !526 ; 0 uses
  br label %_ZNSt6vectorIN4llvm3orc6shared19AllocActionCallPairESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4llvm3orc6shared19AllocActionCallPairESaIS3_EED2Ev.exit.i: ; preds = %bb.cu, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS0_14JITSymbolFlagsEED2Ev.exit.i.i
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sx, i64 136
  store <2 x ptr> %i.tl, ptr %i.ur, align 8, !tbaa !529, !noalias !526
  %i.us = getelementptr inbounds nuw i8, ptr %i.sx, i64 152
  store ptr %i.tn, ptr %i.us, align 8, !tbaa !530, !noalias !526
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sx, i64 160
  store i64 %.sroa.06.0.copyload.i, ptr %i.ut, align 8, !tbaa !150, !noalias !526
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sx, i64 168
  store i64 %.sroa.05.0.copyload.i, ptr %i.uu, align 8, !tbaa !150, !noalias !526
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sx, i64 176
  store i64 %.sroa.04.0.copyload.i, ptr %i.uv, align 8, !tbaa !150, !noalias !526
  %i.uw = getelementptr inbounds nuw i8, ptr %i.sx, i64 184
  store i64 %.sroa.03.0.copyload.i, ptr %i.uw, align 8, !tbaa !150, !noalias !526
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sx, i64 192
  store i64 %.sroa.02.0.copyload.i, ptr %i.ux, align 8, !tbaa !150, !noalias !526
  %i.uy = getelementptr inbounds nuw i8, ptr %i.sx, i64 200
  store i64 %.sroa.01.0.copyload.i, ptr %i.uy, align 8, !tbaa !150, !noalias !526
  %i.uz = getelementptr inbounds nuw i8, ptr %i.sx, i64 208
  store i64 %.sroa.0.0.copyload.i, ptr %i.uz, align 8, !tbaa !150, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !526
  %i.va = load ptr, ptr %12, align 8, !tbaa !466, !noalias !526 ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.tg
  br i1 %i.vb, label %_ZSt11make_uniqueIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc13MachOPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_11SmallVectorISt5tupleIJNS3_12ExecutorAddrESI_NS4_24MachOExecutorSymbolFlagsEEELj2EEESt6vectorINS3_6shared19AllocActionCallPairESaISO_EERSI_SR_SR_SR_SR_SR_SR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIN4llvm3orc6shared19AllocActionCallPairESaIS3_EED2Ev.exit.i
  call void @free(ptr noundef %i.va) #27, !noalias !526
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc13MachOPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_11SmallVectorISt5tupleIJNS3_12ExecutorAddrESI_NS4_24MachOExecutorSymbolFlagsEEELj2EEESt6vectorINS3_6shared19AllocActionCallPairESaISO_EERSI_SR_SR_SR_SR_SR_SR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc13MachOPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_11SmallVectorISt5tupleIJNS3_12ExecutorAddrESI_NS4_24MachOExecutorSymbolFlagsEEELj2EEESt6vectorINS3_6shared19AllocActionCallPairESaISO_EERSI_SR_SR_SR_SR_SR_SR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNSt6vectorIN4llvm3orc6shared19AllocActionCallPairESaIS3_EED2Ev.exit.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.vc = load i32, ptr %i.ua, align 8, !tbaa !89, !noalias !545
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109.thread, label %bb.cw

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109.thread: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc13MachOPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_11SmallVectorISt5tupleIJNS3_12ExecutorAddrESI_NS4_24MachOExecutorSymbolFlagsEEELj2EEESt6vectorINS3_6shared19AllocActionCallPairESaISO_EERSI_SR_SR_SR_SR_SR_SR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %47, align 8, !tbaa !92
  %i.ve = load ptr, ptr %i.sx, align 8, !tbaa !133
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8
  call void %i.vg(ptr noundef nonnull align 8 dereferenceable(216) %i.sx) #27, !inline_history !548
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i115

bb.cw:                                            ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc13MachOPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_11SmallVectorISt5tupleIJNS3_12ExecutorAddrESI_NS4_24MachOExecutorSymbolFlagsEEELj2EEESt6vectorINS3_6shared19AllocActionCallPairESaISO_EERSI_SR_SR_SR_SR_SR_SR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.vh = load ptr, ptr %i.fn, align 8, !tbaa !94, !noalias !545, !nonnull !27, !align !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.vi = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.vh) #27, !noalias !552 ; 2 uses
  %.not.i.i.i.i103 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i.i.i103, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_ZSt20__throw_system_errori(i32 noundef %i.vi) #28, !noalias !552
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i: ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !552
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !556, !noalias !557
  %.not.i.i.i104 = icmp eq i32 %i.vk, 0
  br i1 %.not.i.i.i104, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i, label %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i

_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i
  %i.vl = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29, !noalias !558 ; 3 uses
  %i.vm = atomicrmw add ptr %2, i32 1 monotonic, align 4, !noalias !558 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc15JITDylibDefunctE, i64 16), ptr %i.vl, align 8, !tbaa !133, !noalias !558
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store ptr %2, ptr %i.vn, align 8, !tbaa !563, !noalias !558
  br label %.critedge.sink.split.i.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i.i:                    ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i
  call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %47, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.sx) #27
  %i.vo = load ptr, ptr %47, align 8, !tbaa !92, !alias.scope !557
  %.not17.i.i.i = icmp eq ptr %i.vo, null
  br i1 %.not17.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit106

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(272) %2) #27
  %i.vp = load ptr, ptr %8, align 8, !tbaa !83, !noalias !557 ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !83, !noalias !557
  %i.vq = load ptr, ptr %i.fn, align 8, !tbaa !94, !noalias !545, !nonnull !27, !align !28
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 56
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !565 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.vs, null
  br i1 %.not10.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !133
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 32
  %i.vv = load ptr, ptr %i.vu, align 8
  call void %i.vv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %47, ptr noundef nonnull align 8 dereferenceable(8) %i.vs, ptr noundef nonnull align 8 dereferenceable(16) %i.vp, ptr noundef nonnull align 8 dereferenceable(40) %i.sx) #27, !inline_history !567
  %i.vw = load ptr, ptr %47, align 8, !tbaa !92, !alias.scope !557
  %.not19.i.i.i = icmp eq ptr %i.vw, null
  br i1 %.not19.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit106

_ZN4llvm5ErrorD2Ev.exit13.i.i.i:                  ; preds = %bb.cy, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i
  store ptr %i.sx, ptr %9, align 8, !tbaa !568, !noalias !557
  call void @_ZN4llvm3orc8JITDylib26installMaterializationUnitESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS3_EERNS0_15ResourceTrackerE(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.vp) #27
  %i.vx = load ptr, ptr %9, align 8, !tbaa !258, !noalias !557 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.vx, null
  br i1 %.not.i.i2.i.i, label %.critedge.sink.split.i.i.i, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit13.i.i.i
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !133
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8
  call void %i.wa(ptr noundef nonnull align 8 dereferenceable(40) %i.vx) #27, !inline_history !570
  br label %.critedge.sink.split.i.i.i

.critedge.sink.split.i.i.i:                       ; preds = %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i
  %.sroa.0162.0 = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i ], [ null, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i ], [ %i.sx, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i ]
  %.sroa.0159.0 = phi ptr [ %i.vp, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i ], [ %i.vp, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i ], [ null, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i ], [ null, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i ], [ %i.vl, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %47, align 8, !tbaa !92, !alias.scope !557
  br label %_ZN4llvm5ErrorD2Ev.exit106

_ZN4llvm5ErrorD2Ev.exit106:                       ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i, %bb.cy, %.critedge.sink.split.i.i.i
  %.sroa.0162.1 = phi ptr [ %.sroa.0162.0, %.critedge.sink.split.i.i.i ], [ %i.sx, %bb.cy ], [ %i.sx, %_ZN4llvm5ErrorD2Ev.exit.i.i.i ] ; 3 uses
  %.sroa.0159.1 = phi ptr [ %.sroa.0159.0, %.critedge.sink.split.i.i.i ], [ %i.vp, %bb.cy ], [ null, %_ZN4llvm5ErrorD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !552
  %i.wb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.vh) #27 ; 0 uses
  %i.wc = load ptr, ptr %47, align 8, !tbaa !92   ; 2 uses
  store ptr %i.wc, ptr %7, align 8, !tbaa !92
  store ptr null, ptr %47, align 8, !tbaa !92
  %.not214 = icmp eq ptr %i.wc, null              ; 2 uses
  %.not.i.i107 = icmp eq ptr %.sroa.0159.1, null
  br i1 %.not.i.i107, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109, label %bb.cz

bb.cz:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit106
  %i.wd = atomicrmw sub ptr %.sroa.0159.1, i32 1 acq_rel, align 4
  %.not.i.i.i.i108 = icmp eq i32 %i.wd, 1
  br i1 %.not.i.i.i.i108, label %bb.da, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109

bb.da:                                            ; preds = %bb.cz
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sroa.0159.1) #27
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0159.1, i64 noundef 16) #30
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109: ; preds = %_ZN4llvm5ErrorD2Ev.exit106, %bb.cz, %bb.da
  %.not.i110 = icmp eq ptr %.sroa.0162.1, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109
  %i.we = load ptr, ptr %.sroa.0162.1, align 8, !tbaa !133
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0162.1) #27, !inline_history !548
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br i1 %.not214, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i115, label %bb.de

_ZNSt10unique_ptrIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br i1 %.not214, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i115, label %bb.de

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i115: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit109.thread, %_ZNKSt14default_deleteIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  %i.wh = load ptr, ptr %i.b, align 8, !tbaa !268, !nonnull !27, !align !28
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.wi = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.wj = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29, !noalias !571 ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 16 ; 2 uses
  store ptr %2, ptr %i.wj, align 8, !noalias !571
  %.sroa.5.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  store i32 1, ptr %.sroa.5.0..sroa_idx.i114, align 8, !noalias !571
  store ptr %i.wl, ptr %i.wk, align 8, !tbaa !486, !alias.scope !571
  %.pre257 = load ptr, ptr %46, align 8, !tbaa !323
  store ptr %i.wl, ptr %i.wi, align 8, !alias.scope !571
  store ptr %i.wj, ptr %49, align 8, !alias.scope !571
  store ptr %.pre257, ptr %50, align 8, !tbaa !323
  store ptr null, ptr %46, align 8, !tbaa !323
  call void @_ZN4llvm3orc16ExecutionSession6lookupERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS7_EENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.203") align 8 %48, ptr noundef nonnull align 8 dereferenceable(392) %i.wh, ptr noundef nonnull align 8 dereferenceable(24) %49, ptr nofree noundef nonnull align 8 dereferenceable(8) %50, i8 noundef zeroext 63) #27
  %i.wm = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.wn = load i8, ptr %i.wm, align 8, !noalias !574
  %i.wo = trunc i8 %i.wn to i1
  br i1 %i.wo, label %bb.db, label %_ZN4llvm5ErrorD2Ev.exit135

_ZN4llvm5ErrorD2Ev.exit135:                       ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i115
  store ptr null, ptr %7, align 8, !tbaa !92
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit139

bb.db:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i115
  %i.wp = load i64, ptr %48, align 8, !tbaa !51, !noalias !574 ; 2 uses
  %i.wq = inttoptr i64 %i.wp to ptr
  store ptr null, ptr %48, align 8, !tbaa !51, !noalias !574
  store ptr %i.wq, ptr %7, align 8, !tbaa !92
  %.not215337 = icmp eq i64 %i.wp, 0
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit139

_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit139: ; preds = %bb.db, %_ZN4llvm5ErrorD2Ev.exit135
  %.not215338 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit135 ], [ %.not215337, %bb.db ]
  %i.wr = load ptr, ptr %50, align 8, !tbaa !71   ; 2 uses
  %i.ws = ptrtoint ptr %i.wr to i64
  %notsub.i.i.i140 = add i64 %i.ws, -1
  %i.wt = icmp ult i64 %notsub.i.i.i140, -32
  br i1 %i.wt, label %bb.dc, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit141

bb.dc:                                            ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit139
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wv = atomicrmw sub ptr %i.wu, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit141

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit141:        ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit139, %bb.dc
  %i.ww = load ptr, ptr %49, align 8, !tbaa !499  ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit143, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit141
  %i.wx = load ptr, ptr %i.wi, align 8, !tbaa !500
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = ptrtoint ptr %i.ww to i64
  %i.xa = sub i64 %i.wy, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %i.ww, i64 noundef %i.xa) #30
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit143

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit143: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit141, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  br i1 %.not215338, label %_ZN4llvm5ErrorD2Ev.exit144, label %bb.de

_ZN4llvm5ErrorD2Ev.exit144:                       ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit143
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  call void @_ZN4llvm3orc13MachOPlatform32associateRuntimeSupportFunctionsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %51, ptr noundef nonnull align 8 dereferenceable(480) %0)
  %i.xb = load ptr, ptr %51, align 8, !tbaa !92
  store ptr %i.xb, ptr %7, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %bb.de

bb.de:                                            ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i, %_ZN4llvm5ErrorD2Ev.exit144, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit143, %_ZNSt10unique_ptrIN12_GLOBAL__N_149MachOPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit
  %i.xc = load ptr, ptr %46, align 8, !tbaa !71   ; 2 uses
  %i.xd = ptrtoint ptr %i.xc to i64
  %notsub.i.i.i145 = add i64 %i.xd, -1
  %i.xe = icmp ult i64 %notsub.i.i.i145, -32
  br i1 %i.xe, label %bb.df, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit146

bb.df:                                            ; preds = %bb.de
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xg = atomicrmw sub ptr %i.xf, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit146

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit146:        ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit59, %_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit146
  %i.xh = load ptr, ptr %i.gc, align 8, !tbaa !466 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.gd
  br i1 %i.xi, label %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef %i.xh) #27
  br label %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i: ; preds = %bb.dh, %bb.dg
  %i.xj = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !577 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !578 ; 2 uses
  %.not4.i.i.i.i147 = icmp eq ptr %i.xk, %i.xm
  br i1 %.not4.i.i.i.i147, label %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i148

.lr.ph.i.i.i.i148:                                ; preds = %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i, %_ZSt8_DestroyIN4llvm3orc6shared19AllocActionCallPairEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i149 = phi ptr [ %i.xv, %_ZSt8_DestroyIN4llvm3orc6shared19AllocActionCallPairEEvPT_.exit.i.i.i.i ], [ %i.xk, %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i ] ; 5 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i149, i64 64
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !579 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i149, i64 88
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit.i.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i148
  call void @free(ptr noundef %i.xo) #27
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit.i.i.i.i.i.i

_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.di, %.lr.ph.i.i.i.i148
  %i.xr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i149, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !579 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i149, i64 32
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZSt8_DestroyIN4llvm3orc6shared19AllocActionCallPairEEvPT_.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.xs) #27
  br label %_ZSt8_DestroyIN4llvm3orc6shared19AllocActionCallPairEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm3orc6shared19AllocActionCallPairEEvPT_.exit.i.i.i.i: ; preds = %bb.dj, %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit.i.i.i.i.i.i
  %i.xv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i149, i64 112 ; 2 uses
  %.not.i.i.i.i150 = icmp eq ptr %i.xv, %i.xm
  br i1 %.not.i.i.i.i150, label %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i148, !llvm.loop !581

_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm3orc6shared19AllocActionCallPairEEvPT_.exit.i.i.i.i
  %.pr.i.i151 = load ptr, ptr %i.xj, align 8, !tbaa !577
  br label %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exitthread-pre-split.i.i, %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i
  %i.xw = phi ptr [ %.pr.i.i151, %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exitthread-pre-split.i.i ], [ %i.xk, %_ZN4llvm11SmallVectorISt5tupleIJNS_3orc12ExecutorAddrES3_NS2_13MachOPlatform24MachOExecutorSymbolFlagsEEELj2EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i152 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i1.i.i152, label %_ZN4llvm3orc13MachOPlatform13BootstrapInfoD2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exit.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !530
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = ptrtoint ptr %i.xw to i64
  %i.yb = sub i64 %i.xz, %i.ya
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.yb) #30
  br label %_ZN4llvm3orc13MachOPlatform13BootstrapInfoD2Ev.exit

_ZN4llvm3orc13MachOPlatform13BootstrapInfoD2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm3orc6shared19AllocActionCallPairEEvT_S5_.exit.i.i, %bb.dk
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(152) %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.dl

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.dl

bb.dl:                                            ; preds = %.critedge, %_ZN4llvm3orc13MachOPlatform13BootstrapInfoD2Ev.exit
  ret void
}

declare void @_ZN4llvm3orc16ExecutionSession6lookupERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS7_EENS0_15SymbolLookupSetENS0_10LookupKindENS0_11SymbolStateESt8functionIFvRKNS_8DenseMapIS5_NS_8DenseSetINS0_15SymbolStringPtrENS_12DenseMapInfoISI_vEEEENSJ_IS5_vEENS_6detail12DenseMapPairIS5_SL_EEEEEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.263") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), i32 noundef, i8 noundef zeroext, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN4llvm3orc16ExecutionSession6lookupERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS7_EENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.203") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(8), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc13MachOPlatform32associateRuntimeSupportFunctionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.278", align 16 ; 12 uses
  %3 = alloca %"class.llvm::unique_function.280", align 8 ; 11 uses
  %4 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %5 = alloca %"class.llvm::unique_function.280", align 8 ; 11 uses
  %6 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %7 = alloca %"class.llvm::DenseMap.278", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8, !alias.scope !582
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 ptrtoint (ptr @_ZN4llvm3orc13MachOPlatform19rt_pushInitializersENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrENS1_20MachOJITDylibDepInfoEESaIS8_EEEEEEES6_ to i64), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !582
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !582
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !585
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENSG_IJbNSF_ISH_EEEEEEEEEEEESH_EZNSC_16wrapAsyncWithSPSISN_NS3_13MachOPlatformEJNS2_IFvNS_8ExpectedISt6vectorISt4pairINS3_12ExecutorAddrENSP_20MachOJITDylibDepInfoEESaISV_EEEEEEEST_EEENS2_IFvS7_S9_mEEEPT0_MS13_FvDpT1_EEUlOS10_OST_E_EES12_OS13_EUlS7_S9_mE_S1D_EET_NSA_8CalledAsIS13_EEENUlPKSA_RS7_S9_mE_8__invokeES1I_S1J_S9_m, ptr %i.a, align 8, !tbaa !588, !alias.scope !585
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268, !nonnull !27, !align !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29, !noalias !590
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142, !noalias !593
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr nonnull @.str.39, i64 37)
  %i.i = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.i, 0 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 4 uses
  %i.k = icmp eq ptr %i.j, %3
  br i1 %i.k, label %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !596  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.thread, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.thread: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 32
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENSG_IJbNSF_ISH_EEEEEEEEEEEESH_EZNSC_16wrapAsyncWithSPSISN_NS3_13MachOPlatformEJNS2_IFvNS_8ExpectedISt6vectorISt4pairINS3_12ExecutorAddrENSP_20MachOJITDylibDepInfoEESaISV_EEEEEEEST_EEENS2_IFvS7_S9_mEEEPT0_MS13_FvDpT1_EEUlOS10_OST_E_EES12_OS13_EUlS7_S9_mE_S1D_EET_NSA_8CalledAsIS13_EEENUlPKSA_RS7_S9_mE_8__invokeES1I_S1J_S9_m, ptr %i.n, align 8, !tbaa !588
  br label %bb.d

end_hunk_1
