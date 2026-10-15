Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ControlHeightReduction?download=true
inline.NumInlined: 6152
inline.NumDeleted: 3072
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm26ControlHeightReductionPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i21
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !72
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.it = load ptr, ptr %i.im, align 8, !tbaa !71 ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !72
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #26
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ii, %i.im
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i21, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !66
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i, %"_ZZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_ENK3$_0clEv.exit.i.i.i"
  %i.iy = phi ptr [ %.pre.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i ], [ %i.ii, %"_ZZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_ENK3$_0clEv.exit.i.i.i" ] ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fh
  br i1 %i.iz, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i
  call void @free(ptr noundef %i.iy) #25
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i.i: ; preds = %bb.t, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_13CHR12filterScopesERNS_15SmallVectorImplIPNS2_8CHRScopeEEES8_E3$_0EEvT_PDTclfL0p_EE.exit.i.i"

bb.u:                                             ; preds = %bb.p
  %i.ja = load i32, ptr %i.ez, align 8, !tbaa !87 ; 2 uses
  %i.jb = load i32, ptr %i.fa, align 4, !tbaa !88
  %.not.i.i23.i = icmp ult i32 %i.ja, %i.jb
  br i1 %.not.i.i23.i, label %bb.w, label %bb.v, !prof !103

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.fs)
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_13CHR12filterScopesERNS_15SmallVectorImplIPNS2_8CHRScopeEEES8_E3$_0EEvT_PDTclfL0p_EE.exit.i.i"

bb.w:                                             ; preds = %bb.u
  %i.jc = zext i32 %i.ja to i64
  %.val.i.i25.i = load ptr, ptr %16, align 8, !tbaa !66
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i25.i, i64 %i.jc
  store ptr %i.fs, ptr %i.jd, align 1
  %i.je = load i32, ptr %i.ez, align 8, !tbaa !87
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.ez, align 8, !tbaa !87
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_13CHR12filterScopesERNS_15SmallVectorImplIPNS2_8CHRScopeEEES8_E3$_0EEvT_PDTclfL0p_EE.exit.i.i"

"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_13CHR12filterScopesERNS_15SmallVectorImplIPNS2_8CHRScopeEEES8_E3$_0EEvT_PDTclfL0p_EE.exit.i.i": ; preds = %bb.w, %bb.v, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i.i.i, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 8 ; 2 uses
  %.not.i24.i = icmp eq ptr %i.jg, %i.fc
  br i1 %.not.i24.i, label %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i, label %bb.p

_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_13CHR20classifyBiasedScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEE.exit.i, %_ZN12_GLOBAL__N_13CHR20classifyBiasedScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEE.exit.thread.i
  %.ph.i = phi ptr [ %i.ev, %_ZN12_GLOBAL__N_13CHR20classifyBiasedScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEE.exit.thread.i ], [ %i.ey, %_ZN12_GLOBAL__N_13CHR20classifyBiasedScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.jh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.jh, ptr %17, align 8, !tbaa !66
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %i.ji, align 8, !tbaa !87
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 8, ptr %i.jj, align 4, !tbaa !88
  br label %_ZN12_GLOBAL__N_13CHR13setCHRRegionsERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i

_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i: ; preds = %"_ZN4llvm25OptimizationRemarkEmitter4emitIZN12_GLOBAL__N_13CHR12filterScopesERNS_15SmallVectorImplIPNS2_8CHRScopeEEES8_E3$_0EEvT_PDTclfL0p_EE.exit.i.i"
  %.val9.pre.i = load ptr, ptr %16, align 8, !tbaa !66 ; 2 uses
  %.val10.pre.i = load i32, ptr %i.ez, align 8, !tbaa !87 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.jk, ptr %17, align 8, !tbaa !66
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i32 0, ptr %i.jl, align 8, !tbaa !87
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  store i32 8, ptr %i.jm, align 4, !tbaa !88
  %i.jn = zext i32 %.val10.pre.i to i64
  %.idx.i26.i = shl nuw nsw i64 %i.jn, 3
  %i.jo = getelementptr inbounds nuw i8, ptr %.val9.pre.i, i64 %.idx.i26.i
  %.not1.i27.i = icmp eq i32 %.val10.pre.i, 0
  br i1 %.not1.i27.i, label %_ZN12_GLOBAL__N_13CHR13setCHRRegionsERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE9push_backES3_.exit.i.i
  %.02.i29.i = phi ptr [ %i.jw, %_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE9push_backES3_.exit.i.i ], [ %.val9.pre.i, %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i ] ; 2 uses
  %i.jp = load ptr, ptr %.02.i29.i, align 8, !tbaa !122 ; 4 uses
  call fastcc void @_ZN12_GLOBAL__N_13CHR13setCHRRegionsEPNS_8CHRScopeES2_(ptr noundef nonnull readonly align 8 dereferenceable(264) %19, ptr noundef %i.jp, ptr noundef %i.jp)
  %i.jq = load i32, ptr %i.jl, align 8, !tbaa !87 ; 2 uses
  %i.jr = load i32, ptr %i.jm, align 4, !tbaa !88
  %.not.i.i30.i = icmp ult i32 %i.jq, %i.jr
  br i1 %.not.i.i30.i, label %bb.y, label %bb.x, !prof !103

bb.x:                                             ; preds = %.lr.ph.i28.i
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %i.jp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE9push_backES3_.exit.i.i

bb.y:                                             ; preds = %.lr.ph.i28.i
  %i.js = zext i32 %i.jq to i64
  %.val.i.i32.i = load ptr, ptr %17, align 8, !tbaa !66
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i32.i, i64 %i.js
  store ptr %i.jp, ptr %i.jt, align 1
  %i.ju = load i32, ptr %i.jl, align 8, !tbaa !87
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jl, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE9push_backES3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE9push_backES3_.exit.i.i: ; preds = %bb.y, %bb.x
  %i.jw = getelementptr inbounds nuw i8, ptr %.02.i29.i, i64 8 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.jw, %i.jo
  br i1 %.not.i31.i, label %_ZN12_GLOBAL__N_13CHR13setCHRRegionsERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i, label %.lr.ph.i28.i

_ZN12_GLOBAL__N_13CHR13setCHRRegionsERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i, %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i
  %.ph388.i = phi ptr [ %i.jh, %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i ], [ %i.jk, %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i ]
  %.ph389.i = phi ptr [ %.ph.i, %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i ], [ %i.ey, %_ZN12_GLOBAL__N_13CHR12filterScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  br label %_ZN4llvm11SmallVectorIPN12_GLOBAL__N_18CHRScopeELj8EED2Ev.exit.i

_ZN12_GLOBAL__N_13CHR13setCHRRegionsERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_18CHRScopeELb1EE9push_backES3_.exit.i.i
  %.pre.i = load i32, ptr %i.jl, align 8, !tbaa !87 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.jx, ptr %18, align 8, !tbaa !66
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store i32 0, ptr %i.jy, align 8, !tbaa !87
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 8, ptr %i.jz, align 4, !tbaa !88
  %i.ka = zext i32 %.pre.i to i64                 ; 4 uses
  %i.kb = icmp eq i32 %.pre.i, 0
  br i1 %i.kb, label %_ZN4llvm11SmallVectorIPN12_GLOBAL__N_18CHRScopeELj8EED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_13CHR13setCHRRegionsERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.i
  %i.kc = icmp ugt i32 %.pre.i, 8
  br i1 %i.kc, label %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.z
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.jx, i64 noundef %i.ka, i64 noundef 8) #25
  %.val12.pre.i.i.i.i = load i32, ptr %i.jy, align 8, !tbaa !87 ; 2 uses
  %.not13.i.i.i.i = icmp eq i32 %.pre.i, %.val12.pre.i.i.i.i
  %.val.i.pre.i = load ptr, ptr %18, align 8, !tbaa !66 ; 2 uses
  br i1 %.not13.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE6resizeEm.exit.i.i, label %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i.i
  %i.kd = zext i32 %.val12.pre.i.i.i.i to i64
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge.i, %bb.z
  %.val11.i.i.i.i = phi ptr [ %.val.i.pre.i, %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge.i ], [ %i.jx, %bb.z ] ; 2 uses
  %.pre-phi.i.i.in.i70.i = phi i64 [ %i.kd, %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i..lr.ph.preheader.i.i.i_crit_edge.i ], [ 0, %bb.z ] ; 2 uses
  %i.ke = getelementptr [8 x i8], ptr %.val11.i.i.i.i, i64 %.pre-phi.i.i.in.i70.i
  %i.kf = sub nsw i64 %i.ka, %.pre-phi.i.i.in.i70.i
  %i.kg = shl nsw i64 %i.kf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ke, i8 0, i64 %i.kg, i1 false), !tbaa !122
  br label %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE6resizeEm.exit.i.i

_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i.i
  %.val.i.i = phi ptr [ %.val.i.pre.i, %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE7reserveEm.exit.i.i.i.i ], [ %.val11.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  store i32 %.pre.i, ptr %i.jy, align 8, !tbaa !87
  %.val6.pre.i.i = load i32, ptr %i.jl, align 8, !tbaa !87 ; 3 uses
  %.val5.i.i = load ptr, ptr %17, align 8, !tbaa !66 ; 2 uses
  %i.kh = icmp ugt i32 %.val6.pre.i.i, 1
  br i1 %i.kh, label %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i, label %bb.aa, !prof !517

bb.aa:                                            ; preds = %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE6resizeEm.exit.i.i
  %i.ki = icmp eq i32 %.val6.pre.i.i, 1
  br i1 %i.ki, label %bb.ab, label %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.val5.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %.val.i.i, align 8, !tbaa !122
  br label %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i

_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i: ; preds = %bb.ab, %bb.aa
  %.idx.i9.i83.i = shl nuw nsw i64 %i.ka, 3       ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i9.i83.i
  br label %bb.ac

_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i: ; preds = %_ZN4llvm15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEE6resizeEm.exit.i.i
  %i.kk = zext i32 %.val6.pre.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.kk, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val.i.i, ptr readonly align 8 %.val5.i.i, i64 %.idx.i.i.i, i1 false)
  %.val7.pre.i.i = load ptr, ptr %18, align 8, !tbaa !66 ; 3 uses
  %.val8.pre.i.i = load i32, ptr %i.jy, align 8, !tbaa !87 ; 3 uses
  %.pre.i.i = zext i32 %.val8.pre.i.i to i64      ; 2 uses
  %.idx.i9.i.i = shl nuw nsw i64 %.pre.i.i, 3     ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.val7.pre.i.i, i64 %.idx.i9.i.i
  %i.km = icmp eq i32 %.val8.pre.i.i, 0
  br i1 %i.km, label %_ZN12_GLOBAL__N_13CHR10sortScopesERN4llvm15SmallVectorImplIPNS_8CHRScopeEEES6_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i
  %i.kn = phi ptr [ %i.kj, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i ], [ %i.kl, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i ] ; 10 uses
  %.idx.i9.i87.i = phi i64 [ %.idx.i9.i83.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i ], [ %.idx.i9.i.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i ] ; 3 uses
  %.val7.i86.i = phi ptr [ %.val.i.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i ], [ %.val7.pre.i.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i ] ; 20 uses
  %.val8.i85.i = phi i32 [ %.pre.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i ], [ %.val8.pre.i.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i ] ; 3 uses
  %.pre-phi.i84.i = phi i64 [ %i.ka, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.thread.i ], [ %.pre.i.i, %_ZN4llvm4copyIRNS_15SmallVectorImplIPN12_GLOBAL__N_18CHRScopeEEEPS4_EET0_OT_S8_.exit.i.i ]
  %i.ko = ptrtoint ptr %i.kn to i64               ; 7 uses
  %i.kp = ptrtoint ptr %.val7.i86.i to i64        ; 2 uses
  %i.kq = add nuw nsw i64 %.pre-phi.i84.i, 1
  %i.kr = lshr i64 %i.kq, 1                       ; 11 uses
  br label %.lr.ph.i.i.i.i.i.i33.i

.lr.ph.i.i.i.i.i.i33.i:                           ; preds = %select.unfold.i.i.i.i.i.i.i, %bb.ac
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.kw, %select.unfold.i.i.i.i.i.i.i ], [ %i.kr, %bb.ac ] ; 6 uses
  %i.ks = shl nuw nsw i64 %.011.i.i.i.i.i.i.i, 3
  %i.kt = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ks, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #28 ; 33 uses
  %.not.i.i.i.i.i.i34.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i34.i, label %select.unfold.i.i.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i33.i
  %i.ku = icmp eq i64 %.011.i.i.i.i.i.i.i, 1
  %i.kv = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 1
  %i.kw = lshr i64 %i.kv, 1
  br i1 %i.ku, label %_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i33.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i33.i
  %i.kx = icmp eq i64 %i.kr, %.011.i.i.i.i.i.i.i
  br i1 %i.kx, label %bb.ad, label %bb.fp, !prof !103

_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.thread.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.ky = icmp eq i64 %i.kr, 0
  br i1 %i.ky, label %bb.ad, label %bb.fo, !prof !103

bb.ad:                                            ; preds = %_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.thread.i.i.i, %_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.i.i.i
  %.sroa.4.0.i.i215.i.i.i = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.thread.i.i.i ], [ %i.kr, %_ZNSt17_Temporary_bufferIPPN12_GLOBAL__N_18CHRScopeES2_EC2ES3_l.exit.i.i.i.i.i ] ; 9 uses
  %.idx2.i.i.i.i = shl nuw nsw i64 %i.kr, 3       ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.val7.i86.i, i64 %.idx2.i.i.i.i ; 21 uses
  %i.la = ptrtoint ptr %i.kz to i64               ; 9 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx2.i.i.i.i ; 5 uses
  %i.lc = icmp ugt i32 %.val8.i85.i, 12
  br i1 %i.lc, label %.lr.ph.i.i33.i.i.i.i, label %._crit_edge.i.i8.i.i.i.i

.lr.ph.i.i33.i.i.i.i:                             ; preds = %bb.ad, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i
  %i.ld = phi i64 [ %i.qz, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i ], [ %i.kp, %bb.ad ] ; 6 uses
  %.029.i.i34.i.i.i.i = phi ptr [ %i.qy, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i ], [ %.val7.i86.i, %bb.ad ] ; 51 uses
  %.022.i.ptr.i.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 8 ; 8 uses
  %.0.val.i.i.i36.i.i.i.i = load ptr, ptr %.022.i.ptr.i.i35.i.i.i.i, align 8, !tbaa !122
  %.val18.i.i.i37.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  %.val2.i383.i.i.i.i = load ptr, ptr %.0.val.i.i.i36.i.i.i.i, align 8, !tbaa !66
  %i.le = load ptr, ptr %.val2.i383.i.i.i.i, align 8, !tbaa !170
  %i.lf = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.le) #25
  %.val.i384.i.i.i.i = load ptr, ptr %.val18.i.i.i37.i.i.i.i, align 8, !tbaa !66
  %i.lg = load ptr, ptr %.val.i384.i.i.i.i, align 8, !tbaa !170
  %i.lh = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.lg) #25
  %i.li = icmp ult i32 %i.lf, %i.lh
  %i.lj = load ptr, ptr %.022.i.ptr.i.i35.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.li, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i.i33.i.i.i.i
  %i.lk = ptrtoint ptr %.022.i.ptr.i.i35.i.i.i.i to i64
  %i.ll = sub i64 %i.lk, %i.ld                    ; 3 uses
  %i.lm = ashr exact i64 %i.ll, 3                 ; 2 uses
  %i.ln = icmp sgt i64 %i.lm, 1
  br i1 %i.ln, label %bb.af, label %bb.ag, !prof !103

