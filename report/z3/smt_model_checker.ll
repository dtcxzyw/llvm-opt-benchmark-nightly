Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_model_checker?download=true
inline.NumInlined: 1873
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3smt13model_checker5checkEP10quantifier:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !71
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.bg) #20, !inline_history !757
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.bg)
          to label %_ZN3refI5modelED2Ev.exit44 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #21
  unreachable

_ZN3refI5modelED2Ev.exit44:                       ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa, %bb.ac
  %.pn35.pn = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.bf, %bb.ac ]
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN3refI5modelED2Ev.exit44, %bb.i
  %.028 = phi i1 [ %i.v, %bb.i ], [ false, %_ZN3refI5modelED2Ev.exit44 ]
  store i8 %i.r, ptr %i.q, align 1, !tbaa !634
  store i8 %i.p, ptr %i.o, align 8, !tbaa !634
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.j
  %.pn38 = phi { ptr, i32 } [ %i.w, %bb.j ], [ %.pn35.pn, %bb.ah ]
  store i8 %i.r, ptr %i.q, align 1, !tbaa !634
  store i8 %i.p, ptr %i.o, align 8, !tbaa !634
  br label %bb.ar

bb.ak:                                            ; preds = %bb.c, %bb.ai
  %.129 = phi i1 [ %.028, %bb.ai ], [ false, %bb.c ]
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !61  ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.ak
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !62 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.cc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.bp, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bw = load ptr, ptr %.06.i.i, align 8, !tbaa !63 ; 3 uses
  %i.bx = load ptr, ptr %3, align 8, !tbaa !64, !nonnull !65, !align !66
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !68
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !68
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.am, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bx, ptr noundef nonnull %i.bw)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.ao

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.am, %bb.al, %.lr.ph.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bv
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ce = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bp, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cf)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #21
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.ak, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  invoke void @_ZN3smt7context3popEj(ptr noundef nonnull align 8 dereferenceable(10728) %i.b, i32 noundef 1)
          to label %_ZN3smt15scoped_ctx_pushD2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  %i.cm = call ptr @__cxa_begin_catch(ptr %i.cl) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN3smt15scoped_ctx_pushD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #21
  unreachable

_ZN3smt15scoped_ctx_pushD2Ev.exit:                ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %.129

bb.ar:                                            ; preds = %bb.aj, %bb.e
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.aj ], [ %i.k, %bb.e ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.d
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.ar ], [ %i.j, %bb.d ]
  call void @_ZN3smt15scoped_ctx_pushD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn38.pn.pn.pn
}

declare noundef i32 @_ZN3smt7context5checkEjPKP4exprb(ptr noundef nonnull align 8 dereferenceable(10728), i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3smt13model_checker16is_safe_for_mbqiEP10quantifier(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.symbol, align 8              ; 4 uses
  %3 = alloca %class.symbol, align 8              ; 4 uses
  %4 = alloca %class.sbuffer, align 8             ; 20 uses
  %5 = alloca %class.symbol, align 8              ; 4 uses
  %6 = alloca %class.ast_fast_mark, align 8       ; 16 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !65, !align !66 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.17)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 3 uses
  %i.c = call noundef i32 @_ZN14family_manager12mk_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.d = call noundef ptr @_ZNK11ast_manager10get_pluginEi(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !769, !range !635, !noundef !65
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !642
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store i32 0, ptr %i.i, align 8, !tbaa !643
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  store i32 16, ptr %i.j, align 4, !tbaa !770
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = and i32 %i.o, 65536
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i, label %_ZN13ast_fast_markILj1EED2Ev.exit

_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i:     ; preds = %bb.c
  %i.q = or disjoint i32 %i.o, 65536
  store i32 %i.q, ptr %i.n, align 4
  store ptr %1, ptr %i.h, align 8, !tbaa !645
  store i32 1, ptr %i.i, align 8, !tbaa !643
  br label %bb.d

bb.d:                                             ; preds = %_ZN13ast_fast_markILj1EE4markEP3ast.exit.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !647
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  store i32 16, ptr %i.t, align 4, !tbaa !648
  store ptr %1, ptr %i.r, align 8
  %.sroa.5191.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %.sroa.5191.0..sroa_idx.i.i, align 8
  br label %.preheader.i.i.sink.split

thread-pre-splitthread-pre-split.i.i:             ; preds = %._crit_edge.i.i, %_ZNK22special_relations_util19is_special_relationEP9func_decl.exit.i.i124.i.i, %bb.at
  %.sroa.7.6 = phi i32 [ %.sroa.7.1, %bb.at ], [ %.sroa.7.7, %_ZNK22special_relations_util19is_special_relationEP9func_decl.exit.i.i124.i.i ], [ %.sroa.7.4, %._crit_edge.i.i ]
  %.sroa.6.5 = phi i1 [ %.sroa.6.1, %bb.at ], [ %8, %_ZNK22special_relations_util19is_special_relationEP9func_decl.exit.i.i124.i.i ], [ %.sroa.6.4, %._crit_edge.i.i ]
  %.pr.pr.i.i = load i32, ptr %i.s, align 8, !tbaa !649
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %.thread203.i.i, %bb.e, %thread-pre-splitthread-pre-split.i.i
  %.sroa.7.3 = phi i32 [ %.sroa.7.6, %thread-pre-splitthread-pre-split.i.i ], [ %.sroa.7.1, %bb.e ], [ %.sroa.7.1, %.thread203.i.i ]
  %.sroa.6.3 = phi i1 [ %.sroa.6.5, %thread-pre-splitthread-pre-split.i.i ], [ %.sroa.6.1, %bb.e ], [ %.sroa.6.1, %.thread203.i.i ] ; 2 uses
  %.pr.i.i = phi i32 [ %.pr.pr.i.i, %thread-pre-splitthread-pre-split.i.i ], [ %i.x, %bb.e ], [ %i.x, %.thread203.i.i ] ; 2 uses
  %i.u = icmp eq i32 %.pr.i.i, 0
  br i1 %i.u, label %bb.av, label %.preheader.i.i

.preheader.i.i.sink.split:                        ; preds = %bb.au, %bb.d
  %.sink = phi i32 [ 1, %bb.d ], [ %i.hz, %bb.au ] ; 2 uses
  %.sroa.7.1.ph = phi i32 [ -1, %bb.d ], [ %.sroa.7.2, %bb.au ]
  %.sroa.6.1.ph = phi i1 [ false, %bb.d ], [ %.sroa.6.2, %bb.au ]
  store i32 %.sink, ptr %i.s, align 8, !tbaa !649
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.sink.split, %thread-pre-split.i.i
  %.sroa.7.1 = phi i32 [ %.sroa.7.3, %thread-pre-split.i.i ], [ %.sroa.7.1.ph, %.preheader.i.i.sink.split ] ; 7 uses
  %.sroa.6.1 = phi i1 [ %.sroa.6.3, %thread-pre-split.i.i ], [ %.sroa.6.1.ph, %.preheader.i.i.sink.split ] ; 7 uses
  %i.v = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ %.sink, %.preheader.i.i.sink.split ] ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !647
  %i.x = add i32 %i.v, -1                         ; 6 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !651 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %trunc.i.i = trunc i32 %i.ac to i16
  switch i16 %trunc.i.i, label %bb.as [
    i16 1, label %bb.e
    i16 0, label %bb.f
    i16 2, label %bb.ae
  ]

bb.e:                                             ; preds = %.preheader.i.i
  store i32 %i.x, ptr %i.s, align 8, !tbaa !649
  br label %thread-pre-split.i.i

bb.f:                                             ; preds = %.preheader.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !94 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !652 ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.7.8 = phi i32 [ %.sroa.7.1, %.lr.ph.i.i ], [ %.sroa.7.10, %bb.aa ] ; 9 uses
  %.sroa.6.6 = phi i1 [ %.sroa.6.1, %.lr.ph.i.i ], [ %.sroa.6.7, %bb.aa ] ; 8 uses
  %i.aj = phi i32 [ %i.ag, %.lr.ph.i.i ], [ %i.dz, %bb.aa ] ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 10 uses
  %i.an = add nuw i32 %i.aj, 1
  store i32 %i.an, ptr %i.af, align 8, !tbaa !652
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !68
  %i.aq = icmp ugt i32 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 65536
  %.not210.i.i = icmp eq i32 %i.at, 0
  br i1 %.not210.i.i, label %bb.i, label %bb.aa, !llvm.loop !758

bb.i:                                             ; preds = %bb.h
  %i.au = or disjoint i32 %i.as, 65536
  store i32 %i.au, ptr %i.ar, align 4
  %i.av = load i32, ptr %i.i, align 8, !tbaa !643 ; 2 uses
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !770 ; 2 uses
  %.not.i.i63.i.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i63.i.i, label %._crit_edge.i.i78.i.i, label %bb.j

._crit_edge.i.i78.i.i:                            ; preds = %bb.i
  %.pre.i.i79.i.i = load ptr, ptr %6, align 8, !tbaa !642
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit82.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = shl i32 %i.aw, 1                        ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.az)
          to label %.noexc80.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc80.i.i:                                     ; preds = %bb.j
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !643 ; 4 uses
  %.not.i.i.i64.i.i = icmp eq i32 %i.bb, 0
  %.pre.i.i.i65.i.i = load ptr, ptr %6, align 8, !tbaa !642 ; 10 uses
  br i1 %.not.i.i.i64.i.i, label %._crit_edge.i.i.i71.i.i, label %.lr.ph.i.i.i66.i.i

