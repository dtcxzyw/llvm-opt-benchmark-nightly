Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/maxcore?download=true
inline.NumInlined: 1975
inline.NumDeleted: 740
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7maxcore9get_coresER6vectorIN3opt13weighted_coreELb1EjE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.bn:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.fo = invoke noundef i32 @_ZN7maxcore20check_sat_hill_climbER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt0 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt1: ; preds = %bb.au, %bb.av
  %i.fp = load ptr, ptr %6, align 8, !tbaa !143   ; 5 uses
  %.not.i.i.jt1 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.jt1, label %_ZN3refI5modelED2Ev.exit.jt1, label %bb.bo

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt0: ; preds = %bb.bn
  %i.fq = load ptr, ptr %6, align 8, !tbaa !143   ; 5 uses
  %.not.i.i.jt0 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.jt0, label %_ZN3refI5modelED2Ev.exit.jt0, label %bb.bp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.af, %bb.x, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.fr = load ptr, ptr %6, align 8, !tbaa !143   ; 5 uses
  %.not.i.i.jt3 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.jt3, label %_ZN3refI5modelED2Ev.exit.jt3, label %bb.bq

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !154
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !154
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.br, label %_ZN3refI5modelED2Ev.exit.jt1

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !154
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !154
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bs, label %_ZN3refI5modelED2Ev.exit.jt0

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !154
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 8, !tbaa !154
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bt, label %_ZN3refI5modelED2Ev.exit.jt3

bb.br:                                            ; preds = %bb.bo
  %i.ge = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fp) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fp)
          to label %_ZN3refI5modelED2Ev.exit.jt1 unwind label %.loopexit108

bb.bs:                                            ; preds = %bb.bp
  %i.gg = load ptr, ptr %i.fq, align 8, !tbaa !28
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fq) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fq)
          to label %_ZN3refI5modelED2Ev.exit.jt0 unwind label %.loopexit108

bb.bt:                                            ; preds = %bb.bq
  %i.gi = load ptr, ptr %i.fr, align 8, !tbaa !28
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fr) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fr)
          to label %_ZN3refI5modelED2Ev.exit.jt3 unwind label %.loopexit108

.loopexit108:                                     ; preds = %bb.bt, %bb.bs, %bb.br
  %lpad.loopexit109 = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %lpad.loopexit109, 0
  call void @__clang_call_terminate(ptr %i.gk) #21
  unreachable

_ZN3refI5modelED2Ev.exit.jt1:                     ; preds = %bb.bo, %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !57  ; 5 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1

_ZN3refI5modelED2Ev.exit.jt0:                     ; preds = %bb.bp, %bb.bs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gn = load ptr, ptr %i.r, align 8, !tbaa !57  ; 5 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0

_ZN3refI5modelED2Ev.exit.jt3:                     ; preds = %bb.bq, %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gp = load ptr, ptr %i.r, align 8, !tbaa !57  ; 5 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1:       ; preds = %_ZN3refI5modelED2Ev.exit.jt1
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !155 ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gu
  %.not.i60.jt1 = icmp eq i32 %i.gs, 0
  br i1 %.not.i60.jt1, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1, label %.lr.ph.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0:       ; preds = %_ZN3refI5modelED2Ev.exit.jt0
  %i.gw = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !155 ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gz
  %.not.i60.jt0 = icmp eq i32 %i.gx, 0
  br i1 %.not.i60.jt0, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0, label %.lr.ph.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3:       ; preds = %_ZN3refI5modelED2Ev.exit.jt3
  %i.hb = getelementptr inbounds i8, ptr %i.gp, i64 -4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !155 ; 2 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.he
  %.not.i60.jt3 = icmp eq i32 %i.hc, 0
  br i1 %.not.i60.jt3, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3
  %i.hg = phi ptr [ %i.gv, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ %i.ha, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ %i.hf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ]
  %i.hh = phi ptr [ %i.gl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ %i.gn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ %i.gp, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ]
  %.0107 = phi i32 [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ 3, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ]
  %.117106 = phi i32 [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ %i.fo, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ %i.aq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ho, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.hh, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hi = load ptr, ptr %.06.i.i, align 8, !tbaa !156 ; 3 uses
  %i.hj = load ptr, ptr %5, align 8, !tbaa !157, !nonnull !54, !align !55
  %.not.i.i.i.i.i61 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i61, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !159
  %i.hm = add i32 %i.hl, -1                       ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !159
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bv, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hj, ptr noundef nonnull %i.hi)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bw

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bv, %bb.bu, %.lr.ph.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.hp = icmp ult ptr %i.ho, %i.hg
  br i1 %i.hp, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i62 = load ptr, ptr %i.r, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %.pre.i62, null
  br i1 %.not.i.i.i63, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %i.hq = getelementptr inbounds i8, ptr %.pre.i62, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hq)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1
  %i.hr = getelementptr inbounds i8, ptr %i.gl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hr)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0
  %i.hs = getelementptr inbounds i8, ptr %i.gn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hs)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3
  %i.ht = getelementptr inbounds i8, ptr %i.gp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ht)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.hu) #21
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  switch i32 %.0107, label %.loopexit71.loopexit [
    i32 0, label %.backedge
    i32 3, label %.loopexit71
  ]

.backedge:                                        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0
  %.016.be = phi i32 [ %.117106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %i.fo, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0 ] ; 2 uses
  %i.hx = icmp eq i32 %.016.be, -1
  br i1 %i.hx, label %bb.e, label %.loopexit71

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1: ; preds = %_ZN3refI5modelED2Ev.exit.jt1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit71

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0, %_ZN3refI5modelED2Ev.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.backedge

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3: ; preds = %_ZN3refI5modelED2Ev.exit.jt3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit71

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.bm
  %.pn27 = phi { ptr, i32 } [ %.pn.pn, %bb.bm ], [ %i.ci, %bb.t ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp164, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bx

bb.bx:                                            ; preds = %.body, %bb.ad
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %.body ], [ %i.da, %bb.ad ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn27.pn

.loopexit71.loopexit:                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  br label %.loopexit71

.loopexit71:                                      ; preds = %.backedge, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %.loopexit71.loopexit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1
  %.221 = phi i32 [ %i.aq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3 ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1 ], [ %.117106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %.016.be, %.backedge ], [ 1, %.loopexit71.loopexit ]
  %i.hy = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i64, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %.loopexit71
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hz)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #21
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.loopexit71, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.221
}

