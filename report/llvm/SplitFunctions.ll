Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SplitFunctions?download=true
inline.NumInlined: 3208
inline.NumDeleted: 1686
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN12_GLOBAL__N_118SplitCacheDirected8fragmentEPPN4llvm4bolt16BinaryBasicBlockES5_:bb.a
  store ptr %i.wi, ptr %i.zc, align 8, !tbaa !443, !noalias !924
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  store i64 0, ptr %i.zq, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %.pre.i18.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !453, !noalias !924
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i
  %i.zr = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i.i.i.i ], [ %.pre.i18.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit.i.i.i ] ; 2 uses
  %i.zs = load ptr, ptr %i.ia, align 8, !tbaa !444, !noalias !935 ; 3 uses
  %i.zt = load ptr, ptr %i.ic, align 8, !tbaa !445, !noalias !935 ; 3 uses
  %i.zu = load i32, ptr %i.id, align 4, !tbaa !446, !noalias !935 ; 4 uses
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %.loopexit.i34.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i
  %i.zw = add i32 %i.zu, -1                       ; 2 uses
  %i.zx = ptrtoint ptr %i.wi to i64
  %i.zy = mul i64 %i.zx, -4658895280553007687     ; 2 uses
  %i.zz = lshr i64 %i.zy, 31
  %i.aaa = xor i64 %i.zz, %i.zy
  %i.aab = trunc i64 %i.aaa to i32
  %i.aac = and i32 %i.zw, %i.aab                  ; 3 uses
  %i.aad = zext i32 %i.aac to i64                 ; 2 uses
  %i.aae = getelementptr inbounds nuw [16 x i8], ptr %i.zs, i64 %i.aad ; 2 uses
  %i.aaf = lshr i64 %i.aad, 5
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !447, !noalias !924
  %i.aai = and i32 %i.aac, 31
  %i.aaj = lshr i32 %i.aah, %i.aai
  %i.aak = trunc i32 %i.aaj to i1
  br i1 %i.aak, label %.lr.ph.i.i45.i.i.i, label %.loopexit.i34.i.i.i, !prof !448

.lr.ph.i.i45.i.i.i:                               ; preds = %bb.bb, %bb.bc
  %i.aal = phi ptr [ %i.aar, %bb.bc ], [ %i.aae, %bb.bb ] ; 2 uses
  %.024.i.i46.i.i.i = phi i32 [ %i.aap, %bb.bc ], [ %i.aac, %bb.bb ]
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !443, !noalias !924
  %i.aan = icmp eq ptr %i.wi, %i.aam
  br i1 %i.aan, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i, label %bb.bc, !prof !449

bb.bc:                                            ; preds = %.lr.ph.i.i45.i.i.i
  %i.aao = add nuw i32 %.024.i.i46.i.i.i, 1
  %i.aap = and i32 %i.aao, %i.zw                  ; 3 uses
  %i.aaq = zext i32 %i.aap to i64                 ; 2 uses
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %i.zs, i64 %i.aaq ; 2 uses
  %i.aas = lshr i64 %i.aaq, 5
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !447, !noalias !924
  %i.aav = and i32 %i.aap, 31
  %i.aaw = lshr i32 %i.aau, %i.aav
  %i.aax = trunc i32 %i.aaw to i1
  br i1 %i.aax, label %.lr.ph.i.i45.i.i.i, label %.loopexit.i34.i.i.i, !prof !450, !llvm.loop !1

.loopexit.i34.i.i.i:                              ; preds = %bb.bc, %bb.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i
  %.lcssa28.sink.i.ph.i35.i.i.i = phi ptr [ %i.aae, %bb.bb ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i.i.i ], [ %i.aar, %bb.bc ]
  %i.aay = load i32, ptr %i.ie, align 8, !tbaa !452, !noalias !924
  %i.aaz = shl i32 %i.aay, 2
  %i.aba = add i32 %i.aaz, 4
  %i.abb = mul i32 %i.zu, 3
  %.not.i.i36.i.i.i = icmp ult i32 %i.aba, %i.abb
  br i1 %.not.i.i36.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, label %bb.bd, !prof !449

