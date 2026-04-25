inline.NumInlined: 11089
inline.NumDeleted: 4035
begin_hunk_0_@_ZN8facebook5velox4exec20MutableRemainingRowsD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.facebook::velox::exec::Expr::InputForSharedResults", align 8 ; 18 uses
  %6 = alloca %"struct.std::pair.1061", align 8   ; 13 uses
  %7 = alloca %"struct.facebook::velox::exec::Expr::SharedResults", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %9 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.cq = load ptr, ptr %5, align 8, !tbaa !433   ; 5 uses
  store ptr %i.cq, ptr %6, align 8, !tbaa !433
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %13 = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !416
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !435 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 24, i1 false)
  %14 = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !428
  %15 = shufflevector <2 x ptr> %13, <2 x ptr> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %15, ptr %i.cr, align 8, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !436
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.cy, align 8, !tbaa !201
  store ptr null, ptr %7, align 8, !tbaa !201
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i79, %bb.u
  %.sroa.010.019.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.u ], [ %i.df, %.lr.ph.i.i.i.i79 ] ; 2 uses
  %.sroa.05.018.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %bb.u ], [ %i.cq, %.lr.ph.i.i.i.i79 ] ; 3 uses
  %i.dj = icmp eq ptr %.sroa.05.018.i.i.i.i.i.i.i.i, %i.cu
  br i1 %i.dj, label %_ZNKSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEclERKS4_S7_.exit.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.u, %.lr.ph.i.i.i.i79
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i79 ], [ %i.do, %bb.u ]
  %.not11.i.i.i.i = icmp eq ptr %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i, %i.cu
  br i1 %.not11.i.i.i.i, label %_ZNKSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEclERKS4_S7_.exit.thread.i.i.i.i, label %bb.v

_ZNKSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEclERKS4_S7_.exit.i.i.i.i: ; preds = %bb.t
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !416 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !416 ; 2 uses
  %i.dx = icmp eq ptr %i.cq, %i.cu
  br i1 %i.dx, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %bb.y
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i.i.i.i.i, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.05.018.i.i.i.i.i, i64 8 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.cu
  br i1 %i.ee, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !419

._crit_edge.i.i.i.i.i:                            ; preds = %bb.y, %bb.w
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.em = load ptr, ptr %.pre, align 8, !tbaa !78
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #32, !inline_history !438
  %i.ep = load ptr, ptr %.pre, align 8, !tbaa !78
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #32, !inline_history !438
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ab:                                            ; preds = %bb.z
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

bb.aj:                                            ; preds = %_ZNK8facebook5velox4exec4Expr21InputForSharedResults9isExpiredEv.exit.thread112
  invoke void @_ZN8facebook5velox4exec4Expr19evalFlatNoNullsImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4)
          to label %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEE3$_0EEvS6_S8_SC_T_.exit" unwind label %bb.ah, !inline_history !439

"_ZZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEENK3$_0clES5_S7_SB_.exit71": ; preds = %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i78, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

bb.ak:                                            ; preds = %_ZNK8facebook5velox4exec4Expr21InputForSharedResults9isExpiredEv.exit
  invoke void @_ZN8facebook5velox4exec4Expr19evalFlatNoNullsImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4)
          to label %"_ZZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEENK3$_0clES5_S7_SB_.exit68" unwind label %bb.ar, !inline_history !439