declare void @_ZN3opt5coresC1ER6solverRNS_11lns_contextE(ptr noundef nonnull align 8 dereferenceable(117), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN3opt5cores11updt_paramsER10params_ref(ptr noundef nonnull align 8 dereferenceable(117), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3opt5coresclEv(ptr noundef nonnull align 8 dereferenceable(117)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3opt5coresD2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN7obj_mapI4expr8rationalED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZSt9destroy_nIPN7obj_mapI4expr8rationalE13obj_map_entryEjET_S6_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZSt8_DestroyIN7obj_mapI4expr8rationalE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZSt8_DestroyIN7obj_mapI4expr8rationalE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.047.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN7obj_mapI4expr8rationalE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 8
  %i.g = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZSt8_DestroyIN7obj_mapI4expr8rationalE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZSt8_DestroyIN7obj_mapI4expr8rationalE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i, i64 40
  %i.l = add i32 %.08.i.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt9destroy_nIPN7obj_mapI4expr8rationalE13obj_map_entryEjET_S6_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt9destroy_nIPN7obj_mapI4expr8rationalE13obj_map_entryEjET_S6_T0_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN7obj_mapI4expr8rationalE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i, %bb.b
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN7obj_mapI4expr8rationalED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZSt9destroy_nIPN7obj_mapI4expr8rationalE13obj_map_entryEjET_S6_T0_.exit.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

_ZN7obj_mapI4expr8rationalED2Ev.exit:             ; preds = %bb.a, %_ZSt9destroy_nIPN7obj_mapI4expr8rationalE13obj_map_entryEjET_S6_T0_.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN6vectorIN3opt13weighted_coreELb1EjE7destroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN6vectorIN3opt13weighted_coreELb1EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN7obj_mapI4expr8rationalED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

_ZN6vectorIN3opt13weighted_coreELb1EjED2Ev.exit:  ; preds = %_ZN7obj_mapI4expr8rationalED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %_ZN6vectorIN3opt13weighted_coreELb1EjED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i, %_ZN6vectorIN3opt13weighted_coreELb1EjED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7maxcore9get_coresER6vectorIS0_IN3opt13weighted_softELb1EjELb1EjE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %class.ptr_vector, align 8          ; 13 uses
  %5 = alloca %class.ref_vector, align 8          ; 12 uses
  %6 = alloca %class.ref, align 8                 ; 13 uses
  %7 = alloca %class.vector.91, align 8           ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !288    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE5resetEv.exit, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !155
  %i.d = tail call noundef ptr @_ZNSt14_Destroy_n_auxILb0EE11__destroy_nIP6vectorIN3opt13weighted_softELb1EjEjEET_S7_T0_(ptr noundef nonnull %i.a, i32 noundef %i.c) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !288
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  store i32 0, ptr %i.f, align 4, !tbaa !155
  br label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE5resetEv.exit

_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE5resetEv.exit: ; preds = %bb.a, %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE5resetEv.exit, %.backedge
  %i.t = load ptr, ptr %4, align 8, !tbaa !57     ; 2 uses
  %.not.i31 = icmp eq ptr %i.t, null
  br i1 %.not.i31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  store i32 0, ptr %i.u, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.w = ptrtoint ptr %i.v to i64
  store i64 %i.w, ptr %5, align 8, !tbaa !56
  store ptr null, ptr %i.h, align 8, !tbaa !57
end_hunk_0
begin_hunk_1_@_ZN7maxcore9get_coresER6vectorIS0_IN3opt13weighted_softELb1EjELb1EjE:bb.a
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !154
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bj, label %_ZN3refI5modelED2Ev.exit.jt1

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.jt0
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !154
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 8, !tbaa !154
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bk, label %_ZN3refI5modelED2Ev.exit.jt0

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.jt3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !154
  %i.fz = add i32 %i.fy, -1                       ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !154
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bl, label %_ZN3refI5modelED2Ev.exit.jt3

bb.bi:                                            ; preds = %bb.be
  %i.gb = load ptr, ptr %i.fh, align 8, !tbaa !28
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fh) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fh)
          to label %_ZN3refI5modelED2Ev.exit unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bf
  %i.gd = load ptr, ptr %i.fi, align 8, !tbaa !28
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fi) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fi)
          to label %_ZN3refI5modelED2Ev.exit.jt1 unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bg
  %i.gf = load ptr, ptr %i.fj, align 8, !tbaa !28
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fj) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fj)
          to label %_ZN3refI5modelED2Ev.exit.jt0 unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.gh = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.fk) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.fk)
          to label %_ZN3refI5modelED2Ev.exit.jt3 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bi
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #21
  unreachable

_ZN3refI5modelED2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %bb.be, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gl = load ptr, ptr %i.h, align 8, !tbaa !57  ; 5 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZN3refI5modelED2Ev.exit.jt1:                     ; preds = %bb.bf, %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gn = load ptr, ptr %i.h, align 8, !tbaa !57  ; 5 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1

_ZN3refI5modelED2Ev.exit.jt0:                     ; preds = %bb.bg, %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gp = load ptr, ptr %i.h, align 8, !tbaa !57  ; 5 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0

