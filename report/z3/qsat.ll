Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qsat?download=true
inline.NumInlined: 1935
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2qe8pred_abs12is_predicateEP3appj:bb.a
bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.u = icmp eq ptr %i.o, null
  br i1 %i.u, label %_ZNK7obj_mapI9func_declN2qe9max_levelEE4findEPS0_RS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.j, %.preheader.i.i.i ] ; 4 uses
  %i.w = load ptr, ptr %.137.i.i.i, align 8, !tbaa !135 ; 4 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  %i.aa = icmp eq i32 %i.z, %i.e
  %i.ab = icmp eq ptr %i.w, %i.c
  %or.cond31.i.i.i = and i1 %i.ab, %i.aa
  br i1 %or.cond31.i.i.i, label %.loopexit, label %bb.g

bb.f:                                             ; preds = %.lr.ph38.i.i.i
  %i.ac = icmp eq ptr %i.w, null
  %i.ad = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ad, %i.l
  %or.cond43.i.i.i = select i1 %i.ac, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK7obj_mapI9func_declN2qe9max_levelEE4findEPS0_RS2_.exit.thread, label %.lr.ph38.i.i.i.backedge

bb.g:                                             ; preds = %bb.e
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.l
  br i1 %.not27.old.i.i.i, label %_ZNK7obj_mapI9func_declN2qe9max_levelEE4findEPS0_RS2_.exit.thread, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.g, %bb.f
  %.137.i.i.i.be = phi ptr [ %i.ad, %bb.f ], [ %.old.i.i.i, %bb.g ]
  br label %.lr.ph38.i.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %bb.b, %bb.e
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.e ], [ %.035.i.i.i, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !100 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.af to i32 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.af, 32   ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.ag = icmp eq i32 %.sroa.0.0.extract.trunc, -1
  br i1 %i.ag, label %_ZNK2qe9max_level3maxEv.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ah = icmp eq i64 %.sroa.5.0.extract.shift, 4294967295
  br i1 %i.ah, label %_ZNK2qe9max_level3maxEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.extract.trunc, i32 %.sroa.5.0.extract.trunc)
  br label %_ZNK2qe9max_level3maxEv.exit

_ZNK2qe9max_level3maxEv.exit:                     ; preds = %.loopexit, %bb.h, %bb.i
  %.0.i.i = phi i32 [ %.sroa.speculated.i.i, %bb.i ], [ %.sroa.5.0.extract.trunc, %.loopexit ], [ %.sroa.0.0.extract.trunc, %bb.h ]
  %i.ai = icmp ult i32 %.0.i.i, %2
  br label %_ZNK7obj_mapI9func_declN2qe9max_levelEE4findEPS0_RS2_.exit.thread

_ZNK7obj_mapI9func_declN2qe9max_levelEE4findEPS0_RS2_.exit.thread: ; preds = %bb.c, %bb.g, %bb.f, %.preheader.i.i.i, %_ZNK2qe9max_level3maxEv.exit
  %i.aj = phi i1 [ %i.ai, %_ZNK2qe9max_level3maxEv.exit ], [ false, %.preheader.i.i.i ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2qe8pred_abs15get_assumptionsEP5modelR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.model_evaluator, align 8     ; 9 uses
  %4 = alloca %class.params_ref, align 8          ; 7 uses
  %5 = alloca %class.obj_ref, align 8             ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !100  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit, label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread.thread

_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %.not152 = icmp eq i32 %i.e, 0
  br i1 %.not152, label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread.thread, label %.thread140

_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.k)
  br label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread.thread

_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread.thread: ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit
  %i.l = phi ptr [ %i.f, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread ], [ %i.f, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit ], [ %i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ] ; 5 uses
  %.067 = phi i32 [ %spec.select, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread ], [ 0, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ] ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.g