bb.bd:                                            ; preds = %.loopexit.i34.i.i.i
  %i.abc = shl i32 %i.zu, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ia, i32 noundef %i.abc), !noalias !924
  %i.abd = load ptr, ptr %i.ia, align 8, !tbaa !444, !noalias !936 ; 5 uses
  %i.abe = load ptr, ptr %i.ic, align 8, !tbaa !445, !noalias !936 ; 5 uses
  %i.abf = load i32, ptr %i.id, align 4, !tbaa !446, !noalias !936 ; 2 uses
  %i.abg = icmp ne i32 %i.abf, 0
  call void @llvm.assume(i1 %i.abg)
  %i.abh = add i32 %i.abf, -1                     ; 2 uses
  %i.abi = ptrtoint ptr %i.wi to i64
  %i.abj = mul i64 %i.abi, -4658895280553007687   ; 2 uses
  %i.abk = lshr i64 %i.abj, 31
  %i.abl = xor i64 %i.abk, %i.abj
  %i.abm = trunc i64 %i.abl to i32
  %i.abn = and i32 %i.abh, %i.abm                 ; 3 uses
  %i.abo = zext i32 %i.abn to i64                 ; 2 uses
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.abd, i64 %i.abo ; 2 uses
  %i.abq = lshr i64 %i.abo, 5
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !447, !noalias !924
  %i.abt = and i32 %i.abn, 31
  %i.abu = lshr i32 %i.abs, %i.abt
  %i.abv = trunc i32 %i.abu to i1
  br i1 %i.abv, label %.lr.ph.i50.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, !prof !448

.lr.ph.i50.i.i.i:                                 ; preds = %bb.bd, %bb.be
  %i.abw = phi ptr [ %i.acc, %bb.be ], [ %i.abp, %bb.bd ] ; 2 uses
  %.024.i51.i.i.i = phi i32 [ %i.aca, %bb.be ], [ %i.abn, %bb.bd ]
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !443, !noalias !924
  %i.aby = icmp eq ptr %i.wi, %i.abx
  br i1 %i.aby, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, label %bb.be, !prof !449

bb.be:                                            ; preds = %.lr.ph.i50.i.i.i
  %i.abz = add nuw i32 %.024.i51.i.i.i, 1
  %i.aca = and i32 %i.abz, %i.abh                 ; 3 uses
  %i.acb = zext i32 %i.aca to i64                 ; 2 uses
  %i.acc = getelementptr inbounds nuw [16 x i8], ptr %i.abd, i64 %i.acb ; 2 uses
  %i.acd = lshr i64 %i.acb, 5
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !447, !noalias !924
  %i.acg = and i32 %i.aca, 31
  %i.ach = lshr i32 %i.acf, %i.acg
  %i.aci = trunc i32 %i.ach to i1
  br i1 %i.aci, label %.lr.ph.i50.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i, !prof !450, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i: ; preds = %bb.be, %.lr.ph.i50.i.i.i, %bb.bd, %.loopexit.i34.i.i.i
  %i.acj = phi ptr [ %i.zs, %.loopexit.i34.i.i.i ], [ %i.abd, %bb.bd ], [ %i.abd, %.lr.ph.i50.i.i.i ], [ %i.abd, %bb.be ]
  %i.ack = phi ptr [ %i.zt, %.loopexit.i34.i.i.i ], [ %i.abe, %bb.bd ], [ %i.abe, %.lr.ph.i50.i.i.i ], [ %i.abe, %bb.be ]
  %i.acl = phi ptr [ %.lcssa28.sink.i.ph.i35.i.i.i, %.loopexit.i34.i.i.i ], [ %i.abp, %bb.bd ], [ %i.acc, %bb.be ], [ %i.abw, %.lr.ph.i50.i.i.i ] ; 3 uses
  %i.acm = ptrtoint ptr %i.acl to i64
  %i.acn = ptrtoint ptr %i.acj to i64
  %i.aco = sub i64 %i.acm, %i.acn
  %i.acp = ashr exact i64 %i.aco, 4               ; 2 uses
  %i.acq = trunc i64 %i.acp to i32
  %i.acr = and i32 %i.acq, 31
  %i.acs = shl nuw i32 1, %i.acr
  %i.act = lshr i64 %i.acp, 5
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.act ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !447, !noalias !924
  %i.acw = or i32 %i.acs, %i.acv
  store i32 %i.acw, ptr %i.acu, align 4, !tbaa !447, !noalias !924
  %i.acx = load i32, ptr %i.ie, align 8, !tbaa !452, !noalias !924
  %i.acy = add i32 %i.acx, 1
  store i32 %i.acy, ptr %i.ie, align 8, !tbaa !452, !noalias !924
  store ptr %i.wi, ptr %i.acl, align 8, !tbaa !443, !noalias !924
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  store i64 0, ptr %i.acz, align 8, !tbaa !453, !noalias !924
  br label %bb.bf

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i: ; preds = %.lr.ph.i.i45.i.i.i
  %.phi.trans.insert77.i.i.i = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %.pre78.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i, align 8, !tbaa !453, !noalias !924
  %i.ada = icmp ugt i64 %.pre78.i.i.i, %i.sc
  %i.adb = select i1 %i.ada, i64 %i.ru, i64 0
  %spec.select.i = sub i64 %i.zr, %i.adb
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i
  %.0.i.i.i = phi i64 [ %i.zr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.thread.i.i.i ], [ %spec.select.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit47.i.i.i ] ; 3 uses
  %i.adc = icmp ult i64 %.0.i.i.i, %i.sp
  %i.add = sub nuw i64 %i.sp, %.0.i.i.i
  %i.ade = sub nuw i64 %.0.i.i.i, %i.sp
  %i.adf = select i1 %i.adc, i64 %i.add, i64 %i.ade
  %i.adg = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.adh = fmul double %i.adg, %i.wg
  %i.adi = add i64 %i.adf, 1
  %i.adj = uitofp i64 %i.adi to double
  %i.adk = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558, !noalias !924
  %i.adl = call double @pow(double noundef %i.adj, double noundef %i.adk) #30, !noalias !924
  %i.adm = fdiv double %i.adh, %i.adl
  %i.adn = fadd double %i.wh, %i.adm              ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.02466.i.i.i, i64 8 ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.ado, %i.wf
  br i1 %.not28.i.i.i, label %.loopexit.i.i37.i, label %bb.aw