bb.af:                                            ; preds = %bb.ae
  %i.lo = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 16
  %i.lp = sub nsw i64 0, %i.lm
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.lp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lq, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.ll, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.lr = icmp eq i64 %i.ll, 8
  br i1 %i.lr, label %bb.ah, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i.i.i.i.i.i.i106.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i.i106.i.i.i.i, ptr %.022.i.ptr.i.i35.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i33.i.i.i.i
  %.0.val12.i.i.i.i38.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  %.val2.i381.i.i.i.i = load ptr, ptr %i.lj, align 8, !tbaa !66
  %i.ls = load ptr, ptr %.val2.i381.i.i.i.i, align 8, !tbaa !170
  %i.lt = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ls) #25
  %.val.i382.i.i.i.i = load ptr, ptr %.0.val12.i.i.i.i38.i.i.i.i, align 8, !tbaa !66
  %i.lu = load ptr, ptr %.val.i382.i.i.i.i, align 8, !tbaa !170
  %i.lv = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.lu) #25
  %i.lw = icmp ult i32 %i.lt, %i.lv
  br i1 %i.lw, label %.lr.ph.i.i.i.i101.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i

.lr.ph.i.i.i.i101.i.i.i.i:                        ; preds = %bb.ai, %.lr.ph.i.i.i.i101.i.i.i.i
  %.014.i.i.i.i102.i.i.i.i = phi ptr [ %.0.i.i.i.i104.i.i.i.i, %.lr.ph.i.i.i.i101.i.i.i.i ], [ %.029.i.i34.i.i.i.i, %bb.ai ] ; 4 uses
  %.0913.i.i.i.i103.i.i.i.i = phi ptr [ %.014.i.i.i.i102.i.i.i.i, %.lr.ph.i.i.i.i101.i.i.i.i ], [ %.022.i.ptr.i.i35.i.i.i.i, %bb.ai ]
  %i.lx = load ptr, ptr %.014.i.i.i.i102.i.i.i.i, align 8, !tbaa !122
  store ptr %i.lx, ptr %.0913.i.i.i.i103.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.i.i104.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i102.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.i.i105.i.i.i.i = load ptr, ptr %.0.i.i.i.i104.i.i.i.i, align 8, !tbaa !122
  %.val2.i379.i.i.i.i = load ptr, ptr %i.lj, align 8, !tbaa !66
  %i.ly = load ptr, ptr %.val2.i379.i.i.i.i, align 8, !tbaa !170
  %i.lz = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ly) #25
  %.val.i380.i.i.i.i = load ptr, ptr %.0.val.i.i.i.i105.i.i.i.i, align 8, !tbaa !66
  %i.ma = load ptr, ptr %.val.i380.i.i.i.i, align 8, !tbaa !170
  %i.mb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ma) #25
  %i.mc = icmp ult i32 %i.lz, %i.mb
  br i1 %i.mc, label %.lr.ph.i.i.i.i101.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i, !llvm.loop !3

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i: ; preds = %.lr.ph.i.i.i.i101.i.i.i.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i.i.i40.i.i.i.i = phi ptr [ %.029.i.i34.i.i.i.i, %bb.ah ], [ %.029.i.i34.i.i.i.i, %bb.af ], [ %.029.i.i34.i.i.i.i, %bb.ag ], [ %.022.i.ptr.i.i35.i.i.i.i, %bb.ai ], [ %.014.i.i.i.i102.i.i.i.i, %.lr.ph.i.i.i.i101.i.i.i.i ]
  store ptr %i.lj, ptr %.sink.i.i.i40.i.i.i.i, align 8, !tbaa !122
  %.022.i.ptr.1.i.i41.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 16 ; 8 uses
  %.0.val.i.1.i.i42.i.i.i.i = load ptr, ptr %.022.i.ptr.1.i.i41.i.i.i.i, align 8, !tbaa !122
  %.val18.i.1.i.i43.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  %.val2.i377.i.i.i.i = load ptr, ptr %.0.val.i.1.i.i42.i.i.i.i, align 8, !tbaa !66
  %i.md = load ptr, ptr %.val2.i377.i.i.i.i, align 8, !tbaa !170
  %i.me = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.md) #25
  %.val.i378.i.i.i.i = load ptr, ptr %.val18.i.1.i.i43.i.i.i.i, align 8, !tbaa !66
  %i.mf = load ptr, ptr %.val.i378.i.i.i.i, align 8, !tbaa !170
  %i.mg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.mf) #25
  %i.mh = icmp ult i32 %i.me, %i.mg
  %i.mi = load ptr, ptr %.022.i.ptr.1.i.i41.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.mh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i
  %.0.val12.i.i.1.i.i44.i.i.i.i = load ptr, ptr %.022.i.ptr.i.i35.i.i.i.i, align 8, !tbaa !122
  %.val2.i375.i.i.i.i = load ptr, ptr %i.mi, align 8, !tbaa !66
  %i.mj = load ptr, ptr %.val2.i375.i.i.i.i, align 8, !tbaa !170
  %i.mk = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.mj) #25
  %.val.i376.i.i.i.i = load ptr, ptr %.0.val12.i.i.1.i.i44.i.i.i.i, align 8, !tbaa !66
  %i.ml = load ptr, ptr %.val.i376.i.i.i.i, align 8, !tbaa !170
  %i.mm = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ml) #25
  %i.mn = icmp ult i32 %i.mk, %i.mm
  br i1 %i.mn, label %.lr.ph.i.i.1.i.i95.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i

.lr.ph.i.i.1.i.i95.i.i.i.i:                       ; preds = %bb.aj, %.lr.ph.i.i.1.i.i95.i.i.i.i
  %.014.i.i.1.i.i96.i.i.i.i = phi ptr [ %.0.i.i.1.i.i98.i.i.i.i, %.lr.ph.i.i.1.i.i95.i.i.i.i ], [ %.022.i.ptr.i.i35.i.i.i.i, %bb.aj ] ; 4 uses
  %.0913.i.i.1.i.i97.i.i.i.i = phi ptr [ %.014.i.i.1.i.i96.i.i.i.i, %.lr.ph.i.i.1.i.i95.i.i.i.i ], [ %.022.i.ptr.1.i.i41.i.i.i.i, %bb.aj ]
  %i.mo = load ptr, ptr %.014.i.i.1.i.i96.i.i.i.i, align 8, !tbaa !122
  store ptr %i.mo, ptr %.0913.i.i.1.i.i97.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.1.i.i98.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.1.i.i96.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.1.i.i99.i.i.i.i = load ptr, ptr %.0.i.i.1.i.i98.i.i.i.i, align 8, !tbaa !122
  %.val2.i373.i.i.i.i = load ptr, ptr %i.mi, align 8, !tbaa !66
  %i.mp = load ptr, ptr %.val2.i373.i.i.i.i, align 8, !tbaa !170
  %i.mq = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.mp) #25
  %.val.i374.i.i.i.i = load ptr, ptr %.0.val.i.i.1.i.i99.i.i.i.i, align 8, !tbaa !66
  %i.mr = load ptr, ptr %.val.i374.i.i.i.i, align 8, !tbaa !170
  %i.ms = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.mr) #25
  %i.mt = icmp ult i32 %i.mq, %i.ms
  br i1 %i.mt, label %.lr.ph.i.i.1.i.i95.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i, !llvm.loop !3

bb.ak:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i39.i.i.i.i
  %i.mu = ptrtoint ptr %.022.i.ptr.1.i.i41.i.i.i.i to i64
  %i.mv = sub i64 %i.mu, %i.ld                    ; 3 uses
  %i.mw = ashr exact i64 %i.mv, 3                 ; 2 uses
  %i.mx = icmp sgt i64 %i.mw, 1
  br i1 %i.mx, label %bb.an, label %bb.al, !prof !103

bb.al:                                            ; preds = %bb.ak
  %i.my = icmp eq i64 %i.mv, 8
  br i1 %i.my, label %bb.am, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %.val.i.i.i.i.i.i.1.i.i100.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.1.i.i100.i.i.i.i, ptr %.022.i.ptr.1.i.i41.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i

bb.an:                                            ; preds = %bb.ak
  %i.mz = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 24
  %i.na = sub nsw i64 0, %i.mw
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.na
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nb, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.mv, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i: ; preds = %.lr.ph.i.i.1.i.i95.i.i.i.i, %bb.an, %bb.am, %bb.al, %bb.aj
  %.sink.i.1.i.i46.i.i.i.i = phi ptr [ %.029.i.i34.i.i.i.i, %bb.am ], [ %.029.i.i34.i.i.i.i, %bb.an ], [ %.029.i.i34.i.i.i.i, %bb.al ], [ %.022.i.ptr.1.i.i41.i.i.i.i, %bb.aj ], [ %.014.i.i.1.i.i96.i.i.i.i, %.lr.ph.i.i.1.i.i95.i.i.i.i ]
  store ptr %i.mi, ptr %.sink.i.1.i.i46.i.i.i.i, align 8, !tbaa !122
  %.022.i.ptr.2.i.i47.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 24 ; 8 uses
  %.0.val.i.2.i.i48.i.i.i.i = load ptr, ptr %.022.i.ptr.2.i.i47.i.i.i.i, align 8, !tbaa !122
  %.val18.i.2.i.i49.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  %.val2.i371.i.i.i.i = load ptr, ptr %.0.val.i.2.i.i48.i.i.i.i, align 8, !tbaa !66
  %i.nc = load ptr, ptr %.val2.i371.i.i.i.i, align 8, !tbaa !170
  %i.nd = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.nc) #25
  %.val.i372.i.i.i.i = load ptr, ptr %.val18.i.2.i.i49.i.i.i.i, align 8, !tbaa !66
  %i.ne = load ptr, ptr %.val.i372.i.i.i.i, align 8, !tbaa !170
  %i.nf = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ne) #25
  %i.ng = icmp ult i32 %i.nd, %i.nf
  %i.nh = load ptr, ptr %.022.i.ptr.2.i.i47.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.ng, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i
  %.0.val12.i.i.2.i.i50.i.i.i.i = load ptr, ptr %.022.i.ptr.1.i.i41.i.i.i.i, align 8, !tbaa !122
  %.val2.i369.i.i.i.i = load ptr, ptr %i.nh, align 8, !tbaa !66
  %i.ni = load ptr, ptr %.val2.i369.i.i.i.i, align 8, !tbaa !170
  %i.nj = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ni) #25
  %.val.i370.i.i.i.i = load ptr, ptr %.0.val12.i.i.2.i.i50.i.i.i.i, align 8, !tbaa !66
  %i.nk = load ptr, ptr %.val.i370.i.i.i.i, align 8, !tbaa !170
  %i.nl = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.nk) #25
  %i.nm = icmp ult i32 %i.nj, %i.nl
  br i1 %i.nm, label %.lr.ph.i.i.2.i.i89.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.2.i.i51.i.i.i.i

.lr.ph.i.i.2.i.i89.i.i.i.i:                       ; preds = %bb.ao, %.lr.ph.i.i.2.i.i89.i.i.i.i
  %.014.i.i.2.i.i90.i.i.i.i = phi ptr [ %.0.i.i.2.i.i92.i.i.i.i, %.lr.ph.i.i.2.i.i89.i.i.i.i ], [ %.022.i.ptr.1.i.i41.i.i.i.i, %bb.ao ] ; 4 uses
  %.0913.i.i.2.i.i91.i.i.i.i = phi ptr [ %.014.i.i.2.i.i90.i.i.i.i, %.lr.ph.i.i.2.i.i89.i.i.i.i ], [ %.022.i.ptr.2.i.i47.i.i.i.i, %bb.ao ]
  %i.nn = load ptr, ptr %.014.i.i.2.i.i90.i.i.i.i, align 8, !tbaa !122
  store ptr %i.nn, ptr %.0913.i.i.2.i.i91.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.2.i.i92.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.2.i.i90.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.2.i.i93.i.i.i.i = load ptr, ptr %.0.i.i.2.i.i92.i.i.i.i, align 8, !tbaa !122
  %.val2.i367.i.i.i.i = load ptr, ptr %i.nh, align 8, !tbaa !66
  %i.no = load ptr, ptr %.val2.i367.i.i.i.i, align 8, !tbaa !170
  %i.np = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.no) #25
  %.val.i368.i.i.i.i = load ptr, ptr %.0.val.i.i.2.i.i93.i.i.i.i, align 8, !tbaa !66
  %i.nq = load ptr, ptr %.val.i368.i.i.i.i, align 8, !tbaa !170
  %i.nr = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.nq) #25
  %i.ns = icmp ult i32 %i.np, %i.nr
  br i1 %i.ns, label %.lr.ph.i.i.2.i.i89.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.2.i.i51.i.i.i.i, !llvm.loop !3

bb.ap:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.1.i.i45.i.i.i.i
  %i.nt = ptrtoint ptr %.022.i.ptr.2.i.i47.i.i.i.i to i64
  %i.nu = sub i64 %i.nt, %i.ld                    ; 3 uses
  %i.nv = ashr exact i64 %i.nu, 3                 ; 2 uses
  %i.nw = icmp sgt i64 %i.nv, 1
  br i1 %i.nw, label %bb.as, label %bb.aq, !prof !103

bb.aq:                                            ; preds = %bb.ap
  %i.nx = icmp eq i64 %i.nu, 8
  br i1 %i.nx, label %bb.ar, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.2.i.i51.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %.val.i.i.i.i.i.i.2.i.i94.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.2.i.i94.i.i.i.i, ptr %.022.i.ptr.2.i.i47.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.2.i.i51.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.ny = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 32
  %i.nz = sub nsw i64 0, %i.nv
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.nz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oa, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.nu, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4llvm26ControlHeightReductionPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %.0.val.i.i.4.i.i81.i.i.i.i = load ptr, ptr %.0.i.i.4.i.i80.i.i.i.i, align 8, !tbaa !122
  %.val2.i355.i.i.i.i = load ptr, ptr %i.pf, align 8, !tbaa !66
  %i.pm = load ptr, ptr %.val2.i355.i.i.i.i, align 8, !tbaa !170
  %i.pn = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.pm) #25
  %.val.i356.i.i.i.i = load ptr, ptr %.0.val.i.i.4.i.i81.i.i.i.i, align 8, !tbaa !66
  %i.po = load ptr, ptr %.val.i356.i.i.i.i, align 8, !tbaa !170
  %i.pp = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.po) #25
  %i.pq = icmp ult i32 %i.pn, %i.pp
  br i1 %i.pq, label %.lr.ph.i.i.4.i.i77.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i, !llvm.loop !3

