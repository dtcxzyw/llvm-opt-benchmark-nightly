Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBasicBlock?download=true
inline.NumInlined: 4150
inline.NumDeleted: 1970
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterE:bb.a
  %i.ey = icmp eq ptr %i.b, %i.ex
  %i.ez = select i1 %i.ev, i1 %i.ey, i1 false
  br i1 %i.ez, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i46, label %bb.j, !prof !322

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i44
  %i.fa = add nuw i32 %.017.i.i.i.i.i.i45, 1
  %i.fb = and i32 %i.fa, %i.dv                    ; 3 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 5
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !302, !noalias !850
  %i.fg = and i32 %i.fb, 31
  %i.fh = lshr i32 %i.ff, %i.fg
  %i.fi = trunc i32 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i44, label %.loopexit.i.i.i.i.i38, !prof !323

.loopexit.i.i.i.i.i38:                            ; preds = %bb.j, %bb.i, %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_1clEv.exit"
  %i.fj = zext i32 %i.x to i64                    ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.fj
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i39

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i44
  %.pre.i.i.i47 = zext i32 %i.x to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i39

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i39: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i46, %.loopexit.i.i.i.i.i38
  %.pre-phi.i.i.i40 = phi i64 [ %.pre.i.i.i47, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i46 ], [ %i.fj, %.loopexit.i.i.i.i.i38 ]
  %.lcssa.sink.i.i.i.i.i41 = phi ptr [ %i.et, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i46 ], [ %i.fk, %.loopexit.i.i.i.i.i38 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi.i.i.i40
  %i.fm = icmp eq ptr %.lcssa.sink.i.i.i.i.i41, %i.fl
  br i1 %i.fm, label %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_2clEv.exit", label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i39
  %i.fn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i41, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !846
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !848
  br label %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_2clEv.exit"

"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_2clEv.exit": ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i39, %bb.k
  %i.fr = phi ptr [ %i.fq, %bb.k ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i39 ] ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.fr, null
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.0.i.i43 = select i1 %.not.i.i42, ptr null, ptr %i.fs
  br i1 %i.y, label %.loopexit.i.i.i.i.i52, label %bb.l

bb.l:                                             ; preds = %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_2clEv.exit"
  %i.ft = add i32 %i.x, -1                        ; 2 uses
  %i.fu = mul i64 ptrtoint (ptr @_ZN4llvm19MachineLoopAnalysis3KeyE to i64), -4658895280553007687 ; 2 uses
  %i.fv = lshr i64 %i.fu, 31
  %i.fw = xor i64 %i.fv, %i.fu
  %i.fx = ptrtoint ptr %i.b to i64
  %i.fy = mul i64 %i.fx, -4658895280553007687     ; 2 uses
  %i.fz = lshr i64 %i.fy, 31
  %i.ga = xor i64 %i.fz, %i.fy
  %i.gb = shl i64 %i.fw, 32
  %i.gc = and i64 %i.ga, 4294967295
  %i.gd = or disjoint i64 %i.gc, %i.gb
  %i.ge = mul i64 %i.gd, -4658895280553007687     ; 2 uses
  %i.gf = lshr i64 %i.ge, 31
  %i.gg = xor i64 %i.gf, %i.ge
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.ft, %i.gh                    ; 3 uses
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = lshr i64 %i.gj, 5
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !302, !noalias !851
  %i.gn = and i32 %i.gi, 31
  %i.go = lshr i32 %i.gm, %i.gn
  %i.gp = trunc i32 %i.go to i1
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i.i58, label %.loopexit.i.i.i.i.i52, !prof !319

.lr.ph.i.i.i.i.i.i58:                             ; preds = %bb.l, %bb.m
  %i.gq = phi i64 [ %i.ha, %bb.m ], [ %i.gj, %bb.l ]
  %.017.i.i.i.i.i.i59 = phi i32 [ %i.gz, %bb.m ], [ %i.gi, %bb.l ]
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.gq ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !843, !noalias !851
  %i.gt = icmp eq ptr %i.gs, @_ZN4llvm19MachineLoopAnalysis3KeyE
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !851
  %i.gw = icmp eq ptr %i.b, %i.gv
  %i.gx = select i1 %i.gt, i1 %i.gw, i1 false
  br i1 %i.gx, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i60, label %bb.m, !prof !322

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i58
  %i.gy = add nuw i32 %.017.i.i.i.i.i.i59, 1
  %i.gz = and i32 %i.gy, %i.ft                    ; 3 uses
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = lshr i64 %i.ha, 5
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !302, !noalias !851
  %i.he = and i32 %i.gz, 31
  %i.hf = lshr i32 %i.hd, %i.he
  %i.hg = trunc i32 %i.hf to i1
  br i1 %i.hg, label %.lr.ph.i.i.i.i.i.i58, label %.loopexit.i.i.i.i.i52, !prof !323

.loopexit.i.i.i.i.i52:                            ; preds = %bb.m, %bb.l, %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_2clEv.exit"
  %i.hh = zext i32 %i.x to i64                    ; 2 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.hh
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i53

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i58
  %.pre.i.i.i61 = zext i32 %i.x to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i53

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i53: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i60, %.loopexit.i.i.i.i.i52
  %.pre-phi.i.i.i54 = phi i64 [ %.pre.i.i.i61, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i60 ], [ %i.hh, %.loopexit.i.i.i.i.i52 ]
  %.lcssa.sink.i.i.i.i.i55 = phi ptr [ %i.gr, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.loopexit.i.i.i60 ], [ %i.hi, %.loopexit.i.i.i.i.i52 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi.i.i.i54
  %i.hk = icmp eq ptr %.lcssa.sink.i.i.i.i.i55, %i.hj
  br i1 %i.hk, label %_ZNK4llvm15AnalysisManagerINS_15MachineFunctionEJEE15getCachedResultINS_19MachineLoopAnalysisEEEPNT_6ResultERS1_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i53
  %i.hl = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i55, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !846
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !848
  br label %_ZNK4llvm15AnalysisManagerINS_15MachineFunctionEJEE15getCachedResultINS_19MachineLoopAnalysisEEEPNT_6ResultERS1_.exit.i

_ZNK4llvm15AnalysisManagerINS_15MachineFunctionEJEE15getCachedResultINS_19MachineLoopAnalysisEEEPNT_6ResultERS1_.exit.i: ; preds = %bb.n, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i53
  %i.hp = phi ptr [ %i.ho, %bb.n ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_15MachineFunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit.i.i.i53 ] ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.hp, null
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.0.i.i57 = select i1 %.not.i.i56, ptr null, ptr %i.hq
  %i.hr = insertelement <4 x ptr> poison, ptr %.0.i.i, i64 0
  %i.hs = insertelement <4 x ptr> %i.hr, ptr %.0.i.i29, i64 1
  %i.ht = insertelement <4 x ptr> %i.hs, ptr %.0.i.i43, i64 2
  %i.hu = insertelement <4 x ptr> %i.ht, ptr %.0.i.i57, i64 3
  br label %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_3clEv.exit"

"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_3clEv.exit": ; preds = %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_0clEv.exit.thread", %_ZNK4llvm15AnalysisManagerINS_15MachineFunctionEJEE15getCachedResultINS_19MachineLoopAnalysisEEEPNT_6ResultERS1_.exit.i
  %i.hv = phi <4 x ptr> [ %i.hu, %_ZNK4llvm15AnalysisManagerINS_15MachineFunctionEJEE15getCachedResultINS_19MachineLoopAnalysisEEEPNT_6ResultERS1_.exit.i ], [ %i.r, %"_ZZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_PNS_4PassEPNS_15AnalysisManagerINS_15MachineFunctionEJEEEPSt6vectorINS_15SparseBitVectorILj128EEESaISA_EEPNS_21MachineDomTreeUpdaterEENK3$_0clEv.exit.thread" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store <4 x ptr> %i.hv, ptr %6, align 8, !tbaa !280
  %i.hw = call noundef ptr @_ZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_RKNS0_25SplitCriticalEdgeAnalysesEPSt6vectorINS_15SparseBitVectorILj128EEESaIS7_EEPNS_21MachineDomTreeUpdaterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret ptr %i.hw
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm17MachineBasicBlock17SplitCriticalEdgeEPS0_RKNS0_25SplitCriticalEdgeAnalysesEPSt6vectorINS_15SparseBitVectorILj128EEESaIS7_EEPNS_21MachineDomTreeUpdaterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.288", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.288", align 8 ; 10 uses
  %7 = alloca %class.SlotIndexUpdateDelegate, align 8 ; 13 uses
  %8 = alloca %class.SlotIndexUpdateDelegate, align 8 ; 13 uses
  %9 = alloca %"class.llvm::SmallVector.434", align 8 ; 8 uses
  %10 = alloca %"class.llvm::DebugLoc", align 8   ; 5 uses
  %11 = alloca %"class.llvm::DebugLoc", align 8   ; 6 uses
  %12 = alloca %"class.llvm::SmallSet", align 8   ; 15 uses
  %13 = alloca %"class.llvm::Register", align 4   ; 5 uses
  %14 = alloca %"struct.std::pair.546", align 8
  %15 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %16 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %17 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %18 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !873
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock20canSplitCriticalEdgeEPKS0_PKNS_15MachineLoopInfoE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %1, ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.dr

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278  ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.h ; 2 uses
  %i.j = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef null, i64 undef, i8 0) #32 ; 29 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %i.l, ptr %i.m, align 4, !tbaa !104
  %i.n = tail call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %0) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit.thread, label %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit

_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273, !nonnull !44, !align !241 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(344) %i.s) #32, !inline_history !17 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %i.n) #32, !inline_history !17 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.c, label %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit.thread

