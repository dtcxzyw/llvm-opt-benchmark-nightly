inline.NumInlined: 1792
inline.NumDeleted: 970
begin_hunk_0_@_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE:bb.a
  %.not.i.i.i.i90 = icmp eq ptr %i.yc, %i.yb
  br i1 %.not.i.i.i.i90, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 %i.yg, ptr %i.yc, align 4, !noalias !32
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  store i32 %i.yj, ptr %i.ym, align 4, !noalias !32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  store i32 %i.yl, ptr %i.yn, align 4, !noalias !32
  br label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRKiS7_S7_EEERS2_DpOT_.exit.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.yo = ptrtoint ptr %i.yb to i64
  %i.yp = ptrtoint ptr %.sroa.0.1.i.i to i64
  %i.yq = sub i64 %i.yo, %i.yp                    ; 4 uses
  %i.yr = icmp eq i64 %i.yq, 9223372036854775800
  br i1 %i.yr, label %bb.bx, label %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21, !noalias !32
  unreachable

_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bw
  %i.ys = sdiv exact i64 %i.yq, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ys, i64 1)
  %i.yt = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ys ; 2 uses
  %i.yu = icmp ult i64 %i.yt, %i.ys
  %i.yv = call i64 @llvm.umin.i64(i64 %i.yt, i64 768614336404564650)
  %i.yw = select i1 %i.yu, i64 768614336404564650, i64 %i.yv ; 3 uses
  %.not.i.i.i.i.i.i91 = icmp ne i64 %i.yw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i91)
  %i.yx = mul nuw nsw i64 %i.yw, 12
  %i.yy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #22, !noalias !32 ; 5 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yq ; 3 uses
  store i32 %i.yg, ptr %i.yz, align 4, !noalias !32
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  store i32 %i.yj, ptr %i.za, align 4, !noalias !32
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  store i32 %i.yl, ptr %i.zb, align 4, !noalias !32
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, %i.yb
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.zd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yy, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.zc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !35, !noalias !32
  %i.zc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.zc, %i.yb
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.yy, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.zd, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i25.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i25.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.i.i, i64 noundef %i.yq) #23, !noalias !32
  br label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.by, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i.i.i.i
  %i.ze = getelementptr inbounds nuw [12 x i8], ptr %i.yy, i64 %i.yw ; 2 uses
  br label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRKiS7_S7_EEERS2_DpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRKiS7_S7_EEERS2_DpOT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.bv
  %.sroa.0.2.i.i = phi ptr [ %i.yy, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0.1.i.i, %bb.bv ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %i.yc, %bb.bv ]
  %.sroa.12.2.i.i = phi ptr [ %i.ze, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %.sroa.12.1.i.i, %bb.bv ] ; 2 uses
  %i.zf = phi ptr [ %i.ze, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_realloc_insertIJRKiS7_S7_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ], [ %i.yb, %bb.bv ]
  %.sroa.9.1.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i, i64 12 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.zg = load i32, ptr %i.xv, align 4, !noalias !32
  %i.zh = sext i32 %i.zg to i64
  %i.zi = icmp slt i64 %indvars.iv.next.i.i.i, %i.zh
  br i1 %i.zi, label %bb.bu, label %._crit_edge.i.i.i, !llvm.loop !40

