Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish6EngineC2ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  %i.ade = load i64, ptr %i.abz, align 8, !tbaa !69
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.adf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZNSt14_Function_baseD2Ev.exit369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  call void @_ZN9Stockfish6Engine13load_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  call void @_ZN9Stockfish6Engine14resize_threadsEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  ret void
}

declare void @_ZN9Stockfish11CommandLine20get_binary_directoryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEb(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned long, unsigned long, std::_Identity<unsigned long>, std::less<unsigned long>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %4 = alloca %"class.std::set", align 8          ; 12 uses
  %5 = alloca %class.anon.161, align 8            ; 6 uses
  %6 = alloca %"class.std::optional.162", align 16 ; 18 uses
  %7 = alloca %"class.Stockfish::NumaConfig", align 16 ; 16 uses
  %i.a = zext i1 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !319
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51, !alias.scope !319
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr null, ptr %i.c, align 8, !tbaa !52, !alias.scope !319
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53, !alias.scope !319
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !54, !alias.scope !319
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !alias.scope !319
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 0, ptr %i.k, align 8, !tbaa !55
  br i1 %2, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_nodeC2ERS5_.exit.i.i, label %bb.e

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_nodeC2ERS5_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %4, ptr %i.m, align 8, !tbaa !320
  store ptr null, ptr %i.l, align 8, !tbaa !106
  store ptr null, ptr %i.h, align 8, !tbaa !52
  store ptr %i.g, ptr %i.i, align 8, !tbaa !53
  store ptr %i.g, ptr %i.j, align 8, !tbaa !54
  store i64 0, ptr %i.k, align 8, !tbaa !55
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, i64 16), align 8, !tbaa !52 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i, label %_ZNSt3setImSt4lessImESaImEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_nodeC2ERS5_.exit.i.i
  %i.o = call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.n, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i, label %bb.c, !llvm.loop !317

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i: ; preds = %bb.c
  store ptr %.0.i.i.i.i.i, ptr %i.i, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i
  %.0.i.i7.i.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 2 uses
  %.not.i.i8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImERKS5_RT0_.exit.i.i, label %bb.d, !llvm.loop !318

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImERKS5_RT0_.exit.i.i: ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i, ptr %i.j, align 8, !tbaa !56
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, i64 40), align 8, !tbaa !55
  store i64 %i.t, ptr %i.k, align 8, !tbaa !55
  store ptr %i.o, ptr %i.h, align 8, !tbaa !56
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !321
  %.pre6.i.i = load ptr, ptr %3, align 8, !tbaa !105
  br label %_ZNSt3setImSt4lessImESaImEEaSERKS3_.exit

_ZNSt3setImSt4lessImESaImEEaSERKS3_.exit:         ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_nodeC2ERS5_.exit.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImERKS5_RT0_.exit.i.i
  %i.u = phi ptr [ %.pre6.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImERKS5_RT0_.exit.i.i ], [ null, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_nodeC2ERS5_.exit.i.i ]
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImERKS5_RT0_.exit.i.i ], [ %4, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_nodeC2ERS5_.exit.i.i ]
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3setImSt4lessImESaImEEaSERKS3_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i8 %i.a, ptr %5, align 8, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.w, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !112
  switch i8 %i.y, label %bb.g [
    i8 0, label %.critedge
    i8 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %1, align 8, !tbaa !323
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.162") align 8 %6, i1 noundef zeroext %2, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !114, !range !61, !noundef !62
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit23

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !75    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load <2 x ptr>, ptr %6, align 16, !tbaa !71
  store <2 x ptr> %i.aj, ptr %0, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !73
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !73
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %6, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i, ptr noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = ptrtoint ptr %i.ad to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ar) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.at)
  store ptr null, ptr %i.c, align 8, !tbaa !52
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  store ptr %i.b, ptr %i.e, align 8, !tbaa !54
  store i64 0, ptr %i.f, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZN9Stockfish10NumaConfigaSEOS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !51
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !51
  store ptr %i.av, ptr %i.c, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ba = load <2 x ptr>, ptr %i.ay, align 16, !tbaa !56
  store <2 x ptr> %i.ba, ptr %i.d, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.b, ptr %i.bb, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 16, !tbaa !55
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !55
  store ptr null, ptr %i.au, align 8, !tbaa !52
  store ptr %i.aw, ptr %i.ay, align 16, !tbaa !53
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !54
  store i64 0, ptr %i.bc, align 16, !tbaa !55
  br label %_ZN9Stockfish10NumaConfigaSEOS0_.exit

_ZN9Stockfish10NumaConfigaSEOS0_.exit:            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.be, ptr noundef nonnull align 8 dereferenceable(9) %i.bf, i64 9, i1 false)
  %i.bg = load i8, ptr %i.aa, align 8, !tbaa !114, !range !61, !noundef !62
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit
  store i8 0, ptr %i.aa, align 8, !tbaa !114
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef null)
  %i.bj = load ptr, ptr %6, align 16, !tbaa !75   ; 3 uses
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.k ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i.i.i, ptr noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %6, align 16, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i.i.i.i.i, %bb.k
  %i.bo = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bj, %bb.k ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.ak, align 16, !tbaa !73
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #33
  br label %_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit: ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.p

_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit23: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %7, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.bt = load ptr, ptr %0, align 8, !tbaa !75    ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !76 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = load <2 x ptr>, ptr %7, align 16, !tbaa !71
  store <2 x ptr> %i.bz, ptr %0, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !73
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !73
  %.not4.i.i.i.i.i.i24 = icmp eq ptr %i.bt, %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %7, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i24, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i28, label %.lr.ph.i.i.i.i.i.i25

.lr.ph.i.i.i.i.i.i25:                             ; preds = %.critedge, %.lr.ph.i.i.i.i.i.i25
  %.05.i.i.i.i.i.i26 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i25 ], [ %i.bt, %.critedge ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i26, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i26, ptr noundef %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i26, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.ce, %i.bv
  br i1 %.not.i.i.i.i.i.i27, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i28, label %.lr.ph.i.i.i.i.i.i25, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i25, %.critedge
  %.not.i.i1.i.i.i.i29 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i.i.i.i29, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i30, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i28
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = ptrtoint ptr %i.bt to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ch) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i30

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i30: ; preds = %bb.m, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef %i.cj)
  store ptr null, ptr %i.c, align 8, !tbaa !52
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  store ptr %i.b, ptr %i.e, align 8, !tbaa !54
  store i64 0, ptr %i.f, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i31, label %_ZN9Stockfish10NumaConfigaSEOS0_.exit32, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i30
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !51
  store i32 %i.cn, ptr %i.b, align 8, !tbaa !51
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !52
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cq = load <2 x ptr>, ptr %i.co, align 16, !tbaa !56
  store <2 x ptr> %i.cq, ptr %i.d, align 8, !tbaa !56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.b, ptr %i.cr, align 8, !tbaa !74
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 16, !tbaa !55
  store i64 %i.ct, ptr %i.f, align 8, !tbaa !55
  store ptr null, ptr %i.ck, align 8, !tbaa !52
  store ptr %i.cm, ptr %i.co, align 16, !tbaa !53
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !54
  store i64 0, ptr %i.cs, align 16, !tbaa !55
  br label %_ZN9Stockfish10NumaConfigaSEOS0_.exit32

