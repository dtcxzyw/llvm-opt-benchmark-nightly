Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AtomicExpandPass?download=true
inline.NumInlined: 2876
inline.NumDeleted: 1349
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm28createAtomicExpandLegacyPassEv:bb.a

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16AtomicExpandPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.(anonymous namespace)::AtomicExpandImpl", align 8 ; 6 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_8FunctionEJEE3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !423  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54, !noalias !424 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !425, !noalias !424 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55, !noalias !424 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = mul i64 ptrtoint (ptr @_ZN4llvm29LibcallLoweringModuleAnalysis3KeyE to i64), -4658895280553007687 ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = shl i64 %i.q, 32
  %i.w = and i64 %i.u, 4294967295
  %i.x = or disjoint i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.n, %i.ab                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56, !noalias !426
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !57

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %i.ak = phi i64 [ %i.au, %bb.c ], [ %i.ad, %bb.b ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.at, %bb.c ], [ %i.ac, %bb.b ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !429, !noalias !426
  %i.an = icmp eq ptr %i.am, @_ZN4llvm29LibcallLoweringModuleAnalysis3KeyE
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !426
  %i.aq = icmp eq ptr %i.e, %i.ap
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.at = and i32 %i.as, %i.n                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56, !noalias !426
  %i.ay = and i32 %i.at, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !59

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %i.bb = zext i32 %i.l to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.bb
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = zext i32 %i.l to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i, %.loopexit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i ], [ %i.bb, %.loopexit.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi ptr [ %i.al, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i ], [ %i.bc, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.pre-phi.i.i.i
  %i.be = icmp eq ptr %.lcssa.sink.i.i.i.i.i, %i.bd
  br i1 %i.be, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZNK4llvm15AnalysisManagerINS_6ModuleEJEE15getCachedResultINS_29LibcallLoweringModuleAnalysisEEEPNT_6ResultERS1_.exit.i

_ZNK4llvm15AnalysisManagerINS_6ModuleEJEE15getCachedResultINS_29LibcallLoweringModuleAnalysisEEEPNT_6ResultERS1_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !431
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !62 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br i1 %.not.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZNK4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_8FunctionEJEE6Result15getCachedResultINS_29LibcallLoweringModuleAnalysisES2_EEPNT_6ResultERT0_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZNK4llvm15AnalysisManagerINS_6ModuleEJEE15getCachedResultINS_29LibcallLoweringModuleAnalysisEEEPNT_6ResultERS1_.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.bl, align 8, !tbaa !65, !alias.scope !432
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.bm, align 1, !tbaa !66, !alias.scope !432
  store ptr @.str, ptr %5, align 8, !tbaa !67, !alias.scope !432
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.64, i64 55), ptr %i.bn, align 8, !tbaa !67, !alias.scope !432
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 29, ptr %i.bo, align 8, !tbaa !67, !alias.scope !432
  store ptr %5, ptr %4, align 8, !alias.scope !433
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %i.bp, align 8, !alias.scope !433
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.bq, align 8, !tbaa !65, !alias.scope !433
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.br, align 1, !tbaa !66, !alias.scope !433
  call void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 8 dereferenceable(34) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !435, !alias.scope !436
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.bs, align 8, !tbaa !437, !alias.scope !436
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bu, align 8, !tbaa !438, !alias.scope !436
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !435, !alias.scope !436
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.bx, align 8, !tbaa !437, !alias.scope !436
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.by, align 4, !tbaa !439, !alias.scope !436
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.bz, align 8, !tbaa !438, !alias.scope !436
  store i32 1, ptr %i.bt, align 4, !tbaa !439, !alias.scope !436, !noalias !440
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !26, !alias.scope !436, !noalias !440
  br label %bb.g

_ZNK4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_8FunctionEJEE6Result15getCachedResultINS_29LibcallLoweringModuleAnalysisES2_EEPNT_6ResultERT0_.exit: ; preds = %_ZNK4llvm15AnalysisManagerINS_6ModuleEJEE15getCachedResultINS_29LibcallLoweringModuleAnalysisEEEPNT_6ResultERS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ca = load ptr, ptr %1, align 8, !tbaa !442   ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(1728) %i.ca, ptr noundef nonnull align 8 dereferenceable(140) %2) #18, !inline_history !0 ; 6 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 328
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(344) %i.ce) #18, !inline_history !0
  br i1 %i.ci, label %bb.d, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_8FunctionEJEE6Result15getCachedResultINS_29LibcallLoweringModuleAnalysisES2_EEPNT_6ResultERT0_.exit
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(344) %i.ce) #18, !inline_history !0
  store ptr %i.cm, ptr %6, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !76
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !81
  %i.cp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_19TargetSubtargetInfoENS_19LibcallLoweringInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JRKNS_5RTLIB19RuntimeLibcallsInfoERS3_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(12408) %i.co, ptr noundef nonnull align 8 dereferenceable(344) %i.ce), !noalias !443
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !82
  %i.cs = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %2) #18
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.sroa.036.047.i = load ptr, ptr %i.cu, align 8, !tbaa !86 ; 2 uses
  %.not48.i = icmp eq ptr %.sroa.036.047.i, %i.cv
  br i1 %.not48.i, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit.thread, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.d, %._crit_edge.i
  %.sroa.036.051.i = phi ptr [ %.sroa.036.0.i, %._crit_edge.i ], [ %.sroa.036.047.i, %bb.d ] ; 2 uses
  %.02750.i = phi i1 [ %.1.lcssa.i, %._crit_edge.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.035.049.i = phi ptr [ %.sroa.035.1.lcssa.i, %._crit_edge.i ], [ %i.cv, %bb.d ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.036.051.i, i64 24 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !89 ; 2 uses
  %.not4142.i = icmp eq ptr %i.cx, %i.cw
  br i1 %.not4142.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph53.i
  %.sroa.035.1.lcssa.i = phi ptr [ %.sroa.035.049.i, %.lr.ph53.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i1 [ %.02750.i, %.lr.ph53.i ], [ %spec.select40.i, %.lr.ph.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.036.051.i, i64 8
  %.sroa.036.0.i = load ptr, ptr %i.cy, align 8, !tbaa !86 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.036.0.i, %.sroa.035.1.lcssa.i
  br i1 %.not.i, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit, label %.lr.ph53.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.lr.ph53.i, %.lr.ph.i
  %.145.i = phi i1 [ %spec.select40.i, %.lr.ph.i ], [ %.02750.i, %.lr.ph53.i ]
  %.sroa.031.044.i = phi ptr [ %7, %.lr.ph.i ], [ %i.cx, %.lr.ph53.i ] ; 2 uses
  %.sroa.035.143.i = phi ptr [ %spec.select.i, %.lr.ph.i ], [ %.sroa.035.049.i, %.lr.ph53.i ]
  %7 = load ptr, ptr %.sroa.031.044.i, align 8, !tbaa !89 ; 2 uses
  %8 = getelementptr inbounds i8, ptr %.sroa.031.044.i, i64 -24
  %i.cz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AtomicExpandImpl18processAtomicInstrEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %8) ; 2 uses
  %spec.select.i = select i1 %i.cz, ptr %i.cv, ptr %.sroa.035.143.i ; 2 uses
  %spec.select40.i = select i1 %i.cz, i1 true, i1 %.145.i ; 2 uses
  %.not41.i = icmp eq ptr %7, %i.cw
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit: ; preds = %._crit_edge.i
  br i1 %.1.lcssa.i, label %bb.e, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit.thread

_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit.thread: ; preds = %bb.d, %_ZNK4llvm25OuterAnalysisManagerProxyINS_15AnalysisManagerINS_6ModuleEJEEENS_8FunctionEJEE6Result15getCachedResultINS_29LibcallLoweringModuleAnalysisES2_EEPNT_6ResultERT0_.exit, %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit
  %.ptr1.i10 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i10, ptr %0, align 8, !tbaa !435, !alias.scope !444
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.da, align 8, !tbaa !437, !alias.scope !444
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dc, align 8, !tbaa !438, !alias.scope !444
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !435, !alias.scope !444
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.df, align 8, !tbaa !437, !alias.scope !444
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.dg, align 4, !tbaa !439, !alias.scope !444
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dh, align 8, !tbaa !438, !alias.scope !444
  store i32 1, ptr %i.db, align 4, !tbaa !439, !alias.scope !444, !noalias !445
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i10, align 8, !tbaa !26, !alias.scope !444, !noalias !445
  br label %bb.f

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, i8 0, i64 64, i1 false), !alias.scope !446
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dj, ptr %0, align 8, !tbaa !435, !alias.scope !446
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.dk, align 8, !tbaa !437, !alias.scope !446
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !439, !alias.scope !446
  store i8 1, ptr %i.di, align 8, !tbaa !438, !alias.scope !446
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !435, !alias.scope !446
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.do, align 8, !tbaa !437, !alias.scope !446
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dp, align 8, !tbaa !438, !alias.scope !446
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvmplERKNS_5TwineES2_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare void @_ZN4llvm40initializeLibcallLoweringInfoWrapperPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN4llvm30initializeTargetPassConfigPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_118AtomicExpandLegacyEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_118AtomicExpandLegacy2IDE, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_118AtomicExpandLegacyE, i64 16), ptr %i.a, align 8, !tbaa !41
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118AtomicExpandLegacyD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_118AtomicExpandLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm26LibcallLoweringInfoWrapper2IDE) #18 ; 0 uses
  tail call void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #18
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_118AtomicExpandLegacy13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.(anonymous namespace)::AtomicExpandImpl", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull @_ZN4llvm16TargetPassConfig2IDE) #18 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456  ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !458  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !458  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.h, %i.j
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !461
  %.not.i3.i.i = icmp eq ptr %i.k, @_ZN4llvm26LibcallLoweringInfoWrapper2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.h, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.l, %i.j
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !461
  %.not.i.i.i = icmp eq ptr %i.m, @_ZN4llvm26LibcallLoweringInfoWrapper2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.h, %bb.b ], [ %i.l, %.lr.ph.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %_ZN4llvm26LibcallLoweringInfoWrapper9getResultERKNS_6ModuleE.exit

bb.c:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !464
  %i.v = tail call noundef nonnull align 8 dereferenceable(12408) ptr @_ZN4llvm25RuntimeLibraryInfoWrapper8getRTLCIERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(24864) %i.u, ptr noundef nonnull align 8 dereferenceable(1288) %i.s)
  store ptr %i.v, ptr %i.p, align 8, !tbaa !81
  br label %_ZN4llvm26LibcallLoweringInfoWrapper9getResultERKNS_6ModuleE.exit

