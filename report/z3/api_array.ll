Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_array?download=true
inline.NumInlined: 851
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Z3_mk_store_n:bb.a

.thread101:                                       ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.7103 = extractvalue { ptr, i32 } %i.o, 1
  br label %bb.ao

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.an

bb.k:                                             ; preds = %_ZNK4decl13get_family_idEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !198
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !175 ; 2 uses
  %i.q = zext i32 %.pre2.i to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.q
  store ptr %1, ptr %i.r, align 8, !tbaa !193
  %i.s = add i32 %.pre2.i, 1
  store i32 %i.s, ptr %.phi.trans.insert.i, align 4, !tbaa !175
  %i.t = load ptr, ptr %5, align 8, !tbaa !197    ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !175  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !175
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.n, label %_ZN6vectorIP4sortLb0EjE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.n
  %.pre.i57 = load ptr, ptr %5, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds i8, ptr %.pre.i57, i64 -4
  %.pre2.i59 = load i32, ptr %.phi.trans.insert.i58, align 4, !tbaa !175
  br label %_ZN6vectorIP4sortLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4sortLb0EjE9push_backERKS1_.exit:     ; preds = %bb.m, %.noexc60
  %i.aa = phi i32 [ %.pre2.i59, %.noexc60 ], [ %i.w, %bb.m ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i57, %.noexc60 ], [ %i.t, %bb.m ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.f, ptr %i.ae, align 8, !tbaa !191
  %i.af = add i32 %i.aa, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !175
  %.not109 = icmp eq i32 %2, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIP4sortLb0EjE9push_backERKS1_.exit
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %_ZN6vectorIP4sortLb0EjE9push_backERKS1_.exit
  %i.ag = phi ptr [ %i.ab, %_ZN6vectorIP4sortLb0EjE9push_backERKS1_.exit ], [ %i.br, %bb.w ]
  %i.ah = load ptr, ptr %6, align 8, !tbaa !198   ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !175 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !175
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.p, label %.thread128

.thread128:                                       ; preds = %bb.o
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ap = zext i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ap
  store ptr %4, ptr %i.aq, align 8, !tbaa !193
  %i.ar = add i32 %i.ak, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !175
  br label %bb.y

bb.p:                                             ; preds = %bb.o, %._crit_edge
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !200 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !198   ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !175 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !175
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %.lr.ph
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.r
  %.pre.i66 = load ptr, ptr %6, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert.i67 = getelementptr inbounds i8, ptr %.pre.i66, i64 -4
  %.pre2.i68 = load i32, ptr %.phi.trans.insert.i67, align 4, !tbaa !175
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !200
  br label %bb.s

bb.s:                                             ; preds = %.noexc69, %bb.q
  %i.bb = phi ptr [ %.pre, %.noexc69 ], [ %i.at, %bb.q ]
  %i.bc = phi i32 [ %.pre2.i68, %.noexc69 ], [ %i.ax, %bb.q ] ; 2 uses
  %i.bd = phi ptr [ %.pre.i66, %.noexc69 ], [ %i.au, %bb.q ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  store ptr %i.at, ptr %i.bg, align 8, !tbaa !193
  %i.bh = add i32 %i.bc, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !175
  %i.bi = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %5, align 8, !tbaa !197   ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !175 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !175
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.v
  %.pre.i70 = load ptr, ptr %5, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i71 = getelementptr inbounds i8, ptr %.pre.i70, i64 -4
  %.pre2.i72 = load i32, ptr %.phi.trans.insert.i71, align 4, !tbaa !175
  br label %bb.w

bb.w:                                             ; preds = %.noexc73, %bb.u
  %i.bq = phi i32 [ %.pre2.i72, %.noexc73 ], [ %i.bm, %bb.u ] ; 2 uses
  %i.br = phi ptr [ %.pre.i70, %.noexc73 ], [ %i.bj, %bb.u ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  store ptr %i.bi, ptr %i.bu, align 8, !tbaa !191
  %i.bv = add i32 %i.bq, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !175
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !222

bb.x:                                             ; preds = %bb.p
  %.pre.i61 = load ptr, ptr %6, align 8, !tbaa !198 ; 3 uses
  %.phi.trans.insert.i62 = getelementptr inbounds i8, ptr %.pre.i61, i64 -4
  %.pre2.i63 = load i32, ptr %.phi.trans.insert.i62, align 4, !tbaa !175 ; 2 uses
  %.pre112 = load ptr, ptr %5, align 8, !tbaa !197 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.pre.i61, i64 -4
  %i.bx = zext i32 %.pre2.i63 to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre.i61, i64 %i.bx
  store ptr %4, ptr %i.by, align 8, !tbaa !193
  %i.bz = add i32 %.pre2.i63, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !175
  %i.ca = icmp eq ptr %.pre112, null
  br i1 %i.ca, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread128, %bb.x
  %i.cb = phi ptr [ %i.ag, %.thread128 ], [ %.pre112, %bb.x ] ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !175 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !175
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.z
  %.pre.i74 = load ptr, ptr %5, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i75 = getelementptr inbounds i8, ptr %.pre.i74, i64 -4
  %.pre2.i76 = load i32, ptr %.phi.trans.insert.i75, align 4, !tbaa !175
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc77, %bb.y
  %i.ch = phi i32 [ %.pre2.i76, %.noexc77 ], [ %i.cd, %bb.y ] ; 2 uses
  %i.ci = phi ptr [ %.pre.i74, %.noexc77 ], [ %i.cb, %bb.y ] ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  store ptr %i.g, ptr %i.cl, align 8, !tbaa !191
  %i.cm = add i32 %i.ch, 1                        ; 2 uses
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !175
  %i.cn = load i32, ptr %i.m, align 8, !tbaa !168
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !187 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !173
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit:             ; preds = %bb.ab, %bb.aa
  %i.cs = phi ptr [ %i.cr, %bb.ab ], [ null, %bb.aa ]
  %i.ct = invoke noundef ptr @_ZN11ast_manager12mk_func_declEiijPK9parameterjPKP4sortS4_(ptr noundef nonnull align 8 dereferenceable(952) %i.e, i32 noundef %i.cn, i32 noundef 0, i32 noundef 2, ptr noundef %i.cs, i32 noundef %i.cm, ptr noundef nonnull %i.ci, ptr noundef null)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  %i.cu = load ptr, ptr %6, align 8, !tbaa !198   ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !175
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.ac, %bb.ad
  %.0.i79 = phi i32 [ %i.cx, %bb.ad ], [ 0, %bb.ac ]
  %i.cy = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.e, ptr noundef %i.ct, i32 noundef %.0.i79, ptr noundef %i.cu)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.ae:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  invoke void @_ZN3api7context14save_ast_trailEP3ast(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef %i.cy)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN3api7context11check_sortsEP3ast(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef %i.cy)
          to label %_Z11check_sortsP11_Z3_contextP3ast.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z11check_sortsP11_Z3_contextP3ast.exit:          ; preds = %bb.af
  br i1 %i.b, label %bb.ag, label %bb.ah, !prof !169

bb.ag:                                            ; preds = %_Z11check_sortsP11_Z3_contextP3ast.exit
  invoke void @_Z4SetRPKv(ptr noundef %i.cy)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.v, %bb.r, %bb.af, %bb.z, %bb.p, %bb.n, %bb.k, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %bb.ae, %bb.ag
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.an

bb.ah:                                            ; preds = %bb.ag, %_Z11check_sortsP11_Z3_contextP3ast.exit
  %i.cz = load ptr, ptr %6, align 8, !tbaa !198   ; 2 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.da)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #16
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dd = load ptr, ptr %5, align 8, !tbaa !197   ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i81, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.de)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #16
  unreachable

