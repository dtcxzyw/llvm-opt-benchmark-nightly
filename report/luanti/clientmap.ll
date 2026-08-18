inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef ptr %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.lz)
          to label %.noexc285 unwind label %.loopexit670, !inline_history !520 ; 2 uses

.noexc285:                                        ; preds = %.noexc284
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(28) %i.md)
          to label %.noexc286 unwind label %.loopexit670, !inline_history !520

.noexc286:                                        ; preds = %.noexc285
  %i.mi = add i32 %i.mh, %.0301.i
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc286, %.noexc282
  %.1257.i = phi i32 [ %i.ly, %.noexc286 ], [ %.0256300.i, %.noexc282 ] ; 7 uses
  %.1.i = phi i32 [ %i.mi, %.noexc286 ], [ %.0301.i, %.noexc282 ] ; 7 uses
  %.166.i = phi i32 [ %i.lo, %.noexc286 ], [ %.065303.i, %.noexc282 ] ; 8 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0224.0302.i, i64 16 ; 2 uses
  %.not263.i = icmp eq ptr %i.mj, %i.ku
  br i1 %.not263.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge313.i:                                 ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i
  %.not.i.i.i274 = icmp eq ptr %.sroa.0207.1.i, %.sroa.13.1.i
  br i1 %.not.i.i.i274, label %"._crit_edge313._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i", label %bb.ap

"._crit_edge313._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i": ; preds = %._crit_edge313.i, %._crit_edge.i, %.noexc280
  %.sroa.21220.0.lcssa415.i = phi ptr [ %.sroa.21220.1.i, %._crit_edge313.i ], [ null, %._crit_edge.i ], [ null, %.noexc280 ]
  %.sroa.13.0.lcssa412.i = phi ptr [ %.sroa.0207.1.i, %._crit_edge313.i ], [ null, %._crit_edge.i ], [ null, %.noexc280 ] ; 3 uses
  %.0256.lcssa393408.i = phi i32 [ %.1257.i, %._crit_edge313.i ], [ %.1257.i, %._crit_edge.i ], [ 0, %.noexc280 ]
  %.0.lcssa394406.i = phi i32 [ %.1.i, %._crit_edge313.i ], [ %.1.i, %._crit_edge.i ], [ 0, %.noexc280 ]
  %.065.lcssa395404.i = phi i32 [ %.166.i, %._crit_edge313.i ], [ %.166.i, %._crit_edge.i ], [ 0, %.noexc280 ]
  %.pre342.i = ptrtoint ptr %.sroa.13.0.lcssa412.i to i64
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i"

bb.ap:                                            ; preds = %._crit_edge313.i
  %i.mk = ptrtoint ptr %.sroa.13.1.i to i64
  %i.ml = ptrtoint ptr %.sroa.0207.1.i to i64     ; 6 uses
  %i.mm = sub i64 %i.mk, %i.ml                    ; 2 uses
  %i.mn = sdiv exact i64 %i.mm, 24                ; 5 uses
  %i.mo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mn, i1 true)
  %i.mp = shl nuw nsw i64 %i.mo, 1
  %i.mq = xor i64 %i.mp, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_T1_"(ptr %.sroa.0207.1.i, ptr %.sroa.13.1.i, i64 noundef %i.mq)
  %i.mr = icmp sgt i64 %i.mm, 384
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i276, label %.preheader.i24.i.i.i.i

