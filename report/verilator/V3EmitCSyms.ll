Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCSyms?download=true
inline.NumInlined: 7952
inline.NumDeleted: 1364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS8_SK_E_EEEvT_SN_T0_T1_T2_:bb.a
  %i.ec = ashr exact i64 %i.eb, 4                 ; 5 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i10.i24.preheader, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS8_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit45

.lr.ph.i.i.i.i.i10.i24.preheader:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  %xtraiter114 = and i64 %i.ec, 7                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol

.lr.ph.i.i.i.i.i10.i24.prol:                      ; preds = %.lr.ph.i.i.i.i.i10.i24.preheader, %.lr.ph.i.i.i.i.i10.i24.prol
  %.012.i.i.i.i.i11.i25.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i10.i24.prol ], [ %i.ec, %.lr.ph.i.i.i.i.i10.i24.preheader ]
  %.0811.i.i.i.i.i12.i26.prol = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i10.i24.prol ], [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ] ; 2 uses
  %.0910.i.i.i.i.i13.i27.prol = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i10.i24.prol ], [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ] ; 2 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i10.i24.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.preheader ]
  %i.ee = load <2 x ptr>, ptr %.0910.i.i.i.i.i13.i27.prol, align 8, !tbaa !234
  store <2 x ptr> %i.ee, ptr %.0811.i.i.i.i.i12.i26.prol, align 8, !tbaa !234
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.eh = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !1716

.lr.ph.i.i.i.i.i10.i24.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i24.prol, %.lr.ph.i.i.i.i.i10.i24.preheader
  %.012.i.i.i.i.i11.i25.unr = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0811.i.i.i.i.i12.i26.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0910.i.i.i.i.i13.i27.unr = phi ptr [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %i.ei = icmp ult i64 %i.ec, 8
  br i1 %i.ei, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS8_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit45, label %.lr.ph.i.i.i.i.i10.i24

.lr.ph.i.i.i.i.i10.i24:                           ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24
  %.012.i.i.i.i.i11.i25 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i10.i24 ], [ %.012.i.i.i.i.i11.i25.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0811.i.i.i.i.i12.i26.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0910.i.i.i.i.i13.i27.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %i.ej = load <2 x ptr>, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !234
  store <2 x ptr> %i.ej, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !234
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.em = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !234
  store <2 x ptr> %i.em, ptr %i.el, align 8, !tbaa !234
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.ep = load <2 x ptr>, ptr %i.en, align 8, !tbaa !234
  store <2 x ptr> %i.ep, ptr %i.eo, align 8, !tbaa !234
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.es = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !234
  store <2 x ptr> %i.es, ptr %i.er, align 8, !tbaa !234
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.ev = load <2 x ptr>, ptr %i.et, align 8, !tbaa !234
  store <2 x ptr> %i.ev, ptr %i.eu, align 8, !tbaa !234
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 80
  %i.ey = load <2 x ptr>, ptr %i.ew, align 8, !tbaa !234
  store <2 x ptr> %i.ey, ptr %i.ex, align 8, !tbaa !234
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 96
  %i.fb = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !234
  store <2 x ptr> %i.fb, ptr %i.fa, align 8, !tbaa !234
  %i.fc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 112
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 112
  %i.fe = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !234
  store <2 x ptr> %i.fe, ptr %i.fd, align 8, !tbaa !234
  %i.ff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 128
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 128
  %i.fh = add nsw i64 %.012.i.i.i.i.i11.i25, -8
  %i.fi = icmp sgt i64 %.012.i.i.i.i.i11.i25, 8
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS8_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit45, !llvm.loop !13

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS8_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit45: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK8AstScopeP13AstNodeModuleESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEEvT_SN_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not67 = icmp slt i64 %i.e, %i.a
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx58 = shl nsw i64 %3, 5                     ; 2 uses
  %.not59 = icmp eq i64 %.idx, %.idx58
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit
  %.sroa.022.069 = phi ptr [ %2, %.lr.ph ], [ %i.cm, %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ] ; 2 uses
  %.068 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.068, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.068, i64 %.idx58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br i1 %.not59, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.029.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.068, %bb.b ] ; 3 uses
  %.01628.i = phi ptr [ %.117.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.0.027.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.sroa.022.069, %bb.b ] ; 2 uses
  %i.h = call noundef zeroext i1 @_ZZN9EmitCSyms5visitEP10AstNetlistENKUlRKSt4pairIPK8AstScopeP13AstNodeModuleESA_E_clESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %.01628.i, ptr noundef nonnull align 8 dereferenceable(16) %.029.i) ; 3 uses
  %.sink34.in.i = select i1 %i.h, ptr %.01628.i, ptr %.029.i
  %.117.idx.i = select i1 %i.h, i64 16, i64 0
  %.117.i = getelementptr inbounds nuw i8, ptr %.01628.i, i64 %.117.idx.i ; 3 uses
  %.1.idx.i = select i1 %i.h, i64 0, i64 16
  %.1.i = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.1.idx.i ; 3 uses
  %i.i = load <2 x ptr>, ptr %.sink34.in.i, align 8, !tbaa !234
  store <2 x ptr> %i.i, ptr %.sroa.0.027.i, align 8, !tbaa !234
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.k = icmp ne ptr %.1.i, %i.f
  %i.l = icmp ne ptr %.117.i, %i.g
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1717

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.069, %bb.b ], [ %i.j, %.lr.ph.i ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.068, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 3 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.0.lcssa.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 5 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.s = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !234
  store <2 x ptr> %i.s, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.v = add nsw i64 %.012.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1718

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa104.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.q, 8
  br i1 %i.w, label %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.x = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !234
  store <2 x ptr> %i.x, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !234
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !234
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !234
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !234
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !234
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !234
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !234
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !234
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 80
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !234
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !234
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 96
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !234
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !tbaa !234
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 112
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !234
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !234
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.av = add nsw i64 %.012.i.i.i.i.i.i, -8
  %i.aw = icmp sgt i64 %.012.i.i.i.i.i.i, 8
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !13

_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa104.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i.i.i.i ]
  %i.ax = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.ay = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.az ; 4 uses
  %i.bb = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bc = ptrtoint ptr %.016.lcssa.i to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 4                 ; 5 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i
  %xtraiter109 = and i64 %i.be, 7                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.be, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.ba, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bg = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !234
  store <2 x ptr> %i.bg, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !234
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bj = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !1719

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa105.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bk = icmp ult i64 %i.be, 8
  br i1 %i.bk, label %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bl = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !234
  store <2 x ptr> %i.bl, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !234
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.bo = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !234
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !234
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.br = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !234
  store <2 x ptr> %i.br, ptr %i.bq, align 8, !tbaa !234
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !234
  store <2 x ptr> %i.bu, ptr %i.bt, align 8, !tbaa !234
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64
  %i.bx = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !234
  store <2 x ptr> %i.bx, ptr %i.bw, align 8, !tbaa !234
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 80
  %i.ca = load <2 x ptr>, ptr %i.by, align 8, !tbaa !234
  store <2 x ptr> %i.ca, ptr %i.bz, align 8, !tbaa !234
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 96
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !234
  store <2 x ptr> %i.cd, ptr %i.cc, align 8, !tbaa !234
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 112
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 112
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !234
  store <2 x ptr> %i.cg, ptr %i.cf, align 8, !tbaa !234
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 128
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 128 ; 2 uses
  %i.cj = add nsw i64 %.012.i.i.i.i.i20.i, -8
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i20.i, 8
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit, !llvm.loop !13

