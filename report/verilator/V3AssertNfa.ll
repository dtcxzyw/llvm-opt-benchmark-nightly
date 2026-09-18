Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AssertNfa?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1487
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_113SvaNfaBuilder9buildExprEP11AstNodeExprPNS_14SvaStateVertexEb:bb.a
_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i: ; preds = %bb.gb
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 152
  %i.vp = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.vo), !noalias !808
  br label %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit.i151

_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit.i151: ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, %bb.gb, %_ZN7AstNode4castI13AstPropAlways11AstNodeExprEEPT_PT0_.exit
  %i.vq = phi i32 [ %i.vp, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i ], [ -1, %_ZN7AstNode4castI13AstPropAlways11AstNodeExprEEPT_PT0_.exit ], [ -1, %bb.gb ] ; 7 uses
  tail call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.vl), !noalias !808
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !161, !noalias !808 ; 3 uses
  %.not.i.i = icmp eq ptr %i.vs, null
  br i1 %.not.i.i, label %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.thread.i, label %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.i

_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.i: ; preds = %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit.i151
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.vt, align 8, !tbaa !160, !noalias !808
  %i.vu = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 194
  br i1 %i.vu, label %bb.gc, label %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.thread.i

bb.gc:                                            ; preds = %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.i
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.vw = load i8, ptr %i.vv, align 8, !tbaa !810, !range !76, !noalias !808, !noundef !77
  %i.vx = trunc nuw i8 %i.vw to i1
  %i.vy = icmp slt i32 %i.vq, 0
  %.not72.i = or i1 %i.vy, %i.vx
  br i1 %.not72.i, label %bb.gd, label %bb.ge, !prof !20

bb.gd:                                            ; preds = %bb.gc
  %i.vz = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 830), !noalias !808 ; 0 uses
  %i.wa = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev(), !noalias !808
  %i.wb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.wa, ptr noundef nonnull @.str.549), !noalias !808
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.wb) #30, !noalias !808
  unreachable

bb.ge:                                            ; preds = %bb.gc
  %i.wc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder13addDelayChainEPNS_14SvaStateVertexEiP8FileLine(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %3, i32 noundef %i.vq, ptr noundef %i.vf), !noalias !808 ; 5 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 120
  store i8 1, ptr %i.wd, align 8, !tbaa !305, !noalias !808
  %i.we = load ptr, ptr %1, align 8, !tbaa !290, !noalias !808, !nonnull !77, !align !269
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val.i.i160 = load ptr, ptr %i.wf, align 8, !tbaa !220, !noalias !808
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val4.i.i161 = load ptr, ptr %i.wg, align 8, !tbaa !220, !noalias !808
  %i.wh = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i.i160, ptr %.val4.i.i161, ptr noundef null, ptr noundef %i.vf), !noalias !808
  %i.wi = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31, !noalias !808 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.wi, align 8, !tbaa !79, !noalias !808
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wj, i8 0, i64 32, i1 false), !noalias !808
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.wi, ptr noundef nonnull align 8 dereferenceable(40) %i.we, ptr noundef nonnull %i.wc, ptr noundef nonnull %i.wc, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedEdgeEPNS_14SvaStateVertexES2_P8FileLine.exit.i unwind label %bb.gf, !noalias !808

bb.gf:                                            ; preds = %bb.ge
  %i.wk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wi, i64 noundef 96) #27, !noalias !808
  br label %common.resume943

_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedEdgeEPNS_14SvaStateVertexES2_P8FileLine.exit.i: ; preds = %bb.ge
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.wi, align 8, !tbaa !79, !noalias !808
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 72
  store ptr %i.wh, ptr %i.wl, align 8, !tbaa !312, !noalias !808
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 80
  store i8 1, ptr %i.wm, align 8, !tbaa !313, !noalias !808
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 81
  store i8 0, ptr %i.wn, align 1, !tbaa !314, !noalias !808
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 88
  store ptr null, ptr %i.wo, align 8, !tbaa !315, !noalias !808
  %i.wp = load ptr, ptr %1, align 8, !tbaa !290, !noalias !808, !nonnull !77, !align !269
  %i.wq = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31, !noalias !808 ; 11 uses
  invoke void @_ZN13V3GraphVertexC2EP7V3Graph(ptr noundef nonnull align 8 dereferenceable(168) %i.wq, ptr noundef nonnull align 8 dereferenceable(40) %i.wp)
          to label %_ZN12_GLOBAL__N_18SvaGraph17createStateVertexEv.exit.i unwind label %bb.gg, !noalias !808

bb.gg:                                            ; preds = %_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedEdgeEPNS_14SvaStateVertexES2_P8FileLine.exit.i
  %i.wr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wq, i64 noundef 168) #27, !noalias !808
  br label %common.resume943

_ZN12_GLOBAL__N_18SvaGraph17createStateVertexEv.exit.i: ; preds = %_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedEdgeEPNS_14SvaStateVertexES2_P8FileLine.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_114SvaStateVertexE, i64 16), ptr %i.wq, align 8, !tbaa !79, !noalias !808
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 80
  store i8 0, ptr %i.ws, align 8, !tbaa !303, !noalias !808
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 88
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 116
  store i32 0, ptr %i.wu, align 4, !tbaa !304, !noalias !808
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wq, i64 120
  store i8 0, ptr %i.wv, align 8, !tbaa !305, !noalias !808
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wq, i64 121
  store i8 0, ptr %i.ww, align 1, !tbaa !306, !noalias !808
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wq, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.wt, i8 0, i64 25, i1 false), !noalias !808
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.wx, i8 0, i64 34, i1 false), !noalias !808
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wq, i64 160
  store i8 1, ptr %i.wy, align 8, !tbaa !333, !noalias !808
  %i.wz = tail call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.vh, i1 noundef zeroext false, i1 noundef zeroext true), !noalias !808 ; 3 uses
  %i.xa = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #31, !noalias !808 ; 6 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 88
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !184, !noalias !808
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 72
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !259, !noalias !808 ; 2 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.xa, i16 178, ptr noundef %i.xc)
          to label %.noexc.i.i unwind label %bb.gi, !noalias !808

.noexc.i.i:                                       ; preds = %_ZN12_GLOBAL__N_18SvaGraph17createStateVertexEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV10AstSampled, i64 16), ptr %i.xa, align 8, !tbaa !79, !noalias !808
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.xa, ptr noundef nonnull %i.wz)
          to label %.noexc5.i.i unwind label %bb.gi, !noalias !808

.noexc5.i.i:                                      ; preds = %.noexc.i.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 72 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !259, !noalias !808
  %.not.i.i.i.i = icmp eq ptr %i.xg, %i.xe
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i, label %bb.gh

bb.gh:                                            ; preds = %.noexc5.i.i
  store ptr %i.xe, ptr %i.xf, align 8, !tbaa !259, !noalias !808
  %i.xh = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !808
  %i.xi = add i64 %i.xh, 1
  store i64 %i.xi, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !808
  br label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i

bb.gi:                                            ; preds = %.noexc.i.i, %_ZN12_GLOBAL__N_18SvaGraph17createStateVertexEv.exit.i
  %i.xj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.xa, i64 noundef 152) #27, !noalias !808
  br label %common.resume943

_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i:  ; preds = %bb.gh, %.noexc5.i.i
  %i.xk = load ptr, ptr %1, align 8, !tbaa !290, !noalias !808, !nonnull !77, !align !269
  %.val.i73.i = load ptr, ptr %i.wf, align 8, !tbaa !220, !noalias !808
  %.val5.i.i162 = load ptr, ptr %i.wg, align 8, !tbaa !220, !noalias !808
  %i.xl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i73.i, ptr %.val5.i.i162, ptr noundef nonnull %i.xa, ptr noundef %i.vf), !noalias !808
  %i.xm = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31, !noalias !808 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.xm, align 8, !tbaa !79, !noalias !808
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xn, i8 0, i64 32, i1 false), !noalias !808
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.xm, ptr noundef nonnull align 8 dereferenceable(40) %i.xk, ptr noundef nonnull %i.wc, ptr noundef nonnull %i.wq, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedLinkEPNS_14SvaStateVertexES2_P11AstNodeExprP8FileLine.exit.i unwind label %bb.gj, !noalias !808

bb.gj:                                            ; preds = %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i
  %i.xo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef 96) #27, !noalias !808
  br label %common.resume943

_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedLinkEPNS_14SvaStateVertexES2_P11AstNodeExprP8FileLine.exit.i: ; preds = %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.xm, align 8, !tbaa !79, !noalias !808
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 72
  store ptr %i.xl, ptr %i.xp, align 8, !tbaa !312, !noalias !808
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 80
  store i8 0, ptr %i.xq, align 8, !tbaa !313, !noalias !808
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xm, i64 81 ; 2 uses
  store i8 0, ptr %i.xr, align 1, !tbaa !314, !noalias !808
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 88
  store ptr null, ptr %i.xs, align 8, !tbaa !315, !noalias !808
  br i1 %4, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedLinkEPNS_14SvaStateVertexES2_P11AstNodeExprP8FileLine.exit.i
  store i8 1, ptr %i.xr, align 1, !tbaa !314, !noalias !808
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZN12_GLOBAL__N_113SvaNfaBuilder11guardedLinkEPNS_14SvaStateVertexES2_P11AstNodeExprP8FileLine.exit.i
  store ptr %i.wc, ptr %0, align 8, !tbaa !205, !alias.scope !808
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.xt, i8 0, i64 34, i1 false), !alias.scope !808
  br label %common.ret2252