bb.az:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.3.i.i57.i.i.i.i
  %i.pr = ptrtoint ptr %.022.i.ptr.4.i.i59.i.i.i.i to i64
  %i.ps = sub i64 %i.pr, %i.ld                    ; 3 uses
  %i.pt = ashr exact i64 %i.ps, 3                 ; 2 uses
  %i.pu = icmp sgt i64 %i.pt, 1
  br i1 %i.pu, label %bb.bc, label %bb.ba, !prof !103

bb.ba:                                            ; preds = %bb.az
  %i.pv = icmp eq i64 %i.ps, 8
  br i1 %i.pv, label %bb.bb, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %.val.i.i.i.i.i.i.4.i.i82.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.4.i.i82.i.i.i.i, ptr %.022.i.ptr.4.i.i59.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.pw = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 48
  %i.px = sub nsw i64 0, %i.pt
  %i.py = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.py, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.ps, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i: ; preds = %.lr.ph.i.i.4.i.i77.i.i.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.sink.i.4.i.i64.i.i.i.i = phi ptr [ %.029.i.i34.i.i.i.i, %bb.bb ], [ %.029.i.i34.i.i.i.i, %bb.bc ], [ %.029.i.i34.i.i.i.i, %bb.ba ], [ %.022.i.ptr.4.i.i59.i.i.i.i, %bb.ay ], [ %.014.i.i.4.i.i78.i.i.i.i, %.lr.ph.i.i.4.i.i77.i.i.i.i ]
  store ptr %i.pf, ptr %.sink.i.4.i.i64.i.i.i.i, align 8, !tbaa !122
  %.022.i.ptr.5.i.i65.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 48 ; 6 uses
  %.0.val.i.5.i.i66.i.i.i.i = load ptr, ptr %.022.i.ptr.5.i.i65.i.i.i.i, align 8, !tbaa !122
  %.val18.i.5.i.i67.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  %.val2.i353.i.i.i.i = load ptr, ptr %.0.val.i.5.i.i66.i.i.i.i, align 8, !tbaa !66
  %i.pz = load ptr, ptr %.val2.i353.i.i.i.i, align 8, !tbaa !170
  %i.qa = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.pz) #25
  %.val.i354.i.i.i.i = load ptr, ptr %.val18.i.5.i.i67.i.i.i.i, align 8, !tbaa !66
  %i.qb = load ptr, ptr %.val.i354.i.i.i.i, align 8, !tbaa !170
  %i.qc = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qb) #25
  %i.qd = icmp ult i32 %i.qa, %i.qc
  %i.qe = load ptr, ptr %.022.i.ptr.5.i.i65.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.qd, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i
  %.0.val12.i.i.5.i.i68.i.i.i.i = load ptr, ptr %.022.i.ptr.4.i.i59.i.i.i.i, align 8, !tbaa !122
  %.val2.i351.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !66
  %i.qf = load ptr, ptr %.val2.i351.i.i.i.i, align 8, !tbaa !170
  %i.qg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qf) #25
  %.val.i352.i.i.i.i = load ptr, ptr %.0.val12.i.i.5.i.i68.i.i.i.i, align 8, !tbaa !66
  %i.qh = load ptr, ptr %.val.i352.i.i.i.i, align 8, !tbaa !170
  %i.qi = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qh) #25
  %i.qj = icmp ult i32 %i.qg, %i.qi
  br i1 %i.qj, label %.lr.ph.i.i.5.i.i71.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

.lr.ph.i.i.5.i.i71.i.i.i.i:                       ; preds = %bb.bd, %.lr.ph.i.i.5.i.i71.i.i.i.i
  %.014.i.i.5.i.i72.i.i.i.i = phi ptr [ %.0.i.i.5.i.i74.i.i.i.i, %.lr.ph.i.i.5.i.i71.i.i.i.i ], [ %.022.i.ptr.4.i.i59.i.i.i.i, %bb.bd ] ; 4 uses
  %.0913.i.i.5.i.i73.i.i.i.i = phi ptr [ %.014.i.i.5.i.i72.i.i.i.i, %.lr.ph.i.i.5.i.i71.i.i.i.i ], [ %.022.i.ptr.5.i.i65.i.i.i.i, %bb.bd ]
  %i.qk = load ptr, ptr %.014.i.i.5.i.i72.i.i.i.i, align 8, !tbaa !122
  store ptr %i.qk, ptr %.0913.i.i.5.i.i73.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.5.i.i74.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.5.i.i72.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.5.i.i75.i.i.i.i = load ptr, ptr %.0.i.i.5.i.i74.i.i.i.i, align 8, !tbaa !122
  %.val2.i349.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !66
  %i.ql = load ptr, ptr %.val2.i349.i.i.i.i, align 8, !tbaa !170
  %i.qm = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ql) #25
  %.val.i350.i.i.i.i = load ptr, ptr %.0.val.i.i.5.i.i75.i.i.i.i, align 8, !tbaa !66
  %i.qn = load ptr, ptr %.val.i350.i.i.i.i, align 8, !tbaa !170
  %i.qo = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.qn) #25
  %i.qp = icmp ult i32 %i.qm, %i.qo
  br i1 %i.qp, label %.lr.ph.i.i.5.i.i71.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i, !llvm.loop !3

bb.be:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i63.i.i.i.i
  %i.qq = ptrtoint ptr %.022.i.ptr.5.i.i65.i.i.i.i to i64
  %i.qr = sub i64 %i.qq, %i.ld                    ; 3 uses
  %i.qs = ashr exact i64 %i.qr, 3                 ; 2 uses
  %i.qt = icmp sgt i64 %i.qs, 1
  br i1 %i.qt, label %bb.bh, label %bb.bf, !prof !103

bb.bf:                                            ; preds = %bb.be
  %i.qu = icmp eq i64 %i.qr, 8
  br i1 %i.qu, label %bb.bg, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i.i.i.i.i.5.i.i76.i.i.i.i = load ptr, ptr %.029.i.i34.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.5.i.i76.i.i.i.i, ptr %.022.i.ptr.5.i.i65.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

bb.bh:                                            ; preds = %bb.be
  %i.qv = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 56
  %i.qw = sub nsw i64 0, %i.qs
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.qw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qx, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i34.i.i.i.i, i64 %i.qr, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i: ; preds = %.lr.ph.i.i.5.i.i71.i.i.i.i, %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %.sink.i.5.i.i70.i.i.i.i = phi ptr [ %.029.i.i34.i.i.i.i, %bb.bg ], [ %.029.i.i34.i.i.i.i, %bb.bh ], [ %.029.i.i34.i.i.i.i, %bb.bf ], [ %.022.i.ptr.5.i.i65.i.i.i.i, %bb.bd ], [ %.014.i.i.5.i.i72.i.i.i.i, %.lr.ph.i.i.5.i.i71.i.i.i.i ]
  store ptr %i.qe, ptr %.sink.i.5.i.i70.i.i.i.i, align 8, !tbaa !122
  %i.qy = getelementptr inbounds nuw i8, ptr %.029.i.i34.i.i.i.i, i64 56 ; 3 uses
  %i.qz = ptrtoint ptr %i.qy to i64               ; 3 uses
  %i.ra = sub i64 %i.la, %i.qz
  %i.rb = icmp sgt i64 %i.ra, 48
  br i1 %i.rb, label %.lr.ph.i.i33.i.i.i.i, label %._crit_edge.i.i8.i.i.i.i, !llvm.loop !4

._crit_edge.i.i8.i.i.i.i:                         ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i, %bb.ad
  %.0.lcssa.i.i9.i.i.i.i = phi ptr [ %.val7.i86.i, %bb.ad ], [ %i.qy, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i ] ; 9 uses
  %.lcssa.i.i10.i.i.i.i = phi i64 [ %i.kp, %bb.ad ], [ %i.qz, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i69.i.i.i.i ]
  %i.rc = icmp eq ptr %.0.lcssa.i.i9.i.i.i.i, %i.kz
  %.019.i12.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i9.i.i.i.i, i64 8 ; 2 uses
  %.not20.i.i.i12.i.i.i.i = icmp eq ptr %.019.i12.i.i11.i.i.i.i, %i.kz
  %or.cond.i.i13.i.i.i.i = select i1 %i.rc, i1 true, i1 %.not20.i.i.i12.i.i.i.i
  br i1 %or.cond.i.i13.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i

.lr.ph.i.i.i14.i.i.i.i:                           ; preds = %._crit_edge.i.i8.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i
  %.022.i13.i.i15.i.i.i.i = phi ptr [ %.0.i20.i.i22.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i ], [ %.019.i12.i.i11.i.i.i.i, %._crit_edge.i.i8.i.i.i.i ] ; 7 uses
  %.pn21.i14.i.i16.i.i.i.i = phi ptr [ %.022.i13.i.i15.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i ], [ %.0.lcssa.i.i9.i.i.i.i, %._crit_edge.i.i8.i.i.i.i ] ; 4 uses
  %.0.val.i15.i.i17.i.i.i.i = load ptr, ptr %.022.i13.i.i15.i.i.i.i, align 8, !tbaa !122
  %.val18.i16.i.i18.i.i.i.i = load ptr, ptr %.0.lcssa.i.i9.i.i.i.i, align 8, !tbaa !122
  %.val2.i347.i.i.i.i = load ptr, ptr %.0.val.i15.i.i17.i.i.i.i, align 8, !tbaa !66
  %i.rd = load ptr, ptr %.val2.i347.i.i.i.i, align 8, !tbaa !170
  %i.re = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.rd) #25
  %.val.i348.i.i.i.i = load ptr, ptr %.val18.i16.i.i18.i.i.i.i, align 8, !tbaa !66
  %i.rf = load ptr, ptr %.val.i348.i.i.i.i, align 8, !tbaa !170
  %i.rg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.rf) #25
  %i.rh = icmp ult i32 %i.re, %i.rg
  %i.ri = load ptr, ptr %.022.i13.i.i15.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.rh, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.lr.ph.i.i.i14.i.i.i.i
  %i.rj = ptrtoint ptr %.022.i13.i.i15.i.i.i.i to i64
  %i.rk = sub i64 %i.rj, %.lcssa.i.i10.i.i.i.i    ; 3 uses
  %i.rl = ashr exact i64 %i.rk, 3                 ; 2 uses
  %i.rm = icmp sgt i64 %i.rl, 1
  br i1 %i.rm, label %bb.bj, label %bb.bk, !prof !103

bb.bj:                                            ; preds = %bb.bi
  %i.rn = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i16.i.i.i.i, i64 16
  %i.ro = sub nsw i64 0, %i.rl
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.ro
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rp, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa.i.i9.i.i.i.i, i64 %i.rk, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.rq = icmp eq i64 %i.rk, 8
  br i1 %i.rq, label %bb.bl, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.rr = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i16.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i27.i.i32.i.i.i.i = load ptr, ptr %.0.lcssa.i.i9.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i27.i.i32.i.i.i.i, ptr %i.rr, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i14.i.i.i.i
  %.0.val12.i.i17.i.i19.i.i.i.i = load ptr, ptr %.pn21.i14.i.i16.i.i.i.i, align 8, !tbaa !122
  %.val2.i345.i.i.i.i = load ptr, ptr %i.ri, align 8, !tbaa !66
  %i.rs = load ptr, ptr %.val2.i345.i.i.i.i, align 8, !tbaa !170
  %i.rt = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.rs) #25
  %.val.i346.i.i.i.i = load ptr, ptr %.0.val12.i.i17.i.i19.i.i.i.i, align 8, !tbaa !66
  %i.ru = load ptr, ptr %.val.i346.i.i.i.i, align 8, !tbaa !170
  %i.rv = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ru) #25
  %i.rw = icmp ult i32 %i.rt, %i.rv
  br i1 %i.rw, label %.lr.ph.i.i22.i.i27.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i

.lr.ph.i.i22.i.i27.i.i.i.i:                       ; preds = %bb.bm, %.lr.ph.i.i22.i.i27.i.i.i.i
  %.014.i.i23.i.i28.i.i.i.i = phi ptr [ %.0.i.i25.i.i30.i.i.i.i, %.lr.ph.i.i22.i.i27.i.i.i.i ], [ %.pn21.i14.i.i16.i.i.i.i, %bb.bm ] ; 4 uses
  %.0913.i.i24.i.i29.i.i.i.i = phi ptr [ %.014.i.i23.i.i28.i.i.i.i, %.lr.ph.i.i22.i.i27.i.i.i.i ], [ %.022.i13.i.i15.i.i.i.i, %bb.bm ]
  %i.rx = load ptr, ptr %.014.i.i23.i.i28.i.i.i.i, align 8, !tbaa !122
  store ptr %i.rx, ptr %.0913.i.i24.i.i29.i.i.i.i, align 8, !tbaa !122
  %.0.i.i25.i.i30.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i23.i.i28.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i26.i.i31.i.i.i.i = load ptr, ptr %.0.i.i25.i.i30.i.i.i.i, align 8, !tbaa !122
  %.val2.i343.i.i.i.i = load ptr, ptr %i.ri, align 8, !tbaa !66
  %i.ry = load ptr, ptr %.val2.i343.i.i.i.i, align 8, !tbaa !170
  %i.rz = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ry) #25
  %.val.i344.i.i.i.i = load ptr, ptr %.0.val.i.i26.i.i31.i.i.i.i, align 8, !tbaa !66
  %i.sa = load ptr, ptr %.val.i344.i.i.i.i, align 8, !tbaa !170
  %i.sb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.sa) #25
  %i.sc = icmp ult i32 %i.rz, %i.sb
  br i1 %i.sc, label %.lr.ph.i.i22.i.i27.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i, !llvm.loop !3

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i: ; preds = %.lr.ph.i.i22.i.i27.i.i.i.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.sink.i19.i.i21.i.i.i.i = phi ptr [ %.0.lcssa.i.i9.i.i.i.i, %bb.bl ], [ %.0.lcssa.i.i9.i.i.i.i, %bb.bj ], [ %.0.lcssa.i.i9.i.i.i.i, %bb.bk ], [ %.022.i13.i.i15.i.i.i.i, %bb.bm ], [ %.014.i.i23.i.i28.i.i.i.i, %.lr.ph.i.i22.i.i27.i.i.i.i ]
  store ptr %i.ri, ptr %.sink.i19.i.i21.i.i.i.i, align 8, !tbaa !122
  %.0.i20.i.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %.022.i13.i.i15.i.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i23.i.i.i.i = icmp eq ptr %.0.i20.i.i22.i.i.i.i, %i.kz
  br i1 %.not.i21.i.i23.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i, !llvm.loop !5

_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i: ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i20.i.i.i.i, %._crit_edge.i.i8.i.i.i.i
  %i.sd = icmp ugt i32 %.val8.i85.i, 14
  br i1 %i.sd, label %.lr.ph.i25.preheader.i.i.i.i, label %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i