_ZN2v88internal12_GLOBAL__N_118GetSortedBlockDataEPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.bt
  %.sroa.0.3.i.i = phi ptr [ null, %bb.bt ], [ %.sroa.0.0.i.i, %._crit_edge.i.i.i ]
  %.sroa.9.2.i.i = phi ptr [ null, %bb.bt ], [ %.val8.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.12.3.i.i = phi ptr [ null, %bb.bt ], [ %.sroa.12.0.i.i, %._crit_edge.i.i.i ]
  %i.zj = load ptr, ptr %i.ne, align 8            ; 3 uses
  %i.zk = load ptr, ptr %i.nh, align 8
  store ptr %.sroa.0.3.i.i, ptr %i.ne, align 8
  store ptr %.sroa.9.2.i.i, ptr %i.ng, align 8
  store ptr %.sroa.12.3.i.i, ptr %i.nh, align 8
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %i.zj, null
  br i1 %.not.i.i.i.i.i.i.i86, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EED2Ev.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118GetSortedBlockDataEPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i.i
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = ptrtoint ptr %i.zj to i64
  %i.zn = sub i64 %i.zl, %i.zm
  call void @_ZdlPvm(ptr noundef nonnull %i.zj, i64 noundef %i.zn) #23
  br label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bz, %_ZN2v88internal12_GLOBAL__N_118GetSortedBlockDataEPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i.i
  br i1 %i.ni, label %bb.ca, label %bb.cj

bb.ca:                                            ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store ptr %31, ptr %15, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.nj, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.nk, align 4
  store i32 -1, ptr %i.nl, align 8
  %i.zo = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
  br i1 %i.zo, label %.lr.ph.i20.i.i, label %.preheader.i18.i.i.preheader

.lr.ph.i20.i.i:                                   ; preds = %bb.ca, %bb.cc
  %.val.i21.i.i = load ptr, ptr %15, align 8
  %.val3.i.i.i = load i32, ptr %i.nk, align 4
  %i.zp = getelementptr i8, ptr %.val.i21.i.i, i64 24
  %.val.val.i.i.i = load ptr, ptr %i.zp, align 8
  %i.zq = sext i32 %.val3.i.i.i to i64
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %.val.val.i.i.i, i64 %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4
  %.not.i.i.i88 = icmp eq i32 %i.zt, 0
  br i1 %.not.i.i.i88, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i20.i.i
  store i32 1, ptr %i.zs, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i20.i.i
  %i.zu = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
  br i1 %i.zu, label %.lr.ph.i20.i.i, label %.preheader.i18.i.i.preheader, !llvm.loop !41

.preheader.i18.i.i.preheader:                     ; preds = %bb.cc, %bb.ca
  br label %.preheader.i18.i.i

.preheader.i18.i.i:                               ; preds = %.preheader.i18.i.i.preheader, %.preheader.i18.i.i
  %i.zv = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
  br i1 %i.zv, label %.preheader.i18.i.i, label %bb.cd, !llvm.loop !42

bb.cd:                                            ; preds = %.preheader.i18.i.i
  %i.zw = load ptr, ptr %15, align 8              ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 24 ; 2 uses
  %i.zy = load i32, ptr %i.nl, align 8
  %i.zz = sext i32 %i.zy to i64                   ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 32 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8          ; 2 uses
  %i.aac = load ptr, ptr %i.zx, align 8           ; 2 uses
  %i.aad = ptrtoint ptr %i.aab to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = sdiv exact i64 %i.aaf, 12              ; 3 uses
  %i.aah = icmp ult i64 %i.aag, %i.zz
  br i1 %i.aah, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aai = sub nuw nsw i64 %i.zz, %i.aag
  call void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.zx, i64 noundef %i.aai)
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.aaj = icmp ugt i64 %i.aag, %i.zz
  br i1 %i.aaj, label %bb.cg, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.aak = getelementptr inbounds nuw [12 x i8], ptr %i.aac, i64 %i.zz ; 2 uses
  %.not.i.i.i.i.i19.i.i = icmp eq ptr %i.aab, %i.aak
  br i1 %.not.i.i.i.i.i19.i.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store ptr %i.aak, ptr %i.aaa, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i: ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %i.aal = load ptr, ptr %i.nj, align 8           ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.aal, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_113ClampToBinaryEPNS0_16CoverageFunctionE.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i
  %i.aam = load ptr, ptr %i.nm, align 8
  %i.aan = ptrtoint ptr %i.aam to i64
  %i.aao = ptrtoint ptr %i.aal to i64
  %i.aap = sub i64 %i.aan, %i.aao
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aap) #23
  br label %_ZN2v88internal12_GLOBAL__N_113ClampToBinaryEPNS0_16CoverageFunctionE.exit.i.i

_ZN2v88internal12_GLOBAL__N_113ClampToBinaryEPNS0_16CoverageFunctionE.exit.i.i: ; preds = %bb.ci, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_113ClampToBinaryEPNS0_16CoverageFunctionE.exit.i.i, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %31, ptr %14, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.nn, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.no, align 4
  store i32 -1, ptr %i.np, align 8
  %i.aaq = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  br i1 %i.aaq, label %bb.ck, label %.preheader527

bb.ck:                                            ; preds = %bb.cj
  %.val.i25.i.i = load ptr, ptr %14, align 8
  %.val5.i.i.i.a = load i32, ptr %i.no, align 4
  %i.aar = getelementptr i8, ptr %.val.i25.i.i, i64 24
  %.val.val.i26.i.i = load ptr, ptr %i.aar, align 8
  %i.aas = sext i32 %.val5.i.i.i.a to i64
  %i.aat = getelementptr inbounds nuw [12 x i8], ptr %.val.val.i26.i.i, i64 %i.aas ; 3 uses
  %33 = load i32, ptr %i.aat, align 4
  %34 = icmp eq i32 %33, -2
  %35 = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %i.aau = load i32, ptr %35, align 4
  %i.aav = icmp eq i32 %i.aau, -2
  %or.cond.i.i.i = select i1 %34, i1 %i.aav, i1 false
  br i1 %or.cond.i.i.i, label %bb.cl, label %.preheader527

bb.cl:                                            ; preds = %bb.ck
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aax = load i32, ptr %i.aaw, align 4
  store i32 %i.aax, ptr %i.nc, align 8
  store i8 1, ptr %i.nq, align 1
  br label %.preheader527

.preheader527:                                    ; preds = %bb.cl, %bb.ck, %bb.cj
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader527, %bb.cm
  %i.aay = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  br i1 %i.aay, label %bb.cm, label %bb.cn, !llvm.loop !42