.loopexit.i.i37.i:                                ; preds = %bb.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i, %.lr.ph69.i.i.i
  %.sroa.9.2.i = phi double [ %.sroa.9.1.i, %.lr.ph69.i.i.i ], [ %.sroa.9.1.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i ], [ %i.adn, %bb.bf ] ; 2 uses
  %i.adp = phi double [ %i.sh, %.lr.ph69.i.i.i ], [ %i.sh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i ], [ %i.adn, %bb.bf ] ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.02568.i.i.i, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.adq, %i.sg
  br i1 %.not.i17.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i, label %.lr.ph69.i.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i: ; preds = %.loopexit.i.i37.i
  %.val11.pr.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !431, !noalias !924
  %.val.pre.i.i = load ptr, ptr %3, align 8, !tbaa !42, !noalias !924
  br label %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i

_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i: ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i
  %.sroa.9.3.i = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.sroa.9.2.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %i.adr = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %i.adp, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ]
  %.val.i.i = phi ptr [ %.val.pre42.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.val.pre.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %.val11.pr.i.i = phi i32 [ %.val11.pr.pre40.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.thread.i.i ], [ %.val11.pr.pre.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.loopexit.i.i ] ; 2 uses
  %i.ads = zext i32 %.val11.pr.i.i to i64
  %.idx.i19.i.i = shl nuw nsw i64 %i.ads, 3
  %i.adt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i19.i.i
  %.not17.i.i.i = icmp eq i32 %.val11.pr.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %.lr.ph19.i.i.i

.lr.ph19.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i
  %i.adu = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), align 8, !noalias !924
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i20.i.i, %.lr.ph19.i.i.i
  %.sroa.9.4.i = phi double [ %.sroa.9.3.i, %.lr.ph19.i.i.i ], [ %.sroa.9.5.i, %.loopexit.i20.i.i ] ; 3 uses
  %i.adv = phi double [ %i.adr, %.lr.ph19.i.i.i ], [ %i.afl, %.loopexit.i20.i.i ] ; 3 uses
  %.018.i.i.i = phi ptr [ %.val.i.i, %.lr.ph19.i.i.i ], [ %i.afm, %.loopexit.i20.i.i ] ; 2 uses
  %i.adw = load ptr, ptr %.018.i.i.i, align 8, !tbaa !443, !noalias !924 ; 6 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 152
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !479, !noalias !924
  %i.adz = add i64 %i.ady, 1
  %i.aea = icmp ult i64 %i.adz, 2
  br i1 %i.aea, label %.loopexit.i20.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adw, i64 124
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !930, !noalias !924
  %i.aed = zext i32 %i.aec to i64
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adw, i64 40
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adw, i64 48
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.aei = zext i32 %i.aeh to i64
  %.idx20.i.i.i = shl nuw nsw i64 %i.aei, 3
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 %.idx20.i.i.i
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adw, i64 56
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !42, !noalias !924 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 64
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !431, !noalias !924 ; 2 uses
  %i.aeo = zext i32 %i.aen to i64
  %.idx21.i.i.i = shl nuw nsw i64 %i.aeo, 4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ael, i64 %.idx21.i.i.i
  %i.aeq = icmp ne i32 %i.aeh, 0
  %i.aer = icmp ne i32 %i.aen, 0
  %.not3.i14.i.i.i = select i1 %i.aeq, i1 %i.aer, i1 false
  br i1 %.not3.i14.i.i.i, label %.lr.ph.i22.i.i, label %.loopexit.i20.i.i

