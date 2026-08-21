Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/libfsst?download=true
inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  %.val3.i.i.i.i.i85 = load i32, ptr %i.gj, align 8, !tbaa !75 ; 2 uses
  %i.gk = icmp ult i32 %.val1.i.i.i.i.i83, %.val3.i.i.i.i.i85
  %i.gl = icmp eq i32 %.val1.i.i.i.i.i83, %.val3.i.i.i.i.i85
  %i.gm = icmp ugt i64 %.val.i.i.i.i.i82, %.val2.i.i.i.i.i84
  %spec.select.i.i.i.i.i.i86 = select i1 %i.gl, i1 %i.gm, i1 false
  %i.gn = select i1 %i.gk, i1 true, i1 %spec.select.i.i.i.i.i.i86
  %spec.select.i.i.i.i87 = select i1 %i.gn, i64 %i.gg, i64 %i.ge ; 4 uses
  %i.go = getelementptr inbounds [24 x i8], ptr %.sroa.07.0.lcssa, i64 %spec.select.i.i.i.i87
  %i.gp = getelementptr inbounds [24 x i8], ptr %.sroa.07.0.lcssa, i64 %.043.i.i.i.i81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gp, ptr noundef nonnull align 8 dereferenceable(20) %i.go, i64 20, i1 false), !tbaa.struct !69
  %i.gq = icmp slt i64 %spec.select.i.i.i.i87, %i.gb
  br i1 %i.gq, label %.lr.ph.i.i.i.i80, label %._crit_edge.i.i.i.i67, !llvm.loop !79

._crit_edge.i.i.i.i67:                            ; preds = %.lr.ph.i.i.i.i80, %bb.ab
  %.0.lcssa.i.i.i.i68 = phi i64 [ 0, %bb.ab ], [ %spec.select.i.i.i.i87, %.lr.ph.i.i.i.i80 ] ; 5 uses
  %i.gr = and i64 %i.fz, 1
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i67
  %i.gt = add nsw i64 %i.fz, -2
  %i.gu = ashr exact i64 %i.gt, 1
  %i.gv = icmp eq i64 %.0.lcssa.i.i.i.i68, %i.gu
  br i1 %i.gv, label %.thread.i.i.i, label %bb.ad

.thread.i.i.i:                                    ; preds = %bb.ac
  %i.gw = shl nuw nsw i64 %.0.lcssa.i.i.i.i68, 1
  %i.gx = or disjoint i64 %i.gw, 1                ; 2 uses
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.07.0.lcssa, i64 %i.gx
  %i.gz = getelementptr inbounds [24 x i8], ptr %.sroa.07.0.lcssa, i64 %.0.lcssa.i.i.i.i68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gz, ptr noundef nonnull align 8 dereferenceable(20) %i.gy, i64 20, i1 false), !tbaa.struct !69
  br label %.lr.ph.i.i.i.i.i70.preheader

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i67
  %.not.i.i.i69 = icmp eq i64 %.0.lcssa.i.i.i.i68, 0
  br i1 %.not.i.i.i69, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %bb.ad, %.thread.i.i.i
  %.010.i.i.i.i.i71.ph = phi i64 [ %.0.lcssa.i.i.i.i68, %bb.ad ], [ %i.gx, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader, %bb.ae
  %.010.i.i.i.i.i71 = phi i64 [ %.0911.i.i1213.i.i.i, %bb.ae ], [ %.010.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader ] ; 3 uses
  %.0911.in.i.i.i.i.i72 = add nsw i64 %.010.i.i.i.i.i71, -1
  %.0911.i.i1213.i.i.i = lshr i64 %.0911.in.i.i.i.i.i72, 1 ; 3 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %.sroa.07.0.lcssa, i64 %.0911.i.i1213.i.i.i ; 3 uses
  %.val.i.i.i.i.i.i73 = load i64, ptr %i.ha, align 8
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %.val2.i.i.i.i.i.i74 = load i32, ptr %i.hb, align 8, !tbaa !75 ; 2 uses
  %i.hc = icmp ult i32 %.val2.i.i.i.i.i.i74, %.sroa.510.0.copyload.i.i.i
  %i.hd = icmp eq i32 %.val2.i.i.i.i.i.i74, %.sroa.510.0.copyload.i.i.i
  %i.he = icmp ugt i64 %.val.i.i.i.i.i.i73, %.sroa.08.0.copyload.i.i.i
  %spec.select.i.i.i.i.i.i.i75 = select i1 %i.hd, i1 %i.he, i1 false
  %i.hf = select i1 %i.hc, i1 true, i1 %spec.select.i.i.i.i.i.i.i75
  br i1 %i.hf, label %bb.ae, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i"

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i70
  %i.hg = getelementptr inbounds [24 x i8], ptr %.sroa.07.0.lcssa, i64 %.010.i.i.i.i.i71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hg, ptr noundef nonnull align 8 dereferenceable(20) %i.ha, i64 20, i1 false), !tbaa.struct !69
  %.not14.i.i.i = icmp eq i64 %.0911.i.i1213.i.i.i, 0
  br i1 %.not14.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i.i70, !llvm.loop !77

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i": ; preds = %bb.ae, %.lr.ph.i.i.i.i.i70, %bb.ad
  %.0.lcssa.i.i.i.i.i76 = phi i64 [ 0, %bb.ad ], [ %.010.i.i.i.i.i71, %.lr.ph.i.i.i.i.i70 ], [ 0, %bb.ae ]
  %i.hh = getelementptr inbounds [24 x i8], ptr %.sroa.07.0.lcssa, i64 %.0.lcssa.i.i.i.i.i76 ; 2 uses
  store <2 x i64> %i.fw, ptr %i.hh, align 8, !tbaa !10
  %.sroa.539.0..sroa_idx40.i.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i32 %.sroa.510.0.copyload.i.i.i, ptr %.sroa.539.0..sroa_idx40.i.i.i.i78, align 8, !tbaa !3
  %.pre58 = load i16, ptr %i.f, align 8, !tbaa !64
  br label %bb.af