.lr.ph.i25.preheader.i.i.i.i:                     ; preds = %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i24.i.i.i.i
  %i.se = ptrtoint ptr %i.lb to i64               ; 3 uses
  br label %.lr.ph.i25.i.i.i.i

.lr.ph.i25.i.i.i.i:                               ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit282.i.i.i.i, %.lr.ph.i25.preheader.i.i.i.i
  %.022.i26.i.i.i.i = phi i64 [ %i.uu, %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit282.i.i.i.i ], [ 7, %.lr.ph.i25.preheader.i.i.i.i ] ; 9 uses
  %i.sf = shl nsw i64 %.022.i26.i.i.i.i, 1        ; 7 uses
  %.not52.i283.i.i.i.i = icmp slt i64 %i.kr, %i.sf
  br i1 %.not52.i283.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %.lr.ph.i284.i.i.i.i

.lr.ph.i284.i.i.i.i:                              ; preds = %.lr.ph.i25.i.i.i.i
  %.idx.i285.i.i.i.i = shl i64 %.022.i26.i.i.i.i, 3 ; 17 uses
  %.idx46.i286.i.i.i.i = shl i64 %.022.i26.i.i.i.i, 4 ; 2 uses
  %.not47.i287.i.i.i.i = icmp eq i64 %.idx.i285.i.i.i.i, %.idx46.i286.i.i.i.i
  br i1 %.not47.i287.i.i.i.i, label %._crit_edge.i.us.preheader.i334.i.i.i.i, label %.lr.ph.i.preheader.i288.i.i.i.i

._crit_edge.i.us.preheader.i334.i.i.i.i:          ; preds = %.lr.ph.i284.i.i.i.i
  %20 = icmp sgt i64 %.022.i26.i.i.i.i, 1         ; 2 uses
  %i.sg = icmp sgt i64 %.idx.i285.i.i.i.i, 8
  br i1 %i.sg, label %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i, label %._crit_edge.i.us.preheader.i334.split.i.i.i.i, !prof !193

._crit_edge.i.us.preheader.i334.split.us.i.i.i.i: ; preds = %._crit_edge.i.us.preheader.i334.i.i.i.i
  br i1 %20, label %._crit_edge.i.us.i335.us.us.i.i.i.i, label %._crit_edge.i.us.i335.us.i.i.i.i, !prof !103

._crit_edge.i.us.i335.us.us.i.i.i.i:              ; preds = %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i, %._crit_edge.i.us.i335.us.us.i.i.i.i
  %.054.us.i336.us.us.i.i.i.i = phi ptr [ %i.sh, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ] ; 2 uses
  %.01953.us.i337.us.us.i.i.i.i = phi ptr [ %i.sj, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.054.us.i336.us.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i337.us.us.i.i.i.i, ptr align 8 %.054.us.i336.us.us.i.i.i.i, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %.01953.us.i337.us.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.si, ptr nonnull align 8 %i.sh, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 %.idx.i285.i.i.i.i ; 2 uses
  %i.sk = ptrtoint ptr %i.sh to i64
  %i.sl = sub i64 %i.la, %i.sk
  %i.sm = ashr exact i64 %i.sl, 3                 ; 2 uses
  %.not.us.i340.us.us.i.i.i.i = icmp slt i64 %i.sm, %i.sf
  br i1 %.not.us.i340.us.us.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.us.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.i335.us.i.i.i.i:                 ; preds = %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i, %._crit_edge.i.us.i335.us.i.i.i.i
  %.054.us.i336.us.i.i.i.i = phi ptr [ %i.sn, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ]
  %.01953.us.i337.us.i.i.i.i = phi ptr [ %i.sp, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i334.split.us.i.i.i.i ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.054.us.i336.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.01953.us.i337.us.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.so, ptr nonnull align 8 %i.sn, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %.idx.i285.i.i.i.i ; 2 uses
  %i.sq = ptrtoint ptr %i.sn to i64
  %i.sr = sub i64 %i.la, %i.sq
  %i.ss = ashr exact i64 %i.sr, 3                 ; 2 uses
  %.not.us.i340.us.i.i.i.i = icmp slt i64 %i.ss, %i.sf
  br i1 %.not.us.i340.us.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.preheader.i334.split.i.i.i.i:    ; preds = %._crit_edge.i.us.preheader.i334.i.i.i.i
  br i1 %20, label %._crit_edge.i.us.i335.i.i.i.i.a, label %._crit_edge.i.us.i335.i.i.i.i, !prof !103

._crit_edge.i.us.i335.i.i.i.i.a:                  ; preds = %._crit_edge.i.us.preheader.i334.split.i.i.i.i, %._crit_edge.i.us.i335.i.i.i.i.a
  %.054.us.i336.i.i.i.i.a = phi ptr [ %i.st, %._crit_edge.i.us.i335.i.i.i.i.a ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i334.split.i.i.i.i ] ; 2 uses
  %.01953.us.i337.i.i.i.i.a = phi ptr [ %i.su, %._crit_edge.i.us.i335.i.i.i.i.a ], [ %i.kt, %._crit_edge.i.us.preheader.i334.split.i.i.i.i ] ; 2 uses
  %i.st = getelementptr inbounds i8, ptr %.054.us.i336.i.i.i.i.a, i64 %.idx.i285.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i337.i.i.i.i.a, ptr align 8 %.054.us.i336.i.i.i.i.a, i64 %.idx.i285.i.i.i.i, i1 false)
  %i.su = getelementptr inbounds i8, ptr %.01953.us.i337.i.i.i.i.a, i64 %.idx.i285.i.i.i.i ; 2 uses
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = sub i64 %i.la, %i.sv
  %i.sx = ashr exact i64 %i.sw, 3                 ; 2 uses
  %.not.us.i340.i.i.i.i.a = icmp slt i64 %i.sx, %i.sf
  br i1 %.not.us.i340.i.i.i.i.a, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.i.i.i.i.a, !llvm.loop !6

._crit_edge.i.us.i335.i.i.i.i:                    ; preds = %._crit_edge.i.us.preheader.i334.split.i.i.i.i, %._crit_edge.i.us.i335.i.i.i.i
  %.054.us.i336.i.i.i.i = phi ptr [ %21, %._crit_edge.i.us.i335.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i334.split.i.i.i.i ]
  %.01953.us.i337.i.i.i.i = phi ptr [ %22, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i334.split.i.i.i.i ]
  %21 = getelementptr inbounds i8, ptr %.054.us.i336.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 3 uses
  %22 = getelementptr inbounds i8, ptr %.01953.us.i337.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 2 uses
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %i.la, %23
  %25 = ashr exact i64 %24, 3                     ; 2 uses
  %.not.us.i340.i.i.i.i = icmp slt i64 %25, %i.sf
  br i1 %.not.us.i340.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %._crit_edge.i.us.i335.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i288.i.i.i.i:                  ; preds = %.lr.ph.i284.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i
  %.054.i289.i.i.i.i = phi ptr [ %i.sz, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ], [ %.val7.i86.i, %.lr.ph.i284.i.i.i.i ] ; 3 uses
  %.01953.i290.i.i.i.i = phi ptr [ %i.tu, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ], [ %i.kt, %.lr.ph.i284.i.i.i.i ]
  %i.sy = getelementptr inbounds i8, ptr %.054.i289.i.i.i.i, i64 %.idx.i285.i.i.i.i ; 3 uses
  %i.sz = getelementptr inbounds i8, ptr %.054.i289.i.i.i.i, i64 %.idx46.i286.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i291.i.i.i.i

.lr.ph.i.i291.i.i.i.i:                            ; preds = %.lr.ph.i.i291.i.i.i.i, %.lr.ph.i.preheader.i288.i.i.i.i
  %.025.i.i292.i.i.i.i = phi ptr [ %i.tf, %.lr.ph.i.i291.i.i.i.i ], [ %.01953.i290.i.i.i.i, %.lr.ph.i.preheader.i288.i.i.i.i ] ; 2 uses
  %.01824.i.i293.i.i.i.i = phi ptr [ %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i291.i.i.i.i ], [ %.054.i289.i.i.i.i, %.lr.ph.i.preheader.i288.i.i.i.i ] ; 3 uses
  %.01923.i.i294.i.i.i.i = phi ptr [ %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i291.i.i.i.i ], [ %i.sy, %.lr.ph.i.preheader.i288.i.i.i.i ] ; 3 uses
  %.019.val.i.i295.i.i.i.i = load ptr, ptr %.01923.i.i294.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i296.i.i.i.i = load ptr, ptr %.01824.i.i293.i.i.i.i, align 8, !tbaa !122
  %.val2.i399.i.i.i.i = load ptr, ptr %.019.val.i.i295.i.i.i.i, align 8, !tbaa !66
  %i.ta = load ptr, ptr %.val2.i399.i.i.i.i, align 8, !tbaa !170
  %i.tb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ta) #25
  %.val.i400.i.i.i.i = load ptr, ptr %.018.val.i.i296.i.i.i.i, align 8, !tbaa !66
  %i.tc = load ptr, ptr %.val.i400.i.i.i.i, align 8, !tbaa !170
  %i.td = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.tc) #25
  %i.te = icmp ult i32 %i.tb, %i.td               ; 3 uses
  %.sink.in.i.i297.i.i.i.i = select i1 %i.te, ptr %.01923.i.i294.i.i.i.i, ptr %.01824.i.i293.i.i.i.i
  %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.te, i64 8, i64 0
  %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i.i294.i.i.i.i, i64 %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.te, i64 0, i64 8
  %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i.i293.i.i.i.i, i64 %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.sink.i.i302.i.i.i.i = load ptr, ptr %.sink.in.i.i297.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i302.i.i.i.i, ptr %.025.i.i292.i.i.i.i, align 8, !tbaa !122
  %i.tf = getelementptr inbounds nuw i8, ptr %.025.i.i292.i.i.i.i, i64 8 ; 4 uses
  %i.tg = icmp ne ptr %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.sy
  %i.th = icmp ne ptr %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.sz
  %i.ti = select i1 %i.tg, i1 %i.th, i1 false
  br i1 %i.ti, label %.lr.ph.i.i291.i.i.i.i, label %._crit_edge.i.loopexit.i303.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i303.i.i.i.i:              ; preds = %.lr.ph.i.i291.i.i.i.i
  %i.tj = ptrtoint ptr %i.sy to i64
  %i.tk = ptrtoint ptr %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.tl = sub i64 %i.tj, %i.tk                    ; 4 uses
  %i.tm = icmp sgt i64 %i.tl, 8
  br i1 %i.tm, label %bb.bn, label %bb.bo, !prof !103

bb.bn:                                            ; preds = %._crit_edge.i.loopexit.i303.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tf, ptr nonnull align 8 %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.tl, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.loopexit.i303.i.i.i.i
  %i.tn = icmp eq i64 %i.tl, 8
  br i1 %i.tn, label %bb.bp, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i.i.i.i.i.i333.i.i.i.i = load ptr, ptr %.1.idx.i.i300.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i333.i.i.i.i, ptr %i.tf, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.to = getelementptr inbounds i8, ptr %i.tf, i64 %i.tl ; 3 uses
  %i.tp = ptrtoint ptr %i.sz to i64               ; 2 uses
  %i.tq = ptrtoint ptr %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.tr = sub i64 %i.tp, %i.tq                    ; 4 uses
  %i.ts = icmp sgt i64 %i.tr, 8
  br i1 %i.ts, label %bb.bq, label %bb.br, !prof !103

bb.bq:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.to, ptr nonnull align 8 %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.tr, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i

bb.br:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i304.i.i.i.i
  %i.tt = icmp eq i64 %i.tr, 8
  br i1 %i.tt, label %bb.bs, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %.val.i.i.i.i.i21.i.i332.i.i.i.i = load ptr, ptr %.120.idx.i.i298.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i332.i.i.i.i, ptr %i.to, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.tu = getelementptr inbounds i8, ptr %i.to, i64 %i.tr ; 2 uses
  %i.tv = sub i64 %i.la, %i.tp
  %i.tw = ashr exact i64 %i.tv, 3                 ; 2 uses
  %.not.i306.i.i.i.i = icmp slt i64 %i.tw, %i.sf
  br i1 %.not.i306.i.i.i.i, label %._crit_edge.i307.i.i.i.i, label %.lr.ph.i.preheader.i288.i.i.i.i, !llvm.loop !6

._crit_edge.i307.i.i.i.i:                         ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i, %._crit_edge.i.us.i335.i.i.i.i, %._crit_edge.i.us.i335.i.i.i.i.a, %._crit_edge.i.us.i335.us.i.i.i.i, %._crit_edge.i.us.i335.us.us.i.i.i.i, %.lr.ph.i25.i.i.i.i
  %.019.lcssa.i308.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i25.i.i.i.i ], [ %22, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.sp, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.sj, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.su, %._crit_edge.i.us.i335.i.i.i.i.a ], [ %i.tu, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ] ; 2 uses
  %.0.lcssa.i309.i.i.i.i = phi ptr [ %.val7.i86.i, %.lr.ph.i25.i.i.i.i ], [ %21, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.sn, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.sh, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.st, %._crit_edge.i.us.i335.i.i.i.i.a ], [ %i.sz, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ] ; 3 uses
  %.lcssa50.i310.i.i.i.i = phi i64 [ %i.kr, %.lr.ph.i25.i.i.i.i ], [ %25, %._crit_edge.i.us.i335.i.i.i.i ], [ %i.ss, %._crit_edge.i.us.i335.us.i.i.i.i ], [ %i.sm, %._crit_edge.i.us.i335.us.us.i.i.i.i ], [ %i.sx, %._crit_edge.i.us.i335.i.i.i.i.a ], [ %i.tw, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i305.i.i.i.i ]
  %.sroa.speculated.i311.i.i.i.i = call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %.022.i26.i.i.i.i, i64 %.lcssa50.i310.i.i.i.i) ; 2 uses
  %.idx48.i312.i.i.i.i = shl nsw i64 %.sroa.speculated.i311.i.i.i.i, 3
  %i.tx = getelementptr inbounds i8, ptr %.0.lcssa.i309.i.i.i.i, i64 %.idx48.i312.i.i.i.i ; 5 uses
  %i.ty = icmp ne i64 %.sroa.speculated.i311.i.i.i.i, 0
  %i.tz = icmp ne ptr %i.tx, %i.kz
  %i.ua = and i1 %i.ty, %i.tz
  br i1 %i.ua, label %.lr.ph.i29.i320.i.i.i.i, label %._crit_edge.i22.i313.i.i.i.i

