Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_qe_project?download=true
inline.NumInlined: 2576
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9spacer_qe22array_project_eqs_util7projectERK7obj_refI4expr11ast_managerE:bb.a

.noexc85:                                         ; preds = %bb.k
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %.noexc85, %bb.j
  %i.be = phi i32 [ %.pre2.i, %.noexc85 ], [ %i.ba, %bb.j ] ; 2 uses
  %i.bf = phi ptr [ %.pre.i, %.noexc85 ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bh = zext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  store ptr %i.ae, ptr %i.bi, align 8, !tbaa !146
  %i.bj = add i32 %i.be, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !53
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.h, %bb.l
  %i.bl = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !60, !nonnull !56, !align !57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !27
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bm, ptr noundef nonnull %i.bl)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge106, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !410

bb.r:                                             ; preds = %bb.m, %bb.f
  %.pn80 = phi { ptr, i32 } [ %i.as, %bb.f ], [ %i.bk, %bb.m ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ax

.preheader107:                                    ; preds = %.thread100
  %.not180 = icmp eq i32 %i.r, 1
  br i1 %.not180, label %.preheader, label %.lr.ph125

.lr.ph125:                                        ; preds = %.preheader107
  %wide.trip.count140 = zext i32 %i.r to i64
  br label %bb.ac

bb.s:                                             ; preds = %.lr.ph.preheader.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.t:                                             ; preds = %.lr.ph117, %.thread100
  %indvars.iv130.a = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next131.a, %.thread100 ] ; 3 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !145
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv130.a
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !146 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23 ; 5 uses
  %i.cd = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ce = icmp eq ptr %i.ca, %i.cd
  br i1 %i.ce, label %.thread103, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef %i.ca)
          to label %bb.v unwind label %bb.y       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ch = icmp eq ptr %i.cc, %i.cg
  br i1 %i.ch, label %.thread, label %bb.w

.thread103:                                       ; preds = %bb.t
  %i.ci = icmp eq ptr %i.cc, %i.ca
  br i1 %i.ci, label %.thread100, label %bb.w

bb.w:                                             ; preds = %.thread103, %bb.v
  %i.cj = phi i1 [ true, %.thread103 ], [ %i.cf, %bb.v ] ; 2 uses
  %i.ck = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef %i.cc)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %brmerge.not = and i1 %i.cj, %i.ck
  %.mux = select i1 %i.cj, ptr %i.ca, ptr %i.cc
  br i1 %brmerge.not, label %.thread100, label %bb.aa

.thread:                                          ; preds = %bb.v
  br i1 %i.cf, label %.thread100, label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.z:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aa:                                            ; preds = %bb.x, %.thread
  %.059 = phi ptr [ %i.cc, %.thread ], [ %.mux, %bb.x ] ; 3 uses
  %.not75 = icmp eq ptr %.059, null
  br i1 %.not75, label %.thread100, label %.preheader108

.preheader108:                                    ; preds = %bb.aa
  %i.cn = load i32, ptr %i.ab, align 8, !tbaa !142
  %i.co = getelementptr inbounds nuw i8, ptr %.059, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 65535
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %.thread100

