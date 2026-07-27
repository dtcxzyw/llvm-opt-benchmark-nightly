inline.NumInlined: 1792
inline.NumDeleted: 970
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE:bb.a
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
  %.val7.i.i.i = load i32, ptr %i.no, align 4
  %i.aar = getelementptr i8, ptr %.val.i25.i.i, i64 24
  %.val.val.i26.i.i = load ptr, ptr %i.aar, align 8
  %i.aas = sext i32 %.val7.i.i.i to i64
  %i.aat = getelementptr inbounds nuw [12 x i8], ptr %.val.val.i26.i.i, i64 %i.aas ; 3 uses
  %i.aau = load i32, ptr %i.aat, align 4
  %i.aav = icmp eq i32 %i.aau, -2
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %i.aax = load i32, ptr %i.aaw, align 4
  %i.aay = icmp eq i32 %i.aax, -2
  %or.cond.i.i.i = select i1 %i.aav, i1 %i.aay, i1 false
  br i1 %or.cond.i.i.i, label %bb.cl, label %.preheader527

bb.cl:                                            ; preds = %bb.ck
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aba = load i32, ptr %i.aaz, align 4
  store i32 %i.aba, ptr %i.nc, align 8
  store i8 1, ptr %i.nq, align 1
  br label %.preheader527

.preheader527:                                    ; preds = %bb.cl, %bb.ck, %bb.cj
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader527, %bb.cm
  %i.abb = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  br i1 %i.abb, label %bb.cm, label %bb.cn, !llvm.loop !42

bb.cn:                                            ; preds = %bb.cm
  %i.abc = load ptr, ptr %14, align 8             ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 24 ; 2 uses
  %i.abe = load i32, ptr %i.np, align 8           ; 2 uses
  %i.abf = sext i32 %i.abe to i64                 ; 6 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 32 ; 4 uses
  %i.abh = load ptr, ptr %i.abg, align 8          ; 6 uses
  %i.abi = load ptr, ptr %i.abd, align 8          ; 6 uses
  %i.abj = ptrtoint ptr %i.abh to i64             ; 2 uses
  %i.abk = ptrtoint ptr %i.abi to i64             ; 2 uses
  %i.abl = sub i64 %i.abj, %i.abk                 ; 2 uses
  %i.abm = sdiv exact i64 %i.abl, 12              ; 9 uses
  %i.abn = icmp ult i64 %i.abm, %i.abf
  br i1 %i.abn, label %33, label %bb.cs

33:                                               ; preds = %bb.cn
  %34 = sub nuw nsw i64 %i.abf, %i.abm            ; 10 uses
  %.not.i126 = icmp eq i64 %34, 0
  br i1 %.not.i126, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i, label %bb.co

bb.co:                                            ; preds = %33
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abc, i64 40 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = ptrtoint ptr %i.abp to i64             ; 2 uses
  %i.abr = sub i64 %i.abq, %i.abj
  %i.abs = sdiv exact i64 %i.abr, 12              ; 2 uses
  %i.abt = icmp ult i64 %i.abm, 768614336404564651
  call void @llvm.assume(i1 %i.abt)
  %i.abu = sub nuw nsw i64 768614336404564650, %i.abm
  %i.abv = icmp ule i64 %i.abs, %i.abu
  call void @llvm.assume(i1 %i.abv)
  %.not23.i = icmp ult i64 %i.abs, %34
  br i1 %.not23.i, label %bb.cp, label %.lr.ph.i.i.i.i127.preheader

.lr.ph.i.i.i.i127.preheader:                      ; preds = %bb.co
  %xtraiter = and i64 %34, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i127.prol.loopexit, label %.lr.ph.i.i.i.i127.prol

