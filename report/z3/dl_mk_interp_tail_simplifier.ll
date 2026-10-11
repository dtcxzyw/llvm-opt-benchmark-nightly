Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_interp_tail_simplifier?download=true
inline.NumInlined: 1777
inline.NumDeleted: 561
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z7deallocIN7datalog25mk_interp_tail_simplifier14normalizer_cfgEEvPT_:bb.a
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i, align 8, !tbaa !288 ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !289, !nonnull !69, !align !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !82
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !82
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.k)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i unwind label %bb.f

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.j
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfgD2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.s = phi ptr [ %.pre.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.t)
          to label %_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfgD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #18
  unreachable

_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfgD2Ev.exit: ; preds = %bb.b, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13bool_rewriterD2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %i.y) #17
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfgD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7datalog25mk_interp_tail_simplifierD0Ev(ptr noundef nonnull align 8 dereferenceable(424) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN7datalog25mk_interp_tail_simplifierD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 424) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog25mk_interp_tail_simplifier13simplify_exprEP3appR7obj_refI4expr11ast_managerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.33, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284, !nonnull !69, !align !70
  store ptr null, ptr %3, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429, !nonnull !69, !align !70
  invoke void @_ZN11th_rewriterclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !287  ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  invoke void @_ZN12rewriter_tplIN7datalog25mk_interp_tail_simplifier14normalizer_cfgEEclEP4exprR7obj_refIS4_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(536) %i.g, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN12rewriter_tplIN7datalog25mk_interp_tail_simplifier14normalizer_cfgEEclEP4exprR7obj_refIS4_11ast_managerE.exit unwind label %bb.g

_ZN12rewriter_tplIN7datalog25mk_interp_tail_simplifier14normalizer_cfgEEclEP4exprR7obj_refIS4_11ast_managerE.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !429, !nonnull !69, !align !70
  %i.k = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11th_rewriterclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN12rewriter_tplIN7datalog25mk_interp_tail_simplifier14normalizer_cfgEEclEP4exprR7obj_refIS4_11ast_managerE.exit
  %i.l = load ptr, ptr %3, align 8, !tbaa !75     ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !80, !nonnull !69, !align !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !82
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !82
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull %i.l)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.g:                                             ; preds = %bb.b, %_ZN12rewriter_tplIN7datalog25mk_interp_tail_simplifier14normalizer_cfgEEclEP4exprR7obj_refIS4_11ast_managerE.exit, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.t
}