_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.thread.i: ; preds = %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.i, %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit.i151
  %i.xu = tail call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.vs, i1 noundef zeroext false, i1 noundef zeroext true), !noalias !808
  %i.xv = tail call noundef ptr @_ZN7V3Const12constifyEditEP11AstNodeExpr(ptr noundef %i.xu), !noalias !808 ; 4 uses
  %.not.i.i74.i = icmp eq ptr %i.xv, null
  br i1 %.not.i.i74.i, label %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit77.i, label %bb.gm

bb.gm:                                            ; preds = %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.thread.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 64
  %.sroa.0.0.copyload.i.i.i.i75.i = load i16, ptr %i.xw, align 8, !tbaa !160, !noalias !808
  %i.xx = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i75.i, 121
  br i1 %i.xx, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i76.i, label %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit77.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i76.i: ; preds = %bb.gm
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 152
  %i.xz = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.xy), !noalias !808
  br label %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit77.i

_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit77.i: ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i76.i, %bb.gm, %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.thread.i
  %i.ya = phi i32 [ %i.xz, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i76.i ], [ -1, %_ZN7AstNode2isI12AstUnbounded11AstNodeExprEEbPKT0_.exit.thread.i ], [ -1, %bb.gm ] ; 3 uses
  tail call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.xv), !noalias !808
  %i.yb = icmp slt i32 %i.vq, 0
  %i.yc = icmp slt i32 %i.ya, %i.vq
  %.not66.i = or i1 %i.yb, %i.yc
  br i1 %.not66.i, label %bb.gn, label %bb.go, !prof !20

bb.gn:                                            ; preds = %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit77.i
  %i.yd = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 842), !noalias !808 ; 0 uses
  %i.ye = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev(), !noalias !808
  %i.yf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ye, ptr noundef nonnull @.str.550), !noalias !808
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.yf) #30, !noalias !808
  unreachable

bb.go:                                            ; preds = %_ZN12_GLOBAL__N_113SvaNfaBuilder11getConstIntEP11AstNodeExpr.exit77.i
  %i.yg = sub nuw i32 %i.ya, %i.vq                ; 2 uses
  %i.yh = add nuw nsw i32 %i.yg, 1                ; 2 uses
  %i.yi = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113SvaNfaBuilder24exceedsAssertUnrollLimitEP7AstNodei(ptr noundef nonnull %2, i32 noundef %i.yh), !noalias !808
  br i1 %i.yi, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !alias.scope !811
  store i8 1, ptr %i.yj, align 8, !tbaa !206, !alias.scope !811
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.yk, align 1, !tbaa !308, !alias.scope !811
  br label %common.ret2252

bb.gq:                                            ; preds = %bb.go
  %i.yl = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder15tryHoistSampledEP11AstNodeExprP8FileLinei(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.vh, ptr noundef %i.vf, i32 noundef %i.yh), !noalias !808 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 4 uses
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !167, !range !76, !noalias !808, !noundef !77 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !810, !range !76, !noalias !808, !noundef !77
  store i8 %i.yp, ptr %i.ym, align 1, !tbaa !408, !noalias !808
  %i.yq = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder13addDelayChainEPNS_14SvaStateVertexEiP8FileLine(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %3, i32 noundef %i.vq, ptr noundef %i.vf)
          to label %.preheader.i unwind label %bb.gx, !noalias !808

.preheader.i:                                     ; preds = %bb.gq
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.yu = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder18scopedCreateVertexEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.gr unwind label %.loopexit.split-lp114.i, !noalias !808 ; 3 uses

bb.gr:                                            ; preds = %.preheader.i
  %i.yv = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder17sampledRefOrCloneEP6AstVarP11AstNodeExprP8FileLine(ptr noundef %i.yl, ptr noundef %i.vh, ptr noundef %i.vf)
          to label %bb.gs unwind label %.loopexit.split-lp119.i, !noalias !808

bb.gs:                                            ; preds = %bb.gr
  %i.yw = load ptr, ptr %1, align 8, !tbaa !290, !noalias !808, !nonnull !77, !align !269
  %.val.i82.peel.i = load ptr, ptr %i.yr, align 8, !tbaa !220, !noalias !808
  %.val5.i83.peel.i = load ptr, ptr %i.ys, align 8, !tbaa !220, !noalias !808
  %i.yx = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i82.peel.i, ptr %.val5.i83.peel.i, ptr noundef nonnull %i.yv, ptr noundef %i.vf)
          to label %.noexc84.peel.i unwind label %.loopexit.split-lp119.i, !noalias !808

.noexc84.peel.i:                                  ; preds = %bb.gs
  %i.yy = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc85.peel.i unwind label %.loopexit.split-lp119.i, !noalias !808 ; 9 uses

.noexc85.peel.i:                                  ; preds = %.noexc84.peel.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.yy, align 8, !tbaa !79, !noalias !808
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yz, i8 0, i64 32, i1 false), !noalias !808
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.yy, ptr noundef nonnull align 8 dereferenceable(40) %i.yw, ptr noundef %i.yq, ptr noundef nonnull %i.yu, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.gt unwind label %.loopexit.split-lp124.i, !noalias !808

bb.gt:                                            ; preds = %.noexc85.peel.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.yy, align 8, !tbaa !79, !noalias !808
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 72
  store ptr %i.yx, ptr %i.za, align 8, !tbaa !312, !noalias !808
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 80
  store i8 0, ptr %i.zb, align 8, !tbaa !313, !noalias !808
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 81 ; 2 uses
  store i8 0, ptr %i.zc, align 1, !tbaa !314, !noalias !808
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yy, i64 88
  store ptr null, ptr %i.zd, align 8, !tbaa !315, !noalias !808
  br i1 %4, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.ze = load i8, ptr %i.yt, align 8, !tbaa !407, !range !76, !noalias !808, !noundef !77
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  store i8 1, ptr %i.zc, align 1, !tbaa !314, !noalias !808
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %bb.gt
  %exitcond.peel.not.i155 = icmp eq i32 %i.ya, %i.vq
  br i1 %exitcond.peel.not.i155, label %._crit_edge.i159, label %.peel.next.i

._crit_edge.i159:                                 ; preds = %bb.hi, %bb.gw
  %.059.lcssa.i = phi ptr [ %i.yu, %bb.gw ], [ %i.zr, %bb.hi ]
  store ptr %.059.lcssa.i, ptr %0, align 8, !tbaa !205, !alias.scope !808
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.zg, i8 0, i64 34, i1 false), !alias.scope !808
  store i8 %i.yn, ptr %i.ym, align 1, !tbaa !167, !noalias !808
  br label %common.ret2252

bb.gx:                                            ; preds = %bb.gq
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i152

.peel.next.i:                                     ; preds = %bb.gw, %bb.hi
  %.0101.i = phi i32 [ %i.aad, %bb.hi ], [ 1, %bb.gw ] ; 2 uses
  %.059100.i = phi ptr [ %i.zr, %bb.hi ], [ %i.yu, %bb.gw ]
  %i.zi = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder18scopedCreateVertexEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.gy unwind label %bb.ha, !noalias !808 ; 2 uses

bb.gy:                                            ; preds = %.peel.next.i
  %i.zj = load ptr, ptr %1, align 8, !tbaa !290, !noalias !808, !nonnull !77, !align !269
  %.val.i78.i = load ptr, ptr %i.yr, align 8, !tbaa !220, !noalias !808
  %.val4.i79.i = load ptr, ptr %i.ys, align 8, !tbaa !220, !noalias !808
  %i.zk = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i78.i, ptr %.val4.i79.i, ptr noundef null, ptr noundef %i.vf)
          to label %.noexc.i157 unwind label %bb.ha, !noalias !808

.noexc.i157:                                      ; preds = %bb.gy
  %i.zl = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc80.i unwind label %bb.ha, !noalias !808 ; 9 uses

.noexc80.i:                                       ; preds = %.noexc.i157
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.zl, align 8, !tbaa !79, !noalias !808
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zm, i8 0, i64 32, i1 false), !noalias !808
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.zl, ptr noundef nonnull align 8 dereferenceable(40) %i.zj, ptr noundef nonnull %.059100.i, ptr noundef nonnull %i.zi, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.hb unwind label %bb.gz, !noalias !808

bb.gz:                                            ; preds = %.noexc80.i
  %lpad.loopexit110.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zl, i64 noundef 96) #27, !noalias !808
  br label %.body.i152

bb.ha:                                            ; preds = %.noexc.i157, %bb.gy, %.peel.next.i
  %lpad.loopexit.i156 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i152

bb.hb:                                            ; preds = %.noexc80.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.zl, align 8, !tbaa !79, !noalias !808
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 72
  store ptr %i.zk, ptr %i.zn, align 8, !tbaa !312, !noalias !808
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 80
  store i8 1, ptr %i.zo, align 8, !tbaa !313, !noalias !808
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 81
  store i8 0, ptr %i.zp, align 1, !tbaa !314, !noalias !808
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 88
  store ptr null, ptr %i.zq, align 8, !tbaa !315, !noalias !808
  %i.zr = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder18scopedCreateVertexEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.hc unwind label %.loopexit113.i, !noalias !808 ; 3 uses