"_ZZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEENK3$_0clES5_S7_SB_.exit68": ; preds = %bb.ak
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !201 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !78
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #32, !inline_history !440
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #32, !inline_history !440
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.be:                                            ; preds = %bb.bc
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.hu = load ptr, ptr %2, align 8, !tbaa !241   ; 4 uses
  store ptr %i.hu, ptr %9, align 8, !tbaa !274
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !284, !range !53, !noalias !441, !noundef !57
  %i.hy = trunc nuw i8 %i.hx to i1
  %.phi.trans.insert.i.i47 = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %.pre.i.i48 = load ptr, ptr %.phi.trans.insert.i.i47, align 8, !tbaa !444, !noalias !441
  %.phi.trans.insert2.i.i49 = getelementptr inbounds nuw i8, ptr %i.hu, i64 64 ; 2 uses
  %.pre3.i.i50 = load ptr, ptr %.phi.trans.insert2.i.i49, align 8, !tbaa !444, !noalias !441 ; 2 uses
  %i.hz = icmp eq ptr %.pre.i.i48, %.pre3.i.i50   ; 2 uses
  br i1 %i.hy, label %.critedge.i.i55, label %bb.bm

end_hunk_10
begin_hunk_11_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

.noexc58:                                         ; preds = %.critedge.thread.i.i51
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 37
  store i8 0, ptr %i.ib, align 1, !tbaa !329, !noalias !445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ia, i8 0, i64 36, i1 false), !noalias !445
  %i.ic = ptrtoint ptr %i.ia to i64
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i52

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i56: ; preds = %.critedge.i.i55
  %i.id = getelementptr inbounds i8, ptr %.pre3.i.i50, i64 -8 ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !201, !noalias !441
  store ptr null, ptr %i.id, align 8, !tbaa !201, !noalias !441
  store ptr %i.id, ptr %.phi.trans.insert2.i.i49, align 8, !tbaa !285, !noalias !441
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i52

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i52: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i56, %.noexc58
  %.sink.i.i53 = phi i64 [ %i.ic, %.noexc58 ], [ %i.ie, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i56 ] ; 2 uses
  store i64 %.sink.i.i53, ptr %i.hv, align 8, !tbaa !201, !alias.scope !441
  %.cast.i54 = inttoptr i64 %.sink.i.i53 to ptr   ; 3 uses
  %i.if = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %.cast.i54, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.bp unwind label %bb.bo     ; 0 uses
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.ip = load ptr, ptr %2, align 8, !tbaa !241   ; 4 uses
  store ptr %i.ip, ptr %10, align 8, !tbaa !274
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !284, !range !53, !noalias !448, !noundef !57
  %i.it = trunc nuw i8 %i.is to i1
  %.phi.trans.insert.i.i32 = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %.pre.i.i33 = load ptr, ptr %.phi.trans.insert.i.i32, align 8, !tbaa !444, !noalias !448
  %.phi.trans.insert2.i.i34 = getelementptr inbounds nuw i8, ptr %i.ip, i64 64 ; 2 uses
  %.pre3.i.i35 = load ptr, ptr %.phi.trans.insert2.i.i34, align 8, !tbaa !444, !noalias !448 ; 2 uses
  %i.iu = icmp eq ptr %.pre.i.i33, %.pre3.i.i35   ; 2 uses
  br i1 %i.it, label %.critedge.i.i40, label %bb.br

end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

.noexc43:                                         ; preds = %.critedge.thread.i.i36
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 37
  store i8 0, ptr %i.iw, align 1, !tbaa !329, !noalias !451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.iv, i8 0, i64 36, i1 false), !noalias !451
  %i.ix = ptrtoint ptr %i.iv to i64
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i37

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i41: ; preds = %.critedge.i.i40
  %i.iy = getelementptr inbounds i8, ptr %.pre3.i.i35, i64 -8 ; 3 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !201, !noalias !448
  store ptr null, ptr %i.iy, align 8, !tbaa !201, !noalias !448
  store ptr %i.iy, ptr %.phi.trans.insert2.i.i34, align 8, !tbaa !285, !noalias !448
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i37

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i37: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i41, %.noexc43
  %.sink.i.i38 = phi i64 [ %i.ix, %.noexc43 ], [ %i.iz, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i41 ] ; 2 uses
  store i64 %.sink.i.i38, ptr %i.iq, align 8, !tbaa !201, !alias.scope !448
  %.cast.i39 = inttoptr i64 %.sink.i.i38 to ptr   ; 3 uses
  %i.ja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %.cast.i39, ptr noundef nonnull align 8 dereferenceable(38) %i.io)
          to label %bb.bu unwind label %bb.bt     ; 0 uses
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