.lr.ph.i.i.i.i.i276:                              ; preds = %bb.ap
  %i.ms = getelementptr i8, ptr %.sroa.0207.1.i, i64 16 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i.i276
  %indvar.a = phi i64 [ %indvar.next.a, %bb.as ], [ 0, %.lr.ph.i.i.i.i.i276 ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i.i, %bb.as ], [ 24, %.lr.ph.i.i.i.i.i276 ] ; 3 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.as ], [ %.sroa.0207.1.i, %.lr.ph.i.i.i.i.i276 ] ; 5 uses
  %.sroa.08.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0207.1.i, i64 %.sroa.08.020.i.idx.i.i.i.i ; 8 uses
  %i.mt = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.mt, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !tbaa !531
  %i.mu = icmp ult ptr %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.mu, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.ar

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 48
  %i.mw = udiv exact i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %i.mx = and i64 %indvar.a, 1
  %lcmp.mod.not.not.a = icmp eq i64 %i.mx, 0
  br i1 %lcmp.mod.not.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.my = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -24 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 12, i1 false), !tbaa.struct !533
  %i.na = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !30
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 40
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !531
  %i.nd = add nsw i64 %i.mw, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.mw, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ne = icmp eq i64 %indvar.a, 0
  br i1 %i.ne, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.np, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.nf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ng = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.nf, i64 12, i1 false), !tbaa.struct !533
  %i.nh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !30
  %i.nj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !531
  %i.nk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noundef nonnull align 8 dereferenceable(24) %i.nk, i64 12, i1 false), !tbaa.struct !533
  %i.nm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !30
  %i.no = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !531
  %i.np = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.nq = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.nq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0207.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i.i.i.i.i, ptr %i.ms, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.nr = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !531 ; 2 uses
  %i.ns = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.ns, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i
  %i.nt = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.ar ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ar ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !531
  %i.nv = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.nv, align 8, !tbaa !531 ; 2 uses
  %i.nw = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.nw, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", !llvm.loop !535

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ar
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ar ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.nx, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  br label %bb.as

bb.as:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i277 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %.not.i.i.i.i.i277, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", label %bb.aq, !llvm.loop !536

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i": ; preds = %bb.as
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0207.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ny, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.og, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %i.ny, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.nz = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.nz, align 8, !tbaa !531 ; 2 uses
  %i.oa = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.oa, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.ob = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.ob, ptr %i.oc, align 8, !tbaa !531
  %i.od = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !531 ; 2 uses
  %i.oe = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.oe, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i", !llvm.loop !535

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.of, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.og, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !537

.preheader.i24.i.i.i.i:                           ; preds = %bb.ap
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0207.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.oh = getelementptr i8, ptr %.sroa.0207.1.i, i64 16 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %.lr.ph.i27.i.i.i.i
  %.sroa.08.020.i28.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i35.i.i.i.i, %bb.aw ] ; 8 uses
  %.pn19.i29.i.i.i.i = phi ptr [ %.sroa.0207.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.aw ] ; 3 uses
  %i.oi = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 40
  %.val.i.i30.i.i.i.i = load ptr, ptr %i.oi, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i31.i.i.i.i = load ptr, ptr %i.oh, align 8, !tbaa !531
  %i.oj = icmp ult ptr %.val.i.i30.i.i.i.i, %.val1.i.i31.i.i.i.i
  br i1 %i.oj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.ok = ptrtoint ptr %.sroa.08.020.i28.i.i.i.i to i64
  %i.ol = sub i64 %i.ok, %i.ml                    ; 2 uses
  %i.om = icmp sgt i64 %i.ol, 0
  br i1 %i.om, label %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a:         ; preds = %bb.au
  %i.on = getelementptr inbounds nuw i8, ptr %.pn19.i29.i.i.i.i, i64 48
  %24 = udiv exact i64 %i.ol, 24
  br label %.lr.ph.i.i.i.i.i.i43.i.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a
  %.010.i.i.i.i.i.i44.i.i.i.i = phi i64 [ %i.ot, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %24, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.op, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.on, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.i = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a ] ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -24 ; 2 uses
  %i.op = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.op, ptr noundef nonnull align 8 dereferenceable(24) %i.oo, i64 12, i1 false), !tbaa.struct !533
  %i.oq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !30
  %i.os = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -8
  store ptr %i.or, ptr %i.os, align 8, !tbaa !531
  %i.ot = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.i, -1
  %25 = icmp samesign ugt i64 %.010.i.i.i.i.i.i44.i.i.i.i, 1
  br i1 %25, label %.lr.ph.i.i.i.i.i.i43.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0207.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i30.i.i.i.i, ptr %i.oh, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.ou = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 16
  %.val2.i7.i.i32.i.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !531 ; 2 uses
  %i.ov = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i7.i.i32.i.i.i.i
  br i1 %i.ov, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i"