.lr.ph:                                           ; preds = %.preheader108, %bb.ab
  %.058112 = phi i32 [ %i.dc, %bb.ab ], [ 1, %.preheader108 ] ; 3 uses
  %.160111 = phi ptr [ %i.de, %bb.ab ], [ %.059, %.preheader108 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.160111, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i, label %.thread100, label %_ZNK17array_recognizers8is_storeEP4expr.exit

_ZNK17array_recognizers8is_storeEP4expr.exit:     ; preds = %.lr.ph
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !189
  %i.cx = icmp eq i32 %i.cw, %i.cn
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %bb.ab, label %.thread100

bb.ab:                                            ; preds = %_ZNK17array_recognizers8is_storeEP4expr.exit
  %i.dc = add i32 %.058112, 1                     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.160111, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !23 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 65535
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph, label %.thread100, !llvm.loop !411

.thread100:                                       ; preds = %_ZNK17array_recognizers8is_storeEP4expr.exit, %bb.ab, %.lr.ph, %.preheader108, %bb.x, %.thread103, %.thread, %bb.aa
  %.1 = phi i32 [ 0, %.thread103 ], [ 0, %bb.aa ], [ 0, %.thread ], [ 0, %bb.x ], [ 1, %.preheader108 ], [ %.058112, %_ZNK17array_recognizers8is_storeEP4expr.exit ], [ %i.dc, %bb.ab ], [ %.058112, %.lr.ph ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv130.a
  store i32 %.1, ptr %i.dj, align 4, !tbaa !53
  %indvars.iv.next131.a = add nuw nsw i64 %indvars.iv130.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next131.a, %wide.trip.count
  br i1 %exitcond.not, label %.preheader107, label %bb.t, !llvm.loop !412

.preheader:                                       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %.preheader107
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.do = zext i32 %i.r to i64
  br label %bb.ar

bb.ac:                                            ; preds = %.lr.ph125, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %indvars.iv133 = phi i64 [ 1, %.lr.ph125 ], [ %indvars.iv.next134, %_ZN7obj_refI3app11ast_managerED2Ev.exit ] ; 5 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !220, !nonnull !56, !align !57
  %i.dq = load ptr, ptr %3, align 8, !tbaa !145   ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv133
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146 ; 5 uses
  %.not.i86 = icmp eq ptr %i.ds, null             ; 2 uses
  br i1 %.not.i86, label %.lr.ph120, label %_ZN11ast_manager7inc_refEP3ast.exit.i87

_ZN11ast_manager7inc_refEP3ast.exit.i87:          ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !27
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !27
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i87, %bb.ac
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv133
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !53 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph120, %bb.ae
  %indvars.iv135 = phi i64 [ %indvars.iv133, %.lr.ph120 ], [ %indvars.iv.next136, %bb.ae ] ; 5 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %i.dy = and i64 %indvars.iv.next136, 4294967295 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !53 ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, %i.dx
  br i1 %i.eb, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dy
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !146
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv135
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !146
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv135
  store i32 %i.ea, ptr %i.ef, align 4, !tbaa !53
  %i.eg = and i64 %indvars.iv.next136, 4294967295
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %.critedge.thread, label %bb.ad, !llvm.loop !413

.critedge:                                        ; preds = %bb.ad
  %i.eh = icmp samesign ult i64 %indvars.iv135, %indvars.iv133
  br i1 %i.eh, label %.critedge.thread, label %bb.af

.critedge.thread:                                 ; preds = %bb.ae, %.critedge
  %.056.lcssa.ph176 = phi i64 [ %indvars.iv135, %.critedge ], [ 0, %bb.ae ] ; 2 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !145
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.056.lcssa.ph176
  store ptr %i.ds, ptr %i.ej, align 8, !tbaa !146
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056.lcssa.ph176
  store i32 %i.dx, ptr %i.ek, align 4, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %.critedge.thread, %.critedge
  br i1 %.not.i86, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !27
  %i.en = add i32 %i.em, -1                       ; 2 uses
  store i32 %i.en, ptr %i.el, align 4, !tbaa !27
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ah, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dp, ptr noundef nonnull %i.ds)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #20
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.af, %bb.ag, %bb.ah
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count140
  br i1 %exitcond141.not, label %.preheader, label %bb.ac, !llvm.loop !414

._crit_edge:                                      ; preds = %bb.at, %.preheader
  %.not.i.i91 = icmp eq ptr %i.y, null
  br i1 %.not.i.i91, label %_ZN6vectorIjLb1EjED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.w)
          to label %_ZN6vectorIjLb1EjED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #20
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit:                      ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, %._crit_edge, %bb.aj
  %.pr = load ptr, ptr %3, align 8, !tbaa !145    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not.i.i92 = icmp eq ptr %.pr, null
  br i1 %.not.i.i92, label %_ZN6vectorIP3appLb0EjED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6vectorIjLb1EjED2Ev.exit
  %i.et = getelementptr inbounds i8, ptr %.pr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.et)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #20
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit:                  ; preds = %.critedge106, %_ZN6vectorIjLb1EjED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !47  ; 5 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !53 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fb
  %.not.i93 = icmp eq i32 %i.ez, 0
  br i1 %.not.i93, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ew, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.fd = load ptr, ptr %.06.i.i, align 8, !tbaa !23 ; 3 uses
  %i.fe = load ptr, ptr %2, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !27
  %i.fh = add i32 %i.fg, -1                       ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !27
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ao, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fe, ptr noundef nonnull %i.fd)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.aq

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ao, %bb.an, %.lr.ph.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.fk = icmp ult ptr %i.fj, %i.fc
  br i1 %i.fk, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i94 = load ptr, ptr %i.c, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i94, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.fl = phi ptr [ %.pre.i94, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ew, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fm)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #20
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #20
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 true

