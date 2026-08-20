inline.NumInlined: 4960
inline.NumDeleted: 1839
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN17basic_decl_plugin12mk_func_declEijPK9parameterjPKP4sortS4_:bb.a
  br i1 %i.o, label %bb.j, label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160
  %i.t = tail call noundef ptr @_ZN17basic_decl_plugin4joinEP4sortS1_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %i.q, ptr noundef %i.s)
  %i.u = tail call noundef ptr @_ZN17basic_decl_plugin11mk_ite_declEP4sort(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %i.t)
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.k:                                             ; preds = %bb.a
  %i.v = icmp ugt i32 %4, 1
  br i1 %i.v, label %bb.l, label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %5, align 8, !tbaa !160
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.011.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.l ]
  %.0710.i = phi ptr [ %i.x, %.lr.ph.i ], [ %5, %bb.l ]
  %.089.i = phi i32 [ %i.y, %.lr.ph.i ], [ %4, %bb.l ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8 ; 2 uses
  %i.y = add i32 %.089.i, -1                      ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.aa = tail call noundef ptr @_ZN17basic_decl_plugin4joinEP4sortS1_(ptr noundef nonnull readonly align 8 dereferenceable(464) %0, ptr noundef %.011.i, ptr noundef %i.z) ; 2 uses
  %i.ab = icmp ugt i32 %i.y, 1
  br i1 %i.ab, label %.lr.ph.i, label %_ZN17basic_decl_plugin4joinEjPKP4sort.exit, !llvm.loop !319

_ZN17basic_decl_plugin4joinEjPKP4sort.exit:       ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = tail call noundef ptr @_ZN17basic_decl_plugin15mk_eq_decl_coreEPKciP4sortR10ptr_vectorI9func_declE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull @.str.77, i32 noundef 2, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.m:                                             ; preds = %bb.a
  %i.ae = icmp ugt i32 %4, 1
  br i1 %i.ae, label %bb.n, label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %5, align 8, !tbaa !160
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.n, %.lr.ph.i55
  %.011.i56 = phi ptr [ %i.aj, %.lr.ph.i55 ], [ %i.af, %bb.n ]
  %.0710.i57 = phi ptr [ %i.ag, %.lr.ph.i55 ], [ %5, %bb.n ]
  %.089.i58 = phi i32 [ %i.ah, %.lr.ph.i55 ], [ %4, %bb.n ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i57, i64 8 ; 2 uses
  %i.ah = add i32 %.089.i58, -1                   ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !160
  %i.aj = tail call noundef ptr @_ZN17basic_decl_plugin4joinEP4sortS1_(ptr noundef nonnull readonly align 8 dereferenceable(464) %0, ptr noundef %.011.i56, ptr noundef %i.ai) ; 2 uses
  %i.ak = icmp ugt i32 %i.ah, 1
  br i1 %i.ak, label %.lr.ph.i55, label %_ZN17basic_decl_plugin4joinEjPKP4sort.exit59, !llvm.loop !319

_ZN17basic_decl_plugin4joinEjPKP4sort.exit59:     ; preds = %.lr.ph.i55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = tail call noundef ptr @_ZN17basic_decl_plugin15mk_eq_decl_coreEPKciP4sortR10ptr_vectorI9func_declE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull @.str.89, i32 noundef 10, ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !226 ; 2 uses
  store i32 %i.ao, ptr %7, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 23, ptr %i.ap, align 4, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.ar, align 8, !tbaa !116
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 17 ; 2 uses
  %i.at = load i16, ptr %i.as, align 1
  %i.au = and i16 %i.at, -1024
  store i16 %i.au, ptr %i.as, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.90)
          to label %_ZNK14func_decl_info7is_nullEv.exit.thread.i unwind label %bb.q

_ZNK14func_decl_info7is_nullEv.exit.thread.i:     ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !236
  %i.az = icmp eq i32 %i.ao, -1
  %spec.select = select i1 %i.az, ptr null, ptr %7
  %i.ba = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %4, ptr noundef %5, ptr noundef %i.ay, ptr noundef %spec.select)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.q

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !114 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bd, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bb, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #39
  %i.be = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.bf = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !248

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !114
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.bg = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.bb, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bh)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #38
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.q:                                             ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i, %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.aq

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !226
  store i32 %i.bm, ptr %9, align 8, !tbaa !109
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 3, ptr %i.bn, align 4, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.bp, align 8, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 17 ; 3 uses
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = and i16 %i.br, -1024
  %i.bt = or disjoint i16 %i.bs, 32
  store i16 %i.bt, ptr %i.bq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bu, ptr %10, align 8, !tbaa !227
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.bv, align 8, !tbaa !230
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.bw, align 4, !tbaa !231
  %i.bx = icmp ugt i32 %4, 1
  br i1 %i.bx, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.r
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.s