.lr.ph.i.i37.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i.i37.i.i.i.i
  %i.ow = phi ptr [ %.val2.i.i.i40.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.val2.i7.i.i32.i.i.i.i, %bb.av ]
  %.sroa.04.08.i.i38.i.i.i.i = phi ptr [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.av ] ; 4 uses
  %.sroa.0.0.i.i39.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i38.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 16
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !531
  %i.oy = getelementptr i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -32
  %.val2.i.i.i40.i.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !531 ; 2 uses
  %i.oz = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i.i.i40.i.i.i.i
  br i1 %i.oz, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i", !llvm.loop !535

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i": ; preds = %.lr.ph.i.i37.i.i.i.i, %bb.av
  %.sroa.04.0.lcssa.i.i34.i.i.i.i = phi ptr [ %.sroa.08.020.i28.i.i.i.i, %bb.av ], [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i34.i.i.i.i, i64 16
  store ptr %.val.i.i30.i.i.i.i, ptr %i.pa, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i
  %.sroa.08.0.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.08.0.i35.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %bb.at, !llvm.loop !536

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i, %.lr.ph312.i
  %.sroa.0205.0310.i = phi ptr [ %.pre.i, %.lr.ph312.i ], [ %i.pb, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 2 uses
  %.sroa.21220.0309.i = phi ptr [ null, %.lr.ph312.i ], [ %.sroa.21220.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 10 uses
  %.sroa.13.0308.i = phi ptr [ null, %.lr.ph312.i ], [ %.sroa.13.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 7 uses
  %.sroa.0207.0307.i = phi ptr [ null, %.lr.ph312.i ], [ %.sroa.0207.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 11 uses
  %i.pb = getelementptr inbounds i8, ptr %.sroa.0205.0310.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.pb, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.pc = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.pd = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.pe = mul nuw nsw i32 %.pre-phi1041, %i.pd
  %i.pf = sub nsw i32 %i.pc, %i.pe
  %i.pg = sdiv i32 %i.pf, %.pre-phi
  %i.ph = trunc i32 %i.pg to i16
  %i.pi = mul i16 %.pre-phi1043, %i.ph
  %i.pj = load i16, ptr %i.cu, align 8, !tbaa !137
  %i.pk = sub i16 %i.pi, %i.pj
  %i.pl = sitofp nsz i16 %i.pk to float
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %i.pm = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %i.pn = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %.lobit.i.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i.i, 15
  %i.po = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %i.pp = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %i.pq = mul nuw nsw i32 %.pre-phi1041, %i.po
  %i.pr = mul nuw nsw i32 %.pre-phi1041, %i.pp
  %i.ps = sub nsw i32 %i.pm, %i.pq
  %i.pt = sub nsw i32 %i.pn, %i.pr
  %i.pu = sdiv i32 %i.ps, %.pre-phi
  %i.pv = sdiv i32 %i.pt, %.pre-phi
  %i.pw = trunc i32 %i.pu to i16
  %i.px = trunc i32 %i.pv to i16
  %i.py = insertelement <2 x i16> poison, i16 %i.px, i64 0
  %i.pz = insertelement <2 x i16> %i.py, i16 %i.pw, i64 1
  %i.qa = mul <2 x i16> %i.dd, %i.pz
  %i.qb = load <2 x i16>, ptr %i.ct, align 4, !tbaa !140
  %i.qc = sub <2 x i16> %i.qa, %i.qb
  %i.qd = sitofp <2 x i16> %i.qc to <2 x float>
  %i.qe = fmul nnan nsz <2 x float> %i.qd, splat (float 1.000000e+01) ; 4 uses
  %i.qf = fmul nnan nsz float %i.pl, 1.000000e+01 ; 4 uses
  %i.qg = getelementptr inbounds i8, ptr %.sroa.0205.0310.i, i64 -8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !529 ; 6 uses
  br i1 %i.kw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = invoke noundef ptr %i.qk(ptr noundef nonnull align 8 dereferenceable(8) %i.qh)
          to label %.noexc101.i unwind label %.loopexit275.i.loopexit, !inline_history !538 ; 2 uses

.noexc101.i:                                      ; preds = %bb.ay
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !32
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = invoke noundef i32 %i.qo(ptr noundef nonnull align 8 dereferenceable(28) %i.ql)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit275.i.loopexit, !inline_history !538

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc101.i
  %.not80.i = icmp ult i32 %i.qp, %i.kd
  br i1 %.not80.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ax
  %i.qq = load ptr, ptr %i.bc, align 8, !tbaa !453 ; 8 uses
  %i.qr = load ptr, ptr %i.cv, align 8, !tbaa !24
  %.not.i583 = icmp eq ptr %i.qq, %i.qr
  br i1 %.not.i583, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store <2 x float> %i.qe, ptr %i.qq, align 8
  %.sroa.23.0..sroa_idx.i.i584 = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store float %i.qf, ptr %.sroa.23.0..sroa_idx.i.i584, align 8, !tbaa !59
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 12 ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 4
  %i.qu = and i8 %i.qt, -4
  %i.qv = or disjoint i8 %i.qu, 1
  store i8 %i.qv, ptr %i.qs, align 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store ptr %i.qh, ptr %i.qw, align 8, !tbaa !41
  %i.qx = load ptr, ptr %i.bc, align 8, !tbaa !453
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store ptr %i.qy, ptr %i.bc, align 8, !tbaa !453
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.bb:                                            ; preds = %bb.az
  %.val.i.i585 = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 5 uses
  %i.qz = ptrtoint ptr %i.qq to i64
  %i.ra = ptrtoint ptr %.val.i.i585 to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 4 uses
  %i.rc = icmp eq i64 %i.rb, 9223372036854775800
  br i1 %i.rc, label %bb.bc, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc597 unwind label %.loopexit275.i.loopexit.split-lp

.noexc597:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586: ; preds = %bb.bb
  %i.rd = sdiv exact i64 %i.rb, 24                ; 3 uses
  %i.re = icmp eq ptr %i.qq, %.val.i.i585         ; 2 uses
  %.sroa.speculated.i.i.i587 = select i1 %i.re, i64 1, i64 %i.rd
  %i.rf = add nsw i64 %.sroa.speculated.i.i.i587, %i.rd ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.rd
  %i.rh = call i64 @llvm.umin.i64(i64 %i.rf, i64 384307168202282325)
  %i.ri = select i1 %i.rg, i64 384307168202282325, i64 %i.rh ; 3 uses
  %.not.i.i.i588 = icmp ne i64 %i.ri, 0
  call void @llvm.assume(i1 %.not.i.i.i588)
  %i.rj = mul nuw nsw i64 %i.ri, 24
  %i.rk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #38
          to label %.noexc598 unwind label %.loopexit275.i.loopexit ; 5 uses

.noexc598:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rb ; 4 uses
  store <2 x float> %i.qe, ptr %i.rl, align 8
  %.sroa.23.0..sroa_idx.i.i.i589 = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store float %i.qf, ptr %.sroa.23.0..sroa_idx.i.i.i589, align 8, !tbaa !59
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store i8 1, ptr %i.rm, align 4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store ptr %i.qh, ptr %i.rn, align 8, !tbaa !41
  br i1 %i.re, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594, label %.lr.ph.i.i.i.i.i590

.lr.ph.i.i.i.i.i590:                              ; preds = %.noexc598, %.lr.ph.i.i.i.i.i590
  %.03.i.i.i.i.i591 = phi ptr [ %i.rp, %.lr.ph.i.i.i.i.i590 ], [ %i.rk, %.noexc598 ] ; 2 uses
  %.092.i.i.i.i.i592 = phi ptr [ %i.ro, %.lr.ph.i.i.i.i.i590 ], [ %.val.i.i585, %.noexc598 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i591, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i592, i64 24, i1 false), !tbaa.struct !505, !alias.scope !539
  %i.ro = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i592, i64 24 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i591, i64 24 ; 2 uses
  %.not.i.i.i.i.i593 = icmp eq ptr %i.ro, %i.qq
  br i1 %.not.i.i.i.i.i593, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594, label %.lr.ph.i.i.i.i.i590, !llvm.loop !510

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594: ; preds = %.lr.ph.i.i.i.i.i590, %.noexc598
  %.0.lcssa.i.i.i.i.i595 = phi ptr [ %i.rk, %.noexc598 ], [ %i.rp, %.lr.ph.i.i.i.i.i590 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i595, i64 24
  %.not.i38.i.i596 = icmp eq ptr %.val.i.i585, null
  br i1 %.not.i38.i.i596, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i585, i64 noundef %i.rb) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594
  store ptr %i.rk, ptr %i.ba, align 8, !tbaa !21
  store ptr %i.rq, ptr %i.bc, align 8, !tbaa !453
  %i.rr = getelementptr inbounds nuw [24 x i8], ptr %i.rk, i64 %i.ri
  store ptr %i.rr, ptr %i.cv, align 8, !tbaa !24
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

.loopexit275.i.loopexit:                          ; preds = %bb.ay, %.noexc101.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586
  %lpad.loopexit667 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit275.i

.loopexit275.i.loopexit.split-lp:                 ; preds = %bb.bc
  %lpad.loopexit.split-lp668 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit275.i

.loopexit.split-lp276.i:                          ; preds = %bb.bh
  %lpad.loopexit.split-lp278.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit275.i

bb.be:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i103.i = icmp eq ptr %.sroa.13.0308.i, %.sroa.21220.0309.i
  br i1 %.not.i103.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store <2 x float> %i.qe, ptr %.sroa.13.0308.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0308.i, i64 8
  store float %i.qf, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !59
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.13.0308.i, i64 16
  store ptr %i.qh, ptr %i.rs, align 8, !tbaa !531
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.13.0308.i, i64 24
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.ru = ptrtoint ptr %.sroa.21220.0309.i to i64
  %i.rv = ptrtoint ptr %.sroa.0207.0307.i to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 4 uses
  %i.rx = icmp eq i64 %i.rw, 9223372036854775800
  br i1 %i.rx, label %bb.bh, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc105.i unwind label %.loopexit.split-lp276.i

.noexc105.i:                                      ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
end_hunk_0
begin_hunk_1_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  %i.hp = load ptr, ptr %i.gs, align 8, !tbaa !529 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef ptr %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %.noexc176 unwind label %.loopexit396, !inline_history !859 ; 2 uses

.noexc176:                                        ; preds = %.noexc175
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(28) %i.ht)
          to label %.noexc177 unwind label %.loopexit396, !inline_history !859

.noexc177:                                        ; preds = %.noexc176
  %i.hy = load i32, ptr %i.g, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, %i.hx
  store i32 %i.hz, ptr %i.g, align 4, !tbaa !247
  br label %bb.x

bb.x:                                             ; preds = %.noexc177, %.noexc173
  %.166.i = phi i32 [ %i.hd, %.noexc177 ], [ %.065267.i, %.noexc173 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0214.0266.i, i64 16 ; 2 uses
  %.not219.i = icmp eq ptr %i.ia, %i.gj
  br i1 %.not219.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge275.i:                                 ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i
  %.not.i.i.i165 = icmp eq ptr %.sroa.0198.1.i, %.sroa.13.1.i
  br i1 %.not.i.i.i165, label %"._crit_edge275._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %bb.y

"._crit_edge275._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i": ; preds = %._crit_edge275.i, %._crit_edge.i, %.noexc171
  %.sroa.21.0.lcssa382.i = phi ptr [ %.sroa.21.1.i, %._crit_edge275.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ]
  %.sroa.13.0.lcssa379.i = phi ptr [ %.sroa.0198.1.i, %._crit_edge275.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ] ; 3 uses
  %.pre309.i = ptrtoint ptr %.sroa.13.0.lcssa379.i to i64
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i"

bb.y:                                             ; preds = %._crit_edge275.i
  %i.ib = ptrtoint ptr %.sroa.13.1.i to i64
  %i.ic = ptrtoint ptr %.sroa.0198.1.i to i64     ; 6 uses
  %i.id = sub i64 %i.ib, %i.ic                    ; 2 uses
  %i.ie = sdiv exact i64 %i.id, 24                ; 5 uses
  %i.if = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ie, i1 true)
  %i.ig = shl nuw nsw i64 %i.if, 1
  %i.ih = xor i64 %i.ig, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_T1_"(ptr %.sroa.0198.1.i, ptr %.sroa.13.1.i, i64 noundef %i.ih)
  %i.ii = icmp sgt i64 %i.id, 384
  br i1 %i.ii, label %.lr.ph.i.i.i.i.i168, label %.preheader.i24.i.i.i.i

.lr.ph.i.i.i.i.i168:                              ; preds = %bb.y
  %i.ij = getelementptr i8, ptr %.sroa.0198.1.i, i64 16 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i.i168
  %indvar.a = phi i64 [ %indvar.next.a, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i168 ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i.i, %bb.ab ], [ 24, %.lr.ph.i.i.i.i.i168 ] ; 3 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ab ], [ %.sroa.0198.1.i, %.lr.ph.i.i.i.i.i168 ] ; 5 uses
  %.sroa.08.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0198.1.i, i64 %.sroa.08.020.i.idx.i.i.i.i ; 8 uses
  %i.ik = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ik, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !531
  %i.il = icmp ult ptr %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.il, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.aa

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 48
  %i.in = udiv exact i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %i.io = and i64 %indvar.a, 1
  %lcmp.mod.not.not.a = icmp eq i64 %i.io, 0
  br i1 %lcmp.mod.not.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.ip = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -24 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 12, i1 false), !tbaa.struct !533
  %i.ir = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !30
  %i.it = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 40
  store ptr %i.is, ptr %i.it, align 8, !tbaa !531
  %i.iu = add nsw i64 %i.in, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.in, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.iu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.im, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.iv = icmp eq i64 %indvar.a, 0
  br i1 %i.iv, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.iw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ix = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 12, i1 false), !tbaa.struct !533
  %i.iy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !30
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !531
  %i.jb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 12, i1 false), !tbaa.struct !533
  %i.jd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !30
  %i.jf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !531
  %i.jg = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.jh = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0198.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i.i.i.i.i, ptr %i.ij, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.ji = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !531 ; 2 uses
  %i.jj = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %i.jk = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.aa ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !531
  %i.jm = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.jm, align 8, !tbaa !531 ; 2 uses
  %i.jn = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", !llvm.loop !867

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aa
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.jo, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %.not.i.i.i.i.i169, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", label %bb.z, !llvm.loop !868

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i": ; preds = %bb.ab
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0198.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.jp, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.jx, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %i.jp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.jq = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.jq, align 8, !tbaa !531 ; 2 uses
  %i.jr = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.jr, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.js = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !531
  %i.ju = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.ju, align 8, !tbaa !531 ; 2 uses
  %i.jv = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.jv, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i", !llvm.loop !867

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.jw, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.jx, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !869

