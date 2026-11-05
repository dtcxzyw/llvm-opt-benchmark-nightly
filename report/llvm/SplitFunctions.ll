Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SplitFunctions?download=true
inline.NumInlined: 3208
inline.NumDeleted: 1686
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN12_GLOBAL__N_118SplitCacheDirected8fragmentEPPN4llvm4bolt16BinaryBasicBlockES5_:bb.a
bb.m:                                             ; preds = %.loopexit.i.i.i
  %i.do = shl i32 %i.cg, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, i32 noundef %i.do), !noalias !919
  %i.dp = load ptr, ptr %i.aa, align 8, !tbaa !444, !noalias !921 ; 5 uses
  %i.dq = load ptr, ptr %i.al, align 8, !tbaa !445, !noalias !921 ; 5 uses
  %i.dr = load i32, ptr %i.am, align 4, !tbaa !446, !noalias !921 ; 2 uses
  %i.ds = icmp ne i32 %i.dr, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add i32 %i.dr, -1                       ; 2 uses
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !443, !noalias !919 ; 5 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 31
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dt, %i.dz                    ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.eb ; 2 uses
  %i.ed = lshr i64 %i.eb, 5
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !447, !noalias !919
  %i.eg = and i32 %i.ea, 31
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = trunc i32 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, !prof !448

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.n
  %i.ej = phi ptr [ %i.ep, %bb.n ], [ %i.ec, %bb.m ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.en, %bb.n ], [ %i.ea, %bb.m ]
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !443, !noalias !919
  %i.el = icmp eq ptr %i.du, %i.ek
  br i1 %i.el, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, label %bb.n, !prof !449

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.em = add nuw i32 %.024.i.i.i, 1
  %i.en = and i32 %i.em, %i.dt                    ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.eo ; 2 uses
  %i.eq = lshr i64 %i.eo, 5
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !447, !noalias !919
  %i.et = and i32 %i.en, 31
  %i.eu = lshr i32 %i.es, %i.et
  %i.ev = trunc i32 %i.eu to i1
  br i1 %i.ev, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i, %bb.m, %.loopexit.i.i.i
  %i.ew = phi ptr [ %i.by, %.loopexit.i.i.i ], [ %i.du, %bb.m ], [ %i.du, %.lr.ph.i.i.i ], [ %i.du, %bb.n ]
  %i.ex = phi ptr [ %i.ce, %.loopexit.i.i.i ], [ %i.dp, %bb.m ], [ %i.dp, %.lr.ph.i.i.i ], [ %i.dp, %bb.n ]
  %i.ey = phi ptr [ %i.cf, %.loopexit.i.i.i ], [ %i.dq, %bb.m ], [ %i.dq, %.lr.ph.i.i.i ], [ %i.dq, %bb.n ]
  %i.ez = phi ptr [ %.lcssa28.sink.i.ph.i.i.i, %.loopexit.i.i.i ], [ %i.ec, %bb.m ], [ %i.ep, %bb.n ], [ %i.ej, %.lr.ph.i.i.i ] ; 3 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 4                 ; 2 uses
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 31
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = lshr i64 %i.fd, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !447, !noalias !919
  %i.fk = or i32 %i.fg, %i.fj
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !447, !noalias !919
  %i.fl = load i32, ptr %i.an, align 8, !tbaa !452, !noalias !919
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.an, align 8, !tbaa !452, !noalias !919
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !443, !noalias !919
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 0, ptr %i.fn, align 8, !tbaa !453, !noalias !919
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre.i.i14 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !453, !noalias !919
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i
  %i.fo = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i ], [ %.pre.i.i14, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i ] ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.ad
  %i.fq = icmp ult i64 %i.ad, %i.fo
  %i.fr = select i1 %i.bv, i1 %i.fp, i1 %i.fq
  br i1 %i.fr, label %bb.o, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i
  %i.fs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !919
  %.fca.0.extract.i40.i.i = extractvalue { ptr, i8 } %i.fs, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i40.i.i, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !453, !noalias !919
  %i.fv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !919
  %.fca.0.extract.i41.i.i = extractvalue { ptr, i8 } %i.fv, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i41.i.i, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !453, !noalias !919
  %i.fy = add i64 %i.fx, %i.fu                    ; 3 uses
  %i.fz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !919
  %.fca.0.extract.i42.i.i = extractvalue { ptr, i8 } %i.fz, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i42.i.i, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !453, !noalias !919 ; 3 uses
  %i.gc = icmp ugt i64 %i.fy, %i.gb
  %i.gd = sub nuw i64 %i.fy, %i.gb
  %i.ge = sub nuw i64 %i.gb, %i.fy
  %i.gf = select i1 %i.gc, i64 %i.gd, i64 %i.ge   ; 2 uses
  %.not.i43.i.i = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i43.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.gf, ptr %i.bx, align 8, !tbaa !453, !noalias !919
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %spec.select.i38.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !453, !noalias !919
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.gh = ptrtoint ptr %i.bw to i64
  %i.gi = ptrtoint ptr %.val.i.i.i.i to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 6 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775792
  br i1 %i.gk, label %bb.r, label %_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #35, !noalias !919
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %i.gl = ashr exact i64 %i.gj, 4                 ; 3 uses
  %i.gm = icmp eq ptr %i.bw, %.val.i.i.i.i
  %.sroa.speculated.i.i.i.i.i = select i1 %i.gm, i64 1, i64 %i.gl
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gl ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gl
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 576460752303423487)
  %i.gq = select i1 %i.go, i64 576460752303423487, i64 %i.gp ; 3 uses
  %.not.i.i.i44.i.i = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i44.i.i)
  %i.gr = shl nuw nsw i64 %i.gq, 4
  %i.gs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #32, !noalias !919 ; 5 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gj ; 3 uses
  store i64 %i.gf, ptr %i.gt, align 8, !tbaa !453, !noalias !919
  %.sroa.5.0..sroa_idx47.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 %spec.select.i38.i.i, ptr %.sroa.5.0..sroa_idx47.i.i, align 8, !tbaa !453, !noalias !919
  %i.gu = icmp sgt i64 %i.gj, 0
  br i1 %i.gu, label %bb.s, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gs, ptr align 8 %.val.i.i.i.i, i64 %i.gj, i1 false), !noalias !919
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %.not.i21.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.gj) #33, !noalias !919
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i.i.i
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gq ; 2 uses
  br label %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.p, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i, %bb.i
  %.sroa.092.4.i = phi ptr [ %.sroa.092.3.i, %bb.i ], [ %i.gs, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.092.3.i, %bb.p ], [ %.sroa.092.3.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %.sroa.6.4.i = phi ptr [ %.sroa.6.3.i, %bb.i ], [ %i.gv, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.gg, %bb.p ], [ %.sroa.6.3.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %.sroa.993.4.i = phi ptr [ %.sroa.993.3.i, %bb.i ], [ %i.gw, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.993.3.i, %bb.p ], [ %.sroa.993.3.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %.val.i.i68.i.i = phi ptr [ %.val.i.i.i.i, %bb.i ], [ %i.gs, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.val.i.i.i.i, %bb.p ], [ %.val.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %i.gx = phi ptr [ %i.bw, %bb.i ], [ %i.gw, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.bw, %bb.p ], [ %i.bw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  %i.gy = phi ptr [ %i.bx, %bb.i ], [ %i.gv, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.gg, %bb.p ], [ %i.bx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !919
  %i.gz = getelementptr inbounds nuw i8, ptr %.03457.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gz, %i.bu
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.i

.loopexit.i.i:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i, %bb.h, %bb.g
  %.sroa.092.5.i = phi ptr [ %.sroa.092.0.i, %bb.g ], [ %.sroa.092.0.i, %bb.h ], [ %.sroa.092.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %.sroa.6.5.i = phi ptr [ %.sroa.6.0.i, %bb.g ], [ %.sroa.6.0.i, %bb.h ], [ %.sroa.6.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %.sroa.993.5.i = phi ptr [ %.sroa.993.0.i, %bb.g ], [ %.sroa.993.0.i, %bb.h ], [ %.sroa.993.4.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %.val.i.i67.i.i = phi ptr [ %.val.i.i65.i.i, %bb.g ], [ %.val.i.i65.i.i, %bb.h ], [ %.val.i.i68.i.i, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %i.ha = phi ptr [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %i.gx, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  %i.hb = phi ptr [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.gy, %_ZNSt6vectorIN12_GLOBAL__N_118SplitCacheDirected8CallInfoESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !919
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.thread.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.thread.i.i: ; preds = %.loopexit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i, %bb.f, %bb.e
  %.sroa.092.1.i = phi ptr [ %.sroa.092.0.i, %bb.e ], [ %.sroa.092.0.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.sroa.092.5.i, %.loopexit.i.i ], [ %.sroa.092.0.i, %bb.f ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.0.i, %bb.e ], [ %.sroa.6.0.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.sroa.6.5.i, %.loopexit.i.i ], [ %.sroa.6.0.i, %bb.f ] ; 2 uses
  %.sroa.993.1.i = phi ptr [ %.sroa.993.0.i, %bb.e ], [ %.sroa.993.0.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.sroa.993.5.i, %.loopexit.i.i ], [ %.sroa.993.0.i, %bb.f ] ; 2 uses
  %.val.i.i66.i.i = phi ptr [ %.val.i.i65.i.i, %bb.e ], [ %.val.i.i65.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %.val.i.i67.i.i, %.loopexit.i.i ], [ %.val.i.i65.i.i, %bb.f ]
  %i.hc = phi ptr [ %i.ar, %bb.e ], [ %i.ar, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %i.ha, %.loopexit.i.i ], [ %i.ar, %bb.f ]
  %i.hd = phi ptr [ %i.as, %bb.e ], [ %i.as, %_ZN12_GLOBAL__N_118SplitCacheDirected26shouldConsiderForCallGraphERKN4llvm4bolt14BinaryFunctionE.exit.i.i ], [ %i.hb, %.loopexit.i.i ], [ %i.as, %bb.f ]
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.050.059.i.i, i64 8 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.he, %i.aj
  br i1 %.not53.i.i, label %._crit_edge.i.loopexit.i, label %bb.e

_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  %i.hf = phi ptr [ %i.n, %bb.c ], [ %.pre84, %._crit_edge.i.i ]
  %i.hg = phi i32 [ %i.q, %bb.c ], [ %.pre83, %._crit_edge.i.i ] ; 2 uses
  %.sroa.092.6.i = phi ptr [ null, %bb.c ], [ %.sroa.092.2.i, %._crit_edge.i.i ] ; 5 uses
  %.sroa.6.6.i = phi ptr [ null, %bb.c ], [ %.sroa.6.2.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.993.6.i = phi i64 [ 0, %bb.c ], [ %.sroa.993.2.i, %._crit_edge.i.i ]
  %i.hh = zext i32 %i.hg to i64
  %i.hi = call i64 @llvm.usub.sat.i64(i64 %i.hh, i64 1) ; 3 uses
  %exitcond.not.i177 = icmp ult i32 %i.hg, 2
  br i1 %exitcond.not.i177, label %._crit_edge.i, label %.lr.ph179

bb.u:                                             ; preds = %.lr.ph179
  %exitcond.not.i = icmp eq i64 %i.hj, %i.hi
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph179, !llvm.loop !873

._crit_edge.i:                                    ; preds = %bb.u, %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i
  %.pre182.i = add nuw nsw i64 %i.hi, 1
  br label %._crit_edge180

.lr.ph179:                                        ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i, %bb.u
  %.022.i178 = phi i64 [ %i.hj, %bb.u ], [ 0, %_ZN12_GLOBAL__N_118SplitCacheDirected17extractCoverCallsERKN4llvm4bolt14BinaryFunctionE.exit.i ] ; 2 uses
  %i.hj = add nuw nsw i64 %.022.i178, 1           ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !443
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 176
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.hm, align 8, !tbaa !447
  %i.hn = icmp eq i32 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.hn, label %._crit_edge180, label %bb.u, !llvm.loop !873

._crit_edge180:                                   ; preds = %.lr.ph179, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre182.i, %._crit_edge.i ], [ %i.hj, %.lr.ph179 ]
  %.022.lcssa.i = phi i64 [ %i.hi, %._crit_edge.i ], [ %.022.i178, %.lr.ph179 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %.sroa.092.6.i, %.sroa.6.6.i
  br label %bb.x

bb.v:                                             ; preds = %bb.bm
  %.not.i.i.i33.i = icmp eq ptr %.sroa.092.6.i, null
  br i1 %.not.i.i.i33.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = ptrtoint ptr %.sroa.092.6.i to i64
  %i.ie = sub i64 %.sroa.993.6.i, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.6.i, i64 noundef %i.ie) #33
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit

bb.x:                                             ; preds = %bb.bm, %._crit_edge180
  %.0141.i = phi i64 [ 0, %._crit_edge180 ], [ %i.ii, %bb.bm ] ; 5 uses
  %.sroa.088.0140.i = phi i64 [ -1, %._crit_edge180 ], [ %.sroa.088.2.i, %bb.bm ] ; 2 uses
  %.sroa.990.0139.i = phi double [ 0.000000e+00, %._crit_edge180 ], [ %.sroa.990.2.i, %bb.bm ] ; 3 uses
  %.sroa.7.0138.i = phi double [ 0.000000e+00, %._crit_edge180 ], [ %.sroa.7.2.i, %bb.bm ] ; 3 uses
  %i.if = load ptr, ptr %3, align 8, !tbaa !42    ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.0141.i
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !443 ; 5 uses
  %i.ii = add nuw nsw i64 %.0141.i, 1             ; 4 uses
  %i.ij = load i32, ptr %i.e, align 8, !tbaa !431 ; 2 uses
  %i.ik = zext i32 %i.ij to i64
  %i.il = icmp samesign ult i64 %i.ii, %i.ik
  br i1 %i.il, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ii
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !443
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !431
  switch i32 %i.ip, label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i [
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.iq = call noundef ptr @_ZNK4llvm4bolt16BinaryBasicBlock12getSuccessorEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(192) %i.ih, ptr noundef null) #30
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !42 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !923 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !923 ; 2 uses
  %i.iw = icmp ugt i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !42
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !443
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ja = icmp ult i64 %i.it, %i.iv
  br i1 %i.ja, label %bb.ad, label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !42
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !443
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i

_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  %.1.i.i = phi ptr [ %i.iq, %bb.z ], [ null, %bb.y ], [ null, %bb.ac ], [ %i.iz, %bb.ab ], [ %i.je, %bb.ad ]
  %i.jf = icmp eq ptr %i.in, %.1.i.i
  br i1 %i.jf, label %bb.bm, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i
  %.pr.i = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924
  %.pre.i.i.pre.i = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split.i, %bb.x
  %.pre.i.i.i = phi ptr [ %.pre.i.i.pre.i, %thread-pre-split.i ], [ %i.if, %bb.x ] ; 3 uses
  %i.jg = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ij, %bb.x ] ; 2 uses
  %.not64.i.i.i = icmp eq i32 %i.jg, 0
  %.pre.i34.i = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !443, !noalias !924 ; 2 uses
  br i1 %.not64.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ae
  %i.jh = getelementptr inbounds nuw i8, ptr %.pre.i34.i, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i.i18.i.i = load i32, ptr %i.jh, align 8, !tbaa !447, !noalias !924
  %i.ji = icmp eq i32 %.sroa.0.0.copyload.i.i18.i.i, 1
  %.pre44.i.i = zext i32 %i.jg to i64             ; 4 uses
  br i1 %i.ji, label %.critedge.i.i.i, label %.lr.ph.i35.i.preheader

.lr.ph.i35.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i
  %i.jj = add nsw i64 %.pre44.i.i, -1             ; 2 uses
  store i32 0, ptr %i.jh, align 8, !tbaa !447, !noalias !924
  %exitcond.not182 = icmp eq i64 %i.jj, 0
  br i1 %exitcond.not182, label %..critedge.loopexit.i_crit_edge.i.i, label %.lr.ph.i.i40.i.lr.ph, !llvm.loop !876

.lr.ph.i.i40.i.lr.ph:                             ; preds = %.lr.ph.i35.i.preheader
  br label %.lr.ph.i.i40.i, !llvm.loop !876

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i.lr.ph, %.lr.ph.i35.i
  %.055.i19.i.i183 = phi i64 [ 0, %.lr.ph.i.i40.i.lr.ph ], [ %i.jk, %.lr.ph.i35.i ] ; 2 uses
  %i.jk = add nuw nsw i64 %.055.i19.i.i183, 1     ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !443, !noalias !924
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.jn, align 8, !tbaa !447, !noalias !924
  %i.jo = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 1
  br i1 %i.jo, label %.critedge.i.i.i, label %.lr.ph.i35.i, !llvm.loop !876

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i.i40.i
  %.not.i.i36.i.not = icmp samesign ult i64 %.055.i19.i.i183, %.0141.i
  %spec.select.i.i.i = select i1 %.not.i.i36.i.not, i32 0, i32 2
  store i32 %spec.select.i.i.i, ptr %i.jn, align 8, !tbaa !447, !noalias !924
  %exitcond.not = icmp eq i64 %i.jk, %i.jj
  br i1 %exitcond.not, label %.lr.ph.i35.i...critedge.loopexit.i_crit_edge.i.i_crit_edge, label %.lr.ph.i.i40.i, !llvm.loop !876

.lr.ph.i35.i...critedge.loopexit.i_crit_edge.i.i_crit_edge: ; preds = %.lr.ph.i35.i
  br label %..critedge.loopexit.i_crit_edge.i.i, !llvm.loop !876

..critedge.loopexit.i_crit_edge.i.i:              ; preds = %.lr.ph.i35.i...critedge.loopexit.i_crit_edge.i.i_crit_edge, %.lr.ph.i35.i.preheader
  br label %.critedge.i.i.i, !llvm.loop !876

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.preheader.i.i, %..critedge.loopexit.i_crit_edge.i.i, %bb.ae
  %i.jp = phi i64 [ 0, %bb.ae ], [ %.pre44.i.i, %.lr.ph.i.preheader.i.i ], [ %.pre44.i.i, %..critedge.loopexit.i_crit_edge.i.i ], [ %.pre44.i.i, %.lr.ph.i.i40.i ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre.i34.i, i64 104
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !533, !noalias !924 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1272
  %i.jt = call noundef zeroext i1 @_ZN4llvm4bolt14FunctionLayout6updateENS_8ArrayRefIPNS0_16BinaryBasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.js, ptr nonnull %.pre.i.i.i, i64 %i.jp) #30, !noalias !924 ; 0 uses
  %i.ju = load ptr, ptr %i.ho, align 8, !tbaa !441, !noalias !924, !nonnull !39, !align !425
  %i.jv = call { i64, i64 } @_ZN4llvm4bolt13BinaryContext20calculateEmittedSizeERNS0_14BinaryFunctionEb(ptr noundef nonnull align 8 dereferenceable(2268) %i.ju, ptr noundef nonnull align 8 dereferenceable(1360) %i.jr, i1 noundef zeroext true) #30, !noalias !924 ; 0 uses
  %i.jw = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  %i.jx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hp, ptr noundef nonnull align 8 dereferenceable(8) %i.jw), !noalias !924
  %i.jy = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924 ; 5 uses
  %i.jz = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924 ; 3 uses
  %i.ka = zext i32 %i.jz to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ka, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.idx.i.i.i
  %.not3857.i.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not3857.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i, label %.lr.ph62.i.i.i

.lr.ph62.i.i.i:                                   ; preds = %.critedge.i.i.i
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !443, !noalias !924 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 176
  %.sroa.0.0.copyload.i41.i21.i.i = load i32, ptr %i.kd, align 8, !tbaa !447, !noalias !924
  %i.ke = icmp eq i32 %.sroa.0.0.copyload.i41.i21.i.i, 1
  br i1 %i.ke, label %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i, label %.lr.ph25.i.preheader.i

.lr.ph25.i.preheader.i:                           ; preds = %.lr.ph62.i.i.i
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.jx, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !453, !noalias !924
  br label %.lr.ph25.i.i

bb.af:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit60.i
  %i.kh = load ptr, ptr %i.rq, align 8, !tbaa !443, !noalias !924 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 176
  %.sroa.0.0.copyload.i41.i.i.i = load i32, ptr %i.ki, align 8, !tbaa !447, !noalias !924
  %i.kj = icmp eq i32 %.sroa.0.0.copyload.i41.i.i.i, 1
  br i1 %i.kj, label %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i, label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %bb.af, %.lr.ph25.i.preheader.i
  %.0102.i = phi ptr [ %i.kh, %bb.af ], [ %i.kc, %.lr.ph25.i.preheader.i ] ; 13 uses
  %.04958.i24.i.i = phi i64 [ %.150.i.i.i, %bb.af ], [ 0, %.lr.ph25.i.preheader.i ]
  %.03560.i23.i.i = phi i64 [ %.1.i.i.i, %bb.af ], [ %i.kg, %.lr.ph25.i.preheader.i ] ; 2 uses
  %.03461.i22.i.i = phi ptr [ %i.rq, %bb.af ], [ %i.jy, %.lr.ph25.i.preheader.i ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.0102.i, i64 120 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0102.i, i64 124 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !473, !noalias !924
  %i.kn = load i32, ptr %i.kk, align 8, !tbaa !474, !noalias !924
  %i.ko = sub i32 %i.km, %i.kn
  %i.kp = zext i32 %i.ko to i64
  %i.kq = trunc i64 %.03560.i23.i.i to i32
  store i32 %i.kq, ptr %i.kk, align 8, !tbaa !474, !noalias !924
  %i.kr = add i64 %.03560.i23.i.i, %i.kp          ; 3 uses
  %i.ks = trunc i64 %i.kr to i32
  store i32 %i.ks, ptr %i.kl, align 4, !tbaa !473, !noalias !924
  %i.kt = getelementptr inbounds nuw i8, ptr %.0102.i, i64 164
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !925, !noalias !924
  %i.kv = zext i32 %i.ku to i64
  %i.kw = icmp eq i64 %.0141.i, %i.kv
  br i1 %i.kw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph25.i.i
  %i.kx = load i64, ptr %i.hq, align 8, !tbaa !475, !noalias !924
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph25.i.i
  %.150.i.i.i = phi i64 [ %i.kr, %bb.ag ], [ %.04958.i24.i.i, %.lr.ph25.i.i ] ; 3 uses
  %.1.i.i.i = phi i64 [ %i.kx, %bb.ag ], [ %i.kr, %.lr.ph25.i.i ]
  %i.ky = load ptr, ptr %i.hp, align 8, !tbaa !444, !noalias !926 ; 3 uses
  %i.kz = load ptr, ptr %i.hs, align 8, !tbaa !445, !noalias !926 ; 3 uses
  %i.la = load i32, ptr %i.ht, align 4, !tbaa !446, !noalias !926 ; 4 uses
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %.loopexit.i61.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lc = add i32 %i.la, -1                       ; 2 uses
  %i.ld = ptrtoint ptr %.0102.i to i64
  %i.le = mul i64 %i.ld, -4658895280553007687     ; 2 uses
  %i.lf = lshr i64 %i.le, 31
  %i.lg = xor i64 %i.lf, %i.le
  %i.lh = trunc i64 %i.lg to i32
  %i.li = and i32 %i.lc, %i.lh                    ; 3 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.lj ; 2 uses
  %i.ll = lshr i64 %i.lj, 5
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !447, !noalias !924
  %i.lo = and i32 %i.li, 31
  %i.lp = lshr i32 %i.ln, %i.lo
  %i.lq = trunc i32 %i.lp to i1
  br i1 %i.lq, label %.lr.ph.i.i72.i, label %.loopexit.i61.i, !prof !448

.lr.ph.i.i72.i:                                   ; preds = %bb.ai, %bb.aj
  %i.lr = phi ptr [ %i.lx, %bb.aj ], [ %i.lk, %bb.ai ] ; 2 uses
  %.024.i.i73.i = phi i32 [ %i.lv, %bb.aj ], [ %i.li, %bb.ai ]
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !443, !noalias !924
  %i.lt = icmp eq ptr %.0102.i, %i.ls
  br i1 %i.lt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.loopexit.i, label %bb.aj, !prof !449

bb.aj:                                            ; preds = %.lr.ph.i.i72.i
  %i.lu = add nuw i32 %.024.i.i73.i, 1
  %i.lv = and i32 %i.lu, %i.lc                    ; 3 uses
  %i.lw = zext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.lw ; 2 uses
  %i.ly = lshr i64 %i.lw, 5
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !447, !noalias !924
  %i.mb = and i32 %i.lv, 31
  %i.mc = lshr i32 %i.ma, %i.mb
  %i.md = trunc i32 %i.mc to i1
  br i1 %i.md, label %.lr.ph.i.i72.i, label %.loopexit.i61.i, !prof !450, !llvm.loop !1

.loopexit.i61.i:                                  ; preds = %bb.aj, %bb.ai, %bb.ah
  %.lcssa28.sink.i.ph.i62.i = phi ptr [ %i.lk, %bb.ai ], [ null, %bb.ah ], [ %i.lx, %bb.aj ]
  %i.me = load i32, ptr %i.hu, align 8, !tbaa !452, !noalias !924
  %i.mf = shl i32 %i.me, 2
  %i.mg = add i32 %i.mf, 4
  %i.mh = mul i32 %i.la, 3
  %.not.i.i63.i = icmp ult i32 %i.mg, %i.mh
  br i1 %.not.i.i63.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i, label %bb.ak, !prof !449

bb.ak:                                            ; preds = %.loopexit.i61.i
  %i.mi = shl i32 %i.la, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hp, i32 noundef %i.mi), !noalias !924
  %i.mj = load ptr, ptr %i.hp, align 8, !tbaa !444, !noalias !927 ; 5 uses
  %i.mk = load ptr, ptr %i.hs, align 8, !tbaa !445, !noalias !927 ; 5 uses
  %i.ml = load i32, ptr %i.ht, align 4, !tbaa !446, !noalias !927 ; 2 uses
  %i.mm = icmp ne i32 %i.ml, 0
  call void @llvm.assume(i1 %i.mm)
  %i.mn = add i32 %i.ml, -1                       ; 2 uses
  %i.mo = ptrtoint ptr %.0102.i to i64
  %i.mp = mul i64 %i.mo, -4658895280553007687     ; 2 uses
  %i.mq = lshr i64 %i.mp, 31
  %i.mr = xor i64 %i.mq, %i.mp
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = and i32 %i.mn, %i.ms                    ; 3 uses
  %i.mu = zext i32 %i.mt to i64                   ; 2 uses
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.mu ; 2 uses
  %i.mw = lshr i64 %i.mu, 5
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !447, !noalias !924
  %i.mz = and i32 %i.mt, 31
  %i.na = lshr i32 %i.my, %i.mz
  %i.nb = trunc i32 %i.na to i1
  br i1 %i.nb, label %.lr.ph.i83.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i, !prof !448

.lr.ph.i83.i:                                     ; preds = %bb.ak, %bb.al
  %i.nc = phi ptr [ %i.ni, %bb.al ], [ %i.mv, %bb.ak ] ; 2 uses
  %.024.i84.i = phi i32 [ %i.ng, %bb.al ], [ %i.mt, %bb.ak ]
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !443, !noalias !924
  %i.ne = icmp eq ptr %.0102.i, %i.nd
  br i1 %i.ne, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i, label %bb.al, !prof !449

bb.al:                                            ; preds = %.lr.ph.i83.i
  %i.nf = add nuw i32 %.024.i84.i, 1
  %i.ng = and i32 %i.nf, %i.mn                    ; 3 uses
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.nh ; 2 uses
  %i.nj = lshr i64 %i.nh, 5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !447, !noalias !924
  %i.nm = and i32 %i.ng, 31
  %i.nn = lshr i32 %i.nl, %i.nm
  %i.no = trunc i32 %i.nn to i1
  br i1 %i.no, label %.lr.ph.i83.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i67.i: ; preds = %bb.al, %.lr.ph.i83.i, %bb.ak, %.loopexit.i61.i
  %i.np = phi ptr [ %i.ky, %.loopexit.i61.i ], [ %i.mj, %bb.ak ], [ %i.mj, %.lr.ph.i83.i ], [ %i.mj, %bb.al ]
  %i.nq = phi ptr [ %i.kz, %.loopexit.i61.i ], [ %i.mk, %bb.ak ], [ %i.mk, %.lr.ph.i83.i ], [ %i.mk, %bb.al ]
  %i.nr = phi ptr [ %.lcssa28.sink.i.ph.i62.i, %.loopexit.i61.i ], [ %i.mv, %bb.ak ], [ %i.ni, %bb.al ], [ %i.nc, %.lr.ph.i83.i ] ; 3 uses
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.np to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = ashr exact i64 %i.nu, 4                 ; 2 uses
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = and i32 %i.nw, 31
  %i.ny = shl nuw i32 1, %i.nx
  %i.nz = lshr i64 %i.nv, 5
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.nz ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !447, !noalias !924
  %i.oc = or i32 %i.ny, %i.ob
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !447, !noalias !924
  %i.od = load i32, ptr %i.hu, align 8, !tbaa !452, !noalias !924
  %i.oe = add i32 %i.od, 1
  store i32 %i.oe, ptr %i.hu, align 8, !tbaa !452, !noalias !924
  store ptr %.0102.i, ptr %i.nr, align 8, !tbaa !443, !noalias !924
  %i.of = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i64 0, ptr %i.of, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit74.i

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118SplitCacheDirected8fragmentEPPN4llvm4bolt16BinaryBasicBlockES5_:bb.a
  br i1 %i.acg, label %.lr.ph.i50.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i: ; preds = %bb.be, %.lr.ph.i50.i.i.i, %bb.bd, %.loopexit.i34.i.i.i
  %i.ach = phi ptr [ %i.zq, %.loopexit.i34.i.i.i ], [ %i.abb, %bb.bd ], [ %i.abb, %.lr.ph.i50.i.i.i ], [ %i.abb, %bb.be ]
  %i.aci = phi ptr [ %i.zr, %.loopexit.i34.i.i.i ], [ %i.abc, %bb.bd ], [ %i.abc, %.lr.ph.i50.i.i.i ], [ %i.abc, %bb.be ]
  %i.acj = phi ptr [ %.lcssa28.sink.i.ph.i35.i.i.i, %.loopexit.i34.i.i.i ], [ %i.abn, %bb.bd ], [ %i.aca, %bb.be ], [ %i.abu, %.lr.ph.i50.i.i.i ] ; 3 uses
  %i.ack = ptrtoint ptr %i.acj to i64
  %i.acl = ptrtoint ptr %i.ach to i64
  %i.acm = sub i64 %i.ack, %i.acl
  %i.acn = ashr exact i64 %i.acm, 4               ; 2 uses
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = and i32 %i.aco, 31
  %i.acq = shl nuw i32 1, %i.acp
  %i.acr = lshr i64 %i.acn, 5
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.acr ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !447, !noalias !924
  %i.acu = or i32 %i.acq, %i.act
  store i32 %i.acu, ptr %i.acs, align 4, !tbaa !447, !noalias !924
  %i.acv = load i32, ptr %i.ic, align 8, !tbaa !452, !noalias !924
  %i.acw = add i32 %i.acv, 1
  store i32 %i.acw, ptr %i.ic, align 8, !tbaa !452, !noalias !924
  store ptr %i.wg, ptr %i.acj, align 8, !tbaa !443, !noalias !924
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store i64 0, ptr %i.acx, align 8, !tbaa !453, !noalias !924
  br label %bb.bf

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i: ; preds = %.lr.ph.i.i45.i.i.i
  %.phi.trans.insert77.i.i.i = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %.pre78.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i, align 8, !tbaa !453, !noalias !924
  %i.acy = icmp ugt i64 %.pre78.i.i.i, %i.sa
  %i.acz = select i1 %i.acy, i64 %i.rs, i64 0
  %spec.select.i = sub i64 %i.zp, %i.acz
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i
  %.0.i.i.i = phi i64 [ %i.zp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i ], [ %spec.select.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i ] ; 3 uses
  %i.ada = icmp ult i64 %.0.i.i.i, %i.sn
  %i.adb = sub nuw i64 %i.sn, %.0.i.i.i
  %i.adc = sub nuw i64 %.0.i.i.i, %i.sn
  %i.add = select i1 %i.ada, i64 %i.adb, i64 %i.adc
  %i.ade = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.adf = fmul double %i.ade, %i.we
  %i.adg = add i64 %i.add, 1
  %i.adh = uitofp i64 %i.adg to double
  %i.adi = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.adj = call double @pow(double noundef %i.adh, double noundef %i.adi) #30, !noalias !924
  %i.adk = fdiv double %i.adf, %i.adj
  %i.adl = fadd double %i.wf, %i.adk              ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.02466.i.i.i, i64 8 ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.adm, %i.wd
  br i1 %.not28.i.i.i, label %.loopexit.i.i37.i, label %bb.aw

.loopexit.i.i37.i:                                ; preds = %bb.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i, %.lr.ph69.i.i.i
  %.sroa.9.2.i = phi double [ %.sroa.9.1.i, %.lr.ph69.i.i.i ], [ %.sroa.9.1.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i ], [ %i.adl, %bb.bf ] ; 2 uses
  %i.adn = phi double [ %i.sf, %.lr.ph69.i.i.i ], [ %i.sf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i ], [ %i.adl, %bb.bf ] ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.02568.i.i.i, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ado, %i.se
  br i1 %.not.i17.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i, label %.lr.ph69.i.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i: ; preds = %.loopexit.i.i37.i
  %.val11.pr.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924
  %.val.pre.i.i = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i: ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i
  %.sroa.9.3.i = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.sroa.9.2.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %i.adp = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %i.adn, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ]
  %.val.i.i = phi ptr [ %.val.pre42.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.val.pre.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %.val11.pr.i.i = phi i32 [ %.val11.pr.pre40.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.val11.pr.pre.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %i.adq = zext i32 %.val11.pr.i.i to i64
  %.idx.i19.i.i = shl nuw nsw i64 %i.adq, 3
  %i.adr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i19.i.i
  %.not17.i.i.i = icmp eq i32 %.val11.pr.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %.lr.ph19.i.i.i

.lr.ph19.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i
  %i.ads = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), align 8, !noalias !924
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i20.i.i, %.lr.ph19.i.i.i
  %.sroa.9.4.i = phi double [ %.sroa.9.3.i, %.lr.ph19.i.i.i ], [ %.sroa.9.5.i, %.loopexit.i20.i.i ] ; 3 uses
  %i.adt = phi double [ %i.adp, %.lr.ph19.i.i.i ], [ %i.afm, %.loopexit.i20.i.i ] ; 3 uses
  %.018.i.i.i = phi ptr [ %.val.i.i, %.lr.ph19.i.i.i ], [ %i.afn, %.loopexit.i20.i.i ] ; 2 uses
  %i.adu = load ptr, ptr %.018.i.i.i, align 8, !tbaa !443, !noalias !924 ; 6 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 152
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !479, !noalias !924
  %i.adx = add i64 %i.adw, 1
  %i.ady = icmp ult i64 %i.adx, 2
  br i1 %i.ady, label %.loopexit.i20.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adu, i64 124
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !930, !noalias !924 ; 2 uses
  %i.aeb = zext i32 %i.aea to i64                 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adu, i64 40
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adu, i64 48
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.aeg = zext i32 %i.aef to i64
  %.idx20.i.i.i = shl nuw nsw i64 %i.aeg, 3
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx20.i.i.i
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adu, i64 56
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 64
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.aem = zext i32 %i.ael to i64
  %.idx21.i.i.i = shl nuw nsw i64 %i.aem, 4
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aej, i64 %.idx21.i.i.i
  %i.aeo = icmp ne i32 %i.aef, 0
  %i.aep = icmp ne i32 %i.ael, 0
  %.not3.i14.i.i.i = select i1 %i.aeo, i1 %i.aep, i1 false
  br i1 %.not3.i14.i.i.i, label %.lr.ph.i22.i.i, label %.loopexit.i20.i.i

.lr.ph.i22.i.i:                                   ; preds = %bb.bh, %bb.bj
  %.sroa.9.7.i = phi double [ %.sroa.9.8.i, %bb.bj ], [ %.sroa.9.4.i, %bb.bh ]
  %i.aeq = phi double [ %i.afh, %bb.bj ], [ %i.adt, %bb.bh ] ; 2 uses
  %.sroa.03.016.i.i.i = phi ptr [ %i.afj, %bb.bj ], [ %i.aej, %bb.bh ] ; 2 uses
  %.sroa.7.015.i.i.i = phi ptr [ %i.afi, %bb.bj ], [ %i.aed, %bb.bh ] ; 2 uses
  %i.aer = load i64, ptr %.sroa.03.016.i.i.i, align 8, !tbaa !923, !noalias !924 ; 2 uses
  %i.aes = icmp eq i64 %i.aer, 0
  br i1 %i.aes, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i22.i.i
  %i.aet = load ptr, ptr %.sroa.7.015.i.i.i, align 8, !tbaa !443, !noalias !924
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 120
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !937, !noalias !924 ; 2 uses
  %i.aew = zext i32 %i.aev to i64                 ; 2 uses
  %i.aex = icmp ugt i32 %i.aea, %i.aev
  %i.aey = sub nuw nsw i64 %i.aeb, %i.aew
  %i.aez = sub nuw nsw i64 %i.aew, %i.aeb
  %i.afa = select i1 %i.aex, i64 %i.aey, i64 %i.aez
  %i.afb = uitofp i64 %i.aer to double
  %i.afc = add nuw nsw i64 %i.afa, 1
  %i.afd = uitofp nneg i64 %i.afc to double
  %i.afe = call double @pow(double noundef %i.afd, double noundef %i.ads) #30, !noalias !924
  %i.aff = fdiv double %i.afb, %i.afe
  %i.afg = fadd double %i.aeq, %i.aff             ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i22.i.i
  %.sroa.9.8.i = phi double [ %.sroa.9.7.i, %.lr.ph.i22.i.i ], [ %i.afg, %bb.bi ] ; 2 uses
  %i.afh = phi double [ %i.aeq, %.lr.ph.i22.i.i ], [ %i.afg, %bb.bi ] ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.7.015.i.i.i, i64 8 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.03.016.i.i.i, i64 16 ; 2 uses
  %i.afk = icmp ne ptr %i.afi, %i.aeh
  %i.afl = icmp ne ptr %i.afj, %i.aen
  %.not3.i.i.i.i = select i1 %i.afk, i1 %i.afl, i1 false
  br i1 %.not3.i.i.i.i, label %.lr.ph.i22.i.i, label %.loopexit.i20.i.i

.loopexit.i20.i.i:                                ; preds = %bb.bj, %bb.bh, %bb.bg
  %.sroa.9.5.i = phi double [ %.sroa.9.4.i, %bb.bg ], [ %.sroa.9.4.i, %bb.bh ], [ %.sroa.9.8.i, %bb.bj ] ; 2 uses
  %i.afm = phi double [ %i.adt, %bb.bg ], [ %i.adt, %bb.bh ], [ %i.afh, %bb.bj ]
  %i.afn = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.afn, %i.adr
  br i1 %.not.i21.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %bb.bg

_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i: ; preds = %.loopexit.i20.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, %bb.aq
  %.sroa.9.6.i = phi double [ %.sroa.9.3.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %bb.aq ], [ %.sroa.9.5.i, %.loopexit.i20.i.i ] ; 2 uses
  %i.afo = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924 ; 2 uses
  %i.afp = fcmp oeq double %i.afo, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.afp, i1 true, i1 %.not2.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i
  %i.afq = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558, !noalias !924
  %invariant.op = sub i64 1, %i.rs
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i23.i.i
  %i.afr = phi double [ 0.000000e+00, %.lr.ph.i23.i.i ], [ %i.afx, %bb.bk ]
  %.sroa.01.03.i.i.i = phi ptr [ %.sroa.092.6.i, %.lr.ph.i23.i.i ], [ %i.afy, %bb.bk ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.01.03.i.i.i, align 8, !tbaa !453, !noalias !924
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !453, !noalias !924
  %i.afs = uitofp i64 %.sroa.4.0.copyload.i.i.i to double
  %i.aft = fmul double %i.afo, %i.afs
  %.reass.reass.i.reass.i.reass.i.reass.reass = add i64 %.sroa.0.0.copyload.i.i.i, %invariant.op
  %i.afu = uitofp i64 %.reass.reass.i.reass.i.reass.i.reass.reass to double
  %i.afv = call double @pow(double noundef %i.afu, double noundef %i.afq) #30, !noalias !924
  %i.afw = fdiv double %i.aft, %i.afv
  %i.afx = fadd double %i.afr, %i.afw             ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.afy, %.sroa.6.6.i
  br i1 %.not.i24.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %bb.bk

_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i: ; preds = %bb.bk, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i
  %.sroa.9.9.i = phi double [ %.sroa.9.6.i, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i ], [ %.sroa.9.6.i, %bb.bk ] ; 2 uses
  %.sroa.12.1.i = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i ], [ %i.afx, %bb.bk ] ; 2 uses
  %i.afz = fadd double %.sroa.9.9.i, %.sroa.12.1.i
  %i.aga = fadd double %.sroa.990.0139.i, %.sroa.7.0138.i
  %i.agb = fcmp ogt double %i.afz, %i.aga
  br i1 %i.agb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i
  %.sroa.7.2.i = phi double [ %.sroa.7.0138.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.sroa.9.9.i, %bb.bl ], [ %.sroa.7.0138.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ]
  %.sroa.990.2.i = phi double [ %.sroa.990.0139.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.sroa.12.1.i, %bb.bl ], [ %.sroa.990.0139.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ]
  %.sroa.088.2.i = phi i64 [ %.sroa.088.0140.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.0141.i, %bb.bl ], [ %.sroa.088.0140.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ] ; 3 uses
  %exitcond174.i = icmp eq i64 %i.ii, %.pre-phi.i
  br i1 %exitcond174.i, label %bb.v, label %bb.x, !llvm.loop !917

_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit: ; preds = %bb.v, %bb.w
  %i.agc = icmp eq i64 %.sroa.088.2.i, -1
  %.022..i = select i1 %i.agc, i64 %.022.lcssa.i, i64 %.sroa.088.2.i ; 3 uses
  %i.agd = load i32, ptr %i.e, align 8, !tbaa !431 ; 4 uses
  %i.age = zext i32 %i.agd to i64                 ; 2 uses
  %.not51 = icmp eq i32 %i.agd, 0
  %.pre85 = load ptr, ptr %3, align 8, !tbaa !42  ; 6 uses
  br i1 %.not51, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit
  %xtraiter = and i64 %i.age, 1
  %i.agf = icmp eq i32 %i.agd, 1
  br i1 %i.agf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.age, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp, %.lr.ph.preheader.new
  %.050 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.agt, %bb.bp ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.bp ]
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !443 ; 2 uses
  %.not = icmp ugt i64 %.050, %.022..i
  br i1 %.not, label %bb.bn, label %.lr.ph.1

bb.bn:                                            ; preds = %.lr.ph
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 152
  %i.agj = load i64, ptr %i.agi, align 8, !tbaa !479
  %i.agk = add i64 %i.agj, 1
  %.not12 = icmp ult i64 %i.agk, 2
  %spec.select = select i1 %.not12, i32 1, i32 2
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.bn
  %.sink = phi i32 [ %spec.select, %bb.bn ], [ 0, %.lr.ph ]
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 176
  store i32 %.sink, ptr %i.agl, align 8, !tbaa !447
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !443 ; 2 uses
  %.not.1.not = icmp ult i64 %.050, %.022..i
  br i1 %.not.1.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.1
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 152
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !479
  %i.agr = add i64 %i.agq, 1
  %.not12.1 = icmp ult i64 %i.agr, 2
  %spec.select.1 = select i1 %.not12.1, i32 1, i32 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.1
  %.sink.1 = phi i32 [ %spec.select.1, %bb.bo ], [ 0, %.lr.ph.1 ]
  %i.ags = getelementptr inbounds nuw i8, ptr %i.ago, i64 176
  store i32 %.sink.1, ptr %i.ags, align 8, !tbaa !447
  %i.agt = add nuw nsw i64 %.050, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !918

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.agt, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %i.agd to i1
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050.epil.init
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !443 ; 2 uses
  %.not.epil = icmp ugt i64 %.050.epil.init, %.022..i
  br i1 %.not.epil, label %bb.bq, label %.loopexit.loopexit.epilog-lcssa

bb.bq:                                            ; preds = %.lr.ph.epil.preheader
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 152
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !479
  %i.agy = add i64 %i.agx, 1
  %.not12.epil = icmp ult i64 %i.agy, 2
  %spec.select.epil = select i1 %.not12.epil, i32 1, i32 2
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.bq, %.lr.ph.epil.preheader
  %.sink.epil = phi i32 [ %spec.select.epil, %bb.bq ], [ 0, %.lr.ph.epil.preheader ]
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agv, i64 176
  store i32 %.sink.epil, ptr %i.agz, align 8, !tbaa !447
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit
  %i.aha = phi ptr [ %i.n, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit ], [ %.pre85, %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit ], [ %.pre85, %.loopexit.loopexit.unr-lcssa ], [ %.pre85, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  %i.ahb = icmp eq ptr %i.aha, %i.d
  br i1 %i.ahb, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.aha) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit: ; preds = %.loopexit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !444, !noalias !942 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445, !noalias !942 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !446, !noalias !942 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !443    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !447
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !448

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !443
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.c, !prof !449

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !447
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !450, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !564
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !452
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !449

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !564
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !445
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !444
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !447
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !447
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !452
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !443
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !443
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !453
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
end_hunk_1