.lr.ph.i22.i.i:                                   ; preds = %bb.bh, %bb.bj
  %.sroa.9.7.i = phi double [ %.sroa.9.8.i, %bb.bj ], [ %.sroa.9.4.i, %bb.bh ]
  %i.aes = phi double [ %i.afg, %bb.bj ], [ %i.adv, %bb.bh ] ; 2 uses
  %.sroa.03.016.i.i.i = phi ptr [ %i.afi, %bb.bj ], [ %i.ael, %bb.bh ] ; 2 uses
  %.sroa.7.015.i.i.i = phi ptr [ %i.afh, %bb.bj ], [ %i.aef, %bb.bh ] ; 2 uses
  %i.aet = load i64, ptr %.sroa.03.016.i.i.i, align 8, !tbaa !923, !noalias !924 ; 2 uses
  %i.aeu = icmp eq i64 %i.aet, 0
  br i1 %i.aeu, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i22.i.i
  %i.aev = load ptr, ptr %.sroa.7.015.i.i.i, align 8, !tbaa !443, !noalias !924
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 120
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !937, !noalias !924
  %i.aey = zext i32 %i.aex to i64
  %i.aez = sub nsw i64 %i.aed, %i.aey
  %4 = call i64 @llvm.abs.i64(i64 %i.aez, i1 true)
  %i.afa = uitofp i64 %i.aet to double
  %i.afb = add nuw nsw i64 %4, 1
  %i.afc = uitofp nneg i64 %i.afb to double
  %i.afd = call double @pow(double noundef %i.afc, double noundef %i.adu) #30, !noalias !924
  %i.afe = fdiv double %i.afa, %i.afd
  %i.aff = fadd double %i.aes, %i.afe             ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i22.i.i
  %.sroa.9.8.i = phi double [ %.sroa.9.7.i, %.lr.ph.i22.i.i ], [ %i.aff, %bb.bi ] ; 2 uses
  %i.afg = phi double [ %i.aes, %.lr.ph.i22.i.i ], [ %i.aff, %bb.bi ] ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.7.015.i.i.i, i64 8 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.03.016.i.i.i, i64 16 ; 2 uses
  %i.afj = icmp ne ptr %i.afh, %i.aej
  %i.afk = icmp ne ptr %i.afi, %i.aep
  %.not3.i.i.i.i = select i1 %i.afj, i1 %i.afk, i1 false
  br i1 %.not3.i.i.i.i, label %.lr.ph.i22.i.i, label %.loopexit.i20.i.i

.loopexit.i20.i.i:                                ; preds = %bb.bj, %bb.bh, %bb.bg
  %.sroa.9.5.i = phi double [ %.sroa.9.4.i, %bb.bg ], [ %.sroa.9.4.i, %bb.bh ], [ %.sroa.9.8.i, %bb.bj ] ; 2 uses
  %i.afl = phi double [ %i.adv, %bb.bg ], [ %i.adv, %bb.bh ], [ %i.afg, %bb.bj ]
  %i.afm = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.afm, %i.adt
  br i1 %.not.i21.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, label %bb.bg