.lr.ph.i.i.i66.i.i:                               ; preds = %.noexc80.i.i
  %.pre.i.i.i65.i.i236 = ptrtoaddr ptr %.pre.i.i.i65.i.i to i64
  %i.bc = ptrtoaddr ptr %i.ba to i64
  %wide.trip.count.i.i.i67.i.i = zext i32 %i.bb to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 4
  %i.bd = sub i64 %.pre.i.i.i65.i.i236, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i66.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i67.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i65.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !645
  %wide.load237 = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !645
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x ptr> %wide.load, ptr %i.be, align 8, !tbaa !645
  store <2 x ptr> %wide.load237, ptr %i.bh, align 8, !tbaa !645
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i67.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i71.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i66.i.i, %middle.block
  %indvars.iv.i.i.i68.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i66.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i67.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i68.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i69.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i68.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i68.i.i.prol
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i65.i.i, i64 %indvars.iv.i.i.i68.i.i.prol
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !645
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !645
  %indvars.iv.next.i.i.i69.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i68.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !760

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i68.i.i.unr = phi i64 [ %indvars.iv.i.i.i68.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i69.i.i.prol, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i.i.i68.i.i.ph, %wide.trip.count.i.i.i67.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.i.i.i71.i.i, label %scalar.ph

._crit_edge.i.i.i71.i.i:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc80.i.i
  %.not.i.i.i.i72.i.i = icmp eq ptr %.pre.i.i.i65.i.i, %i.h
  %i.bo = icmp eq ptr %.pre.i.i.i65.i.i, null
  %or.cond.i.i.i.i73.i.i = or i1 %.not.i.i.i.i72.i.i, %i.bo
  br i1 %or.cond.i.i.i.i73.i.i, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i75.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i71.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i65.i.i)
          to label %.noexc81.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81.i.i:                                     ; preds = %bb.k
  %.pre2.pre.i.i74.i.i = load i32, ptr %i.i, align 8, !tbaa !643
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i75.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i68.i.i = phi i64 [ %indvars.iv.next.i.i.i69.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i68.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i68.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i65.i.i, i64 %indvars.iv.i.i.i68.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !645
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !645
  %indvars.iv.next.i.i.i69.i.i = add nuw nsw i64 %indvars.iv.i.i.i68.i.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i69.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i65.i.i, i64 %indvars.iv.next.i.i.i69.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !645
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !645
  %indvars.iv.next.i.i.i69.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i68.i.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i69.i.i.1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i65.i.i, i64 %indvars.iv.next.i.i.i69.i.i.1
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !645
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !645
  %indvars.iv.next.i.i.i69.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i68.i.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i69.i.i.2
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i65.i.i, i64 %indvars.iv.next.i.i.i69.i.i.2
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !645
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !645
  %indvars.iv.next.i.i.i69.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i68.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i70.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i69.i.i.3, %wide.trip.count.i.i.i67.i.i
  br i1 %exitcond.not.i.i.i70.i.i.3, label %._crit_edge.i.i.i71.i.i, label %scalar.ph, !llvm.loop !761

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i75.i.i: ; preds = %.noexc81.i.i, %._crit_edge.i.i.i71.i.i
  %.pre2.i.i76.i.i = phi i32 [ %i.bb, %._crit_edge.i.i.i71.i.i ], [ %.pre2.pre.i.i74.i.i, %.noexc81.i.i ]
  store ptr %i.ba, ptr %6, align 8, !tbaa !642
  store i32 %i.ax, ptr %i.j, align 4, !tbaa !770
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit82.i.i

_ZN13ast_fast_markILj1EE4markEP3ast.exit82.i.i:   ; preds = %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i75.i.i, %._crit_edge.i.i78.i.i
  %i.cb = phi i32 [ %i.av, %._crit_edge.i.i78.i.i ], [ %.pre2.i.i76.i.i, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i75.i.i ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i79.i.i, %._crit_edge.i.i78.i.i ], [ %i.ba, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i75.i.i ]
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  store ptr %i.am, ptr %i.ce, align 8, !tbaa !645
  %i.cf = add i32 %i.cb, 1
  store i32 %i.cf, ptr %i.i, align 8, !tbaa !643
  br label %bb.l

bb.l:                                             ; preds = %_ZN13ast_fast_markILj1EE4markEP3ast.exit82.i.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %trunc211.i.i = trunc i32 %i.ch to i16
  switch i16 %trunc211.i.i, label %bb.y [
    i16 1, label %bb.aa
    i16 2, label %bb.m
    i16 0, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.ci = load i32, ptr %i.s, align 8, !tbaa !649 ; 2 uses
  %i.cj = load i32, ptr %i.t, align 4, !tbaa !648 ; 2 uses
  %.not.i83.i.i = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i83.i.i, label %._crit_edge.i97.i.i, label %bb.n

._crit_edge.i97.i.i:                              ; preds = %bb.m
  %.pre.i98.i.i = load ptr, ptr %4, align 8, !tbaa !647
  br label %bb.au

bb.n:                                             ; preds = %bb.m
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 4
  %i.cn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cm)
          to label %.noexc99.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc99.i.i:                                     ; preds = %bb.n
  %i.co = load i32, ptr %i.s, align 8, !tbaa !649 ; 5 uses
  %.not.i.i84.i.i = icmp eq i32 %i.co, 0
  %.pre.i.i85.i.i = load ptr, ptr %4, align 8, !tbaa !647 ; 6 uses
  br i1 %.not.i.i84.i.i, label %._crit_edge.i.i91.i.i, label %.lr.ph.i.i86.i.i

.lr.ph.i.i86.i.i:                                 ; preds = %.noexc99.i.i
  %wide.trip.count.i.i87.i.i = zext i32 %i.co to i64 ; 2 uses
  %xtraiter305 = and i64 %wide.trip.count.i.i87.i.i, 1
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %.epil.preheader304, label %.lr.ph.i.i86.i.i.new

.lr.ph.i.i86.i.i.new:                             ; preds = %.lr.ph.i.i86.i.i
  %unroll_iter308 = and i64 %wide.trip.count.i.i87.i.i, 4294967294
  br label %bb.p

._crit_edge.i.i91.i.i.loopexit.unr-lcssa:         ; preds = %bb.p
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %._crit_edge.i.i91.i.i, label %.epil.preheader304

.epil.preheader304:                               ; preds = %._crit_edge.i.i91.i.i.loopexit.unr-lcssa, %.lr.ph.i.i86.i.i
  %indvars.iv.i.i88.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i86.i.i ], [ %indvars.iv.next.i.i89.i.i.1, %._crit_edge.i.i91.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod307 = trunc i32 %i.co to i1
  call void @llvm.assume(i1 %lcmp.mod307)
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.i.i88.i.i.epil.init
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i85.i.i, i64 %indvars.iv.i.i88.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false)
  br label %._crit_edge.i.i91.i.i