.lr.ph.i29.i320.i.i.i.i:                          ; preds = %._crit_edge.i307.i.i.i.i, %.lr.ph.i29.i320.i.i.i.i
  %.025.i30.i321.i.i.i.i = phi ptr [ %i.ug, %.lr.ph.i29.i320.i.i.i.i ], [ %.019.lcssa.i308.i.i.i.i, %._crit_edge.i307.i.i.i.i ] ; 2 uses
  %.01824.i31.i322.i.i.i.i = phi ptr [ %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ], [ %.0.lcssa.i309.i.i.i.i, %._crit_edge.i307.i.i.i.i ] ; 3 uses
  %.01923.i32.i323.i.i.i.i = phi ptr [ %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ], [ %i.tx, %._crit_edge.i307.i.i.i.i ] ; 3 uses
  %.019.val.i33.i324.i.i.i.i = load ptr, ptr %.01923.i32.i323.i.i.i.i, align 8, !tbaa !122
  %.018.val.i34.i325.i.i.i.i = load ptr, ptr %.01824.i31.i322.i.i.i.i, align 8, !tbaa !122
  %.val2.i397.i.i.i.i = load ptr, ptr %.019.val.i33.i324.i.i.i.i, align 8, !tbaa !66
  %i.ub = load ptr, ptr %.val2.i397.i.i.i.i, align 8, !tbaa !170
  %i.uc = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ub) #25
  %.val.i398.i.i.i.i = load ptr, ptr %.018.val.i34.i325.i.i.i.i, align 8, !tbaa !66
  %i.ud = load ptr, ptr %.val.i398.i.i.i.i, align 8, !tbaa !170
  %i.ue = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ud) #25
  %i.uf = icmp ult i32 %i.uc, %i.ue               ; 3 uses
  %.sink.in.i35.i326.i.i.i.i = select i1 %i.uf, ptr %.01923.i32.i323.i.i.i.i, ptr %.01824.i31.i322.i.i.i.i
  %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.uf, i64 8, i64 0
  %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i32.i323.i.i.i.i, i64 %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.uf, i64 0, i64 8
  %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i31.i322.i.i.i.i, i64 %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.sink.i40.i331.i.i.i.i = load ptr, ptr %.sink.in.i35.i326.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i40.i331.i.i.i.i, ptr %.025.i30.i321.i.i.i.i, align 8, !tbaa !122
  %i.ug = getelementptr inbounds nuw i8, ptr %.025.i30.i321.i.i.i.i, i64 8 ; 2 uses
  %i.uh = icmp ne ptr %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.tx
  %i.ui = icmp ne ptr %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.kz
  %i.uj = select i1 %i.uh, i1 %i.ui, i1 false
  br i1 %i.uj, label %.lr.ph.i29.i320.i.i.i.i, label %._crit_edge.i22.i313.i.i.i.i, !llvm.loop !7

._crit_edge.i22.i313.i.i.i.i:                     ; preds = %.lr.ph.i29.i320.i.i.i.i, %._crit_edge.i307.i.i.i.i
  %.019.lcssa.i23.i314.i.i.i.i = phi ptr [ %i.tx, %._crit_edge.i307.i.i.i.i ], [ %.120.idx.i36.i327.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ] ; 3 uses
  %.018.lcssa.i24.i315.i.i.i.i = phi ptr [ %.0.lcssa.i309.i.i.i.i, %._crit_edge.i307.i.i.i.i ], [ %.1.idx.i38.i329.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i320.i.i.i.i ] ; 3 uses
  %.0.lcssa.i25.i316.i.i.i.i = phi ptr [ %.019.lcssa.i308.i.i.i.i, %._crit_edge.i307.i.i.i.i ], [ %i.ug, %.lr.ph.i29.i320.i.i.i.i ] ; 3 uses
  %i.uk = ptrtoint ptr %i.tx to i64
  %i.ul = ptrtoint ptr %.018.lcssa.i24.i315.i.i.i.i to i64
  %i.um = sub i64 %i.uk, %i.ul                    ; 4 uses
  %i.un = icmp sgt i64 %i.um, 8
  br i1 %i.un, label %bb.bt, label %bb.bu, !prof !103

bb.bt:                                            ; preds = %._crit_edge.i22.i313.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.lcssa.i25.i316.i.i.i.i, ptr align 8 %.018.lcssa.i24.i315.i.i.i.i, i64 %i.um, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i

bb.bu:                                            ; preds = %._crit_edge.i22.i313.i.i.i.i
  %i.uo = icmp eq i64 %i.um, 8
  br i1 %i.uo, label %bb.bv, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i.i.i.i.i28.i319.i.i.i.i = load ptr, ptr %.018.lcssa.i24.i315.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i28.i319.i.i.i.i, ptr %.0.lcssa.i25.i316.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i: ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.up = getelementptr inbounds i8, ptr %.0.lcssa.i25.i316.i.i.i.i, i64 %i.um ; 2 uses
  %i.uq = ptrtoint ptr %.019.lcssa.i23.i314.i.i.i.i to i64
  %i.ur = sub i64 %i.la, %i.uq                    ; 3 uses
  %i.us = icmp sgt i64 %i.ur, 8
  br i1 %i.us, label %bb.bw, label %bb.bx, !prof !103

bb.bw:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.up, ptr align 8 %.019.lcssa.i23.i314.i.i.i.i, i64 %i.ur, i1 false)
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i

bb.bx:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i317.i.i.i.i
  %i.ut = icmp eq i64 %i.ur, 8
  br i1 %i.ut, label %bb.by, label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %.val.i.i.i.i.i21.i27.i318.i.i.i.i = load ptr, ptr %.019.lcssa.i23.i314.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i27.i318.i.i.i.i, ptr %i.up, align 8, !tbaa !122
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i

_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i: ; preds = %bb.by, %bb.bx, %bb.bw
  %i.uu = shl nsw i64 %.022.i26.i.i.i.i, 2        ; 5 uses
  %.not52.i223.i.i.i.i = icmp slt i64 %i.kr, %i.uu
  br i1 %.not52.i223.i.i.i.i, label %._crit_edge.i247.i.i.i.i, label %.lr.ph.i224.i.i.i.i

.lr.ph.i224.i.i.i.i:                              ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit342.i.i.i.i
  %.idx.i225.i.i.i.i = shl i64 %.022.i26.i.i.i.i, 4 ; 8 uses
  %.idx46.i226.i.i.i.i = shl nsw i64 %.022.i26.i.i.i.i, 5 ; 2 uses
  %.not47.i227.i.i.i.i = icmp eq i64 %.idx.i225.i.i.i.i, %.idx46.i226.i.i.i.i
  br i1 %.not47.i227.i.i.i.i, label %._crit_edge.i.us.preheader.i274.i.i.i.i, label %.lr.ph.i.preheader.i228.i.i.i.i

._crit_edge.i.us.preheader.i274.i.i.i.i:          ; preds = %.lr.ph.i224.i.i.i.i
  %i.uv = icmp sgt i64 %.022.i26.i.i.i.i, 0
  %i.uw = icmp sgt i64 %.idx.i225.i.i.i.i, 8
  br label %._crit_edge.i.us.i275.i.i.i.i

._crit_edge.i.us.i275.i.i.i.i:                    ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i, %._crit_edge.i.us.preheader.i274.i.i.i.i
  %.054.us.i276.i.i.i.i = phi ptr [ %i.ux, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i274.i.i.i.i ] ; 2 uses
  %.01953.us.i277.i.i.i.i = phi ptr [ %i.uz, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i ], [ %.val7.i86.i, %._crit_edge.i.us.preheader.i274.i.i.i.i ] ; 2 uses
  %i.ux = getelementptr inbounds i8, ptr %.054.us.i276.i.i.i.i, i64 %.idx.i225.i.i.i.i ; 4 uses
  br i1 %i.uv, label %bb.bz, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i, !prof !103

bb.bz:                                            ; preds = %._crit_edge.i.us.i275.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i277.i.i.i.i, ptr align 8 %.054.us.i276.i.i.i.i, i64 %.idx.i225.i.i.i.i, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i: ; preds = %bb.bz, %._crit_edge.i.us.i275.i.i.i.i
  %i.uy = getelementptr inbounds i8, ptr %.01953.us.i277.i.i.i.i, i64 %.idx.i225.i.i.i.i ; 2 uses
  br i1 %i.uw, label %bb.ca, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i, !prof !193

bb.ca:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.uy, ptr nonnull align 8 %i.ux, i64 %.idx.i225.i.i.i.i, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i279.i.i.i.i: ; preds = %bb.ca, %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i278.i.i.i.i
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 %.idx.i225.i.i.i.i ; 2 uses
  %i.va = ptrtoint ptr %i.ux to i64
  %i.vb = sub i64 %i.se, %i.va
  %i.vc = ashr exact i64 %i.vb, 3                 ; 2 uses
  %.not.us.i280.i.i.i.i = icmp slt i64 %i.vc, %i.uu
  br i1 %.not.us.i280.i.i.i.i, label %._crit_edge.i247.i.i.i.i, label %._crit_edge.i.us.i275.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i228.i.i.i.i:                  ; preds = %.lr.ph.i224.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i
  %.054.i229.i.i.i.i = phi ptr [ %i.ve, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i ], [ %i.kt, %.lr.ph.i224.i.i.i.i ] ; 3 uses
  %.01953.i230.i.i.i.i = phi ptr [ %i.vz, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i ], [ %.val7.i86.i, %.lr.ph.i224.i.i.i.i ]
  %i.vd = getelementptr inbounds i8, ptr %.054.i229.i.i.i.i, i64 %.idx.i225.i.i.i.i ; 3 uses
  %i.ve = getelementptr inbounds i8, ptr %.054.i229.i.i.i.i, i64 %.idx46.i226.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i231.i.i.i.i

.lr.ph.i.i231.i.i.i.i:                            ; preds = %.lr.ph.i.i231.i.i.i.i, %.lr.ph.i.preheader.i228.i.i.i.i
  %.025.i.i232.i.i.i.i = phi ptr [ %i.vk, %.lr.ph.i.i231.i.i.i.i ], [ %.01953.i230.i.i.i.i, %.lr.ph.i.preheader.i228.i.i.i.i ] ; 2 uses
  %.01824.i.i233.i.i.i.i = phi ptr [ %.1.i.i241.i.i.i.i, %.lr.ph.i.i231.i.i.i.i ], [ %.054.i229.i.i.i.i, %.lr.ph.i.preheader.i228.i.i.i.i ] ; 3 uses
  %.01923.i.i234.i.i.i.i = phi ptr [ %.120.i.i239.i.i.i.i, %.lr.ph.i.i231.i.i.i.i ], [ %i.vd, %.lr.ph.i.preheader.i228.i.i.i.i ] ; 3 uses
  %.019.val.i.i235.i.i.i.i = load ptr, ptr %.01923.i.i234.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i236.i.i.i.i = load ptr, ptr %.01824.i.i233.i.i.i.i, align 8, !tbaa !122
  %.val2.i395.i.i.i.i = load ptr, ptr %.019.val.i.i235.i.i.i.i, align 8, !tbaa !66
  %i.vf = load ptr, ptr %.val2.i395.i.i.i.i, align 8, !tbaa !170
  %i.vg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.vf) #25
  %.val.i396.i.i.i.i = load ptr, ptr %.018.val.i.i236.i.i.i.i, align 8, !tbaa !66
  %i.vh = load ptr, ptr %.val.i396.i.i.i.i, align 8, !tbaa !170
  %i.vi = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.vh) #25
  %i.vj = icmp ult i32 %i.vg, %i.vi               ; 3 uses
  %.sink.in.i.i237.i.i.i.i = select i1 %i.vj, ptr %.01923.i.i234.i.i.i.i, ptr %.01824.i.i233.i.i.i.i
  %.120.idx.i.i238.i.i.i.i = select i1 %i.vj, i64 8, i64 0
  %.120.i.i239.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01923.i.i234.i.i.i.i, i64 %.120.idx.i.i238.i.i.i.i ; 5 uses
  %.1.idx.i.i240.i.i.i.i = select i1 %i.vj, i64 0, i64 8
  %.1.i.i241.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01824.i.i233.i.i.i.i, i64 %.1.idx.i.i240.i.i.i.i ; 5 uses
  %.sink.i.i242.i.i.i.i = load ptr, ptr %.sink.in.i.i237.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i242.i.i.i.i, ptr %.025.i.i232.i.i.i.i, align 8, !tbaa !122
  %i.vk = getelementptr inbounds nuw i8, ptr %.025.i.i232.i.i.i.i, i64 8 ; 4 uses
  %i.vl = icmp ne ptr %.1.i.i241.i.i.i.i, %i.vd
  %i.vm = icmp ne ptr %.120.i.i239.i.i.i.i, %i.ve
  %i.vn = select i1 %i.vl, i1 %i.vm, i1 false
  br i1 %i.vn, label %.lr.ph.i.i231.i.i.i.i, label %._crit_edge.i.loopexit.i243.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i243.i.i.i.i:              ; preds = %.lr.ph.i.i231.i.i.i.i
  %i.vo = ptrtoint ptr %i.vd to i64
  %i.vp = ptrtoint ptr %.1.i.i241.i.i.i.i to i64
  %i.vq = sub i64 %i.vo, %i.vp                    ; 4 uses
  %i.vr = icmp sgt i64 %i.vq, 8
  br i1 %i.vr, label %bb.cb, label %bb.cc, !prof !103

bb.cb:                                            ; preds = %._crit_edge.i.loopexit.i243.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vk, ptr nonnull align 8 %.1.i.i241.i.i.i.i, i64 %i.vq, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i

bb.cc:                                            ; preds = %._crit_edge.i.loopexit.i243.i.i.i.i
  %i.vs = icmp eq i64 %i.vq, 8
  br i1 %i.vs, label %bb.cd, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %.val.i.i.i.i.i.i.i273.i.i.i.i = load ptr, ptr %.1.i.i241.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i273.i.i.i.i, ptr %i.vk, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.vt = getelementptr inbounds i8, ptr %i.vk, i64 %i.vq ; 3 uses
  %i.vu = ptrtoint ptr %i.ve to i64               ; 2 uses
  %i.vv = ptrtoint ptr %.120.i.i239.i.i.i.i to i64
  %i.vw = sub i64 %i.vu, %i.vv                    ; 4 uses
  %i.vx = icmp sgt i64 %i.vw, 8
  br i1 %i.vx, label %bb.ce, label %bb.cf, !prof !103

bb.ce:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vt, ptr nonnull align 8 %.120.i.i239.i.i.i.i, i64 %i.vw, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i

bb.cf:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i244.i.i.i.i
  %i.vy = icmp eq i64 %i.vw, 8
  br i1 %i.vy, label %bb.cg, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %.val.i.i.i.i.i21.i.i272.i.i.i.i = load ptr, ptr %.120.i.i239.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i272.i.i.i.i, ptr %i.vt, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i245.i.i.i.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.vz = getelementptr inbounds i8, ptr %i.vt, i64 %i.vw ; 2 uses
  %i.wa = sub i64 %i.se, %i.vu
  %i.wb = ashr exact i64 %i.wa, 3                 ; 2 uses
  %.not.i246.i.i.i.i = icmp slt i64 %i.wb, %i.uu
  br i1 %.not.i246.i.i.i.i, label %._crit_edge.i247.i.i.i.i, label %.lr.ph.i.preheader.i228.i.i.i.i, !llvm.loop !6