._crit_edge:                                      ; preds = %.loopexit, %bb.r
  %.044.lcssa = phi ptr [ %5, %bb.r ], [ %.145, %.loopexit ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.78)
          to label %bb.z unwind label %bb.af

bb.s:                                             ; preds = %.lr.ph.a, %.loopexit
  %indvars.iv = phi i64 [ 1, %.lr.ph.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.04497 = phi ptr [ %5, %.lr.ph.a ], [ %.145, %.loopexit ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.04497, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !160
  %i.cc = load ptr, ptr %.04497, align 8, !tbaa !160 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.s, %.noexc
  %.011.i62 = phi ptr [ %i.cf, %.noexc ], [ %i.cc, %bb.s ]
  %.0710.i63 = phi ptr [ %i.cd, %.noexc ], [ %.04497, %bb.s ]
  %.089.i64 = phi i32 [ %i.cg, %.noexc ], [ %4, %bb.s ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0710.i63, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !160
  %i.cf = invoke noundef ptr @_ZN17basic_decl_plugin4joinEP4sortS1_(ptr noundef nonnull readonly align 8 dereferenceable(464) %0, ptr noundef %.011.i62, ptr noundef %i.ce)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i61
  %i.cg = add i32 %.089.i64, -1                   ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 1
  br i1 %i.ch, label %.lr.ph.i61, label %_ZN17basic_decl_plugin4joinEjPKP4sort.exit65, !llvm.loop !319

_ZN17basic_decl_plugin4joinEjPKP4sort.exit65:     ; preds = %.noexc
  %.pre103.pre = load i32, ptr %i.bw, align 4, !tbaa !231
  %.pre.pre = load i32, ptr %i.bv, align 8, !tbaa !230
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i61
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.u:                                             ; preds = %_ZN17basic_decl_plugin4joinEjPKP4sort.exit65, %bb.x
  %i.cj = phi i32 [ %.pre103.pre, %_ZN17basic_decl_plugin4joinEjPKP4sort.exit65 ], [ %i.dp, %bb.x ] ; 3 uses
  %i.ck = phi i32 [ %.pre.pre, %_ZN17basic_decl_plugin4joinEjPKP4sort.exit65 ], [ %i.du, %bb.x ] ; 2 uses
  %.096 = phi i32 [ 0, %_ZN17basic_decl_plugin4joinEjPKP4sort.exit65 ], [ %i.dv, %bb.x ]
  %.not.i = icmp ult i32 %i.ck, %i.cj
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.u
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !227
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cl = shl i32 %i.cj, 1                        ; 3 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cn)
          to label %.noexc67 unwind label %bb.y   ; 9 uses

.noexc67:                                         ; preds = %bb.v
  %i.cp = load i32, ptr %i.bv, align 8, !tbaa !230 ; 4 uses
  %.not.i.i = icmp eq i32 %i.cp, 0
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !227 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc67
  %.pre.i.i132 = ptrtoaddr ptr %.pre.i.i to i64
  %i.cq = ptrtoaddr ptr %i.co to i64
  %wide.trip.count.i.i = zext i32 %i.cp to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.cp, 4
  %i.cr = sub i64 %.pre.i.i132, %i.cq
  %diff.check = icmp ugt i64 %i.cr, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !160
  %wide.load133 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.load, ptr %i.cs, align 8, !tbaa !160
  store <2 x ptr> %wide.load133, ptr %i.cv, align 8, !tbaa !160
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.i.prol
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !160
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !160
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !337

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.da = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc67
  %.not.i.i.i66 = icmp eq ptr %.pre.i.i, %i.bu
  %i.dc = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i.i = or i1 %.not.i.i.i66, %i.dc
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i)
          to label %.noexc68 unwind label %bb.y

.noexc68:                                         ; preds = %bb.w
  %.pre2.pre.i = load i32, ptr %i.bv, align 8, !tbaa !230
  br label %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !160
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !160
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !160
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !160
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !160
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !160
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.2
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !160
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !160
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !338

_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc68, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.cp, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc68 ]
  store ptr %i.co, ptr %10, align 8, !tbaa !227
  store i32 %i.cl, ptr %i.bw, align 4, !tbaa !231
  br label %bb.x