._crit_edge.i.i91.i.i:                            ; preds = %.epil.preheader304, %._crit_edge.i.i91.i.i.loopexit.unr-lcssa, %.noexc99.i.i
  %.not.i.i.i92.i.i = icmp eq ptr %.pre.i.i85.i.i, %i.r
  %i.cs = icmp eq ptr %.pre.i.i85.i.i, null
  %or.cond.i.i.i93.i.i = or i1 %.not.i.i.i92.i.i, %i.cs
  br i1 %or.cond.i.i.i93.i.i, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i91.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i85.i.i)
          to label %.noexc100.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100.i.i:                                    ; preds = %bb.o
  %.pre2.pre.i94.i.i = load i32, ptr %i.s, align 8, !tbaa !649
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i86.i.i.new
  %indvars.iv.i.i88.i.i = phi i64 [ 0, %.lr.ph.i.i86.i.i.new ], [ %indvars.iv.next.i.i89.i.i.1, %bb.p ] ; 4 uses
  %niter309 = phi i64 [ 0, %.lr.ph.i.i86.i.i.new ], [ %niter309.next.1, %bb.p ]
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.i.i88.i.i
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i85.i.i, i64 %indvars.iv.i.i88.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false)
  %indvars.iv.next.i.i89.i.i = or disjoint i64 %indvars.iv.i.i88.i.i, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i89.i.i
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i85.i.i, i64 %indvars.iv.next.i.i89.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false)
  %indvars.iv.next.i.i89.i.i.1 = add nuw nsw i64 %indvars.iv.i.i88.i.i, 2 ; 2 uses
  %niter309.next.1 = add i64 %niter309, 2         ; 2 uses
  %niter309.ncmp.1 = icmp eq i64 %niter309.next.1, %unroll_iter308
  br i1 %niter309.ncmp.1, label %._crit_edge.i.i91.i.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !8

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i: ; preds = %.noexc100.i.i, %._crit_edge.i.i91.i.i
  %.pre2.i96.i.i = phi i32 [ %i.co, %._crit_edge.i.i91.i.i ], [ %.pre2.pre.i94.i.i, %.noexc100.i.i ]
  store ptr %i.cn, ptr %4, align 8, !tbaa !647
  store i32 %i.ck, ptr %i.t, align 4, !tbaa !648
  br label %bb.au

bb.q:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !94
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !99
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !166 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZNK4decl13get_family_idEv.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = load i32, ptr %i.dd, align 8, !tbaa !170
  br label %_ZNK4decl13get_family_idEv.exit.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.i.i.i.i.i:        ; preds = %bb.s, %bb.r
  %i.dg = phi i32 [ %i.df, %bb.s ], [ -1, %bb.r ]
  %i.dh = icmp eq i32 %.sroa.7.8, -1
  br i1 %i.dh, label %bb.t, label %_ZZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierEN4procclEP3app.exit.i.i

bb.t:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17)
          to label %.noexc102.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102.i.i:                                    ; preds = %bb.t
  %i.di = invoke noundef i32 @_ZNK14family_manager13get_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc103.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103.i.i:                                    ; preds = %.noexc102.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierEN4procclEP3app.exit.i.i

_ZZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierEN4procclEP3app.exit.i.i: ; preds = %.noexc103.i.i, %_ZNK4decl13get_family_idEv.exit.i.i.i.i.i
  %.sroa.7.9 = phi i32 [ %i.di, %.noexc103.i.i ], [ %.sroa.7.8, %_ZNK4decl13get_family_idEv.exit.i.i.i.i.i ] ; 2 uses
  %i.dj = icmp eq i32 %i.dg, %.sroa.7.9
  %7 = or i1 %.sroa.6.6, %i.dj
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  %i.dk = load i32, ptr %i.s, align 8, !tbaa !649 ; 2 uses
  %i.dl = load i32, ptr %i.t, align 4, !tbaa !648 ; 2 uses
  %.not.i104.i.i = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i104.i.i, label %._crit_edge.i118.i.i, label %bb.v