end_hunk_1
begin_hunk_2_@_ZN4llvm26ControlHeightReductionPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %.0.val.i.i.4.i.i.i.i.i.i = load ptr, ptr %.0.i.i.4.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i193.i.i.i.i = load ptr, ptr %i.abf, align 8, !tbaa !66
  %i.abm = load ptr, ptr %.val2.i193.i.i.i.i, align 8, !tbaa !170
  %i.abn = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.abm) #25
  %.val.i194.i.i.i.i = load ptr, ptr %.0.val.i.i.4.i.i.i.i.i.i, align 8, !tbaa !66
  %i.abo = load ptr, ptr %.val.i194.i.i.i.i, align 8, !tbaa !170
  %i.abp = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.abo) #25
  %i.abq = icmp ult i32 %i.abn, %i.abp
  br i1 %i.abq, label %.lr.ph.i.i.4.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i, !llvm.loop !3

bb.di:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.3.i.i.i.i.i.i
  %i.abr = ptrtoint ptr %.022.i.ptr.4.i.i.i.i.i.i to i64
  %i.abs = sub i64 %i.abr, %i.xd                  ; 3 uses
  %i.abt = ashr exact i64 %i.abs, 3               ; 2 uses
  %i.abu = icmp sgt i64 %i.abt, 1
  br i1 %i.abu, label %bb.dl, label %bb.dj, !prof !103

bb.dj:                                            ; preds = %bb.di
  %i.abv = icmp eq i64 %i.abs, 8
  br i1 %i.abv, label %bb.dk, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i.i.i.i.i.4.i.i.i.i.i.i = load ptr, ptr %.029.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.4.i.i.i.i.i.i, ptr %.022.i.ptr.4.i.i.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.di
  %i.abw = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 48
  %i.abx = sub nsw i64 0, %i.abt
  %i.aby = getelementptr inbounds [8 x i8], ptr %i.abw, i64 %i.abx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aby, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i.i.i.i.i, i64 %i.abs, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.4.i.i.i.i.i.i, %bb.dl, %bb.dk, %bb.dj, %bb.dh
  %.sink.i.4.i.i.i.i.i.i = phi ptr [ %.029.i.i.i.i.i.i, %bb.dk ], [ %.029.i.i.i.i.i.i, %bb.dl ], [ %.029.i.i.i.i.i.i, %bb.dj ], [ %.022.i.ptr.4.i.i.i.i.i.i, %bb.dh ], [ %.014.i.i.4.i.i.i.i.i.i, %.lr.ph.i.i.4.i.i.i.i.i.i ]
  store ptr %i.abf, ptr %.sink.i.4.i.i.i.i.i.i, align 8, !tbaa !122
  %.022.i.ptr.5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 48 ; 6 uses
  %.0.val.i.5.i.i.i.i.i.i = load ptr, ptr %.022.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !122
  %.val18.i.5.i.i.i.i.i.i = load ptr, ptr %.029.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i191.i.i.i.i = load ptr, ptr %.0.val.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.abz = load ptr, ptr %.val2.i191.i.i.i.i, align 8, !tbaa !170
  %i.aca = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.abz) #25
  %.val.i192.i.i.i.i = load ptr, ptr %.val18.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.acb = load ptr, ptr %.val.i192.i.i.i.i, align 8, !tbaa !170
  %i.acc = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acb) #25
  %i.acd = icmp ult i32 %i.aca, %i.acc
  %i.ace = load ptr, ptr %.022.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.acd, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i
  %.0.val12.i.i.5.i.i.i.i.i.i = load ptr, ptr %.022.i.ptr.4.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i189.i.i.i.i = load ptr, ptr %i.ace, align 8, !tbaa !66
  %i.acf = load ptr, ptr %.val2.i189.i.i.i.i, align 8, !tbaa !170
  %i.acg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acf) #25
  %.val.i190.i.i.i.i = load ptr, ptr %.0.val12.i.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.ach = load ptr, ptr %.val.i190.i.i.i.i, align 8, !tbaa !170
  %i.aci = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ach) #25
  %i.acj = icmp ult i32 %i.acg, %i.aci
  br i1 %i.acj, label %.lr.ph.i.i.5.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

.lr.ph.i.i.5.i.i.i.i.i.i:                         ; preds = %bb.dm, %.lr.ph.i.i.5.i.i.i.i.i.i
  %.014.i.i.5.i.i.i.i.i.i = phi ptr [ %.0.i.i.5.i.i.i.i.i.i, %.lr.ph.i.i.5.i.i.i.i.i.i ], [ %.022.i.ptr.4.i.i.i.i.i.i, %bb.dm ] ; 4 uses
  %.0913.i.i.5.i.i.i.i.i.i = phi ptr [ %.014.i.i.5.i.i.i.i.i.i, %.lr.ph.i.i.5.i.i.i.i.i.i ], [ %.022.i.ptr.5.i.i.i.i.i.i, %bb.dm ]
  %i.ack = load ptr, ptr %.014.i.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.ack, ptr %.0913.i.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  %.0.i.i.5.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.5.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.5.i.i.i.i.i.i = load ptr, ptr %.0.i.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i187.i.i.i.i = load ptr, ptr %i.ace, align 8, !tbaa !66
  %i.acl = load ptr, ptr %.val2.i187.i.i.i.i, align 8, !tbaa !170
  %i.acm = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acl) #25
  %.val.i188.i.i.i.i = load ptr, ptr %.0.val.i.i.5.i.i.i.i.i.i, align 8, !tbaa !66
  %i.acn = load ptr, ptr %.val.i188.i.i.i.i, align 8, !tbaa !170
  %i.aco = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.acn) #25
  %i.acp = icmp ult i32 %i.acm, %i.aco
  br i1 %i.acp, label %.lr.ph.i.i.5.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i, !llvm.loop !3

bb.dn:                                            ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.4.i.i.i.i.i.i
  %i.acq = ptrtoint ptr %.022.i.ptr.5.i.i.i.i.i.i to i64
  %i.acr = sub i64 %i.acq, %i.xd                  ; 3 uses
  %i.acs = ashr exact i64 %i.acr, 3               ; 2 uses
  %i.act = icmp sgt i64 %i.acs, 1
  br i1 %i.act, label %bb.dq, label %bb.do, !prof !103

bb.do:                                            ; preds = %bb.dn
  %i.acu = icmp eq i64 %i.acr, 8
  br i1 %i.acu, label %bb.dp, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  %.val.i.i.i.i.i.i.5.i.i.i.i.i.i = load ptr, ptr %.029.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.5.i.i.i.i.i.i, ptr %.022.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.dn
  %i.acv = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 56
  %i.acw = sub nsw i64 0, %i.acs
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.acv, i64 %i.acw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acx, ptr noundef nonnull align 8 dereferenceable(1) %.029.i.i.i.i.i.i, i64 %i.acr, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.5.i.i.i.i.i.i, %bb.dq, %bb.dp, %bb.do, %bb.dm
  %.sink.i.5.i.i.i.i.i.i = phi ptr [ %.029.i.i.i.i.i.i, %bb.dp ], [ %.029.i.i.i.i.i.i, %bb.dq ], [ %.029.i.i.i.i.i.i, %bb.do ], [ %.022.i.ptr.5.i.i.i.i.i.i, %bb.dm ], [ %.014.i.i.5.i.i.i.i.i.i, %.lr.ph.i.i.5.i.i.i.i.i.i ]
  store ptr %i.ace, ptr %.sink.i.5.i.i.i.i.i.i, align 8, !tbaa !122
  %i.acy = getelementptr inbounds nuw i8, ptr %.029.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.acz = ptrtoint ptr %i.acy to i64             ; 3 uses
  %i.ada = sub i64 %i.ko, %i.acz
  %i.adb = icmp sgt i64 %i.ada, 48
  br i1 %i.adb, label %.lr.ph.i.i7.i.i.i.i, label %._crit_edge.i.i3.i.i.i.i, !llvm.loop !4

._crit_edge.i.i3.i.i.i.i:                         ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i, %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i
  %.0.lcssa.i.i4.i.i.i.i = phi ptr [ %i.kz, %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i ], [ %i.acy, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i ] ; 9 uses
  %.lcssa.i.i5.i.i.i.i = phi i64 [ %i.la, %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit107.i.i.i.i ], [ %i.acz, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.5.i.i.i.i.i.i ]
  %i.adc = icmp eq ptr %.0.lcssa.i.i4.i.i.i.i, %i.kn
  %.019.i12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i4.i.i.i.i, i64 8 ; 2 uses
  %.not20.i.i.i.i.i.i.i = icmp eq ptr %.019.i12.i.i.i.i.i.i, %i.kn
  %or.cond.i.i.i.i.i.i = select i1 %i.adc, i1 true, i1 %.not20.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i6.i.i.i.i

.lr.ph.i.i.i6.i.i.i.i:                            ; preds = %._crit_edge.i.i3.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i
  %.022.i13.i.i.i.i.i.i = phi ptr [ %.0.i20.i.i.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i ], [ %.019.i12.i.i.i.i.i.i, %._crit_edge.i.i3.i.i.i.i ] ; 7 uses
  %.pn21.i14.i.i.i.i.i.i = phi ptr [ %.022.i13.i.i.i.i.i.i, %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i ], [ %.0.lcssa.i.i4.i.i.i.i, %._crit_edge.i.i3.i.i.i.i ] ; 4 uses
  %.0.val.i15.i.i.i.i.i.i = load ptr, ptr %.022.i13.i.i.i.i.i.i, align 8, !tbaa !122
  %.val18.i16.i.i.i.i.i.i = load ptr, ptr %.0.lcssa.i.i4.i.i.i.i, align 8, !tbaa !122
  %.val2.i185.i.i.i.i = load ptr, ptr %.0.val.i15.i.i.i.i.i.i, align 8, !tbaa !66
  %i.add = load ptr, ptr %.val2.i185.i.i.i.i, align 8, !tbaa !170
  %i.ade = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.add) #25
  %.val.i186.i.i.i.i = load ptr, ptr %.val18.i16.i.i.i.i.i.i, align 8, !tbaa !66
  %i.adf = load ptr, ptr %.val.i186.i.i.i.i, align 8, !tbaa !170
  %i.adg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.adf) #25
  %i.adh = icmp ult i32 %i.ade, %i.adg
  %i.adi = load ptr, ptr %.022.i13.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  br i1 %i.adh, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %.lr.ph.i.i.i6.i.i.i.i
  %i.adj = ptrtoint ptr %.022.i13.i.i.i.i.i.i to i64
  %i.adk = sub i64 %i.adj, %.lcssa.i.i5.i.i.i.i   ; 3 uses
  %i.adl = ashr exact i64 %i.adk, 3               ; 2 uses
  %i.adm = icmp sgt i64 %i.adl, 1
  br i1 %i.adm, label %bb.ds, label %bb.dt, !prof !103

bb.ds:                                            ; preds = %bb.dr
  %i.adn = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i.i.i.i.i, i64 16
  %i.ado = sub nsw i64 0, %i.adl
  %i.adp = getelementptr inbounds [8 x i8], ptr %i.adn, i64 %i.ado
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adp, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa.i.i4.i.i.i.i, i64 %i.adk, i1 false)
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.adq = icmp eq i64 %i.adk, 8
  br i1 %i.adq, label %bb.du, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.adr = getelementptr inbounds nuw i8, ptr %.pn21.i14.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i27.i.i.i.i.i.i = load ptr, ptr %.0.lcssa.i.i4.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i27.i.i.i.i.i.i, ptr %i.adr, align 8, !tbaa !122
  br label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

bb.dv:                                            ; preds = %.lr.ph.i.i.i6.i.i.i.i
  %.0.val12.i.i17.i.i.i.i.i.i = load ptr, ptr %.pn21.i14.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i183.i.i.i.i = load ptr, ptr %i.adi, align 8, !tbaa !66
  %i.ads = load ptr, ptr %.val2.i183.i.i.i.i, align 8, !tbaa !170
  %i.adt = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ads) #25
  %.val.i184.i.i.i.i = load ptr, ptr %.0.val12.i.i17.i.i.i.i.i.i, align 8, !tbaa !66
  %i.adu = load ptr, ptr %.val.i184.i.i.i.i, align 8, !tbaa !170
  %i.adv = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.adu) #25
  %i.adw = icmp ult i32 %i.adt, %i.adv
  br i1 %i.adw, label %.lr.ph.i.i22.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i

.lr.ph.i.i22.i.i.i.i.i.i:                         ; preds = %bb.dv, %.lr.ph.i.i22.i.i.i.i.i.i
  %.014.i.i23.i.i.i.i.i.i = phi ptr [ %.0.i.i25.i.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i.i ], [ %.pn21.i14.i.i.i.i.i.i, %bb.dv ] ; 4 uses
  %.0913.i.i24.i.i.i.i.i.i = phi ptr [ %.014.i.i23.i.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i.i ], [ %.022.i13.i.i.i.i.i.i, %bb.dv ]
  %i.adx = load ptr, ptr %.014.i.i23.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.adx, ptr %.0913.i.i24.i.i.i.i.i.i, align 8, !tbaa !122
  %.0.i.i25.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i23.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i26.i.i.i.i.i.i = load ptr, ptr %.0.i.i25.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i181.i.i.i.i = load ptr, ptr %i.adi, align 8, !tbaa !66
  %i.ady = load ptr, ptr %.val2.i181.i.i.i.i, align 8, !tbaa !170
  %i.adz = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ady) #25
  %.val.i182.i.i.i.i = load ptr, ptr %.0.val.i.i26.i.i.i.i.i.i, align 8, !tbaa !66
  %i.aea = load ptr, ptr %.val.i182.i.i.i.i, align 8, !tbaa !170
  %i.aeb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aea) #25
  %i.aec = icmp ult i32 %i.adz, %i.aeb
  br i1 %i.aec, label %.lr.ph.i.i22.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i, !llvm.loop !3

_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i: ; preds = %.lr.ph.i.i22.i.i.i.i.i.i, %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.sink.i19.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i4.i.i.i.i, %bb.du ], [ %.0.lcssa.i.i4.i.i.i.i, %bb.ds ], [ %.0.lcssa.i.i4.i.i.i.i, %bb.dt ], [ %.022.i13.i.i.i.i.i.i, %bb.dv ], [ %.014.i.i23.i.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i.i ]
  store ptr %i.adi, ptr %.sink.i19.i.i.i.i.i.i, align 8, !tbaa !122
  %.0.i20.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.022.i13.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %.0.i20.i.i.i.i.i.i, %i.kn
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i6.i.i.i.i, !llvm.loop !5