bb.bv:                                            ; preds = %bb.bu
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 75
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !454, !range !53, !noundef !57
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !455
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.jh, ptr noundef nonnull align 8 dereferenceable(38) %i.jm)
          to label %bb.cb unwind label %bb.ca, !inline_history !427

end_hunk_14
begin_hunk_15_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN8facebook5velox4exec4Expr19evalFlatNoNullsImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %i.im, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef %4)
          to label %"_ZZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEENK3$_0clES5_S7_SB_.exit" unwind label %bb.ct, !inline_history !439

"_ZZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEENK3$_0clES5_S7_SB_.exit": ; preds = %bb.cc
  invoke void @_ZNK8facebook5velox4exec7EvalCtx14deselectErrorsERNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %i.im)
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.ju = load ptr, ptr %2, align 8, !tbaa !241   ; 4 uses
  store ptr %i.ju, ptr %12, align 8, !tbaa !274
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !284, !range !53, !noalias !456, !noundef !57
  %i.jy = trunc nuw i8 %i.jx to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !444, !noalias !456
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 64 ; 2 uses
  %.pre3.i.i = load ptr, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !444, !noalias !456 ; 2 uses
  %i.jz = icmp eq ptr %.pre.i.i, %.pre3.i.i       ; 2 uses
  br i1 %i.jy, label %.critedge.i.i, label %bb.cg

end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

.noexc30:                                         ; preds = %.critedge.thread.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 37
  store i8 0, ptr %i.kb, align 1, !tbaa !329, !noalias !459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ka, i8 0, i64 36, i1 false), !noalias !459
  %i.kc = ptrtoint ptr %i.ka to i64
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i: ; preds = %.critedge.i.i
  %i.kd = getelementptr inbounds i8, ptr %.pre3.i.i, i64 -8 ; 3 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !201, !noalias !456
  store ptr null, ptr %i.kd, align 8, !tbaa !201, !noalias !456
  store ptr %i.kd, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !285, !noalias !456
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i, %.noexc30
  %.sink.i.i = phi i64 [ %i.kc, %.noexc30 ], [ %i.ke, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.jv, align 8, !tbaa !201, !alias.scope !456
  %.cast.i = inttoptr i64 %.sink.i.i to ptr       ; 3 uses
  %i.kf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %.cast.i, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.cj unwind label %bb.ci     ; 0 uses
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEE3$_0EEvS6_S8_SC_T_.exit": ; preds = %bb.aj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.ax, %bb.aw, %bb.bk, %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !462 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !463 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.my, %i.na
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_18
begin_hunk_19_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !78
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #32, !inline_history !464
  br label %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i: ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nm, %i.na
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !465

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.mx, align 8, !tbaa !462
  br label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetEE3$_0EEvS6_S8_SC_T_.exit"
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

bb.dt:                                            ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !436
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.nn to i64
  %i.ns = sub i64 %i.nq, %i.nr
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4exec4Expr15evalFlatNoNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE:bb.a

bb.du:                                            ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i
  %i.nu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !466
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nt to i64
  %i.ny = sub i64 %i.nw, %i.nx
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox4exec7EvalCtx17ensureFieldLoadedEiRKNS0_17SelectivityVectorE
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::Expr::InputForSharedResults", align 8 ; 18 uses
  %5 = alloca %"struct.std::pair.1061", align 8   ; 13 uses
  %6 = alloca %"struct.facebook::velox::exec::Expr::SharedResults", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %8 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 7 uses
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.cy = load ptr, ptr %4, align 8, !tbaa !433   ; 5 uses
  store ptr %i.cy, ptr %5, align 8, !tbaa !433
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %12 = load <2 x ptr>, ptr %i.da, align 8, !tbaa !416
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !435 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 24, i1 false)
  %13 = load <2 x ptr>, ptr %i.db, align 8, !tbaa !428
  %14 = shufflevector <2 x ptr> %12, <2 x ptr> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %14, ptr %i.cz, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !436
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.dg, align 8, !tbaa !201
  store ptr null, ptr %6, align 8, !tbaa !201