._crit_edge.i118.i.i:                             ; preds = %bb.u
  %.pre.i119.i.i = load ptr, ptr %4, align 8, !tbaa !647
  br label %bb.au

bb.v:                                             ; preds = %bb.u
  %i.dm = shl i32 %i.dl, 1                        ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 4
  %i.dp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.do)
          to label %.noexc120.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc120.i.i:                                    ; preds = %bb.v
  %i.dq = load i32, ptr %i.s, align 8, !tbaa !649 ; 5 uses
  %.not.i.i105.i.i = icmp eq i32 %i.dq, 0
  %.pre.i.i106.i.i = load ptr, ptr %4, align 8, !tbaa !647 ; 6 uses
  br i1 %.not.i.i105.i.i, label %._crit_edge.i.i112.i.i, label %.lr.ph.i.i107.i.i

.lr.ph.i.i107.i.i:                                ; preds = %.noexc120.i.i
  %wide.trip.count.i.i108.i.i = zext i32 %i.dq to i64 ; 2 uses
  %xtraiter299 = and i64 %wide.trip.count.i.i108.i.i, 1
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %.epil.preheader298, label %.lr.ph.i.i107.i.i.new

.lr.ph.i.i107.i.i.new:                            ; preds = %.lr.ph.i.i107.i.i
  %unroll_iter302 = and i64 %wide.trip.count.i.i108.i.i, 4294967294
  br label %bb.x

._crit_edge.i.i112.i.i.loopexit.unr-lcssa:        ; preds = %bb.x
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %._crit_edge.i.i112.i.i, label %.epil.preheader298

.epil.preheader298:                               ; preds = %._crit_edge.i.i112.i.i.loopexit.unr-lcssa, %.lr.ph.i.i107.i.i
  %indvars.iv.i.i109.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i107.i.i ], [ %indvars.iv.next.i.i110.i.i.1, %._crit_edge.i.i112.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod301 = trunc i32 %i.dq to i1
  call void @llvm.assume(i1 %lcmp.mod301)
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i.i109.i.i.epil.init
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i106.i.i, i64 %indvars.iv.i.i109.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false)
  br label %._crit_edge.i.i112.i.i

._crit_edge.i.i112.i.i:                           ; preds = %.epil.preheader298, %._crit_edge.i.i112.i.i.loopexit.unr-lcssa, %.noexc120.i.i
  %.not.i.i.i113.i.i = icmp eq ptr %.pre.i.i106.i.i, %i.r
  %i.du = icmp eq ptr %.pre.i.i106.i.i, null
  %or.cond.i.i.i114.i.i = or i1 %.not.i.i.i113.i.i, %i.du
  br i1 %or.cond.i.i.i114.i.i, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i112.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i106.i.i)
          to label %.noexc121.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121.i.i:                                    ; preds = %bb.w
  %.pre2.pre.i115.i.i = load i32, ptr %i.s, align 8, !tbaa !649
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i107.i.i.new
  %indvars.iv.i.i109.i.i = phi i64 [ 0, %.lr.ph.i.i107.i.i.new ], [ %indvars.iv.next.i.i110.i.i.1, %bb.x ] ; 4 uses
  %niter303 = phi i64 [ 0, %.lr.ph.i.i107.i.i.new ], [ %niter303.next.1, %bb.x ]
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i.i109.i.i
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i106.i.i, i64 %indvars.iv.i.i109.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  %indvars.iv.next.i.i110.i.i = or disjoint i64 %indvars.iv.i.i109.i.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i110.i.i
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i106.i.i, i64 %indvars.iv.next.i.i110.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false)
  %indvars.iv.next.i.i110.i.i.1 = add nuw nsw i64 %indvars.iv.i.i109.i.i, 2 ; 2 uses
  %niter303.next.1 = add i64 %niter303, 2         ; 2 uses
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %._crit_edge.i.i112.i.i.loopexit.unr-lcssa, label %bb.x, !llvm.loop !8

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i: ; preds = %.noexc121.i.i, %._crit_edge.i.i112.i.i
  %.pre2.i117.i.i = phi i32 [ %i.dq, %._crit_edge.i.i112.i.i ], [ %.pre2.pre.i115.i.i, %.noexc121.i.i ]
  store ptr %i.dp, ptr %4, align 8, !tbaa !647
  store i32 %i.dm, ptr %i.t, align 4, !tbaa !648
  br label %bb.au

bb.y:                                             ; preds = %bb.l
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.31, i32 noundef 73, ptr noundef nonnull @.str.24)
          to label %bb.z unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.aa unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z, %_ZZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierEN4procclEP3app.exit.i.i, %bb.l, %bb.h
  %.sroa.7.10 = phi i32 [ %.sroa.7.8, %bb.z ], [ %.sroa.7.8, %bb.l ], [ %.sroa.7.9, %_ZZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierEN4procclEP3app.exit.i.i ], [ %.sroa.7.8, %bb.h ] ; 2 uses
  %.sroa.6.7 = phi i1 [ %.sroa.6.6, %bb.z ], [ %.sroa.6.6, %bb.l ], [ %7, %_ZZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierEN4procclEP3app.exit.i.i ], [ %.sroa.6.6, %bb.h ] ; 2 uses
  %i.dz = load i32, ptr %i.af, align 8, !tbaa !652 ; 2 uses
  %i.ea = icmp ult i32 %i.dz, %i.ae
  br i1 %i.ea, label %bb.g, label %._crit_edge242.i.i

._crit_edge242.i.i:                               ; preds = %bb.aa
  %.pre271.i.i = load i32, ptr %i.s, align 8, !tbaa !649
  %.pre272.i.i = add i32 %.pre271.i.i, -1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %._crit_edge242.i.i
  %.sroa.7.4 = phi i32 [ %.sroa.7.10, %._crit_edge242.i.i ], [ %.sroa.7.1, %bb.f ] ; 3 uses
  %.sroa.6.4 = phi i1 [ %.sroa.6.7, %._crit_edge242.i.i ], [ %.sroa.6.1, %bb.f ] ; 2 uses
  %.pre-phi.i.i = phi i32 [ %.pre272.i.i, %._crit_edge242.i.i ], [ %i.x, %bb.f ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !649
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = and i32 %i.ec, 65535
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ab, label %thread-pre-splitthread-pre-split.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !99
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !166 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZNK4decl13get_family_idEv.exit.i.i.i123.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i32, ptr %i.ei, align 8, !tbaa !170
  br label %_ZNK4decl13get_family_idEv.exit.i.i.i123.i.i

_ZNK4decl13get_family_idEv.exit.i.i.i123.i.i:     ; preds = %bb.ac, %bb.ab
  %i.el = phi i32 [ %i.ek, %bb.ac ], [ -1, %bb.ab ]
  %i.em = icmp eq i32 %.sroa.7.4, -1
  br i1 %i.em, label %bb.ad, label %_ZNK22special_relations_util19is_special_relationEP9func_decl.exit.i.i124.i.i

bb.ad:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.i.i.i123.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17)
          to label %.noexc125.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125.i.i:                                    ; preds = %bb.ad
  %i.en = invoke noundef i32 @_ZNK14family_manager13get_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc126.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126.i.i:                                    ; preds = %.noexc125.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNK22special_relations_util19is_special_relationEP9func_decl.exit.i.i124.i.i