_ZN3refI5modelED2Ev.exit.jt3:                     ; preds = %bb.bh, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !57  ; 5 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN3refI5modelED2Ev.exit
  %i.gt = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !155 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gw
  %.not.i52 = icmp eq i32 %i.gu, 0
  br i1 %.not.i52, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1:       ; preds = %_ZN3refI5modelED2Ev.exit.jt1
  %i.gy = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !155 ; 2 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hb
  %.not.i52.jt1 = icmp eq i32 %i.gz, 0
  br i1 %.not.i52.jt1, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1, label %.lr.ph.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0:       ; preds = %_ZN3refI5modelED2Ev.exit.jt0
  %i.hd = getelementptr inbounds i8, ptr %i.gp, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !155 ; 2 uses
  %i.hf = zext i32 %i.he to i64
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hg
  %.not.i52.jt0 = icmp eq i32 %i.he, 0
  br i1 %.not.i52.jt0, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0, label %.lr.ph.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3:       ; preds = %_ZN3refI5modelED2Ev.exit.jt3
  %i.hi = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !155 ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hl
  %.not.i52.jt3 = icmp eq i32 %i.hj, 0
  br i1 %.not.i52.jt3, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.hn = phi ptr [ %i.hc, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ %i.hh, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ %i.hm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ], [ %i.gx, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.ho = phi ptr [ %i.gn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ %i.gp, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ %i.gr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ], [ %i.gl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %.1102 = phi i32 [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ 3, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ], [ %.096, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.21899 = phi i32 [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1 ], [ %i.er, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0 ], [ %i.ac, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3 ], [ %.11795, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.hv, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ho, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hp = load ptr, ptr %.06.i.i, align 8, !tbaa !156 ; 3 uses
  %i.hq = load ptr, ptr %5, align 8, !tbaa !157, !nonnull !54, !align !55
  %.not.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !159
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !159
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.bo, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hq, ptr noundef nonnull %i.hp)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bo, %bb.bn, %.lr.ph.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.hw = icmp ult ptr %i.hv, %i.hn
  br i1 %i.hw, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i53 = load ptr, ptr %i.h, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i53, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %.1101 = phi i32 [ %.1102, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.096, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %.21898 = phi i32 [ %.21899, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.11795, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.hx = phi ptr [ %.pre.i53, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.gl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hy)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp123.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt1
  %i.hz = getelementptr inbounds i8, ptr %i.gn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1 unwind label %.loopexit.split-lp.loopexit.split-lp123.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt0
  %i.ia = getelementptr inbounds i8, ptr %i.gp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ia)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0 unwind label %.loopexit.split-lp.loopexit.split-lp123.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.jt3
  %i.ib = getelementptr inbounds i8, ptr %i.gr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ib)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3 unwind label %.loopexit.split-lp.loopexit.split-lp123.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp123.loopexit.split-lp: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %lpad.loopexit.split-lp144, 0
  call void @__clang_call_terminate(ptr %i.ic) #21
  unreachable

bb.bp:                                            ; preds = %bb.bo
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN3refI5modelED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %.1100 = phi i32 [ %.096, %_ZN3refI5modelED2Ev.exit ], [ %.1102, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.1101, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ]
  %.21897 = phi i32 [ %.11795, %_ZN3refI5modelED2Ev.exit ], [ %.21899, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.21898, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  switch i32 %.1100, label %.loopexit62.loopexit [
    i32 0, label %.backedge
    i32 3, label %.loopexit62
  ]

.backedge:                                        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0
  %.016.be = phi i32 [ %.21897, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %i.er, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0 ] ; 2 uses
  %i.if = icmp eq i32 %.016.be, -1
  br i1 %i.if, label %bb.b, label %.loopexit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1: ; preds = %_ZN3refI5modelED2Ev.exit.jt1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt0: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt0, %_ZN3refI5modelED2Ev.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.backedge

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3: ; preds = %_ZN3refI5modelED2Ev.exit.jt3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit62

bb.bq:                                            ; preds = %bb.az, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.az ], [ %i.ep, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.bq
  %.pn27 = phi { ptr, i32 } [ %.pn, %bb.bq ], [ %i.bu, %bb.q ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.br

bb.br:                                            ; preds = %.body, %bb.aa
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %.body ], [ %i.cm, %bb.aa ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn27.pn

.loopexit62.loopexit:                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  br label %.loopexit62

.loopexit62:                                      ; preds = %.backedge, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %.loopexit62.loopexit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1
  %.222 = phi i32 [ %i.ac, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt3 ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.jt1 ], [ %.21897, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %.016.be, %.backedge ], [ 1, %.loopexit62.loopexit ]
  %i.ig = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i54, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %.loopexit62
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ih)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #21
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.loopexit62, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.222
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !288    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !155
  %i.d = invoke noundef ptr @_ZNSt14_Destroy_n_auxILb0EE11__destroy_nIP6vectorIN3opt13weighted_softELb1EjEjEET_S7_T0_(ptr noundef nonnull %i.a, i32 noundef %i.c)
          to label %.noexc unwind label %bb.b     ; 0 uses

.noexc:                                           ; preds = %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !288
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.f)
          to label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit unwind label %bb.b

_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7maxcore13get_mus_modelER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 16 uses
  %3 = alloca %class.rational, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 7 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !67
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141
  store i32 0, ptr %2, align 8, !tbaa !66
  store i8 %i.c, ptr %i.a, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !66
  %i.k = load i8, ptr %i.f, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.f, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !177, !nonnull !54, !align !55 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !143    ; 5 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !154
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !154
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.s) #20, !inline_history !4
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  store ptr null, ptr %1, align 8, !tbaa !143
  %i.z = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.g unwind label %bb.j       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc10 unwind label %bb.j, !inline_history !12

.noexc10:                                         ; preds = %bb.g
  %i.ad = load ptr, ptr %1, align 8, !tbaa !143
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.noexc10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !285 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN16check_sat_result9get_modelER3refI5modelE.exit unwind label %bb.j, !inline_history !12

bb.j:                                             ; preds = %bb.t, %bb.s, %bb.i, %bb.g, %bb.e, %bb.u, %bb.f, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke void @_ZN3mus14get_best_modelER3refI5modelE(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %2, align 8, !tbaa !155
  %i.am = load i32, ptr %3, align 8, !tbaa !155
  store i32 %i.am, ptr %2, align 8, !tbaa !155
  store i32 %i.al, ptr %3, align 8, !tbaa !155
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !247
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !247
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !247
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !247
  %i.aq = load i8, ptr %i.a, align 4              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4             ; 2 uses
  %i.at = and i8 %i.aq, -4
  %i.au = and i8 %i.as, -4
  %i.av = and i8 %i.as, 3
  %i.aw = or disjoint i8 %i.av, %i.at
  store i8 %i.aw, ptr %i.a, align 4
  %i.ax = and i8 %i.aq, 3
  %i.ay = or disjoint i8 %i.au, %i.ax
  store i8 %i.ay, ptr %i.ar, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !155
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !155
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !155
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !155
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !247
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !247
  store ptr %i.be, ptr %i.i, align 8, !tbaa !247
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !247
  %i.bf = load i8, ptr %i.f, align 4              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 4             ; 2 uses
  %i.bi = and i8 %i.bf, -4
  %i.bj = and i8 %i.bh, -4
  %i.bk = and i8 %i.bh, 3
  %i.bl = or disjoint i8 %i.bk, %i.bi
  store i8 %i.bl, ptr %i.f, align 4
  %i.bm = and i8 %i.bf, 3
  %i.bn = or disjoint i8 %i.bj, %i.bm
  store i8 %i.bn, ptr %i.bg, align 4
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %.noexc.i, %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN16check_sat_result9get_modelER3refI5modelE.exit

bb.n:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.w

_ZN16check_sat_result9get_modelER3refI5modelE.exit: ; preds = %bb.h, %bb.i, %_ZN8rationalD2Ev.exit
  %.pr = load ptr, ptr %1, align 8, !tbaa !143
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN16check_sat_result9get_modelER3refI5modelE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bt = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  %i.bu = load i8, ptr %i.f, align 4
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  %i.bx = load i32, ptr %i.e, align 8
  %i.by = icmp eq i32 %i.bx, 1
  %i.bz = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = load i32, ptr %i.ca, align 8
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %i.ch, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ci = load i8, ptr %i.a, align 4
  %i.cj = and i8 %i.ci, 1
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cm = load i8, ptr %i.cl, align 4
  %i.cn = and i8 %i.cm, 1
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cp = load i32, ptr %2, align 8, !tbaa !66
  %i.cq = load i32, ptr %i.bs, align 8, !tbaa !66
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cs = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %.noexc12 unwind label %bb.j

.noexc12:                                         ; preds = %bb.s
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.u, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.cu = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_ZltRK8rationalS1_.exit unwind label %bb.j

_ZltRK8rationalS1_.exit:                          ; preds = %bb.t
  br i1 %i.cu, label %bb.u, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread

bb.u:                                             ; preds = %.split, %.noexc12, %_ZltRK8rationalS1_.exit
  invoke void @_ZN7maxcore17update_assignmentER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread unwind label %bb.j

_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread: ; preds = %.noexc10, %.split, %.noexc12, %bb.u, %_ZltRK8rationalS1_.exit, %_ZN16check_sat_result9get_modelER3refI5modelE.exit
  %i.cv = load ptr, ptr %1, align 8, !tbaa !143
  %i.cw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i14 unwind label %bb.v

.noexc.i14:                                       ; preds = %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit15 unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i14, %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #21
  unreachable

_ZN8rationalD2Ev.exit15:                          ; preds = %.noexc.i14
  %i.cz = icmp ne ptr %i.cv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %i.cz

bb.w:                                             ; preds = %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.br, %bb.n ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7maxcore13minimize_coreER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177, !nonnull !54, !align !55 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  tail call void @_ZN3mus5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN3mus8add_softEjPKP4expr.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !155  ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN3mus8add_softEjPKP4expr.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %wide.trip.count.i = zext i32 %i.q to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !156
  %i.t = tail call noundef i32 @_ZN3mus8add_softEP4expr(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.s) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3mus8add_softEjPKP4expr.exit, label %.lr.ph.i, !llvm.loop !417

_ZN3mus8add_softEjPKP4expr.exit:                  ; preds = %.lr.ph.i, %bb.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = tail call noundef i32 @_ZN3mus7get_musER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.u) ; 2 uses
  %.not = icmp eq i32 %i.v, 1
  br i1 %.not, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.d:                                             ; preds = %_ZN3mus8add_softEjPKP4expr.exit
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !155  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  %.not.i9 = icmp eq i32 %i.z, 0
  br i1 %.not.i9, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.aj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.w, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ad = load ptr, ptr %.06.i.i, align 8, !tbaa !156 ; 3 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !157, !nonnull !54, !align !55
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !159
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !159
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ad)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %i.ac
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.al = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.w, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 0, ptr %i.am, align 4, !tbaa !155
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %bb.d, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.an = phi ptr [ null, %bb.d ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.al, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.ar = phi ptr [ %i.bi, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.an, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 4 uses
  %i.as = phi ptr [ %i.bj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.ap, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 3 uses
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i12, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !155
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.i10, %i.av
  br i1 %i.aw, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i10
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i11, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !159
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bc = icmp eq ptr %i.ar, null
  br i1 %i.bc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !155 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !155
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !155
  %.pre.i13 = load ptr, ptr %i.ao, align 8, !tbaa !57
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.j, %bb.i
  %i.bi = phi ptr [ %.pre.i.i.i, %bb.j ], [ %i.ar, %bb.i ] ; 3 uses
  %i.bj = phi ptr [ %.pre.i13, %bb.j ], [ %i.as, %bb.i ] ; 2 uses
  %i.bk = phi i32 [ %.pre2.i.i.i, %bb.j ], [ %i.be, %bb.i ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bm
  store ptr %i.ay, ptr %i.bn, align 8, !tbaa !156
  %i.bo = add i32 %i.bk, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !155
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1
  %i.bp = icmp eq ptr %i.bj, null
  br i1 %i.bp, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, !llvm.loop !13

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZN3mus8add_softEjPKP4expr.exit, %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %.1 = phi i32 [ 1, %bb.b ], [ 1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit ], [ 1, %bb.a ], [ %i.v, %_ZN3mus8add_softEjPKP4expr.exit ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ 1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt14_Destroy_n_auxILb0EE11__destroy_nIP6vectorIN3opt13weighted_softELb1EjEjEET_S7_T0_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit
  %.013 = phi i32 [ %i.as, %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit ], [ %1, %bb.a ]
  %.0411 = phi ptr [ %i.ar, %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.0411, align 8, !tbaa !250 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit, label %_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i

_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !155  ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i, %_ZN3opt13weighted_softD2Ev.exit
  %.07.i.i.i.i.i.i.i.i = phi i32 [ %i.am, %_ZN3opt13weighted_softD2Ev.exit ], [ %i.c, %_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i ]
  %.046.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZN3opt13weighted_softD2Ev.exit ], [ %i.a, %_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 48
  %i.e = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 64
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN8rationalD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !159
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !159
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.j)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit.i:       ; preds = %bb.d, %bb.c, %_ZN8rationalD2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !237  ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit2.i, label %bb.f

bb.f:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !159
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !159
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit2.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.v, ptr noundef nonnull %i.t)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit2.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit2.i:      ; preds = %bb.g, %bb.f, %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i
  %i.ac = load ptr, ptr %.046.i.i.i.i.i.i.i.i, align 8, !tbaa !237 ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i3.i, label %_ZN3opt13weighted_softD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit2.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !159
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !159
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %_ZN3opt13weighted_softD2Ev.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ac)
          to label %_ZN3opt13weighted_softD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

_ZN3opt13weighted_softD2Ev.exit:                  ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit2.i, %bb.i, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i.i, i64 80
  %i.am = add i32 %.07.i.i.i.i.i.i.i.i, -1        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i: ; preds = %_ZN3opt13weighted_softD2Ev.exit
  %.pre.i.i.i.i = load ptr, ptr %.0411, align 8, !tbaa !250
  br label %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.i.i.i.i

_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.i.i.i.i: ; preds = %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i, %_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i
  %i.an = phi ptr [ %.pre.i.i.i.i, %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i ], [ %i.a, %_ZNK6vectorIN3opt13weighted_softELb1EjE4sizeEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ao)
          to label %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #21
  unreachable

_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit: ; preds = %.lr.ph, %_ZN6vectorIN3opt13weighted_softELb1EjE16destroy_elementsEv.exit.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0411, i64 8 ; 2 uses
  %i.as = add i32 %.013, -1                       ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !418

._crit_edge:                                      ; preds = %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit, %bb.a
  %.04.lcssa = phi ptr [ %0, %bb.a ], [ %i.ar, %_ZSt8_DestroyI6vectorIN3opt13weighted_softELb1EjEEvPT_.exit ]
  ret ptr %.04.lcssa
}

declare void @_ZN3mus14get_best_modelER3refI5modelE(ptr dead_on_unwind writable sret(%class.rational) align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN3mus5resetEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZN3mus7get_musER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i32 @_ZN3mus8add_softEP4expr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !288    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !288
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !155  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !119
  %i.r = load ptr, ptr %1, align 8, !tbaa !139    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !120  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !139
  %i.y = load i64, ptr %i.s, align 8, !tbaa !121
  store i64 %i.y, ptr %i.q, align 8, !tbaa !121
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !120
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !120
  store ptr %i.s, ptr %1, align 8, !tbaa !139
  store i64 0, ptr %i.aa, align 8, !tbaa !120
  store i8 0, ptr %i.s, align 8, !tbaa !121
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !139   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !121
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @__cxa_free_exception(ptr %i.o) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 5 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !288   ; 8 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIP6vectorIN3opt13weighted_softELb1EjEjS4_ESt4pairIT_T1_ES6_T0_S7_.exit, label %_ZNK6vectorIS_IN3opt13weighted_softELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_IN3opt13weighted_softELb1EjELb1EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !155 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aq, 3          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIS_IN3opt13weighted_softELb1EjELb1EjE4sizeEv.exit
  %i.at = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.az ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.ak, i64 %i.az ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep48, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep48, align 8, !tbaa !250
  %wide.load49 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !250
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !250
  store <2 x ptr> %wide.load49, ptr %i.bb, align 8, !tbaa !250
  store <2 x ptr> splat (ptr null), ptr %next.gep48, align 8, !tbaa !250
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 3 uses
  %i.bd = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !250
  store ptr %i.bd, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !250
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !250
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bg = icmp eq ptr %i.be, %i.ar
  br i1 %i.bg, label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !420

_ZSt20uninitialized_move_nIP6vectorIN3opt13weighted_softELb1EjEjS4_ESt4pairIT_T1_ES6_T0_S7_.exit: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !155
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit

_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorIS_IN3opt13weighted_softELb1EjELb1EjE4sizeEv.exit
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !155
  %i.bl = tail call noundef ptr @_ZNSt14_Destroy_n_auxILb0EE11__destroy_nIP6vectorIN3opt13weighted_softELb1EjEjEET_S7_T0_(ptr noundef nonnull %i.ak, i32 noundef %i.bk) ; 0 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !288
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bn)
  br label %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit

_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIP6vectorIN3opt13weighted_softELb1EjEjS4_ESt4pairIT_T1_ES6_T0_S7_.exit, %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZSt20uninitialized_move_nIP6vectorIN3opt13weighted_softELb1EjEjS4_ESt4pairIT_T1_ES6_T0_S7_.exit ], [ %i.ap, %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.bo, ptr %0, align 8, !tbaa !288
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !155
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIS_IN3opt13weighted_softELb1EjELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN3opt13weighted_softELb1EjE9copy_coreERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !250    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorIN3opt13weighted_softELb1EjE8capacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.d = load <2 x i32>, ptr %i.c, align 4, !tbaa !155
  br label %_ZNK6vectorIN3opt13weighted_softELb1EjE8capacityEv.exit

_ZNK6vectorIN3opt13weighted_softELb1EjE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi <2 x i32> [ %i.d, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 0
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 80
  %i.i = or disjoint i64 %i.h, 8
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i) ; 3 uses
  store <2 x i32> %i.e, ptr %i.j, align 4, !tbaa !155
  %.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %.ptr, ptr %0, align 8, !tbaa !250
  %i.k = load ptr, ptr %1, align 8, !tbaa !250    ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZSt18uninitialized_copyIPKN3opt13weighted_softEPS1_ET0_T_S6_S5_.exit, label %_ZNK6vectorIN3opt13weighted_softELb1EjE3endEv.exit

_ZNK6vectorIN3opt13weighted_softELb1EjE3endEv.exit: ; preds = %_ZNK6vectorIN3opt13weighted_softELb1EjE8capacityEv.exit
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !155  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %.not14.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i.i.i, label %_ZSt18uninitialized_copyIPKN3opt13weighted_softEPS1_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIN3opt13weighted_softELb1EjE3endEv.exit, %_ZSt10_ConstructIN3opt13weighted_softEJRKS1_EEvPT_DpOT0_.exit.i.i.i
  %.016.i.i.i.idx = phi i64 [ %.016.i.i.i.add, %_ZSt10_ConstructIN3opt13weighted_softEJRKS1_EEvPT_DpOT0_.exit.i.i.i ], [ 8, %_ZNK6vectorIN3opt13weighted_softELb1EjE3endEv.exit ] ; 3 uses
  %.01215.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN3opt13weighted_softEJRKS1_EEvPT_DpOT0_.exit.i.i.i ], [ %i.k, %_ZNK6vectorIN3opt13weighted_softELb1EjE3endEv.exit ] ; 2 uses
  %.016.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016.i.i.i.idx ; 2 uses
  invoke void @_ZN3opt13weighted_softC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.016.i.i.i.ptr, ptr noundef nonnull align 8 dereferenceable(80) %.01215.i.i.i)
          to label %_ZSt10_ConstructIN3opt13weighted_softEJRKS1_EEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN3opt13weighted_softEJRKS1_EEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 80 ; 2 uses
  %.016.i.i.i.add = add nuw nsw i64 %.016.i.i.i.idx, 80
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN3opt13weighted_softEPS1_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i, !llvm.loop !421

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #20 ; 0 uses
  %.not4.i.i.i.i.i = icmp eq i64 %.016.i.i.i.idx, 8
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN3opt13weighted_softEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.ptr, %bb.c ] ; 2 uses
  tail call void @_ZN3opt13weighted_softD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.05.i.i.i.i.i) #20
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %.016.i.i.i.ptr
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN3opt13weighted_softEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !422