bb.ar:                                            ; preds = %.lr.ph127, %bb.at
  %indvars.iv142 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next143, %bb.at ] ; 2 uses
  %i.fr = load ptr, ptr %3, align 8, !tbaa !145
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv142
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !146 ; 2 uses
  %i.fu = load ptr, ptr %0, align 8, !tbaa !220, !nonnull !56, !align !57
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 832
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !269
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.dn, ptr noundef %i.ft, ptr noundef %i.fw)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN9spacer_qe22array_project_eqs_util15find_subst_termEP3app(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %i.ft)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.fx = load ptr, ptr %i.dk, align 8, !tbaa !25
  %i.fy = icmp eq ptr %i.fx, null
  %i.fz = icmp samesign ult i64 %indvars.iv.next143, %i.do
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %bb.ar, label %._crit_edge, !llvm.loop !415

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.y, %bb.z, %bb.au
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.au ], [ %i.cm, %bb.z ], [ %i.cl, %bb.y ]
  call void @_ZN6vectorIjLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.av ], [ %i.bv, %bb.s ]
end_hunk_0
begin_hunk_1_@_ZN9spacer_qe26array_project_selects_util9ackermannERK10ptr_vectorI3appE:bb.a
  br i1 %i.ag, label %_Z15get_array_arityPK4sort.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !53
  %i.aj = add i32 %i.ai, -1
  br label %_Z15get_array_arityPK4sort.exit