bb.c:                                             ; preds = %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !391
  %i.ae = tail call noundef zeroext i1 @_ZN4llvm20MachineJumpTableInfo21ReplaceMBBInJumpTableEjPNS_17MachineBasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.aa, ptr noundef nonnull %1, ptr noundef nonnull %i.j) #32 ; 0 uses
  br label %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit.thread

_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit.thread: ; preds = %bb.b, %bb.c, %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit
  %i.af = phi i1 [ false, %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit ], [ true, %bb.c ], [ false, %bb.b ]
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !278 ; 3 uses
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr nonnull align 8 poison, ptr noundef nonnull %i.j)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !348 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !278
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !348
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.j, ptr %i.aj, align 8, !tbaa !278
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !348
  %i.ak = load ptr, ptr %2, align 8, !tbaa !874   ; 15 uses
  %.not = icmp eq ptr %i.ak, null                 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !390
  tail call void @_ZN4llvm11SlotIndexes15insertMBBInMapsEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(416) %i.am, ptr noundef nonnull %i.j)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 328 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !107
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 336 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !107 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 340
  %i.au = load i32, ptr %i.at, align 4, !tbaa !108
  %.not.i.i = icmp ult i32 %i.as, %i.au
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !322

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 %i.aq)
  br label %_ZN4llvm13LiveIntervals15insertMBBInMapsEPNS_17MachineBasicBlockE.exit