_ZSt8_DestroyIPN3opt13weighted_softEEvT_S3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3opt13weighted_softEEvT_S3_.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #21
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN3opt13weighted_softEEvT_S3_.exit.i.i.i
  unreachable

_ZSt18uninitialized_copyIPKN3opt13weighted_softEPS1_ET0_T_S6_S5_.exit: ; preds = %_ZSt10_ConstructIN3opt13weighted_softEJRKS1_EEvPT_DpOT0_.exit.i.i.i, %_ZNK6vectorIN3opt13weighted_softELb1EjE8capacityEv.exit, %_ZNK6vectorIN3opt13weighted_softELb1EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7maxcore26get_current_correction_setER10ptr_vectorI4exprE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.ref, align 8                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr null, ptr %2, align 8, !tbaa !143
  %i.a = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !12

.noexc:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !143
  %.not4.i = icmp eq ptr %i.e, null
  br i1 %.not4.i, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !285  ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(25) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN16check_sat_result9get_modelER3refI5modelE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !12

_ZN16check_sat_result9get_modelER3refI5modelE.exit: ; preds = %bb.c, %.noexc, %bb.d
  invoke void @_ZN7maxcore17update_assignmentER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZN16check_sat_result9get_modelER3refI5modelE.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !143    ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  store i32 0, ptr %i.m, align 4, !tbaa !155
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit.i