_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i: ; preds = %.loopexit.i20.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, %bb.aq
  %.sroa.9.6.i = phi double [ %.sroa.9.3.i, %_ZN12_GLOBAL__N_118SplitCacheDirected21computeLocalCallScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %bb.aq ], [ %.sroa.9.5.i, %.loopexit.i20.i.i ] ; 2 uses
  %i.afn = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558, !noalias !924 ; 2 uses
  %i.afo = fcmp oeq double %i.afn, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.afo, i1 true, i1 %.not2.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i
  %i.afp = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558, !noalias !924
  %invariant.op = sub i64 1, %i.ru
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i23.i.i
  %i.afq = phi double [ 0.000000e+00, %.lr.ph.i23.i.i ], [ %i.afw, %bb.bk ]
  %.sroa.01.03.i.i.i = phi ptr [ %.sroa.092.6.i, %.lr.ph.i23.i.i ], [ %i.afx, %bb.bk ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.01.03.i.i.i, align 8, !tbaa !453, !noalias !924
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !453, !noalias !924
  %i.afr = uitofp i64 %.sroa.4.0.copyload.i.i.i to double
  %i.afs = fmul double %i.afn, %i.afr
  %.reass.reass.i.reass.i.reass.i.reass.reass = add i64 %.sroa.0.0.copyload.i.i.i, %invariant.op
  %i.aft = uitofp i64 %.reass.reass.i.reass.i.reass.i.reass.reass to double
  %i.afu = call double @pow(double noundef %i.aft, double noundef %i.afp) #30, !noalias !924
  %i.afv = fdiv double %i.afs, %i.afu
  %i.afw = fadd double %i.afq, %i.afv             ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.afx, %.sroa.6.6.i
  br i1 %.not.i24.i.i, label %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, label %bb.bk

_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i: ; preds = %bb.bk, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i
  %.sroa.9.9.i = phi double [ %.sroa.9.6.i, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i ], [ %.sroa.9.6.i, %bb.bk ] ; 2 uses
  %.sroa.12.1.i = phi double [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected16computeJumpScoreERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEmRNS0_10SplitScoreE.exit.i.i ], [ 0.000000e+00, %_ZN12_GLOBAL__N_118SplitCacheDirected26estimatePostSplitBBAddressERKN4llvm11SmallVectorIPNS1_4bolt16BinaryBasicBlockELj0EEEm.exit.i.i ], [ %i.afw, %bb.bk ] ; 2 uses
  %i.afy = fadd double %.sroa.9.9.i, %.sroa.12.1.i
  %i.afz = fadd double %.sroa.990.0139.i, %.sroa.7.0138.i
  %i.aga = fcmp ogt double %i.afy, %i.afz
  br i1 %i.aga, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i
  %.sroa.7.2.i = phi double [ %.sroa.7.0138.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.sroa.9.9.i, %bb.bl ], [ %.sroa.7.0138.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ]
  %.sroa.990.2.i = phi double [ %.sroa.990.0139.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.sroa.12.1.i, %bb.bl ], [ %.sroa.990.0139.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ]
  %.sroa.088.2.i = phi i64 [ %.sroa.088.0140.i, %_ZN12_GLOBAL__N_118SplitCacheDirected22getMostLikelySuccessorEPKN4llvm4bolt16BinaryBasicBlockE.exit.i ], [ %.0141.i, %bb.bl ], [ %.sroa.088.0140.i, %_ZN12_GLOBAL__N_118SplitCacheDirected17computeSplitScoreERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEEmRKSt6vectorINS0_8CallInfoESaISD_EE.exit.i ] ; 3 uses
  %.not.i13 = icmp ugt i64 %i.ik, %.022.lcssa.i
  br i1 %.not.i13, label %bb.v, label %bb.x, !llvm.loop !917

_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit: ; preds = %bb.v, %bb.w
  %i.agb = icmp eq i64 %.sroa.088.2.i, -1
  %.022..i = select i1 %i.agb, i64 %.022.lcssa.i, i64 %.sroa.088.2.i ; 3 uses
  %i.agc = load i32, ptr %i.e, align 8, !tbaa !431 ; 4 uses
  %i.agd = zext i32 %i.agc to i64                 ; 2 uses
  %.not51 = icmp eq i32 %i.agc, 0
  %.pre85 = load ptr, ptr %3, align 8, !tbaa !42  ; 6 uses
  br i1 %.not51, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit
  %xtraiter = and i64 %i.agd, 1
  %i.age = icmp eq i32 %i.agc, 1
  br i1 %i.age, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.agd, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp, %.lr.ph.preheader.new
  %.050 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ags, %bb.bp ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.bp ]
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !443 ; 2 uses
  %.not = icmp ugt i64 %.050, %.022..i
  br i1 %.not, label %bb.bn, label %.lr.ph.1

bb.bn:                                            ; preds = %.lr.ph
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 152
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !479
  %i.agj = add i64 %i.agi, 1
  %.not12 = icmp ult i64 %i.agj, 2
  %spec.select = select i1 %.not12, i32 1, i32 2
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.bn
  %.sink = phi i32 [ %spec.select, %bb.bn ], [ 0, %.lr.ph ]
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 176
  store i32 %.sink, ptr %i.agk, align 8, !tbaa !447
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !443 ; 2 uses
  %.not.1.not = icmp ult i64 %.050, %.022..i
  br i1 %.not.1.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.1
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 152
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !479
  %i.agq = add i64 %i.agp, 1
  %.not12.1 = icmp ult i64 %i.agq, 2
  %spec.select.1 = select i1 %.not12.1, i32 1, i32 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.1
  %.sink.1 = phi i32 [ %spec.select.1, %bb.bo ], [ 0, %.lr.ph.1 ]
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agn, i64 176
  store i32 %.sink.1, ptr %i.agr, align 8, !tbaa !447
  %i.ags = add nuw nsw i64 %.050, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !918

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ags, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %i.agc to i1
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.050.epil.init
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !443 ; 2 uses
  %.not.epil = icmp ugt i64 %.050.epil.init, %.022..i
  br i1 %.not.epil, label %bb.bq, label %.loopexit.loopexit.epilog-lcssa