_ZNK22special_relations_util19is_special_relationEP9func_decl.exit.i.i124.i.i: ; preds = %.noexc126.i.i, %_ZNK4decl13get_family_idEv.exit.i.i.i123.i.i
  %.sroa.7.7 = phi i32 [ %i.en, %.noexc126.i.i ], [ %.sroa.7.4, %_ZNK4decl13get_family_idEv.exit.i.i.i123.i.i ] ; 2 uses
  %i.eo = icmp eq i32 %i.el, %.sroa.7.7
  %8 = or i1 %.sroa.6.4, %i.eo
  br label %thread-pre-splitthread-pre-split.i.i

bb.ae:                                            ; preds = %.preheader.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !653 ; 3 uses
  %i.er = add i32 %i.eq, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  %i.et = load i32, ptr %i.es, align 4, !tbaa !654
  %i.eu = add i32 %i.er, %i.et                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.pre.i.i = load i32, ptr %i.ev, align 8, !tbaa !652 ; 3 uses
  %i.ez = xor i32 %i.eq, -1
  %i.fa = zext i32 %i.eq to i64
  %umax.i = call i32 @llvm.umax.i32(i32 %.pre.i.i, i32 %i.eu)
  %wide.trip.count.i = zext i32 %umax.i to i64
  %exitcond.not.i228.not = icmp ult i32 %.pre.i.i, %i.eu
  br i1 %exitcond.not.i228.not, label %.lr.ph, label %.thread203.i.i

.lr.ph:                                           ; preds = %bb.ae
  %i.fb = zext i32 %.pre.i.i to i64
  br label %bb.ag

bb.af:                                            ; preds = %bb.al
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread203.i.i, label %bb.ag, !llvm.loop !762

bb.ag:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv.i229 = phi i64 [ %i.fb, %.lr.ph ], [ %indvars.iv.next.i, %bb.af ] ; 5 uses
  %i.fc = icmp eq i64 %indvars.iv.i229, 0
  br i1 %i.fc, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i128.i.i = icmp samesign ugt i64 %indvars.iv.i229, %i.fa
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !149
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fe ; 2 uses
  br i1 %.not.i128.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv.i229
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fj = trunc nuw i64 %indvars.iv.i229 to i32
  %i.fk = add i32 %i.fj, %i.ez
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.in.i.i.i = phi ptr [ %i.fm, %bb.aj ], [ %i.fi, %bb.ai ], [ %i.ey, %bb.ag ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !63 ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i229, 1 ; 3 uses
  %i.fn = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %i.fn, ptr %i.ev, align 8, !tbaa !652
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !68
  %i.fq = icmp ugt i32 %i.fp, 1
  br i1 %i.fq, label %bb.al, label %.loopexit212.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.fs = load i32, ptr %i.fr, align 4            ; 2 uses
  %i.ft = and i32 %i.fs, 65536
  %.not209.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not209.i.i, label %bb.am, label %bb.af, !llvm.loop !762

bb.am:                                            ; preds = %bb.al
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.fv = or disjoint i32 %i.fs, 65536
  store i32 %i.fv, ptr %i.fu, align 4
  %i.fw = load i32, ptr %i.i, align 8, !tbaa !643 ; 2 uses
  %i.fx = load i32, ptr %i.j, align 4, !tbaa !770 ; 2 uses
  %.not.i.i130.i.i = icmp ult i32 %i.fw, %i.fx
  br i1 %.not.i.i130.i.i, label %._crit_edge.i.i145.i.i, label %bb.an

._crit_edge.i.i145.i.i:                           ; preds = %bb.am
  %.pre.i.i146.i.i = load ptr, ptr %6, align 8, !tbaa !642
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit149.i.i

bb.an:                                            ; preds = %bb.am
  %i.fy = shl i32 %i.fx, 1                        ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ga)
          to label %.noexc147.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc147.i.i:                                    ; preds = %bb.an
  %i.gc = load i32, ptr %i.i, align 8, !tbaa !643 ; 4 uses
  %.not.i.i.i131.i.i = icmp eq i32 %i.gc, 0
  %.pre.i.i.i132.i.i = load ptr, ptr %6, align 8, !tbaa !642 ; 10 uses
  br i1 %.not.i.i.i131.i.i, label %._crit_edge.i.i.i138.i.i, label %.lr.ph.i.i.i133.i.i

.lr.ph.i.i.i133.i.i:                              ; preds = %.noexc147.i.i
  %.pre.i.i.i132.i.i239 = ptrtoaddr ptr %.pre.i.i.i132.i.i to i64
  %i.gd = ptrtoaddr ptr %i.gb to i64
  %wide.trip.count.i.i.i134.i.i = zext i32 %i.gc to i64 ; 5 uses
  %min.iters.check242 = icmp ult i32 %i.gc, 4
  %i.ge = sub i64 %.pre.i.i.i132.i.i239, %i.gd
  %diff.check240 = icmp ugt i64 %i.ge, -32
  %or.cond253 = select i1 %min.iters.check242, i1 true, i1 %diff.check240
  br i1 %or.cond253, label %scalar.ph241.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph.i.i.i133.i.i
  %n.vec244 = and i64 %wide.trip.count.i.i.i134.i.i, 4294967292 ; 3 uses
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph243
  %index246 = phi i64 [ 0, %vector.ph243 ], [ %index.next249, %vector.body245 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index246 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i132.i.i, i64 %index246 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load247 = load <2 x ptr>, ptr %i.gg, align 8, !tbaa !645
  %wide.load248 = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !645
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <2 x ptr> %wide.load247, ptr %i.gf, align 8, !tbaa !645
  store <2 x ptr> %wide.load248, ptr %i.gi, align 8, !tbaa !645
  %index.next249 = add nuw i64 %index246, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next249, %n.vec244
  br i1 %i.gj, label %middle.block250, label %vector.body245, !llvm.loop !763

middle.block250:                                  ; preds = %vector.body245
  %cmp.n251 = icmp eq i64 %n.vec244, %wide.trip.count.i.i.i134.i.i
  br i1 %cmp.n251, label %._crit_edge.i.i.i138.i.i, label %scalar.ph241.preheader

scalar.ph241.preheader:                           ; preds = %.lr.ph.i.i.i133.i.i, %middle.block250
  %indvars.iv.i.i.i135.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i133.i.i ], [ %n.vec244, %middle.block250 ] ; 3 uses
  %xtraiter292 = and i64 %wide.trip.count.i.i.i134.i.i, 3 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %scalar.ph241.prol.loopexit, label %scalar.ph241.prol