_ZN4llvm26LibcallLoweringInfoWrapper9getResultERKNS_6ModuleE.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(1728) %i.f, ptr noundef nonnull align 8 dereferenceable(140) %1) #18, !inline_history !0 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(344) %i.z) #18, !inline_history !0
  br i1 %i.ad, label %bb.d, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit

bb.d:                                             ; preds = %_ZN4llvm26LibcallLoweringInfoWrapper9getResultERKNS_6ModuleE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(344) %i.z) #18, !inline_history !0
  store ptr %i.ai, ptr %2, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.z, ptr %i.a, align 8, !tbaa !76
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ak = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_19TargetSubtargetInfoENS_19LibcallLoweringInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JRKNS_5RTLIB19RuntimeLibcallsInfoERS3_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(12408) %i.aj, ptr noundef nonnull align 8 dereferenceable(344) %i.z), !noalias !465
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !82
  %i.an = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %.sroa.036.047.i = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 2 uses
  %.not48.i = icmp eq ptr %.sroa.036.047.i, %i.aq
  br i1 %.not48.i, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.d, %._crit_edge.i
  %.sroa.036.051.i = phi ptr [ %.sroa.036.0.i, %._crit_edge.i ], [ %.sroa.036.047.i, %bb.d ] ; 2 uses
  %.02750.i = phi i1 [ %.1.lcssa.i, %._crit_edge.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.035.049.i = phi ptr [ %.sroa.035.1.lcssa.i, %._crit_edge.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.036.051.i, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !89 ; 2 uses
  %.not4142.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not4142.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph53.i
  %.sroa.035.1.lcssa.i = phi ptr [ %.sroa.035.049.i, %.lr.ph53.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i1 [ %.02750.i, %.lr.ph53.i ], [ %spec.select40.i, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.036.051.i, i64 8
  %.sroa.036.0.i = load ptr, ptr %i.at, align 8, !tbaa !86 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.036.0.i, %.sroa.035.1.lcssa.i
  br i1 %.not.i9, label %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit, label %.lr.ph53.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.lr.ph53.i, %.lr.ph.i
  %.145.i = phi i1 [ %spec.select40.i, %.lr.ph.i ], [ %.02750.i, %.lr.ph53.i ]
  %.sroa.031.044.i = phi ptr [ %3, %.lr.ph.i ], [ %i.as, %.lr.ph53.i ] ; 2 uses
  %.sroa.035.143.i = phi ptr [ %spec.select.i, %.lr.ph.i ], [ %.sroa.035.049.i, %.lr.ph53.i ]
  %3 = load ptr, ptr %.sroa.031.044.i, align 8, !tbaa !89 ; 2 uses
  %4 = getelementptr inbounds i8, ptr %.sroa.031.044.i, i64 -24
  %i.au = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116AtomicExpandImpl18processAtomicInstrEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4) ; 2 uses
  %spec.select.i = select i1 %i.au, ptr %i.aq, ptr %.sroa.035.143.i ; 2 uses
  %spec.select40.i = select i1 %i.au, i1 true, i1 %.145.i ; 2 uses
  %.not41.i = icmp eq ptr %3, %i.ar
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit: ; preds = %._crit_edge.i, %_ZN4llvm26LibcallLoweringInfoWrapper9getResultERKNS_6ModuleE.exit, %bb.d
  %.0.i = phi i1 [ false, %_ZN4llvm26LibcallLoweringInfoWrapper9getResultERKNS_6ModuleE.exit ], [ false, %bb.d ], [ %.1.lcssa.i, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit
  %.0 = phi i1 [ %.0.i, %_ZN12_GLOBAL__N_116AtomicExpandImpl3runERN4llvm8FunctionERKNS1_35LibcallLoweringModuleAnalysisResultEPKNS1_13TargetMachineE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12408) ptr @_ZN4llvm25RuntimeLibraryInfoWrapper8getRTLCIERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(24864) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::AnalysisManager.192", align 8 ; 13 uses
  %3 = alloca %"struct.llvm::RTLIB::RuntimeLibcallsInfo", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12448 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24856 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !474, !range !91, !noundef !92
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4llvm15AnalysisManagerINS_6ModuleEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4llvm22RuntimeLibraryAnalysis3runERKNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::RTLIB::RuntimeLibcallsInfo") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12416) %i.e, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #18
  %i.f = load i8, ptr %i.b, align 8, !tbaa !474, !range !91, !noundef !92
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12416) %i.a, ptr noundef nonnull align 8 dereferenceable(12408) %3, i64 12408, i1 false)
  br i1 %i.g, label %_ZNSt8optionalIN4llvm5RTLIB19RuntimeLibcallsInfoEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !474
  br label %_ZNSt8optionalIN4llvm5RTLIB19RuntimeLibcallsInfoEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

_ZNSt8optionalIN4llvm5RTLIB19RuntimeLibcallsInfoEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8optionalIN4llvm5RTLIB19RuntimeLibcallsInfoEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i: ; preds = %bb.d, %_ZNSt8optionalIN4llvm5RTLIB19RuntimeLibcallsInfoEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !477  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !478
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !479
  %i.z = zext i32 %i.u to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ae = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.as, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.af = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !481 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not8.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i ], [ %i.ak, %bb.e ] ; 3 uses
  %i.al = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !481 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #18, !inline_history !466
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 32) #21
  %.not.i.i.i.i.i2 = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i.i.i.i2, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !467

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i, %bb.e
  %i.ar = add i32 %.0.i3.i.i, -1
  %i.as = and i32 %i.ar, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !468

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ab
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !469

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.t, align 4, !tbaa !477 ; 2 uses
  %i.at = icmp eq i32 %.pr.i, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !478
  %i.av = zext i32 %.pr.i to i64                  ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !484 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit
  %i.be = load ptr, ptr %2, align 8, !tbaa !485
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !486
  %i.bh = zext i32 %i.bc to i64
  %i.bi = add nuw nsw i64 %i.bh, 31
  %i.bj = lshr i64 %i.bi, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !56 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bm = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %i.bx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !488 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #18, !inline_history !470
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i, %bb.g
end_hunk_0
