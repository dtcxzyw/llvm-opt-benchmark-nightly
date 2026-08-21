inline.NumInlined: 2576
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9spacer_qe22array_project_eqs_util7projectERK7obj_refI4expr11ast_managerE:bb.a
bb.l:                                             ; preds = %.noexc85, %bb.j
  %i.be = phi i32 [ %.pre2.i, %.noexc85 ], [ %i.ba, %bb.j ] ; 2 uses
  %i.bf = phi ptr [ %.pre.i, %.noexc85 ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bh = zext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  store ptr %i.ae, ptr %i.bi, align 8, !tbaa !141
  %i.bj = add i32 %i.be, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !42
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.h, %bb.l
  %i.bl = load ptr, ptr %4, align 8, !tbaa !13    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !51, !nonnull !46, !align !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !15
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !15
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
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge106, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !399

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
  %indvars.iv130 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next131, %.thread100 ] ; 3 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !138
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv130
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !141 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !11 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 5 uses
  %i.cd = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ce = icmp eq ptr %i.ca, %i.cd
  br i1 %i.ce, label %.thread103, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef %i.ca)
          to label %bb.v unwind label %bb.y       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !39
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
  %i.cn = load i32, ptr %i.ab, align 8, !tbaa !137
  %i.co = getelementptr inbounds nuw i8, ptr %.059, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 65535
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %.thread100