bb.af:                                            ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i", %bb.aa
  %.pr59 = phi i16 [ %.pre58, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i" ], [ %.pr60, %bb.aa ] ; 5 uses
  %i.hi = getelementptr inbounds i8, ptr %.sroa.13.253, i64 -24 ; 2 uses
  %i.hj = lshr i64 %.sroa.5.0.copyload, 28        ; 3 uses
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = zext i16 %.pr59 to i64                  ; 2 uses
  %i.hm = and i64 %.sroa.5.0.copyload, 4026531840
  %i.hn = shl nuw nsw i64 %i.hl, 16
  %i.ho = add nuw nsw i64 %i.hn, 16777216
  %i.hp = shl nuw nsw i64 %i.hj, 3
  %i.hq = sub nsw i64 64, %i.hp                   ; 2 uses
  %i.hr = or i64 %i.hm, %i.ho
  %i.hs = or i64 %i.hr, %i.hq
  %i.ht = and i64 %i.hs, 4294967288               ; 2 uses
  switch i32 %i.hk, label %bb.ai [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.hu = add i16 %.pr59, 4352
  %i.hv = and i64 %.sroa.01.0.copyload, 255
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.hv
  store i16 %i.hu, ptr %i.hw, align 2, !tbaa !34
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.hx = add i16 %.pr59, 8448
  %i.hy = and i64 %.sroa.01.0.copyload, 65535
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hy
  store i16 %i.hx, ptr %i.hz, align 2, !tbaa !34
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ia = and i64 %.sroa.01.0.copyload, 16777215
  %i.ib = mul nuw nsw i64 %i.ia, 2971215073       ; 2 uses
  %i.ic = lshr i64 %i.ib, 15
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = and i64 %i.id, 1023
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !7
  %i.ii = icmp ugt i64 %i.ih, 4060020735
  br i1 %i.ii, label %_ZN7libfsst11SymbolTable10hashInsertENS_6SymbolE.exit.thread.i, label %_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit

_ZN7libfsst11SymbolTable10hashInsertENS_6SymbolE.exit.thread.i: ; preds = %bb.ai
  store i64 %i.ht, ptr %i.ig, align 8, !tbaa !7
  %i.ij = and i64 %i.hq, 248
  %i.ik = lshr i64 -1, %i.ij
  %i.il = and i64 %i.ik, %.sroa.01.0.copyload
  store i64 %i.il, ptr %i.if, align 8, !tbaa !10
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN7libfsst11SymbolTable10hashInsertENS_6SymbolE.exit.thread.i, %bb.ah, %bb.ag
  %i.im = add i16 %.pr59, 1
  store i16 %i.im, ptr %i.f, align 8, !tbaa !64
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.hl ; 2 uses
  store i64 %.sroa.01.0.copyload, ptr %i.in, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i64 %i.ht, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !31
  %i.io = add nuw nsw i64 %i.hj, 4294967295
  %i.ip = and i64 %i.io, 4294967295
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.ip ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !34
  %i.is = add i16 %i.ir, 1
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !34
  %.pr.pre = load i16, ptr %i.f, align 8, !tbaa !64
  br label %_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit

_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit:    ; preds = %bb.ai, %bb.aj
  %.pr = phi i16 [ %.pr59, %bb.ai ], [ %.pr.pre, %bb.aj ] ; 2 uses
  %i.it = icmp ugt i16 %.pr, 254
  %i.iu = icmp eq ptr %.sroa.07.0.lcssa, %i.hi
  %or.cond37 = select i1 %i.it, i1 true, i1 %i.iu
  br i1 %or.cond37, label %.critedge.thread, label %bb.aa

.critedge:                                        ; preds = %_ZN7libfsst11SymbolTable5clearEv.exit
  %.not.i.i.i.i88 = icmp eq ptr %.sroa.07.0.lcssa, null
  br i1 %.not.i.i.i.i88, label %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit", label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit, %.critedge
  call void @_ZdlPv(ptr noundef nonnull %.sroa.07.0.lcssa) #23
  br label %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit"

"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit": ; preds = %.critedge, %.critedge.thread
  %i.iv = load ptr, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i89

.lr.ph.i.i.i.i89:                                 ; preds = %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit", %.lr.ph.i.i.i.i89
  %.06.i.i.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i.i89 ], [ %i.iv, %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit" ] ; 2 uses
  %i.iw = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #23
  %.not.i.i.i.i90 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i90, label %_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i89, !llvm.loop !80

_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i89, %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit"
  %i.ix = load ptr, ptr %2, align 8, !tbaa !55
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !62
  %i.iz = shl i64 %i.iy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ix, i8 0, i64 %i.iz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ja = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.a
  br i1 %i.jb, label %_ZNSt13unordered_setIN7libfsst7QSymbolESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ja) #23
  br label %_ZNSt13unordered_setIN7libfsst7QSymbolESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN7libfsst7QSymbolESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.al:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %.sroa.07.050) #23
  br label %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit92"