_Z15get_array_arityPK4sort.exit:                  ; preds = %_Z15get_array_rangePK4sort.exit, %bb.e, %bb.f
  %i.ak = phi i32 [ -1, %_Z15get_array_rangePK4sort.exit ], [ %i.aj, %bb.f ], [ -1, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !259 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Z15get_array_arityPK4sort.exit
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z15get_array_arityPK4sort.exit
  %.0.i = phi i32 [ %i.ap, %bb.g ], [ 0, %_Z15get_array_arityPK4sort.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.aq = load ptr, ptr %0, align 8, !tbaa !284, !nonnull !56, !align !57 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  store i64 %i.ar, ptr %9, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  store ptr null, ptr %i.as, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 %i.ar, ptr %10, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store ptr null, ptr %i.at, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr null, ptr %11, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !21
  %i.av = load ptr, ptr %1, align 8, !tbaa !145   ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %._crit_edge, label %_ZNK6vectorIP3appLb0EjE3endEv.exit

_ZNK6vectorIP3appLb0EjE3endEv.exit:               ; preds = %bb.h
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !53 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %.not317 = icmp eq i32 %i.ay, 0
  br i1 %.not317, label %._crit_edge, label %.lr.ph319

.lr.ph319:                                        ; preds = %_ZNK6vectorIP3appLb0EjE3endEv.exit
  %.not329 = icmp eq i32 %i.ak, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = zext i32 %.0.i to i64
  %wide.trip.count = zext i32 %i.ak to i64
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.bp
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !259
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.loopexit, %_ZNK6vectorIP3appLb0EjE3endEv.exit
  %i.bk = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.am, %_ZNK6vectorIP3appLb0EjE3endEv.exit ], [ %i.am, %bb.h ] ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null                 ; 2 uses
  br i1 %i.bl, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit129, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !53
  br label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit129

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit129: ; preds = %._crit_edge, %bb.i
  %.0.i128 = phi i32 [ %i.bn, %bb.i ], [ 0, %._crit_edge ] ; 4 uses
  %i.bo = icmp eq i32 %.0.i128, %.0.i
  br i1 %i.bo, label %.loopexit, label %bb.bq

bb.j:                                             ; preds = %.lr.ph319, %bb.bp
  %.089318 = phi ptr [ %i.av, %.lr.ph319 ], [ %i.ke, %bb.bp ] ; 2 uses
  %i.bp = load ptr, ptr %.089318, align 8, !tbaa !146 ; 4 uses
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !47 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.j
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !53 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.cd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.bq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bx = load ptr, ptr %.06.i.i, align 8, !tbaa !23 ; 3 uses
  %i.by = load ptr, ptr %9, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !27
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !27
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.by, ptr noundef nonnull %i.bx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.bw
  br i1 %i.ce, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i130 = load ptr, ptr %i.as, align 8, !tbaa !47 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i130, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.cf = phi ptr [ %.pre.i130, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4
  store i32 0, ptr %i.cg, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.j
  %i.ch = load ptr, ptr %i.at, align 8, !tbaa !47 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit142, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i131

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i131:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !53 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm
  %.not.i132 = icmp eq i32 %i.ck, 0
  br i1 %.not.i132, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i140, label %.lr.ph.i.i133

.lr.ph.i.i133:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i131, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136
  %.06.i.i134 = phi ptr [ %i.cu, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136 ], [ %i.ch, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i131 ] ; 2 uses
  %i.co = load ptr, ptr %.06.i.i134, align 8, !tbaa !23 ; 3 uses
  %i.cp = load ptr, ptr %10, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i.i.i.i135 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i135, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i133
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !27
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cp, ptr noundef nonnull %i.co)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136 unwind label %.loopexit305

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136: ; preds = %bb.n, %bb.m, %.lr.ph.i.i133
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i134, i64 8 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.cn
  br i1 %i.cv, label %.lr.ph.i.i133, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i137, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i137: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i136
  %.pre.i138 = load ptr, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %.not.i.i139 = icmp eq ptr %.pre.i138, null
  br i1 %.not.i.i139, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit142, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i140

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i140: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i137, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i131
  %i.cw = phi ptr [ %.pre.i138, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i137 ], [ %i.ch, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i131 ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4
  store i32 0, ptr %i.cx, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit142

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit142: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i137, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i140
  br i1 %.not329, label %.preheader304, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit142
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  br label %bb.o

.preheader304:                                    ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit150, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit142
  %i.cz = load ptr, ptr %i.be, align 8, !tbaa !259 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.critedge, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152.lr.ph

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152.lr.ph: ; preds = %.preheader304
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !53 ; 2 uses
  %i.dd = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.dg = icmp ult i32 %.0.i, %i.dc
  br i1 %i.dg, label %.lr.ph316, label %.critedge

.loopexit305:                                     ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit150
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit150 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !23 ; 4 uses
  %i.dj = load ptr, ptr %i.bd, align 8, !tbaa !232
  invoke void @_ZN26model_evaluator_array_util4evalER5modelP4exprR7obj_refIS2_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(160) %i.dj, ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.ap

bb.p:                                             ; preds = %bb.o
  %i.dk = load ptr, ptr %11, align 8, !tbaa !25   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !27
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !27
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.q, %bb.p
  %i.do = load ptr, ptr %i.as, align 8, !tbaa !47 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !53 ; 5 uses
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !53
  %i.du = icmp eq i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.t, label %bb.ac

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.dv = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc257 unwind label %bb.ap ; 3 uses

.noexc257:                                        ; preds = %bb.s
  store i32 2, ptr %i.dv, align 4, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 0, ptr %i.dw, align 4, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.as, align 8, !tbaa !47
  br label %.noexc143

bb.t:                                             ; preds = %bb.r
  %i.dy = mul i32 %i.dr, 3
  %i.dz = add i32 %i.dy, 1
  %i.ea = lshr i32 %i.dz, 1                       ; 3 uses
  %i.eb = shl i32 %i.ea, 3
  %i.ec = add i32 %i.eb, 8                        ; 2 uses
  %.not.i255 = icmp ugt i32 %i.ea, %i.dr
  br i1 %.not.i255, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ed = shl i32 %i.dr, 3
  %i.ee = add i32 %i.ed, 8
  %.not27.i = icmp ugt i32 %i.ec, %i.ee
  br i1 %.not27.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ef = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ef, align 8, !tbaa !135
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 3 uses
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !271
  %i.ei = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !149 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eh, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.eo, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !150
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !151
  store i64 %i.ep, ptr %i.eh, align 8, !tbaa !151
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i256 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !149
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.x
  %i.eq = phi i64 [ %i.em, %bb.x ], [ %.pre.i256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !149
  store ptr %i.ej, ptr %6, align 8, !tbaa !150
  store i64 0, ptr %i.er, align 8, !tbaa !149
  store i8 0, ptr %i.ej, align 8, !tbaa !151
  invoke void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ab unwind label %bb.y

bb.y:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ej
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.y
  %i.ew = load i64, ptr %i.ej, align 8, !tbaa !151
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.z:                                             ; preds = %bb.v
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @__cxa_free_exception(ptr %i.ef) #19
  br label %.body

bb.aa:                                            ; preds = %bb.u
  %i.ez = zext i32 %i.ec to i64
  %i.fa = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ds, i64 noundef %i.ez)
          to label %.noexc258 unwind label %bb.ap ; 2 uses

.noexc258:                                        ; preds = %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.as, align 8, !tbaa !47
  store i32 %i.ea, ptr %i.fa, align 4, !tbaa !53
  br label %.noexc143

bb.ab:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc143:                                        ; preds = %.noexc258, %.noexc257
  %.pre.i.i = phi ptr [ %i.fb, %.noexc258 ], [ %i.dx, %.noexc257 ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc143, %bb.r
  %i.fc = phi i32 [ %.pre2.i.i, %.noexc143 ], [ %i.dr, %bb.r ] ; 2 uses
  %i.fd = phi ptr [ %.pre.i.i, %.noexc143 ], [ %i.do, %bb.r ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %i.dk, ptr %i.fg, align 8, !tbaa !23
  %i.fh = add i32 %i.fc, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !53
  %.not.i.i.i.i144 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i144, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i145, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !27
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i145

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i145: ; preds = %bb.ad, %bb.ac
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !47 ; 4 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i145
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !53 ; 5 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !53
  %i.fr = icmp eq i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ag, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit150

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i145
  %i.fs = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc269 unwind label %bb.ap ; 3 uses

.noexc269:                                        ; preds = %bb.af
  store i32 2, ptr %i.fs, align 4, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 0, ptr %i.ft, align 4, !tbaa !53
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.at, align 8, !tbaa !47
  br label %.noexc149

bb.ag:                                            ; preds = %bb.ae
  %i.fv = mul i32 %i.fo, 3
  %i.fw = add i32 %i.fv, 1
  %i.fx = lshr i32 %i.fw, 1                       ; 3 uses
  %i.fy = shl i32 %i.fx, 3
  %i.fz = add i32 %i.fy, 8                        ; 2 uses
  %.not.i259 = icmp ugt i32 %i.fx, %i.fo
  br i1 %.not.i259, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ga = shl i32 %i.fo, 3
  %i.gb = add i32 %i.ga, 8
  %.not27.i268 = icmp ugt i32 %i.fz, %i.gb
  br i1 %.not27.i268, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gc = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gc, align 8, !tbaa !135
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 3 uses
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !271
  %i.gf = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i261

bb.ak:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !149 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gk)
  %i.gl = add nuw nsw i64 %i.gj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ge, ptr noundef nonnull align 8 dereferenceable(1) %i.gg, i64 %i.gl, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i261: ; preds = %bb.aj
  store ptr %i.gf, ptr %i.gd, align 8, !tbaa !150
  %i.gm = load i64, ptr %i.gg, align 8, !tbaa !151
  store i64 %i.gm, ptr %i.ge, align 8, !tbaa !151
  %.phi.trans.insert.i262 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i263 = load i64, ptr %.phi.trans.insert.i262, align 8, !tbaa !149
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i264

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i264: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i261, %bb.ak
  %i.gn = phi i64 [ %i.gj, %bb.ak ], [ %.pre.i263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i261 ]
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %i.gn, ptr %i.gp, align 8, !tbaa !149
  store ptr %i.gg, ptr %4, align 8, !tbaa !150
  store i64 0, ptr %i.go, align 8, !tbaa !149
  store i8 0, ptr %i.gg, align 8, !tbaa !151
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ao unwind label %bb.al

bb.al:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i264
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.gg
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i265: ; preds = %bb.al
  %i.gt = load i64, ptr %i.gg, align 8, !tbaa !151
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i266: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.am:                                            ; preds = %bb.ai
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @__cxa_free_exception(ptr %i.gc) #19
  br label %.body

bb.an:                                            ; preds = %bb.ah
  %i.gw = zext i32 %i.fz to i64
  %i.gx = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fp, i64 noundef %i.gw)
          to label %.noexc272 unwind label %bb.ap ; 2 uses

.noexc272:                                        ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.at, align 8, !tbaa !47
  store i32 %i.fx, ptr %i.gx, align 4, !tbaa !53
  br label %.noexc149

bb.ao:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i264
  unreachable

.noexc149:                                        ; preds = %.noexc272, %.noexc269
  %.pre.i.i146 = phi ptr [ %i.gy, %.noexc272 ], [ %i.fu, %.noexc269 ] ; 2 uses
  %.phi.trans.insert.i.i147 = getelementptr inbounds i8, ptr %.pre.i.i146, i64 -4
  %.pre2.i.i148 = load i32, ptr %.phi.trans.insert.i.i147, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit150

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit150: ; preds = %bb.ae, %.noexc149
  %i.gz = phi i32 [ %.pre2.i.i148, %.noexc149 ], [ %i.fo, %bb.ae ] ; 2 uses
  %i.ha = phi ptr [ %.pre.i.i146, %.noexc149 ], [ %i.fl, %bb.ae ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -4
  %i.hc = zext i32 %i.gz to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hc
  store ptr %i.di, ptr %i.hd, align 8, !tbaa !23
  %i.he = add i32 %i.gz, 1
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !53
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader304, label %bb.o

bb.ap:                                            ; preds = %bb.an, %bb.af, %bb.aa, %bb.s, %bb.o
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph316:                                        ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152.lr.ph, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152 ], [ %i.bj, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152.lr.ph ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv337 ; 2 uses
  br i1 %i.de, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %.lr.ph316
  %i.hh = load i32, ptr %i.df, align 4, !tbaa !53 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !47 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %.lr.ph316
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !47 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.thread.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i153 = icmp eq i32 %i.hh, 0
  br i1 %.not.i153, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.thread.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ho = phi ptr [ %i.hm, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ %i.hj, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ] ; 2 uses
  %.0.i.i19.i = phi i32 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ], [ %i.hh, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ] ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !53
  %.not16.i = icmp eq i32 %.0.i.i19.i, %i.hq
  br i1 %.not16.i, label %bb.aq, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152

bb.aq:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.thread.i
  %i.hr = zext i32 %.0.i.i19.i to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i: ; preds = %bb.aq, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %i.hs = phi ptr [ %i.ho, %bb.aq ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.i ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ]
  %.0.i.i13.i = phi i64 [ %i.hr, %bb.aq ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.i ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i ] ; 2 uses
  %.not9.i482 = icmp eq i64 %.0.i.i13.i, 0
  br i1 %.not9.i482, label %.split.us, label %.lr.ph484

bb.ar:                                            ; preds = %.lr.ph484
  %.not9.i = icmp eq i64 %i.ht, 0
  br i1 %.not9.i, label %.split.us, label %.lr.ph484, !llvm.loop !447

.lr.ph484:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i, %bb.ar
  %indvars.iv.i483 = phi i64 [ %i.ht, %bb.ar ], [ %.0.i.i13.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i ]
  %i.ht = add nsw i64 %indvars.iv.i483, -1        ; 4 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !23
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !23
  %.not10.i = icmp eq ptr %i.hv, %i.hx
  br i1 %.not10.i, label %bb.ar, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152, !llvm.loop !447

.split.us:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit14.i, %bb.ar
  %i.hy = load ptr, ptr %i.bf, align 8, !tbaa !145
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv337
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !146
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.bg, ptr noundef %i.bp, ptr noundef %i.ia)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %.split.us
  %i.ib = load ptr, ptr %i.al, align 8, !tbaa !259
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %indvars.iv337
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN9spacer_qe26array_project_selects_util6mk_eqsERK10ref_vectorI4expr11ast_managerES6_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ic)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.id = load ptr, ptr %12, align 8, !tbaa !25
  %i.ie = load ptr, ptr %i.bh, align 8, !tbaa !47 ; 4 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !53 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ie, i64 -8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !53
  %i.ik = icmp eq i32 %i.ih, %i.ij
  br i1 %i.ik, label %bb.av, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.noexc157 unwind label %bb.ay