bb.hc:                                            ; preds = %bb.hb
  %i.zs = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder17sampledRefOrCloneEP6AstVarP11AstNodeExprP8FileLine(ptr noundef %i.yl, ptr noundef %i.vh, ptr noundef %i.vf)
          to label %bb.hd unwind label %.loopexit118.i, !noalias !808

bb.hd:                                            ; preds = %bb.hc
  %i.zt = load ptr, ptr %1, align 8, !tbaa !290, !noalias !808, !nonnull !77, !align !269
  %.val.i82.i = load ptr, ptr %i.yr, align 8, !tbaa !220, !noalias !808
  %.val5.i83.i = load ptr, ptr %i.ys, align 8, !tbaa !220, !noalias !808
  %i.zu = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i82.i, ptr %.val5.i83.i, ptr noundef nonnull %i.zs, ptr noundef %i.vf)
          to label %.noexc84.i unwind label %.loopexit118.i, !noalias !808

.noexc84.i:                                       ; preds = %bb.hd
  %i.zv = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc85.i unwind label %.loopexit118.i, !noalias !808 ; 9 uses

.noexc85.i:                                       ; preds = %.noexc84.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.zv, align 8, !tbaa !79, !noalias !808
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zw, i8 0, i64 32, i1 false), !noalias !808
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.zv, ptr noundef nonnull align 8 dereferenceable(40) %i.zt, ptr noundef nonnull %i.zi, ptr noundef nonnull %i.zr, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.hf unwind label %.loopexit123.i, !noalias !808

.loopexit123.i:                                   ; preds = %.noexc85.i
  %lpad.loopexit125.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit.split-lp124.i:                          ; preds = %.noexc85.peel.i
  %lpad.loopexit.split-lp126.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.he:                                            ; preds = %.loopexit.split-lp124.i, %.loopexit123.i
  %.lcssa105.i = phi ptr [ %i.zv, %.loopexit123.i ], [ %i.yy, %.loopexit.split-lp124.i ]
  %lpad.phi127.i = phi { ptr, i32 } [ %lpad.loopexit125.i, %.loopexit123.i ], [ %lpad.loopexit.split-lp126.i, %.loopexit.split-lp124.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa105.i, i64 noundef 96) #27, !noalias !808
  br label %.body.i152

bb.hf:                                            ; preds = %.noexc85.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.zv, align 8, !tbaa !79, !noalias !808
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 72
  store ptr %i.zu, ptr %i.zx, align 8, !tbaa !312, !noalias !808
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 80
  store i8 0, ptr %i.zy, align 8, !tbaa !313, !noalias !808
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 81 ; 2 uses
  store i8 0, ptr %i.zz, align 1, !tbaa !314, !noalias !808
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zv, i64 88
  store ptr null, ptr %i.aaa, align 8, !tbaa !315, !noalias !808
  br i1 %4, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.aab = load i8, ptr %i.yt, align 8, !tbaa !407, !range !76, !noalias !808, !noundef !77
  %i.aac = trunc nuw i8 %i.aab to i1
  br i1 %i.aac, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  store i8 1, ptr %i.zz, align 1, !tbaa !314, !noalias !808
  br label %bb.hi

.loopexit113.i:                                   ; preds = %bb.hb
  %lpad.loopexit115.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i152
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113SvaNfaBuilder9buildExprEP11AstNodeExprPNS_14SvaStateVertexEb:bb.a
  %i.asl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.asj, ptr %i.asl, align 8, !tbaa !27, !alias.scope !828, !noalias !817
  store ptr %i.asc, ptr %i.arz, align 8, !tbaa !26, !noalias !817
  store i64 0, ptr %i.ask, align 8, !tbaa !27, !noalias !817
  store i8 0, ptr %i.asc, align 8, !tbaa !28, !noalias !817
  %i.asm = load ptr, ptr %11, align 8, !tbaa !26, !noalias !817
  %i.asn = load i64, ptr %i.asl, align 8, !tbaa !27, !noalias !817
  %i.aso = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.all, ptr noundef %i.asm, i64 noundef %i.asn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.lh, !noalias !817, !inline_history !769

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.lb
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.aso)
          to label %bb.lc unwind label %bb.lh, !noalias !817, !inline_history !769

bb.lc:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.asp = load ptr, ptr %11, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.asq = icmp eq ptr %i.asp, %i.asa
  br i1 %i.asq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i866, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i: ; preds = %bb.lc
  %i.asr = load i64, ptr %i.asa, align 8, !tbaa !28, !noalias !817
  %i.ass = add i64 %i.asr, 1
  call void @_ZdlPvm(ptr noundef %i.asp, i64 noundef %i.ass) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i866

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i866: ; preds = %bb.lc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i
  %i.ast = load ptr, ptr %12, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.asv = icmp eq ptr %i.ast, %i.asu
  br i1 %i.asv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i866
  %i.asw = load i64, ptr %i.asu, align 8, !tbaa !28, !noalias !817
  %i.asx = add i64 %i.asw, 1
  call void @_ZdlPvm(ptr noundef %i.ast, i64 noundef %i.asx) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i
  %i.asy = load ptr, ptr %16, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.asz = icmp eq ptr %i.asy, %i.aow
  br i1 %i.asz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i
  %i.ata = load i64, ptr %i.aow, align 8, !tbaa !28, !noalias !817
  %i.atb = add i64 %i.ata, 1
  call void @_ZdlPvm(ptr noundef %i.asy, i64 noundef %i.atb) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !817
  %i.atc = load ptr, ptr %13, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.atd = icmp eq ptr %i.atc, %i.anx
  br i1 %i.atd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i
  %i.ate = load i64, ptr %i.anx, align 8, !tbaa !28, !noalias !817
  %i.atf = add i64 %i.ate, 1
  call void @_ZdlPvm(ptr noundef %i.atc, i64 noundef %i.atf) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i
  %i.atg = load ptr, ptr %14, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.ath = icmp eq ptr %i.atg, %i.anh
  br i1 %i.ath, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i
  %i.ati = load i64, ptr %i.anh, align 8, !tbaa !28, !noalias !817
  %i.atj = add i64 %i.ati, 1
  call void @_ZdlPvm(ptr noundef %i.atg, i64 noundef %i.atj) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i
  %i.atk = load ptr, ptr %15, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.atl = icmp eq ptr %i.atk, %i.alz
  br i1 %i.atl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i
  %i.atm = load i64, ptr %i.alz, align 8, !tbaa !28, !noalias !817
  %i.atn = add i64 %i.atm, 1
  call void @_ZdlPvm(ptr noundef %i.atk, i64 noundef %i.atn) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !817
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !alias.scope !830
  store i8 1, ptr %i.ato, align 8, !tbaa !206, !alias.scope !830
  %i.atp = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.atp, align 1, !tbaa !308, !alias.scope !830
  br label %common.ret2252

bb.ld:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit.i
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i

bb.le:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %bb.ki
  %i.atr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i

bb.lf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.kx, %.critedge.i.i
  %i.ats = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i

bb.lg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i146.i, %bb.kz
  %i.att = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i

bb.lh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %bb.lb
  %i.atu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atv = load ptr, ptr %11, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.atw = icmp eq ptr %i.atv, %i.asa
  br i1 %i.atw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i: ; preds = %bb.lh
  %i.atx = load i64, ptr %i.asa, align 8, !tbaa !28, !noalias !817
  %i.aty = add i64 %i.atx, 1
  call void @_ZdlPvm(ptr noundef %i.atv, i64 noundef %i.aty) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i: ; preds = %bb.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i, %bb.lg
  %.pn110.i = phi { ptr, i32 } [ %i.att, %bb.lg ], [ %i.atu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i ], [ %i.atu, %bb.lh ] ; 2 uses
  %i.atz = load ptr, ptr %12, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aub = icmp eq ptr %i.atz, %i.aua
  br i1 %i.aub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i
  %i.auc = load i64, ptr %i.aua, align 8, !tbaa !28, !noalias !817
  %i.aud = add i64 %i.auc, 1
  call void @_ZdlPvm(ptr noundef %i.atz, i64 noundef %i.aud) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i, %bb.lf
  %.pn110.pn.i = phi { ptr, i32 } [ %i.ats, %bb.lf ], [ %.pn110.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175.i ], [ %.pn110.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i ] ; 2 uses
  %i.aue = load ptr, ptr %16, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.auf = icmp eq ptr %i.aue, %i.aow
  br i1 %i.auf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i
  %i.aug = load i64, ptr %i.aow, align 8, !tbaa !28, !noalias !817
  %i.auh = add i64 %i.aug, 1
  call void @_ZdlPvm(ptr noundef %i.aue, i64 noundef %i.auh) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !817
  %i.aui = load ptr, ptr %13, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.auj = icmp eq ptr %i.aui, %i.anx
  br i1 %i.auj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i
  %i.auk = load i64, ptr %i.anx, align 8, !tbaa !28, !noalias !817
  %i.aul = add i64 %i.auk, 1
  call void @_ZdlPvm(ptr noundef %i.aui, i64 noundef %i.aul) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i, %bb.le
  %.pn110.pn.pn.i = phi { ptr, i32 } [ %i.atr, %bb.le ], [ %.pn110.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i ], [ %.pn110.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i ] ; 2 uses
  %i.aum = load ptr, ptr %14, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.aun = icmp eq ptr %i.aum, %i.anh
  br i1 %i.aun, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i
  %i.auo = load i64, ptr %i.anh, align 8, !tbaa !28, !noalias !817
  %i.aup = add i64 %i.auo, 1
  call void @_ZdlPvm(ptr noundef %i.aum, i64 noundef %i.aup) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i, %bb.ld
  %.pn110.pn.pn.pn.i = phi { ptr, i32 } [ %i.atq, %bb.ld ], [ %.pn110.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i ], [ %.pn110.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i ]
  %i.auq = load ptr, ptr %15, align 8, !tbaa !26, !noalias !817 ; 2 uses
  %i.aur = icmp eq ptr %i.auq, %i.alz
  br i1 %i.aur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i
  %i.aus = load i64, ptr %i.alz, align 8, !tbaa !28, !noalias !817
  %i.aut = add i64 %i.aus, 1
  call void @_ZdlPvm(ptr noundef %i.auq, i64 noundef %i.aut) #27, !noalias !817, !inline_history !769
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !817
  br label %common.resume943