declare void @_ZN11th_rewriterclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier31propagate_variable_equivalencesEPNS_4ruleER7obj_refIS1_NS_12rule_managerEE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 7 uses
  %4 = alloca %class.obj_ref.33, align 8          ; 9 uses
  %5 = alloca %class.obj_ref.33, align 8          ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !290, !nonnull !69, !align !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !436  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !439, !nonnull !69, !align !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = tail call noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcRKS_b(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext true)
  br i1 %i.h, label %bb.b, label %bb.cm

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !291  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !97   ; 3 uses
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !285  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  store i32 0, ptr %i.p, align 4, !tbaa !92
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !276
  %i.t = icmp eq i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, 0
  %or.cond.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !280  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !275  ; 5 uses
  %.not11.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 2305843009213693951
  %i.ac = and i64 %i.ab, 2305843009213693951      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 3 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ad, 4611686018427387902
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.x, %.lr.ph.i.preheader.new ], [ %i.am, %bb.j ] ; 4 uses
  %.0712.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.1.i.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.af = load ptr, ptr %.013.i, align 8, !tbaa !279
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %.013.i, align 8, !tbaa !279
  br label %.lr.ph.i.1

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = add i32 %.0712.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g, %bb.f
  %.1.i = phi i32 [ %i.ah, %bb.g ], [ %.0712.i, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !279
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.1
  store ptr null, ptr %i.ai, align 8, !tbaa !279
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.al = add i32 %.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i.1 = phi i32 [ %i.al, %bb.i ], [ %.1.i, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !430

._crit_edge.i.unr-lcssa:                          ; preds = %bb.j
  %lcmp.mod.not = trunc i64 %i.ad to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.x, %.lr.ph.i.preheader ], [ %i.am, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.0712.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod257 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %i.an = load ptr, ptr %.013.i.epil.init, align 8, !tbaa !279
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.epil.preheader
  store ptr null, ptr %.013.i.epil.init, align 8, !tbaa !279
  br label %._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add i32 %.0712.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %bb.l, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.ap, %bb.l ], [ %.0712.i.epil.init, %bb.k ]
  %i.aq = shl i32 %.1.i.lcssa, 2
  %i.ar = icmp ugt i32 %i.z, 16
  %i.as = mul i32 %i.z, 3
  %i.at = icmp ugt i32 %i.aq, %i.as
  %or.cond18.i = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond18.i, label %bb.m, label %._crit_edge.thread.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.au = icmp eq ptr %i.x, null
  br i1 %i.au, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.x)
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !275
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i: ; preds = %bb.n, %bb.m
  %i.av = phi i32 [ %i.z, %bb.m ], [ %.pre.i, %bb.n ]
  store ptr null, ptr %i.q, align 8, !tbaa !280
  %i.aw = lshr i32 %i.av, 1                       ; 3 uses
  store i32 %i.aw, ptr %i.y, align 8, !tbaa !275
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %i.az = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ay) ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.ay, i1 false), !tbaa !279
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i
  store ptr %i.az, ptr %i.q, align 8, !tbaa !280
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i, %._crit_edge.i, %bb.e
  store i32 0, ptr %i.r, align 4, !tbaa !276
  store i32 0, ptr %i.u, align 8, !tbaa !277
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit: ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit, %._crit_edge.thread.i
  %i.ba = icmp ult i32 %i.j, %i.l
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = zext i32 %i.j to i64
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !285
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68, !nonnull !69, !align !70
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 672
  %i.bh = tail call noundef i32 @_ZN7datalog12rule_counter16get_max_rule_varERKNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(224) %i.bg, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.bi = add i32 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN12substitution5resetEv(ptr noundef nonnull align 8 dereferenceable(124) %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN14var_offset_mapI11expr_offsetE7reserveEjj(ptr noundef nonnull align 8 dereferenceable(20) %i.bk, i32 noundef 1, i32 noundef %i.bi)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.bl, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284, !nonnull !69, !align !70 ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  store i64 %i.bo, ptr %3, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !76
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !285 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph:      ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

bb.o:                                             ; preds = %.lr.ph, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.bv = phi ptr [ %.pre, %.lr.ph ], [ %i.ch, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv.next, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !93
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, -8
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = icmp eq ptr %i.bv, null
  br i1 %i.cb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !92 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !92
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %bb.q, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i51 = load ptr, ptr %i.n, align 8, !tbaa !285 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i51, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !92
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.p, %bb.q
  %i.ch = phi ptr [ %.pre.i51, %bb.q ], [ %i.bv, %bb.p ] ; 3 uses
  %i.ci = phi i32 [ %.pre2.i, %bb.q ], [ %i.cd, %bb.p ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ck
  store ptr %i.ca, ptr %i.cl, align 8, !tbaa !288
  %i.cm = add i32 %i.ci, 1
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.l, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !431

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit
  %i.cn = phi ptr [ %i.bs, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.ml, %_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit ] ; 3 uses
  %.033213 = phi i1 [ false, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %.134, %_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit ] ; 18 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !92 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZN6vectorIP4exprLb0EjE4backEv.exit

_ZN6vectorIP4exprLb0EjE4backEv.exit:              ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.cr = add i32 %i.cp, -1                       ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !288 ; 17 uses
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 7 uses
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = and i32 %i.cw, 65535
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.r, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.r:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !295
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !298 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.r
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !302
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp eq i32 %i.dg, 8
  %i.di = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %i.di, label %bb.s, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.s:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !303
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit.thread, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit:       ; preds = %bb.s, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.r, %_ZN6vectorIP4exprLb0EjE4backEv.exit
  %trunc = trunc i32 %i.cw to i16
  switch i16 %trunc, label %.critedge [
    i16 1, label %bb.t
    i16 0, label %bb.x
  ]

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit.thread: ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !288 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7datalog25mk_interp_tail_simplifier14transform_ruleEPNS_4ruleER7obj_refIS1_NS_12rule_managerEE:bb.a
  %i.ri = phi ptr [ %i.rd, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162.thread373 ], [ %i.qq, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162 ], [ null, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i158 ]
  %.pr.i73285370 = phi ptr [ %.pr.i73285378, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162.thread373 ], [ %.pr.i73287, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162 ], [ null, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %.pr209 = load ptr, ptr %12, align 8, !tbaa !75
  br label %bb.de

bb.de:                                            ; preds = %bb.bx, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %.pr.i73288 = phi ptr [ %.pr.i73, %bb.bx ], [ %.pr.i73285370, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 2 uses
  %i.rj = phi ptr [ %i.y, %bb.bx ], [ %i.ri, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %.pr.i149282 = phi ptr [ %i.z, %bb.bx ], [ %.pr.i149279371, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rk = phi ptr [ %i.aa, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rl = phi ptr [ %i.ab, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rm = phi ptr [ %i.mn, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rn = phi ptr [ %i.mo, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.ro = phi ptr [ %i.mp, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rp = phi ptr [ %i.ms, %bb.bx ], [ %.pr209, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 3 uses
  %.253 = phi i1 [ false, %bb.bx ], [ %.152372, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 2 uses
  %.1 = phi i1 [ false, %bb.bx ], [ %i.qv, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %.not.i.i165 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i165, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rq = load ptr, ptr %i.n, align 8, !tbaa !80, !nonnull !69, !align !70
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !82
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !82
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.dg, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rq, ptr noundef nonnull %i.rp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rv = landingpad { ptr, i32 }
          catch ptr null
  %i.rw = extractvalue { ptr, i32 } %i.rv, 0
  call void @__clang_call_terminate(ptr %i.rw) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.de, %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.rx = load ptr, ptr %11, align 8, !tbaa !83   ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i166, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ry = load ptr, ptr %i.k, align 8, !tbaa !84, !nonnull !69, !align !70
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !82
  %i.sb = add i32 %i.sa, -1                       ; 2 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !82
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.dj, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ry, ptr noundef nonnull %i.rx)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sd = landingpad { ptr, i32 }
          catch ptr null
  %i.se = extractvalue { ptr, i32 } %i.sd, 0
  call void @__clang_call_terminate(ptr %i.se) #18
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.sf = load ptr, ptr %10, align 8, !tbaa !83   ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i167, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78, label %bb.dl

bb.dl:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.sg = load ptr, ptr %i.g, align 8, !tbaa !84, !nonnull !69, !align !70
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !82
  %i.sj = add i32 %i.si, -1                       ; 2 uses
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !82
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %bb.dm, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sg, ptr noundef nonnull %i.sf)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sl = landingpad { ptr, i32 }
          catch ptr null
  %i.sm = extractvalue { ptr, i32 } %i.sl, 0
  call void @__clang_call_terminate(ptr %i.sm) #18
  unreachable

bb.do:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cg, %bb.co, %bb.dc
  %.pn.pn = phi { ptr, i32 } [ %i.oy, %bb.cg ], [ %i.qz, %bb.dc ], [ %i.qg, %bb.co ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body202

.body202:                                         ; preds = %.loopexit213, %.loopexit.split-lp214, %bb.bt, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i198, %bb.do
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.do ], [ %i.ls, %bb.bp ], [ %i.md, %bb.bt ], [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i198 ], [ %lpad.loopexit215, %.loopexit213 ], [ %lpad.loopexit.split-lp216, %.loopexit.split-lp214 ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %.body

.body:                                            ; preds = %.loopexit537, %.loopexit.split-lp538, %.loopexit532, %.loopexit.split-lp533, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %.body202, %bb.ae
  %.pn61.pn = phi { ptr, i32 } [ %i.ee, %bb.ae ], [ %.pn.pn.pn, %.body202 ], [ %i.fy, %bb.an ], [ %i.hv, %bb.ax ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp535, %.loopexit.split-lp533 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185 ], [ %lpad.loopexit534, %.loopexit532 ], [ %lpad.loopexit539, %.loopexit537 ], [ %lpad.loopexit.split-lp540, %.loopexit.split-lp538 ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.dq

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78: ; preds = %bb.dm, %bb.dl, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %.1, label %bb.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit: ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78, %bb.j, %._ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exitthread-pre-split_crit_edge
  %i.sn = phi ptr [ %.pr212.pre, %._ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exitthread-pre-split_crit_edge ], [ %.pr.i73, %bb.j ], [ %.pr.i73288, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78 ] ; 2 uses
  %.455 = phi i1 [ true, %._ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exitthread-pre-split_crit_edge ], [ true, %bb.j ], [ %.253, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78 ] ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i169, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit171, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread: ; preds = %bb.g, %bb.d, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit
  %.455383 = phi i1 [ %.455, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit ], [ true, %bb.d ], [ true, %bb.g ]
  %i.so = phi ptr [ %i.sn, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit ], [ %1, %bb.d ], [ %1, %bb.g ]
  %i.sp = load ptr, ptr %i.d, align 8, !tbaa !100, !nonnull !69, !align !70
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.sp, ptr noundef nonnull %i.so)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit171 unwind label %bb.dp

bb.dp:                                            ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread
  %i.sq = landingpad { ptr, i32 }
          catch ptr null
  %i.sr = extractvalue { ptr, i32 } %i.sq, 0
  call void @__clang_call_terminate(ptr %i.sr) #18
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit171: ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i74, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread
  %.455384 = phi i1 [ %.455, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit ], [ %.455383, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread ], [ true, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret i1 %.455384

bb.dq:                                            ; preds = %bb.n, %.body, %bb.h
  %.pn67 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.ao, %bb.n ], [ %.pn61.pn, %.body ]
  call void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  resume { ptr, i32 } %.pn67
}

declare noundef zeroext i1 @_ZNK7datalog12rule_manager15has_quantifiersERKNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_Z11flatten_andP4exprR10ref_vectorIS_11ast_managerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100, !nonnull !69, !align !70
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit unwind label %bb.c

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier15transform_rulesERKNS_8rule_setERS1_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.146, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290, !nonnull !69, !align !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !364  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK7datalog8rule_set3endEv.exit

_ZNK7datalog8rule_set3endEv.exit:                 ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !92   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7datalog8rule_set3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %4 = trunc nuw i8 %.135 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %_ZNK7datalog8rule_set3endEv.exit
  %.020.lcssa = phi i1 [ false, %_ZNK7datalog8rule_set3endEv.exit ], [ %4, %._crit_edge.loopexit ], [ false, %bb.a ]
  ret i1 %.020.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %.01927 = phi ptr [ %i.e, %.lr.ph ], [ %i.u, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 2 uses
  %.02026 = phi i8 [ 0, %.lr.ph ], [ %.135, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.m = load ptr, ptr %.01927, align 8, !tbaa !446 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !101
  store ptr %i.c, ptr %i.l, align 8, !tbaa !356
  %i.n = invoke noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier14transform_ruleEPNS_4ruleER7obj_refIS1_NS_12rule_managerEE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !101   ; 5 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7datalog12rule_manager21mk_rule_rewrite_proofERNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(1104) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %.pre)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7datalog8rule_set8add_ruleEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull %.pre)
          to label %.thread unwind label %bb.g

.thread:                                          ; preds = %bb.e
  %i.o = icmp ne ptr %i.m, %.pre
  %5 = zext i1 %i.o to i8
  %6 = or i8 %.02026, %5
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.134 = phi i8 [ %6, %.thread ], [ 1, %bb.h ]
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !100, !nonnull !69, !align !70
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.r, ptr noundef nonnull %.pre)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit: ; preds = %bb.h, %bb.i
  %.135 = phi i8 [ 1, %bb.h ], [ %.134, %bb.i ]   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.u = getelementptr inbounds nuw i8, ptr %.01927, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

bb.k:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  call void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN7datalog12rule_manager21mk_rule_rewrite_proofERNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN7datalog8rule_set8add_ruleEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog25mk_interp_tail_simplifierclERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.scoped_ptr.150, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !364  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread, label %_ZNK7datalog8rule_set13get_num_rulesEv.exit

_ZNK7datalog8rule_set13get_num_rulesEv.exit:      ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !92
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK7datalog8rule_set13get_num_rulesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 248) ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !290, !nonnull !69, !align !70
  tail call void @_ZN7datalog8rule_setC1ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(248) %i.g, ptr noundef nonnull align 8 dereferenceable(3028) %i.i)
  store ptr %i.g, ptr %2, align 8, !tbaa !367
  %i.j = invoke noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier15transform_rulesERKNS_8rule_setERS1_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %i.g)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %i.g, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10scoped_ptrIN7datalog8rule_setEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN7datalog8rule_setD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.g) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit unwind label %bb.e

_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit:    ; preds = %bb.f, %bb.d
  %i.l = phi ptr [ %i.g, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread

_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread: ; preds = %bb.a, %_ZNK7datalog8rule_set13get_num_rulesEv.exit, %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit
  %.0 = phi ptr [ %i.l, %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit ], [ null, %_ZNK7datalog8rule_set13get_num_rulesEv.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN7datalog8rule_setC1ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(3028)) unnamed_addr #2

declare void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10scoped_ptrIN7datalog8rule_setEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !367    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z7deallocIN7datalog8rule_setEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7datalog8rule_setD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.a) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_Z7deallocIN7datalog8rule_setEEvPT_.exit unwind label %bb.c

_Z7deallocIN7datalog8rule_setEEvPT_.exit:         ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog16rule_transformer6plugin6cancelEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14var_offset_mapI11expr_offsetE7reserveEjj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !450
  %i.c = icmp ugt i32 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ugt i32 %2, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %2, %1                           ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !368    ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i: ; preds = %bb.b
  %.not.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.not.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !92   ; 2 uses
  %.not15.i = icmp ugt i32 %i.g, %i.k
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %bb.c

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.h, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.k, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i ]
  %i.l = freeze i32 %.0.i16.i.ph                  ; 2 uses
  br label %thread-pre-split.i

bb.c:                                             ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i
  store i32 %i.g, ptr %i.j, align 4, !tbaa !92
  br label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i
  %i.m = phi ptr [ %.pr.pre.i, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i ], [ %.ph, %thread-pre-split.i.preheader ] ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i: ; preds = %thread-pre-split.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92
  %i.q = icmp ugt i32 %i.g, %i.p
  br i1 %i.q, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i, label %bb.d

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !368
  br label %thread-pre-split.i, !llvm.loop !447

bb.d:                                             ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 %i.g, ptr %i.r, align 4, !tbaa !92
  %i.s = zext i32 %i.g to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.s
  %.not1218.i = icmp eq i32 %i.l, %i.g
  br i1 %.not1218.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.u = zext i32 %i.l to i64                     ; 2 uses
  %i.v = getelementptr [24 x i8], ptr %i.m, i64 %i.u ; 2 uses
  %reass.add = sub nsw i64 %i.s, %i.u
  %reass.mul = mul nsw i64 %reass.add, 24         ; 2 uses
  %i.w = add nsw i64 %reass.mul, -24
  %i.x = urem i64 %i.w, 24
  %i.y = sub nsw i64 %reass.mul, %i.x
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.019.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.v, %.lr.ph.preheader.i ] ; 4 uses
  store ptr null, ptr %.019.i, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !452
  %i.ab = getelementptr inbounds nuw i8, ptr %.019.i, i64 24 ; 2 uses
  %.not12.i = icmp eq ptr %i.ab, %i.t
  br i1 %.not12.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit, label %.lr.ph.i, !llvm.loop !448

_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit: ; preds = %.lr.ph.i, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i, %bb.c, %bb.d
  store i32 %2, ptr %i.d, align 4, !tbaa !453
  store i32 %1, ptr %i.a, align 8, !tbaa !450
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !454
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !454
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.f, label %_ZN14var_offset_mapI11expr_offsetE5resetEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !368   ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %._crit_edge.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE3endEv.exit.i
end_hunk_1
begin_hunk_2_@_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfg19detect_equivalencesER10ref_vectorI4expr11ast_managerEb:bb.a
  %i.cb = icmp ugt i32 %i.h, %.02770
  br i1 %i.cb, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cc = zext i32 %.02770 to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cc
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ck, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ce = load ptr, ptr %.06.i.i, align 8, !tbaa !288 ; 3 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !289, !nonnull !69, !align !70
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !82
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !82
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.s, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cf, ptr noundef nonnull %i.ce)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cl = icmp ult ptr %i.ck, %i.ca
  br i1 %i.cl, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i47 = load ptr, ptr %i.a, align 8, !tbaa !285 ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pre.i47, null
  br i1 %.not.i.i48, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cm = phi ptr [ %.pre.i47, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.f, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  store i32 %.02770, ptr %i.cn, align 4, !tbaa !92
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %bb.q, %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %.02866 = phi i32 [ %i.bz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ %i.bz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ 0, %bb.a ], [ %.3, %bb.q ]
  %.02764 = phi i32 [ %.02770, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ %.02770, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ 0, %bb.a ], [ %.1, %bb.q ]
  %i.co = icmp ne i32 %.02866, %.02764
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i1 %i.co
}

declare noundef i32 @_ZN13bool_rewriter11mk_not_coreEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEET_SB_SB_T0_.exit
  %i.g = icmp eq i64 %i.ak, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph39, !llvm.loop !507

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa35 = phi i64 [ %i.c, %.lr.ph ], [ %i.am, %bb.b ]
  %.023.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = lshr exact i64 %.lcssa35, 3              ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.014.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !288
  call void @_ZSt13__adjust_heapIPP4exprlS1_N9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.h, ptr noundef %i.l, ptr %3)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.m = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !508

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.n, %.lr.ph.i5.i ], [ %.023.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !288
  %i.p = load ptr, ptr %0, align 8, !tbaa !288
  store ptr %i.p, ptr %i.n, align 8, !tbaa !288
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  call void @_ZSt13__adjust_heapIPP4exprlS1_N9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.o, ptr %3)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_SB_T0_.exit, !llvm.loop !509

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.0152238 = phi i64 [ %i.ak, %bb.b ], [ %2, %.lr.ph ]
  %.02337 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.am, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = lshr i64 %i.u, 4
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %.02337, i64 -8
  call void @_ZSt22__move_median_to_firstIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.w, ptr noundef nonnull %i.x, ptr %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph39
  %.013.i.i = phi ptr [ %.02337, %.lr.ph39 ], [ %.114.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph39 ], [ %i.ac, %bb.g ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.1.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %i.ac, %bb.e ] ; 9 uses
  %i.y = load ptr, ptr %.1.i.i, align 8, !tbaa !288
  %i.z = load ptr, ptr %0, align 8, !tbaa !288
  %i.aa = call noundef i32 @_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmp8cmp_exprEP4exprS4_i(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.y, ptr noundef %i.z, i32 noundef 4)
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ab, label %bb.e, label %.preheader.i.i, !llvm.loop !510

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.e ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !288
  %i.ae = load ptr, ptr %.114.i.i, align 8, !tbaa !288
  %i.af = call noundef i32 @_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmp8cmp_exprEP4exprS4_i(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ad, ptr noundef %i.ae, i32 noundef 4)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.preheader.i.i, label %bb.f, !llvm.loop !511

bb.f:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.g, label %_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEET_SB_SB_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %.1.i.i, align 8, !tbaa !288
  %i.aj = load ptr, ptr %.114.i.i, align 8, !tbaa !288
  store ptr %i.aj, ptr %.1.i.i, align 8, !tbaa !288
  store ptr %i.ai, ptr %.114.i.i, align 8, !tbaa !288
  br label %bb.d, !llvm.loop !512

_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEET_SB_SB_T0_.exit: ; preds = %bb.f
  %i.ak = add nsw i64 %.0152238, -1               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt16__introsort_loopIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02337, i64 noundef %i.ak, ptr %3)
  %i.al = ptrtoint ptr %.1.i.i to i64
  %i.am = sub i64 %i.al, %i.a                     ; 3 uses
  %i.an = icmp sgt i64 %i.am, 128
  br i1 %i.an, label %bb.b, label %_ZSt14__partial_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_SB_T0_.exit, !llvm.loop !507

_ZSt14__partial_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_SB_SB_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEET_SB_SB_T0_.exit, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIPP4exprlS1_N9__gnu_cxx5__ops15_Iter_comp_iterIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 4 uses
  store ptr %4, ptr %5, align 8
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.029, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.k = call noundef i32 @_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmp8cmp_exprEP4exprS4_i(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.i, ptr noundef %i.j, i32 noundef 4)
  %i.l = icmp eq i32 %i.k, -1
  %i.m = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.l, i64 %i.m, i64 %i.e ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !288
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.029
  store ptr %i.o, ptr %i.p, align 8, !tbaa !288
  %i.q = icmp slt i64 %spec.select, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !513

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %7 = trunc i64 %2 to i1
  br i1 %7, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = add nsw i64 %2, -2
  %i.s = ashr exact i64 %i.r, 1
  %i.t = icmp eq i64 %.0.lcssa, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = shl nsw i64 %.0.lcssa, 1
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.x, ptr %i.y, align 8, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.128 = phi i64 [ %i.v, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.z = load i64, ptr %5, align 8, !tbaa !76
  store i64 %i.z, ptr %6, align 8, !tbaa !76
  %i.aa = icmp sgt i64 %.128, %1
  br i1 %i.aa, label %.lr.ph.i, label %_ZSt11__push_heapIPP4exprlS1_N9__gnu_cxx5__ops14_Iter_comp_valIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.01317.i = phi i64 [ %.018.i, %bb.e ], [ %.128, %bb.d ] ; 3 uses
  %.018.in.i = add nsw i64 %.01317.i, -1
  %.018.i = sdiv i64 %.018.in.i, 2                ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.018.i ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !288
  %i.ad = call noundef i32 @_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmp8cmp_exprEP4exprS4_i(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ac, ptr noundef %3, i32 noundef 4)
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %_ZSt11__push_heapIPP4exprlS1_N9__gnu_cxx5__ops14_Iter_comp_valIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !288
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !288
  %i.ah = icmp sgt i64 %.018.i, %1
  br i1 %i.ah, label %.lr.ph.i, label %_ZSt11__push_heapIPP4exprlS1_N9__gnu_cxx5__ops14_Iter_comp_valIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !514

_ZSt11__push_heapIPP4exprlS1_N9__gnu_cxx5__ops14_Iter_comp_valIN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmpEEEEvT_T0_SC_T1_RT2_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.013.lcssa.i = phi i64 [ %.128, %bb.d ], [ %.01317.i, %.lr.ph.i ], [ %.018.i, %bb.e ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i
  store ptr %3, ptr %i.ai, align 8, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7datalog25mk_interp_tail_simplifier14normalizer_cfg8expr_cmp8cmp_exprEP4exprS4_i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.thread80, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !295
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.c
  %i.j = load i32, ptr %i.i, align 8, !tbaa !302
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 8
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.d, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.d:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !303
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !288
  br label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit:       ; preds = %bb.b, %bb.c, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.d, %bb.e
  %.079 = phi ptr [ %1, %bb.c ], [ %i.t, %bb.e ], [ %1, %bb.d ], [ %1, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %1, %bb.b ] ; 8 uses
  %.0.i = phi i1 [ false, %bb.c ], [ true, %bb.e ], [ false, %bb.d ], [ false, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ false, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 65535
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54

bb.f:                                             ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !298 ; 3 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i52, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54, label %_ZNK11ast_manager6is_notEPK4expr.exit.i53

_ZNK11ast_manager6is_notEPK4expr.exit.i53:        ; preds = %bb.f
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !302
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 8
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.g, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54

bb.g:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i53
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !303
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !288
  br label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54:     ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, %bb.f, %_ZNK11ast_manager6is_notEPK4expr.exit.i53, %bb.g, %bb.h
  %.078 = phi ptr [ %2, %bb.f ], [ %i.am, %bb.h ], [ %2, %bb.g ], [ %2, %_ZNK11ast_manager6is_notEPK4expr.exit.i53 ], [ %2, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit ] ; 8 uses
  %.0.i51 = phi i1 [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ false, %_ZNK11ast_manager6is_notEPK4expr.exit.i53 ], [ false, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit ] ; 2 uses
  %i.an = icmp eq ptr %.079, %.078
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54
  %i.ao = xor i1 %.0.i51, true
  %i.ap = and i1 %.0.i, %i.ao
  %i.aq = xor i1 %.0.i, %.0.i51
  %i.ar = sext i1 %i.aq to i32
  %i.as = select i1 %i.ap, i32 1, i32 %i.ar
  br label %.thread80

bb.j:                                             ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit54
  %i.at = getelementptr inbounds nuw i8, ptr %.079, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 65535
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 65535
  %i.ba = icmp eq i32 %i.az, 0                    ; 2 uses
  br i1 %i.aw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ba, label %.thread80, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %.079, align 4, !tbaa !516
  %i.bc = load i32, ptr %.078, align 4, !tbaa !516
  %i.bd = tail call noundef i32 @llvm.ucmp.i32.i32(i32 %i.bb, i32 %i.bc)
  br label %.thread80

bb.m:                                             ; preds = %bb.j
  br i1 %i.ba, label %bb.n, label %.thread80

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.079, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !295 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.078, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !295 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.bh
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !516
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !516
  %i.bk = tail call noundef i32 @llvm.ucmp.i32.i32(i32 %i.bi, i32 %i.bj)
  br label %.thread80

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.079, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !303 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.078, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !303 ; 2 uses
  %.not46 = icmp eq i32 %i.bm, %i.bo
  br i1 %.not46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call noundef i32 @llvm.ucmp.i32.i32(i32 %i.bm, i32 %i.bo)
  br label %.thread80

bb.r:                                             ; preds = %bb.p
  %i.bq = icmp eq i32 %3, 0
  br i1 %i.bq, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %.not4984.not = icmp eq i32 %i.bm, 0
  br i1 %.not4984.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %.079, i64 32
end_hunk_2