bb.x:                                             ; preds = %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.dp = phi i32 [ %i.cj, %._crit_edge.i ], [ %i.cl, %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i ]
  %i.dq = phi i32 [ %i.ck, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.dr = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.co, %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  store ptr %i.cf, ptr %i.dt, align 8, !tbaa !160
  %i.du = add i32 %i.dq, 1                        ; 2 uses
  store i32 %i.du, ptr %i.bv, align 8, !tbaa !230
  %i.dv = add nuw i32 %.096, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.dv, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.u, !llvm.loop !339

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit:                                        ; preds = %bb.x, %bb.s
  %.145 = phi ptr [ %.04497, %bb.s ], [ %i.dr, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge, label %bb.s, !llvm.loop !340

bb.z:                                             ; preds = %._crit_edge
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !243
  %i.dz = load i32, ptr %9, align 8, !tbaa !109
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %bb.aa, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i69

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i16, ptr %i.bq, align 1
  %i.ec = and i16 %i.eb, 507
  %or.cond.i71 = icmp eq i16 %i.ec, 0
  br i1 %or.cond.i71, label %bb.ab, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i69

_ZNK14func_decl_info7is_nullEv.exit.thread.i69:   ; preds = %bb.aa, %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i69, %bb.aa
  %.sink.i70 = phi ptr [ %9, %_ZNK14func_decl_info7is_nullEv.exit.thread.i69 ], [ null, %bb.aa ]
  %i.ed = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %4, ptr noundef %.044.lcssa, ptr noundef %i.dy, ptr noundef %.sink.i70)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit73 unwind label %bb.af

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit73: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %i.ee = load ptr, ptr %10, align 8, !tbaa !227  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.ee, %i.bu
  %i.ef = icmp eq ptr %i.ee, null
  %or.cond.i.i.i75 = or i1 %.not.i.i.i74, %i.ef
  br i1 %or.cond.i.i.i75, label %_ZN6bufferIP4sortLb0ELj16EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit73
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ee)
          to label %_ZN6bufferIP4sortLb0ELj16EED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #38
  unreachable

_ZN6bufferIP4sortLb0ELj16EED2Ev.exit:             ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit73, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ei = load ptr, ptr %i.bo, align 8, !tbaa !114 ; 4 uses
  %.not.i.i.i76 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i76, label %_ZN9decl_infoD2Ev.exit86, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i77

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i77: ; preds = %_ZN6bufferIP4sortLb0ELj16EED2Ev.exit
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !25 ; 2 uses
  %.not5.i.i.i.i.i.i.i78 = icmp eq i32 %i.ek, 0
  br i1 %.not5.i.i.i.i.i.i.i78, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i85, label %.lr.ph.i.i.i.i.i.i.i79

.lr.ph.i.i.i.i.i.i.i79:                           ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i77, %.lr.ph.i.i.i.i.i.i.i79
  %.07.i.i.i.i.i.i.i80 = phi i32 [ %i.em, %.lr.ph.i.i.i.i.i.i.i79 ], [ %i.ek, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i77 ]
end_hunk_0