bb.li:                                            ; preds = %bb.jr
  %i.auu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !184, !noalias !817 ; 11 uses
  %i.auw = sub nuw i32 %i.aks, %i.akp             ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.auw, i32 0)
  br label %bb.ll

bb.lj:                                            ; preds = %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i
  %i.aux = load ptr, ptr %i.akq, align 8, !tbaa !172, !noalias !817
  %i.auy = tail call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.aux, i1 noundef zeroext false, i1 noundef zeroext true), !noalias !817, !inline_history !769
  %i.auz = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31, !noalias !817, !inline_history !769 ; 11 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.auz, i16 242, ptr noundef %i.auv)
          to label %.noexc190.i unwind label %bb.nc, !noalias !817, !inline_history !769

.noexc190.i:                                      ; preds = %bb.lj
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.auz, align 8, !tbaa !79, !noalias !817
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 152
  store i64 0, ptr %i.ava, align 8, !noalias !817
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.auz, ptr noundef %i.ayb)
          to label %.noexc191.i851 unwind label %bb.nc, !noalias !817, !inline_history !769

.noexc191.i851:                                   ; preds = %.noexc190.i
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.auz, ptr noundef %i.auy)
          to label %.noexc192.i852 unwind label %bb.nc, !noalias !817, !inline_history !769

.noexc192.i852:                                   ; preds = %.noexc191.i851
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV13AstSIntersect, i64 16), ptr %i.auz, align 8, !tbaa !79, !noalias !817
  %i.avb = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.auz, i8 1)
          to label %.noexc193.i unwind label %bb.nc, !noalias !817, !inline_history !769 ; 2 uses

.noexc193.i:                                      ; preds = %.noexc192.i852
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auz, i64 72 ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i.i853 = icmp eq ptr %i.avd, %i.avb
  br i1 %.not.i.i.i.i853, label %_ZN13AstSIntersectC2EP8FileLineP11AstNodeExprS3_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %.noexc193.i
  store ptr %i.avb, ptr %i.avc, align 8, !tbaa !259, !noalias !817
  %i.ave = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.avf = add i64 %i.ave, 1
  store i64 %i.avf, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN13AstSIntersectC2EP8FileLineP11AstNodeExprS3_.exit.i

bb.ll:                                            ; preds = %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i, %bb.li
  %.066324.i = phi i32 [ 0, %bb.li ], [ %i.ayc, %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i ] ; 5 uses
  %.067323.i = phi ptr [ null, %bb.li ], [ %i.ayb, %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i ] ; 2 uses
  %i.avg = sub nuw nsw i32 %i.auw, %.066324.i     ; 2 uses
  %i.avh = load ptr, ptr %i.akn, align 8, !tbaa !159, !noalias !817
  %i.avi = tail call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.avh, i1 noundef zeroext false, i1 noundef zeroext true), !noalias !817, !inline_history !769 ; 2 uses
  %.not95.i = icmp eq i32 %.066324.i, 0
  br i1 %.not95.i, label %_ZN7AstNode11dtypeSetBitEv.exit.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.avj = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31, !noalias !817, !inline_history !769 ; 8 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.avj, i16 121, ptr noundef %i.auv)
          to label %.noexc195.i unwind label %bb.lt, !noalias !817, !inline_history !769

.noexc195.i:                                      ; preds = %bb.lm
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.avj, align 8, !tbaa !79, !noalias !817
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.avk, ptr noundef nonnull align 8 dereferenceable(208) %i.avj, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc196.i unwind label %bb.lt, !noalias !817, !inline_history !769

.noexc196.i:                                      ; preds = %.noexc195.i
  %i.avl = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.avj, i8 1)
          to label %.noexc.i.i842 unwind label %bb.lo, !noalias !817, !inline_history !769 ; 2 uses

.noexc.i.i842:                                    ; preds = %.noexc196.i
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avj, i64 72 ; 2 uses
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i194.i = icmp eq ptr %i.avn, %i.avl
  br i1 %.not.i.i.i194.i, label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit.i, label %bb.ln

bb.ln:                                            ; preds = %.noexc.i.i842
  store ptr %i.avl, ptr %i.avm, align 8, !tbaa !259, !noalias !817
  %i.avo = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.avp = add i64 %i.avo, 1
  store i64 %i.avp, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit.i

bb.lo:                                            ; preds = %.noexc196.i
  %i.avq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.avk) #26, !noalias !817, !inline_history !769
  br label %.body.i841

_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit.i:    ; preds = %bb.ln, %.noexc.i.i842
  %i.avr = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31, !noalias !817, !inline_history !769 ; 7 uses
  %i.avs = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31
          to label %bb.lp unwind label %bb.lu, !noalias !817, !inline_history !769 ; 9 uses

bb.lp:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.avs, i16 121, ptr noundef %i.auv)
          to label %.noexc199.i843 unwind label %bb.lv, !noalias !817, !inline_history !769

.noexc199.i843:                                   ; preds = %bb.lp
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.avs, align 8, !tbaa !79, !noalias !817
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.avt, ptr noundef nonnull align 8 dereferenceable(208) %i.avs, i32 noundef 32, i32 noundef %.066324.i, i1 noundef zeroext true)
          to label %.noexc200.i844 unwind label %bb.lv, !noalias !817, !inline_history !769

.noexc200.i844:                                   ; preds = %.noexc199.i843
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avs, i64 184
  %i.avv = load i32, ptr %i.avu, align 8, !tbaa !398, !noalias !817
  %i.avw = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.avs, i32 noundef %i.avv, i32 noundef 0, i8 0)
          to label %.noexc.i197.i unwind label %bb.lr, !noalias !817, !inline_history !769 ; 2 uses

.noexc.i197.i:                                    ; preds = %.noexc200.i844
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avs, i64 72 ; 2 uses
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i198.i = icmp eq ptr %i.avy, %i.avw
  br i1 %.not.i.i.i198.i, label %_ZN8AstConstC2EP8FileLinej.exit.i, label %bb.lq

bb.lq:                                            ; preds = %.noexc.i197.i
  store ptr %i.avw, ptr %i.avx, align 8, !tbaa !259, !noalias !817
  %i.avz = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.awa = add i64 %i.avz, 1
  store i64 %i.awa, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN8AstConstC2EP8FileLinej.exit.i

bb.lr:                                            ; preds = %.noexc200.i844
  %i.awb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.avt) #26, !noalias !817, !inline_history !769
  br label %.body201.i

_ZN8AstConstC2EP8FileLinej.exit.i:                ; preds = %bb.lq, %.noexc.i197.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.avr, i16 419, ptr noundef %i.auv)
          to label %.noexc203.i unwind label %bb.lu, !noalias !817, !inline_history !769

.noexc203.i:                                      ; preds = %_ZN8AstConstC2EP8FileLinej.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV8AstDelay, i64 16), ptr %i.avr, align 8, !tbaa !79, !noalias !817
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avr, i64 152
  store i8 18, ptr %i.awc, align 8, !tbaa !409, !noalias !817
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avr, i64 153
  store i8 1, ptr %i.awd, align 1, !tbaa !380, !noalias !817
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.avr, ptr noundef nonnull %i.avs)
          to label %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit.i unwind label %bb.lu, !noalias !817, !inline_history !769

_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit.i:  ; preds = %.noexc203.i
  %i.awe = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #31, !noalias !817, !inline_history !769 ; 10 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.awe, i16 172, ptr noundef %i.auv)
          to label %.noexc206.i unwind label %bb.lx, !noalias !817, !inline_history !769

.noexc206.i:                                      ; preds = %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstSExpr, i64 16), ptr %i.awe, align 8, !tbaa !79, !noalias !817
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.awe, ptr noundef nonnull %i.avj)
          to label %.noexc207.i845 unwind label %bb.lx, !noalias !817, !inline_history !769

.noexc207.i845:                                   ; preds = %.noexc206.i
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.awe, ptr noundef nonnull %i.avr)
          to label %.noexc208.i846 unwind label %bb.lx, !noalias !817, !inline_history !769

.noexc208.i846:                                   ; preds = %.noexc207.i845
  invoke void @_ZN7AstNode7setOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.awe, ptr noundef %i.avi)
          to label %_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit.i unwind label %bb.lx, !noalias !817, !inline_history !769