bb.bq:                                            ; preds = %.lr.ph.epil.preheader
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 152
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !479
  %i.agx = add i64 %i.agw, 1
  %.not12.epil = icmp ult i64 %i.agx, 2
  %spec.select.epil = select i1 %.not12.epil, i32 1, i32 2
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.bq, %.lr.ph.epil.preheader
  %.sink.epil = phi i32 [ %spec.select.epil, %bb.bq ], [ 0, %.lr.ph.epil.preheader ]
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 176
  store i32 %.sink.epil, ptr %i.agy, align 8, !tbaa !447
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit
  %i.agz = phi ptr [ %i.n, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit ], [ %.pre85, %_ZN12_GLOBAL__N_118SplitCacheDirected14findSplitIndexERKN4llvm4bolt14BinaryFunctionERKNS1_11SmallVectorIPNS2_16BinaryBasicBlockELj0EEE.exit ], [ %.pre85, %.loopexit.loopexit.unr-lcssa ], [ %.pre85, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.d
  br i1 %i.aha, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.agz) #30
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
end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_:bb.a
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !431
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_8MCSymbolELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !431
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #30
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = load i32, ptr %i.a, align 8, !tbaa !431
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !431
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !431
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #30
  %i.f = load ptr, ptr %0, align 8, !tbaa !42
  %i.g = load i32, ptr %i.a, align 8, !tbaa !431
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !431
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !431
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SplitFunctions.cpp() #25 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL19AggressiveSplittingE, i32 noundef 0, i32 noundef 0) #30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 120), align 8, !tbaa !181
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4optsL19AggressiveSplittingE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19AggressiveSplittingE, ptr nonnull align 1 dereferenceable(15) @.str, i64 14) #30
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 32), align 8, !tbaa !519
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19AggressiveSplittingE, i64 40), align 8, !tbaa !453
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19AggressiveSplittingE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19AggressiveSplittingE) #30
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4optsL19AggressiveSplittingE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL19SplitAlignThresholdE, i32 noundef 0, i32 noundef 0) #30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 120), align 8, !tbaa !176
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL19SplitAlignThresholdE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19SplitAlignThresholdE, ptr nonnull align 1 dereferenceable(22) @.str.3, i64 21) #30
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 32), align 8, !tbaa !519
  store i64 129, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 40), align 8, !tbaa !453
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 120), align 8, !tbaa !176
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 140), align 4, !tbaa !562
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 136), align 8, !tbaa !1031
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 10), align 2
  %i.c = and i16 %i.b, -97
  %i.d = or disjoint i16 %i.c, 32
  store i16 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19SplitAlignThresholdE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19SplitAlignThresholdE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL19SplitAlignThresholdE) #30
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL19SplitAlignThresholdE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE, i32 noundef 0, i32 noundef 0) #30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 120), align 8, !tbaa !181
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0EN12_GLOBAL__N_135DeprecatedSplitFunctionOptionParserEEE, i64 16), ptr @_ZN4optsL14SplitFunctionsE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_135DeprecatedSplitFunctionOptionParserE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE, ptr nonnull @.str.6, i64 15) #30
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 32), align 8, !tbaa !519
  store i64 30, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitFunctionsE, i64 40), align 8, !tbaa !453
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitFunctionsE) #30
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0EN12_GLOBAL__N_135DeprecatedSplitFunctionOptionParserEED2Ev, ptr nonnull @_ZN4optsL14SplitFunctionsE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL14SplitThresholdE, i32 noundef 0, i32 noundef 0) #30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 120), align 8, !tbaa !176
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL14SplitThresholdE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 144), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL14SplitThresholdE, ptr nonnull align 1 dereferenceable(16) @.str.9, i64 15) #30
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 32), align 8, !tbaa !519
  store i64 208, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 40), align 8, !tbaa !453
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 120), align 8, !tbaa !176
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 140), align 4, !tbaa !562
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 136), align 8, !tbaa !1031
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 10), align 2
  %i.h = and i16 %i.g, -97
  %i.i = or disjoint i16 %i.h, 32
  store i16 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14SplitThresholdE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL14SplitThresholdE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL14SplitThresholdE) #30
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL14SplitThresholdE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL9CallScaleE, i32 noundef 0, i32 noundef 0) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZN4optsL9CallScaleE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 152), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallScaleE, ptr nonnull align 1 dereferenceable(11) @.str.12, i64 10) #30
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 32), align 8, !tbaa !519
  store i64 60, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 40), align 8, !tbaa !453
  store double f0x3FEE666666666666, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 120), align 8, !tbaa !558
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 144), align 8, !tbaa !559
  store double f0x3FEE666666666666, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 136), align 8, !tbaa !1032
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 10), align 2
  %i.l = and i16 %i.k, -97
  %i.m = or disjoint i16 %i.l, 64
  store i16 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallScaleE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallScaleE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallScaleE) #30
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZN4optsL9CallScaleE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL9CallPowerE, i32 noundef 0, i32 noundef 0) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZN4optsL9CallPowerE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 152), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallPowerE, ptr nonnull align 1 dereferenceable(11) @.str.15, i64 10) #30
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 32), align 8, !tbaa !519
  store i64 48, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 40), align 8, !tbaa !453
  store double 5.000000e-02, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 120), align 8, !tbaa !558
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 144), align 8, !tbaa !559
  store double 5.000000e-02, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 136), align 8, !tbaa !1032
  %i.o = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 10), align 2
  %i.p = and i16 %i.o, -97
  %i.q = or disjoint i16 %i.p, 64
  store i16 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9CallPowerE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallPowerE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9CallPowerE) #30
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZN4optsL9CallPowerE, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL9JumpPowerE, i32 noundef 0, i32 noundef 0) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 128), align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZN4optsL9JumpPowerE, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 152), align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9JumpPowerE, ptr nonnull align 1 dereferenceable(11) @.str.18, i64 10) #30
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 32), align 8, !tbaa !519
  store i64 48, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 40), align 8, !tbaa !453
  store double 1.500000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 120), align 8, !tbaa !558
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 144), align 8, !tbaa !559
  store double 1.500000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 136), align 8, !tbaa !1032
  %i.s = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 10), align 2
  %i.t = and i16 %i.s, -97
  %i.u = or disjoint i16 %i.t, 64
  store i16 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9JumpPowerE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9JumpPowerE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #30
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4optsL9JumpPowerE) #30
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZN4optsL9JumpPowerE, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { builtin nounwind allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{null}
!1 = distinct !{!1, !451}
!2 = distinct !{!2, !451}
!3 = distinct !{!3, !451}
!4 = distinct !{!4, !451}
!5 = distinct !{!5, !451}
!6 = distinct !{!6, !451}
!7 = distinct !{!7, !451}
!8 = distinct !{!8, !451}
!9 = distinct !{!9, !451}
!10 = distinct !{!10, !451}
!11 = distinct !{!11, !451}
!12 = distinct !{!12, !451}
!13 = distinct !{!13, !451}
!14 = distinct !{!14, !451}
!15 = distinct !{!15, !451}
!16 = distinct !{!16, !451}
!17 = distinct !{!17, !451}
!18 = distinct !{!18, !451}
!19 = distinct !{!19, !451}
!20 = distinct !{!20, !451}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"vtable pointer", !24, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"any pointer", !25, i64 0}
!32 = !{!"_ZTSSt14_Function_base", !25, i64 0, !31, i64 16}
!33 = !{!32, !31, i64 16}
!34 = !{!"any p2 pointer", !31, i64 0}
!35 = !{!"bool", !25, i64 0}
!36 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !34, i64 0, !26, i64 8, !26, i64 12, !35, i64 16}
!37 = !{!36, !35, i64 16}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!36, !34, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !31, i64 0, !26, i64 8, !26, i64 12}
!42 = !{!41, !31, i64 0}
!43 = !{!"_ZTSN4llvm4bolt14BinaryFunction5StateE", !25, i64 0}
!44 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_8MCSymbolEvEE", !41, i64 0}
!45 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_8MCSymbolELb1EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_8MCSymbolEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_8MCSymbolELj1EEE", !25, i64 0}
!48 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj1EEE", !46, i64 0, !47, i64 16}
!49 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE", !41, i64 0}
!50 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !49, i64 0}
!51 = !{!"_ZTSN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !50, i64 0}
!52 = !{!"_ZTSN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEE", !51, i64 0}
!53 = !{!"p1 _ZTSN4llvm4bolt13BinarySectionE", !31, i64 0}
!54 = !{!"long", !25, i64 0}
!55 = !{!"short", !25, i64 0}
!56 = !{!"p1 _ZTSN4llvm8MCSymbolE", !31, i64 0}
!57 = !{!"p1 _ZTSN4llvm4bolt13BinaryContextE", !31, i64 0}
!58 = !{!"p1 _ZTSN4llvm4bolt14BinaryLoopInfoE", !31, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm4bolt14BinaryLoopInfoELb0EE", !58, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !59, i64 0}
!61 = !{!"_ZTSSt5tupleIJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_ELb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt10unique_ptrIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !63, i64 0}
!65 = !{!"p1 _ZTSN4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEE", !31, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_ELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !70, i64 0}
!72 = !{!"_ZTSSt4lessImE"}
!73 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !72, i64 0}
!74 = !{!"_ZTSSt14_Rb_tree_color", !25, i64 0}
!75 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !31, i64 0}
!76 = !{!"_ZTSSt18_Rb_tree_node_base", !74, i64 0, !75, i64 8, !75, i64 16, !75, i64 24}
!77 = !{!"_ZTSSt15_Rb_tree_header", !76, i64 0, !54, i64 32}
!78 = !{!"_ZTSNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_Rb_tree_implIS3_Lb1EEE", !73, i64 0, !77, i64 8}
!79 = !{!"_ZTSSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE", !78, i64 0}
!80 = !{!"_ZTSSt3setImSt4lessImESaImEE", !79, i64 0}
!81 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairImEE", !31, i64 0}
!82 = !{!"p1 int", !31, i64 0}
!83 = !{!"_ZTSN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEE", !81, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!84 = !{!"_ZTSN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEEE", !83, i64 0}
!85 = !{!"_ZTSN4llvm8DenseSetImNS_12DenseMapInfoImvEEEE", !84, i64 0}
!86 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPS2_EE", !31, i64 0}
!87 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE", !86, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!88 = !{!"p1 omnipotent char", !31, i64 0}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !88, i64 0}
!90 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !54, i64 8, !25, i64 16}
!91 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_4bolt14BinaryFunctionEEE", !36, i64 0}
!92 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_4bolt14BinaryFunctionELj1EEE", !91, i64 0, !25, i64 24}
!93 = !{!"p1 _ZTSN4llvm4bolt14BinaryFunctionE", !31, i64 0}
!94 = !{!"float", !25, i64 0}
!95 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt19IndirectCallProfileEvEE", !41, i64 0}
!96 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt19IndirectCallProfileELb1EEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt19IndirectCallProfileEEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4bolt19IndirectCallProfileELj4EEE", !25, i64 0}
!99 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EEE", !97, i64 0, !98, i64 16}
!100 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImPNS_9DWARFUnitEEE", !31, i64 0}
!101 = !{!"_ZTSN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEE", !100, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!102 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockEEE", !31, i64 0}
!103 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !102, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!104 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIjjEvEE", !41, i64 0}
!105 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIjjEEE", !105, i64 0}
!107 = !{!"_ZTSN4llvm11SmallVectorISt4pairIjjELj0EEE", !106, i64 0}
!108 = !{!"_ZTSSt4lessIjE"}
!109 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !108, i64 0}
!110 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !109, i64 0, !77, i64 8}
!111 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE", !110, i64 0}
!112 = !{!"_ZTSSt3mapIjPN4llvm8MCSymbolESt4lessIjESaISt4pairIKjS2_EEE", !111, i64 0}
!113 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !109, i64 0, !77, i64 8}
!114 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !113, i64 0}
!115 = !{!"_ZTSSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE", !114, i64 0}
!116 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_16MCCFIInstructionEvEE", !41, i64 0}
!117 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EEE", !116, i64 0}
!118 = !{!"_ZTSN4llvm15SmallVectorImplINS_16MCCFIInstructionEEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm11SmallVectorINS_16MCCFIInstructionELj0EEE", !118, i64 0}
!120 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIiNS_11SmallVectorIiLj4EEEEE", !31, i64 0}
!121 = !{!"_ZTSN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEE", !120, i64 0, !82, i64 8, !26, i64 16, !26, i64 20}
!122 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEvEE", !41, i64 0}
!123 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EEE", !124, i64 0}
!126 = !{!"_ZTSN4llvm8ArrayRefIhEE", !88, i64 0, !54, i64 8}
!127 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !41, i64 0}
!128 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !127, i64 0}
!129 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !128, i64 0}
!130 = !{!"_ZTSN4llvm11SmallVectorImLj0EEE", !129, i64 0}
!131 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj0EEE", !46, i64 0}
!132 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt8optionalINS_4bolt11FragmentNumEEvEE", !41, i64 0}
!133 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt8optionalINS_4bolt11FragmentNumEELb1EEE", !132, i64 0}
!134 = !{!"_ZTSN4llvm15SmallVectorImplISt8optionalINS_4bolt11FragmentNumEEEE", !133, i64 0}
!135 = !{!"_ZTSN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EEE", !134, i64 0}
!136 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !109, i64 0, !77, i64 8}
!137 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE", !137, i64 0}
!139 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !73, i64 0, !77, i64 8}
!140 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE", !139, i64 0}
!141 = !{!"_ZTSSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE", !140, i64 0}
!142 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairImmEvEE", !41, i64 0}
!143 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairImmEEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm11SmallVectorISt4pairImmELj0EEE", !144, i64 0}
!146 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !73, i64 0, !77, i64 8}
end_hunk_1