_ZN6vectorIP4exprLb0EjE5resetEv.exit.i:           ; preds = %bb.f, %bb.e
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_ZN3refI5modelED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i: ; preds = %bb.g
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !155  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %.not1213.i = icmp eq i32 %i.r, 0
  br i1 %.not1213.i, label %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i, %bb.k
  %.014.i = phi ptr [ %i.ak, %bb.k ], [ %i.o, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %.014.i, align 8, !tbaa !156 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_ZN5model8is_falseEP4expr(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef %i.v)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %.lr.ph.i
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.noexc5
  %i.x = load ptr, ptr %1, align 8, !tbaa !57     ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !155 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !155
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !155
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i:   ; preds = %.noexc6, %bb.i
  %i.ae = phi i32 [ %.pre2.i.i, %.noexc6 ], [ %i.aa, %bb.i ] ; 2 uses
  %i.af = phi ptr [ %.pre.i.i, %.noexc6 ], [ %i.x, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !156
  %i.aj = add i32 %i.ae, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !155
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i, %.noexc5
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %.not12.i = icmp eq ptr %i.ak, %i.u
  br i1 %.not12.i, label %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit, label %.lr.ph.i

_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit: ; preds = %bb.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !143   ; 2 uses
  %.not.i.i7 = icmp eq ptr %.pre, null
  br i1 %.not.i.i7, label %_ZN3refI5modelED2Ev.exit, label %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit.thread

_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit.thread: ; preds = %bb.g, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i, %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit
  %i.al = phi ptr [ %.pre, %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit ], [ %i.k, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i ], [ %i.k, %bb.g ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !154
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !154
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_ZN3refI5modelED2Ev.exit

bb.l:                                             ; preds = %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit.thread
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.al) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %_ZN3refI5modelED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #21
  unreachable

_ZN3refI5modelED2Ev.exit:                         ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit.i, %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit, %_ZN7maxcore26get_current_correction_setEP5modelR10ptr_vectorI4exprE.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %.lr.ph.i, %bb.d, %bb.b, %_ZN16check_sat_result9get_modelER3refI5modelE.exit, %bb.a
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7maxcore11process_satERK10ptr_vectorI4exprE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref.71, align 8          ; 6 uses
  %3 = alloca %class.obj_ref.71, align 8          ; 6 uses
  %4 = alloca %class.rational, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !56
end_hunk_1
begin_hunk_2_@_ZN7maxcore11process_satERK10ptr_vectorI4exprE:bb.a
          to label %bb.t unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %bb.s
  store ptr null, ptr %i.ag, align 8, !tbaa !143
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.ao, align 8, !tbaa !106
  %i.ap = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit19 unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i, %bb.t
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit19:       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.v:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.v, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.u, %bb.l ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7maxcore14cs_max_resolveERK10ptr_vectorI4exprERK8rational(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.71, align 8          ; 14 uses
  %4 = alloca %class.obj_ref.71, align 8          ; 9 uses
  %5 = alloca %class.obj_ref, align 8             ; 9 uses
  %6 = alloca %class.obj_ref, align 8             ; 12 uses
  %7 = alloca %class.obj_ref, align 8             ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !155
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55 ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !237
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !265
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %6, align 8, !tbaa !265
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.k, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !265
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !155  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ab, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.o, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i, align 8, !tbaa !156 ; 3 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !157, !nonnull !54, !align !55
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !159
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !159
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.w, ptr noundef nonnull %i.v)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.u
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ad = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.o, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  store i32 0, ptr %i.ae, align 4, !tbaa !155
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.b
  %i.af = phi ptr [ %i.ad, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.b ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !57    ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !155 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %.idx.i.i = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i
  %i.am = icmp eq i32 %i.aj, 0
  br i1 %i.am, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.an = phi ptr [ %i.ay, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.af, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.be, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.ag, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !159
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i21
  %i.as = icmp eq ptr %i.an, null
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !155 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !155
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.g
  %.pre.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !155
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc22, %bb.f
  %i.ay = phi ptr [ %.pre.i.i.i.i, %.noexc22 ], [ %i.an, %bb.f ] ; 3 uses
  %i.az = phi i32 [ %.pre2.i.i.i.i, %.noexc22 ], [ %i.au, %bb.f ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store ptr %i.ao, ptr %i.bc, align 8, !tbaa !156
  %i.bd = add i32 %i.az, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.al
  br i1 %i.bf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %.lr.ph.i.i21

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 840
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !424 ; 4 uses
  %.not.i23 = icmp eq ptr %i.bi, null
  br i1 %.not.i23, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !159
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !159
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !265
  %i.bm = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i27, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread.lr.ph

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread.lr.ph: ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread:    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread.lr.ph, %bb.bh
  %i.bp = phi ptr [ %i.bi, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread.lr.ph ], [ %i.eo, %bb.bh ]
  %indvars.iv = phi i64 [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 5 uses
  %i.bq = phi ptr [ %i.bm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread.lr.ph ], [ %i.hu, %bb.bh ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !155
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %bb.h, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i27

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i27:         ; preds = %bb.bh, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit
  %i.bv = phi ptr [ null, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit ], [ null, %bb.bh ], [ %i.bq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread ]
  %.0.i.i = phi i64 [ 0, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit ], [ 0, %bb.bh ], [ %i.bt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread ]
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.bx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.bw, i32 noundef 0, i32 noundef 6, ptr %i.bv, i64 %.0.i.i)
          to label %_ZN11ast_manager5mk_orERK10ptr_vectorI4exprE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.h:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread
  %i.by = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !156
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !156 ; 2 uses
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.ce = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cd, i32 noundef 0, i32 noundef 6, ptr noundef %i.ca, ptr noundef %i.bp)
          to label %_ZN11ast_manager5mk_orEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

_ZN11ast_manager5mk_orEP4exprS1_.exit:            ; preds = %bb.h
  %.not.i30 = icmp eq ptr %i.ce, null             ; 2 uses
  br i1 %.not.i30, label %bb.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i31

_ZN11ast_manager7inc_refEP3ast.exit.i31:          ; preds = %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !159
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !159
  br label %bb.i

bb.i:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i31, %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %i.ci = load ptr, ptr %5, align 8, !tbaa !265   ; 3 uses
  %.not.i4.i32 = icmp eq ptr %i.ci, null
  br i1 %.not.i4.i32, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !266, !nonnull !54, !align !55
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !159
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !159
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cj, ptr noundef nonnull %i.ci)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  store ptr %i.ce, ptr %5, align 8, !tbaa !265
  %i.co = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.co, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.cp = invoke noundef ptr @_ZN3opt18maxsmt_solver_base13mk_fresh_boolEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @.str.33)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.n:                                             ; preds = %bb.m
  %.not.i35 = icmp eq ptr %i.cp, null
  br i1 %.not.i35, label %bb.o, label %_ZN11ast_manager7inc_refEP3ast.exit.i36

_ZN11ast_manager7inc_refEP3ast.exit.i36:          ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !159
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !159
  br label %bb.o

bb.o:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i36, %bb.n
  %i.ct = load ptr, ptr %6, align 8, !tbaa !265   ; 3 uses
  %.not.i4.i37 = icmp eq ptr %i.ct, null
  br i1 %.not.i4.i37, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !266, !nonnull !54, !align !55
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !159
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !159
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cu, ptr noundef nonnull %i.ct)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.q
  store ptr %i.cp, ptr %6, align 8, !tbaa !265
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.da = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cz, i32 noundef 0, i32 noundef 9, ptr noundef %i.cp, ptr noundef %i.ce)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit:      ; preds = %bb.r
  %.not.i41 = icmp eq ptr %i.da, null             ; 2 uses
  br i1 %.not.i41, label %bb.s, label %_ZN11ast_manager7inc_refEP3ast.exit.i42

_ZN11ast_manager7inc_refEP3ast.exit.i42:          ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !159
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !159
  br label %bb.s

bb.s:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i42, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.de = load ptr, ptr %3, align 8, !tbaa !237   ; 3 uses
  %.not.i4.i43 = icmp eq ptr %i.de, null
  br i1 %.not.i4.i43, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !159
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !159
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.df, ptr noundef nonnull %i.de)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  store ptr %i.da, ptr %3, align 8, !tbaa !237
  invoke void @_ZN7maxcore12update_modelEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef %i.cp, ptr noundef %i.ce)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 832
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !234
  %i.dn = icmp eq ptr %i.da, %i.dm
  br i1 %i.dn, label %_ZN7maxcore3addEP4expr.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.x
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.do, ptr noundef %i.da)
          to label %_ZN7maxcore3addEP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7maxcore3addEP4expr.exit:                      ; preds = %.noexc45, %bb.w
  br i1 %.not.i41, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN7maxcore3addEP4expr.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !159
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.y, %_ZN7maxcore3addEP4expr.exit
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !155 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !155
  %i.dy = icmp eq i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.aa, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.aa:                                            ; preds = %bb.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !155