_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ba, %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %.lcssa105.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.ci, %.lr.ph.i.i.i.i.i19.i ]
  %6 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cl = sub i64 %6, %i.ax
  %i.cm = getelementptr inbounds i8, ptr %i.ba, i64 %i.cl ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cn = sub i64 %i.b, %i.bb
  %i.co = ashr exact i64 %i.cn, 4                 ; 2 uses
  %.not = icmp slt i64 %i.co, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1720

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.cm, %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.co, %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ]
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx60 = shl nsw i64 %.sroa.speculated, 4
  %i.cp = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx60 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cq = icmp ne i64 %.sroa.speculated, 0
  %i.cr = icmp ne ptr %i.cp, %1
  %i.cs = and i1 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %.lr.ph.i41
  %.029.i42 = phi ptr [ %.1.i49, %.lr.ph.i41 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01628.i43 = phi ptr [ %.117.i47, %.lr.ph.i41 ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.sroa.0.027.i44 = phi ptr [ %i.cv, %.lr.ph.i41 ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ct = call noundef zeroext i1 @_ZZN9EmitCSyms5visitEP10AstNetlistENKUlRKSt4pairIPK8AstScopeP13AstNodeModuleESA_E_clESA_SA_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %.01628.i43, ptr noundef nonnull align 8 dereferenceable(16) %.029.i42) ; 3 uses
  %.sink34.in.i45 = select i1 %i.ct, ptr %.01628.i43, ptr %.029.i42
  %.117.idx.i46 = select i1 %i.ct, i64 16, i64 0
  %.117.i47 = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 %.117.idx.i46 ; 3 uses
  %.1.idx.i48 = select i1 %i.ct, i64 0, i64 16
  %.1.i49 = getelementptr inbounds nuw i8, ptr %.029.i42, i64 %.1.idx.i48 ; 3 uses
  %i.cu = load <2 x ptr>, ptr %.sink34.in.i45, align 8, !tbaa !234
  store <2 x ptr> %i.cu, ptr %.sroa.0.027.i44, align 8, !tbaa !234
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.cw = icmp ne ptr %.1.i49, %i.cp
  %i.cx = icmp ne ptr %.117.i47, %1
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !1717

._crit_edge.i25:                                  ; preds = %.lr.ph.i41, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.cv, %.lr.ph.i41 ] ; 5 uses
  %.016.lcssa.i27 = phi ptr [ %i.cp, %._crit_edge ], [ %.117.i47, %.lr.ph.i41 ] ; 3 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i49, %.lr.ph.i41 ] ; 3 uses
  %i.cz = ptrtoint ptr %i.cp to i64
  %i.da = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 5 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %xtraiter112 = and i64 %i.dc, 7                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i38.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.i37.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i39.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i40.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 2 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %i.de = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !234
  store <2 x ptr> %i.de, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !234
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dh = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !1721

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.di = icmp ult i64 %i.dc, 8
  br i1 %i.di, label %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.dj = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !234
  store <2 x ptr> %i.dj, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !234
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.dm = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !234
  store <2 x ptr> %i.dm, ptr %i.dl, align 8, !tbaa !234
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.dp = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !234
  store <2 x ptr> %i.dp, ptr %i.do, align 8, !tbaa !234
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.ds = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !234
  store <2 x ptr> %i.ds, ptr %i.dr, align 8, !tbaa !234
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64
  %i.dv = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !234
  store <2 x ptr> %i.dv, ptr %i.du, align 8, !tbaa !234
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 80
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !234
  store <2 x ptr> %i.dy, ptr %i.dx, align 8, !tbaa !234
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 96
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 96
  %i.eb = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !234
  store <2 x ptr> %i.eb, ptr %i.ea, align 8, !tbaa !234
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 112
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 112
  %i.ee = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !234
  store <2 x ptr> %i.ee, ptr %i.ed, align 8, !tbaa !234
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 128
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 128 ; 2 uses
  %i.eh = add nsw i64 %.012.i.i.i.i.i.i38, -8
  %i.ei = icmp sgt i64 %.012.i.i.i.i.i.i38, 8
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29, !llvm.loop !13