_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i18.i.i.i.i.i.i, %._crit_edge.i.i3.i.i.i.i
  %i.aed = icmp sgt i64 %i.xa, 7
  br i1 %i.aed, label %.lr.ph.i.preheader.i.i.i.i, label %_ZSt24__merge_sort_with_bufferIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZSt22__chunk_insertion_sortIPPN12_GLOBAL__N_18CHRScopeElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_.exit.i.i.i.i.i
  %i.aee = ptrtoint ptr %i.xb to i64              ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.022.i.i.i.i.i = phi i64 [ %i.agu, %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit.i.i.i.i ], [ 7, %.lr.ph.i.preheader.i.i.i.i ] ; 9 uses
  %i.aef = shl nsw i64 %.022.i.i.i.i.i, 1         ; 7 uses
  %.not52.i122.i.i.i.i = icmp slt i64 %i.xa, %i.aef
  br i1 %.not52.i122.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %.lr.ph.i123.i.i.i.i

.lr.ph.i123.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %.idx.i124.i.i.i.i = shl i64 %.022.i.i.i.i.i, 3 ; 17 uses
  %.idx46.i125.i.i.i.i = shl i64 %.022.i.i.i.i.i, 4 ; 2 uses
  %.not47.i126.i.i.i.i = icmp eq i64 %.idx.i124.i.i.i.i, %.idx46.i125.i.i.i.i
  br i1 %.not47.i126.i.i.i.i, label %._crit_edge.i.us.preheader.i173.i.i.i.i, label %.lr.ph.i.preheader.i127.i.i.i.i

._crit_edge.i.us.preheader.i173.i.i.i.i:          ; preds = %.lr.ph.i123.i.i.i.i
  %26 = icmp sgt i64 %.022.i.i.i.i.i, 1           ; 2 uses
  %i.aeg = icmp sgt i64 %.idx.i124.i.i.i.i, 8
  br i1 %i.aeg, label %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i, label %._crit_edge.i.us.preheader.i173.split.i.i.i.i, !prof !193

._crit_edge.i.us.preheader.i173.split.us.i.i.i.i: ; preds = %._crit_edge.i.us.preheader.i173.i.i.i.i
  br i1 %26, label %._crit_edge.i.us.i174.us.us.i.i.i.i, label %._crit_edge.i.us.i174.us.i.i.i.i, !prof !103

._crit_edge.i.us.i174.us.us.i.i.i.i:              ; preds = %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i, %._crit_edge.i.us.i174.us.us.i.i.i.i
  %.054.us.i175.us.us.i.i.i.i = phi ptr [ %i.aeh, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ] ; 2 uses
  %.01953.us.i176.us.us.i.i.i.i = phi ptr [ %i.aej, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.054.us.i175.us.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i176.us.us.i.i.i.i, ptr align 8 %.054.us.i175.us.us.i.i.i.i, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aei = getelementptr inbounds nuw i8, ptr %.01953.us.i176.us.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aei, ptr nonnull align 8 %i.aeh, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 %.idx.i124.i.i.i.i ; 2 uses
  %i.aek = ptrtoint ptr %i.aeh to i64
  %i.ael = sub i64 %i.ko, %i.aek
  %i.aem = ashr exact i64 %i.ael, 3               ; 2 uses
  %.not.us.i179.us.us.i.i.i.i = icmp slt i64 %i.aem, %i.aef
  br i1 %.not.us.i179.us.us.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.us.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.i174.us.i.i.i.i:                 ; preds = %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i, %._crit_edge.i.us.i174.us.i.i.i.i
  %.054.us.i175.us.i.i.i.i = phi ptr [ %i.aen, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ]
  %.01953.us.i176.us.i.i.i.i = phi ptr [ %i.aep, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i173.split.us.i.i.i.i ]
  %i.aen = getelementptr inbounds nuw i8, ptr %.054.us.i175.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.01953.us.i176.us.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aeo, ptr nonnull align 8 %i.aen, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %.idx.i124.i.i.i.i ; 2 uses
  %i.aeq = ptrtoint ptr %i.aen to i64
  %i.aer = sub i64 %i.ko, %i.aeq
  %i.aes = ashr exact i64 %i.aer, 3               ; 2 uses
  %.not.us.i179.us.i.i.i.i = icmp slt i64 %i.aes, %i.aef
  br i1 %.not.us.i179.us.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.us.i.i.i.i, !llvm.loop !6

._crit_edge.i.us.preheader.i173.split.i.i.i.i:    ; preds = %._crit_edge.i.us.preheader.i173.i.i.i.i
  br i1 %26, label %._crit_edge.i.us.i174.i.i.i.i.a, label %._crit_edge.i.us.i174.i.i.i.i, !prof !103

._crit_edge.i.us.i174.i.i.i.i.a:                  ; preds = %._crit_edge.i.us.preheader.i173.split.i.i.i.i, %._crit_edge.i.us.i174.i.i.i.i.a
  %.054.us.i175.i.i.i.i.a = phi ptr [ %i.aet, %._crit_edge.i.us.i174.i.i.i.i.a ], [ %i.kz, %._crit_edge.i.us.preheader.i173.split.i.i.i.i ] ; 2 uses
  %.01953.us.i176.i.i.i.i.a = phi ptr [ %i.aeu, %._crit_edge.i.us.i174.i.i.i.i.a ], [ %i.kt, %._crit_edge.i.us.preheader.i173.split.i.i.i.i ] ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %.054.us.i175.i.i.i.i.a, i64 %.idx.i124.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i176.i.i.i.i.a, ptr align 8 %.054.us.i175.i.i.i.i.a, i64 %.idx.i124.i.i.i.i, i1 false)
  %i.aeu = getelementptr inbounds i8, ptr %.01953.us.i176.i.i.i.i.a, i64 %.idx.i124.i.i.i.i ; 2 uses
  %i.aev = ptrtoint ptr %i.aet to i64
  %i.aew = sub i64 %i.ko, %i.aev
  %i.aex = ashr exact i64 %i.aew, 3               ; 2 uses
  %.not.us.i179.i.i.i.i.a = icmp slt i64 %i.aex, %i.aef
  br i1 %.not.us.i179.i.i.i.i.a, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.i.i.i.i.a, !llvm.loop !6

._crit_edge.i.us.i174.i.i.i.i:                    ; preds = %._crit_edge.i.us.preheader.i173.split.i.i.i.i, %._crit_edge.i.us.i174.i.i.i.i
  %.054.us.i175.i.i.i.i = phi ptr [ %27, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i173.split.i.i.i.i ]
  %.01953.us.i176.i.i.i.i = phi ptr [ %28, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i173.split.i.i.i.i ]
  %27 = getelementptr inbounds i8, ptr %.054.us.i175.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 3 uses
  %28 = getelementptr inbounds i8, ptr %.01953.us.i176.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 2 uses
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %i.ko, %29
  %31 = ashr exact i64 %30, 3                     ; 2 uses
  %.not.us.i179.i.i.i.i = icmp slt i64 %31, %i.aef
  br i1 %.not.us.i179.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %._crit_edge.i.us.i174.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i127.i.i.i.i:                  ; preds = %.lr.ph.i123.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i
  %.054.i128.i.i.i.i = phi ptr [ %i.aez, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ], [ %i.kz, %.lr.ph.i123.i.i.i.i ] ; 3 uses
  %.01953.i129.i.i.i.i = phi ptr [ %i.afu, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ], [ %i.kt, %.lr.ph.i123.i.i.i.i ]
  %i.aey = getelementptr inbounds i8, ptr %.054.i128.i.i.i.i, i64 %.idx.i124.i.i.i.i ; 3 uses
  %i.aez = getelementptr inbounds i8, ptr %.054.i128.i.i.i.i, i64 %.idx46.i125.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i130.i.i.i.i

.lr.ph.i.i130.i.i.i.i:                            ; preds = %.lr.ph.i.i130.i.i.i.i, %.lr.ph.i.preheader.i127.i.i.i.i
  %.025.i.i131.i.i.i.i = phi ptr [ %i.aff, %.lr.ph.i.i130.i.i.i.i ], [ %.01953.i129.i.i.i.i, %.lr.ph.i.preheader.i127.i.i.i.i ] ; 2 uses
  %.01824.i.i132.i.i.i.i = phi ptr [ %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i130.i.i.i.i ], [ %.054.i128.i.i.i.i, %.lr.ph.i.preheader.i127.i.i.i.i ] ; 3 uses
  %.01923.i.i133.i.i.i.i = phi ptr [ %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i130.i.i.i.i ], [ %i.aey, %.lr.ph.i.preheader.i127.i.i.i.i ] ; 3 uses
  %.019.val.i.i134.i.i.i.i = load ptr, ptr %.01923.i.i133.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i135.i.i.i.i = load ptr, ptr %.01824.i.i132.i.i.i.i, align 8, !tbaa !122
  %.val2.i391.i.i.i.i = load ptr, ptr %.019.val.i.i134.i.i.i.i, align 8, !tbaa !66
  %i.afa = load ptr, ptr %.val2.i391.i.i.i.i, align 8, !tbaa !170
  %i.afb = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.afa) #25
  %.val.i392.i.i.i.i = load ptr, ptr %.018.val.i.i135.i.i.i.i, align 8, !tbaa !66
  %i.afc = load ptr, ptr %.val.i392.i.i.i.i, align 8, !tbaa !170
  %i.afd = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.afc) #25
  %i.afe = icmp ult i32 %i.afb, %i.afd            ; 3 uses
  %.sink.in.i.i136.i.i.i.i = select i1 %i.afe, ptr %.01923.i.i133.i.i.i.i, ptr %.01824.i.i132.i.i.i.i
  %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.afe, i64 8, i64 0
  %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i.i133.i.i.i.i, i64 %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.afe, i64 0, i64 8
  %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i.i132.i.i.i.i, i64 %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.sink.i.i141.i.i.i.i = load ptr, ptr %.sink.in.i.i136.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i141.i.i.i.i, ptr %.025.i.i131.i.i.i.i, align 8, !tbaa !122
  %i.aff = getelementptr inbounds nuw i8, ptr %.025.i.i131.i.i.i.i, i64 8 ; 4 uses
  %i.afg = icmp ne ptr %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.aey
  %i.afh = icmp ne ptr %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.aez
  %i.afi = select i1 %i.afg, i1 %i.afh, i1 false
  br i1 %i.afi, label %.lr.ph.i.i130.i.i.i.i, label %._crit_edge.i.loopexit.i142.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i142.i.i.i.i:              ; preds = %.lr.ph.i.i130.i.i.i.i
  %i.afj = ptrtoint ptr %i.aey to i64
  %i.afk = ptrtoint ptr %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.afl = sub i64 %i.afj, %i.afk                 ; 4 uses
  %i.afm = icmp sgt i64 %i.afl, 8
  br i1 %i.afm, label %bb.dw, label %bb.dx, !prof !103

bb.dw:                                            ; preds = %._crit_edge.i.loopexit.i142.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aff, ptr nonnull align 8 %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.afl, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i

bb.dx:                                            ; preds = %._crit_edge.i.loopexit.i142.i.i.i.i
  %i.afn = icmp eq i64 %i.afl, 8
  br i1 %i.afn, label %bb.dy, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %.val.i.i.i.i.i.i.i172.i.i.i.i = load ptr, ptr %.1.idx.i.i139.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i172.i.i.i.i, ptr %i.aff, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i: ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.afo = getelementptr inbounds i8, ptr %i.aff, i64 %i.afl ; 3 uses
  %i.afp = ptrtoint ptr %i.aez to i64             ; 2 uses
  %i.afq = ptrtoint ptr %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel to i64
  %i.afr = sub i64 %i.afp, %i.afq                 ; 4 uses
  %i.afs = icmp sgt i64 %i.afr, 8
  br i1 %i.afs, label %bb.dz, label %bb.ea, !prof !103

bb.dz:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.afo, ptr nonnull align 8 %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.afr, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i

bb.ea:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i143.i.i.i.i
  %i.aft = icmp eq i64 %i.afr, 8
  br i1 %i.aft, label %bb.eb, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %.val.i.i.i.i.i21.i.i171.i.i.i.i = load ptr, ptr %.120.idx.i.i137.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i171.i.i.i.i, ptr %i.afo, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.afu = getelementptr inbounds i8, ptr %i.afo, i64 %i.afr ; 2 uses
  %i.afv = sub i64 %i.ko, %i.afp
  %i.afw = ashr exact i64 %i.afv, 3               ; 2 uses
  %.not.i145.i.i.i.i = icmp slt i64 %i.afw, %i.aef
  br i1 %.not.i145.i.i.i.i, label %._crit_edge.i146.i.i.i.i, label %.lr.ph.i.preheader.i127.i.i.i.i, !llvm.loop !6

._crit_edge.i146.i.i.i.i:                         ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i, %._crit_edge.i.us.i174.i.i.i.i, %._crit_edge.i.us.i174.i.i.i.i.a, %._crit_edge.i.us.i174.us.i.i.i.i, %._crit_edge.i.us.i174.us.us.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.019.lcssa.i147.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i ], [ %28, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.aep, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.aej, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.aeu, %._crit_edge.i.us.i174.i.i.i.i.a ], [ %i.afu, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ] ; 2 uses
  %.0.lcssa.i148.i.i.i.i = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i ], [ %27, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.aen, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.aeh, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.aet, %._crit_edge.i.us.i174.i.i.i.i.a ], [ %i.aez, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ] ; 3 uses
  %.lcssa50.i149.i.i.i.i = phi i64 [ %i.xa, %.lr.ph.i.i.i.i.i ], [ %31, %._crit_edge.i.us.i174.i.i.i.i ], [ %i.aes, %._crit_edge.i.us.i174.us.i.i.i.i ], [ %i.aem, %._crit_edge.i.us.i174.us.us.i.i.i.i ], [ %i.aex, %._crit_edge.i.us.i174.i.i.i.i.a ], [ %i.afw, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i144.i.i.i.i ]
  %.sroa.speculated.i150.i.i.i.i = call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %.022.i.i.i.i.i, i64 %.lcssa50.i149.i.i.i.i) ; 2 uses
  %.idx48.i151.i.i.i.i = shl nsw i64 %.sroa.speculated.i150.i.i.i.i, 3
  %i.afx = getelementptr inbounds i8, ptr %.0.lcssa.i148.i.i.i.i, i64 %.idx48.i151.i.i.i.i ; 5 uses
  %i.afy = icmp ne i64 %.sroa.speculated.i150.i.i.i.i, 0
  %i.afz = icmp ne ptr %i.afx, %i.kn
  %i.aga = and i1 %i.afy, %i.afz
  br i1 %i.aga, label %.lr.ph.i29.i159.i.i.i.i, label %._crit_edge.i22.i152.i.i.i.i