.lr.ph:                                           ; preds = %.preheader108, %bb.ab
  %.058112 = phi i32 [ %i.dc, %bb.ab ], [ 1, %.preheader108 ] ; 3 uses
  %.160111 = phi ptr [ %i.de, %bb.ab ], [ %.059, %.preheader108 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.160111, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i, label %.thread100, label %_ZNK17array_recognizers8is_storeEP4expr.exit

_ZNK17array_recognizers8is_storeEP4expr.exit:     ; preds = %.lr.ph
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !186
  %i.cx = icmp eq i32 %i.cw, %i.cn
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %bb.ab, label %.thread100

bb.ab:                                            ; preds = %_ZNK17array_recognizers8is_storeEP4expr.exit
  %i.dc = add i32 %.058112, 1                     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.160111, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !11 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 65535
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph, label %.thread100, !llvm.loop !400

.thread100:                                       ; preds = %_ZNK17array_recognizers8is_storeEP4expr.exit, %bb.ab, %.lr.ph, %.preheader108, %bb.x, %.thread103, %.thread, %bb.aa
  %.1 = phi i32 [ 0, %.thread103 ], [ 0, %bb.aa ], [ 0, %.thread ], [ 0, %bb.x ], [ 1, %.preheader108 ], [ %.058112, %_ZNK17array_recognizers8is_storeEP4expr.exit ], [ %i.dc, %bb.ab ], [ %.058112, %.lr.ph ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv130
  store i32 %.1, ptr %i.dj, align 4, !tbaa !42
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count
  br i1 %exitcond.not, label %.preheader107, label %bb.t, !llvm.loop !401

.preheader:                                       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %.preheader107
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.do = zext i32 %i.r to i64
  br label %bb.ar

bb.ac:                                            ; preds = %.lr.ph125, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %indvars.iv133 = phi i64 [ 1, %.lr.ph125 ], [ %indvars.iv.next134, %_ZN7obj_refI3app11ast_managerED2Ev.exit ] ; 5 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !217, !nonnull !46, !align !47
  %i.dq = load ptr, ptr %3, align 8, !tbaa !138   ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv133
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !141 ; 5 uses
  %.not.i86 = icmp eq ptr %i.ds, null             ; 2 uses
  br i1 %.not.i86, label %.lr.ph120, label %_ZN11ast_manager7inc_refEP3ast.exit.i87

_ZN11ast_manager7inc_refEP3ast.exit.i87:          ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !15
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !15
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.ac, %_ZN11ast_manager7inc_refEP3ast.exit.i87
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv133
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !42 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph120, %bb.ae
  %indvars.iv135 = phi i64 [ %indvars.iv133, %.lr.ph120 ], [ %indvars.iv.next136, %bb.ae ] ; 5 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %6 = and i64 %indvars.iv.next136, 4294967295    ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %6
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !42 ; 2 uses
  %i.ea = icmp ugt i32 %i.dz, %i.dx
  br i1 %i.ea, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %6
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !141
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv135
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !141
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv135
  store i32 %i.dz, ptr %i.ee, align 4, !tbaa !42
  %7 = and i64 %indvars.iv.next136, 4294967295
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %.critedge.thread, label %bb.ad, !llvm.loop !402

.critedge:                                        ; preds = %bb.ad
  %i.ef = icmp samesign ult i64 %indvars.iv135, %indvars.iv133
  br i1 %i.ef, label %.critedge.thread, label %bb.af

.critedge.thread:                                 ; preds = %bb.ae, %.critedge
  %.056.lcssa.ph176 = phi i64 [ %indvars.iv135, %.critedge ], [ 0, %bb.ae ] ; 2 uses
  %i.eg = load ptr, ptr %3, align 8, !tbaa !138
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.056.lcssa.ph176
  store ptr %i.ds, ptr %i.eh, align 8, !tbaa !141
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.056.lcssa.ph176
  store i32 %i.dx, ptr %i.ei, align 4, !tbaa !42
  br label %bb.af

bb.af:                                            ; preds = %.critedge.thread, %.critedge
  br i1 %.not.i86, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !15
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !15
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ah, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dp, ptr noundef nonnull %i.ds)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #20
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.af, %bb.ag, %bb.ah
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count140
  br i1 %exitcond141.not, label %.preheader, label %bb.ac, !llvm.loop !403

._crit_edge:                                      ; preds = %bb.at, %.preheader
  %.not.i.i91 = icmp eq ptr %i.y, null
  br i1 %.not.i.i91, label %_ZN6vectorIjLb1EjED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.w)
          to label %_ZN6vectorIjLb1EjED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #20
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit:                      ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, %._crit_edge, %bb.aj
  %.pr = load ptr, ptr %3, align 8, !tbaa !138    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not.i.i92 = icmp eq ptr %.pr, null
  br i1 %.not.i.i92, label %_ZN6vectorIP3appLb0EjED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6vectorIjLb1EjED2Ev.exit
  %i.er = getelementptr inbounds i8, ptr %.pr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.er)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #20
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit:                  ; preds = %.critedge106, %_ZN6vectorIjLb1EjED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !36  ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !42 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez
  %.not.i93 = icmp eq i32 %i.ex, 0
  br i1 %.not.i93, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.eu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.fb = load ptr, ptr %.06.i.i, align 8, !tbaa !11 ; 3 uses
  %i.fc = load ptr, ptr %2, align 8, !tbaa !49, !nonnull !46, !align !47
  %.not.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !15
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !15
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ao, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fc, ptr noundef nonnull %i.fb)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.aq

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ao, %bb.an, %.lr.ph.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %i.fa
  br i1 %i.fi, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !50

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i94 = load ptr, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i94, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.fj = phi ptr [ %.pre.i94, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.eu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #20
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #20
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 true

bb.ar:                                            ; preds = %.lr.ph127, %bb.at
  %indvars.iv142 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next143, %bb.at ] ; 2 uses
  %i.fp = load ptr, ptr %3, align 8, !tbaa !138
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv142
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !141 ; 2 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !217, !nonnull !46, !align !47
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 832
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !304
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.dn, ptr noundef %i.fr, ptr noundef %i.fu)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN9spacer_qe22array_project_eqs_util15find_subst_termEP3app(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %i.fr)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.fv = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.fw = icmp eq ptr %i.fv, null
  %i.fx = icmp samesign ult i64 %indvars.iv.next143, %i.do
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %bb.ar, label %._crit_edge, !llvm.loop !404

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.y, %bb.z, %bb.au
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.au ], [ %i.cm, %bb.z ], [ %i.cl, %bb.y ]
  call void @_ZN6vectorIjLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.av ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.r, %bb.aw, %bb.b
  %.pn80.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.b ], [ %.pn.pn.pn.pn, %bb.aw ], [ %.pn80, %bb.r ]
  call void @_ZN6vectorIP3appLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn80.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9spacer_qe22array_project_eqs_util9mk_resultER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.th_rewriter, align 8         ; 8 uses
  %3 = alloca %class.params_ref, align 8          ; 7 uses
  %4 = alloca %class.ref_vector, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load ptr, ptr %0, align 8, !tbaa !217, !nonnull !46, !align !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !150
end_hunk_0