scalar.ph241.prol:                                ; preds = %scalar.ph241.preheader, %scalar.ph241.prol
  %indvars.iv.i.i.i135.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i136.i.i.prol, %scalar.ph241.prol ], [ %indvars.iv.i.i.i135.i.i.ph, %scalar.ph241.preheader ] ; 3 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %scalar.ph241.prol ], [ 0, %scalar.ph241.preheader ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i.i.i135.i.i.prol
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i132.i.i, i64 %indvars.iv.i.i.i135.i.i.prol
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !645
  store ptr %i.gm, ptr %i.gk, align 8, !tbaa !645
  %indvars.iv.next.i.i.i136.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i135.i.i.prol, 1 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %scalar.ph241.prol.loopexit, label %scalar.ph241.prol, !llvm.loop !764

scalar.ph241.prol.loopexit:                       ; preds = %scalar.ph241.prol, %scalar.ph241.preheader
  %indvars.iv.i.i.i135.i.i.unr = phi i64 [ %indvars.iv.i.i.i135.i.i.ph, %scalar.ph241.preheader ], [ %indvars.iv.next.i.i.i136.i.i.prol, %scalar.ph241.prol ]
  %i.gn = sub nsw i64 %indvars.iv.i.i.i135.i.i.ph, %wide.trip.count.i.i.i134.i.i
  %i.go = icmp ugt i64 %i.gn, -4
  br i1 %i.go, label %._crit_edge.i.i.i138.i.i, label %scalar.ph241

._crit_edge.i.i.i138.i.i:                         ; preds = %scalar.ph241.prol.loopexit, %scalar.ph241, %middle.block250, %.noexc147.i.i
  %.not.i.i.i.i139.i.i = icmp eq ptr %.pre.i.i.i132.i.i, %i.h
  %i.gp = icmp eq ptr %.pre.i.i.i132.i.i, null
  %or.cond.i.i.i.i140.i.i = or i1 %.not.i.i.i.i139.i.i, %i.gp
  br i1 %or.cond.i.i.i.i140.i.i, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i142.i.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i.i138.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i132.i.i)
          to label %.noexc148.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc148.i.i:                                    ; preds = %bb.ao
  %.pre2.pre.i.i141.i.i = load i32, ptr %i.i, align 8, !tbaa !643
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i142.i.i

scalar.ph241:                                     ; preds = %scalar.ph241.prol.loopexit, %scalar.ph241
  %indvars.iv.i.i.i135.i.i = phi i64 [ %indvars.iv.next.i.i.i136.i.i.3, %scalar.ph241 ], [ %indvars.iv.i.i.i135.i.i.unr, %scalar.ph241.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i.i.i135.i.i
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i132.i.i, i64 %indvars.iv.i.i.i135.i.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !645
  store ptr %i.gs, ptr %i.gq, align 8, !tbaa !645
  %indvars.iv.next.i.i.i136.i.i = add nuw nsw i64 %indvars.iv.i.i.i135.i.i, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i.i.i136.i.i
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i132.i.i, i64 %indvars.iv.next.i.i.i136.i.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !645
  store ptr %i.gv, ptr %i.gt, align 8, !tbaa !645
  %indvars.iv.next.i.i.i136.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i135.i.i, 2 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i.i.i136.i.i.1
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i132.i.i, i64 %indvars.iv.next.i.i.i136.i.i.1
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !645
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !645
  %indvars.iv.next.i.i.i136.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i135.i.i, 3 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i.i.i136.i.i.2
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i132.i.i, i64 %indvars.iv.next.i.i.i136.i.i.2
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !645
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !645
  %indvars.iv.next.i.i.i136.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i135.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i137.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i136.i.i.3, %wide.trip.count.i.i.i134.i.i
  br i1 %exitcond.not.i.i.i137.i.i.3, label %._crit_edge.i.i.i138.i.i, label %scalar.ph241, !llvm.loop !765

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i142.i.i: ; preds = %.noexc148.i.i, %._crit_edge.i.i.i138.i.i
  %.pre2.i.i143.i.i = phi i32 [ %i.gc, %._crit_edge.i.i.i138.i.i ], [ %.pre2.pre.i.i141.i.i, %.noexc148.i.i ]
  store ptr %i.gb, ptr %6, align 8, !tbaa !642
  store i32 %i.fy, ptr %i.j, align 4, !tbaa !770
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit149.i.i

_ZN13ast_fast_markILj1EE4markEP3ast.exit149.i.i:  ; preds = %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i142.i.i, %._crit_edge.i.i145.i.i
  %i.hc = phi i32 [ %i.fw, %._crit_edge.i.i145.i.i ], [ %.pre2.i.i143.i.i, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i142.i.i ] ; 2 uses
  %i.hd = phi ptr [ %.pre.i.i146.i.i, %._crit_edge.i.i145.i.i ], [ %i.gb, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i142.i.i ]
  %i.he = zext i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  store ptr %.0.i.i.i, ptr %i.hf, align 8, !tbaa !645
  %i.hg = add i32 %i.hc, 1
  store i32 %i.hg, ptr %i.i, align 8, !tbaa !643
  %.pre270.i.i = load i32, ptr %i.s, align 8, !tbaa !649
  br label %.loopexit212.i.i

.loopexit212.i.i:                                 ; preds = %bb.ak, %_ZN13ast_fast_markILj1EE4markEP3ast.exit149.i.i
  %i.hh = phi i32 [ %.pre270.i.i, %_ZN13ast_fast_markILj1EE4markEP3ast.exit149.i.i ], [ %i.v, %bb.ak ] ; 2 uses
  %i.hi = load i32, ptr %i.t, align 4, !tbaa !648 ; 2 uses
  %.not.i150.i.i = icmp ult i32 %i.hh, %i.hi
  br i1 %.not.i150.i.i, label %._crit_edge.i164.i.i, label %bb.ap

._crit_edge.i164.i.i:                             ; preds = %.loopexit212.i.i
  %.pre.i165.i.i = load ptr, ptr %4, align 8, !tbaa !647
  br label %bb.au

bb.ap:                                            ; preds = %.loopexit212.i.i
  %i.hj = shl i32 %i.hi, 1                        ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 4
  %i.hm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.hl)
          to label %.noexc166.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc166.i.i:                                    ; preds = %bb.ap
  %i.hn = load i32, ptr %i.s, align 8, !tbaa !649 ; 5 uses
  %.not.i.i151.i.i = icmp eq i32 %i.hn, 0
  %.pre.i.i152.i.i = load ptr, ptr %4, align 8, !tbaa !647 ; 6 uses
  br i1 %.not.i.i151.i.i, label %._crit_edge.i.i158.i.i, label %.lr.ph.i.i153.i.i