bb.am:                                            ; preds = %bb.ak, %_ZN6vectorIP4exprLb0EjED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.b, label %.thread, label %_ZN10z3_log_ctxD2Ev.exit, !prof !201

.thread:                                          ; preds = %bb.i, %bb.am
  %.04598 = phi ptr [ %i.cy, %bb.am ], [ null, %bb.i ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.an:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.p, %bb.j ] ; 3 uses
  %.7 = extractvalue { ptr, i32 } %.pn52.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.ao, label %_ZN10z3_log_ctxD2Ev.exit82, !prof !170

bb.ao:                                            ; preds = %.thread101, %bb.an
  %.7107 = phi i32 [ %.7103, %.thread101 ], [ %.7, %bb.an ]
  %.pn52.pn.pn.pn105 = phi { ptr, i32 } [ %i.o, %.thread101 ], [ %.pn52.pn.pn.pn, %bb.an ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit82

_ZN10z3_log_ctxD2Ev.exit82:                       ; preds = %bb.an, %bb.ao
  %.7106 = phi i32 [ %.7, %bb.an ], [ %.7107, %bb.ao ]
  %.pn52.pn.pn.pn104 = phi { ptr, i32 } [ %.pn52.pn.pn.pn, %bb.an ], [ %.pn52.pn.pn.pn105, %bb.ao ] ; 2 uses
  %i.dh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #15
  %i.di = icmp eq i32 %.7106, %i.dh
  br i1 %i.di, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit82
  %.743 = extractvalue { ptr, i32 } %.pn52.pn.pn.pn104, 0
  %i.dj = call ptr @__cxa_begin_catch(ptr %.743) #15
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.at

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.h, %.thread, %bb.am, %bb.aq
  %.146 = phi ptr [ null, %bb.aq ], [ %i.cy, %bb.am ], [ %.04598, %.thread ], [ null, %bb.h ]
  ret ptr %.146

bb.as:                                            ; preds = %bb.ar, %_ZN10z3_log_ctxD2Ev.exit82
  %.merged = phi { ptr, i32 } [ %.pn52.pn.pn.pn104, %_ZN10z3_log_ctxD2Ev.exit82 ], [ %i.dk, %bb.ar ]
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ar
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #16
  unreachable
}

declare void @_Z17log_Z3_mk_store_nP11_Z3_contextP7_Z3_astjPKS2_S2_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_mk_map(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ptr_vector.75, align 8       ; 9 uses
  %5 = alloca %class.parameter, align 8           ; 8 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z13log_Z3_mk_mapP11_Z3_contextP13_Z3_func_decljPKP7_Z3_ast(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.c, align 8, !tbaa !161
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef null)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.b, label %bb.f, label %_ZN10z3_log_ctxD2Ev.exit, !prof !169

bb.f:                                             ; preds = %bb.e
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %.thread unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !197
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %1, ptr %5, align 8, !tbaa !164
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.g, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.i = load i32, ptr %i.h, align 8, !tbaa !168
  %i.j = invoke noundef ptr @_ZN11ast_manager12mk_func_declEiijPK9parameterjPKP4sortS4_(ptr noundef nonnull align 8 dereferenceable(952) %i.f, i32 noundef %i.i, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %i.w, ptr noundef null)
          to label %bb.p unwind label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.z

bb.j:                                             ; preds = %bb.g, %bb.n
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !193
  %i.n = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.m)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
end_hunk_0