bb.cn:                                            ; preds = %bb.cm
  %i.aaz = load ptr, ptr %14, align 8             ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24 ; 2 uses
  %i.abb = load i32, ptr %i.np, align 8           ; 2 uses
  %i.abc = sext i32 %i.abb to i64                 ; 6 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 32 ; 4 uses
  %i.abe = load ptr, ptr %i.abd, align 8          ; 6 uses
  %i.abf = load ptr, ptr %i.aba, align 8          ; 6 uses
  %i.abg = ptrtoint ptr %i.abe to i64             ; 2 uses
  %i.abh = ptrtoint ptr %i.abf to i64             ; 2 uses
  %i.abi = sub i64 %i.abg, %i.abh                 ; 2 uses
  %i.abj = sdiv exact i64 %i.abi, 12              ; 9 uses
  %i.abk = icmp ult i64 %i.abj, %i.abc
  br i1 %i.abk, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.abl = sub nuw nsw i64 %i.abc, %i.abj         ; 10 uses
  %.not.i126 = icmp eq i64 %i.abl, 0
  br i1 %.not.i126, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aaz, i64 40 ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8
  %i.abo = ptrtoint ptr %i.abn to i64             ; 2 uses
  %i.abp = sub i64 %i.abo, %i.abg
  %i.abq = sdiv exact i64 %i.abp, 12              ; 2 uses
  %i.abr = icmp ult i64 %i.abj, 768614336404564651
  call void @llvm.assume(i1 %i.abr)
  %i.abs = sub nuw nsw i64 768614336404564650, %i.abj
  %i.abt = icmp ule i64 %i.abq, %i.abs
  call void @llvm.assume(i1 %i.abt)
  %.not23.i = icmp ult i64 %i.abq, %i.abl
  br i1 %.not23.i, label %bb.cq, label %.lr.ph.i.i.i.i127.preheader

.lr.ph.i.i.i.i127.preheader:                      ; preds = %bb.cp
  %xtraiter = and i64 %i.abl, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i127.prol.loopexit, label %.lr.ph.i.i.i.i127.prol