.noexc157:                                        ; preds = %bb.av
  %.pre.i.i154 = load ptr, ptr %i.bh, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert.i.i155 = getelementptr inbounds i8, ptr %.pre.i.i154, i64 -4
  %.pre2.i.i156 = load i32, ptr %.phi.trans.insert.i.i155, align 4, !tbaa !53
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.au, %.noexc157
  %i.il = phi i32 [ %.pre2.i.i156, %.noexc157 ], [ %i.ih, %bb.au ] ; 2 uses
  %i.im = phi ptr [ %.pre.i.i154, %.noexc157 ], [ %i.ie, %bb.au ] ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -4
  %i.io = zext i32 %i.il to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.io
  store ptr %i.id, ptr %i.ip, align 8, !tbaa !23
  %i.iq = add i32 %i.il, 1
  store i32 %i.iq, ptr %i.in, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bp

bb.aw:                                            ; preds = %.split.us
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.as
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #19
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn115 = phi { ptr, i32 } [ %i.it, %bb.ay ], [ %i.is, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152: ; preds = %.lr.ph484, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.thread.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit12.i
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next338 to i32
  %exitcond341.not = icmp eq i32 %i.dc, %lftr.wideiv
  br i1 %exitcond341.not, label %.critedge, label %.lr.ph316

.critedge:                                        ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit152.lr.ph, %.preheader304
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ba unwind label %bb.bl     ; 0 uses

bb.ba:                                            ; preds = %.critedge
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bb unwind label %bb.bl     ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.iw = load ptr, ptr %0, align 8, !tbaa !284, !nonnull !56, !align !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.19)
          to label %.noexc159 unwind label %bb.bm