end_hunk_2
begin_hunk_3_@_ZN7maxcore14cs_max_resolveERK10ptr_vectorI4exprERK8rational:bb.a
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !159
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ff, ptr noundef nonnull %i.fe)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.am
  store ptr %i.fa, ptr %3, align 8, !tbaa !237
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 832
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !234
  %i.fn = icmp eq ptr %i.fa, %i.fm
  br i1 %i.fn, label %_ZN7maxcore3addEP4expr.exit65, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.ao
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.fo, ptr noundef %i.fa)
          to label %_ZN7maxcore3addEP4expr.exit65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7maxcore3addEP4expr.exit65:                    ; preds = %.noexc63, %bb.an
  br i1 %.not.i58, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67, label %bb.ap

bb.ap:                                            ; preds = %_ZN7maxcore3addEP4expr.exit65
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !159
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67: ; preds = %bb.ap, %_ZN7maxcore3addEP4expr.exit65
  %i.fs = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 4 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !155 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 -8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !155
  %i.fy = icmp eq i32 %i.fv, %i.fx
  br i1 %i.fy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.ar
  %.pre.i.i68 = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i69 = getelementptr inbounds i8, ptr %.pre.i.i68, i64 -4
  %.pre2.i.i70 = load i32, ptr %.phi.trans.insert.i.i69, align 4, !tbaa !155
  br label %bb.as

bb.as:                                            ; preds = %.noexc71, %bb.aq
  %i.fz = phi i32 [ %.pre2.i.i70, %.noexc71 ], [ %i.fv, %bb.aq ] ; 2 uses
  %i.ga = phi ptr [ %.pre.i.i68, %.noexc71 ], [ %i.fs, %bb.aq ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -4
  %i.gc = zext i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gc
  store ptr %i.fa, ptr %i.gd, align 8, !tbaa !156
  %i.ge = add i32 %i.fz, 1
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !155
  %i.gf = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.gg = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gf, i32 noundef 0, i32 noundef 9, ptr noundef %i.ep, ptr noundef %i.ce)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit74:    ; preds = %bb.as
  %.not.i75 = icmp eq ptr %i.gg, null             ; 3 uses
  br i1 %.not.i75, label %bb.at, label %_ZN11ast_manager7inc_refEP3ast.exit.i76

_ZN11ast_manager7inc_refEP3ast.exit.i76:          ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit74
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !159
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !159
  br label %bb.at

bb.at:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i76, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit74
  br i1 %.not.i58, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !159
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !159
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gk, ptr noundef nonnull %i.fa)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.av
  store ptr %i.gg, ptr %3, align 8, !tbaa !237
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 832
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !234
  %i.gs = icmp eq ptr %i.gg, %i.gr
  br i1 %i.gs, label %_ZN7maxcore3addEP4expr.exit82, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.ax
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.gt, ptr noundef %i.gg)
          to label %_ZN7maxcore3addEP4expr.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7maxcore3addEP4expr.exit82:                    ; preds = %.noexc80, %bb.aw
  br i1 %.not.i75, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84, label %bb.ay

bb.ay:                                            ; preds = %_ZN7maxcore3addEP4expr.exit82
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !159
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84: ; preds = %bb.ay, %_ZN7maxcore3addEP4expr.exit82
  %i.gx = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !155 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !155
  %i.hd = icmp eq i32 %i.ha, %i.hc
  br i1 %i.hd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i84
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.ba
  %.pre.i.i85 = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i86 = getelementptr inbounds i8, ptr %.pre.i.i85, i64 -4
  %.pre2.i.i87 = load i32, ptr %.phi.trans.insert.i.i86, align 4, !tbaa !155
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc88, %bb.az
  %i.he = phi i32 [ %.pre2.i.i87, %.noexc88 ], [ %i.ha, %bb.az ] ; 2 uses
  %i.hf = phi ptr [ %.pre.i.i85, %.noexc88 ], [ %i.gx, %bb.az ] ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -4
  %i.hh = zext i32 %i.he to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hh
  store ptr %i.gg, ptr %i.hi, align 8, !tbaa !156
  %i.hj = add i32 %i.he, 1
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !155
  invoke void @_ZN7maxcore14new_assumptionEP4exprRK8rational(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.hl = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.hk, i32 noundef 0, i32 noundef 5, ptr noundef %i.cc, ptr noundef %i.ce)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %bb.bc
  %.not.i91 = icmp eq ptr %i.hl, null
  br i1 %.not.i91, label %bb.bd, label %_ZN11ast_manager7inc_refEP3ast.exit.i92

_ZN11ast_manager7inc_refEP3ast.exit.i92:          ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !159
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !159
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i92, %_ZN11ast_manager6mk_andEP4exprS1_.exit
  br i1 %.not.i75, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hp = load ptr, ptr %i.h, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !159
  %i.hs = add i32 %i.hr, -1                       ; 2 uses
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !159
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hp, ptr noundef nonnull %i.gg)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bf
  store ptr %i.hl, ptr %3, align 8, !tbaa !237
  invoke void @_ZN7maxcore12update_modelEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef %i.ep, ptr noundef %i.hl)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.hu = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i27, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit26.thread, !llvm.loop !423