_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit.i: ; preds = %.noexc208.i846
  %i.awf = tail call noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.awe, i8 1), !noalias !817, !inline_history !769 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awe, i64 72 ; 2 uses
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !259, !noalias !817
  %.not.i.i210.i = icmp eq ptr %i.awh, %i.awf
  br i1 %.not.i.i210.i, label %_ZN7AstNode11dtypeSetBitEv.exit.i, label %bb.ls

bb.ls:                                            ; preds = %_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit.i
  store ptr %i.awf, ptr %i.awg, align 8, !tbaa !259, !noalias !817
  %i.awi = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.awj = add i64 %i.awi, 1
  store i64 %i.awj, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN7AstNode11dtypeSetBitEv.exit.i

bb.lt:                                            ; preds = %.noexc195.i, %bb.lm
  %i.awk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i841

.body.i841:                                       ; preds = %bb.lt, %bb.lo
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.awk, %bb.lt ], [ %i.avq, %bb.lo ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.avj, i64 noundef 208) #27, !noalias !817, !inline_history !769
  br label %common.resume943

bb.lu:                                            ; preds = %.noexc203.i, %_ZN8AstConstC2EP8FileLinej.exit.i, %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit.i
  %i.awl = landingpad { ptr, i32 }
          cleanup
  br label %bb.lw

bb.lv:                                            ; preds = %.noexc199.i843, %bb.lp
  %i.awm = landingpad { ptr, i32 }
          cleanup
  br label %.body201.i

.body201.i:                                       ; preds = %bb.lv, %bb.lr
  %eh.lpad-body202.i = phi { ptr, i32 } [ %i.awm, %bb.lv ], [ %i.awb, %bb.lr ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.avs, i64 noundef 208) #27, !noalias !817, !inline_history !769
  br label %bb.lw

bb.lw:                                            ; preds = %.body201.i, %bb.lu
  %.pn96.i = phi { ptr, i32 } [ %i.awl, %bb.lu ], [ %eh.lpad-body202.i, %.body201.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.avr, i64 noundef 160) #27, !noalias !817, !inline_history !769
  br label %common.resume943

bb.lx:                                            ; preds = %.noexc208.i846, %.noexc207.i845, %.noexc206.i, %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit.i
  %i.awn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awe, i64 noundef 152) #27, !noalias !817, !inline_history !769
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_113SvaNfaBuilder9buildExprEP11AstNodeExprPNS_14SvaStateVertexEb:bb.a
  %i.awp = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31, !noalias !817, !inline_history !769 ; 8 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.awp, i16 121, ptr noundef %i.auv)
          to label %.noexc213.i unwind label %bb.mg, !noalias !817, !inline_history !769

.noexc213.i:                                      ; preds = %bb.ly
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.awp, align 8, !tbaa !79, !noalias !817
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.awq, ptr noundef nonnull align 8 dereferenceable(208) %i.awp, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc214.i861 unwind label %bb.mg, !noalias !817, !inline_history !769

.noexc214.i861:                                   ; preds = %.noexc213.i
  %i.awr = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.awp, i8 1)
          to label %.noexc.i211.i unwind label %bb.ma, !noalias !817, !inline_history !769 ; 2 uses

.noexc.i211.i:                                    ; preds = %.noexc214.i861
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awp, i64 72 ; 2 uses
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i212.i = icmp eq ptr %i.awt, %i.awr
  br i1 %.not.i.i.i212.i, label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit217.i, label %bb.lz

bb.lz:                                            ; preds = %.noexc.i211.i
  store ptr %i.awr, ptr %i.aws, align 8, !tbaa !259, !noalias !817
  %i.awu = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.awv = add i64 %i.awu, 1
  store i64 %i.awv, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit217.i

bb.ma:                                            ; preds = %.noexc214.i861
  %i.aww = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.awq) #26, !noalias !817, !inline_history !769
  br label %.body215.i

_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit217.i: ; preds = %bb.lz, %.noexc.i211.i
  %i.awx = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31, !noalias !817, !inline_history !769 ; 7 uses
  %i.awy = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31
          to label %bb.mb unwind label %bb.mh, !noalias !817, !inline_history !769 ; 9 uses

bb.mb:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit217.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.awy, i16 121, ptr noundef %i.auv)
          to label %.noexc220.i unwind label %bb.mi, !noalias !817, !inline_history !769

.noexc220.i:                                      ; preds = %bb.mb
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.awy, align 8, !tbaa !79, !noalias !817
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.awz, ptr noundef nonnull align 8 dereferenceable(208) %i.awy, i32 noundef 32, i32 noundef %i.avg, i1 noundef zeroext true)
          to label %.noexc221.i862 unwind label %bb.mi, !noalias !817, !inline_history !769

.noexc221.i862:                                   ; preds = %.noexc220.i
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awy, i64 184
  %i.axb = load i32, ptr %i.axa, align 8, !tbaa !398, !noalias !817
  %i.axc = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.awy, i32 noundef %i.axb, i32 noundef 0, i8 0)
          to label %.noexc.i218.i unwind label %bb.md, !noalias !817, !inline_history !769 ; 2 uses

.noexc.i218.i:                                    ; preds = %.noexc221.i862
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awy, i64 72 ; 2 uses
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i219.i = icmp eq ptr %i.axe, %i.axc
  br i1 %.not.i.i.i219.i, label %_ZN8AstConstC2EP8FileLinej.exit224.i, label %bb.mc

bb.mc:                                            ; preds = %.noexc.i218.i
  store ptr %i.axc, ptr %i.axd, align 8, !tbaa !259, !noalias !817
  %i.axf = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.axg = add i64 %i.axf, 1
  store i64 %i.axg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN8AstConstC2EP8FileLinej.exit224.i

bb.md:                                            ; preds = %.noexc221.i862
  %i.axh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.awz) #26, !noalias !817, !inline_history !769
  br label %.body222.i

_ZN8AstConstC2EP8FileLinej.exit224.i:             ; preds = %bb.mc, %.noexc.i218.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.awx, i16 419, ptr noundef %i.auv)
          to label %.noexc225.i unwind label %bb.mh, !noalias !817, !inline_history !769

.noexc225.i:                                      ; preds = %_ZN8AstConstC2EP8FileLinej.exit224.i
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV8AstDelay, i64 16), ptr %i.awx, align 8, !tbaa !79, !noalias !817
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awx, i64 152
  store i8 18, ptr %i.axi, align 8, !tbaa !409, !noalias !817
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awx, i64 153
  store i8 1, ptr %i.axj, align 1, !tbaa !380, !noalias !817
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.awx, ptr noundef nonnull %i.awy)
          to label %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit227.i unwind label %bb.mh, !noalias !817, !inline_history !769

_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit227.i: ; preds = %.noexc225.i
  %i.axk = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #31, !noalias !817, !inline_history !769 ; 10 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.axk, i16 172, ptr noundef %i.auv)
          to label %.noexc229.i863 unwind label %bb.mk, !noalias !817, !inline_history !769

.noexc229.i863:                                   ; preds = %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit227.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstSExpr, i64 16), ptr %i.axk, align 8, !tbaa !79, !noalias !817
  %.not.i.i.i228.i = icmp eq ptr %.0.i, null
  br i1 %.not.i.i.i228.i, label %_ZN8AstSExpr8preExprpEP11AstNodeExpr.exit.i.i, label %bb.me

bb.me:                                            ; preds = %.noexc229.i863
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.axk, ptr noundef nonnull %.0.i)
          to label %_ZN8AstSExpr8preExprpEP11AstNodeExpr.exit.i.i unwind label %bb.mk, !noalias !817, !inline_history !769

_ZN8AstSExpr8preExprpEP11AstNodeExpr.exit.i.i:    ; preds = %bb.me, %.noexc229.i863
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.axk, ptr noundef nonnull %i.awx)
          to label %.noexc231.i unwind label %bb.mk, !noalias !817, !inline_history !769

.noexc231.i:                                      ; preds = %_ZN8AstSExpr8preExprpEP11AstNodeExpr.exit.i.i
  invoke void @_ZN7AstNode7setOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.axk, ptr noundef nonnull %i.awp)
          to label %_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit233.i unwind label %bb.mk, !noalias !817, !inline_history !769

_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit233.i: ; preds = %.noexc231.i
  %i.axl = tail call noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.axk, i8 1), !noalias !817, !inline_history !769 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axk, i64 72 ; 2 uses
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !259, !noalias !817
  %.not.i.i234.i = icmp eq ptr %i.axn, %i.axl
  br i1 %.not.i.i234.i, label %_ZN7AstNode11dtypeSetBitEv.exit235.i, label %bb.mf

bb.mf:                                            ; preds = %_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit233.i
  store ptr %i.axl, ptr %i.axm, align 8, !tbaa !259, !noalias !817
  %i.axo = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.axp = add i64 %i.axo, 1
  store i64 %i.axp, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN7AstNode11dtypeSetBitEv.exit235.i

bb.mg:                                            ; preds = %.noexc213.i, %bb.ly
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %.body215.i

.body215.i:                                       ; preds = %bb.mg, %bb.ma
  %eh.lpad-body216.i = phi { ptr, i32 } [ %i.axq, %bb.mg ], [ %i.aww, %bb.ma ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awp, i64 noundef 208) #27, !noalias !817, !inline_history !769
  br label %common.resume943

bb.mh:                                            ; preds = %.noexc225.i, %_ZN8AstConstC2EP8FileLinej.exit224.i, %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit217.i
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %bb.mj

bb.mi:                                            ; preds = %.noexc220.i, %bb.mb
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %.body222.i