end_hunk_23
begin_hunk_24_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i82, %bb.w
  %.sroa.010.019.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.w ], [ %i.dn, %.lr.ph.i.i.i.i82 ] ; 2 uses
  %.sroa.05.018.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.w ], [ %i.cy, %.lr.ph.i.i.i.i82 ] ; 3 uses
  %i.dr = icmp eq ptr %.sroa.05.018.i.i.i.i.i.i.i.i, %i.dc
  br i1 %i.dr, label %_ZNKSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEclERKS4_S7_.exit.thread.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
end_hunk_24
begin_hunk_25_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.w, %.lr.ph.i.i.i.i82
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i82 ], [ %i.dw, %bb.w ]
  %.not11.i.i.i.i = icmp eq ptr %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i, %i.dc
  br i1 %.not11.i.i.i.i, label %_ZNKSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEclERKS4_S7_.exit.thread.i.i.i.i, label %bb.x

_ZNKSt4lessIN8facebook5velox4exec4Expr21InputForSharedResultsEEclERKS4_S7_.exit.i.i.i.i: ; preds = %bb.v
end_hunk_25
begin_hunk_26_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !416 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !416 ; 2 uses
  %i.ef = icmp eq ptr %i.cy, %i.dc
  br i1 %i.ef, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %bb.aa
end_hunk_26
begin_hunk_27_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.010.019.i.i.i.i.i, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.05.018.i.i.i.i.i, i64 8 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.dc
  br i1 %i.em, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !419

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %bb.y
end_hunk_27
begin_hunk_28_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !284, !range !53, !noalias !576, !noundef !57
  %i.if = trunc nuw i8 %i.ie to i1
  %.phi.trans.insert.i.i50 = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %.pre.i.i51 = load ptr, ptr %.phi.trans.insert.i.i50, align 8, !tbaa !444, !noalias !576
  %.phi.trans.insert2.i.i52 = getelementptr inbounds nuw i8, ptr %i.ib, i64 64 ; 2 uses
  %.pre3.i.i53 = load ptr, ptr %.phi.trans.insert2.i.i52, align 8, !tbaa !444, !noalias !576 ; 2 uses
  %i.ig = icmp eq ptr %.pre.i.i51, %.pre3.i.i53   ; 2 uses
  br i1 %i.if, label %.critedge.i.i58, label %bb.bo

end_hunk_28
begin_hunk_29_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !284, !range !53, !noalias !582, !noundef !57
  %i.ja = trunc nuw i8 %i.iz to i1
  %.phi.trans.insert.i.i35 = getelementptr inbounds nuw i8, ptr %i.iw, i64 56
  %.pre.i.i36 = load ptr, ptr %.phi.trans.insert.i.i35, align 8, !tbaa !444, !noalias !582
  %.phi.trans.insert2.i.i37 = getelementptr inbounds nuw i8, ptr %i.iw, i64 64 ; 2 uses
  %.pre3.i.i38 = load ptr, ptr %.phi.trans.insert2.i.i37, align 8, !tbaa !444, !noalias !582 ; 2 uses
  %i.jb = icmp eq ptr %.pre.i.i36, %.pre3.i.i38   ; 2 uses
  br i1 %i.ja, label %.critedge.i.i43, label %bb.bt

end_hunk_29
begin_hunk_30_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 75
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !454, !range !53, !noundef !57
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !455
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.jo, ptr noundef nonnull align 8 dereferenceable(38) %i.jt)
          to label %bb.cd unwind label %bb.cc, !inline_history !572

