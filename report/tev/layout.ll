Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/layout?download=true
inline.NumInlined: 1479
inline.NumDeleted: 647
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK7nanogui18AdvancedGridLayout14perform_layoutEP10NVGcontextPNS_6WidgetE:bb.a
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !27
  %i.cx = add nuw i64 %.06096.1.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %._crit_edge.1, label %.lr.ph.1.epil, !llvm.loop !222

._crit_edge.1:                                    ; preds = %._crit_edge.1.loopexit.unr-lcssa, %.lr.ph.1.epil, %._crit_edge102
  %i.cy = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.cz = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %.not9098.1 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not9098.1, label %._crit_edge102.1, label %.lr.ph101.1

.lr.ph101.1:                                      ; preds = %._crit_edge.1, %bb.s
  %.sroa.079.099.1 = phi ptr [ %i.gb, %bb.s ], [ %i.cy, %._crit_edge.1 ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.079.099.1, align 8, !tbaa !45 ; 12 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !56, !range !57, !noundef !58
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.i, label %bb.s

bb.i:                                             ; preds = %.lr.ph101.1
  %i.de = call ptr @__dynamic_cast(ptr nonnull %i.da, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #25
  %.not71.1 = icmp eq ptr %i.de, null
  br i1 %.not71.1, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !84  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = ptrtoint ptr %i.da to i64               ; 2 uses
  %.sroa.01.4.extract.shift.i.i.i.i.i.1 = lshr i64 %i.dh, 32 ; 2 uses
  %i.di = shl i64 %i.dh, 3
  %i.dj = and i64 %i.di, 4294967288
  %i.dk = add nuw nsw i64 %i.dj, 8
  %i.dl = xor i64 %i.dk, %.sroa.01.4.extract.shift.i.i.i.i.i.1
  %i.dm = mul i64 %i.dl, -7070675565921424023     ; 2 uses
  %i.dn = lshr i64 %i.dm, 47
  %i.do = xor i64 %.sroa.01.4.extract.shift.i.i.i.i.i.1, %i.dn
  %i.dp = xor i64 %i.do, %i.dm
  %i.dq = mul i64 %i.dp, -7070675565921424023     ; 2 uses
  %i.dr = lshr i64 %i.dq, 47
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = mul i64 %i.ds, -7070675565921424023
  %i.du = load i32, ptr %i.dg, align 4, !tbaa !107
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @_ZN3tsl2rh6detail9MOD_PRIMEE, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !108
  %i.dy = invoke noundef i64 %i.dx(i64 noundef %i.dt)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1: ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !109 ; 3 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.dy ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !112
  %.not13.i.i.i.i.i.i.1 = icmp slt i16 %i.ec, 0
  %.phi.trans.insert.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 136 ; 2 uses
  br i1 %.not13.i.i.i.i.i.i.1, label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1
  %i.ed = phi ptr [ %i.el, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1 ], [ %i.eb, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1 ] ; 2 uses
  %.015.i.i.i.i.i.i.1 = phi i16 [ %i.ek, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1 ], [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1 ]
  %.0814.i.i.i.i.i.i.1 = phi i64 [ %i.ej, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1 ], [ %i.dy, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !45
  %i.eg = icmp eq ptr %i.ef, %i.da
  br i1 %i.eg, label %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i.1, label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1, !prof !114

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.eh = add i64 %.0814.i.i.i.i.i.i.1, 1         ; 2 uses
  %i.ei = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.1, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.eh, %i.ei
  %i.ej = select i1 %.not.i.i.i.i.i.i.i.1, i64 0, i64 %i.eh ; 2 uses
  %i.ek = add i16 %.015.i.i.i.i.i.i.1, 1          ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.ej ; 2 uses
  %i.em = load i16, ptr %i.el, align 8, !tbaa !112
  %.not.i.i.i.i.i.i.1 = icmp sgt i16 %i.ek, %i.em
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !0

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i.1: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i.1
  %.pre.i.i.i.i.i.i.1 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.1, align 8, !tbaa !113
  br label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i.1

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i.1: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i.1
  %i.en = phi i64 [ %.pre.i.i.i.i.i.i.1, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i.1 ], [ %i.ei, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i.1 ]
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.en
  br label %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i.1

_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i.1
  %.sroa.09.0.i.i.i.i.i.i.1 = phi ptr [ %i.eo, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i.1 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.1 ] ; 2 uses
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 128
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !109
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.et = load i64, ptr %i.es, align 8, !tbaa !113
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.et
  %i.ev = icmp eq ptr %.sroa.09.0.i.i.i.i.i.i.1, %i.eu
  br i1 %i.ev, label %.loopexit107, label %bb.k

bb.k:                                             ; preds = %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i.1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i.1, i64 16
  %.sroa.0.0.copyload.i.1 = load i48, ptr %i.ew, align 8, !tbaa !59 ; 3 uses
  %.sroa.8153.0.extract.shift154 = lshr i48 %.sroa.0.0.copyload.i.1, 8
  %.sroa.10158.0.extract.shift159 = lshr i48 %.sroa.0.0.copyload.i.1, 24
  %i.ex = and i48 %.sroa.8153.0.extract.shift154, 255
  %i.ey = zext nneg i48 %i.ex to i64
  %i.ez = load ptr, ptr %i.bs, align 8, !tbaa !69
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ey ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !27 ; 4 uses
  %i.fc = and i48 %.sroa.10158.0.extract.shift159, 255
  %i.fd = zext nneg i48 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !27 ; 2 uses
  %i.fg = sub nsw i32 %i.ff, %i.fb                ; 2 uses
  %i.fh = invoke i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %i.da, ptr noundef %1)
          to label %bb.l unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %.sroa.12163.0.extract.shift164 = lshr i48 %.sroa.0.0.copyload.i.1, 40
  %.sroa.12163.0.extract.trunc165 = trunc nuw i48 %.sroa.12163.0.extract.shift164 to i8
  %.sroa.8.0.extract.shift149 = lshr i64 %i.fh, 32
  %.sroa.8.0.extract.trunc150 = trunc nuw i64 %.sroa.8.0.extract.shift149 to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.da, i64 60
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27 ; 3 uses
  %.not72.1 = icmp eq i32 %i.fj, 0                ; 2 uses
  %i.fk = select i1 %.not72.1, i32 %.sroa.8.0.extract.trunc150, i32 %i.fj ; 5 uses
  switch i8 %.sroa.12163.0.extract.trunc165, label %bb.p [
    i8 3, label %bb.o
    i8 1, label %bb.n
    i8 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.fl = sub i32 %i.ff, %i.fk
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.fm = sub nsw i32 %i.fg, %i.fk
  %i.fn = sdiv i32 %i.fm, 2
  %i.fo = add nsw i32 %i.fn, %i.fb
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.fp = select i1 %.not72.1, i32 %i.fg, i32 %i.fj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.059.1 = phi i32 [ %i.fb, %bb.l ], [ %i.fb, %bb.o ], [ %i.fo, %bb.n ], [ %i.fl, %bb.m ]
  %.0.1 = phi i32 [ %i.fk, %bb.l ], [ %i.fp, %bb.o ], [ %i.fk, %bb.n ], [ %i.fk, %bb.m ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !59
  %i.fs = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8            ; 2 uses
  %.sroa.12.0.extract.shift126 = lshr i64 %i.ft, 32
  %.sroa.12.0.extract.trunc127 = trunc nuw i64 %.sroa.12.0.extract.shift126 to i32
  %.sroa.10.0.insert.ext143 = zext i32 %.059.1 to i64
  %.sroa.10.0.insert.shift144 = shl nuw i64 %.sroa.10.0.insert.ext143, 32
  %.sroa.0134.0.insert.ext137 = and i64 %i.fr, 4294967295
  %.sroa.0134.0.insert.insert139 = or disjoint i64 %.sroa.10.0.insert.shift144, %.sroa.0134.0.insert.ext137
  store i64 %.sroa.0134.0.insert.insert139, ptr %i.fq, align 8, !tbaa !59
  %.not.1.i.i.i.1 = icmp ne i32 %.0.1, %.sroa.12.0.extract.trunc127
  %i.fu = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.fv = load i8, ptr %i.fu, align 8, !range !57
  %i.fw = trunc nuw i8 %i.fv to i1
  %or.cond.i.1 = select i1 %.not.1.i.i.i.1, i1 %i.fw, i1 false
  br i1 %or.cond.i.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  store i64 -1, ptr %i.fx, align 8, !tbaa !59
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.12.0.insert.ext129 = zext i32 %.0.1 to i64
  %.sroa.12.0.insert.shift130 = shl nuw i64 %.sroa.12.0.insert.ext129, 32
  %.sroa.0.0.insert.ext123 = and i64 %i.ft, 4294967295
  %.sroa.0.0.insert.insert125 = or disjoint i64 %.sroa.12.0.insert.shift130, %.sroa.0.0.insert.ext123
  store i64 %.sroa.0.0.insert.insert125, ptr %i.fs, align 8, !tbaa !59
  %i.fy = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(148) %i.da, ptr noundef %1)
          to label %bb.s unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %bb.i, %.lr.ph101.1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.079.099.1, i64 8 ; 2 uses
  %.not90.1 = icmp eq ptr %i.gb, %i.cz
  br i1 %.not90.1, label %._crit_edge102.loopexit.1, label %.lr.ph101.1

._crit_edge102.loopexit.1:                        ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %._crit_edge102.1

._crit_edge102.1:                                 ; preds = %._crit_edge102.loopexit.1, %._crit_edge.1
  %i.gc = phi ptr [ %.pre, %._crit_edge102.loopexit.1 ], [ %i.bv, %._crit_edge.1 ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.ag

.lr.ph101:                                        ; preds = %._crit_edge, %bb.af
  %.sroa.079.099 = phi ptr [ %i.jg, %bb.af ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.gd = load ptr, ptr %.sroa.079.099, align 8, !tbaa !45 ; 13 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !56, !range !57, !noundef !58
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.t, label %bb.af

bb.t:                                             ; preds = %.lr.ph101
  %i.gh = call ptr @__dynamic_cast(ptr nonnull %i.gd, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6WindowE, i64 0) #25
  %.not71 = icmp eq ptr %i.gh, null
  br i1 %.not71, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !84  ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 96
  %i.gk = ptrtoint ptr %i.gd to i64               ; 2 uses
  %.sroa.01.4.extract.shift.i.i.i.i.i = lshr i64 %i.gk, 32 ; 2 uses
  %i.gl = shl i64 %i.gk, 3
  %i.gm = and i64 %i.gl, 4294967288
  %i.gn = add nuw nsw i64 %i.gm, 8
  %i.go = xor i64 %i.gn, %.sroa.01.4.extract.shift.i.i.i.i.i
  %i.gp = mul i64 %i.go, -7070675565921424023     ; 2 uses
  %i.gq = lshr i64 %i.gp, 47
  %i.gr = xor i64 %.sroa.01.4.extract.shift.i.i.i.i.i, %i.gq
  %i.gs = xor i64 %i.gr, %i.gp
  %i.gt = mul i64 %i.gs, -7070675565921424023     ; 2 uses
  %i.gu = lshr i64 %i.gt, 47
  %i.gv = xor i64 %i.gu, %i.gt
  %i.gw = mul i64 %i.gv, -7070675565921424023
  %i.gx = load i32, ptr %i.gj, align 4, !tbaa !107
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @_ZN3tsl2rh6detail9MOD_PRIMEE, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !108
  %i.hb = invoke noundef i64 %i.ha(i64 noundef %i.gw)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i: ; preds = %bb.u
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 128
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !109 ; 3 uses
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hb ; 2 uses
  %i.hf = load i16, ptr %i.he, align 8, !tbaa !112
  %.not13.i.i.i.i.i.i = icmp slt i16 %i.hf, 0
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 136 ; 2 uses
  br i1 %.not13.i.i.i.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !113
  br label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.hg) #29
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i
  %i.hh = phi ptr [ %i.hp, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i ], [ %i.he, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i = phi i16 [ %i.ho, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i ], [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i ]
  %.0814.i.i.i.i.i.i = phi i64 [ %i.hn, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i ], [ %i.hb, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader.i.i.i.i.i.i ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !45
  %i.hk = icmp eq ptr %i.hj, %i.gd
  br i1 %i.hk, label %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i, label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i, !prof !114

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hl = add i64 %.0814.i.i.i.i.i.i, 1           ; 2 uses
  %i.hm = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hl, %i.hm
  %i.hn = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.hl ; 2 uses
  %i.ho = add i16 %.015.i.i.i.i.i.i, 1            ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hn ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 8, !tbaa !112
  %.not.i.i.i.i.i.i = icmp sgt i16 %i.ho, %i.hq
  br i1 %.not.i.i.i.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i
  %i.hr = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.preheader._ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge_crit_edge.i.i.i.i.i.i ], [ %i.hm, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit.i.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hr
  br label %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i

_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i
  %.sroa.09.0.i.i.i.i.i.i = phi ptr [ %i.hs, %_ZNK3tsl17detail_robin_hash10robin_hashINSt3__14pairIPKN7nanogui6WidgetENS4_18AdvancedGridLayout6AnchorEEENS_9robin_mapIS7_S9_NS2_4hashIS7_EENS2_8equal_toIS7_EENS2_9allocatorISA_EELb0ENS_2rh19prime_growth_policyEE9KeySelectENSK_11ValueSelectESD_SF_SH_Lb0ESJ_E15bucket_for_hashEm.exit._crit_edge.i.i.i.i.i.i ], [ %i.hh, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ht = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 128
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !109
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 136
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !113
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.hx
  %i.hz = icmp eq ptr %.sroa.09.0.i.i.i.i.i.i, %i.hy
  br i1 %i.hz, label %.loopexit107, label %bb.x

.loopexit107:                                     ; preds = %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i, %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i.1
  %i.ia = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull @.str)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.loopexit107
  invoke void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
          to label %.noexc unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %.loopexit107
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ia) #25
  br label %.body

bb.x:                                             ; preds = %_ZN3tsl9robin_mapIPKN7nanogui6WidgetENS1_18AdvancedGridLayout6AnchorENSt3__14hashIS4_EENS7_8equal_toIS4_EENS7_9allocatorINS7_4pairIS4_S6_EEEELb0ENS_2rh19prime_growth_policyEE4findERKS4_.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i = load i48, ptr %i.ic, align 8, !tbaa !59 ; 3 uses
  %.sroa.9.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %i.id = and i48 %.sroa.0.0.copyload.i, 255
  %i.ie = zext nneg i48 %i.id to i64
  %i.if = load ptr, ptr %3, align 16, !tbaa !69
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ie ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !27 ; 4 uses
  %i.ii = and i48 %.sroa.9.0.extract.shift, 255
  %i.ij = zext nneg i48 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !27 ; 2 uses
  %i.im = sub nsw i32 %i.il, %i.ih                ; 2 uses
  %i.in = invoke i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %i.gd, ptr noundef %1)
          to label %bb.y unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %.sroa.11.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.11.0.extract.trunc = trunc i48 %.sroa.11.0.extract.shift to i8
  %.sroa.0147.0.extract.trunc = trunc i64 %i.in to i32
  %i.io = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !27 ; 3 uses
  %.not72 = icmp eq i32 %i.ip, 0                  ; 2 uses
  %i.iq = select i1 %.not72, i32 %.sroa.0147.0.extract.trunc, i32 %i.ip ; 5 uses
  switch i8 %.sroa.11.0.extract.trunc, label %bb.ac [
    i8 3, label %bb.ab
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ir = sub nsw i32 %i.im, %i.iq
  %i.is = sdiv i32 %i.ir, 2
  %i.it = add nsw i32 %i.is, %i.ih
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.iu = sub i32 %i.il, %i.iq
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.iv = select i1 %.not72, i32 %i.im, i32 %i.ip
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.059 = phi i32 [ %i.ih, %bb.y ], [ %i.ih, %bb.ab ], [ %i.it, %bb.z ], [ %i.iu, %bb.aa ]
  %.0 = phi i32 [ %i.iq, %bb.y ], [ %i.iv, %bb.ab ], [ %i.iq, %bb.z ], [ %i.iq, %bb.aa ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %4 = getelementptr i8, ptr %i.gd, i64 44
  %.sroa.10.0.extract.trunc = load i32, ptr %4, align 4, !tbaa !59
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gd, i64 48 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.iy to i32
  %.sroa.12.0.extract.shift = and i64 %i.iy, -4294967296
  %.sroa.10.0.insert.ext = zext i32 %.sroa.10.0.extract.trunc to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 32
  %.sroa.0134.0.insert.ext = zext i32 %.059 to i64
  %.sroa.0134.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.0134.0.insert.ext
  store i64 %.sroa.0134.0.insert.insert, ptr %i.iw, align 8, !tbaa !59
  %.not.i.i.i = icmp ne i32 %.0, %.sroa.0.0.extract.trunc
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  %i.ja = load i8, ptr %i.iz, align 8, !range !57
  %i.jb = trunc nuw i8 %i.ja to i1
  %or.cond.i = select i1 %.not.i.i.i, i1 %i.jb, i1 false
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  store i64 -1, ptr %i.jc, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.insert.ext = zext i32 %.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.0.extract.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ix, align 8, !tbaa !59
  %i.jd = load ptr, ptr %i.gd, align 8, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 96
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(148) %i.gd, ptr noundef %1)
          to label %bb.af unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae, %.lr.ph101, %bb.t
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.079.099, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.jg, %i.bb
  br i1 %.not90, label %._crit_edge102, label %.lr.ph101

.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.r, %bb.ae, %bb.x, %.critedge, %bb.a, %bb.b, %bb.v
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %._crit_edge102.1
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.gc, ptr %i.jh, align 16, !tbaa !70
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !74
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.gc to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.jm) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %._crit_edge102.1, %bb.ag
  %i.jn = load ptr, ptr %3, align 16, !tbaa !69   ; 4 uses
  %.not.i.i.1 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.1, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit.1, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !70
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jq = load ptr, ptr %i.jp, align 16, !tbaa !74
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jn to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jt) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit.1

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit.1: ; preds = %bb.ah, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

.body:                                            ; preds = %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.w ], [ %i.ad, %bb.h ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !69 ; 4 uses
  %.not.i.i77 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i77, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78, label %bb.ai

bb.ai:                                            ; preds = %.body
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.jv, ptr %i.jw, align 16, !tbaa !70
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !74
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.kb) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78: ; preds = %.body, %bb.ai
  %i.kc = load ptr, ptr %3, align 16, !tbaa !69   ; 4 uses
  %.not.i.i77.1 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i77.1, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78.1, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !70
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kf = load ptr, ptr %i.ke, align 16, !tbaa !74
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kc to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.ki) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78.1

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78.1: ; preds = %bb.aj, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 4, !tbaa !27
  store i32 %i.l, ptr %i.g, align 4, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.m, ptr %i.f, align 8, !tbaa !70
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.u = load i32, ptr %i.r, align 4, !tbaa !27
  store i32 %i.u, ptr %i.g, align 4, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.6.0.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %i.t, %.lr.ph.i.preheader ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.f, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.v = ashr exact i64 %i.q, 2
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.e, i64 %i.q, i1 false)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit: ; preds = %._crit_edge.i, %bb.e
  %.not = icmp ugt ptr %1, %2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.z = icmp ult ptr %2, %i.y
  %spec.select.idx = select i1 %i.z, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit
  %.018 = phi ptr [ %2, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit ], [ %spec.select, %bb.f ]
  %i.aa = load i32, ptr %.018, align 4, !tbaa !27
  store i32 %i.aa, ptr %i.e, align 4, !tbaa !27
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ab = ptrtoint ptr %i.g to i64
  %i.ac = sub i64 %i.ab, %i.c
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = add nsw i64 %i.ad, 1                    ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 4611686018427387903
  br i1 %i.af, label %bb.i, label %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  unreachable

_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.i to i64
  %i.ah = sub i64 %i.ag, %i.c                     ; 2 uses
  %.not.i = icmp ult i64 %i.ah, 9223372036854775804
  %i.ai = ashr exact i64 %i.ah, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ae)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 4611686018427387903 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.ak, align 8, !tbaa !121
  %i.al = icmp eq i64 %.0.i, 0
  br i1 %i.al, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit, label %bb.j
end_hunk_0