_ZN9Stockfish10NumaConfigaSEOS0_.exit32:          ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i30, %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cu, ptr noundef nonnull align 8 dereferenceable(9) %i.cv, i64 9, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, ptr noundef null)
  %i.cx = load ptr, ptr %7, align 16, !tbaa !75   ; 3 uses
  %i.cy = load ptr, ptr %i.by, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit32, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %i.cx, %_ZN9Stockfish10NumaConfigaSEOS0_.exit32 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.db, %i.cy
  br i1 %.not.i.i.i.i33, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 16, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZN9Stockfish10NumaConfigaSEOS0_.exit32
  %i.dc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.cx, %_ZN9Stockfish10NumaConfigaSEOS0_.exit32 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.dd = load ptr, ptr %i.ca, align 16, !tbaa !73
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseIN9Stockfish10NumaConfigELb0ELb0EED2Ev.exit, %_ZN9Stockfish10NumaConfigD2Ev.exit
  call void @_ZN9Stockfish10NumaConfig23remove_empty_numa_nodesEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  br i1 %2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.dh, align 8, !tbaa !124
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEC2ERNS_22NumaReplicationContextEOSt10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish18NumaReplicatedBaseE, i64 16), ptr %0, align 8, !tbaa !126
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.02022.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !56 ; 2 uses
  %.not23.i.i.i.i.i = icmp eq ptr %.02022.i.i.i.i.i, null
  br i1 %.not23.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.02024.i.i.i.i.i = phi ptr [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.02022.i.i.i.i.i, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = icmp ult ptr %0, %i.e                    ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.f, i64 16, i64 24
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.020.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.020.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !324

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.f, label %._crit_edge.thread.i.i.i.i.i, label %bb.c

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %bb.a
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Engine14resize_threadsEv:._crit_edge.i.i
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN9Stockfish6Engine5perftERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEib(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %5 = alloca %"class.Stockfish::Position", align 8 ; 5 uses
  tail call void @_ZNK9Stockfish6Engine15verify_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1016
  store i64 0, ptr %i.a, align 8, !tbaa !78
  %i.b = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %3, ptr noundef nonnull %4) #28 ; 0 uses
  %i.c = call noundef i64 @_ZN9Stockfish9Benchmark5perftILb1EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %5, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine15verify_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.119", align 8   ; 8 uses
  %7 = alloca %"struct.std::pair", align 8        ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !136
  switch i8 %i.f, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit: ; preds = %bb.a, %bb.c
  %.0.i.i.i.in.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.a ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !65
  store i64 7308332046502426181, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !69
  %i.l = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(152) %i.l) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE(ptr noundef nonnull align 64 dereferenceable(131331893) %.0.i.i.i.i.i, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #28
  %i.n = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !69
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.i, align 8, !tbaa !69
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load i8, ptr %i.x, align 8, !tbaa !136
  switch i8 %i.y, label %bb.g [
    i8 -1, label %bb.e
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  call void @abort() #32
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.f
  %.0.i.i.i.in.i.i13 = phi ptr [ %i.z, %bb.f ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  %.0.i.i.i.i.i14 = load ptr, ptr %.0.i.i.i.in.i.i13, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i14, i64 131331904
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ab, ptr noundef nonnull align 1 dereferenceable(13) @.str.27, i64 13, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.ac, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.ad, align 1, !tbaa !69
  %i.ae = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %i.ae) #28
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE(ptr noundef nonnull align 64 dereferenceable(6517429) %i.aa, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #28
  %i.af = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEptEv.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.ak = load ptr, ptr %5, align 8, !tbaa !67    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !69
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE21get_status_and_errorsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.119") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !148 ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !149   ; 3 uses
  %.not = icmp eq ptr %i.ap, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1624
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.lcssa63 = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.hh, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit ] ; 2 uses
  %.lcssa53 = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.hi, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa53, %.lcssa63
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i ], [ %.lcssa53, %._crit_edge ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !60, !range !61, !noundef !62
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.h, label %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  store i8 0, ptr %i.bg, align 8, !tbaa !60
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !69
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #33
  br label %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %.lcssa63
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i

_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i, %._crit_edge
  %i.bq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exitthread-pre-split.i ], [ %.lcssa53, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !150
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #33
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SD_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %i.bw = phi ptr [ %i.aq, %.lr.ph ], [ %i.hi, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit ]
  %.073 = phi i64 [ 0, %.lr.ph ], [ %i.co, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %.073 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !157
  store i32 %i.by, ptr %7, align 8, !tbaa !157
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i8 0, ptr %i.as, align 8, !tbaa !60
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !60, !range !61, !noundef !62
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !45
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %bb.l, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ch, ptr %i.ar, align 8, !tbaa !67
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.ci, ptr %i.at, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.l, %bb.k
  %i.cj = phi ptr [ %i.ch, %bb.l ], [ %i.at, %bb.k ] ; 2 uses
  switch i64 %i.cf, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !69
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !69
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  store i64 %i.cl, ptr %i.au, align 8, !tbaa !68
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 0, ptr %i.cn, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.as, align 8, !tbaa !60
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit: ; preds = %bb.j, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.co = add nuw i64 %.073, 1                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.cp = icmp ult i64 %.073, 9
  br i1 %i.cp, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit, %bb.t
  %.029.i.i = phi i32 [ %i.cx, %bb.t ], [ 1, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.cw, %bb.t ], [ %i.co, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit ] ; 5 uses
  %i.cq = icmp ult i64 %.02328.i.i, 100
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cr = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cs = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cu = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cw = udiv i64 %.02328.i.i, 10000
  %i.cx = add i32 %.029.i.i, 4                    ; 2 uses
  %i.cy = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.cy, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit
  %.022.i.i = phi i32 [ %i.cv, %bb.s ], [ %i.cr, %bb.o ], [ %i.ct, %bb.q ], [ 1, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSA_.exit ], [ %i.cx, %bb.t ]
  %i.cz = zext i32 %.022.i.i to i64
  store ptr %i.av, ptr %10, align 8, !tbaa !65, !alias.scope !342
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.cz, i8 noundef signext 0) #28
  %i.da = load ptr, ptr %10, align 8, !tbaa !67, !alias.scope !342 ; 4 uses
  %i.db = icmp ugt i64 %.073, 98
  br i1 %i.db, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i24

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !68, !alias.scope !342
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.dh, %.lr.ph.i2.i ], [ %i.co, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dr, %.lr.ph.i2.i ], [ %i.de, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.df = urem i64 %.020.i.i, 100
  %i.dg = shl nuw nsw i64 %i.df, 1
  %i.dh = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dg ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !69, !noalias !342
  %i.dl = zext i32 %.01819.i.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dl
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !69
  %i.dn = load i8, ptr %i.di, align 2, !tbaa !69, !noalias !342
  %i.do = add i32 %.01819.i.i, -1
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dp
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !69
  %i.dr = add i32 %.01819.i.i, -2
  %i.ds = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ds, label %.lr.ph.i2.i, label %._crit_edge.i.i24, !llvm.loop !3

._crit_edge.i.i24:                                ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.co, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.dh, %.lr.ph.i2.i ] ; 3 uses
  %i.dt = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i24
  %i.du = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !69, !noalias !342
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !69
  %i.dz = load i8, ptr %i.dv, align 2, !tbaa !69, !noalias !342
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.v:                                             ; preds = %._crit_edge.i.i24
  %i.ea = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.eb = or disjoint i8 %i.ea, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.u, %bb.v
  %storemerge.i.i = phi i8 [ %i.eb, %bb.v ], [ %i.dz, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.da, align 1, !tbaa !69
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.ec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 16) #28, !noalias !343 ; 6 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !65, !alias.scope !343
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNK9Stockfish6Engine15verify_networksEv:bb.a
  %i.ew = icmp ult i64 %i.ev, 16
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.es, i64 %i.ex, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.er, ptr %8, align 8, !tbaa !67, !alias.scope !344
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !69
  store i64 %i.ey, ptr %i.az, align 8, !tbaa !69, !alias.scope !344
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.pre.i28 = load i64, ptr %.phi.trans.insert.i27, align 8, !tbaa !68
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ez = phi i64 [ %i.ev, %bb.y ], [ %.pre.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.ez, ptr %i.ba, align 8, !tbaa !68, !alias.scope !344
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !67
  store i64 0, ptr %i.fa, align 8, !tbaa !68
  store i8 0, ptr %i.es, align 8, !tbaa !69
  %i.fb = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ax
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.fd = load i64, ptr %i.ax, align 8, !tbaa !69
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.ff = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.av
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.fh = load i64, ptr %i.av, align 8, !tbaa !69
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fj = load i32, ptr %7, align 8, !tbaa !158
  %i.fk = load i64, ptr %i.ba, align 8, !tbaa !68 ; 4 uses
  switch i32 %i.fj, label %bb.af [
    i32 0, label %bb.z
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fl = add i64 %i.fk, -4611686018427387890
  %i.fm = icmp ult i64 %i.fl, 14
  br i1 %i.fm, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.z
  %i.fn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.33, i64 noundef 14) #28 ; 0 uses
  br label %bb.ah

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fo = add i64 %i.fk, -4611686018427387891
  %i.fp = icmp ult i64 %i.fo, 13
  br i1 %i.fp, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %bb.ab
  %i.fq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.34, i64 noundef 13) #28 ; 0 uses
  br label %bb.ah

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fr = add i64 %i.fk, -4611686018427387890
  %i.fs = icmp ult i64 %i.fr, 14
  br i1 %i.fs, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit39

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit39: ; preds = %bb.ad
  %i.ft = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.35, i64 noundef 14) #28 ; 0 uses
  br label %bb.ah

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fu = add i64 %i.fk, -4611686018427387889
  %i.fv = icmp ult i64 %i.fu, 15
  br i1 %i.fv, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41: ; preds = %bb.af
  %i.fw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.36, i64 noundef 15) #28 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fx = load i8, ptr %i.as, align 8, !tbaa !60, !range !61, !noundef !62
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.fz = load ptr, ptr %i.ar, align 8, !tbaa !67, !noalias !345
  %i.ga = load i64, ptr %i.au, align 8, !tbaa !68, !noalias !345 ; 3 uses
  store ptr %i.bb, ptr %11, align 8, !tbaa !65, !alias.scope !346
  store i64 0, ptr %i.bc, align 8, !tbaa !68, !alias.scope !346
  store i8 0, ptr %i.bb, align 8, !tbaa !69, !alias.scope !346
  %i.gb = add i64 %i.ga, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.gb) #28
  %i.gc = load i64, ptr %i.bc, align 8, !tbaa !68, !alias.scope !346
  %i.gd = icmp eq i64 %i.gc, 4611686018427387903
  br i1 %i.gd, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.ai
  %i.ge = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.37, i64 noundef 1) #28 ; 0 uses
  %i.gf = load i64, ptr %i.bc, align 8, !tbaa !68, !alias.scope !346
  %i.gg = sub i64 4611686018427387903, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.ga
  br i1 %i.gh, label %bb.ak, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.gi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.fz, i64 noundef %i.ga) #28 ; 0 uses
  %i.gj = load i64, ptr %i.bc, align 8, !tbaa !68 ; 2 uses
  %i.gk = load i64, ptr %i.ba, align 8, !tbaa !68
  %i.gl = sub i64 4611686018427387903, %i.gk
  %i.gm = icmp ult i64 %i.gl, %i.gj
  br i1 %i.gm, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.al:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.gn = load ptr, ptr %11, align 8, !tbaa !67
  %i.go = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.gn, i64 noundef %i.gj) #28 ; 0 uses
  %i.gp = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.bb
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.gr = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.ah
  %i.gt = load ptr, ptr %8, align 8, !tbaa !67
  %i.gu = load i64, ptr %i.ba, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %i.gu, ptr %1, align 8
  store ptr %i.gt, ptr %i.bd, align 8
  %i.gv = load ptr, ptr %i.be, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i, label %bb.an, label %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit

bb.an:                                            ; preds = %bb.am
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit: ; preds = %bb.am
  %i.gw = load ptr, ptr %i.bf, align 8, !tbaa !348
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !340
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.gx = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.az
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit
  %i.gz = load i64, ptr %i.az, align 8, !tbaa !69
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNKSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEclES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hb = load i8, ptr %i.as, align 8, !tbaa !60, !range !61, !noundef !62
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ao, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  store i8 0, ptr %i.as, align 8, !tbaa !60
  %i.hd = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.at
  br i1 %i.he, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.hf = load i64, ptr %i.at, align 8, !tbaa !69
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #33
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.hh = load ptr, ptr %i.ao, align 8, !tbaa !148 ; 2 uses
  %i.hi = load ptr, ptr %6, align 8, !tbaa !149   ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = sdiv exact i64 %i.hl, 48
  %i.hn = icmp ult i64 %i.co, %i.hm
  br i1 %i.hn, label %bb.j, label %._crit_edge, !llvm.loop !341
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine2goERNS_6Search10LimitsTypeE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Stockfish::Search::LimitsType", align 8 ; 7 uses
  tail call void @_ZNK9Stockfish6Engine15verify_networksEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1216
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef nonnull align 8 dereferenceable(113) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.e, ptr noundef nonnull align 8 dereferenceable(89) %i.f, i64 89, i1 false)
  call void @_ZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1048) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 %2) #28
  %i.g = load ptr, ptr %2, align 8, !tbaa !161    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !69
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !349

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !161
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish6Search10LimitsTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZN9Stockfish6Search10LimitsTypeD2Ev.exit

_ZN9Stockfish6Search10LimitsTypeD2Ev.exit:        ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  ret void
}

declare void @_ZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZN9Stockfish6Engine4stopEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1680) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store atomic i8 1, ptr %i.a seq_cst, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine12search_clearEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  tail call void @_ZN9Stockfish6Thread24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(192) %i.c) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  tail call void @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #28
  tail call void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1224
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2, !tbaa !69
  %i.j = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(152) %i.j) #28
  call void @_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  %i.k = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !69
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.g, align 8, !tbaa !69
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine24wait_for_search_finishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  tail call void @_ZN9Stockfish6Thread24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(192) %i.c) #28
  ret void
}

declare void @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine22set_on_update_no_movesEOSt8functionIFvRKNS_6Search9InfoShortEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1680) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::function.43", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !140
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !99
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !164
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !140
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !140  ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 16, !tbaa !140
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEaSEOS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEC2EOS6_.exit.i
  %i.i = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #28, !inline_history !350 ; 0 uses
  br label %_ZNSt8functionIFvRKN9Stockfish6Search9InfoShortEEEaSEOS6_.exit
end_hunk_2
begin_hunk_3_@_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE21get_status_and_errorsB5cxx11Ev:bb.a

._crit_edge:                                      ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %.sroa.07.014 = phi ptr [ %i.k, %.lr.ph ], [ %i.bo, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 152 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !136   ; 2 uses
  switch i8 %i.t, label %bb.h [
    i8 -1, label %bb.c
    i8 0, label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit.thread
    i8 1, label %bb.d
    i8 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @abort() #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 144
  %i.v = load i8, ptr %i.u, align 8, !tbaa !185, !range !61, !noundef !62
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !189
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.aa, null
  %or.cond.i.not4.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %.not1.i.i.i.i.i.i.i.i.i.i, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp ne ptr %i.ac, null
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.not4.i.i.i.i.i.i.i.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !190 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i, label %.thread, label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit

bb.g:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %.sroa.07.014, align 8, !tbaa !96
  %.not.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.ag, null
  %i.ah = zext i1 %.not.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit.thread

bb.h:                                             ; preds = %bb.b
  unreachable

_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit.thread: ; preds = %bb.b, %bb.d, %bb.g
  %.0.i.i.i.ph10 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ %i.ah, %bb.g ]
  store i32 %.0.i.i.i.ph10, ptr %i.b, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  br label %bb.j

.thread:                                          ; preds = %bb.f, %bb.e
  store i32 0, ptr %i.b, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  br label %bb.l

_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.aj = load atomic i8, ptr %i.ai acquire, align 1, !range !61, !noundef !62
  %i.ak = shl nuw nsw i8 %i.aj, 1
  %spec.select.i.i.i.i.i.i.i.i = zext nneg i8 %i.ak to i32
  %.pr.pre = load i8, ptr %i.s, align 8, !tbaa !136, !noalias !398 ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i, ptr %i.b, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %.not.i.i.i = icmp eq i8 %.pr.pre, -1
  br i1 %.not.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit
  call void @abort() #32, !noalias !398
  unreachable

bb.j:                                             ; preds = %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit.thread, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit
  %i.al = phi i8 [ %i.t, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit.thread ], [ %.pr.pre, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE10get_statusEv.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  switch i8 %i.al, label %bb.n [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.p, align 8, !tbaa !60, !alias.scope !402
  br label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev.exit

bb.l:                                             ; preds = %.thread, %bb.j
  call void @_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.07.014)
  br label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.am = load ptr, ptr %.sroa.07.014, align 8, !tbaa !96, !noalias !408
  %.not.i.i.i.i.i.i.i.i.i6 = icmp eq ptr %i.am, null
  store ptr %i.m, ptr %2, align 8, !tbaa !65, !alias.scope !408
  br i1 %.not.i.i.i.i.i.i.i.i.i6, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i1.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.m, ptr noundef nonnull align 1 dereferenceable(16) @.str.84, i64 15, i1 false)
  store i64 15, ptr %i.n, align 8, !tbaa !68, !alias.scope !408
  store i8 0, ptr %i.o, align 1, !tbaa !69, !alias.scope !408
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOZNK9Stockfish24SystemWideSharedConstantINSD_4Eval4NNUE8NetworksEE17get_error_messageEvEUlRKT_E_RKSt7variantIJSt9monostateNSD_19SharedMemoryBackendISH_EENSD_27SharedMemoryBackendFallbackISH_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESN_SW_.exit.i.i.i

._crit_edge.i.i.i.i.i.i.i.i1.i.i.i.i.i.i.i.i:     ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !408
  store i64 65, ptr %i.a, align 8, !tbaa !45, !noalias !408
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 3 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !67, !alias.scope !408
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !408 ; 3 uses
  store i64 %i.ao, ptr %i.m, align 8, !tbaa !69, !alias.scope !408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.an, ptr noundef nonnull align 1 dereferenceable(66) @.str.85, i64 65, i1 false)
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !68, !alias.scope !408
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !408
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOZNK9Stockfish24SystemWideSharedConstantINSD_4Eval4NNUE8NetworksEE17get_error_messageEvEUlRKT_E_RKSt7variantIJSt9monostateNSD_19SharedMemoryBackendISH_EENSD_27SharedMemoryBackendFallbackISH_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESN_SW_.exit.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOZNK9Stockfish24SystemWideSharedConstantINSD_4Eval4NNUE8NetworksEE17get_error_messageEvEUlRKT_E_RKSt7variantIJSt9monostateNSD_19SharedMemoryBackendISH_EENSD_27SharedMemoryBackendFallbackISH_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESN_SW_.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i1.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.p, align 8, !tbaa !60, !alias.scope !408
  br label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev.exit

bb.n:                                             ; preds = %bb.j
  unreachable

_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev.exit: ; preds = %bb.k, %bb.l, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOZNK9Stockfish24SystemWideSharedConstantINSD_4Eval4NNUE8NetworksEE17get_error_messageEvEUlRKT_E_RKSt7variantIJSt9monostateNSD_19SharedMemoryBackendISH_EENSD_27SharedMemoryBackendFallbackISH_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESN_SW_.exit.i.i.i
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !148 ; 8 uses
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !150
  %.not.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev.exit
  %i.as = load i32, ptr %i.b, align 4, !tbaa !158
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !157
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  store i8 0, ptr %i.au, align 8, !tbaa !60
  %i.av = load i8, ptr %i.p, align 8, !tbaa !60, !range !61, !noundef !62
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.p, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !65
  %i.ay = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.m
  br i1 %i.az, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !68  ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.bc, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !67
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !69
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !69
  %.pre = load i64, ptr %i.n, align 8, !tbaa !68
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.be = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.q ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !68
  store ptr %i.m, ptr %2, align 8, !tbaa !67
  store i64 0, ptr %i.n, align 8, !tbaa !68
  store i8 0, ptr %i.m, align 8, !tbaa !69
  store i8 1, ptr %i.au, align 8, !tbaa !60
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !148
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i, %bb.o
  %i.bg = phi ptr [ %i.aq, %bb.o ], [ %.pre.i, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %i.bh, ptr %i.q, align 8, !tbaa !148
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12emplace_backIJS2_SA_EEERSB_DpOT_.exit

bb.r:                                             ; preds = %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev.exit
  call void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE17_M_realloc_insertIJS2_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12emplace_backIJS2_SA_EEERSB_DpOT_.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12emplace_backIJS2_SA_EEERSB_DpOT_.exit: ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit.i, %bb.r
  %i.bi = load i8, ptr %i.p, align 8, !tbaa !60, !range !61, !noundef !62
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12emplace_backIJS2_SA_EEERSB_DpOT_.exit
  store i8 0, ptr %i.p, align 8, !tbaa !60
  %i.bk = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.m
  br i1 %i.bl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !69
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.s, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12emplace_backIJS2_SA_EEERSB_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 160 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::unique_ptr.71", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1392
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !136
  switch i8 %i.f, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i: ; preds = %bb.c, %bb.a
  %.0.i.i.i.in.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.a ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.h = tail call noalias noundef nonnull align 64 dereferenceable(137849344) ptr @_ZnwmSt11align_val_t(i64 noundef 137849344, i64 noundef 64) #31, !noalias !411 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(137849344) %i.h, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 137849344, i1 false), !tbaa.struct !139, !noalias !411
  store ptr %i.h, ptr %3, align 8, !tbaa !96, !alias.scope !411
  %.val2.val.i = load ptr, ptr %1, align 8, !tbaa !67 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.val3.i = load i64, ptr %i.i, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.val2.val3.i, ptr %i.a, align 8, !tbaa !45
  %i.k = icmp ugt i64 %.val2.val3.i, 15
  br i1 %i.k, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !67
  %i.m = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.m, ptr %i.j, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i
  %i.n = phi ptr [ %i.l, %bb.e ], [ %i.j, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i ] ; 2 uses
  switch i64 %.val2.val3.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %.val2.val.i, align 1, !tbaa !69
  store i8 %i.o, ptr %i.n, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val2.val.i, i64 %.val2.val3.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !68
  %i.r = load ptr, ptr %2, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_(ptr noundef nonnull align 64 dereferenceable(137849344) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 %2) #28
  %i.t = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %"_ZZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clERNS_4Eval4NNUE8NetworksE.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.v = load i64, ptr %i.j, align 8, !tbaa !69
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %"_ZZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clERNS_4Eval4NNUE8NetworksE.exit.i"

"_ZZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clERNS_4Eval4NNUE8NetworksE.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.x = load ptr, ptr %3, align 8, !tbaa !96     ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %"_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE20modify_and_replicateIZNS_6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEvOT_.exit", label %_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i.i: ; preds = %"_ZZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clERNS_4Eval4NNUE8NetworksE.exit.i"
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.x, i64 noundef 137849344, i64 noundef 64) #33
  br label %"_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE20modify_and_replicateIZNS_6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEvOT_.exit"