.body222.i:                                       ; preds = %bb.mi, %bb.md
  %eh.lpad-body223.i = phi { ptr, i32 } [ %i.axs, %bb.mi ], [ %i.axh, %bb.md ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awy, i64 noundef 208) #27, !noalias !817, !inline_history !769
  br label %bb.mj

bb.mj:                                            ; preds = %.body222.i, %bb.mh
  %.pn101.i = phi { ptr, i32 } [ %i.axr, %bb.mh ], [ %eh.lpad-body223.i, %.body222.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awx, i64 noundef 160) #27, !noalias !817, !inline_history !769
  br label %common.resume943

bb.mk:                                            ; preds = %.noexc231.i, %_ZN8AstSExpr8preExprpEP11AstNodeExpr.exit.i.i, %bb.me, %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit227.i
  %i.axt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.axk, i64 noundef 152) #27, !noalias !817, !inline_history !769
  br label %common.resume943

_ZN7AstNode11dtypeSetBitEv.exit235.i:             ; preds = %bb.mf, %_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit233.i, %_ZN7AstNode11dtypeSetBitEv.exit.i
  %.1.i = phi ptr [ %.0.i, %_ZN7AstNode11dtypeSetBitEv.exit.i ], [ %i.axk, %_ZN8AstSExprC2EP8FileLineP11AstNodeExprP11AstNodeStmtS3_.exit233.i ], [ %i.axk, %bb.mf ] ; 2 uses
  %.not106.i847 = icmp eq ptr %.067323.i, null
  br i1 %.not106.i847, label %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i, label %bb.ml

bb.ml:                                            ; preds = %_ZN7AstNode11dtypeSetBitEv.exit235.i
  %i.axu = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31, !noalias !817, !inline_history !769 ; 11 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.axu, i16 243, ptr noundef %i.auv)
          to label %.noexc238.i unwind label %bb.mn, !noalias !817, !inline_history !769

.noexc238.i:                                      ; preds = %bb.ml
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.axu, align 8, !tbaa !79, !noalias !817
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 152
  store i64 0, ptr %i.axv, align 8, !noalias !817
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.axu, ptr noundef nonnull %.067323.i)
          to label %.noexc239.i unwind label %bb.mn, !noalias !817, !inline_history !769

.noexc239.i:                                      ; preds = %.noexc238.i
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.axu, ptr noundef %.1.i)
          to label %.noexc240.i unwind label %bb.mn, !noalias !817, !inline_history !769

.noexc240.i:                                      ; preds = %.noexc239.i
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSOr, i64 16), ptr %i.axu, align 8, !tbaa !79, !noalias !817
  %i.axw = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.axu, i8 1)
          to label %.noexc241.i848 unwind label %bb.mn, !noalias !817, !inline_history !769 ; 2 uses

.noexc241.i848:                                   ; preds = %.noexc240.i
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axu, i64 72 ; 2 uses
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i237.i849 = icmp eq ptr %i.axy, %i.axw
  br i1 %.not.i.i.i237.i849, label %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i, label %bb.mm

bb.mm:                                            ; preds = %.noexc241.i848
  store ptr %i.axw, ptr %i.axx, align 8, !tbaa !259, !noalias !817
  %i.axz = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.aya = add i64 %i.axz, 1
  store i64 %i.aya, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i

_ZN6AstSOrC2EP8FileLineP11AstNodeExprS3_.exit.i:  ; preds = %bb.mm, %.noexc241.i848, %_ZN7AstNode11dtypeSetBitEv.exit235.i
  %i.ayb = phi ptr [ %.1.i, %_ZN7AstNode11dtypeSetBitEv.exit235.i ], [ %i.axu, %.noexc241.i848 ], [ %i.axu, %bb.mm ] ; 2 uses
  %i.ayc = add nuw i32 %.066324.i, 1
  %exitcond.not.i850 = icmp eq i32 %.066324.i, %smax.i
  br i1 %exitcond.not.i850, label %bb.lj, label %bb.ll, !llvm.loop !786

bb.mn:                                            ; preds = %.noexc240.i, %.noexc239.i, %.noexc238.i, %bb.ml
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.axu, i64 noundef 160) #27, !noalias !817, !inline_history !769
  br label %common.resume943

_ZN13AstSIntersectC2EP8FileLineP11AstNodeExprS3_.exit.i: ; preds = %bb.lk, %.noexc193.i
  tail call fastcc void @_ZN12_GLOBAL__N_113SvaNfaBuilder9buildExprEP11AstNodeExprPNS_14SvaStateVertexEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.auz, ptr noundef %3, i1 noundef zeroext %4), !inline_history !769
  invoke void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.auz)
          to label %bb.mo unwind label %bb.nd, !noalias !817, !inline_history !769

bb.mo:                                            ; preds = %_ZN13AstSIntersectC2EP8FileLineP11AstNodeExprS3_.exit.i
  %.val.i854 = load ptr, ptr %0, align 8, !tbaa !205, !alias.scope !817 ; 2 uses
  %i.aye = icmp ne ptr %.val.i854, null
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ayg = load ptr, ptr %i.ayf, align 8, !alias.scope !817 ; 5 uses
  %i.ayh = icmp ne ptr %i.ayg, null
  %or.cond4.i = select i1 %i.aye, i1 %i.ayh, i1 false
  br i1 %or.cond4.i, label %bb.mp, label %common.ret2252

bb.mp:                                            ; preds = %bb.mo
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !213, !noalias !817
  %.not91.i = icmp eq ptr %i.ayj, null
  br i1 %.not91.i, label %bb.mq, label %common.ret2252

bb.mq:                                            ; preds = %bb.mp
  %i.ayk = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder18scopedCreateVertexEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.mr unwind label %bb.ne, !noalias !817, !inline_history !769 ; 2 uses

bb.mr:                                            ; preds = %bb.mq
  %i.ayl = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #31
          to label %.noexc244.i unwind label %bb.ne, !noalias !817, !inline_history !769 ; 6 uses

.noexc244.i:                                      ; preds = %bb.mr
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayg, i64 88
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !184, !noalias !817
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayg, i64 72
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !259, !noalias !817 ; 2 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ayl, i16 178, ptr noundef %i.ayn)
          to label %.noexc.i242.i unwind label %bb.mt, !noalias !817, !inline_history !769

.noexc.i242.i:                                    ; preds = %.noexc244.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV10AstSampled, i64 16), ptr %i.ayl, align 8, !tbaa !79, !noalias !817
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ayl, ptr noundef nonnull %i.ayg)
          to label %.noexc5.i.i855 unwind label %bb.mt, !noalias !817, !inline_history !769

.noexc5.i.i855:                                   ; preds = %.noexc.i242.i
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayl, i64 72 ; 2 uses
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !259, !noalias !817
  %.not.i.i.i243.i = icmp eq ptr %i.ayr, %i.ayp
  br i1 %.not.i.i.i243.i, label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i856, label %bb.ms

bb.ms:                                            ; preds = %.noexc5.i.i855
  store ptr %i.ayp, ptr %i.ayq, align 8, !tbaa !259, !noalias !817
  %i.ays = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  %i.ayt = add i64 %i.ays, 1
  store i64 %i.ayt, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !817
  br label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i856

bb.mt:                                            ; preds = %.noexc.i242.i, %.noexc244.i
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ayl, i64 noundef 152) #27, !noalias !817, !inline_history !769
  br label %.body245.i

_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i856: ; preds = %bb.ms, %.noexc5.i.i855
  %i.ayv = load ptr, ptr %1, align 8, !tbaa !290, !noalias !817, !nonnull !77, !align !269
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i857 = load ptr, ptr %i.ayw, align 8, !tbaa !220, !noalias !817
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5.i.i858 = load ptr, ptr %i.ayx, align 8, !tbaa !220, !noalias !817
  %i.ayy = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i.i857, ptr %.val5.i.i858, ptr noundef nonnull %i.ayl, ptr noundef %i.auv)
          to label %.noexc247.i unwind label %bb.ne, !noalias !817, !inline_history !769

.noexc247.i:                                      ; preds = %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i856
  %i.ayz = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc248.i unwind label %bb.ne, !noalias !817, !inline_history !769 ; 9 uses

.noexc248.i:                                      ; preds = %.noexc247.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.ayz, align 8, !tbaa !79, !noalias !817
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aza, i8 0, i64 32, i1 false), !noalias !817
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.ayz, ptr noundef nonnull align 8 dereferenceable(40) %i.ayv, ptr noundef nonnull %.val.i854, ptr noundef nonnull %i.ayk, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.mv unwind label %bb.mu, !noalias !817, !inline_history !769

bb.mu:                                            ; preds = %.noexc248.i
  %i.azb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ayz, i64 noundef 96) #27, !noalias !817, !inline_history !769
  br label %.body245.i