.noexc159:                                        ; preds = %bb.bb
  %i.ix = invoke noundef ptr @_ZN11ast_manager18mk_fresh_func_declERK6symbolS2_jPKP4sortS4_b(ptr noundef nonnull align 8 dereferenceable(952) %i.iw, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, i32 noundef 0, ptr noundef null, ptr noundef %i.ad, i1 noundef zeroext true)
          to label %.noexc160 unwind label %bb.bm

.noexc160:                                        ; preds = %.noexc159
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.iy = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.iw, ptr noundef %i.ix, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit unwind label %bb.bm ; 8 uses

_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit: ; preds = %.noexc160
  %i.iz = load ptr, ptr %0, align 8, !tbaa !284, !nonnull !56, !align !57 ; 2 uses
  store ptr %i.iy, ptr %13, align 8, !tbaa !50
  store ptr %i.iz, ptr %i.bi, align 8, !tbaa !21
  %.not.i.i162 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i162, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !27
  %i.jc = add i32 %i.jb, 2
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !27
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %_ZN11ast_manager14mk_fresh_constEPKcP4sortb.exit, %bb.bc
  %i.jd = load ptr, ptr %i.bf, align 8, !tbaa !145 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 -4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !53 ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !53
  %i.jj = icmp eq i32 %i.jg, %i.ji
  br i1 %i.jj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.noexc167 unwind label %bb.bn