"_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE20modify_and_replicateIZNS_6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEvOT_.exit": ; preds = %"_ZZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clERNS_4Eval4NNUE8NetworksE.exit.i", %_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  call void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.y) #28
  call void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.y) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine18load_small_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::unique_ptr.71", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1392
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !136
  switch i8 %i.f, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i: ; preds = %bb.c, %bb.a
  %.0.i.i.i.in.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.a ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.h = tail call noalias noundef nonnull align 64 dereferenceable(137849344) ptr @_ZnwmSt11align_val_t(i64 noundef 137849344, i64 noundef 64) #31, !noalias !414 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(137849344) %i.h, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 137849344, i1 false), !tbaa.struct !139, !noalias !414
  store ptr %i.h, ptr %3, align 8, !tbaa !96, !alias.scope !414
  %.val2.val.i = load ptr, ptr %1, align 8, !tbaa !67 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.val3.i = load i64, ptr %i.i, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 131331904
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.val2.val3.i, ptr %i.a, align 8, !tbaa !45
  %i.l = icmp ugt i64 %.val2.val3.i, 15
  br i1 %i.l, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !67
  %i.n = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.n, ptr %i.k, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.k, %_ZNK9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEdeEv.exit.i ] ; 2 uses
  switch i64 %.val2.val3.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %.val2.val.i, align 1, !tbaa !69
  store i8 %i.p, ptr %i.o, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr readonly align 1 %.val2.val.i, i64 %.val2.val3.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_3
begin_hunk_4_@_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_:bb.a
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ek, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.em = load i64, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  %i.en = icmp ult i64 %i.du, %i.em
  br i1 %i.en, label %.critedge.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit

.critedge.i:                                      ; preds = %bb.r, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.55) #32
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit: ; preds = %bb.r
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v = select i1 %i.ek, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.eo = load i64, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  store i64 %i.eo, ptr %12, align 8, !tbaa !237
  %.02022.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !56 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !45 ; 2 uses
  %i.er = icmp ult i64 %i.du, %i.eq               ; 2 uses
  %.in.v.i.i.i = select i1 %i.er, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i38, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.er, label %._crit_edge.thread.i.i.i, label %bb.t

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.o, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.es = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.et = icmp eq ptr %.019.lcssa29.i.i.i, %i.es
  br i1 %i.et, label %select.unfold.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.eu = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %i.ev = phi i64 [ %.pre.i.i, %bb.s ], [ %i.eq, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.s ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ew = icmp ult i64 %i.ev, %i.du
  br i1 %i.ew, label %select.unfold.i.i, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

select.unfold.i.i:                                ; preds = %bb.t, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.t ] ; 3 uses
  %i.ex = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.o
  br i1 %i.ex, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !45
  %i.fa = icmp ult i64 %i.du, %i.ez
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.u, %select.unfold.i.i
  %i.fb = phi i1 [ %i.fa, %bb.u ], [ true, %select.unfold.i.i ]
  %i.fc = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i64 %i.du, ptr %i.fd, align 8, !tbaa !45
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fb, ptr noundef nonnull %i.fc, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #28
  %i.fe = load i64, ptr %i.r, align 8, !tbaa !55
  %i.ff = add i64 %i.fe, 1
  store i64 %i.ff, ptr %i.r, align 8, !tbaa !55
  br label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.t, %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, %bb.q, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %.02022.i.i.i39 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %.not23.i.i.i40 = icmp eq ptr %.02022.i.i.i39, null
  br i1 %.not23.i.i.i40, label %._crit_edge.thread.i.i.i57, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, %.lr.ph.i.i.i41
  %.02024.i.i.i42 = phi ptr [ %.020.i.i.i45, %.lr.ph.i.i.i41 ], [ %.02022.i.i.i39, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45 ; 2 uses
  %i.fi = icmp ult i64 %i.du, %i.fh               ; 2 uses
  %.in.v.i.i.i43 = select i1 %i.fi, i64 16, i64 24
  %.in.i.i.i44 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 %.in.v.i.i.i43
  %.020.i.i.i45 = load ptr, ptr %.in.i.i.i44, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.020.i.i.i45, null
  br i1 %.not.i.i.i46, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41, !llvm.loop !0

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41
  br i1 %i.fi, label %._crit_edge.thread.i.i.i57, label %bb.w

._crit_edge.thread.i.i.i57:                       ; preds = %._crit_edge.i.i.i47, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread
  %.019.lcssa29.i.i.i58 = phi ptr [ %.02024.i.i.i42, %._crit_edge.i.i.i47 ], [ %i.b, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.fj = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.fk = icmp eq ptr %.019.lcssa29.i.i.i58, %i.fj
  br i1 %i.fk, label %select.unfold.i.i54, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i.i57
  %i.fl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i58) #30
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %.pre.i.i60 = load i64, ptr %.phi.trans.insert.i.i59, align 8, !tbaa !45
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i47
  %i.fm = phi i64 [ %.pre.i.i60, %bb.v ], [ %i.fh, %._crit_edge.i.i.i47 ]
  %.019.lcssa28.i.i.i48 = phi ptr [ %.019.lcssa29.i.i.i58, %bb.v ], [ %.02024.i.i.i42, %._crit_edge.i.i.i47 ]
  %i.fn = icmp ult i64 %i.fm, %i.du
  br i1 %i.fn, label %select.unfold.i.i54, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62

select.unfold.i.i54:                              ; preds = %bb.w, %._crit_edge.thread.i.i.i57
  %.sroa.4.0.i.ph.i.i55 = phi ptr [ %.019.lcssa29.i.i.i58, %._crit_edge.thread.i.i.i57 ], [ %.019.lcssa28.i.i.i48, %bb.w ] ; 3 uses
  %i.fo = icmp eq ptr %.sroa.4.0.i.ph.i.i55, %i.b
  br i1 %i.fo, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56, label %bb.x

bb.x:                                             ; preds = %select.unfold.i.i54
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i55, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !45
  %i.fr = icmp ult i64 %i.du, %i.fq
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56: ; preds = %bb.x, %select.unfold.i.i54
  %i.fs = phi i1 [ %i.fr, %bb.x ], [ true, %select.unfold.i.i54 ]
  %i.ft = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store i64 %i.du, ptr %i.fu, align 8, !tbaa !45
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fs, ptr noundef nonnull %i.ft, ptr noundef nonnull %.sroa.4.0.i.ph.i.i55, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  %i.fv = load i64, ptr %i.f, align 8, !tbaa !55
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.f, align 8, !tbaa !55
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62:    ; preds = %bb.w, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.085.0114, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fx, %i.dm
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fy = load ptr, ptr %i.z, align 8, !tbaa !240 ; 12 uses
  %i.fz = load ptr, ptr %i.aa, align 8, !tbaa !241
  %.not.i = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ga = load i64, ptr %12, align 8, !tbaa !237
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !237
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 4 uses
  %i.gc = load ptr, ptr %i.w, align 8, !tbaa !52  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = load i32, ptr %i.o, align 8, !tbaa !51
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gg = load <2 x ptr>, ptr %i.p, align 8, !tbaa !56
  store <2 x ptr> %i.gg, ptr %i.gf, align 8, !tbaa !56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gb, ptr %i.gh, align 8, !tbaa !74
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store i64 %i.ds, ptr %i.gi, align 8, !tbaa !55
  store ptr null, ptr %i.w, align 8, !tbaa !52
  store ptr %i.o, ptr %i.p, align 8, !tbaa !53
  store ptr %i.o, ptr %i.q, align 8, !tbaa !54
  store i64 0, ptr %i.r, align 8, !tbaa !55
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr null, ptr %i.gj, align 8, !tbaa !52
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store ptr %i.gb, ptr %i.gk, align 8, !tbaa !53
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store ptr %i.gb, ptr %i.gl, align 8, !tbaa !54
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store i64 0, ptr %i.gm, align 8, !tbaa !55
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.ab, %bb.aa
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.ab ], [ %i.gd, %bb.aa ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.gb, align 8, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  store ptr %i.gn, ptr %i.z, align 8, !tbaa !240
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.ac:                                            ; preds = %bb.y
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %12)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.ac, %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.go = load ptr, ptr %i.w, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %.pre129 = load i8, ptr %i.m, align 8, !tbaa !60, !range !61
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.gp = phi i8 [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pre129, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ]
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ae, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.m, align 8, !tbaa !60
  %i.gr = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ab
  br i1 %i.gs, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.gt = load i64, ptr %i.ab, align 8, !tbaa !69
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.ae, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %or.cond.not, label %bb.b, label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.gv = load ptr, ptr %6, align 8, !tbaa !242
  %i.gw = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %2)
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gz = load <2 x ptr>, ptr %14, align 16, !tbaa !71
  store <2 x ptr> %i.gz, ptr %0, align 8, !tbaa !71
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 16, !tbaa !73
  store ptr %i.hc, ptr %i.ha, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %14, i8 0, i64 24, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 16, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.hf, ptr %i.hi, align 8, !tbaa !52
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 16, !tbaa !53
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.hd, ptr %i.hn, align 8, !tbaa !74
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 16, !tbaa !55
  store ptr null, ptr %i.he, align 8, !tbaa !52
  store ptr %i.hg, ptr %i.hj, align 16, !tbaa !53
  store ptr %i.hg, ptr %i.hl, align 8, !tbaa !54
  store i64 0, ptr %i.ho, align 16, !tbaa !55
  br label %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.hq, align 8, !tbaa !52
  br label %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit: ; preds = %bb.ah, %bb.ai
  %.sink128 = phi ptr [ %i.hd, %bb.ai ], [ %i.hk, %bb.ah ]
  %.sink127 = phi ptr [ %i.hd, %bb.ai ], [ %i.hm, %bb.ah ]
  %.sink = phi i64 [ 0, %bb.ai ], [ %i.hp, %bb.ah ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.ai ], [ %i.hh, %bb.ah ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink128, ptr %i.hr, align 8, !tbaa !53
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink127, ptr %i.hs, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink, ptr %i.ht, align 8, !tbaa !55
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hd, align 8, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hu, ptr noundef nonnull align 8 dereferenceable(9) %i.hv, i64 9, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.hw, align 8, !tbaa !114
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hx, ptr noundef null)
  %i.hy = load ptr, ptr %14, align 16, !tbaa !75  ; 3 uses
  %i.hz = load ptr, ptr %i.gy, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hy, %i.hz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit, %.lr.ph.i.i.i.i64
  %.05.i.i.i.i = phi ptr [ %i.ic, %.lr.ph.i.i.i.i64 ], [ %i.hy, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ic, %i.hz
  br i1 %.not.i.i.i.i65, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i64, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i64
  %.pr.i.i = load ptr, ptr %14, align 16, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  %i.id = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.hy, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.ie = load ptr, ptr %i.hb, align 16, !tbaa !73
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.al

bb.ak:                                            ; preds = %bb.af
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.ii, align 8, !tbaa !114
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN9Stockfish10NumaConfigD2Ev.exit
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ij)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ik = load ptr, ptr %6, align 8, !tbaa !243   ; 3 uses
  %i.il = load ptr, ptr %i.z, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.al, %.lr.ph.i.i.i66
  %.05.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i66 ], [ %i.ik, %bb.al ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.im, ptr noundef %i.io)
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ip, %i.il
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i66, !llvm.loop !10

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i66
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !243
  br label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, %bb.al
  %i.iq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i ], [ %i.ik, %bb.al ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i
  %i.ir = load ptr, ptr %i.aa, align 8, !tbaa !241
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iu) #33
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iw = load ptr, ptr %i.u, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, ptr noundef %i.iw)
  %i.ix = load ptr, ptr %4, align 8, !tbaa !75    ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i.i68 = icmp eq ptr %i.ix, %i.iz
  br i1 %.not4.i.i.i.i68, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i69
  %.05.i.i.i.i70 = phi ptr [ %i.jc, %.lr.ph.i.i.i.i69 ], [ %i.ix, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i70, ptr noundef %i.jb)
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 48 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.jc, %i.iz
  br i1 %.not.i.i.i.i71, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, label %.lr.ph.i.i.i.i69, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72: ; preds = %.lr.ph.i.i.i.i69
  %.pr.i.i73 = load ptr, ptr %4, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit
  %i.jd = phi ptr [ %.pr.i.i73, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72 ], [ %i.ix, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i75 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i1.i.i75, label %_ZN9Stockfish10NumaConfigD2Ev.exit76, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !73
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.jd to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.ji) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit76