end_hunk_30
begin_hunk_31_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !284, !range !53, !noalias !588, !noundef !57
  %i.kf = trunc nuw i8 %i.ke to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !444, !noalias !588
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 64 ; 2 uses
  %.pre3.i.i = load ptr, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !444, !noalias !588 ; 2 uses
  %i.kg = icmp eq ptr %.pre.i.i, %.pre3.i.i       ; 2 uses
  br i1 %i.kf, label %.critedge.i.i, label %bb.ci

end_hunk_31
begin_hunk_32_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit": ; preds = %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.az, %bb.ay, %bb.bm, %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !462 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !463 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.nf, %i.nh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_32
begin_hunk_33_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nt, %i.nh
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !465

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ne, align 8, !tbaa !462
  br label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit"
end_hunk_33
begin_hunk_34_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

bb.dv:                                            ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !436
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %i.nu to i64
  %i.nz = sub i64 %i.nx, %i.ny
end_hunk_34
begin_hunk_35_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

bb.dw:                                            ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !466
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
end_hunk_35
begin_hunk_36_@_ZN8facebook5velox4exec22LocalSelectivityVector3getEib:bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !284, !range !53, !noalias !616, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !444, !noalias !616
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.pre3.i = load ptr, ptr %.phi.trans.insert2.i, align 8, !tbaa !444, !noalias !616 ; 2 uses
  %i.g = icmp eq ptr %.pre.i, %.pre3.i            ; 2 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

end_hunk_36
begin_hunk_37_@_ZN8facebook5velox4exec4Expr13peelEncodingsERNS1_7EvalCtxERNS1_12ContextSaverERKNS0_17SelectivityVectorERNS1_18LocalDecodedVectorERNS1_22LocalSelectivityVectorESD_:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 75 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !454, !range !53, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
end_hunk_37
begin_hunk_38_@_ZN8facebook5velox4exec4Expr13peelEncodingsERNS1_7EvalCtxERNS1_12ContextSaverERKNS0_17SelectivityVectorERNS1_18LocalDecodedVectorERNS1_22LocalSelectivityVectorESD_:bb.a
  br label %bb.cu

bb.az:                                            ; preds = %bb.aw
  %i.dw = load i8, ptr %i.c, align 1, !tbaa !454, !range !53, !noundef !57
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !455
  %i.dz = invoke noundef ptr @_ZNK8facebook5velox4exec14PeeledEncoding20translateToInnerRowsERKNS0_17SelectivityVectorERNS1_22LocalSelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(38) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %._crit_edge120 unwind label %bb.bb

end_hunk_38
begin_hunk_39_@_ZNK8facebook5velox4exec7EvalCtx16moveOrCopyResultERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorERS5_:bb.a

_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !455
  %i.h = tail call noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVectoreqERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.g, ptr noundef nonnull align 8 dereferenceable(38) %2)
  br i1 %i.h, label %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit.thread, label %bb.b

end_hunk_39
begin_hunk_40_@_ZN8facebook5velox4exec22LocalSelectivityVector3getERKNS0_17SelectivityVectorE:bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !284, !range !53, !noalias !642, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !444, !noalias !642
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.pre3.i = load ptr, ptr %.phi.trans.insert2.i, align 8, !tbaa !444, !noalias !642 ; 2 uses
  %i.g = icmp eq ptr %.pre.i, %.pre3.i            ; 2 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

end_hunk_40
begin_hunk_41_@_ZN8facebook5velox4exec4Expr12evalWithMemoERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !284, !range !53, !noalias !661, !noundef !57
  %i.fg = trunc nuw i8 %i.ff to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !444, !noalias !661
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 64 ; 2 uses
  %.pre3.i.i = load ptr, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !444, !noalias !661 ; 2 uses
  %i.fh = icmp eq ptr %.pre.i.i, %.pre3.i.i       ; 2 uses
  br i1 %i.fg, label %.critedge.i.i, label %bb.bc