.thread140:                                       ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit
  %.not142 = icmp eq ptr %1, null
  br i1 %.not142, label %bb.b, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.b:                                             ; preds = %.thread140, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i
  %i.q = phi ptr [ %i.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i ], [ %i.ah, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i ], [ %indvars.iv.next.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !100
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.i, %i.t
  br i1 %i.u, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !107
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !59  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !100 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !100
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !100
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !59
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi ptr [ %.pre.i, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.ai = phi i32 [ %.pre2.i.i.i, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.aj = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  store ptr %i.w, ptr %i.am, align 8, !tbaa !101
  %i.an = add i32 %i.ai, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !100
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ao = icmp eq ptr %i.ah, null
  br i1 %i.ao, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, !llvm.loop !12

bb.g:                                             ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit.thread.thread
  %i.ap = icmp eq i32 %.067, 0
  br i1 %i.ap, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !149
  invoke void @_ZN15model_evaluatorC1ER10model_coreRK10params_ref(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  invoke void @_ZN15model_evaluator20set_model_completionEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aq = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  store ptr null, ptr %5, align 8, !tbaa !151
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !37
  br label %.preheader159

.preheader159:                                    ; preds = %bb.j, %.critedge81
  %i.at = phi ptr [ %.pre, %bb.j ], [ %i.cu, %.critedge81 ] ; 3 uses
  %indvars.iv174 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next175, %.critedge81 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv174
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !143 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge81, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader: ; preds = %.preheader159
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !100
  %.not255 = icmp eq i32 %i.az, 0
  br i1 %.not255, label %.critedge81, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.aw

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !100
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph, label %.critedge81, !llvm.loop !348

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bg = phi ptr [ %i.cs, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.aw, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader ]
  %indvars.iv247 = phi i64 [ %indvars.iv.next, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv247
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !144 ; 6 uses
  invoke void @_ZN15model_evaluatorclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph
  %i.bj = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.bk = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.bj)
          to label %_ZN11ast_manager3incEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11ast_manager3incEv.exit:                      ; preds = %bb.m
  br i1 %i.bk, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN11ast_manager3incEv.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105 ; 2 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !151
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 840
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !207
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bq = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bl, i32 noundef 0, i32 noundef 8, ptr noundef %i.bi)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %bb.o
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !107
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.p, %_ZN11ast_manager6mk_notEP4expr.exit
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !59 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !100 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !100
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.n
  %.not.i.i.i.i93 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i93, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i94, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !107
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i94

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i94: ; preds = %bb.t, %bb.s
  %i.ce = load ptr, ptr %i.as, align 8, !tbaa !59 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i94
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !100 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !100
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i94
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split: ; preds = %bb.v, %bb.r
  %.sink.ph = phi ptr [ %i.bq, %bb.r ], [ %i.bi, %bb.v ]
  %.pre.i.i95 = load ptr, ptr %i.as, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i96 = getelementptr inbounds i8, ptr %.pre.i.i95, i64 -4
  %.pre2.i.i97 = load i32, ptr %.phi.trans.insert.i.i96, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split, %bb.u, %bb.q
  %.sink229 = phi ptr [ %i.bu, %bb.q ], [ %i.ce, %bb.u ], [ %.pre.i.i95, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink228 = phi i32 [ %i.bx, %bb.q ], [ %i.ch, %bb.u ], [ %.pre2.i.i97, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.bq, %bb.q ], [ %i.bi, %bb.u ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ]
  %i.cl = getelementptr inbounds i8, ptr %.sink229, i64 -4
  %i.cm = zext i32 %.sink228 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sink229, i64 %i.cm
  store ptr %.sink, ptr %i.cn, align 8, !tbaa !101
  %i.co = add i32 %.sink228, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !100
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !37  ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv174
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !143 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit..critedge81.loopexit_crit_edge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !348

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit..critedge81.loopexit_crit_edge: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  br label %.critedge81, !llvm.loop !348

.critedge81:                                      ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit..critedge81.loopexit_crit_edge, %.preheader159
  %i.cu = phi ptr [ %i.at, %.preheader159 ], [ %i.cp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit..critedge81.loopexit_crit_edge ], [ %i.at, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader ], [ %i.cp, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next175 to i32
  %exitcond.not = icmp eq i32 %.067, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge83, label %.preheader159, !llvm.loop !349

.critedge83:                                      ; preds = %.critedge81
  %i.cv = load ptr, ptr %i.as, align 8, !tbaa !59 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit114.lr.ph, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i100

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i100: ; preds = %.critedge83
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i101

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i101: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i100
  %i.cy = phi ptr [ %i.cv, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i100 ], [ %i.dp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105 ] ; 3 uses
  %indvars.iv.i102 = phi i64 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph.i100 ], [ %indvars.iv.next.i106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105 ] ; 3 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !100
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.i102, %i.db
  br i1 %i.dc, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit112

bb.w:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i101
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.i102
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i.i103 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i103, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i104, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i104

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i104: ; preds = %bb.x, %bb.w
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !59 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i104
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !100 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !100
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.z, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105

bb.z:                                             ; preds = %bb.y, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i104
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.z
  %.pre.i.i.i107 = load ptr, ptr %i.cx, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert.i.i.i108 = getelementptr inbounds i8, ptr %.pre.i.i.i107, i64 -4
  %.pre2.i.i.i109 = load i32, ptr %.phi.trans.insert.i.i.i108, align 4, !tbaa !100
  %.pre.i110 = load ptr, ptr %i.as, align 8, !tbaa !59
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105: ; preds = %.noexc111, %bb.y
  %i.dp = phi ptr [ %.pre.i110, %.noexc111 ], [ %i.cy, %bb.y ] ; 2 uses
  %i.dq = phi i32 [ %.pre2.i.i.i109, %.noexc111 ], [ %i.dl, %bb.y ] ; 2 uses
  %i.dr = phi ptr [ %.pre.i.i.i107, %.noexc111 ], [ %i.di, %bb.y ] ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.dt = zext i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt
  store ptr %i.de, ptr %i.du, align 8, !tbaa !101
  %i.dv = add i32 %i.dq, 1
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !100
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i102, 1
  %i.dw = icmp eq ptr %i.dp, null
  br i1 %i.dw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit112, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i101, !llvm.loop !12

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i105, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i101
  %.pre180 = load ptr, ptr %i.l, align 8, !tbaa !37 ; 2 uses
  %i.dx = icmp eq ptr %.pre180, null
  br i1 %i.dx, label %.critedge, label %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit114.lr.ph

_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit114.lr.ph: ; preds = %.critedge83, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit112
  %i.dy = phi ptr [ %.pre180, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit112 ], [ %i.cu, %.critedge83 ] ; 2 uses
  %i.dz = add i32 %.067, 1                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !100
  %i.ef = icmp ult i32 %i.dz, %i.ee
  br i1 %i.ef, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit114.lr.ph, %.critedge89
  %.051165253 = phi i32 [ %i.hp, %.critedge89 ], [ %i.dz, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit114.lr.ph ] ; 4 uses
  %i.eg = phi ptr [ %i.ho, %.critedge89 ], [ %i.dy, %_ZNK6vectorI10ref_vectorI3app11ast_managerELb1EjE4sizeEv.exit114.lr.ph ] ; 3 uses
  %i.eh = zext i32 %.051165253 to i64             ; 3 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !143 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.critedge89, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116.preheader

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116.preheader: ; preds = %.preheader
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !100
  %.not256 = icmp eq i32 %i.en, 0
  br i1 %.not256, label %.critedge89, label %.lr.ph250

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116: ; preds = %.critedge87
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177249, 1 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !100
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %indvars.iv.next178, %i.eq
  br i1 %i.er, label %.lr.ph250, label %.critedge89, !llvm.loop !350

.lr.ph250:                                        ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116.preheader, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116
  %indvars.iv177249 = phi i64 [ %indvars.iv.next178, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116 ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit116.preheader ] ; 2 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !104, !align !105
  %i.et = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.es)
          to label %_ZN11ast_manager3incEv.exit118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11ast_manager3incEv.exit118:                   ; preds = %.lr.ph250
  br i1 %i.et, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZN11ast_manager3incEv.exit118
  %i.eu = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.eh
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !143
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv177249
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !144 ; 9 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !129 ; 3 uses
  %i.fc = load i32, ptr %i.eb, align 8, !tbaa !82 ; 3 uses
  %i.fd = add i32 %i.fc, -1
  %i.fe = and i32 %i.fd, %i.fb                    ; 2 uses
  %i.ff = load ptr, ptr %i.ea, align 8, !tbaa !90 ; 3 uses
  %i.fg = zext i32 %i.fc to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fg
  %.not34.i.i.i = icmp eq i32 %i.fe, %i.fc
  br i1 %.not34.i.i.i, label %.lr.ph38.i.i.i.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %i.fi = zext i32 %i.fe to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.fi, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.ad
  %.035.i.i.i = phi ptr [ %i.fq, %bb.ad ], [ %i.fj, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.fk = load ptr, ptr %.035.i.i.i, align 8, !tbaa !128 ; 4 uses
  %i.fl = icmp ult ptr %i.fk, inttoptr (i64 2 to ptr)
  br i1 %i.fl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !129
  %i.fo = icmp eq i32 %i.fn, %i.fb
  %i.fp = icmp eq ptr %i.fk, %i.ez
  %or.cond.i.i.i = and i1 %i.fp, %i.fo
  br i1 %or.cond.i.i.i, label %.loopexit, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fq = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fq, %i.fh
  br i1 %.not.i.i.i, label %.lr.ph38.i.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !5

.lr.ph38.i.i.i.preheader:                         ; preds = %bb.ad, %bb.aa
  br label %.lr.ph38.i.i.i

.lr.ph38.i.i.i:                                   ; preds = %.lr.ph38.i.i.i.preheader, %.lr.ph38.backedge.i.i.i
  %.137.i.i.i = phi ptr [ %.pn.i, %.lr.ph38.backedge.i.i.i ], [ %i.ff, %.lr.ph38.i.i.i.preheader ] ; 3 uses
  %i.fr = load ptr, ptr %.137.i.i.i, align 8, !tbaa !128 ; 4 uses
  %i.fs = icmp ult ptr %i.fr, inttoptr (i64 2 to ptr)
  br i1 %i.fs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph38.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !129
  %i.fv = icmp eq i32 %i.fu, %i.fb
  %i.fw = icmp eq ptr %i.fr, %i.ez
  %or.cond31.i.i.i = and i1 %i.fw, %i.fv
  br i1 %or.cond31.i.i.i, label %.loopexit, label %.lr.ph38.backedge.i.i.i

bb.af:                                            ; preds = %.lr.ph38.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  br label %.lr.ph38.backedge.i.i.i

.lr.ph38.backedge.i.i.i:                          ; preds = %bb.ae, %bb.af
  %.pn.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16
  br label %.lr.ph38.i.i.i, !llvm.loop !6

.loopexit:                                        ; preds = %bb.ab, %bb.ae
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.ae ], [ %.035.i.i.i, %bb.ab ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.fx, align 4, !tbaa !100 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !100 ; 3 uses
  %i.fy = icmp eq i32 %.sroa.7.0.copyload, %.051165253
  br i1 %i.fy, label %bb.ag, label %bb.ah

end_hunk_0
begin_hunk_1_@_ZNK16inf_eps_rationalI12inf_rationalE9to_stringB5cxx11Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK12inf_rational9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.e, align 8, !tbaa !71
  store i8 0, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %i.j = icmp eq i32 %i.a, 1
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %_ZNK8rational6is_oneEv.exit, label %bb.d

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 1
  %i.p = icmp eq i8 %i.o, 0
  %i.q = load i32, ptr %i.l, align 8
  %i.r = icmp eq i32 %i.q, 1
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.invoke, label %_ZNK8rational12is_minus_oneEv.exit.thread

.invoke:                                          ; preds = %_ZNK8rational12is_minus_oneEv.exit, %_ZNK8rational6is_oneEv.exit
  %i.t = phi ptr [ @.str.45, %_ZNK8rational6is_oneEv.exit ], [ @.str.46, %_ZNK8rational12is_minus_oneEv.exit ]
  %i.u = phi i64 [ 2, %_ZNK8rational6is_oneEv.exit ], [ 3, %_ZNK8rational12is_minus_oneEv.exit ]
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.t, i64 noundef %i.u)
          to label %bb.k unwind label %bb.ag      ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.a, -1
  %i.x = and i1 %i.w, %i.i
  br i1 %i.x, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  %i.ad = load i32, ptr %i.y, align 8
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %.invoke, label %_ZNK8rational12is_minus_oneEv.exit.thread

_ZNK8rational12is_minus_oneEv.exit.thread:        ; preds = %_ZNK8rational6is_oneEv.exit, %bb.d, %_ZNK8rational12is_minus_oneEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ag = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !306, !noalias !474
  invoke void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK8rational9to_stringB5cxx11Ev.exit unwind label %bb.i

_ZNK8rational9to_stringB5cxx11Ev.exit:            ; preds = %_ZNK8rational12is_minus_oneEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !71 ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNK8rational9to_stringB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNK8rational9to_stringB5cxx11Ev.exit
  %i.ak = add nsw i64 %i.ai, 3                    ; 3 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ao = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ak, %i.aq
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ar, ptr noundef nonnull align 1 dereferenceable(3) @.str.47, i64 3, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ai, i64 noundef 0, ptr noundef nonnull @.str.47, i64 noundef 3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !71
  %i.as = load ptr, ptr %3, align 8, !tbaa !137
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store i8 0, ptr %i.at, align 1, !tbaa !72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.h
  %i.au = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.am
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aw = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.k

bb.i:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit.thread
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.j
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !72
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.az, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.k:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !271
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = select i1 %i.bh, i1 %i.bk, i1 false
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !68
  br i1 %i.bl, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !137   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.d
  br i1 %i.bo, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !71  ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.br, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.l
  store ptr %i.bn, ptr %0, align 8, !tbaa !137
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !72
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !72
  %.pre69 = load i64, ptr %i.e, align 8, !tbaa !71
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.m
  %i.bt = phi i64 [ %i.bp, %bb.m ], [ %.pre69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !71
  store i64 0, ptr %i.e, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

._crit_edge.i.i:                                  ; preds = %bb.k
  store i8 40, ptr %i.bm, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 1, ptr %i.bv, align 8, !tbaa !71
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.bw, align 1, !tbaa !72
  %i.bx = load ptr, ptr %2, align 8, !tbaa !137   ; 3 uses
  %i.by = load i64, ptr %i.e, align 8, !tbaa !71  ; 7 uses
  %i.bz = icmp ugt i64 %i.by, 9223372036854775806
  br i1 %i.bz, label %.invoke94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %._crit_edge.i.i
  %i.ca = add nuw nsw i64 %i.by, 1                ; 2 uses
  %.not.i.i.i.i.not = icmp samesign ult i64 %i.by, 15
  br i1 %.not.i.i.i.i.not, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not8.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.by, 1
  br i1 %cond.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !72
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !72
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr align 1 %i.bx, i64 %i.by, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i64 noundef 0, ptr noundef %i.bx, i64 noundef %i.by)
          to label %._crit_edge unwind label %bb.ah

._crit_edge:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %0, align 8, !tbaa !137
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q, %bb.p, %bb.n
  %i.cd = phi ptr [ %.pre, %._crit_edge ], [ %i.bm, %bb.q ], [ %i.bm, %bb.p ], [ %i.bm, %bb.n ]
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !71
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  store i8 0, ptr %i.ce, align 1, !tbaa !72
  %i.cf = load i64, ptr %i.bv, align 8, !tbaa !71 ; 5 uses
  %i.cg = icmp sgt i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %.invoke94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24: ; preds = %bb.s
  %i.ch = add nsw i64 %i.cf, 3                    ; 3 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !137   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bm
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24
  %i.ck = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24
  %i.cl = load i64, ptr %i.bm, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30 ]
  %.not.i.i.i27 = icmp ugt i64 %i.ch, %i.cm
  br i1 %.not.i.i.i27, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cn, ptr noundef nonnull align 1 dereferenceable(3) @.str.49, i64 3, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cf, i64 noundef 0, ptr noundef nonnull @.str.49, i64 noundef 3)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.t, %bb.u
  store i64 %i.ch, ptr %i.bv, align 8, !tbaa !71
  %i.co = load ptr, ptr %0, align 8, !tbaa !137
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ch
  store i8 0, ptr %i.cp, align 1, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNK12inf_rational9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %4, align 8, !tbaa !137   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !71 ; 6 uses
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !71 ; 5 uses
  %i.cu = sub i64 9223372036854775807, %i.ct
  %i.cv = icmp ult i64 %i.cu, %i.cs
  br i1 %i.cv, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #24
          to label %.noexc41 unwind label %bb.aj

.noexc41:                                         ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34: ; preds = %bb.w
  %i.cw = add i64 %i.ct, %i.cs                    ; 3 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !137   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bm
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34
  %i.cz = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34
  %i.da = load i64, ptr %i.bm, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40
  %i.db = phi i64 [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i40 ]
  %.not.i.i.i.i37 = icmp ugt i64 %i.cw, %i.db
  br i1 %.not.i.i.i.i37, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36
  %.not8.i.i.i.i38 = icmp eq i64 %i.cs, 0
  br i1 %.not8.i.i.i.i38, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ct ; 2 uses
  %cond.i.i.i.i39 = icmp eq i64 %i.cs, 1
  br i1 %cond.i.i.i.i39, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i8, ptr %i.cq, align 1, !tbaa !72
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !72
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cq, i64 %i.cs, i1 false)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct, i64 noundef 0, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.ac
  store i64 %i.cw, ptr %i.bv, align 8, !tbaa !71
  %i.de = load ptr, ptr %0, align 8, !tbaa !137
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  store i8 0, ptr %i.df, align 1, !tbaa !72
  %i.dg = load ptr, ptr %4, align 8, !tbaa !137   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ad
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !72
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dl = load i64, ptr %i.bv, align 8, !tbaa !71 ; 5 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775807
  br i1 %i.dm, label %.invoke94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i47

.invoke94:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.s, %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #24
          to label %.cont unwind label %bb.ah

.cont:                                            ; preds = %.invoke94
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.dn = add nsw i64 %i.dl, 1                    ; 3 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !137   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bm
  br i1 %i.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i47
  %i.dq = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i47
  %i.dr = load i64, ptr %i.bm, align 8, !tbaa !72
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i53
  %i.ds = phi i64 [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i48 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i53 ]
  %.not.i.i.i50 = icmp ugt i64 %i.dn, %i.ds
  br i1 %.not.i.i.i50, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i49
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl
  store i8 41, ptr %i.dt, align 1, !tbaa !72
  br label %bb.al

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i49
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dl, i64 noundef 0, ptr noundef nonnull @.str.50, i64 noundef 1)
          to label %bb.al unwind label %bb.ah

bb.ag:                                            ; preds = %.invoke
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.ah:                                            ; preds = %.invoke94, %bb.af, %bb.u, %bb.r
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

end_hunk_1