bb.mv:                                            ; preds = %.noexc248.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.ayz, align 8, !tbaa !79, !noalias !817
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 72
  store ptr %i.ayy, ptr %i.azc, align 8, !tbaa !312, !noalias !817
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayz, i64 80
  store i8 0, ptr %i.azd, align 8, !tbaa !313, !noalias !817
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayz, i64 81
  store i8 0, ptr %i.aze, align 1, !tbaa !314, !noalias !817
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ayz, i64 88
  store ptr null, ptr %i.azf, align 8, !tbaa !315, !noalias !817
  %i.azg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.azg, align 8, !tbaa !343, !alias.scope !817 ; 6 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val11.i.i = load ptr, ptr %i.azh, align 8, !tbaa !344, !alias.scope !817 ; 2 uses
  %i.azi = ptrtoint ptr %.val11.i.i to i64        ; 2 uses
  %i.azj = ptrtoint ptr %.val10.i.i to i64        ; 4 uses
  %i.azk = sub i64 %i.azi, %i.azj                 ; 3 uses
  %.not.i.i.i.i.i859 = icmp eq ptr %.val11.i.i, %.val10.i.i
  br i1 %.not.i.i.i.i.i859, label %.noexc252.i, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.azl = icmp ugt i64 %i.azk, 9223372036854775800
  br i1 %i.azl, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !20

.noexc.i.i.i:                                     ; preds = %bb.mw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc251.i unwind label %bb.nf, !noalias !817, !inline_history !769

.noexc251.i:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.mw
  %i.azm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azk) #31
          to label %.noexc252.i unwind label %bb.nf, !noalias !817, !inline_history !769

.noexc252.i:                                      ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.mv
  %.pre-phi.i = phi i64 [ %i.azj, %bb.mv ], [ %i.azi, %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i ]
  %i.azn = phi ptr [ null, %bb.mv ], [ %i.azm, %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 %i.azk
  %i.azp = sub i64 %.pre-phi.i, %i.azj            ; 4 uses
  %i.azq = icmp sgt i64 %i.azp, 8
  br i1 %i.azq, label %bb.mx, label %bb.my, !prof !96

bb.mx:                                            ; preds = %.noexc252.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.azn, ptr align 8 %.val10.i.i, i64 %i.azp, i1 false), !noalias !817
  br label %bb.na

bb.my:                                            ; preds = %.noexc252.i
  %i.azr = icmp eq i64 %i.azp, 8
  br i1 %i.azr, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val10.i.i, align 8, !tbaa !317, !noalias !817
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.azn, align 8, !tbaa !317, !noalias !817
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.my, %bb.mx
  %i.azs = getelementptr inbounds i8, ptr %i.azn, i64 %i.azp
  store ptr %i.ayk, ptr %0, align 8, !alias.scope !817
  store ptr null, ptr %i.ayf, align 8, !alias.scope !817
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !342, !alias.scope !817
  store ptr %i.azn, ptr %i.azg, align 8, !tbaa !343, !alias.scope !817
  store ptr %i.azs, ptr %i.azh, align 8, !tbaa !344, !alias.scope !817
  store ptr %i.azo, ptr %i.azt, align 8, !tbaa !342, !alias.scope !817
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val10.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.azv = ptrtoint ptr %i.azu to i64
  %i.azw = sub i64 %i.azv, %i.azj
  tail call void @_ZdlPvm(ptr noundef nonnull %.val10.i.i, i64 noundef %i.azw) #27, !noalias !817, !inline_history !769
  br label %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i

_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i:        ; preds = %bb.nb, %bb.na
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %i.azx, align 8, !alias.scope !817
  br label %common.ret2252

bb.nc:                                            ; preds = %.noexc192.i852, %.noexc191.i851, %.noexc190.i, %bb.lj
  %i.azy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.auz, i64 noundef 160) #27, !noalias !817, !inline_history !769
  br label %common.resume943

bb.nd:                                            ; preds = %_ZN13AstSIntersectC2EP8FileLineP11AstNodeExprS3_.exit.i
  %i.azz = landingpad { ptr, i32 }
          cleanup
  br label %.body245.i

bb.ne:                                            ; preds = %.noexc247.i, %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit.i856, %bb.mr, %bb.mq
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %.body245.i

bb.nf:                                            ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bab = landingpad { ptr, i32 }
          cleanup
  br label %.body245.i

.body245.i:                                       ; preds = %bb.nf, %bb.ne, %bb.nd, %bb.mu, %bb.mt
  %.pn.pn.i = phi { ptr, i32 } [ %i.azz, %bb.nd ], [ %i.bab, %bb.nf ], [ %i.ayu, %bb.mt ], [ %i.baa, %bb.ne ], [ %i.azb, %bb.mu ] ; 2 uses
  %i.bac = getelementptr i8, ptr %0, i64 16
  %.val116.i = load ptr, ptr %i.bac, align 8, !alias.scope !817 ; 3 uses
  %.not.i.i.i.i254.i = icmp eq ptr %.val116.i, null
  br i1 %.not.i.i.i.i254.i, label %common.resume943, label %bb.ng
end_hunk_2
begin_hunk_3_@_ZL17dumpTreeJsonLevelv:bb.a
bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL17dumpTreeJsonLevelvE7s_level, align 4, !tbaa !30
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13dumpTreeLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL13dumpTreeLevelvE7s_level, align 4, !tbaa !30 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.618, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = call i32 @llvm.umax.i32(i32 %i.c, i32 %i.i) ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !75, !range !76, !noundef !77
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !28
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL13dumpTreeLevelvE7s_level, align 4, !tbaa !30
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

declare noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(32)) #3