end_hunk_41
begin_hunk_42_@_ZN8facebook5velox4exec4Expr12evalWithMemoERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !284, !range !53, !noalias !667, !noundef !57
  %i.hm = trunc nuw i8 %i.hl to i1
  %.phi.trans.insert.i.i105 = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %.pre.i.i106 = load ptr, ptr %.phi.trans.insert.i.i105, align 8, !tbaa !444, !noalias !667
  %.phi.trans.insert2.i.i107 = getelementptr inbounds nuw i8, ptr %i.hi, i64 64 ; 2 uses
  %.pre3.i.i108 = load ptr, ptr %.phi.trans.insert2.i.i107, align 8, !tbaa !444, !noalias !667 ; 2 uses
  %i.hn = icmp eq ptr %.pre.i.i106, %.pre3.i.i108 ; 2 uses
  br i1 %i.hm, label %.critedge.i.i113, label %bb.bs

end_hunk_42
begin_hunk_43_@_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEi:bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !284, !range !53, !noundef !57
  %i.d = trunc nuw i8 %i.c to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !444
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre5 = load ptr, ptr %.phi.trans.insert4, align 8, !tbaa !444 ; 2 uses
  %i.e = icmp eq ptr %.pre, %.pre5                ; 2 uses
  br i1 %i.d, label %.critedge, label %bb.b

end_hunk_43
begin_hunk_44_@_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a

_ZN8facebook5velox4exec4Expr13SharedResultsD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !462 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !463 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_44
begin_hunk_45_@_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a
_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ao, %i.ac
  br i1 %.not.i.i.i.i1, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !465

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.z, align 8, !tbaa !462
  br label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook5velox4exec4Expr13SharedResultsD2Ev.exit
end_hunk_45
begin_hunk_46_@_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !436
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
end_hunk_46
begin_hunk_47_@_ZNSt4pairIKN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a

bb.o:                                             ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !466
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
end_hunk_47
begin_hunk_48_@_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev
define linkonce_odr void @_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !463  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_48
begin_hunk_49_@_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev:bb.a
_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !465

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !462
  br label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
end_hunk_49
begin_hunk_50_@_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev:bb.a

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !436
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
end_hunk_50
begin_hunk_51_@_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev:bb.a

bb.g:                                             ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !466
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
end_hunk_51
begin_hunk_52_@_ZN8facebook5velox4exec4Expr21InputForSharedResults8addInputERKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !435  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !466
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

end_hunk_52
begin_hunk_53_@_ZN8facebook5velox4exec4Expr21InputForSharedResults8addInputERKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  store ptr %i.r, ptr %0, align 8, !tbaa !433
  store ptr %i.u, ptr %i.b, align 8, !tbaa !435
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !466
  br label %_ZNSt6vectorIPKN8facebook5velox10BaseVectorESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN8facebook5velox10BaseVectorESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKN8facebook5velox10BaseVectorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
end_hunk_53
begin_hunk_54_@_ZN8facebook5velox4exec4Expr21InputForSharedResults8addInputERKSt10shared_ptrINS0_10BaseVectorEE:bb.a

_ZNSt8weak_ptrIN8facebook5velox10BaseVectorEEC2IS2_vEERKSt10shared_ptrIT_E.exit: ; preds = %_ZNSt6vectorIPKN8facebook5velox10BaseVectorESaIS4_EE9push_backEOS4_.exit, %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !463 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !436
  %.not.i.i5 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i5, label %bb.j, label %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE9push_backEOS4_.exit.thread

end_hunk_54
begin_hunk_55_@_ZN8facebook5velox4exec4Expr21InputForSharedResults8addInputERKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.ak = load <2 x ptr>, ptr %2, align 16, !tbaa !47
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !463
  br label %_ZNSt10__weak_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %_ZNSt8weak_ptrIN8facebook5velox10BaseVectorEEC2IS2_vEERKSt10shared_ptrIT_E.exit