.lr.ph.i29.i159.i.i.i.i:                          ; preds = %._crit_edge.i146.i.i.i.i, %.lr.ph.i29.i159.i.i.i.i
  %.025.i30.i160.i.i.i.i = phi ptr [ %i.agg, %.lr.ph.i29.i159.i.i.i.i ], [ %.019.lcssa.i147.i.i.i.i, %._crit_edge.i146.i.i.i.i ] ; 2 uses
  %.01824.i31.i161.i.i.i.i = phi ptr [ %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ], [ %.0.lcssa.i148.i.i.i.i, %._crit_edge.i146.i.i.i.i ] ; 3 uses
  %.01923.i32.i162.i.i.i.i = phi ptr [ %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ], [ %i.afx, %._crit_edge.i146.i.i.i.i ] ; 3 uses
  %.019.val.i33.i163.i.i.i.i = load ptr, ptr %.01923.i32.i162.i.i.i.i, align 8, !tbaa !122
  %.018.val.i34.i164.i.i.i.i = load ptr, ptr %.01824.i31.i161.i.i.i.i, align 8, !tbaa !122
  %.val2.i389.i.i.i.i = load ptr, ptr %.019.val.i33.i163.i.i.i.i, align 8, !tbaa !66
  %i.agb = load ptr, ptr %.val2.i389.i.i.i.i, align 8, !tbaa !170
  %i.agc = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.agb) #25
  %.val.i390.i.i.i.i = load ptr, ptr %.018.val.i34.i164.i.i.i.i, align 8, !tbaa !66
  %i.agd = load ptr, ptr %.val.i390.i.i.i.i, align 8, !tbaa !170
  %i.age = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.agd) #25
  %i.agf = icmp ult i32 %i.agc, %i.age            ; 3 uses
  %.sink.in.i35.i165.i.i.i.i = select i1 %i.agf, ptr %.01923.i32.i162.i.i.i.i, ptr %.01824.i31.i161.i.i.i.i
  %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.agf, i64 8, i64 0
  %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01923.i32.i162.i.i.i.i, i64 %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.agf, i64 0, i64 8
  %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.01824.i31.i161.i.i.i.i, i64 %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  %.sink.i40.i170.i.i.i.i = load ptr, ptr %.sink.in.i35.i165.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i40.i170.i.i.i.i, ptr %.025.i30.i160.i.i.i.i, align 8, !tbaa !122
  %i.agg = getelementptr inbounds nuw i8, ptr %.025.i30.i160.i.i.i.i, i64 8 ; 2 uses
  %i.agh = icmp ne ptr %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.afx
  %i.agi = icmp ne ptr %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.kn
  %i.agj = select i1 %i.agh, i1 %i.agi, i1 false
  br i1 %i.agj, label %.lr.ph.i29.i159.i.i.i.i, label %._crit_edge.i22.i152.i.i.i.i, !llvm.loop !7

._crit_edge.i22.i152.i.i.i.i:                     ; preds = %.lr.ph.i29.i159.i.i.i.i, %._crit_edge.i146.i.i.i.i
  %.019.lcssa.i23.i153.i.i.i.i = phi ptr [ %i.afx, %._crit_edge.i146.i.i.i.i ], [ %.120.idx.i36.i166.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ] ; 3 uses
  %.018.lcssa.i24.i154.i.i.i.i = phi ptr [ %.0.lcssa.i148.i.i.i.i, %._crit_edge.i146.i.i.i.i ], [ %.1.idx.i38.i168.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i29.i159.i.i.i.i ] ; 3 uses
  %.0.lcssa.i25.i155.i.i.i.i = phi ptr [ %.019.lcssa.i147.i.i.i.i, %._crit_edge.i146.i.i.i.i ], [ %i.agg, %.lr.ph.i29.i159.i.i.i.i ] ; 3 uses
  %i.agk = ptrtoint ptr %i.afx to i64
  %i.agl = ptrtoint ptr %.018.lcssa.i24.i154.i.i.i.i to i64
  %i.agm = sub i64 %i.agk, %i.agl                 ; 4 uses
  %i.agn = icmp sgt i64 %i.agm, 8
  br i1 %i.agn, label %bb.ec, label %bb.ed, !prof !103

bb.ec:                                            ; preds = %._crit_edge.i22.i152.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.lcssa.i25.i155.i.i.i.i, ptr align 8 %.018.lcssa.i24.i154.i.i.i.i, i64 %i.agm, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i

bb.ed:                                            ; preds = %._crit_edge.i22.i152.i.i.i.i
  %i.ago = icmp eq i64 %i.agm, 8
  br i1 %i.ago, label %bb.ee, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %.val.i.i.i.i.i.i28.i158.i.i.i.i = load ptr, ptr %.018.lcssa.i24.i154.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i28.i158.i.i.i.i, ptr %.0.lcssa.i25.i155.i.i.i.i, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.agp = getelementptr inbounds i8, ptr %.0.lcssa.i25.i155.i.i.i.i, i64 %i.agm ; 2 uses
  %i.agq = ptrtoint ptr %.019.lcssa.i23.i153.i.i.i.i to i64
  %i.agr = sub i64 %i.ko, %i.agq                  ; 3 uses
  %i.ags = icmp sgt i64 %i.agr, 8
  br i1 %i.ags, label %bb.ef, label %bb.eg, !prof !103

bb.ef:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.agp, ptr align 8 %.019.lcssa.i23.i153.i.i.i.i, i64 %i.agr, i1 false)
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i

bb.eg:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i26.i156.i.i.i.i
  %i.agt = icmp eq i64 %i.agr, 8
  br i1 %i.agt, label %bb.eh, label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %.val.i.i.i.i.i21.i27.i157.i.i.i.i = load ptr, ptr %.019.lcssa.i23.i153.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i27.i157.i.i.i.i, ptr %i.agp, align 8, !tbaa !122
  br label %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i

_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i: ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.agu = shl nsw i64 %.022.i.i.i.i.i, 2         ; 5 uses
  %.not52.i.i.i.i.i = icmp slt i64 %i.xa, %i.agu
  br i1 %.not52.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i110.i.i.i.i

.lr.ph.i110.i.i.i.i:                              ; preds = %_ZSt17__merge_sort_loopIPPN12_GLOBAL__N_18CHRScopeES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SA_T0_T1_T2_.exit180.i.i.i.i
  %.idx.i.i.i.i37.i = shl i64 %.022.i.i.i.i.i, 4  ; 8 uses
  %.idx46.i.i.i.i.i = shl nsw i64 %.022.i.i.i.i.i, 5 ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i37.i, %.idx46.i.i.i.i.i
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.us.preheader.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i38.i

._crit_edge.i.us.preheader.i.i.i.i.i:             ; preds = %.lr.ph.i110.i.i.i.i
  %i.agv = icmp sgt i64 %.022.i.i.i.i.i, 0
  %i.agw = icmp sgt i64 %.idx.i.i.i.i37.i, 8
  br label %._crit_edge.i.us.i.i.i.i.i

._crit_edge.i.us.i.i.i.i.i:                       ; preds = %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i, %._crit_edge.i.us.preheader.i.i.i.i.i
  %.054.us.i.i.i.i.i = phi ptr [ %i.agx, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i ], [ %i.kt, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %.01953.us.i.i.i.i.i = phi ptr [ %i.agz, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i ], [ %i.kz, %._crit_edge.i.us.preheader.i.i.i.i.i ] ; 2 uses
  %i.agx = getelementptr inbounds i8, ptr %.054.us.i.i.i.i.i, i64 %.idx.i.i.i.i37.i ; 4 uses
  br i1 %i.agv, label %bb.ei, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i, !prof !103

bb.ei:                                            ; preds = %._crit_edge.i.us.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.01953.us.i.i.i.i.i, ptr align 8 %.054.us.i.i.i.i.i, i64 %.idx.i.i.i.i37.i, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i: ; preds = %bb.ei, %._crit_edge.i.us.i.i.i.i.i
  %i.agy = getelementptr inbounds i8, ptr %.01953.us.i.i.i.i.i, i64 %.idx.i.i.i.i37.i ; 2 uses
  br i1 %i.agw, label %bb.ej, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i, !prof !193

bb.ej:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.agy, ptr nonnull align 8 %i.agx, i64 %.idx.i.i.i.i37.i, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.us.i.i.i.i.i: ; preds = %bb.ej, %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.us.i.i.i.i.i
  %i.agz = getelementptr inbounds i8, ptr %i.agy, i64 %.idx.i.i.i.i37.i ; 2 uses
  %i.aha = ptrtoint ptr %i.agx to i64
  %i.ahb = sub i64 %i.aee, %i.aha
  %i.ahc = ashr exact i64 %i.ahb, 3               ; 2 uses
  %.not.us.i.i.i.i.i = icmp slt i64 %i.ahc, %i.agu
  br i1 %.not.us.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.preheader.i.i.i.i38.i:                   ; preds = %.lr.ph.i110.i.i.i.i, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i
  %.054.i.i.i.i.i = phi ptr [ %i.ahe, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i ], [ %i.kt, %.lr.ph.i110.i.i.i.i ] ; 3 uses
  %.01953.i.i.i.i.i = phi ptr [ %i.ahz, %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i ], [ %i.kz, %.lr.ph.i110.i.i.i.i ]
  %i.ahd = getelementptr inbounds i8, ptr %.054.i.i.i.i.i, i64 %.idx.i.i.i.i37.i ; 3 uses
  %i.ahe = getelementptr inbounds i8, ptr %.054.i.i.i.i.i, i64 %.idx46.i.i.i.i.i ; 4 uses
  br label %.lr.ph.i.i111.i.i.i.i

.lr.ph.i.i111.i.i.i.i:                            ; preds = %.lr.ph.i.i111.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i38.i
  %.025.i.i.i.i.i.i = phi ptr [ %i.ahk, %.lr.ph.i.i111.i.i.i.i ], [ %.01953.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i38.i ] ; 2 uses
  %.01824.i.i.i.i.i.i = phi ptr [ %.1.i.i118.i.i.i.i, %.lr.ph.i.i111.i.i.i.i ], [ %.054.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i38.i ] ; 3 uses
  %.01923.i.i.i.i.i.i = phi ptr [ %.120.i.i116.i.i.i.i, %.lr.ph.i.i111.i.i.i.i ], [ %i.ahd, %.lr.ph.i.preheader.i.i.i.i38.i ] ; 3 uses
  %.019.val.i.i112.i.i.i.i = load ptr, ptr %.01923.i.i.i.i.i.i, align 8, !tbaa !122
  %.018.val.i.i113.i.i.i.i = load ptr, ptr %.01824.i.i.i.i.i.i, align 8, !tbaa !122
  %.val2.i387.i.i.i.i = load ptr, ptr %.019.val.i.i112.i.i.i.i, align 8, !tbaa !66
  %i.ahf = load ptr, ptr %.val2.i387.i.i.i.i, align 8, !tbaa !170
  %i.ahg = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ahf) #25
  %.val.i388.i.i.i.i = load ptr, ptr %.018.val.i.i113.i.i.i.i, align 8, !tbaa !66
  %i.ahh = load ptr, ptr %.val.i388.i.i.i.i, align 8, !tbaa !170
  %i.ahi = call noundef i32 @_ZNK4llvm10RegionBaseINS_12RegionTraitsINS_8FunctionEEEE8getDepthEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ahh) #25
  %i.ahj = icmp ult i32 %i.ahg, %i.ahi            ; 3 uses
  %.sink.in.i.i114.i.i.i.i = select i1 %i.ahj, ptr %.01923.i.i.i.i.i.i, ptr %.01824.i.i.i.i.i.i
  %.120.idx.i.i115.i.i.i.i = select i1 %i.ahj, i64 8, i64 0
  %.120.i.i116.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01923.i.i.i.i.i.i, i64 %.120.idx.i.i115.i.i.i.i ; 5 uses
  %.1.idx.i.i117.i.i.i.i = select i1 %i.ahj, i64 0, i64 8
  %.1.i.i118.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01824.i.i.i.i.i.i, i64 %.1.idx.i.i117.i.i.i.i ; 5 uses
  %.sink.i.i119.i.i.i.i = load ptr, ptr %.sink.in.i.i114.i.i.i.i, align 8, !tbaa !122
  store ptr %.sink.i.i119.i.i.i.i, ptr %.025.i.i.i.i.i.i, align 8, !tbaa !122
  %i.ahk = getelementptr inbounds nuw i8, ptr %.025.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.ahl = icmp ne ptr %.1.i.i118.i.i.i.i, %i.ahd
  %i.ahm = icmp ne ptr %.120.i.i116.i.i.i.i, %i.ahe
  %i.ahn = select i1 %i.ahl, i1 %i.ahm, i1 false
  br i1 %i.ahn, label %.lr.ph.i.i111.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !7

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph.i.i111.i.i.i.i
  %i.aho = ptrtoint ptr %i.ahd to i64
  %i.ahp = ptrtoint ptr %.1.i.i118.i.i.i.i to i64
  %i.ahq = sub i64 %i.aho, %i.ahp                 ; 4 uses
  %i.ahr = icmp sgt i64 %i.ahq, 8
  br i1 %i.ahr, label %bb.ek, label %bb.el, !prof !103

bb.ek:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ahk, ptr nonnull align 8 %.1.i.i118.i.i.i.i, i64 %i.ahq, i1 false)
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

bb.el:                                            ; preds = %._crit_edge.i.loopexit.i.i.i.i.i
  %i.ahs = icmp eq i64 %i.ahq, 8
  br i1 %i.ahs, label %bb.em, label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %.val.i.i.i.i.i.i.i121.i.i.i.i = load ptr, ptr %.1.i.i118.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i.i.i121.i.i.i.i, ptr %i.ahk, align 8, !tbaa !122
  br label %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i: ; preds = %bb.em, %bb.el, %bb.ek
  %i.aht = getelementptr inbounds i8, ptr %i.ahk, i64 %i.ahq ; 3 uses
  %i.ahu = ptrtoint ptr %i.ahe to i64             ; 2 uses
  %i.ahv = ptrtoint ptr %.120.i.i116.i.i.i.i to i64
  %i.ahw = sub i64 %i.ahu, %i.ahv                 ; 4 uses
  %i.ahx = icmp sgt i64 %i.ahw, 8
  br i1 %i.ahx, label %bb.en, label %bb.eo, !prof !103

bb.en:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aht, ptr nonnull align 8 %.120.i.i116.i.i.i.i, i64 %i.ahw, i1 false)
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i

bb.eo:                                            ; preds = %_ZSt4moveIPPN12_GLOBAL__N_18CHRScopeES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i
  %i.ahy = icmp eq i64 %i.ahw, 8
  br i1 %i.ahy, label %bb.ep, label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %.val.i.i.i.i.i21.i.i.i.i.i.i = load ptr, ptr %.120.i.i116.i.i.i.i, align 8, !tbaa !122
  store ptr %.val.i.i.i.i.i21.i.i.i.i.i.i, ptr %i.aht, align 8, !tbaa !122
  br label %_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i

_ZSt12__move_mergeIPPN12_GLOBAL__N_18CHRScopeES3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEET0_T_SB_SB_SB_SA_T1_.exit.i.i.i.i.i: ; preds = %bb.ep, %bb.eo, %bb.en
  %i.ahz = getelementptr inbounds i8, ptr %i.aht, i64 %i.ahw ; 2 uses
  %i.aia = sub i64 %i.aee, %i.ahu
  %i.aib = ashr exact i64 %i.aia, 3               ; 2 uses
  %.not.i120.i.i.i.i = icmp slt i64 %i.aib, %i.agu
  br i1 %.not.i120.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i38.i, !llvm.loop !6

end_hunk_2