declare noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null}
!1 = distinct !{!1, !149}
!2 = distinct !{!2, !149}
!3 = distinct !{!3, !149}
!4 = distinct !{!4, !149}
!5 = distinct !{!5, !149}
!6 = distinct !{!6, !149}
!7 = distinct !{!7, !149}
!8 = distinct !{!8, !149}
!9 = distinct !{!9, !149}
!10 = distinct !{!10, !149}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"any pointer", !16, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !16, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !16, i64 16}
!26 = !{!25, !22, i64 0}
!27 = !{!25, !24, i64 8}
!28 = !{!16, !16, i64 0}
!29 = !{!23, !22, i64 0}
!30 = !{!17, !17, i64 0}
!31 = !{!"p1 _ZTS12V3OptionsImp", !21, i64 0}
!32 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!33 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !32, i64 0}
!34 = !{!"_ZTSSt14_Rb_tree_color", !16, i64 0}
!35 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!36 = !{!"_ZTSSt18_Rb_tree_node_base", !34, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!37 = !{!"_ZTSSt15_Rb_tree_header", !36, i64 0, !24, i64 32}
!38 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !33, i64 0, !37, i64 8}
!39 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !38, i64 0}
!40 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !39, i64 0}
!41 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !44, i64 0}
!46 = !{!"_ZTSSt4lessI12VFileLibNameE"}
!47 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI12VFileLibNameEE", !46, i64 0}
!48 = !{!"_ZTSNSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE13_Rb_tree_implIS4_Lb1EEE", !47, i64 0, !37, i64 8}
!49 = !{!"_ZTSSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE", !48, i64 0}
!50 = !{!"_ZTSSt3setI12VFileLibNameSt4lessIS0_ESaIS0_EE", !49, i64 0}
!51 = !{!"p1 _ZTS12VFileLibName", !21, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseI12VFileLibNameSaIS0_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorI12VFileLibNameSaIS0_EE", !54, i64 0}
!56 = !{!"_ZTSSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!57 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!58 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !57, i64 0, !37, i64 8}
!59 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !58, i64 0}
!60 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS6_ESaISt4pairIS6_jEEE", !59, i64 0}
!61 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !57, i64 0, !37, i64 8}
!62 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !61, i64 0}
!63 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE", !62, i64 0}
!64 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !57, i64 0, !37, i64 8}
!65 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE", !64, i64 0}
!66 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25V3HierarchicalBlockOptionSt4lessIS6_ESaISt4pairIS6_S7_EEE", !65, i64 0}
!67 = !{!"bool", !16, i64 0}
!68 = !{!"_ZTSN11VOptionBool2enE", !16, i64 0}
!69 = !{!"_ZTS11VOptionBool", !68, i64 0}
!70 = !{!"_ZTSN10VTimescale2enE", !16, i64 0}
!71 = !{!"_ZTS10VTimescale", !70, i64 0}
!72 = !{!"_ZTSN10V3LangCode2enE", !16, i64 0}
!73 = !{!"_ZTS10V3LangCode", !72, i64 0}
!74 = !{!"_ZTS9V3Options", !31, i64 0, !40, i64 8, !45, i64 56, !45, i64 80, !45, i64 104, !40, i64 128, !40, i64 176, !40, i64 224, !40, i64 272, !50, i64 320, !55, i64 368, !50, i64 392, !40, i64 440, !45, i64 488, !60, i64 512, !60, i64 560, !63, i64 608, !66, i64 656, !40, i64 704, !67, i64 752, !67, i64 753, !67, i64 754, !67, i64 755, !67, i64 756, !67, i64 757, !67, i64 758, !67, i64 759, !67, i64 760, !67, i64 761, !67, i64 762, !67, i64 763, !67, i64 764, !67, i64 765, !67, i64 766, !67, i64 767, !67, i64 768, !67, i64 769, !67, i64 770, !67, i64 771, !67, i64 772, !67, i64 773, !67, i64 774, !67, i64 775, !67, i64 776, !67, i64 777, !67, i64 778, !67, i64 779, !67, i64 780, !67, i64 781, !67, i64 782, !67, i64 783, !17, i64 784, !67, i64 788, !67, i64 789, !67, i64 790, !67, i64 791, !67, i64 792, !67, i64 793, !67, i64 794, !67, i64 795, !67, i64 796, !67, i64 797, !67, i64 798, !67, i64 799, !67, i64 800, !67, i64 801, !67, i64 802, !67, i64 803, !67, i64 804, !67, i64 805, !67, i64 806, !67, i64 807, !67, i64 808, !67, i64 809, !67, i64 810, !67, i64 811, !67, i64 812, !67, i64 813, !67, i64 814, !67, i64 815, !67, i64 816, !67, i64 817, !67, i64 818, !67, i64 819, !67, i64 820, !67, i64 821, !67, i64 822, !67, i64 823, !67, i64 824, !67, i64 825, !67, i64 826, !67, i64 827, !69, i64 828, !67, i64 829, !67, i64 830, !67, i64 831, !67, i64 832, !67, i64 833, !67, i64 834, !67, i64 835, !67, i64 836, !67, i64 837, !69, i64 838, !67, i64 839, !67, i64 840, !67, i64 841, !67, i64 842, !67, i64 843, !67, i64 844, !67, i64 845, !67, i64 846, !67, i64 847, !67, i64 848, !67, i64 849, !67, i64 850, !67, i64 851, !67, i64 852, !17, i64 856, !17, i64 860, !17, i64 864, !17, i64 868, !17, i64 872, !17, i64 876, !17, i64 880, !17, i64 884, !17, i64 888, !17, i64 892, !17, i64 896, !17, i64 900, !17, i64 904, !17, i64 908, !17, i64 912, !67, i64 916, !67, i64 917, !17, i64 920, !69, i64 924, !17, i64 928, !17, i64 932, !17, i64 936, !17, i64 940, !17, i64 944, !17, i64 948, !17, i64 952, !17, i64 956, !17, i64 960, !17, i64 964, !17, i64 968, !17, i64 972, !69, i64 976, !67, i64 977, !17, i64 980, !17, i64 984, !71, i64 988, !71, i64 989, !71, i64 990, !71, i64 991, !17, i64 992, !17, i64 996, !17, i64 1000, !17, i64 1004, !17, i64 1008, !17, i64 1012, !17, i64 1016, !17, i64 1020, !17, i64 1024, !17, i64 1028, !17, i64 1032, !25, i64 1040, !25, i64 1072, !25, i64 1104, !55, i64 1136, !25, i64 1160, !25, i64 1192, !25, i64 1224, !25, i64 1256, !25, i64 1288, !25, i64 1320, !25, i64 1352, !25, i64 1384, !25, i64 1416, !25, i64 1448, !25, i64 1480, !25, i64 1512, !25, i64 1544, !25, i64 1576, !25, i64 1608, !25, i64 1640, !73, i64 1672, !67, i64 1673, !67, i64 1674, !67, i64 1675, !67, i64 1676, !67, i64 1677, !67, i64 1678, !67, i64 1679, !67, i64 1680, !67, i64 1681, !67, i64 1682, !67, i64 1683, !67, i64 1684, !67, i64 1685, !67, i64 1686, !67, i64 1687, !67, i64 1688, !67, i64 1689, !67, i64 1690, !67, i64 1691, !67, i64 1692, !67, i64 1693, !67, i64 1694, !67, i64 1695, !69, i64 1696, !67, i64 1697, !67, i64 1698, !67, i64 1699, !67, i64 1700, !67, i64 1701, !67, i64 1702, !67, i64 1703, !67, i64 1704, !67, i64 1705, !67, i64 1706, !67, i64 1707, !67, i64 1708, !67, i64 1709, !67, i64 1710, !17, i64 1712, !67, i64 1716, !67, i64 1717, !67, i64 1718, !67, i64 1719, !67, i64 1720, !67, i64 1721, !67, i64 1722}
!75 = !{!74, !67, i64 1722}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!"vtable pointer", !15, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!37, !34, i64 0}
!81 = !{!37, !35, i64 8}
!82 = !{!37, !35, i64 16}
!83 = !{!37, !35, i64 24}
!84 = !{!37, !24, i64 32}
!85 = !{!"any p2 pointer", !21, i64 0}
!86 = !{!"p2 _ZTS7AstNode", !85, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIP7AstNodeSaIS1_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!87, !86, i64 16}
!90 = !{!24, !24, i64 0}
!91 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !33, i64 0, !37, i64 8}
!92 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !91, i64 0}
!93 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE", !92, i64 0}
!94 = !{!"_ZTS13V3UniqueNames", !25, i64 0, !93, i64 32, !67, i64 80}
!95 = !{!94, !67, i64 80}
!96 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!97 = !{!"p1 _ZTS7AstNode", !21, i64 0}
!98 = !{!"_ZTSN6VNType2enE", !16, i64 0}
!99 = !{!"_ZTS6VNType", !98, i64 0}
!100 = !{!"_ZTSN7AstNodeUt_E", !67, i64 0, !67, i64 0, !67, i64 0, !16, i64 0}
!101 = !{!"p1 _ZTS12AstNodeDType", !21, i64 0}
!102 = !{!"p1 _ZTS8FileLine", !21, i64 0}
!103 = !{!"_ZTS6VNUser", !16, i64 0}
!104 = !{!"_ZTS7AstNode", !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !86, i64 56, !99, i64 64, !100, i64 66, !16, i64 67, !17, i64 68, !101, i64 72, !97, i64 80, !102, i64 88, !97, i64 96, !103, i64 104, !17, i64 112, !17, i64 116, !103, i64 120, !103, i64 128, !17, i64 136, !17, i64 140, !103, i64 144}
!105 = !{!"_ZTS14VNVisitorConst"}
!106 = !{!"_ZTSNSt12_Vector_baseIP7AstNodeSaIS1_EE12_Vector_implE", !87, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIP7AstNodeSaIS1_EE", !106, i64 0}
!108 = !{!"_ZTSSt6vectorIP7AstNodeSaIS1_EE", !107, i64 0}
!109 = !{!"_ZTS9VNDeleter", !108, i64 0}
!110 = !{!"_ZTS9VNVisitor", !105, i64 0, !109, i64 8}
!111 = !{!"p1 _ZTS13AstNodeModule", !21, i64 0}
!112 = !{!"p1 _ZTS11AstClocking", !21, i64 0}
!113 = !{!"p1 _ZTS17AstDefaultDisable", !21, i64 0}
!114 = !{!"p1 _ZTSN12_GLOBAL__N_114SvaNfaLoweringE", !21, i64 0}
!115 = !{!"_ZTSSt4lessIPK11AstPropertyE"}
!116 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPK11AstPropertyEE", !115, i64 0}
!117 = !{!"_ZTSNSt8_Rb_treeIPK11AstPropertyS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !116, i64 0, !37, i64 8}
!118 = !{!"_ZTSSt8_Rb_treeIPK11AstPropertyS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !117, i64 0}
!119 = !{!"_ZTSSt3setIPK11AstPropertySt4lessIS2_ESaIS2_EE", !118, i64 0}
!120 = !{!"_ZTS16AssertNfaVisitor", !110, i64 0, !111, i64 32, !112, i64 40, !113, i64 48, !114, i64 56, !94, i64 64, !94, i64 152, !94, i64 240, !119, i64 328}
!121 = !{!120, !112, i64 40}
!122 = !{!113, !113, i64 0}
!123 = !{!120, !113, i64 48}
!124 = !{!120, !111, i64 32}
!125 = !{!"_ZTSN9VLifetime2enE", !16, i64 0}
!126 = !{!"_ZTS9VLifetime", !125, i64 0}
!127 = !{!"_ZTSN12_GLOBAL__N_114SvaNfaLoweringE", !111, i64 0, !94, i64 8}
!128 = !{!127, !111, i64 0}
!129 = !{!120, !114, i64 56}
!130 = !{!"branch_weights", i32 1, i32 1048575}
!131 = !{!"_ZTSN11V3ErrorCode2enE", !16, i64 0}
!132 = !{!"_ZTS11V3ErrorCode", !131, i64 0}
!133 = !{!"any p3 pointer", !85, i64 0}
!134 = !{!"p3 _ZTS8FileLine", !133, i64 0}
!135 = !{!"p2 _ZTS8FileLine", !85, i64 0}
!136 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !135, i64 0, !135, i64 8, !135, i64 16, !134, i64 24}
!137 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !134, i64 0, !24, i64 8, !136, i64 16, !136, i64 48}
!138 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !137, i64 0}
!139 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !138, i64 0}
!140 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !139, i64 0}
!141 = !{!"_ZTS13VErrorMessage", !132, i64 0, !25, i64 8, !102, i64 40, !140, i64 48}
!142 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!143 = !{!"_ZTSSt6locale", !142, i64 0}
!144 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !143, i64 56}
!145 = !{!137, !134, i64 0}
!146 = !{!137, !134, i64 40}
!147 = !{!137, !134, i64 72}
!148 = !{!135, !135, i64 0}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!137, !24, i64 8}
!151 = !{!136, !134, i64 24}
!152 = !{!36, !35, i64 24}
!153 = !{!36, !35, i64 16}
!154 = !{!"_ZTS11AstNodeStmt", !104, i64 0}
!155 = !{!"_ZTSN11VAssertType2enE", !16, i64 0}
!156 = !{!"_ZTS11VAssertType", !155, i64 0}
!157 = !{!"_ZTSN20VAssertDirectiveType2enE", !16, i64 0}
!158 = !{!"_ZTS20VAssertDirectiveType", !157, i64 0}
!159 = !{!104, !97, i64 24}
!160 = !{!98, !98, i64 0}
end_hunk_3