_ZN9Stockfish10NumaConfigD2Ev.exit76:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_4
begin_hunk_5_@_ZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_:._crit_edge.i.i
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.di, i64 noundef %i.ci) #28, !noalias !517 ; 5 uses
  store ptr %i.ag, ptr %8, align 8, !tbaa !65, !alias.scope !517
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !67 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !68 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i64 %i.dq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dk, ptr %8, align 8, !tbaa !67, !alias.scope !517
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !69
  store i64 %i.dr, ptr %i.ag, align 8, !tbaa !69, !alias.scope !517
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !68
  store i64 %i.dt, ptr %i.ah, align 8, !tbaa !68, !alias.scope !517
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !67
  store i64 0, ptr %i.ds, align 8, !tbaa !68
  store i8 0, ptr %i.dl, align 8, !tbaa !69
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.du = load i64, ptr %i.ah, align 8, !tbaa !68, !noalias !518
  %i.dv = and i64 %i.du, -8
  %i.dw = icmp eq i64 %i.dv, 4611686018427387896
  br i1 %i.dw, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32, !noalias !518
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.dx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.58, i64 noundef 8) #28, !noalias !518 ; 6 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !65, !alias.scope !518
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !68 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.dy, ptr %7, align 8, !tbaa !67, !alias.scope !518
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !69
  store i64 %i.ef, ptr %i.ai, align 8, !tbaa !69, !alias.scope !518
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.eg = phi i64 [ %i.ec, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.eg, ptr %i.aj, align 8, !tbaa !68, !alias.scope !518
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !67
  store i64 0, ptr %i.eh, align 8, !tbaa !68
  store i8 0, ptr %i.dz, align 8, !tbaa !69
  %i.ei = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ag
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ek = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.em = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ae
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.eo = load i64, ptr %i.ae, align 8, !tbaa !69
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.eq = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ac
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.es = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %7) #28
  %i.eu = load i8, ptr %i.ak, align 8, !tbaa !60, !range !61, !noundef !62
  %i.ev = trunc nuw i8 %i.eu to i1                ; 2 uses
  br i1 %i.ev, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @_ZZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @_ZN9Stockfish17remove_whitespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.ew = load ptr, ptr %12, align 8, !tbaa !175  ; 3 uses
  %i.ex = load ptr, ptr %i.al, align 8, !tbaa !175 ; 2 uses
  %.not6774 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not6774, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread
  %.pre = load ptr, ptr %12, align 8, !tbaa !177
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %i.ey = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ew, %bb.s ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ez = load ptr, ptr %i.an, align 8, !tbaa !182
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fc) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.v

.lr.ph:                                           ; preds = %bb.s, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread
  %.sroa.053.075 = phi ptr [ %i.fr, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ], [ %i.ew, %bb.s ] ; 2 uses
  %i.fd = load i64, ptr %.sroa.053.075, align 8, !tbaa !45 ; 3 uses
  %i.fe = load i8, ptr %2, align 8, !tbaa !110, !range !61, !noundef !62
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.u, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread62

bb.u:                                             ; preds = %.lr.ph
  %i.fg = load ptr, ptr %i.am, align 8, !tbaa !231, !nonnull !62, !align !232 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !52 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not10.i.i.i.i, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fi, %bb.u ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fj, %bb.u ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !45
  %i.fm = icmp ult i64 %i.fl, %i.fd               ; 2 uses
  %.19.i.i.i.i = select i1 %i.fm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.fm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fn = icmp eq ptr %.19.i.i.i.i, %i.fj
  br i1 %i.fn, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !45
  %.not68 = icmp ult i64 %i.fd, %i.fp
  br i1 %.not68, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread62

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread62: ; preds = %.lr.ph, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %i.fq = call noundef zeroext i1 @_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %i.ap, i64 noundef %i.fd) ; 0 uses
  br label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i, %bb.u, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread62, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.053.075, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.fr, %i.ex
  br i1 %.not67, label %._crit_edge.loopexit, label %.lr.ph

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.r
  %i.fs = load i8, ptr %i.ak, align 8, !tbaa !60, !range !61, !noundef !62
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.w, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ak, align 8, !tbaa !60
  %i.fu = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ao
  br i1 %i.fv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.fw = load i64, ptr %i.ao, align 8, !tbaa !69
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.w, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fy = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ai
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ga = load i64, ptr %i.ai, align 8, !tbaa !69
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.058.077, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.gc, %i.ab
  %or.cond135.not = select i1 %i.ev, i1 %.not, i1 false
  br i1 %or.cond135.not, label %._crit_edge.i.i18, label %._crit_edge78.loopexit

._crit_edge78.loopexit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pre86 = load ptr, ptr %6, align 8, !tbaa !177
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %bb.b
  %i.gd = phi ptr [ %.pre86, %._crit_edge78.loopexit ], [ %i.z, %bb.b ] ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorImSaImEED2Ev.exit38, label %bb.x

bb.x:                                             ; preds = %._crit_edge78
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !182
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit38

_ZNSt6vectorImSaImEED2Ev.exit38:                  ; preds = %._crit_edge78, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit38, %bb.a
  %i.gj = load i8, ptr %i.c, align 1, !tbaa !138, !range !61, !noundef !62
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = load i64, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, align 8 ; 2 uses
  %i.gm = icmp ne i64 %i.gl, 0
  %or.cond = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %or.cond, label %.lr.ph80, label %.loopexit

.lr.ph80:                                         ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph80, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread
  %i.go = phi i64 [ %i.gl, %.lr.ph80 ], [ %i.hc, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread ] ; 3 uses
  %.079 = phi i64 [ 0, %.lr.ph80 ], [ %i.hd, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread ] ; 4 uses
  %i.gp = load i8, ptr %2, align 8, !tbaa !110, !range !61, !noundef !62
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.aa, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread63