.noexc167:                                        ; preds = %bb.be
  %.pre.i.i164 = load ptr, ptr %i.bf, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i.i165 = getelementptr inbounds i8, ptr %.pre.i.i164, i64 -4
  %.pre2.i.i166 = load i32, ptr %.phi.trans.insert.i.i165, align 4, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc167, %bb.bd
  %i.jk = phi i32 [ %.pre2.i.i166, %.noexc167 ], [ %i.jg, %bb.bd ] ; 2 uses
  %i.jl = phi ptr [ %.pre.i.i164, %.noexc167 ], [ %i.jd, %bb.bd ] ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -4
  %i.jn = zext i32 %i.jk to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jn
  store ptr %i.iy, ptr %i.jo, align 8, !tbaa !146
  %i.jp = add i32 %i.jk, 1
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !53
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.bg, ptr noundef %i.bp, ptr noundef %i.iy)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.jq = load ptr, ptr %i.bd, align 8, !tbaa !232
  invoke void @_ZN26model_evaluator_array_util4evalER5modelP4exprR7obj_refIS2_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(160) %i.jq, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext true)
          to label %bb.bh unwind label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.jr = load ptr, ptr %i.bd, align 8, !tbaa !232
  %i.js = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !48
  %i.ju = load ptr, ptr %11, align 8, !tbaa !25
  invoke void @_ZN10model_core13register_declEP9func_declP4expr(ptr noundef nonnull align 8 dereferenceable(96) %i.jr, ptr noundef %i.jt, ptr noundef %i.ju)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !27
  %i.jx = add i32 %i.jw, -1                       ; 2 uses
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !27
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.bj, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.iz, ptr noundef nonnull %i.iy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #20
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bp