_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.eg, %.lr.ph.i.i.i.i.i.i37 ]
  %i.ej = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.ek = sub i64 %i.b, %i.ej
  %i.el = ashr exact i64 %i.ek, 4                 ; 5 uses
  %i.em = icmp sgt i64 %i.el, 0
  br i1 %i.em, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit53

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29
  %i.en = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.eo = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.ep ; 2 uses
  %xtraiter115 = and i64 %i.el, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader, %.lr.ph.i.i.i.i.i19.i32.prol
  %.012.i.i.i.i.i20.i33.prol = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.el, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %.0811.i.i.i.i.i21.i34.prol = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.eq, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 2 uses
  %.0910.i.i.i.i.i22.i35.prol = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 2 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.i.i.i19.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %i.er = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !234
  store <2 x ptr> %i.er, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !234
  %i.es = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.eu = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !1722

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.eu, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.et, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.es, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.ev = icmp ult i64 %i.el, 8
  br i1 %i.ev, label %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit53, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %i.ew = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !234
  store <2 x ptr> %i.ew, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !234
  %i.ex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.ez = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !234
  store <2 x ptr> %i.ez, ptr %i.ey, align 8, !tbaa !234
  %i.fa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.fc = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !234
  store <2 x ptr> %i.fc, ptr %i.fb, align 8, !tbaa !234
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 48
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 48
  %i.ff = load <2 x ptr>, ptr %i.fd, align 8, !tbaa !234
  store <2 x ptr> %i.ff, ptr %i.fe, align 8, !tbaa !234
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 64
  %i.fi = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !234
  store <2 x ptr> %i.fi, ptr %i.fh, align 8, !tbaa !234
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 80
  %i.fk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 80
  %i.fl = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !234
  store <2 x ptr> %i.fl, ptr %i.fk, align 8, !tbaa !234
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 96
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 96
  %i.fo = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !234
  store <2 x ptr> %i.fo, ptr %i.fn, align 8, !tbaa !234
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 112
  %i.fr = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !234
  store <2 x ptr> %i.fr, ptr %i.fq, align 8, !tbaa !234
  %i.fs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 128
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 128
  %i.fu = add nsw i64 %.012.i.i.i.i.i20.i33, -8
  %i.fv = icmp sgt i64 %.012.i.i.i.i.i20.i33, 8
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit53, !llvm.loop !13

_ZSt12__move_mergeIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN9EmitCSyms5visitEP10AstNetlistEUlRKS6_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit53: ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32, %_ZSt4moveIPSt4pairIPK8AstScopeP13AstNodeModuleEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