bb.aa:                                            ; preds = %bb.z
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !231, !nonnull !62, !align !232 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !52 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %.not10.i.i.i.i39 = icmp eq ptr %i.gt, null
  br i1 %.not10.i.i.i.i39, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %bb.aa, %.lr.ph.i.i.i.i40
  %.012.i.i.i.i41 = phi ptr [ %.1.i.i.i.i46, %.lr.ph.i.i.i.i40 ], [ %i.gt, %bb.aa ] ; 3 uses
  %.0811.i.i.i.i42 = phi ptr [ %.19.i.i.i.i43, %.lr.ph.i.i.i.i40 ], [ %i.gu, %bb.aa ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i41, i64 32
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !45
  %i.gx = icmp ult i64 %i.gw, %.079               ; 2 uses
  %.19.i.i.i.i43 = select i1 %i.gx, ptr %.0811.i.i.i.i42, ptr %.012.i.i.i.i41 ; 3 uses
  %.1.in.v.i.i.i.i44 = select i1 %i.gx, i64 24, i64 16
  %.1.in.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i41, i64 %.1.in.v.i.i.i.i44
  %.1.i.i.i.i46 = load ptr, ptr %.1.in.i.i.i.i45, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i47 = icmp eq ptr %.1.i.i.i.i46, null
  br i1 %.not.i.i.i.i47, label %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i48, label %.lr.ph.i.i.i.i40, !llvm.loop !9

_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i48: ; preds = %.lr.ph.i.i.i.i40
  %i.gy = icmp eq ptr %.19.i.i.i.i43, %i.gu
  br i1 %i.gy, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i48
  %i.gz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i43, i64 32
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !45
  %.not69 = icmp ult i64 %.079, %i.ha
  br i1 %.not69, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread63

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread63: ; preds = %bb.z, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49
  %i.hb = call noundef zeroext i1 @_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef 0, i64 noundef %.079) ; 0 uses
  %.pre87 = load i64, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, align 8, !tbaa !45
  br label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i48, %bb.aa, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread63
  %i.hc = phi i64 [ %i.go, %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i48 ], [ %i.go, %bb.aa ], [ %i.go, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49 ], [ %.pre87, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread63 ] ; 2 uses
  %i.hd = add nuw i64 %.079, 1                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  br i1 %i.he, label %bb.z, label %.loopexit, !llvm.loop !513

.loopexit:                                        ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit49.thread, %bb.y
  %i.hf = load i8, ptr %i.t, align 8, !tbaa !60, !range !61, !noundef !62
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ab, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52

bb.ab:                                            ; preds = %.loopexit
  store i8 0, ptr %i.t, align 8, !tbaa !60
  %i.hh = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50: ; preds = %bb.ab
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !69
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52: ; preds = %bb.ab, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig23remove_empty_numa_nodesEv(ptr noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 16      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %.not9 = icmp eq ptr %i.a, %i.c
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !75
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.f = load <2 x ptr>, ptr %1, align 16, !tbaa !71
  %.pre15 = load ptr, ptr %i.e, align 16, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi ptr [ %.pre15, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.h = phi ptr [ %.pre11, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 5 uses
  %i.j = phi <2 x ptr> [ %i.f, %._crit_edge.loopexit ], [ splat (ptr null), %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.g, ptr %i.k, align 8, !tbaa !73
  %.not4.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.i, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i, %bb.b
  %i.u = load ptr, ptr %1, align 16, !tbaa !75    ; 3 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 16, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i
  %i.aa = load ptr, ptr %i.n, align 16, !tbaa !73
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %.sroa.06.010 = phi ptr [ %i.a, %.lr.ph ], [ %i.ba, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !76  ; 11 uses
  %i.ai = load ptr, ptr %i.e, align 16, !tbaa !73
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 32
  %i.as = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !56
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.aj, ptr %i.at, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.af, ptr %i.au, align 8, !tbaa !55
  store ptr null, ptr %i.ak, align 8, !tbaa !52
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !53
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !54
  store i64 0, ptr %i.ae, align 8, !tbaa !55
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr null, ptr %i.av, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.aj, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !55
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i:        ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.h ], [ %i.an, %bb.g ]
  store i32 %.sink.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.az, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.i:                                             ; preds = %bb.e
  call void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.010)
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.i, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !106
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = icmp eq ptr %i.f, %i.b
end_hunk_5
begin_hunk_6_@_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2ERKS3_m:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.he, ptr %9, align 8, !tbaa !65, !alias.scope !655
  %i.hf = load ptr, ptr %6, align 8, !tbaa !67, !noalias !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !655
  store i64 254, ptr %i.a, align 8, !tbaa !45, !noalias !655
  %i.hg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 3 uses
  store ptr %i.hg, ptr %9, align 8, !tbaa !67, !alias.scope !655
  %i.hh = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !655 ; 3 uses
  store i64 %i.hh, ptr %i.he, align 8, !tbaa !69, !alias.scope !655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(254) %i.hg, ptr noundef nonnull align 1 dereferenceable(254) %i.hf, i64 254, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !68, !alias.scope !655
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !655
  %i.hk = load ptr, ptr %6, align 8, !tbaa !67    ; 6 uses
  %i.hl = icmp eq ptr %i.hk, %i.cr
  %i.hm = load ptr, ptr %9, align 8, !tbaa !67    ; 5 uses
  %i.hn = icmp eq ptr %i.hm, %i.he                ; 2 uses
  br i1 %i.hl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.hn, label %bb.r, label %.thread.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.hn, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i17

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  %i.ho = load i64, ptr %i.hi, align 8, !tbaa !68 ; 3 uses
  %i.hp = icmp ult i64 %i.ho, 16
  call void @llvm.assume(i1 %i.hp)
  switch i64 %i.ho, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.hq = load i8, ptr %i.hm, align 1, !tbaa !69
  store i8 %i.hq, ptr %i.hk, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr align 1 %i.hm, i64 %i.ho, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19: ; preds = %bb.t, %bb.s, %bb.r
  %i.hr = load i64, ptr %i.hi, align 8, !tbaa !68 ; 2 uses
  store i64 %i.hr, ptr %i.cz, align 8, !tbaa !68
  %i.hs = load ptr, ptr %6, align 8, !tbaa !67
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !69
  %.pre.i20 = load ptr, ptr %9, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23

.thread.i22:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  store ptr %i.hm, ptr %6, align 8, !tbaa !67
  %i.hu = load <2 x i64>, ptr %i.hi, align 8, !tbaa !69
  store <2 x i64> %i.hu, ptr %i.cz, align 8, !tbaa !69
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i16
  %i.hv = load i64, ptr %i.cr, align 8, !tbaa !69
  store ptr %i.hm, ptr %6, align 8, !tbaa !67
  %i.hw = load <2 x i64>, ptr %i.hi, align 8, !tbaa !69
  store <2 x i64> %i.hw, ptr %i.cz, align 8, !tbaa !69
  %.not.i18 = icmp eq ptr %i.hk, null
  br i1 %.not.i18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i17
  store ptr %i.hk, ptr %9, align 8, !tbaa !67
  store i64 %i.hv, ptr %i.he, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i17, %.thread.i22
  store ptr %i.he, ptr %9, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19, %bb.u, %bb.v
  %i.hx = phi ptr [ %i.hk, %bb.u ], [ %i.he, %bb.v ], [ %.pre.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i19 ]
  store i64 0, ptr %i.hi, align 8, !tbaa !68
  store i8 0, ptr %i.hx, align 1, !tbaa !69
  %i.hy = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.he
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23
  %i.ia = load i64, ptr %i.he, align 8, !tbaa !69
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZN9Stockfish3shm13create_sharedINS_4Eval4NNUE8NetworksEEESt8optionalINS0_12SharedMemoryIT_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.281") align 8 dereferenceable(152) %10, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 64 dereferenceable(137849344) %1) #28
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 4 uses
  %i.id = load i8, ptr %i.ic, align 8, !tbaa !185, !range !61, !noundef !62
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.x, label %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !189
  %.not.i.i27 = icmp ne i32 %i.ig, -1
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ii = load ptr, ptr %i.ih, align 8
  %.not1.i.i = icmp ne ptr %i.ii, null
  %or.cond.i.not4.i = select i1 %.not.i.i27, i1 %.not1.i.i, i1 false
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = icmp ne ptr %i.ik, null
  %or.cond.i = select i1 %or.cond.i.not4.i, i1 %i.il, i1 false
  br i1 %or.cond.i, label %bb.y, label %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !190 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.in, null
  br i1 %.not.i1.i, label %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread, label %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit

_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit: ; preds = %bb.y
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 44
  %i.ip = load atomic i8, ptr %i.io acquire, align 1, !range !61, !noundef !62
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.z, label %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread

bb.z:                                             ; preds = %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit
  %i.ir = load i8, ptr %i.h, align 8, !tbaa !136
  switch i8 %i.ir, label %bb.aa [
    i8 1, label %_ZSt3getILm1EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i
  ], !prof !656

_ZSt3getILm1EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i: ; preds = %bb.z
  call void @_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE14_M_move_assignEOS7_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(152) %10) #28
  br label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(153) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store i8 -1, ptr %i.h, align 8, !tbaa !136
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 0, ptr %i.is, align 8, !tbaa !185
  %i.it = load i8, ptr %i.ic, align 8, !tbaa !185, !range !61, !noundef !62
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.ab, label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm1EJS6_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i

bb.ab:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(152) %10) #28
  store i8 1, ptr %i.is, align 8, !tbaa !185
  br label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm1EJS6_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i

_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm1EJS6_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i: ; preds = %bb.ab, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !136
  br label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit

_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread: ; preds = %bb.y, %bb.w, %bb.x, %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit
  %i.iv = call noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef 137849344) #28, !noalias !657, !inline_history !650 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(137849344) %i.iv, ptr noundef nonnull align 64 dereferenceable(137849344) %1, i64 137849344, i1 false), !tbaa.struct !139, !noalias !657
  %i.iw = load i8, ptr %i.h, align 8, !tbaa !136
  switch i8 %i.iw, label %bb.ac [
    i8 2, label %_ZSt3getILm2EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i
    i8 -1, label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm2EJS8_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i
  ], !prof !656

_ZSt3getILm2EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i: ; preds = %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread
  %i.ix = load ptr, ptr %0, align 8, !tbaa !96    ; 2 uses
  store ptr %i.iv, ptr %0, align 8, !tbaa !96
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit, label %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i