.lr.ph.i.i.i.i127.prol:                           ; preds = %.lr.ph.i.i.i.i127.preheader, %.lr.ph.i.i.i.i127.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.abx, %.lr.ph.i.i.i.i127.prol ], [ %i.abe, %.lr.ph.i.i.i.i127.preheader ] ; 4 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.abw, %.lr.ph.i.i.i.i127.prol ], [ %i.abl, %.lr.ph.i.i.i.i127.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i127.prol ], [ 0, %.lr.ph.i.i.i.i127.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 4
  %i.abu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 4
  store i32 -1, ptr %i.abu, align 4
  %i.abv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.abv, align 4
  %i.abw = add i64 %.057.i.i.i.i.prol, -1         ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i127.prol.loopexit, label %.lr.ph.i.i.i.i127.prol, !llvm.loop !43

.lr.ph.i.i.i.i127.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i127.prol, %.lr.ph.i.i.i.i127.preheader
  %.lcssa536.unr = phi ptr [ poison, %.lr.ph.i.i.i.i127.preheader ], [ %i.abx, %.lr.ph.i.i.i.i127.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.abe, %.lr.ph.i.i.i.i127.preheader ], [ %i.abx, %.lr.ph.i.i.i.i127.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.abl, %.lr.ph.i.i.i.i127.preheader ], [ %i.abw, %.lr.ph.i.i.i.i127.prol ]
  %i.aby = sub nsw i64 %i.abj, %i.abc
  %i.abz = icmp ugt i64 %i.aby, -4
  br i1 %i.abz, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i127

.lr.ph.i.i.i.i127:                                ; preds = %.lr.ph.i.i.i.i127.prol.loopexit, %.lr.ph.i.i.i.i127
  %.08.i.i.i.i = phi ptr [ %i.acm, %.lr.ph.i.i.i.i127 ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i127.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i = phi i64 [ %i.acl, %.lr.ph.i.i.i.i127 ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i127.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 4
  %i.aca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  store i32 -1, ptr %i.aca, align 4
  %i.acb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i32 0, ptr %i.acb, align 4
  %i.acc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 12
  store i32 -1, ptr %i.acc, align 4
  %i.acd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16
  store i32 -1, ptr %i.acd, align 4
  %i.ace = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 20
  store i32 0, ptr %i.ace, align 4
  %i.acf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24
  store i32 -1, ptr %i.acf, align 4
  %i.acg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 28
  store i32 -1, ptr %i.acg, align 4
  %i.ach = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i32 0, ptr %i.ach, align 4
  %i.aci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 36
  store i32 -1, ptr %i.aci, align 4
  %i.acj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.acj, align 4
  %i.ack = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 0, ptr %i.ack, align 4
  %i.acl = add i64 %.057.i.i.i.i, -4              ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i128.3 = icmp eq i64 %i.acl, 0
  br i1 %.not.i.i.i.i128.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i127, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i127, %.lr.ph.i.i.i.i127.prol.loopexit
  %.lcssa536 = phi ptr [ %.lcssa536.unr, %.lr.ph.i.i.i.i127.prol.loopexit ], [ %i.acm, %.lr.ph.i.i.i.i127 ]
  store ptr %.lcssa536, ptr %i.abd, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.acn = icmp slt i32 %i.abb, 0
  br i1 %i.acn, label %bb.cr, label %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.cr:                                            ; preds = %bb.cq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cq
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.abj, i64 %i.abl)
  %i.aco = add nuw nsw i64 %.sroa.speculated.i.i, %i.abj
  %i.acp = call i64 @llvm.umin.i64(i64 %i.aco, i64 768614336404564650) ; 2 uses
  %i.acq = mul nuw nsw i64 %i.acp, 12
  %i.acr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acq) #22 ; 4 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 %i.abi ; 3 uses
  %xtraiter558 = and i64 %i.abl, 3                ; 2 uses
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.lr.ph.i.i.i25.i.prol.loopexit, label %.lr.ph.i.i.i25.i.prol

.lr.ph.i.i.i25.i.prol:                            ; preds = %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i25.i.prol
  %.08.i.i.i26.i.prol = phi ptr [ %i.acw, %.lr.ph.i.i.i25.i.prol ], [ %i.acs, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  %.057.i.i.i27.i.prol = phi i64 [ %i.acv, %.lr.ph.i.i.i25.i.prol ], [ %i.abl, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter560 = phi i64 [ %prol.iter560.next, %.lr.ph.i.i.i25.i.prol ], [ 0, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i26.i.prol, align 4
  %i.act = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 4
  store i32 -1, ptr %i.act, align 4
  %i.acu = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 8
  store i32 0, ptr %i.acu, align 4
  %i.acv = add i64 %.057.i.i.i27.i.prol, -1       ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 12 ; 2 uses
  %prol.iter560.next = add i64 %prol.iter560, 1   ; 2 uses
  %prol.iter560.cmp.not = icmp eq i64 %prol.iter560.next, %xtraiter558
  br i1 %prol.iter560.cmp.not, label %.lr.ph.i.i.i25.i.prol.loopexit, label %.lr.ph.i.i.i25.i.prol, !llvm.loop !46

.lr.ph.i.i.i25.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i25.i.prol, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i26.i.unr = phi ptr [ %i.acs, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.acw, %.lr.ph.i.i.i25.i.prol ]
  %.057.i.i.i27.i.unr = phi i64 [ %i.abl, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.acv, %.lr.ph.i.i.i25.i.prol ]
  %i.acx = sub nsw i64 %i.abj, %i.abc
  %i.acy = icmp ugt i64 %i.acx, -4
  br i1 %i.acy, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i, label %.lr.ph.i.i.i25.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i.i.i25.i.prol.loopexit, %.lr.ph.i.i.i25.i
  %.08.i.i.i26.i = phi ptr [ %i.adl, %.lr.ph.i.i.i25.i ], [ %.08.i.i.i26.i.unr, %.lr.ph.i.i.i25.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i27.i = phi i64 [ %i.adk, %.lr.ph.i.i.i25.i ], [ %.057.i.i.i27.i.unr, %.lr.ph.i.i.i25.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i26.i, align 4
  %i.acz = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 4
  store i32 -1, ptr %i.acz, align 4
  %i.ada = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 8
  store i32 0, ptr %i.ada, align 4
  %i.adb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 12
  store i32 -1, ptr %i.adb, align 4
  %i.adc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 16
  store i32 -1, ptr %i.adc, align 4
  %i.add = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 20
  store i32 0, ptr %i.add, align 4
  %i.ade = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 24
  store i32 -1, ptr %i.ade, align 4
  %i.adf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 28
  store i32 -1, ptr %i.adf, align 4
  %i.adg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 32
  store i32 0, ptr %i.adg, align 4
  %i.adh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 36
  store i32 -1, ptr %i.adh, align 4
  %i.adi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 40
  store i32 -1, ptr %i.adi, align 4
  %i.adj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 44
  store i32 0, ptr %i.adj, align 4
  %i.adk = add i64 %.057.i.i.i27.i, -4            ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 48
  %.not.i.i.i28.i.3 = icmp eq i64 %i.adk, 0
  br i1 %.not.i.i.i28.i.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i, label %.lr.ph.i.i.i25.i, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i: ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i.i.i25.i.prol.loopexit
  %.not10.i.i.i.i = icmp eq ptr %i.abf, %i.abe
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i31.i

.lr.ph.i.i.i31.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i, %.lr.ph.i.i.i31.i
  %.012.i.i.i.i = phi ptr [ %i.adn, %.lr.ph.i.i.i31.i ], [ %i.acr, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.adm, %.lr.ph.i.i.i31.i ], [ %i.abf, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !47
  %i.adm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i32.i = icmp eq ptr %i.adm, %i.abe
  br i1 %.not.i.i.i32.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i31.i, !llvm.loop !39

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i31.i, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i
  %.not.i34.i = icmp eq ptr %i.abf, null
  br i1 %.not.i34.i, label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ado = sub i64 %i.abo, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef %i.ado) #23
  br label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.cs, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.acr, ptr %i.aba, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE:bb.a
  %.val4.i.i.i = load ptr, ptr %i.or, align 8
  %i.ala = getelementptr inbounds i8, ptr %.val4.i.i.i, i64 -4
  %i.alb = load i32, ptr %i.ala, align 4
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  %i.ald = load i32, ptr %i.alc, align 4
  %i.ale = icmp eq i32 %i.alb, %i.ald
  br i1 %i.ale, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph.i52.i.i
  store i8 1, ptr %i.os, align 1
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph.i52.i.i
  %i.alf = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
  br i1 %i.alf, label %.lr.ph.i52.i.i, label %.preheader.i48.i.i.preheader, !llvm.loop !55

.preheader.i48.i.i.preheader:                     ; preds = %bb.em, %_ZN2v88internal12_GLOBAL__N_120MergeDuplicateRangesEPNS0_16CoverageFunctionE.exit.i.i
  br label %.preheader.i48.i.i

.preheader.i48.i.i:                               ; preds = %.preheader.i48.i.i.preheader, %.preheader.i48.i.i
  %i.alg = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
  br i1 %i.alg, label %.preheader.i48.i.i, label %bb.en, !llvm.loop !42

bb.en:                                            ; preds = %.preheader.i48.i.i
  %i.alh = load ptr, ptr %10, align 8             ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 24 ; 2 uses
  %i.alj = load i32, ptr %i.oq, align 8
  %i.alk = sext i32 %i.alj to i64                 ; 4 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alh, i64 32 ; 2 uses
  %i.alm = load ptr, ptr %i.all, align 8          ; 2 uses
  %i.aln = load ptr, ptr %i.ali, align 8          ; 2 uses
  %i.alo = ptrtoint ptr %i.alm to i64
  %i.alp = ptrtoint ptr %i.aln to i64
  %i.alq = sub i64 %i.alo, %i.alp
  %i.alr = sdiv exact i64 %i.alq, 12              ; 3 uses
  %i.als = icmp ult i64 %i.alr, %i.alk
  br i1 %i.als, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.alt = sub nuw nsw i64 %i.alk, %i.alr
  call void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ali, i64 noundef %i.alt)
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i

bb.ep:                                            ; preds = %bb.en
  %i.alu = icmp ugt i64 %i.alr, %i.alk
  br i1 %i.alu, label %bb.eq, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.alv = getelementptr inbounds nuw [12 x i8], ptr %i.aln, i64 %i.alk ; 2 uses
  %.not.i.i.i.i.i51.i.i = icmp eq ptr %i.alm, %i.alv
  br i1 %.not.i.i.i.i.i51.i.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %i.alv, ptr %i.all, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i: ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  %i.alw = load ptr, ptr %i.oo, align 8           ; 3 uses
  %.not.i.i.i1.i.i50.i.i = icmp eq ptr %i.alw, null
  br i1 %.not.i.i.i1.i.i50.i.i, label %_ZN2v88internal12_GLOBAL__N_117MergeNestedRangesEPNS0_16CoverageFunctionE.exit.i.i, label %bb.es

bb.es:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i
  %i.alx = load ptr, ptr %i.ot, align 8
  %i.aly = ptrtoint ptr %i.alx to i64
  %i.alz = ptrtoint ptr %i.alw to i64
  %i.ama = sub i64 %i.aly, %i.alz
  call void @_ZdlPvm(ptr noundef nonnull %i.alw, i64 noundef %i.ama) #23
  br label %_ZN2v88internal12_GLOBAL__N_117MergeNestedRangesEPNS0_16CoverageFunctionE.exit.i.i

_ZN2v88internal12_GLOBAL__N_117MergeNestedRangesEPNS0_16CoverageFunctionE.exit.i.i: ; preds = %bb.es, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %31, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ou, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.ov, align 4
  store i32 -1, ptr %i.ow, align 8
  %i.amb = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.amb, label %.lr.ph.i112, label %.preheader.i.preheader

.lr.ph.i112:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_117MergeNestedRangesEPNS0_16CoverageFunctionE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i
  %.val.i = load ptr, ptr %4, align 8             ; 2 uses
  %.val7.i = load i32, ptr %i.ov, align 4         ; 2 uses
  %i.amc = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.amc, align 8     ; 2 uses
  %i.amd = sext i32 %.val7.i to i64
  %i.ame = getelementptr [12 x i8], ptr %.val.val.i, i64 %i.amd ; 5 uses
  %i.amf = getelementptr i8, ptr %.val.i, i64 32
  %.val.val2.i.i = load ptr, ptr %i.amf, align 8
  %i.amg = add nsw i32 %.val7.i, 1
  %i.amh = ptrtoint ptr %.val.val2.i.i to i64
  %i.ami = ptrtoint ptr %.val.val.i to i64
  %i.amj = sub i64 %i.amh, %i.ami
  %i.amk = sdiv exact i64 %i.amj, 12
  %i.aml = trunc i64 %i.amk to i32
  %i.amm = icmp slt i32 %i.amg, %i.aml
  br i1 %i.amm, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i: ; preds = %.lr.ph.i112
  %i.amn = getelementptr i8, ptr %i.ame, i64 12   ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 4          ; 2 uses
  %.val3.i.i = load ptr, ptr %i.ox, align 8
  %i.amp = getelementptr inbounds i8, ptr %.val3.i.i, i64 -8
  %i.amq = load i32, ptr %i.amp, align 4
  %i.amr = icmp slt i32 %i.amo, %i.amq
  br i1 %i.amr, label %bb.et, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i

bb.et:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.amt = load i32, ptr %i.ams, align 4
  %i.amu = icmp eq i32 %i.amo, %i.amt
  br i1 %i.amu, label %bb.eu, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i

bb.eu:                                            ; preds = %bb.et
  %i.amv = getelementptr i8, ptr %i.ame, i64 20
  %i.amw = load i32, ptr %i.amv, align 4
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amy = load i32, ptr %i.amx, align 4
  %i.amz = icmp eq i32 %i.amw, %i.amy
  br i1 %i.amz, label %bb.ev, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i

bb.ev:                                            ; preds = %bb.eu
  %i.ana = load i32, ptr %i.ame, align 4
  store i32 %i.ana, ptr %i.amn, align 4
  store i8 1, ptr %i.oy, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i: ; preds = %bb.ev, %bb.eu, %bb.et, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i, %.lr.ph.i112
  %i.anb = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.anb, label %.lr.ph.i112, label %.preheader.i.preheader, !llvm.loop !53

.preheader.i.preheader:                           ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_117MergeNestedRangesEPNS0_16CoverageFunctionE.exit.i.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %i.anc = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.anc, label %.preheader.i, label %bb.ew, !llvm.loop !42

bb.ew:                                            ; preds = %.preheader.i
  %i.and = load ptr, ptr %4, align 8              ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 24 ; 2 uses
  %i.anf = load i32, ptr %i.ow, align 8
  %i.ang = sext i32 %i.anf to i64                 ; 4 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.and, i64 32 ; 2 uses
  %i.ani = load ptr, ptr %i.anh, align 8          ; 2 uses
  %i.anj = load ptr, ptr %i.ane, align 8          ; 2 uses
  %i.ank = ptrtoint ptr %i.ani to i64
  %i.anl = ptrtoint ptr %i.anj to i64
  %i.anm = sub i64 %i.ank, %i.anl
  %i.ann = sdiv exact i64 %i.anm, 12              ; 3 uses
  %i.ano = icmp ult i64 %i.ann, %i.ang
  br i1 %i.ano, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.anp = sub nuw nsw i64 %i.ang, %i.ann
  call void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ane, i64 noundef %i.anp)
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.anq = icmp ugt i64 %i.ann, %i.ang
  br i1 %i.anq, label %bb.ez, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.anr = getelementptr inbounds nuw [12 x i8], ptr %i.anj, i64 %i.ang ; 2 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.ani, %i.anr
  br i1 %.not.i.i.i.i.i111, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr %i.anr, ptr %i.anh, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i: ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %i.ans = load ptr, ptr %i.ou, align 8           ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ans, null
  br i1 %.not.i.i.i1.i.i, label %_ZN2v88internal12_GLOBAL__N_122MergeConsecutiveRangesEPNS0_16CoverageFunctionE.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i
  %i.ant = load ptr, ptr %i.oz, align 8
  %i.anu = ptrtoint ptr %i.ant to i64
  %i.anv = ptrtoint ptr %i.ans to i64
  %i.anw = sub i64 %i.anu, %i.anv
  call void @_ZdlPvm(ptr noundef nonnull %i.ans, i64 noundef %i.anw) #23
  br label %_ZN2v88internal12_GLOBAL__N_122MergeConsecutiveRangesEPNS0_16CoverageFunctionE.exit

_ZN2v88internal12_GLOBAL__N_122MergeConsecutiveRangesEPNS0_16CoverageFunctionE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %31, ptr %9, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.pa, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.pb, align 4
  store i32 -1, ptr %i.pc, align 8
  %i.anx = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  br i1 %i.anx, label %.lr.ph.i60.i.i, label %.preheader.i56.i.i.preheader

.lr.ph.i60.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_122MergeConsecutiveRangesEPNS0_16CoverageFunctionE.exit, %bb.fd
  %.val.i61.i.i = load ptr, ptr %9, align 8
  %.val3.i62.i.i = load i32, ptr %i.pb, align 4
  %i.any = getelementptr i8, ptr %.val.i61.i.i, i64 24
  %.val.val.i63.i.i = load ptr, ptr %i.any, align 8
  %i.anz = sext i32 %.val3.i62.i.i to i64
  %i.aoa = getelementptr inbounds nuw [12 x i8], ptr %.val.val.i63.i.i, i64 %i.anz
  %.val6.i65.i.i = load ptr, ptr %i.pd, align 8
  %36 = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %i.aob = getelementptr inbounds i8, ptr %.val6.i65.i.i, i64 -4
  %i.aoc = load i32, ptr %i.aob, align 4
  %i.aod = icmp eq i32 %i.aoc, 0
  %or.cond.i66.i.i = select i1 %38, i1 %i.aod, i1 false
  br i1 %or.cond.i66.i.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph.i60.i.i
  store i8 1, ptr %i.pe, align 1
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.i60.i.i
  %i.aoe = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  br i1 %i.aoe, label %.lr.ph.i60.i.i, label %.preheader.i56.i.i.preheader, !llvm.loop !56

.preheader.i56.i.i.preheader:                     ; preds = %bb.fd, %_ZN2v88internal12_GLOBAL__N_122MergeConsecutiveRangesEPNS0_16CoverageFunctionE.exit
  br label %.preheader.i56.i.i

.preheader.i56.i.i:                               ; preds = %.preheader.i56.i.i.preheader, %.preheader.i56.i.i
  %i.aof = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  br i1 %i.aof, label %.preheader.i56.i.i, label %bb.fe, !llvm.loop !42

bb.fe:                                            ; preds = %.preheader.i56.i.i
  %i.aog = load ptr, ptr %9, align 8              ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24 ; 2 uses
  %i.aoi = load i32, ptr %i.pc, align 8
  %i.aoj = sext i32 %i.aoi to i64                 ; 4 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aog, i64 32 ; 2 uses
  %i.aol = load ptr, ptr %i.aok, align 8          ; 2 uses
  %i.aom = load ptr, ptr %i.aoh, align 8          ; 2 uses
  %i.aon = ptrtoint ptr %i.aol to i64
  %i.aoo = ptrtoint ptr %i.aom to i64
  %i.aop = sub i64 %i.aon, %i.aoo
  %i.aoq = sdiv exact i64 %i.aop, 12              ; 3 uses
  %i.aor = icmp ult i64 %i.aoq, %i.aoj
  br i1 %i.aor, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aos = sub nuw nsw i64 %i.aoj, %i.aoq
  call void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aoh, i64 noundef %i.aos)
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i

bb.fg:                                            ; preds = %bb.fe
  %i.aot = icmp ugt i64 %i.aoq, %i.aoj
  br i1 %i.aot, label %bb.fh, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i

bb.fh:                                            ; preds = %bb.fg
  %i.aou = getelementptr inbounds nuw [12 x i8], ptr %i.aom, i64 %i.aoj ; 2 uses
  %.not.i.i.i.i.i59.i.i = icmp eq ptr %i.aol, %i.aou
  br i1 %.not.i.i.i.i.i59.i.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store ptr %i.aou, ptr %i.aok, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i: ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.ff
  %i.aov = load ptr, ptr %i.pa, align 8           ; 3 uses
  %.not.i.i.i1.i.i58.i.i = icmp eq ptr %i.aov, null
  br i1 %.not.i.i.i1.i.i58.i.i, label %_ZN2v88internal12_GLOBAL__N_121FilterUncoveredRangesEPNS0_16CoverageFunctionE.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i
  %i.aow = load ptr, ptr %i.pf, align 8
  %i.aox = ptrtoint ptr %i.aow to i64
  %i.aoy = ptrtoint ptr %i.aov to i64
  %i.aoz = sub i64 %i.aox, %i.aoy
  call void @_ZdlPvm(ptr noundef nonnull %i.aov, i64 noundef %i.aoz) #23
  br label %_ZN2v88internal12_GLOBAL__N_121FilterUncoveredRangesEPNS0_16CoverageFunctionE.exit.i.i

_ZN2v88internal12_GLOBAL__N_121FilterUncoveredRangesEPNS0_16CoverageFunctionE.exit.i.i: ; preds = %bb.fj, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i57.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %31, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.pg, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.ph, align 4
  store i32 -1, ptr %i.pi, align 8
  %i.apa = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  br i1 %i.apa, label %.lr.ph.i69.i.i, label %.preheader.i65.i.i.preheader

.lr.ph.i69.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_121FilterUncoveredRangesEPNS0_16CoverageFunctionE.exit.i.i, %bb.fl
  %.val.i70.i.i = load ptr, ptr %8, align 8
  %.val3.i71.i.i = load i32, ptr %i.ph, align 4
  %i.apb = getelementptr i8, ptr %.val.i70.i.i, i64 24
  %.val.val.i72.i.i = load ptr, ptr %i.apb, align 8
  %i.apc = sext i32 %.val3.i71.i.i to i64
  %i.apd = getelementptr inbounds nuw [12 x i8], ptr %.val.val.i72.i.i, i64 %i.apc ; 2 uses
  %i.ape = load i32, ptr %i.apd, align 4
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 4
  %i.apg = load i32, ptr %i.apf, align 4
  %i.aph = icmp eq i32 %i.ape, %i.apg
  br i1 %i.aph, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.lr.ph.i69.i.i
  store i8 1, ptr %i.pj, align 1
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph.i69.i.i
  %i.api = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  br i1 %i.api, label %.lr.ph.i69.i.i, label %.preheader.i65.i.i.preheader, !llvm.loop !57

.preheader.i65.i.i.preheader:                     ; preds = %bb.fl, %_ZN2v88internal12_GLOBAL__N_121FilterUncoveredRangesEPNS0_16CoverageFunctionE.exit.i.i
  br label %.preheader.i65.i.i

.preheader.i65.i.i:                               ; preds = %.preheader.i65.i.i.preheader, %.preheader.i65.i.i
  %i.apj = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  br i1 %i.apj, label %.preheader.i65.i.i, label %bb.fm, !llvm.loop !42

bb.fm:                                            ; preds = %.preheader.i65.i.i
  %i.apk = load ptr, ptr %8, align 8              ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 24 ; 2 uses
  %i.apm = load i32, ptr %i.pi, align 8
  %i.apn = sext i32 %i.apm to i64                 ; 4 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 32 ; 2 uses
  %i.app = load ptr, ptr %i.apo, align 8          ; 2 uses
  %i.apq = load ptr, ptr %i.apl, align 8          ; 2 uses
  %i.apr = ptrtoint ptr %i.app to i64
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = sub i64 %i.apr, %i.aps
  %i.apu = sdiv exact i64 %i.apt, 12              ; 3 uses
  %i.apv = icmp ult i64 %i.apu, %i.apn
  br i1 %i.apv, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.apw = sub nuw nsw i64 %i.apn, %i.apu
  call void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.apl, i64 noundef %i.apw)
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.apx = icmp ugt i64 %i.apu, %i.apn
  br i1 %i.apx, label %bb.fp, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.apy = getelementptr inbounds nuw [12 x i8], ptr %i.apq, i64 %i.apn ; 2 uses
  %.not.i.i.i.i.i68.i.i = icmp eq ptr %i.app, %i.apy
  br i1 %.not.i.i.i.i.i68.i.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  store ptr %i.apy, ptr %i.apo, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i: ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fn
  %i.apz = load ptr, ptr %i.pg, align 8           ; 3 uses
  %.not.i.i.i1.i.i67.i.i = icmp eq ptr %i.apz, null
  br i1 %.not.i.i.i1.i.i67.i.i, label %_ZN2v88internal12_GLOBAL__N_117FilterEmptyRangesEPNS0_16CoverageFunctionE.exit.i.i, label %bb.fr

bb.fr:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i
  %i.aqa = load ptr, ptr %i.pk, align 8
  %i.aqb = ptrtoint ptr %i.aqa to i64
  %i.aqc = ptrtoint ptr %i.apz to i64
  %i.aqd = sub i64 %i.aqb, %i.aqc
  call void @_ZdlPvm(ptr noundef nonnull %i.apz, i64 noundef %i.aqd) #23
  br label %_ZN2v88internal12_GLOBAL__N_117FilterEmptyRangesEPNS0_16CoverageFunctionE.exit.i.i

_ZN2v88internal12_GLOBAL__N_117FilterEmptyRangesEPNS0_16CoverageFunctionE.exit.i.i: ; preds = %bb.fr, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZN2v88internal12_GLOBAL__N_128CollectBlockCoverageInternalEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit.i

_ZN2v88internal12_GLOBAL__N_128CollectBlockCoverageInternalEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_117FilterEmptyRangesEPNS0_16CoverageFunctionE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_127RewriteFunctionScopeCounterEPNS0_16CoverageFunctionE.exit.i.i, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 %i.xl, ptr %6, align 8
  %i.aqe = call i64 @_ZNK2v88internal18SharedFunctionInfo12GetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1) #20
  %i.aqf = add i64 %i.aqe, 39
  %i.aqg = inttoptr i64 %i.aqf to ptr
  %i.aqh = load i64, ptr %i.aqg, align 8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aqi = add i64 %i.aqh, 7
  %i.aqj = inttoptr i64 %i.aqi to ptr             ; 2 uses
  %i.aqk = load i32, ptr %i.aqj, align 4
  %i.aql = icmp sgt i32 %i.aqk, 0
  br i1 %i.aql, label %.lr.ph.i.i, label %_ZN2v88internal12_GLOBAL__N_120CollectBlockCoverageEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_128CollectBlockCoverageInternalEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit.i, %.lr.ph.i.i
  %.017.i.i = phi i32 [ %i.aqm, %.lr.ph.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_128CollectBlockCoverageInternalEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 %i.aqh, ptr %7, align 8
  call void @_ZN2v88internal12CoverageInfo15ResetBlockCountEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %.017.i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aqm = add nuw nsw i32 %.017.i.i, 1           ; 2 uses
  %i.aqn = load i32, ptr %i.aqj, align 4
  %i.aqo = icmp slt i32 %i.aqm, %i.aqn
  br i1 %i.aqo, label %.lr.ph.i.i, label %_ZN2v88internal12_GLOBAL__N_120CollectBlockCoverageEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit, !llvm.loop !58

.critedge2:                                       ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %_ZN2v88internal12_GLOBAL__N_120CollectBlockCoverageEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit

_ZN2v88internal12_GLOBAL__N_120CollectBlockCoverageEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit: ; preds = %.lr.ph.i.i, %_ZN2v88internal12_GLOBAL__N_128CollectBlockCoverageInternalEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit.i, %.critedge2, %bb.br
  %i.aqp = icmp ne i32 %.0, 0
  br i1 %i.wo, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120CollectBlockCoverageEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit
  %i.aqq = getelementptr inbounds i8, ptr %.sroa.8.1, i64 -8
  %i.aqr = load i64, ptr %i.aqq, align 8          ; 3 uses
  %i.aqs = load ptr, ptr %i.td, align 8
  %i.aqt = load ptr, ptr %i.ro, align 8           ; 2 uses
  %i.aqu = ptrtoint ptr %i.aqs to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  %i.aqx = sdiv exact i64 %i.aqw, 56              ; 2 uses
  %.not.i.i92 = icmp ult i64 %i.aqr, %i.aqx
  br i1 %.not.i.i92, label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE2atEm.exit93, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.aqr, i64 noundef %i.aqx) #21
  unreachable

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE2atEm.exit93: ; preds = %bb.fs
  %i.aqy = getelementptr inbounds nuw [56 x i8], ptr %i.aqt, i64 %i.aqr
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %i.ara = load i32, ptr %i.aqz, align 8
  %i.arb = icmp ne i32 %i.ara, 0
  br label %bb.fu

end_hunk_1