bb.f:                                             ; preds = %bb.d
  %i.av = zext i32 %i.as to i64
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  store i64 %i.aq, ptr %i.ax, align 1
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !107
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ar, align 8, !tbaa !107
  br label %_ZN4llvm13LiveIntervals15insertMBBInMapsEPNS_17MachineBasicBlockE.exit

bb.g:                                             ; preds = %_ZL18findJumpTableIndexRKN4llvm17MachineBasicBlockE.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !875 ; 2 uses
  %.not240 = icmp eq ptr %i.bb, null
  br i1 %.not240, label %_ZN4llvm13LiveIntervals15insertMBBInMapsEPNS_17MachineBasicBlockE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm11SlotIndexes15insertMBBInMapsEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(416) %i.bb, ptr noundef nonnull %i.j)
  br label %_ZN4llvm13LiveIntervals15insertMBBInMapsEPNS_17MachineBasicBlockE.exit

_ZN4llvm13LiveIntervals15insertMBBInMapsEPNS_17MachineBasicBlockE.exit: ; preds = %bb.f, %bb.e, %bb.g, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !876 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !107
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 4, ptr %i.bg, align 4, !tbaa !108
  %.not241 = icmp eq ptr %i.bd, null              ; 2 uses
  br i1 %.not241, label %.loopexit488, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13LiveIntervals15insertMBBInMapsEPNS_17MachineBasicBlockE.exit
  %i.bh = call ptr @_ZN4llvm17MachineBasicBlock23getFirstInstrTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %0) ; 2 uses
  %.not470505 = icmp eq ptr %i.bh, %i.o
  br i1 %.not470505, label %.loopexit488, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.i, %._crit_edge
  %.sroa.0448.0506 = phi ptr [ %i.bw, %._crit_edge ], [ %i.bh, %bb.i ] ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0448.0506, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !344, !noalias !877 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0448.0506, i64 40
  %i.bl = load i24, ptr %i.bk, align 8, !noalias !877
  %i.bm = zext i24 %i.bl to i64                   ; 2 uses
  %i.bn = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0448.0506) #32, !noalias !877
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bq = getelementptr [32 x i8], ptr %i.bj, i64 %i.bm ; 5 uses
  %.not1.i.i.i.i.i = icmp samesign eq i64 %i.bo, %i.bm
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_usesEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph508, %bb.j
  %.sroa.011.0.i.i = phi ptr [ %i.bu, %bb.j ], [ %i.bp, %.lr.ph508 ] ; 3 uses
  %i.br = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !878
  %i.bs = and i32 %i.br, 16777471
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN4llvm12MachineInstr8all_usesEv.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.bq
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i, !llvm.loop !856