_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %_ZSt3getILm2EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i
  call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.ix) #28, !inline_history !13
  br label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit

bb.ac:                                            ; preds = %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(153) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm2EJS8_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i

_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm2EJS8_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i: ; preds = %bb.ac, %_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE8is_validEv.exit.thread
  %i.iy = ptrtoint ptr %i.iv to i64
  store i64 %i.iy, ptr %0, align 8, !tbaa !96
  store i8 2, ptr %i.h, align 8, !tbaa !136
  br label %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit

_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit: ; preds = %_ZSt3getILm2EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i, %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i, %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm2EJS8_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i, %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEE7emplaceILm1EJS6_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_S6_S8_EE4typeEDpT0_EERSE_E4typeEDpOSF_.exit.i, %_ZSt3getILm1EJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i
  %i.iz = load i8, ptr %i.ic, align 8, !tbaa !185, !range !61, !noundef !62
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.ad, label %_ZN9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit
  store i8 0, ptr %i.ic, align 8, !tbaa !185
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %10, align 8, !tbaa !126
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(152) %10), !inline_history !259
  %i.jb = load ptr, ptr %10, align 8, !tbaa !126
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(152) %10, i1 noundef zeroext false) #28, !inline_history !651
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !67 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !69
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #33, !inline_history !259
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !67 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !69
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #33, !inline_history !259
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !67 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZN9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !69
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #33, !inline_history !259
  br label %_ZN9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNSt7variantIJSt9monostateN9Stockfish19SharedMemoryBackendINS1_4Eval4NNUE8NetworksEEENS1_27SharedMemoryBackendFallbackIS5_EEEEaSIS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_S6_S8_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS9_E4typeESE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.jw = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.cr
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEED2Ev.exit
  %i.jy = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZN9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  ret void
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !660
  %i.e = tail call i64 @_ZNK9Stockfish10NumaConfig32bind_current_thread_to_numa_nodeEm(ptr noundef nonnull align 8 dereferenceable(81) %i.b, i64 noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !661, !nonnull !62, !align !232
  tail call void @_ZZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS3_St14default_deleteIS3_EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9Stockfish10NumaConfig32bind_current_thread_to_numa_nodeEm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !181
  %i.n = add i64 %i.m, 1
  %i.o = tail call ptr @__sched_cpualloc(i64 noundef %i.n) #28 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.l, align 8, !tbaa !181
  %i.r = add i64 %i.q, 64
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 2305843009213693944        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %0, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.not2526 = icmp eq ptr %i.x, %i.y
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %i.z = tail call i32 @sched_setaffinity(i32 noundef 0, i64 noundef %i.t, ptr noundef nonnull %i.o) #28
  tail call void @__sched_cpufree(ptr noundef nonnull %i.o) #28
  %.not20 = icmp eq i32 %i.z, 0
  br i1 %.not20, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.sroa.021.027 = phi ptr [ %i.ak, %bb.h ], [ %i.x, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45 ; 3 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = icmp samesign ult i64 %i.ac, %i.t
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ae = and i64 %i.ab, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = lshr i64 %i.ab, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45
  %i.aj = or i64 %i.ai, %i.af
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.027) #30 ; 2 uses
  %.not25 = icmp eq ptr %i.ak, %i.y
  br i1 %.not25, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.j:                                             ; preds = %._crit_edge
  %i.al = tail call i32 @sched_yield() #28        ; 0 uses
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS3_St14default_deleteIS3_EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.316, align 1            ; 3 uses
  %2 = alloca %"struct.Stockfish::SystemWideSharedConstant", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !256    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !662, !nonnull !62, !align !232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.e = tail call noundef i64 @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE17get_discriminatorEm(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 0)
  call void @_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2ERKS3_m(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 64 dereferenceable(137849344) %i.d, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_6
begin_hunk_7_@_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv:bb.a
  ret void
}

declare void @__once_proxy() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv() #3 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !708, !nonnull !62
  tail call void %i.c() #28, !inline_history !706
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail12CleanupHooks13handle_signalEi(i32 noundef %0) #4 comdat align 2 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #32
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i:     ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !262 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !262 ; 2 uses
  %.not6.i = icmp eq ptr %i.b, %i.c
  br i1 %.not6.i, label %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !229 ; 2 uses
  %.pre8.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !265
  %i.d = icmp eq ptr %.pre8.i, %.pre.i
  br i1 %i.d, label %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !265
  br label %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit

.lr.ph.i:                                         ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, %.lr.ph.i
  %.sroa.02.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.02.07.i, align 8, !tbaa !264 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) #28, !inline_history !709
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit: ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, %._crit_edge.i, %bb.c
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr null, ptr %1, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = call i32 @sigemptyset(ptr noundef nonnull %i.k) #28 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 0, ptr %i.m, align 8, !tbaa !276
  %i.n = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #28
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit
  %i.p = add nsw i32 %0, 128
  call void @_Exit(i32 noundef %i.p) #32
  unreachable