_ZN11ast_manager5mk_orERK10ptr_vectorI4exprE.exit: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i27
  %.not.i96 = icmp eq ptr %i.bx, null             ; 2 uses
  br i1 %.not.i96, label %bb.bi, label %_ZN11ast_manager7inc_refEP3ast.exit.i97

_ZN11ast_manager7inc_refEP3ast.exit.i97:          ; preds = %_ZN11ast_manager5mk_orERK10ptr_vectorI4exprE.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !159
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !159
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i97, %_ZN11ast_manager5mk_orERK10ptr_vectorI4exprE.exit
  %i.hz = load ptr, ptr %3, align 8, !tbaa !237   ; 3 uses
  %.not.i4.i98 = icmp eq ptr %i.hz, null
  br i1 %.not.i4.i98, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ia = load ptr, ptr %i.h, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !159
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !159
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ia, ptr noundef nonnull %i.hz)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %bb.bk
  store ptr %i.bx, ptr %3, align 8, !tbaa !237
  %i.if = load ptr, ptr %i.f, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 832
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !234
  %i.ii = icmp eq ptr %i.bx, %i.ih
  br i1 %i.ii, label %_ZN7maxcore3addEP4expr.exit103, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.bm
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ij, ptr noundef %i.bx)
          to label %_ZN7maxcore3addEP4expr.exit103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7maxcore3addEP4expr.exit103:                   ; preds = %bb.bl, %.noexc101
  %i.ik = load ptr, ptr %7, align 8, !tbaa !265   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i104, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN7maxcore3addEP4expr.exit103
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !266, !nonnull !54, !align !55
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !159
  %i.io = add i32 %i.in, -1                       ; 2 uses
  store i32 %i.io, ptr %i.im, align 4, !tbaa !159
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.bo, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.il, ptr noundef nonnull %i.ik)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  tail call void @__clang_call_terminate(ptr %i.ir) #21
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7maxcore3addEP4expr.exit103, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.is = load ptr, ptr %6, align 8, !tbaa !265   ; 3 uses
  %.not.i.i106 = icmp eq ptr %i.is, null
  br i1 %.not.i.i106, label %_ZN7obj_refI3app11ast_managerED2Ev.exit108, label %bb.bq

bb.bq:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.it = load ptr, ptr %i.k, align 8, !tbaa !266, !nonnull !54, !align !55
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !159
  %i.iw = add i32 %i.iv, -1                       ; 2 uses
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !159
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.br, label %_ZN7obj_refI3app11ast_managerED2Ev.exit108

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.it, ptr noundef nonnull %i.is)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit108 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  tail call void @__clang_call_terminate(ptr %i.iz) #21
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit108:       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ja = load ptr, ptr %5, align 8, !tbaa !265   ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i109, label %_ZN7obj_refI3app11ast_managerED2Ev.exit111, label %bb.bt

bb.bt:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit108
  %i.jb = load ptr, ptr %i.j, align 8, !tbaa !266, !nonnull !54, !align !55
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !159
  %i.je = add i32 %i.jd, -1                       ; 2 uses
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !159
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.bu, label %_ZN7obj_refI3app11ast_managerED2Ev.exit111

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jb, ptr noundef nonnull %i.ja)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit111 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  tail call void @__clang_call_terminate(ptr %i.jh) #21
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit111:       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit108, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ji = load ptr, ptr %4, align 8, !tbaa !237   ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i112, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit111
  %i.jj = load ptr, ptr %i.i, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !159
  %i.jm = add i32 %i.jl, -1                       ; 2 uses
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !159
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.bx, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jj, ptr noundef nonnull %i.ji)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  tail call void @__clang_call_terminate(ptr %i.jp) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit111, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.not.i96, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114, label %bb.bz

bb.bz:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !245, !nonnull !54, !align !55
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !159
  %i.jt = add i32 %i.js, -1                       ; 2 uses
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !159
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.ca, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jq, ptr noundef nonnull %i.bx)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit114 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  tail call void @__clang_call_terminate(ptr %i.jw) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit114:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit114
  ret void
}

declare noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #1