"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit92": ; preds = %bb.z, %bb.al, %bb.h, %bb.o
  %.pn49.pn = phi { ptr, i32 } [ %i.bd, %bb.h ], [ %i.cq, %bb.o ], [ %lpad.phi, %bb.al ], [ %lpad.phi, %bb.z ]
  call void @_ZNSt13unordered_setIN7libfsst7QSymbolESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7libfsst11SymbolTable8finalizeEh(ptr noundef nonnull align 8 dereferenceable(156186) %0, i8 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %2 = alloca [8 x i8], align 1                   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156160
  %i.c = load i16, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %i.d = trunc i16 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156168
  %i.f = load i16, ptr %i.e, align 8, !tbaa !34
  %i.g = trunc i16 %i.f to i8
  %.neg = add i8 %1, %i.d
  %i.h = sub i8 %.neg, %i.g
  store i8 %i.h, ptr %2, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156170
  %i.k = load i16, ptr %i.j, align 2, !tbaa !34
  %i.l = trunc i16 %i.k to i8
  %i.m = add i8 %1, %i.l                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156172
  %i.p = load i16, ptr %i.o, align 4, !tbaa !34
  %i.q = trunc i16 %i.p to i8
  %i.r = add i8 %i.m, %i.q                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.r, ptr %i.s, align 1, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156174
  %i.u = load i16, ptr %i.t, align 2, !tbaa !34
  %i.v = trunc i16 %i.u to i8
  %i.w = add i8 %i.r, %i.v                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156176
  %i.z = load i16, ptr %i.y, align 8, !tbaa !34
  %i.aa = trunc i16 %i.z to i8
  %i.ab = add i8 %i.w, %i.aa                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156178
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !34
  %i.af = trunc i16 %i.ae to i8
  %i.ag = add i8 %i.ab, %i.af                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156180
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !34
  %i.ak = trunc i16 %i.aj to i8
  %i.al = add i8 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.al, ptr %i.am, align 1, !tbaa !10
  %i.an = zext i8 %1 to i16                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 156162 ; 2 uses
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 131584 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 135680
  store i8 0, ptr %i.a, align 16, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !81
  %i.ar = zext i16 %i.c to i32
  %i.as = zext i8 %1 to i16
  %i.at = icmp ugt i16 %i.c, %i.as
  br i1 %i.at, label %.lr.ph.preheader, label %.preheader71

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.au = zext i8 %1 to i64
  %wide.trip.count = zext i16 %i.c to i64
  br label %.lr.ph

.preheader71:                                     ; preds = %bb.h, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 3 uses
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.aw = phi i16 [ %i.an, %.lr.ph.preheader ], [ %i.bt, %bb.h ] ; 4 uses
  %indvars.iv84 = phi i64 [ %i.au, %.lr.ph.preheader ], [ %indvars.iv.next85, %bb.h ] ; 4 uses
  %.05276 = phi i8 [ %i.m, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv84 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4096
  %.sroa.063.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4104
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31 ; 3 uses
  %i.az = lshr i64 %.sroa.5.0.copyload, 28        ; 2 uses
  %i.ba = and i64 %.sroa.5.0.copyload, 1152921504338411520
  %.not80 = icmp eq i64 %i.ba, 536870912
  br i1 %.not80, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.bb = trunc i64 %.sroa.063.0.copyload to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  br i1 %i.bi, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.05173 = phi i32 [ %i.ar, %bb.b ], [ %.1, %bb.d ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4096
  %.sroa.0.0.copyload = load i64, ptr %i.bd, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4104
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %.not62 = icmp ne i64 %indvars.iv, %indvars.iv84
  %i.be = and i64 %.sroa.4.0.copyload, 1152921504069976064
  %i.bf = icmp ne i64 %i.be, 0
  %or.cond = select i1 %.not62, i1 %i.bf, i1 false
  %i.bg = trunc i64 %.sroa.0.0.copyload to i16
  %i.bh = icmp eq i16 %i.bb, %i.bg
  %i.bi = select i1 %or.cond, i1 %i.bh, i1 false  ; 2 uses
  %.1 = select i1 %i.bi, i32 0, i32 %.05173       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = zext nneg i32 %.1 to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.d, label %bb.c, !llvm.loop !82

bb.e:                                             ; preds = %bb.c
  %i.bl = add i16 %i.aw, 1                        ; 2 uses
  store i16 %i.bl, ptr %i.ao, align 2, !tbaa !25
  %i.bm = trunc i16 %i.aw to i8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.bn = add i8 %.05276, -1                      ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.bo = add nuw nsw i64 %i.az, 4294967295
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10  ; 2 uses
  %i.bs = add i8 %i.br, 1
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sink = phi i8 [ %i.br, %bb.g ], [ %i.bm, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  %i.bt = phi i16 [ %i.aw, %bb.g ], [ %i.bl, %bb.e ], [ %i.aw, %bb.f ]
  %.2 = phi i8 [ %.05276, %bb.g ], [ %.05276, %bb.e ], [ %i.bn, %bb.f ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv84
  store i8 %.sink, ptr %i.bu, align 1, !tbaa !10
  %i.bv = zext i8 %.sink to i64                   ; 2 uses
  %i.bw = and i64 %.sroa.5.0.copyload, 4026531840
  %i.bx = shl nuw nsw i64 %i.bv, 16
  %i.by = or disjoint i64 %i.bx, %i.bw
  %i.bz = shl nuw nsw i64 %i.az, 3
  %i.ca = sub nsw i64 64, %i.bz
  %.masked = and i64 %i.ca, 4294967288
  %i.cb = or i64 %i.by, %.masked
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.bv ; 2 uses
  store i64 %.sroa.063.0.copyload, ptr %i.cc, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cb, ptr %.sroa.5.0..sroa_idx65, align 8, !tbaa !31
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count
  br i1 %exitcond.not, label %.preheader71, label %.lr.ph, !llvm.loop !83

bb.i:                                             ; preds = %bb.m, %.preheader71
  %indvars.iv86 = phi i64 [ 0, %.preheader71 ], [ %indvars.iv.next87.1, %bb.m ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv86 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !34 ; 2 uses
  %i.cf = and i16 %i.ce, 256
  %.not57 = icmp eq i16 %i.cf, 0
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = and i16 %i.ce, 255
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i16
  %i.cl = or disjoint i16 %i.ck, 4096
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %storemerge58 = phi i16 [ %i.cl, %bb.j ], [ 4607, %bb.i ]
  store i16 %storemerge58, ptr %i.cd, align 4, !tbaa !34
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv86
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !34 ; 2 uses
  %i.cp = and i16 %i.co, 256
  %.not57.1 = icmp eq i16 %i.cp, 0
  br i1 %.not57.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = and i16 %i.co, 255
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = zext i8 %i.ct to i16
  %i.cv = or disjoint i16 %i.cu, 4096
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge58.1 = phi i16 [ %i.cv, %bb.l ], [ 4607, %bb.k ]
  store i16 %storemerge58.1, ptr %i.cn, align 2, !tbaa !34
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %indvars.iv.next87.1, 256
  br i1 %exitcond89.not.1, label %.preheader70, label %bb.i, !llvm.loop !84

.preheader:                                       ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 139776
  br label %bb.r

.preheader70:                                     ; preds = %bb.m, %bb.p
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv90 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !34 ; 3 uses
  %i.cz = and i16 %i.cy, 256
  %.not = icmp eq i16 %i.cz, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader70
  %i.da = and i16 %i.cy, 255
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = and i16 %i.cy, -4096
  %i.df = zext i8 %i.dd to i16
  %i.dg = or disjoint i16 %i.de, %i.df
  br label %bb.p

bb.o:                                             ; preds = %.preheader70
  %i.dh = and i64 %indvars.iv90, 255
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %storemerge = phi i16 [ %i.dj, %bb.o ], [ %i.dg, %bb.n ]
  store i16 %storemerge, ptr %i.cx, align 2, !tbaa !34
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 65536
  br i1 %exitcond93.not, label %.preheader, label %.preheader70, !llvm.loop !85

bb.q:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.r:                                             ; preds = %.preheader, %bb.t
  %indvars.iv94 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next95, %bb.t ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv94 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !7  ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 4060020736
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.do = lshr i64 %i.dm, 16
  %i.dp = and i64 %i.do, 255
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !10
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !tbaa.struct !81
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, 1024
  br i1 %exitcond97.not, label %bb.q, label %bb.r, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.c, %vector.body ]
  %vec.phi224 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.d, %vector.body ]
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <2 x i64>, ptr %i.a, align 8, !tbaa !31
  %wide.load225 = load <2 x i64>, ptr %i.b, align 8, !tbaa !31
  %i.c = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.d = add <2 x i64> %wide.load225, %vec.phi224 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.d, %i.c
  %i.f = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader249

.lr.ph.preheader249:                              ; preds = %.lr.ph.preheader, %middle.block
  %.04494.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04593.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa223 = phi i64 [ %i.f, %middle.block ], [ %i.l, %.lr.ph ]
  %i.g = icmp ult i64 %.lcssa223, 16384
  br i1 %i.g, label %.lr.ph120, label %bb.h

.lr.ph120:                                        ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader249, %.lr.ph
  %.04494 = phi i64 [ %i.m, %.lr.ph ], [ %.04494.ph, %.lr.ph.preheader249 ] ; 2 uses
  %.04593 = phi i64 [ %i.l, %.lr.ph ], [ %.04593.ph, %.lr.ph.preheader249 ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04494
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = add i64 %i.k, %.04593                    ; 2 uses
  %i.m = add nuw i64 %.04494, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

bb.b:                                             ; preds = %.lr.ph120, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit
  %i.n = phi ptr [ null, %.lr.ph120 ], [ %i.aj, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.o = phi ptr [ null, %.lr.ph120 ], [ %i.ak, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.043119 = phi i64 [ 0, %.lr.ph120 ], [ %i.am, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.p = phi ptr [ null, %.lr.ph120 ], [ %i.al, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.043119 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  store ptr %i.r, ptr %i.o, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !40
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc51 unwind label %.loopexit86 ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !45
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp sgt i64 %i.v, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %.noexc51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.p, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %.noexc51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !89
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit:    ; preds = %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c
  %i.aj = phi ptr [ %i.ai, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.n, %bb.c ]
  %i.ak = phi ptr [ %i.ah, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.s, %bb.c ]
  %i.al = phi ptr [ %i.ad, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.am = add nuw i64 %.043119, 1                 ; 2 uses
  %exitcond147.not = icmp eq i64 %i.am, %4
  br i1 %exitcond147.not, label %.loopexit, label %bb.b, !llvm.loop !90

.loopexit86:                                      ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %0, align 8
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %._crit_edge
  %i.an = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !91    ; 3 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !91
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #23
  br label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #23
  br label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i, %bb.h
  %i.aq = tail call noundef ptr @_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 4 uses
  %i.ar = add i64 %4, 64                          ; 4 uses
end_hunk_0