bb.e:                                             ; preds = %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit
  %i.q = call i32 @raise(i32 noundef %0) #28      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENUlvE_8__invokeEv() #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #32
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i:   ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !262 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !262 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not6.i.i, label %_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !229 ; 2 uses
  %.pre8.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !265
  %i.d = icmp eq ptr %.pre8.i.i, %.pre.i.i
  br i1 %i.d, label %_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  store ptr %.pre.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !265
  br label %_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, %.lr.ph.i.i
  %.sroa.02.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.b, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.02.07.i.i, align 8, !tbaa !264 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) #28, !inline_history !710
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit: ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, %._crit_edge.i.i, %bb.c
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 0 uses
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @_Exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @posix_fallocate(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_setpshared(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_setrobust(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_destroy(ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #21

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE14_M_move_assignEOS7_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(145) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !185, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load i8, ptr %i.d, align 8, !range !61
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #28 ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #28
  store i8 1, ptr %i.a, align 8, !tbaa !185
  br label %_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE8_M_resetEv.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE8_M_resetEv.exit

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.a, align 8, !tbaa !185
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !126
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(145) %0), !inline_history !259
  %i.h = load ptr, ptr %0, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(145) %0, i1 noundef zeroext false) #28, !inline_history !711
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !69
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33, !inline_history !259
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !69
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33, !inline_history !259
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !69
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #33, !inline_history !259
  br label %_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE8_M_resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(144) ptr @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) #28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !67   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.k, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  switch i64 %i.m, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.i, align 1, !tbaa !69
  store i8 %i.o, ptr %i.f, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.i, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = load i64, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !68
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !69
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.e, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68
  store i64 %i.v, ptr %i.t, align 8, !tbaa !68
  %i.w = load i64, ptr %i.j, align 8, !tbaa !69
  store i64 %i.w, ptr %i.g, align 8, !tbaa !69
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.x = load i64, ptr %i.g, align 8, !tbaa !69
  store ptr %i.i, ptr %i.e, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !68
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !69
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.f, ptr %i.d, align 8, !tbaa !67
  store i64 %i.x, ptr %i.j, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %i.d, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ac = phi ptr [ %i.f, %bb.f ], [ %i.j, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !68
  store i8 0, ptr %i.ac, align 1, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !140
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !140
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !190
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.al, ptr %i.am, align 8, !tbaa !190
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !261
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !261
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.ax = icmp eq ptr %i.av, %i.aw                ; 2 uses
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ax, label %bb.h, label %.thread.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ax, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !68 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  switch i64 %i.az, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !69
  store i8 %i.bb, ptr %i.as, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.av, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17: ; preds = %bb.j, %bb.i, %bb.h
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !68
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !69
  %.pre.i18 = load ptr, ptr %i.aq, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

.thread.i20:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !68
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !68
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !69
  store i64 %i.bj, ptr %i.at, align 8, !tbaa !69
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13
  %i.bk = load i64, ptr %i.at, align 8, !tbaa !69
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !68
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !69
  store i64 %i.bo, ptr %i.at, align 8, !tbaa !69
  %.not.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !67
  store i64 %i.bk, ptr %i.aw, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14, %.thread.i20
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17, %bb.k, %bb.l
  %i.bp = phi ptr [ %i.as, %bb.k ], [ %i.aw, %bb.l ], [ %.pre.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.bq, align 8, !tbaa !68
  store i8 0, ptr %i.bp, align 1, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !67 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !67 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.by = icmp eq ptr %i.bw, %i.bx                ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21
  br i1 %i.by, label %bb.m, label %.thread.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  tail call void @llvm.assume(i1 %i.cb)
  switch i64 %i.ca, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !69
  store i8 %i.cc, ptr %i.bt, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bw, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26: ; preds = %bb.o, %bb.n, %bb.m
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !68 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !68
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !69
  %.pre.i27 = load ptr, ptr %i.br, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

.thread.i29:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !68
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !68
  %i.ck = load i64, ptr %i.bx, align 8, !tbaa !69
  store i64 %i.ck, ptr %i.bu, align 8, !tbaa !69
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !69
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !68
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !68
  %i.cp = load i64, ptr %i.bx, align 8, !tbaa !69
  store i64 %i.cp, ptr %i.bu, align 8, !tbaa !69
  %.not.i24 = icmp eq ptr %i.bt, null
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !67
  store i64 %i.cl, ptr %i.bx, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23, %.thread.i29
  store ptr %i.bx, ptr %i.br, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26, %bb.p, %bb.q
  %i.cq = phi ptr [ %i.bt, %bb.p ], [ %i.bx, %bb.q ], [ %.pre.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store i64 0, ptr %i.cr, align 8, !tbaa !68
  store i8 0, ptr %i.cq, align 1, !tbaa !69
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %1)
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  store i32 -1, ptr %i.ae, align 8, !tbaa !189
  store i64 0, ptr %i.cr, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr %i.br, align 8, !tbaa !67
  store i8 0, ptr %i.cs, align 1, !tbaa !69
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !136
  switch i8 %i.b, label %bb.e [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit
    i8 1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !185, !range !61, !noundef !62
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 8, !tbaa !185
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %1, align 8, !tbaa !126
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(153) %1), !inline_history !259
  %i.f = load ptr, ptr %1, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(153) %1, i1 noundef zeroext false) #28, !inline_history !712
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !69
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33, !inline_history !259
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !69
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #33, !inline_history !259
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !69
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #33, !inline_history !259
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.d:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit, label %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.aa) #28, !inline_history !13
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i, %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_0E9_M_invokeERKSt9_Any_dataSB_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((32, 33)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !715
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %2) #28, !noalias !715
  call void @_ZN9Stockfish12start_loggerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #28, !noalias !715
  %i.a = load ptr, ptr %3, align 8, !tbaa !67, !noalias !715 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_0JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !715
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33, !noalias !715
  br label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_0JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_0JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !715
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !60, !alias.scope !715
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN9Stockfish12start_loggerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_1E9_M_invokeERKSt9_Any_dataSB_"(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !727   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !729
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %2) #28, !noalias !729
  call void @_ZN9Stockfish6Engine27set_numa_config_from_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3), !noalias !729
  %i.a = load ptr, ptr %3, align 8, !tbaa !67, !noalias !729 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !729
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33, !noalias !729
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !729
  call void @_ZNK9Stockfish6Engine33numa_config_information_as_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1680) %.val), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68, !noalias !731
  %i.h = icmp eq i64 %i.g, 4611686018427387903
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32, !noalias !731
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.i = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.38, i64 noundef 1) #28, !noalias !731 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !65, !alias.scope !730, !noalias !729
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !729 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68, !noalias !729 ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false), !noalias !729
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i
  store ptr %i.k, ptr %4, align 8, !tbaa !67, !alias.scope !730, !noalias !729
  %i.r = load i64, ptr %i.l, align 8, !tbaa !69, !noalias !729
  store i64 %i.r, ptr %i.j, align 8, !tbaa !69, !alias.scope !730, !noalias !729
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !68, !noalias !729
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i, %bb.c
  %i.s = phi i64 [ %i.o, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.u, align 8, !tbaa !68, !alias.scope !730, !noalias !729
  store ptr %i.l, ptr %i.i, align 8, !tbaa !67, !noalias !729
  store i64 0, ptr %i.t, align 8, !tbaa !68, !noalias !729
  store i8 0, ptr %i.l, align 8, !tbaa !69, !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !729
  call void @_ZNK9Stockfish6Engine39thread_allocation_information_as_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1680) %.val), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68, !noalias !733 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68, !noalias !733 ; 4 uses
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !67, !noalias !733 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.j
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i.i
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
end_hunk_7
begin_hunk_8_@_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE17_M_reallocate_mapEmb:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !86
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !86
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !767

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !86
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !86
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit, !prof !253

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #31 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !165 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !767

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !86
  store ptr %i.be, ptr %i.av, align 8, !tbaa !86
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !85
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !84
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #33
  store ptr %i.aq, ptr %0, align 8, !tbaa !85
  store i64 %i.am, ptr %i.k, align 8, !tbaa !84
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !87
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !86   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !89
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !87
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !86 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.d = load ptr, ptr %0, align 8, !tbaa !149
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !149    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !148  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.r = load i32, ptr %.0911.i.i.i, align 8, !tbaa !157, !alias.scope !772
  store i32 %i.r, ptr %.012.i.i.i, align 8, !tbaa !157, !alias.scope !771
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !60, !alias.scope !771
  %i.w = load i8, ptr %i.u, align 8, !tbaa !60, !range !61, !alias.scope !772, !noundef !62
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !65, !alias.scope !771
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !67, !alias.scope !772 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68, !alias.scope !772 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !773
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.z, ptr %i.s, align 8, !tbaa !67, !alias.scope !771
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !69, !alias.scope !772
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !69, !alias.scope !771
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !68, !alias.scope !772
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !68, !alias.scope !771
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !67, !alias.scope !772
  store i64 0, ptr %i.ai, align 8, !tbaa !68, !alias.scope !772
  store i8 0, ptr %i.aa, align 8, !tbaa !69, !alias.scope !772
  store i8 1, ptr %i.v, align 8, !tbaa !60, !alias.scope !771
  store i8 0, ptr %i.u, align 8, !tbaa !60, !alias.scope !772
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !149
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit
  %i.am = phi ptr [ %.pr, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #33
  br label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !149
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !148
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.as, ptr %i.b, align 8, !tbaa !150
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE17_M_realloc_insertIJS2_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !149    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !158
  store i32 %i.r, ptr %i.q, align 8, !tbaa !157
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !60
  %i.v = load i8, ptr %i.t, align 8, !tbaa !60, !range !61, !noundef !62
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !65
  %i.y = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.y, ptr %i.s, align 8, !tbaa !67
  %i.af = load i64, ptr %i.z, align 8, !tbaa !69
  store i64 %i.af, ptr %i.x, align 8, !tbaa !69
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !68
  store ptr %i.z, ptr %3, align 8, !tbaa !67
  store i64 0, ptr %i.ah, align 8, !tbaa !68
  store i8 0, ptr %i.z, align 8, !tbaa !69
  store i8 1, ptr %i.u, align 8, !tbaa !60
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.aj = load i32, ptr %.0911.i.i.i, align 8, !tbaa !157, !alias.scope !781
  store i32 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !157, !alias.scope !780
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !60, !alias.scope !780
  %i.ao = load i8, ptr %i.am, align 8, !tbaa !60, !range !61, !alias.scope !781, !noundef !62
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !65, !alias.scope !780
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !67, !alias.scope !781 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !68, !alias.scope !781 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !782
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !67, !alias.scope !780
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !69, !alias.scope !781
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !69, !alias.scope !780
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !68, !alias.scope !781
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !68, !alias.scope !780
  store ptr %i.as, ptr %i.al, align 8, !tbaa !67, !alias.scope !781
  store i64 0, ptr %i.ba, align 8, !tbaa !68, !alias.scope !781
  store i8 0, ptr %i.as, align 8, !tbaa !69, !alias.scope !781
  store i8 1, ptr %i.an, align 8, !tbaa !60, !alias.scope !780
  store i8 0, ptr %i.am, align 8, !tbaa !60, !alias.scope !781
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.bd, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i19 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.be, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.by, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bf = load i32, ptr %.0911.i.i.i20, align 8, !tbaa !157, !alias.scope !784
  store i32 %i.bf, ptr %.012.i.i.i19, align 8, !tbaa !157, !alias.scope !783
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40 ; 2 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !60, !alias.scope !783
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !60, !range !61, !alias.scope !784, !noundef !62
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21

bb.g:                                             ; preds = %.lr.ph.i.i.i18
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !65, !alias.scope !783
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !67, !alias.scope !784 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !68, !alias.scope !784 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false), !alias.scope !785
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24: ; preds = %bb.g
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !67, !alias.scope !783
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !69, !alias.scope !784
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !69, !alias.scope !783
  %.phi.trans.insert.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !68, !alias.scope !784
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24, %bb.h
  %i.bv = phi i64 [ %i.br, %bb.h ], [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !68, !alias.scope !783
  store ptr %i.bo, ptr %i.bh, align 8, !tbaa !67, !alias.scope !784
  store i64 0, ptr %i.bw, align 8, !tbaa !68, !alias.scope !784
  store i8 0, ptr %i.bo, align 8, !tbaa !69, !alias.scope !784
  store i8 1, ptr %i.bj, align 8, !tbaa !60, !alias.scope !783
  store i8 0, ptr %i.bi, align 8, !tbaa !60, !alias.scope !784
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i18
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.by, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, label %.lr.ph.i.i.i18, !llvm.loop !18

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.be, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ], [ %i.bz, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cd) #33
  br label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !149
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !148
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i8, ptr %i.c, align 8, !tbaa !185, !range !61, !noundef !62
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 29, ptr %i.b, align 8, !tbaa !45
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !67
  %i.h = load i64, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.g, ptr noundef nonnull align 1 dereferenceable(30) @.str.82, i64 29, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !68
  %i.j = load ptr, ptr %0, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
  %.not.i = icmp ne i32 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %.not1.i = icmp ne ptr %i.o, null
  %or.cond.i.not6 = select i1 %.not.i, i1 %.not1.i, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ne ptr %i.q, null
  %or.cond = select i1 %or.cond.i.not6, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 25, ptr %i.a, align 8, !tbaa !45
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !67
  %i.u = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.t, ptr noundef nonnull align 1 dereferenceable(26) @.str.83, i64 25, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !68
  %i.w = load ptr, ptr %0, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !190  ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i2, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit.thread, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ab = load atomic i8, ptr %i.aa acquire, align 1, !range !61, !noundef !62
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit.thread

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit.thread: ; preds = %bb.c, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ad, ptr noundef nonnull align 1 dereferenceable(16) @.str.84, i64 15, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.ae, align 8, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.af, align 1, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit.thread, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, %._crit_edge.i.i.i.i.i.i.i.i
  %.sink = phi i8 [ 1, %._crit_edge.i.i.i.i.i.i.i.i ], [ 1, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit.thread ], [ 1, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread ], [ 0, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE14is_initializedEv.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.ag, align 8, !tbaa !60
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

declare void @_ZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_(ptr noundef nonnull align 64 dereferenceable(131331893), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8) local_unnamed_addr #6

declare void @_ZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_(ptr noundef nonnull align 64 dereferenceable(6517429), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE4saveERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 64 dereferenceable(131331893), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE4saveERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 64 dereferenceable(6517429), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_engine.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #28 ; 0 uses
  %i.b = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #28
  %i.c = shl nsw i32 %i.b, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1024)
  store i32 %.sroa.speculated.i, ptr @_ZN9Stockfish10MaxThreadsE, align 4, !tbaa !102
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_8