bb.bl:                                            ; preds = %bb.ba, %.critedge
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bm:                                            ; preds = %.noexc160, %.noexc159, %bb.bb
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be, %bb.bh, %bb.bg, %bb.bf
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #19
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn120 = phi { ptr, i32 } [ %i.kd, %bb.bn ], [ %i.kc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

bb.bp:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %.089318, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ke, %i.bb
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j

bb.bq:                                            ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit129
  %i.kf = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !130 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !132
  switch i8 %i.kj, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke [
    i8 1, label %bb.br
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169
  ], !prof !133

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169: ; preds = %bb.bq
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke: ; preds = %bb.bq, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169
  %.str.5.sink = phi ptr [ @.str.4, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169 ], [ @.str.5, %bb.bq ]
  %i.kk = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.kk, align 8, !tbaa !135
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %.str.5.sink, ptr %i.kl, align 8, !tbaa !138
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #21
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.cont unwind label %bb.bu

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.km = icmp eq i32 %i.ak, 1
  br i1 %i.km, label %bb.bs, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !140
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !127 ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i:     ; preds = %bb.bs
  %i.ks = load i32, ptr %i.kq, align 8, !tbaa !189
  %i.kt = icmp eq i32 %i.ks, 5
  br i1 %i.kt, label %_ZNK17arith_recognizers7is_realEPK4sort.exit, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread

_ZNK17arith_recognizers7is_realEPK4sort.exit:     ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !190
  %switch = icmp ult i32 %i.kv, 2
  br i1 %switch, label %bb.bt, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread

bb.bt:                                            ; preds = %_ZNK17arith_recognizers7is_realEPK4sort.exit
  %.084320 = add i32 %.0.i, 1                     ; 2 uses
  %i.kw = icmp ult i32 %.084320, %.0.i128
  br i1 %i.kw, label %.lr.ph323, label %.preheader

.lr.ph323:                                        ; preds = %bb.bt
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ld = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %15, i64 8
end_hunk_1