.lr.ph.i.i153.i.i:                                ; preds = %.noexc166.i.i
  %wide.trip.count.i.i154.i.i = zext i32 %i.hn to i64 ; 2 uses
  %xtraiter295 = and i64 %wide.trip.count.i.i154.i.i, 1
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %.epil.preheader, label %.lr.ph.i.i153.i.i.new

.lr.ph.i.i153.i.i.new:                            ; preds = %.lr.ph.i.i153.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i154.i.i, 4294967294
  br label %bb.ar

._crit_edge.i.i158.i.i.loopexit.unr-lcssa:        ; preds = %bb.ar
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %._crit_edge.i.i158.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i158.i.i.loopexit.unr-lcssa, %.lr.ph.i.i153.i.i
  %indvars.iv.i.i155.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i153.i.i ], [ %indvars.iv.next.i.i156.i.i.1, %._crit_edge.i.i158.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i32 %i.hn to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %indvars.iv.i.i155.i.i.epil.init
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i152.i.i, i64 %indvars.iv.i.i155.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false)
  br label %._crit_edge.i.i158.i.i

._crit_edge.i.i158.i.i:                           ; preds = %.epil.preheader, %._crit_edge.i.i158.i.i.loopexit.unr-lcssa, %.noexc166.i.i
  %.not.i.i.i159.i.i = icmp eq ptr %.pre.i.i152.i.i, %i.r
  %i.hr = icmp eq ptr %.pre.i.i152.i.i, null
  %or.cond.i.i.i160.i.i = or i1 %.not.i.i.i159.i.i, %i.hr
  br i1 %or.cond.i.i.i160.i.i, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i.i158.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i152.i.i)
          to label %.noexc167.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc167.i.i:                                    ; preds = %bb.aq
  %.pre2.pre.i161.i.i = load i32, ptr %i.s, align 8, !tbaa !649
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i153.i.i.new
  %indvars.iv.i.i155.i.i = phi i64 [ 0, %.lr.ph.i.i153.i.i.new ], [ %indvars.iv.next.i.i156.i.i.1, %bb.ar ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i153.i.i.new ], [ %niter.next.1, %bb.ar ]
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %indvars.iv.i.i155.i.i
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i152.i.i, i64 %indvars.iv.i.i155.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false)
  %indvars.iv.next.i.i156.i.i = or disjoint i64 %indvars.iv.i.i155.i.i, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %indvars.iv.next.i.i156.i.i
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i152.i.i, i64 %indvars.iv.next.i.i156.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false)
  %indvars.iv.next.i.i156.i.i.1 = add nuw nsw i64 %indvars.iv.i.i155.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i158.i.i.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !8

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i: ; preds = %.noexc167.i.i, %._crit_edge.i.i158.i.i
  %.pre2.i163.i.i = phi i32 [ %i.hn, %._crit_edge.i.i158.i.i ], [ %.pre2.pre.i161.i.i, %.noexc167.i.i ]
  store ptr %i.hm, ptr %4, align 8, !tbaa !647
  store i32 %i.hj, ptr %i.t, align 4, !tbaa !648
  br label %bb.au

.thread203.i.i:                                   ; preds = %bb.af, %bb.ae
  store i32 %i.x, ptr %i.s, align 8, !tbaa !649
  br label %thread-pre-split.i.i

bb.as:                                            ; preds = %.preheader.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.31, i32 noundef 100, ptr noundef nonnull @.str.24)
          to label %bb.at unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %thread-pre-splitthread-pre-split.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i, %._crit_edge.i164.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i, %._crit_edge.i118.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i, %._crit_edge.i97.i.i
  %.sroa.7.2 = phi i32 [ %.sroa.7.8, %._crit_edge.i97.i.i ], [ %.sroa.7.8, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i ], [ %.sroa.7.8, %._crit_edge.i118.i.i ], [ %.sroa.7.8, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i ], [ %.sroa.7.1, %._crit_edge.i164.i.i ], [ %.sroa.7.1, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i ]
  %.sroa.6.2 = phi i1 [ %.sroa.6.6, %._crit_edge.i97.i.i ], [ %.sroa.6.6, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i ], [ %.sroa.6.6, %._crit_edge.i118.i.i ], [ %.sroa.6.6, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i ], [ %.sroa.6.1, %._crit_edge.i164.i.i ], [ %.sroa.6.1, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i ]
  %.sink.i.i = phi i32 [ %i.ci, %._crit_edge.i97.i.i ], [ %.pre2.i96.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i ], [ %i.dk, %._crit_edge.i118.i.i ], [ %.pre2.i117.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i ], [ %i.hh, %._crit_edge.i164.i.i ], [ %.pre2.i163.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i ]
  %.sink333.i.i = phi ptr [ %.pre.i98.i.i, %._crit_edge.i97.i.i ], [ %i.cn, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i ], [ %.pre.i119.i.i, %._crit_edge.i118.i.i ], [ %i.dp, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i ], [ %.pre.i165.i.i, %._crit_edge.i164.i.i ], [ %i.hm, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i ]
  %.0.i301.sink.i.i = phi ptr [ %i.am, %._crit_edge.i97.i.i ], [ %i.am, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i95.i.i ], [ %i.am, %._crit_edge.i118.i.i ], [ %i.am, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i116.i.i ], [ %.0.i.i.i, %._crit_edge.i164.i.i ], [ %.0.i.i.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i162.i.i ]
  %i.hw = zext i32 %.sink.i.i to i64
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %.sink333.i.i, i64 %i.hw ; 2 uses
  store ptr %.0.i301.sink.i.i, ptr %i.hx, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.hy = load i32, ptr %i.s, align 8, !tbaa !649
  %i.hz = add i32 %i.hy, 1
  br label %.preheader.i.i.sink.split

bb.av:                                            ; preds = %thread-pre-split.i.i
  %i.ia = load ptr, ptr %4, align 8, !tbaa !647   ; 3 uses
  %.not.i.i.i169.i.i = icmp eq ptr %i.ia, %i.r
  %i.ib = icmp eq ptr %i.ia, null
  %or.cond.i.i.i170.i.i = or i1 %.not.i.i.i169.i.i, %i.ib
  br i1 %or.cond.i.i.i170.i.i, label %_Z19quick_for_each_exprIZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierE4procEvRT_R13ast_fast_markILj1EEP4expr.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ia)
          to label %_Z19quick_for_each_exprIZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierE4procEvRT_R13ast_fast_markILj1EEP4expr.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #21
  unreachable