declare void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN3opt18maxsmt_solver_base11updt_paramsER10params_ref(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7gparams10get_moduleEPKc(ptr dead_on_unwind writable sret(%class.params_ref) align 8, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcRKS_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZNK10params_ref8get_uintEPKcRKS_j(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
!219 = !{!"_ZTS6id_gen", !24, i64 0, !218, i64 8}
!220 = !{!"p1 _ZTS4sort", !30, i64 0}
!221 = !{!"p1 _ZTS3app", !30, i64 0}
!222 = !{!"p1 _ZTS17default_map_entryIjjE", !30, i64 0}
!223 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !222, i64 0, !24, i64 8, !24, i64 12, !24, i64 16}
!224 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !223, i64 0}
!225 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !224, i64 0}
!226 = !{!"_ZTS5u_mapIjE", !225, i64 0}
!227 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !30, i64 0}
!228 = !{!"_ZTS6symbol", !90, i64 0}
!229 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !30, i64 0}
!230 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !229, i64 0, !24, i64 8, !24, i64 12, !24, i64 16}
!231 = !{!"_ZTS7obj_mapI9func_declPS0_E", !230, i64 0}
!232 = !{!"p1 _ZTS15some_value_proc", !30, i64 0}
!233 = !{!"_ZTS11ast_manager", !187, i64 0, !188, i64 40, !196, i64 560, !201, i64 616, !205, i64 648, !209, i64 672, !212, i64 704, !213, i64 712, !80, i64 716, !216, i64 720, !219, i64 784, !219, i64 800, !220, i64 816, !220, i64 824, !221, i64 832, !221, i64 840, !221, i64 848, !24, i64 856, !80, i64 860, !226, i64 864, !227, i64 888, !80, i64 896, !80, i64 897, !31, i64 904, !228, i64 912, !231, i64 920, !232, i64 944}
!234 = !{!233, !221, i64 832}
!235 = !{!76, !75, i64 8}
!236 = !{!80, !80, i64 0}
!237 = !{!169, !63, i64 0}
!238 = !{!"p1 _ZTS8rational", !30, i64 0}
!239 = !{!"_ZTS6vectorI8rationalLb1EjE", !238, i64 0}
!240 = !{!"p1 _ZTS9parameter", !30, i64 0}
!241 = !{!"_ZTS6vectorI9parameterLb1EjE", !240, i64 0}
!242 = !{!"_ZTS7pb_util", !31, i64 0, !24, i64 8, !239, i64 16, !241, i64 24, !44, i64 32}
!243 = !{!242, !24, i64 8}
!244 = !{!239, !238, i64 0}
!245 = !{!169, !31, i64 8}
!246 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!247 = !{!41, !41, i64 0}
!248 = !{!"p1 _ZTSN3opt13weighted_softE", !30, i64 0}
!249 = !{!"_ZTS6vectorIN3opt13weighted_softELb1EjE", !248, i64 0}
!250 = !{!249, !248, i64 0}
!251 = !{!"p1 _ZTSN3opt13weighted_coreE", !30, i64 0}
!252 = !{!"_ZTS6vectorIN3opt13weighted_coreELb1EjE", !251, i64 0}
!253 = !{!252, !251, i64 0}
!254 = !{!30, !30, i64 0}
!255 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!256 = !{!"_ZTS4expr", !158, i64 0}
!257 = !{!"p1 _ZTS9func_decl", !30, i64 0}
!258 = !{!"_ZTS9app_flags", !24, i64 0, !24, i64 2, !24, i64 2, !24, i64 2}
!259 = !{!"_ZTS3app", !256, i64 0, !257, i64 16, !24, i64 24, !258, i64 28, !23, i64 32}
!260 = !{!259, !257, i64 16}
!261 = !{!158, !24, i64 12}
!262 = !{!"_ZTSN7obj_mapI4expr8rationalE13obj_map_entryE", !64, i64 0}
!263 = !{!262, !63, i64 0}
!264 = !{!"_ZTS7obj_refI3app11ast_managerE", !221, i64 0, !31, i64 8}
!265 = !{!264, !221, i64 0}
!266 = !{!264, !31, i64 8}
!267 = !{!"_ZTSN7maxcore10bound_infoE", !38, i64 0, !24, i64 8, !44, i64 16}
!268 = !{!267, !24, i64 8}
!269 = !{!"_ZTSN7obj_mapI4exprPS0_E13obj_map_entryE", !125, i64 0}
!270 = !{!269, !63, i64 0}
!271 = !{!"_ZTSN7obj_mapI4exprN7maxcore10bound_infoEE8key_dataE", !63, i64 0, !267, i64 8}
!272 = !{!271, !63, i64 0}
!273 = !{!"_ZTSN7obj_mapI4exprN7maxcore10bound_infoEE13obj_map_entryE", !271, i64 0}
!274 = !{!273, !63, i64 0}
!275 = !{!"p1 _ZTSSt4pairI7obj_refI4expr11ast_managerES3_E", !30, i64 0}
!276 = !{!"_ZTS6vectorISt4pairI7obj_refI4expr11ast_managerES4_ELb1EjE", !275, i64 0}
!277 = !{!276, !275, i64 0}
!278 = !{!135, !135, i64 0}
!279 = !{i64 0, i64 8, !156, i64 8, i64 8, !278}
!280 = !{!"llvm.loop.unroll.disable"}
!281 = !{i64 0, i64 8, !156, i64 8, i64 8, !156}
!282 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!283 = !{!"p1 _ZTS15model_converter", !30, i64 0}
!284 = !{!"_ZTS3refI15model_converterE", !283, i64 0}
!285 = !{!284, !283, i64 0}
!286 = !{!"p1 _ZTS6vectorIN3opt13weighted_softELb1EjE", !30, i64 0}
!287 = !{!"_ZTS6vectorIS_IN3opt13weighted_softELb1EjELb1EjE", !286, i64 0}
!288 = !{!287, !286, i64 0}
!289 = distinct !{null, null}
!290 = !{!87, !86, i64 8}
!291 = !{!82, !81, i64 0}
!292 = distinct !{null, null, null}
!293 = distinct !{!293, !160, !175, !176}
!294 = distinct !{!294, !160, !175}
!295 = !{!90, !90, i64 0}
!296 = !{!"p1 _ZTS10params_ref", !30, i64 0}
!297 = !{!296, !296, i64 0}
!298 = !{!"_ZTS10opt_params", !296, i64 0, !51, i64 8}
!299 = !{!298, !296, i64 0}
!300 = !{!103, !80, i64 550}
!301 = distinct !{null, null, null, null}
!302 = !{!52, !24, i64 24}
!303 = distinct !{!303, !160}
!304 = !{!241, !240, i64 0}
!305 = distinct !{!305, !160}
!306 = distinct !{!306, !160}
!307 = distinct !{!307, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!308 = distinct !{!308, !307, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!309 = distinct !{!309, !160}
!310 = distinct !{!310, !160}
!311 = !{!308}
!312 = distinct !{!312, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!313 = distinct !{!313, !312, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!314 = distinct !{!314, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!315 = distinct !{!315, !314, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!316 = distinct !{!316, !160}
!317 = !{!313}
!318 = !{!315}
!319 = distinct !{!319, !160}
!320 = distinct !{!320, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!321 = distinct !{!321, !320, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!322 = !{!321}
!323 = distinct !{!323, !160}
!324 = distinct !{!324, !160}
!325 = distinct !{!325, !160}
!326 = distinct !{!326, !160}
!327 = distinct !{!327, !160}
!328 = distinct !{!328, !160}
!329 = distinct !{!329, !160}
!330 = distinct !{!330, !160}
!331 = distinct !{!331, !160}
!332 = distinct !{!332, !160}
!333 = distinct !{!333, !160}
!334 = distinct !{!334, !160}
!335 = distinct !{!335, !160}
!336 = distinct !{!336, !160}
!337 = distinct !{!337, !160}
!338 = distinct !{!338, !160}
!339 = distinct !{!339, !160}
!340 = distinct !{!340, !160}
!341 = distinct !{!341, !160}
!342 = distinct !{!342, !160}
!343 = distinct !{!343, !160}
!344 = distinct !{!344, !160}
!345 = distinct !{!345, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!346 = distinct !{!346, !345, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!347 = distinct !{!347, !160}
!348 = !{!346}
!349 = distinct !{!349, !160}
!350 = distinct !{!350, !160}
!351 = distinct !{!351, !160}
!352 = !{!125, !63, i64 8}
!353 = distinct !{!353, !160}
!354 = distinct !{!354, !160}
!355 = distinct !{!355, !160}
!356 = distinct !{!356, !160}
!357 = distinct !{!357, !160}
!358 = distinct !{!358, !160}
!359 = distinct !{!359, !160}
!360 = distinct !{!360, !160}
!361 = distinct !{!361, !160}
!362 = distinct !{!362, !160}
!363 = distinct !{!363, !160}
!364 = distinct !{!364, !160}
!365 = distinct !{!365, !280}
!366 = distinct !{!366, !160}
!367 = distinct !{!367, !160}
!368 = distinct !{!368, !160}
!369 = distinct !{!369, !160}
!370 = distinct !{!370, !160}
!371 = distinct !{!371, !160}
!372 = distinct !{!372, !280}
!373 = distinct !{!373, !160}
!374 = distinct !{!374, !160}
!375 = distinct !{!375, !160}
!376 = distinct !{!376, !160}
!377 = distinct !{!377, !160}
!378 = distinct !{!378, !160}
!379 = distinct !{!379, !160}
!380 = distinct !{!380, !160}
!381 = distinct !{!381, !160}
!382 = distinct !{!382, !280}
!383 = distinct !{!383, !160}
!384 = distinct !{!384, !280}
!385 = distinct !{!385, !160}
!386 = distinct !{!386, !160}
!387 = !{!259, !24, i64 24}
!388 = !{!"p1 _ZTS9decl_info", !30, i64 0}
!389 = !{!"_ZTS4decl", !158, i64 0, !228, i64 16, !388, i64 24}
!390 = !{!389, !388, i64 24}
!391 = !{!"_ZTS9decl_info", !24, i64 0, !24, i64 4, !241, i64 8, !80, i64 16}
!392 = !{!391, !24, i64 0}
!393 = distinct !{!393, !160}
!394 = distinct !{!394, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!395 = distinct !{!395, !394, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!396 = distinct !{!396, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!397 = distinct !{!397, !396, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!398 = distinct !{!398, !160}
!399 = !{!395}
!400 = !{!397}
!401 = distinct !{!401, !160}
!402 = distinct !{!402, !160}
!403 = distinct !{!403, !160}
!404 = distinct !{!404, !160}
!405 = distinct !{!405, !160}
!406 = distinct !{!406, !160}
!407 = distinct !{!407, !160}
!408 = distinct !{!408, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!409 = distinct !{!409, !408, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!410 = distinct !{!410, i1 true, !"_ZNK7maxcore10get_weightEP4expr"}
!411 = distinct !{!411, !410, !"_ZNK7maxcore10get_weightEP4expr: argument 0"}
!412 = !{!"_ZTSN7maxcore11compare_asmE", !75, i64 0}
!413 = !{!412, !75, i64 0}
!414 = !{!409}
!415 = !{!411}
!416 = !{!158, !24, i64 0}
!417 = distinct !{!417, !160}
!418 = distinct !{!418, !160}
!419 = distinct !{!419, !160, !175, !176}
!420 = distinct !{!420, !160, !176, !175}
!421 = distinct !{!421, !160}
!422 = distinct !{!422, !160}
!423 = distinct !{!423, !160}
!424 = !{!233, !221, i64 840}
end_hunk_4