end_hunk_55
begin_hunk_56_@_ZNSt4pairIN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a

_ZN8facebook5velox4exec4Expr13SharedResultsD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !462 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !463 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_56
begin_hunk_57_@_ZNSt4pairIN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a
_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ao, %i.ac
  br i1 %.not.i.i.i.i1, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !465

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.z, align 8, !tbaa !462
  br label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook5velox4exec4Expr13SharedResultsD2Ev.exit
end_hunk_57
begin_hunk_58_@_ZNSt4pairIN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !436
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
end_hunk_58
begin_hunk_59_@_ZNSt4pairIN8facebook5velox4exec4Expr21InputForSharedResultsENS3_13SharedResultsEED2Ev:bb.a

bb.o:                                             ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !466
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
end_hunk_59
begin_hunk_60_@_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
define linkonce_odr void @_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !463  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !462    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
end_hunk_60
begin_hunk_61_@_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !436
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #47
  br label %_ZNSt12_Vector_baseISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !462
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !463
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !436
  ret void
}

end_hunk_61
begin_hunk_62_@_ZNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE22_M_emplace_hint_uniqueIJS5_IS4_S7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_:bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !435
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !466
  store ptr %i.j, ptr %i.h, align 8, !tbaa !466
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
end_hunk_62
begin_hunk_63_@_ZNSt8_Rb_treeIN8facebook5velox4exec4Expr21InputForSharedResultsESt4pairIKS4_NS3_13SharedResultsEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE22_M_emplace_hint_uniqueIJS5_IS4_S7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_:bb.a
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !428
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !436
  store ptr %i.p, ptr %i.n, align 8, !tbaa !436
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
end_hunk_63
begin_hunk_64_@llvm.ucmp.i32.i32
!433 = !{!434, !417, i64 0}
!434 = !{!"_ZTSNSt12_Vector_baseIPKN8facebook5velox10BaseVectorESaIS4_EE17_Vector_impl_dataE", !417, i64 0, !417, i64 8, !417, i64 16}
!435 = !{!434, !417, i64 8}
!436 = !{!437, !429, i64 16}
!437 = !{!"_ZTSNSt12_Vector_baseISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !429, i64 0, !429, i64 8, !429, i64 16}
!438 = distinct !{ptr @_ZN8facebook5velox4exec4Expr13SharedResultsD2Ev, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!439 = distinct !{null, null}
!440 = distinct !{null, null, null, null, null}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv: argument 0"}
!443 = distinct !{!443, !"_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv"}
!444 = !{!266, !266, i64 0}
!445 = !{!446, !442}
!446 = distinct !{!446, !447, !"_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!447 = distinct !{!447, !"_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv: argument 0"}
!450 = distinct !{!450, !"_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv"}
!451 = !{!452, !449}
!452 = distinct !{!452, !453, !"_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!453 = distinct !{!453, !"_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!454 = !{!242, !52, i64 75}
!455 = !{!242, !173, i64 80}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv: argument 0"}
!458 = distinct !{!458, !"_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv"}
!459 = !{!460, !457}
!460 = distinct !{!460, !461, !"_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!461 = distinct !{!461, !"_ZSt11make_uniqueIN8facebook5velox17SelectivityVectorEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!462 = !{!437, !429, i64 0}
!463 = !{!437, !429, i64 8}
!464 = distinct !{ptr @_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev, null, null, null, null, null, null, ptr @_ZNSt10__weak_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!465 = distinct !{!465, !24}
!466 = !{!434, !417, i64 16}
!467 = !{!468, !115, i64 0}
!468 = !{!"_ZTSN8facebook5velox4exec12_GLOBAL__N_120ExprExceptionContextE", !115, i64 0, !245, i64 8, !244, i64 16, !30, i64 24, !30, i64 56, !30, i64 88}
!469 = !{!468, !245, i64 8}
end_hunk_64