_Z19quick_for_each_exprIZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierE4procEvRT_R13ast_fast_markILj1EEP4expr.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %9 = xor i1 %.sroa.6.3, true                    ; 2 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !642   ; 4 uses
  %.pre107 = load i32, ptr %i.i, align 8, !tbaa !643 ; 2 uses
  %i.ie = zext i32 %.pre107 to i64
  %.idx.i.i = shl nuw nsw i64 %i.ie, 3            ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %.pre107, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i5.preheader

.lr.ph.i.i5.preheader:                            ; preds = %_Z19quick_for_each_exprIZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierE4procEvRT_R13ast_fast_markILj1EEP4expr.exit
  %i.ig = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ih = lshr exact i64 %i.ig, 3
  %i.ii = add nuw nsw i64 %i.ih, 1
  %xtraiter310 = and i64 %i.ii, 3                 ; 2 uses
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %.lr.ph.i.i5.prol.loopexit, label %.lr.ph.i.i5.prol

.lr.ph.i.i5.prol:                                 ; preds = %.lr.ph.i.i5.preheader, %.lr.ph.i.i5.prol
  %.09.i.i.prol = phi ptr [ %i.in, %.lr.ph.i.i5.prol ], [ %.pre, %.lr.ph.i.i5.preheader ] ; 2 uses
  %prol.iter312 = phi i64 [ %prol.iter312.next, %.lr.ph.i.i5.prol ], [ 0, %.lr.ph.i.i5.preheader ]
  %i.ij = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !645
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = and i32 %i.il, -65537
  store i32 %i.im, ptr %i.ik, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter312.next = add i64 %prol.iter312, 1   ; 2 uses
  %prol.iter312.cmp.not = icmp eq i64 %prol.iter312.next, %xtraiter310
  br i1 %prol.iter312.cmp.not, label %.lr.ph.i.i5.prol.loopexit, label %.lr.ph.i.i5.prol, !llvm.loop !766

.lr.ph.i.i5.prol.loopexit:                        ; preds = %.lr.ph.i.i5.prol, %.lr.ph.i.i5.preheader
  %.09.i.i.unr = phi ptr [ %.pre, %.lr.ph.i.i5.preheader ], [ %i.in, %.lr.ph.i.i5.prol ]
  %i.io = icmp ult i64 %i.ig, 24
  br i1 %i.io, label %.loopexit.loopexit.i, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph.i.i5.prol.loopexit, %.lr.ph.i.i5
  %.09.i.i = phi ptr [ %i.ji, %.lr.ph.i.i5 ], [ %.09.i.i.unr, %.lr.ph.i.i5.prol.loopexit ] ; 5 uses
  %i.ip = load ptr, ptr %.09.i.i, align 8, !tbaa !645
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = and i32 %i.ir, -65537
  store i32 %i.is, ptr %i.iq, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !645
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = and i32 %i.iw, -65537
  store i32 %i.ix, ptr %i.iv, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !645
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = and i32 %i.jb, -65537
  store i32 %i.jc, ptr %i.ja, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !645
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = and i32 %i.jg, -65537
  store i32 %i.jh, ptr %i.jf, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i6.3 = icmp eq ptr %i.ji, %i.if
  br i1 %.not.i.i6.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i5

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i5, %.lr.ph.i.i5.prol.loopexit
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !642
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_Z19quick_for_each_exprIZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierE4procEvRT_R13ast_fast_markILj1EEP4expr.exit
  %i.jj = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre, %_Z19quick_for_each_exprIZNK3smt13model_checker16is_safe_for_mbqiEP10quantifierE4procEvRT_R13ast_fast_markILj1EEP4expr.exit ] ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !643
  %.not.i.i.i.i7 = icmp eq ptr %i.jj, %i.h
  %i.jk = icmp eq ptr %i.jj, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i7, %i.jk
  br i1 %or.cond.i.i.i.i, label %_ZN13ast_fast_markILj1EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jj)
          to label %_ZN13ast_fast_markILj1EED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #21
  unreachable

_ZN13ast_fast_markILj1EED2Ev.exit:                ; preds = %bb.c, %.loopexit.i, %bb.ay
  %.sroa.6.8133137 = phi i1 [ %9, %bb.ay ], [ %9, %.loopexit.i ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ba

.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.y, %.noexc102.i.i, %bb.t, %bb.k, %bb.j, %bb.at, %bb.as, %.noexc125.i.i, %bb.ad, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.w, %bb.v, %bb.o, %bb.n
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp255

bb.ba:                                            ; preds = %bb.a, %_ZN13ast_fast_markILj1EED2Ev.exit
  %.0 = phi i1 [ %.sroa.6.8133137, %_ZN13ast_fast_markILj1EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.0
}

declare void @_ZN3smt7context9get_modelER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(10728), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3smt12model_finder24restrict_sks_to_inst_setEPNS_7contextEP10quantifierRK10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !636    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN3refI5modelE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !640
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !640
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN3refI5modelE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.a) #20, !inline_history !771
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_ZN3refI5modelE7dec_refEv.exit unwind label %bb.d

_ZN3refI5modelE7dec_refEv.exit:                   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3smt15scoped_ctx_pushD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185
  invoke void @_ZN3smt7context3popEj(ptr noundef nonnull align 8 dereferenceable(10728) %i.a, i32 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !642    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !643  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx.i = shl nuw nsw i64 %i.d, 3               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.g = lshr exact i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load ptr, ptr %.09.i.prol, align 8, !tbaa !645
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65537
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !772

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %i.f, 24
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %.09.i, align 8, !tbaa !645
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -65537
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !645
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -65537
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !645
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, -65537
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !645
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -65537
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !642
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !643
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i.i = icmp eq ptr %i.ai, %i.aj
  %i.ak = icmp eq ptr %i.ai, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ak
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #21
  unreachable

_ZN6bufferIP3astLb0ELj16EED2Ev.exit:              ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt13model_checker16init_aux_contextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.symbol, align 8              ; 5 uses
  %2 = alloca %class.params_ref, align 8          ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 816) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !633, !nonnull !65, !align !66
  tail call void @_ZN10smt_paramsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(816) %i.c, ptr noundef nonnull align 8 dereferenceable(816) %i.g)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZN10scoped_ptrI10smt_paramsEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z7deallocI10smt_paramsEvPT_(ptr noundef %i.h)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !72
  br label %_ZN10scoped_ptrI10smt_paramsEaSEPS0_.exit
end_hunk_0