.preheader.i24.i.i.i.i:                           ; preds = %bb.y
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0198.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.jy = getelementptr i8, ptr %.sroa.0198.1.i, i64 16 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i27.i.i.i.i
  %.sroa.08.020.i28.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i35.i.i.i.i, %bb.af ] ; 8 uses
  %.pn19.i29.i.i.i.i = phi ptr [ %.sroa.0198.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.af ] ; 3 uses
  %i.jz = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 40
  %.val.i.i30.i.i.i.i = load ptr, ptr %i.jz, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i31.i.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !531
  %i.ka = icmp ult ptr %.val.i.i30.i.i.i.i, %.val1.i.i31.i.i.i.i
  br i1 %i.ka, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.kb = ptrtoint ptr %.sroa.08.020.i28.i.i.i.i to i64
  %i.kc = sub i64 %i.kb, %i.ic                    ; 2 uses
  %i.kd = icmp sgt i64 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a:         ; preds = %bb.ad
  %i.ke = getelementptr inbounds nuw i8, ptr %.pn19.i29.i.i.i.i, i64 48
  %23 = udiv exact i64 %i.kc, 24
  br label %.lr.ph.i.i.i.i.i.i43.i.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a
  %.010.i.i.i.i.i.i44.i.i.i.i = phi i64 [ %i.kk, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %23, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.ke, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i.a ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -24 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 12, i1 false), !tbaa.struct !533
  %i.kh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !30
  %i.kj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -8
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !531
  %i.kk = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.i, -1
  %24 = icmp samesign ugt i64 %.010.i.i.i.i.i.i44.i.i.i.i, 1
  br i1 %24, label %.lr.ph.i.i.i.i.i.i43.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0198.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i30.i.i.i.i, ptr %i.jy, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.kl = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 16
  %.val2.i7.i.i32.i.i.i.i = load ptr, ptr %i.kl, align 8, !tbaa !531 ; 2 uses
  %i.km = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i7.i.i32.i.i.i.i
  br i1 %i.km, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i"