.lr.ph.i.i.i.i127.prol:                           ; preds = %.lr.ph.i.i.i.i127.preheader, %.lr.ph.i.i.i.i127.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.abz, %.lr.ph.i.i.i.i127.prol ], [ %i.abh, %.lr.ph.i.i.i.i127.preheader ] ; 4 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.aby, %.lr.ph.i.i.i.i127.prol ], [ %34, %.lr.ph.i.i.i.i127.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i127.prol ], [ 0, %.lr.ph.i.i.i.i127.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 4
  %i.abw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 4
  store i32 -1, ptr %i.abw, align 4
  %i.abx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.abx, align 4
  %i.aby = add i64 %.057.i.i.i.i.prol, -1         ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i127.prol.loopexit, label %.lr.ph.i.i.i.i127.prol, !llvm.loop !43

.lr.ph.i.i.i.i127.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i127.prol, %.lr.ph.i.i.i.i127.preheader
  %.lcssa536.unr = phi ptr [ poison, %.lr.ph.i.i.i.i127.preheader ], [ %i.abz, %.lr.ph.i.i.i.i127.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.abh, %.lr.ph.i.i.i.i127.preheader ], [ %i.abz, %.lr.ph.i.i.i.i127.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %34, %.lr.ph.i.i.i.i127.preheader ], [ %i.aby, %.lr.ph.i.i.i.i127.prol ]
  %i.aca = sub nsw i64 %i.abm, %i.abf
  %i.acb = icmp ugt i64 %i.aca, -4
  br i1 %i.acb, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i127

.lr.ph.i.i.i.i127:                                ; preds = %.lr.ph.i.i.i.i127.prol.loopexit, %.lr.ph.i.i.i.i127
  %.08.i.i.i.i = phi ptr [ %i.aco, %.lr.ph.i.i.i.i127 ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i127.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i = phi i64 [ %i.acn, %.lr.ph.i.i.i.i127 ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i127.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 4
  %i.acc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  store i32 -1, ptr %i.acc, align 4
  %i.acd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i32 0, ptr %i.acd, align 4
  %i.ace = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 12
  store i32 -1, ptr %i.ace, align 4
  %i.acf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16
  store i32 -1, ptr %i.acf, align 4
  %i.acg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 20
  store i32 0, ptr %i.acg, align 4
  %i.ach = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24
  store i32 -1, ptr %i.ach, align 4
  %i.aci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 28
  store i32 -1, ptr %i.aci, align 4
  %i.acj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i32 0, ptr %i.acj, align 4
  %i.ack = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 36
  store i32 -1, ptr %i.ack, align 4
  %i.acl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.acl, align 4
  %i.acm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 0, ptr %i.acm, align 4
  %i.acn = add i64 %.057.i.i.i.i, -4              ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i128.3 = icmp eq i64 %i.acn, 0
  br i1 %.not.i.i.i.i128.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i127, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i127, %.lr.ph.i.i.i.i127.prol.loopexit
  %.lcssa536 = phi ptr [ %.lcssa536.unr, %.lr.ph.i.i.i.i127.prol.loopexit ], [ %i.aco, %.lr.ph.i.i.i.i127 ]
  store ptr %.lcssa536, ptr %i.abg, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i

bb.cp:                                            ; preds = %bb.co
  %i.acp = icmp slt i32 %i.abe, 0
  br i1 %i.acp, label %bb.cq, label %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.cq:                                            ; preds = %bb.cp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cp
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.abm, i64 %34)
  %i.acq = add nuw nsw i64 %.sroa.speculated.i.i, %i.abm
  %i.acr = call i64 @llvm.umin.i64(i64 %i.acq, i64 768614336404564650) ; 2 uses
  %i.acs = mul nuw nsw i64 %i.acr, 12
  %i.act = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acs) #22 ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.abl ; 3 uses
  %xtraiter558 = and i64 %34, 3                   ; 2 uses
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.lr.ph.i.i.i25.i.prol.loopexit, label %.lr.ph.i.i.i25.i.prol

.lr.ph.i.i.i25.i.prol:                            ; preds = %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i25.i.prol
  %.08.i.i.i26.i.prol = phi ptr [ %i.acy, %.lr.ph.i.i.i25.i.prol ], [ %i.acu, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  %.057.i.i.i27.i.prol = phi i64 [ %i.acx, %.lr.ph.i.i.i25.i.prol ], [ %34, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter560 = phi i64 [ %prol.iter560.next, %.lr.ph.i.i.i25.i.prol ], [ 0, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i26.i.prol, align 4
  %i.acv = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 4
  store i32 -1, ptr %i.acv, align 4
  %i.acw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 8
  store i32 0, ptr %i.acw, align 4
  %i.acx = add i64 %.057.i.i.i27.i.prol, -1       ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 12 ; 2 uses
  %prol.iter560.next = add i64 %prol.iter560, 1   ; 2 uses
  %prol.iter560.cmp.not = icmp eq i64 %prol.iter560.next, %xtraiter558
  br i1 %prol.iter560.cmp.not, label %.lr.ph.i.i.i25.i.prol.loopexit, label %.lr.ph.i.i.i25.i.prol, !llvm.loop !46

.lr.ph.i.i.i25.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i25.i.prol, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i26.i.unr = phi ptr [ %i.acu, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.acy, %.lr.ph.i.i.i25.i.prol ]
  %.057.i.i.i27.i.unr = phi i64 [ %34, %_ZNKSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.acx, %.lr.ph.i.i.i25.i.prol ]
  %i.acz = sub nsw i64 %i.abm, %i.abf
  %i.ada = icmp ugt i64 %i.acz, -4
  br i1 %i.ada, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i, label %.lr.ph.i.i.i25.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i.i.i25.i.prol.loopexit, %.lr.ph.i.i.i25.i
  %.08.i.i.i26.i = phi ptr [ %i.adn, %.lr.ph.i.i.i25.i ], [ %.08.i.i.i26.i.unr, %.lr.ph.i.i.i25.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i27.i = phi i64 [ %i.adm, %.lr.ph.i.i.i25.i ], [ %.057.i.i.i27.i.unr, %.lr.ph.i.i.i25.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i26.i, align 4
  %i.adb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 4
  store i32 -1, ptr %i.adb, align 4
  %i.adc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 8
  store i32 0, ptr %i.adc, align 4
  %i.add = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 12
  store i32 -1, ptr %i.add, align 4
  %i.ade = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 16
  store i32 -1, ptr %i.ade, align 4
  %i.adf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 20
  store i32 0, ptr %i.adf, align 4
  %i.adg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 24
  store i32 -1, ptr %i.adg, align 4
  %i.adh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 28
  store i32 -1, ptr %i.adh, align 4
  %i.adi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 32
  store i32 0, ptr %i.adi, align 4
  %i.adj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 36
  store i32 -1, ptr %i.adj, align 4
  %i.adk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 40
  store i32 -1, ptr %i.adk, align 4
  %i.adl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 44
  store i32 0, ptr %i.adl, align 4
  %i.adm = add i64 %.057.i.i.i27.i, -4            ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 48
  %.not.i.i.i28.i.3 = icmp eq i64 %i.adm, 0
  br i1 %.not.i.i.i28.i.3, label %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i, label %.lr.ph.i.i.i25.i, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i: ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i.i.i25.i.prol.loopexit
  %.not10.i.i.i.i = icmp eq ptr %i.abi, %i.abh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i31.i

.lr.ph.i.i.i31.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i, %.lr.ph.i.i.i31.i
  %.012.i.i.i.i = phi ptr [ %i.adp, %.lr.ph.i.i.i31.i ], [ %i.act, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ado, %.lr.ph.i.i.i31.i ], [ %i.abi, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !47
  %i.ado = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i32.i = icmp eq ptr %i.ado, %i.abh
  br i1 %.not.i.i.i32.i, label %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i31.i, !llvm.loop !39

_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i31.i, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit30.i
  %.not.i34.i = icmp eq ptr %i.abi, null
  br i1 %.not.i34.i, label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.adq = sub i64 %i.abq, %i.abk
  call void @_ZdlPvm(ptr noundef nonnull %i.abi, i64 noundef %i.adq) #23
  br label %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.act, ptr %i.abd, align 8
  %i.adr = getelementptr inbounds nuw [12 x i8], ptr %i.acu, i64 %34
  store ptr %i.adr, ptr %i.abg, align 8
  %i.ads = getelementptr inbounds nuw [12 x i8], ptr %i.act, i64 %i.acr
  store ptr %i.ads, ptr %i.abo, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i

bb.cs:                                            ; preds = %bb.cn
  %i.adt = icmp ugt i64 %i.abm, %i.abf
  br i1 %i.adt, label %bb.ct, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.adu = getelementptr inbounds nuw [12 x i8], ptr %i.abi, i64 %i.abf ; 2 uses
  %.not.i.i.i.i.i24.i.i = icmp eq ptr %i.abh, %i.adu
  br i1 %.not.i.i.i.i.i24.i.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.adu, ptr %i.abg, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i: ; preds = %_ZNSt12_Vector_baseIN2v88internal13CoverageBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN2v88internal13CoverageBlockEmS2_ET_S4_T0_RSaIT1_E.exit.i, %33, %bb.cu, %bb.ct, %bb.cs
  %i.adv = load ptr, ptr %i.nn, align 8           ; 3 uses
  %.not.i.i.i1.i.i23.i.i = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i1.i.i23.i.i, label %_ZN2v88internal12_GLOBAL__N_127RewriteFunctionScopeCounterEPNS0_16CoverageFunctionE.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i
  %i.adw = load ptr, ptr %i.nr, align 8
  %i.adx = ptrtoint ptr %i.adw to i64
  %i.ady = ptrtoint ptr %i.adv to i64
  %i.adz = sub i64 %i.adx, %i.ady
  call void @_ZdlPvm(ptr noundef nonnull %i.adv, i64 noundef %i.adz) #23
  br label %_ZN2v88internal12_GLOBAL__N_127RewriteFunctionScopeCounterEPNS0_16CoverageFunctionE.exit.i.i

_ZN2v88internal12_GLOBAL__N_127RewriteFunctionScopeCounterEPNS0_16CoverageFunctionE.exit.i.i: ; preds = %bb.cv, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.aea = load ptr, ptr %i.ne, align 8
  %i.aeb = load ptr, ptr %i.ng, align 8
  %.not.i.i87 = icmp eq ptr %i.aea, %i.aeb
  br i1 %.not.i.i87, label %_ZN2v88internal12_GLOBAL__N_128CollectBlockCoverageInternalEPNS0_7IsolateEPNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEENS_5debug12CoverageModeE.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_127RewriteFunctionScopeCounterEPNS0_16CoverageFunctionE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store ptr %31, ptr %13, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ns, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.nt, align 4
  store i32 -1, ptr %i.nu, align 8
  %i.aec = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %13) ; 0 uses
  %i.aed = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %13)
  br i1 %i.aed, label %.lr.ph.i31.i.i, label %.preheader.i27.i.i.preheader

.lr.ph.i31.i.i:                                   ; preds = %bb.cw, %bb.cy
  %.val7.i32.i.i = load ptr, ptr %13, align 8
  %.val8.i33.i.i = load i32, ptr %i.nt, align 4
  %i.aee = getelementptr i8, ptr %.val7.i32.i.i, i64 24
  %.val7.val.i.i.i = load ptr, ptr %i.aee, align 8
  %i.aef = sext i32 %.val8.i33.i.i to i64
  %i.aeg = getelementptr [12 x i8], ptr %.val7.val.i.i.i, i64 %i.aef ; 3 uses
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 -12
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.aej = load i32, ptr %i.aei, align 4
  %i.aek = icmp eq i32 %i.aej, -1
  %i.ael = load i32, ptr %i.aeg, align 4
  %i.aem = load i32, ptr %i.aeh, align 4
  %i.aen = icmp eq i32 %i.ael, %i.aem
  %or.cond.i34.i.i = select i1 %i.aek, i1 %i.aen, i1 false
  br i1 %or.cond.i34.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i31.i.i
  store i8 1, ptr %i.nv, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph.i31.i.i
  %i.aeo = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %13)
  br i1 %i.aeo, label %.lr.ph.i31.i.i, label %.preheader.i27.i.i.preheader, !llvm.loop !51

.preheader.i27.i.i.preheader:                     ; preds = %bb.cy, %bb.cw
  br label %.preheader.i27.i.i

.preheader.i27.i.i:                               ; preds = %.preheader.i27.i.i.preheader, %.preheader.i27.i.i
  %i.aep = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %13)
  br i1 %i.aep, label %.preheader.i27.i.i, label %bb.cz, !llvm.loop !42

bb.cz:                                            ; preds = %.preheader.i27.i.i
  %i.aeq = load ptr, ptr %13, align 8             ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24 ; 2 uses
  %i.aes = load i32, ptr %i.nu, align 8
  %i.aet = sext i32 %i.aes to i64                 ; 4 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeq, i64 32 ; 2 uses
  %i.aev = load ptr, ptr %i.aeu, align 8          ; 2 uses
  %i.aew = load ptr, ptr %i.aer, align 8          ; 2 uses
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = ptrtoint ptr %i.aew to i64
  %i.aez = sub i64 %i.aex, %i.aey
  %i.afa = sdiv exact i64 %i.aez, 12              ; 3 uses
  %i.afb = icmp ult i64 %i.afa, %i.aet
  br i1 %i.afb, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.afc = sub nuw nsw i64 %i.aet, %i.afa
  call void @_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aer, i64 noundef %i.afc)
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i

bb.db:                                            ; preds = %bb.cz
  %i.afd = icmp ugt i64 %i.afa, %i.aet
  br i1 %i.afd, label %bb.dc, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i

bb.dc:                                            ; preds = %bb.db
  %i.afe = getelementptr inbounds nuw [12 x i8], ptr %i.aew, i64 %i.aet ; 2 uses
  %.not.i.i.i.i.i30.i.i = icmp eq ptr %i.aev, %i.afe
  br i1 %.not.i.i.i.i.i30.i.i, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.afe, ptr %i.aeu, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i: ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da
  %i.aff = load ptr, ptr %i.ns, align 8           ; 3 uses
  %.not.i.i.i1.i.i29.i.i = icmp eq ptr %i.aff, null
  br i1 %.not.i.i.i1.i.i29.i.i, label %_ZN2v88internal12_GLOBAL__N_123FilterAliasedSingletonsEPNS0_16CoverageFunctionE.exit.i.i, label %bb.de

bb.de:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i
  %i.afg = load ptr, ptr %i.nw, align 8
  %i.afh = ptrtoint ptr %i.afg to i64
  %i.afi = ptrtoint ptr %i.aff to i64
  %i.afj = sub i64 %i.afh, %i.afi
  call void @_ZdlPvm(ptr noundef nonnull %i.aff, i64 noundef %i.afj) #23
  br label %_ZN2v88internal12_GLOBAL__N_123FilterAliasedSingletonsEPNS0_16CoverageFunctionE.exit.i.i

_ZN2v88internal12_GLOBAL__N_123FilterAliasedSingletonsEPNS0_16CoverageFunctionE.exit.i.i: ; preds = %bb.de, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator8FinalizeEv.exit.i.i28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %31, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.nx, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.ny, align 4
  store i32 -1, ptr %i.nz, align 8
  %i.afk = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
  br i1 %i.afk, label %.lr.ph.i39.i.i, label %.preheader.i35.i.i.preheader

.lr.ph.i39.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_123FilterAliasedSingletonsEPNS0_16CoverageFunctionE.exit.i.i, %bb.dl
  %.val.i40.i.i = load ptr, ptr %12, align 8      ; 2 uses
  %.val9.i.i.i = load i32, ptr %i.ny, align 4     ; 2 uses
  %i.afl = getelementptr i8, ptr %.val.i40.i.i, i64 24
  %.val.val.i41.i.i = load ptr, ptr %i.afl, align 8 ; 2 uses
  %i.afm = sext i32 %.val9.i.i.i to i64
  %i.afn = getelementptr inbounds nuw [12 x i8], ptr %.val.val.i41.i.i, i64 %i.afm ; 3 uses
  %.val10.i.i.i = load ptr, ptr %i.oa, align 8    ; 3 uses
  %i.afo = load i32, ptr %i.afn, align 4
  %i.afp = load i32, ptr %i.nb, align 4
  %.not.i42.i.i = icmp slt i32 %i.afo, %i.afp
  br i1 %.not.i42.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i39.i.i
  store i8 1, ptr %i.ob, align 1
  br label %bb.dl

bb.dg:                                            ; preds = %.lr.ph.i39.i.i
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 4 ; 4 uses
  %i.afr = load i32, ptr %i.afq, align 4
  %i.afs = icmp eq i32 %i.afr, -1
  br i1 %i.afs, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.aft = getelementptr i8, ptr %.val.i40.i.i, i64 32
  %.val.val2.i.i.i.i = load ptr, ptr %i.aft, align 8
  %i.afu = add nsw i32 %.val9.i.i.i, 1
  %i.afv = ptrtoint ptr %.val.val2.i.i.i.i to i64
  %i.afw = ptrtoint ptr %.val.val.i41.i.i to i64
  %i.afx = sub i64 %i.afv, %i.afw
  %i.afy = sdiv exact i64 %i.afx, 12
  %i.afz = trunc i64 %i.afy to i32
  %i.aga = icmp slt i32 %i.afu, %i.afz
  br i1 %i.aga, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i.i.i, label %._ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i_crit_edge.i.i

._ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i_crit_edge.i.i: ; preds = %bb.dh
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.val10.i.i.i, i64 -8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i.i.i

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i.i.i: ; preds = %bb.dh
  %i.agb = getelementptr i8, ptr %i.afn, i64 12
  %i.agc = load i32, ptr %i.agb, align 4          ; 2 uses
  %i.agd = getelementptr inbounds i8, ptr %.val10.i.i.i, i64 -8
  %i.age = load i32, ptr %i.agd, align 4          ; 2 uses
  %i.agf = icmp slt i32 %i.agc, %i.age
  br i1 %i.agf, label %bb.di, label %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i.i.i

bb.di:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i.i.i
  store i32 %i.agc, ptr %i.afq, align 4
  br label %bb.dl

_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i.i.i, %._ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i_crit_edge.i.i
  %i.agg = phi i32 [ %.pre.i.i, %._ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i_crit_edge.i.i ], [ %i.age, %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.i.i.i ] ; 2 uses
  %.val13.i.i.i = load ptr, ptr %i.nx, align 8
  %i.agh = ptrtoint ptr %.val10.i.i.i to i64
  %i.agi = ptrtoint ptr %.val13.i.i.i to i64
  %i.agj = sub i64 %i.agh, %i.agi
  %i.agk = icmp eq i64 %i.agj, 12
  br i1 %i.agk, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i.i.i
  %i.agl = add nsw i32 %i.agg, -1
  store i32 %i.agl, ptr %i.afq, align 4
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator17HasSiblingOrChildEv.exit.thread.i.i.i
  store i32 %i.agg, ptr %i.afq, align 4
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg, %bb.df
  %i.agm = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
  br i1 %i.agm, label %.lr.ph.i39.i.i, label %.preheader.i35.i.i.preheader, !llvm.loop !52

.preheader.i35.i.i.preheader:                     ; preds = %bb.dl, %_ZN2v88internal12_GLOBAL__N_123FilterAliasedSingletonsEPNS0_16CoverageFunctionE.exit.i.i
  br label %.preheader.i35.i.i

.preheader.i35.i.i:                               ; preds = %.preheader.i35.i.i.preheader, %.preheader.i35.i.i
  %i.agn = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_121CoverageBlockIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
  br i1 %i.agn, label %.preheader.i35.i.i, label %bb.dm, !llvm.loop !42

bb.dm:                                            ; preds = %.preheader.i35.i.i
  %i.ago = load ptr, ptr %12, align 8             ; 2 uses
end_hunk_0