_ZN4llvm12MachineInstr8all_usesEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph508
  %.sroa.011.1.i.i = phi ptr [ %i.bp, %.lr.ph508 ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not471503 = icmp eq ptr %.sroa.011.1.i.i, %i.bq
  br i1 %.not471503, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %.critedge, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.ad, %_ZN4llvm12MachineInstr8all_usesEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0448.0506, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 2 uses
  %.not470 = icmp eq ptr %i.bw, %i.o
  br i1 %.not470, label %.loopexit488, label %.lr.ph508

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_usesEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.0440.0504 = phi ptr [ %.sroa.0440.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_usesEv.exit ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0440.0504, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !247 ; 5 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ca = load i32, ptr %.sroa.0440.0504, align 8 ; 3 uses
  %i.cb = lshr i32 %i.ca, 26
  %i.cc = lshr i32 %i.ca, 24
  %.lobit.i = and i32 %i.cc, 1
  %i.cd = xor i32 %.lobit.i, 1
  %i.ce = and i32 %i.cd, %i.cb
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = and i32 %i.ca, 268435456
  %i.ch = icmp ne i32 %i.cg, 0
  %or.cond469 = or i1 %i.ch, %i.cf
  br i1 %or.cond469, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp ult i32 %i.by, 1073741824
  br i1 %i.ci, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm13LiveVariables10getVarInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200) %i.bd, i32 %i.by) #32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !880 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !880 ; 7 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = ashr i64 %i.cq, 5                       ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i259, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i259:                              ; preds = %bb.m
  %i.ct = and i64 %i.cq, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.cl, i64 %i.ct ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i259
  %.052.i.i.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i259 ], [ %i.dg, %bb.r ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i259 ], [ %i.df, %bb.r ] ; 9 uses
  %i.cu = load ptr, ptr %.sroa.032.051.i.i.i.i.i, align 8, !tbaa !321
  %i.cv = icmp eq ptr %i.cu, %.sroa.0448.0506
  br i1 %i.cv, label %_ZN4llvm4findIRSt6vectorIPNS_12MachineInstrESaIS3_EES3_EEDaOT_RKT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !321
  %i.cy = icmp eq ptr %i.cx, %.sroa.0448.0506
  br i1 %i.cy, label %_ZN4llvm4findIRSt6vectorIPNS_12MachineInstrESaIS3_EES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !321
  %i.db = icmp eq ptr %i.da, %.sroa.0448.0506
  br i1 %i.db, label %_ZN4llvm4findIRSt6vectorIPNS_12MachineInstrESaIS3_EES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit835.a, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !321
  %i.de = icmp eq ptr %i.dd, %.sroa.0448.0506
  br i1 %i.de, label %_ZN4llvm4findIRSt6vectorIPNS_12MachineInstrESaIS3_EES3_EEDaOT_RKT0_.exit.i.loopexit.split.loop.exit837, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 32
  %i.dg = add nsw i64 %.052.i.i.i.i.i, -1
  %i.dh = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.n, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !857

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.r
  %.pre59.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i = sub i64 %i.co, %.pre59.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.m
  %.pre-phi61.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.cq, %bb.m ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.cl, %bb.m ] ; 5 uses
  %i.di = ashr exact i64 %.pre-phi61.i.i.i.i.i, 3
  switch i64 %i.di, label %.critedge [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dj = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i.i, align 8, !tbaa !321
  %i.dk = icmp eq ptr %i.dj, %.sroa.0448.0506
  br i1 %i.dk, label %_ZN4llvm4findIRSt6vectorIPNS_12MachineInstrESaIS3_EES3_EEDaOT_RKT0_.exit.i, label %bb.t
end_hunk_0
begin_hunk_1_@_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb:bb.a
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !274
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !274
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !21

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !106  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !302, !noalias !1024
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !319

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !321, !noalias !1024
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !322

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !302, !noalias !1024
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !323

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !247
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !348
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = load i32, ptr %i.bo, align 4
  %.fr18.i = freeze i32 %i.bp                     ; 3 uses
  %i.bq = icmp eq i32 %.fr18.i, 0
  %i.br = add i32 %.fr18.i, -1                    ; 2 uses
  %i.bs = zext i32 %.fr18.i to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bs ; 3 uses
  br i1 %i.bq, label %.split16.us.i30, label %.split.i17

.split.i17:                                       ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %.sroa.010.0.i18 = phi ptr [ %.sroa.0.1.i.i.i.i20, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21 ], [ %1, %bb.e ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.010.0.i18, %i.bj
  br i1 %i.bu, label %.split16.us.i30, label %bb.f

.split16.us.i30:                                  ; preds = %.split.i17, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !103
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

bb.f:                                             ; preds = %.split.i17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19 = load i64, ptr %.sroa.010.0.i18, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28: ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !274
  %i.cg = and i32 %i.cf, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !274
  %i.cl = and i32 %i.ck, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, !llvm.loop !5

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %bb.f
  %.sroa.0.1.i.i.i.i20 = phi ptr [ %i.cc, %bb.f ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ], [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ] ; 3 uses
  %i.cm = ptrtoint ptr %.sroa.0.1.i.i.i.i20 to i64
  %i.cn = mul i64 %i.cm, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.br, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !302, !noalias !1025
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !319

.lr.ph.i.i.i.i26:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %bb.g
  %i.cz = phi i64 [ %i.df, %bb.g ], [ %i.cs, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %.017.i.i.i.i27 = phi i32 [ %i.de, %bb.g ], [ %i.cr, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !321, !noalias !1025
  %i.dc = icmp eq ptr %.sroa.0.1.i.i.i.i20, %i.db
  br i1 %i.dc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, label %bb.g, !prof !322

bb.g:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.dd = add nuw i32 %.017.i.i.i.i27, 1
  %i.de = and i32 %i.dd, %i.br                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !302, !noalias !1025
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !323

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21: ; preds = %bb.g, %.lr.ph.i.i.i.i26, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %.lcssa.sink.i.i.i22 = phi ptr [ %i.bt, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %i.da, %.lr.ph.i.i.i.i26 ], [ %i.bt, %bb.g ] ; 2 uses
  %.not.i23 = icmp eq ptr %.lcssa.sink.i.i.i22, %i.bt
  br i1 %.not.i23, label %.split.i17, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit: ; preds = %.split16.us.i30, %.thread.i
  %.sroa.0.2.in.i24 = phi ptr [ %i.ca, %.split16.us.i30 ], [ %i.dm, %.thread.i ]
  %.sroa.0.2.i25 = load i64, ptr %.sroa.0.2.in.i24, align 8, !tbaa !247
  %i.dn = and i64 %.sroa.0.2.i25, -8
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !278
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit
  %.sroa.038.0 = phi ptr [ %i.bg, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.dq, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ] ; 4 uses
  %.sroa.039.0 = phi ptr [ %i.bh, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.do, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !422
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !422 ; 2 uses
  %i.dv = sub i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = and i32 %i.dw, 2147483644               ; 2 uses
  %i.dy = add i32 %i.dx, %i.du
  %i.dz = load ptr, ptr %0, align 8, !tbaa !429   ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, 32                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !430
  %i.ee = icmp ult i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.h, label %bb.i, !prof !322

bb.h:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ef = inttoptr i64 %i.eb to ptr
  store ptr %i.ef, ptr %0, align 8, !tbaa !429
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

bb.i:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.eg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.dz, %bb.h ], [ %i.eg, %bb.i ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %1, ptr %i.eh, align 8, !tbaa !1026
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 %i.dy, ptr %i.ei, align 8, !tbaa !422
  %i.ej = load ptr, ptr %.sroa.038.0, align 8, !tbaa !348 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %.sroa.038.0, ptr %i.ek, align 8, !tbaa !278
  store ptr %i.ej, ptr %.0.i.i.i, align 8, !tbaa !348
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.0.i.i.i, ptr %i.el, align 8, !tbaa !278
  store ptr %.0.i.i.i, ptr %.sroa.038.0, align 8, !tbaa !348
  %i.em = icmp eq i32 %i.dx, 0
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  tail call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nonnull %.0.i.i.i) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  %i.en = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %1, ptr %3, align 8, !tbaa !1028
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !247
  %i.eq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !1029 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i64 %i.en
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !316, !noalias !1034 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !317, !noalias !1034 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !318, !noalias !1034 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !321    ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !302
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !319

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !321
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !322

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !302
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !323, !llvm.loop !25

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !441
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !442
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !322

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !441
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !317
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !316
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !302
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !302
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !442
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !321
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !321
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !247
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !247
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !316, !noalias !1039 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317, !noalias !1039 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !318, !noalias !1039 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !321    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !302
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !319

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !321
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
end_hunk_1