.lr.ph.i.i37.i.i.i.i:                             ; preds = %bb.ae, %.lr.ph.i.i37.i.i.i.i
  %i.kn = phi ptr [ %.val2.i.i.i40.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.val2.i7.i.i32.i.i.i.i, %bb.ae ]
  %.sroa.04.08.i.i38.i.i.i.i = phi ptr [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.ae ] ; 4 uses
  %.sroa.0.0.i.i39.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i38.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 16
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !531
  %i.kp = getelementptr i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -32
  %.val2.i.i.i40.i.i.i.i = load ptr, ptr %i.kp, align 8, !tbaa !531 ; 2 uses
  %i.kq = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i.i.i40.i.i.i.i
  br i1 %i.kq, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i", !llvm.loop !867

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i": ; preds = %.lr.ph.i.i37.i.i.i.i, %bb.ae
  %.sroa.04.0.lcssa.i.i34.i.i.i.i = phi ptr [ %.sroa.08.020.i28.i.i.i.i, %bb.ae ], [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i34.i.i.i.i, i64 16
  store ptr %.val.i.i30.i.i.i.i, ptr %i.kr, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  br label %bb.af

bb.af:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i
  %.sroa.08.0.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.08.0.i35.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %bb.ac, !llvm.loop !868

bb.ag:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i, %.lr.ph274.i
  %.sroa.0196.0272.i = phi ptr [ %.pre.i, %.lr.ph274.i ], [ %i.ks, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 2 uses
  %.sroa.21.0271.i = phi ptr [ null, %.lr.ph274.i ], [ %.sroa.21.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 9 uses
  %.sroa.13.0270.i = phi ptr [ null, %.lr.ph274.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 7 uses
  %.sroa.0198.0269.i = phi ptr [ null, %.lr.ph274.i ], [ %.sroa.0198.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 10 uses
  %i.ks = getelementptr inbounds i8, ptr %.sroa.0196.0272.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.ks, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.kt = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.ku = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.kv = mul nuw nsw i32 %.pre-phi695, %i.ku
  %i.kw = sub nsw i32 %i.kt, %i.kv
  %i.kx = sdiv i32 %i.kw, %.pre-phi
  %i.ky = trunc i32 %i.kx to i16
  %i.kz = mul i16 %.pre-phi697, %i.ky
  %i.la = load i16, ptr %i.er, align 8, !tbaa !137
  %i.lb = sub i16 %i.kz, %i.la
  %i.lc = sitofp nsz i16 %i.lb to float
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %i.ld = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %i.le = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %.lobit.i.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i.i, 15
  %i.lf = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %i.lg = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %i.lh = mul nuw nsw i32 %.pre-phi695, %i.lf
  %i.li = mul nuw nsw i32 %.pre-phi695, %i.lg
  %i.lj = sub nsw i32 %i.ld, %i.lh
  %i.lk = sub nsw i32 %i.le, %i.li
  %i.ll = sdiv i32 %i.lj, %.pre-phi
  %i.lm = sdiv i32 %i.lk, %.pre-phi
  %i.ln = trunc i32 %i.ll to i16
  %i.lo = trunc i32 %i.lm to i16
  %i.lp = insertelement <2 x i16> poison, i16 %i.lo, i64 0
  %i.lq = insertelement <2 x i16> %i.lp, i16 %i.ln, i64 1
  %i.lr = mul <2 x i16> %i.fe, %i.lq
  %i.ls = load <2 x i16>, ptr %i.eq, align 4, !tbaa !140
  %i.lt = sub <2 x i16> %i.lr, %i.ls
  %i.lu = sitofp <2 x i16> %i.lt to <2 x float>
  %i.lv = fmul nnan nsz <2 x float> %i.lu, splat (float 1.000000e+01) ; 4 uses
  %i.lw = fmul nnan nsz float %i.lc, 1.000000e+01 ; 4 uses
  %i.lx = getelementptr inbounds i8, ptr %.sroa.0196.0272.i, i64 -8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !529 ; 6 uses
  br i1 %i.gl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.ly)
          to label %.noexc101.i unwind label %.loopexit236.i, !inline_history !538 ; 2 uses

.noexc101.i:                                      ; preds = %bb.ah
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !32
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = invoke noundef i32 %i.mf(ptr noundef nonnull align 8 dereferenceable(28) %i.mc)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit236.i, !inline_history !538

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc101.i
  %.not80.i = icmp ult i32 %i.mg, %i.fs
  br i1 %.not80.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ag
  %i.mh = load ptr, ptr %i.ac, align 8, !tbaa !453 ; 8 uses
  %i.mi = load ptr, ptr %i.es, align 8, !tbaa !24
  %.not.i103.i = icmp eq ptr %i.mh, %i.mi
  br i1 %.not.i103.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store <2 x float> %i.lv, ptr %i.mh, align 8
  %.sroa.23.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store float %i.lw, ptr %.sroa.23.0..sroa_idx.i.i.i164, align 8, !tbaa !59
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 12 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 4
  %i.ml = and i8 %i.mk, -4
  %i.mm = or disjoint i8 %i.ml, 1
  store i8 %i.mm, ptr %i.mj, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store ptr %i.ly, ptr %i.mn, align 8, !tbaa !41
  %i.mo = load ptr, ptr %i.ac, align 8, !tbaa !453
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  store ptr %i.mp, ptr %i.ac, align 8, !tbaa !453
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 5 uses
  %i.mq = ptrtoint ptr %i.mh to i64
  %i.mr = ptrtoint ptr %.val.i.i.i to i64
  %i.ms = sub i64 %i.mq, %i.mr                    ; 4 uses
  %i.mt = icmp eq i64 %i.ms, 9223372036854775800
  br i1 %i.mt, label %.invoke1010, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.mu = sdiv exact i64 %i.ms, 24                ; 3 uses
  %i.mv = icmp eq ptr %i.mh, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.mv, i64 1, i64 %i.mu
  %i.mw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mu ; 2 uses
  %i.mx = icmp ult i64 %i.mw, %i.mu
  %i.my = call i64 @llvm.umin.i64(i64 %i.mw, i64 384307168202282325)
  %i.mz = select i1 %i.mx, i64 384307168202282325, i64 %i.my ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.mz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.na = mul nuw nsw i64 %i.mz, 24
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #38
          to label %.noexc106.i unwind label %.loopexit236.i ; 5 uses

.noexc106.i:                                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ms ; 4 uses
  store <2 x float> %i.lv, ptr %i.nc, align 8
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store float %i.lw, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !59
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i8 1, ptr %i.nd, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store ptr %i.ly, ptr %i.ne, align 8, !tbaa !41
  br i1 %i.mv, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i104.i

.lr.ph.i.i.i.i.i104.i:                            ; preds = %.noexc106.i, %.lr.ph.i.i.i.i.i104.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i104.i ], [ %i.nb, %.noexc106.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i104.i ], [ %.val.i.i.i, %.noexc106.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !505, !alias.scope !870
  %i.nf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nf, %i.mh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i104.i, !llvm.loop !510

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i: ; preds = %.lr.ph.i.i.i.i.i104.i, %.noexc106.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nb, %.noexc106.i ], [ %i.ng, %.lr.ph.i.i.i.i.i104.i ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i38.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ms) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  store ptr %i.nb, ptr %i.aa, align 8, !tbaa !21
  store ptr %i.nh, ptr %i.ac, align 8, !tbaa !453
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nb, i64 %i.mz
  store ptr %i.ni, ptr %i.es, align 8, !tbaa !24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

.loopexit236.i:                                   ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.noexc101.i, %bb.ah
  %lpad.loopexit238.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp237.i:                          ; preds = %.invoke1010
  %lpad.loopexit.split-lp239.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.am:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i107.i = icmp eq ptr %.sroa.13.0270.i, %.sroa.21.0271.i
  br i1 %.not.i107.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store <2 x float> %i.lv, ptr %.sroa.13.0270.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0270.i, i64 8
  store float %i.lw, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !59
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.13.0270.i, i64 16
  store ptr %i.ly, ptr %i.nj, align 8, !tbaa !531
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.13.0270.i, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.nl = ptrtoint ptr %.sroa.21.0271.i to i64
  %i.nm = ptrtoint ptr %.sroa.0198.0269.i to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 4 uses
  %i.no = icmp eq i64 %i.nn, 9223372036854775800
  br i1 %i.no, label %.invoke1010, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke1010:                                      ; preds = %bb.ak, %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.cont unwind label %.loopexit.split-lp237.i

.cont:                                            ; preds = %.invoke1010
  unreachable

_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.np = sdiv exact i64 %i.nn, 24                ; 3 uses
  %.sroa.speculated.i.i.i108.i = call i64 @llvm.umax.i64(i64 %i.np, i64 1)
  %i.nq = add nsw i64 %.sroa.speculated.i.i.i108.i, %i.np ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  %i.ns = call i64 @llvm.umin.i64(i64 %i.nq, i64 384307168202282325)
  %i.nt = select i1 %i.nr, i64 384307168202282325, i64 %i.ns ; 3 uses
  %.not.i.i.i109.i = icmp ne i64 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i109.i)
  %i.nu = mul nuw nsw i64 %i.nt, 24
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #38
          to label %.noexc114.i unwind label %.loopexit236.i ; 5 uses

end_hunk_1
