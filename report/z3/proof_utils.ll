inline.NumInlined: 1199
inline.NumDeleted: 475
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN18reduce_hypotheses04elimER7obj_refI3app11ast_managerE:bb.a
_ZN11ast_manager7inc_refEP3ast.exit.i266:         ; preds = %bb.dt, %bb.ds
  %i.sp = load ptr, ptr %i.sk, align 8, !tbaa !18 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.sp, null
  br i1 %.not.i3.i, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i266
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !142
  %i.ss = add i32 %i.sr, -1                       ; 2 uses
  store i32 %i.ss, ptr %i.sq, align 4, !tbaa !142
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sl, ptr noundef nonnull %i.sp)
          to label %bb.dw unwind label %bb.ec

bb.dw:                                            ; preds = %bb.du, %_ZN11ast_manager7inc_refEP3ast.exit.i266, %bb.dv
  store ptr %i.sj, ptr %i.sk, align 8, !tbaa !18
  %i.su = load ptr, ptr %9, align 8, !tbaa !112   ; 5 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !23
  %i.sx = add i32 %i.sw, -1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.sz = zext i32 %i.sx to i64
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.sz
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !39 ; 9 uses
  %i.tc = load ptr, ptr %0, align 8, !tbaa !153, !nonnull !37, !align !38
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 840
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !209
  %i.tf = icmp eq ptr %i.tb, %i.te
  br i1 %i.tf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i270, label %bb.ed

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i270: ; preds = %bb.dw
  %i.tg = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !142
  %i.ti = add i32 %i.th, 1
  store i32 %i.ti, ptr %i.tg, align 8, !tbaa !142
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !113 ; 4 uses
  %i.tl = icmp eq ptr %i.tk, null
  br i1 %i.tl, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i270
  %i.tm = getelementptr inbounds i8, ptr %i.tk, i64 -4
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !17 ; 2 uses
  %i.to = getelementptr inbounds i8, ptr %i.tk, i64 -8
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !17
  %i.tq = icmp eq i32 %i.tn, %i.tp
  br i1 %i.tq, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i270
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tj)
          to label %.noexc274 unwind label %.loopexit.split-lp509.loopexit.split-lp

.noexc274:                                        ; preds = %bb.dy
  %.pre.i.i271 = load ptr, ptr %i.tj, align 8, !tbaa !113 ; 2 uses
  %.phi.trans.insert.i.i272 = getelementptr inbounds i8, ptr %.pre.i.i271, i64 -4
  %.pre2.i.i273 = load i32, ptr %.phi.trans.insert.i.i272, align 4, !tbaa !17
  %.pre623 = load ptr, ptr %9, align 8, !tbaa !112
  br label %bb.dz

bb.dz:                                            ; preds = %.noexc274, %bb.dx
  %i.tr = phi ptr [ %.pre623, %.noexc274 ], [ %i.su, %bb.dx ] ; 3 uses
  %i.ts = phi i32 [ %.pre2.i.i273, %.noexc274 ], [ %i.tn, %bb.dx ] ; 2 uses
  %i.tt = phi ptr [ %.pre.i.i271, %.noexc274 ], [ %i.tk, %bb.dx ] ; 2 uses
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -4
  %i.tv = zext i32 %i.ts to i64
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tv
  store ptr %i.su, ptr %i.tw, align 8, !tbaa !39
  %i.tx = add i32 %i.ts, 1
  store i32 %i.tx, ptr %i.tu, align 4, !tbaa !17
  %i.ty = load ptr, ptr %i.ki, align 8, !tbaa !165 ; 5 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %_ZN6vectorIjLb0EjE4backEv.exit.i276, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ua = getelementptr inbounds i8, ptr %i.ty, i64 -4
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !17
  %i.uc = add i32 %i.ub, -1
  %i.ud = zext i32 %i.uc to i64
  br label %_ZN6vectorIjLb0EjE4backEv.exit.i276

_ZN6vectorIjLb0EjE4backEv.exit.i276:              ; preds = %bb.ea, %bb.dz
  %.0.i.i.i277 = phi i64 [ %i.ud, %bb.ea ], [ 4294967295, %bb.dz ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %.0.i.i.i277
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !17 ; 2 uses
  %i.ug = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 3 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %_ZN18reduce_hypotheses03popEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i278

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i278:  ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i276
  %i.ui = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.phi.trans.insert.i279 = getelementptr inbounds i8, ptr %i.ug, i64 -4
  %.pre.i280 = load i32, ptr %.phi.trans.insert.i279, align 4, !tbaa !17 ; 2 uses
  %i.uj = icmp ugt i32 %.pre.i280, %i.uf
  br i1 %i.uj, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i284, label %_ZN18reduce_hypotheses03popEv.exit

_ZN6vectorIP4exprLb0EjE4backEv.exit.i284:         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i278, %.noexc285
  %i.uk = phi ptr [ %i.uq, %.noexc285 ], [ %i.ug, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i278 ]
  %i.ul = phi i32 [ %i.ut, %.noexc285 ], [ %.pre.i280, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i278 ]
  %i.um = add i32 %i.ul, -1
  %i.un = zext i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %i.un
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.up, ptr %5, align 8, !tbaa !129
  store ptr null, ptr %i.ui, align 8, !tbaa !204
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE6removeERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc285 unwind label %.loopexit508

.noexc285:                                        ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.uq = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 2 uses
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 -4 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !17
  %i.ut = add i32 %i.us, -1                       ; 3 uses
  store i32 %i.ut, ptr %i.ur, align 4, !tbaa !17
  %i.uu = icmp ugt i32 %i.ut, %i.uf
  br i1 %i.uu, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i284, label %_ZN18reduce_hypotheses03popEv.exit.sink.split, !llvm.loop !294

bb.eb:                                            ; preds = %bb.dr
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

bb.ec:                                            ; preds = %bb.dv
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

.loopexit508:                                     ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i284
  %lpad.loopexit510 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

.loopexit.split-lp509.loopexit:                   ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i374
  %lpad.loopexit513 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

.loopexit.split-lp509.loopexit.split-lp:          ; preds = %bb.dy, %bb.fo, %bb.fn, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365, %.loopexit522
  %lpad.loopexit.split-lp514 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

bb.ed:                                            ; preds = %bb.dw
  %i.ux = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.uy = load i32, ptr %i.ux, align 4
  %i.uz = and i32 %i.uy, 65535
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.ee, label %.loopexit522

bb.ee:                                            ; preds = %bb.ed
  %i.vb = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !173
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ve, null
  br i1 %.not.i.i.i.i.i, label %.loopexit522, label %_ZNK11ast_manager5is_orEPK4expr.exit.i

_ZNK11ast_manager5is_orEPK4expr.exit.i:           ; preds = %bb.ee
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !200
  %i.vg = icmp eq i32 %i.vf, 0
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vi = load i32, ptr %i.vh, align 4
  %i.vj = icmp eq i32 %i.vi, 6
  %i.vk = select i1 %i.vg, i1 %i.vj, i1 false
  br i1 %i.vk, label %.preheader.i, label %.loopexit522

.preheader.i:                                     ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %i.vm = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !23 ; 2 uses
  %.not12.not.i = icmp eq i32 %i.vn, 0
  br i1 %.not12.not.i, label %.loopexit522, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.vn to i64
  br label %.lr.ph.i

bb.ef:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit522, label %.lr.ph.i, !llvm.loop !295

.lr.ph.i:                                         ; preds = %bb.ef, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ef ] ; 2 uses
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %indvars.iv.i
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !39
  %i.vq = icmp eq ptr %i.vp, %i.tb
  br i1 %i.vq, label %_ZN18reduce_hypotheses020is_literal_in_clauseEP4exprS1_.exit.preheader, label %bb.ef

_ZN18reduce_hypotheses020is_literal_in_clauseEP4exprS1_.exit.preheader: ; preds = %.lr.ph.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.vv = load ptr, ptr %i.jz, align 8, !tbaa !8  ; 6 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader: ; preds = %_ZN18reduce_hypotheses020is_literal_in_clauseEP4exprS1_.exit.preheader
  %14 = getelementptr inbounds i8, ptr %i.vv, i64 -4
  %i.vx = load i32, ptr %14, align 4, !tbaa !17   ; 2 uses
  %i.vy = zext i32 %i.vx to i64
  %15 = icmp ugt i32 %i.vx, 1
  br i1 %15, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %.critedge

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader
  %16 = load ptr, ptr %0, align 8, !tbaa !153, !nonnull !37, !align !38 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 832
  %18 = load ptr, ptr %17, align 8, !tbaa !262    ; 3 uses
  %19 = icmp eq ptr %i.tb, %18
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 840
  %21 = load ptr, ptr %20, align 8                ; 2 uses
  %22 = icmp eq ptr %i.tb, %21                    ; 2 uses
  br label %bb.eg

.loopexit517:                                     ; preds = %bb.ep
  %lpad.loopexit519 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

.loopexit.split-lp518.loopexit:                   ; preds = %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i
  %lpad.loopexit952 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

.loopexit.split-lp518.loopexit.split-lp:          ; preds = %bb.ev, %bb.ew, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit307
  %lpad.loopexit.split-lp953 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

bb.eg:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493
  %indvars.iv609897 = phi i64 [ %indvars.iv.next610, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493 ], [ 1, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv609897
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !18 ; 5 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !23
  %i.wd = add i32 %i.wc, -1
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  %i.wf = zext i32 %i.wd to i64
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.wf
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !39 ; 7 uses
  %i.wi = icmp eq ptr %i.wh, %21
  %or.cond.i.i = select i1 %19, i1 %i.wi, i1 false
  br i1 %or.cond.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i297, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wj = load i32, ptr %i.vr, align 4
  %i.wk = and i32 %i.wj, 65535
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %bb.ei, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i

bb.ei:                                            ; preds = %bb.eh
  %i.wm = load ptr, ptr %i.vs, align 8, !tbaa !173
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i290 = icmp eq ptr %i.wo, null
  br i1 %.not.i.i.i.i.i.i290, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i, label %_ZNK11ast_manager6is_notEPK4expr.exit.i.i291

_ZNK11ast_manager6is_notEPK4expr.exit.i.i291:     ; preds = %bb.ei
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !200
  %i.wq = icmp eq i32 %i.wp, 0
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.ws = load i32, ptr %i.wr, align 4
  %i.wt = icmp eq i32 %i.ws, 8
  %i.wu = select i1 %i.wq, i1 %i.wt, i1 false
  br i1 %i.wu, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i

_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i.i291
  %i.wv = load ptr, ptr %i.vt, align 8, !tbaa !39
  %23 = icmp eq ptr %i.wv, %i.wh
  %i.ww = icmp eq ptr %i.wh, %18
  %or.cond.i5.i = select i1 %i.ww, i1 %22, i1 false
  %or.cond1021 = select i1 %23, i1 true, i1 %or.cond.i5.i
  br i1 %or.cond1021, label %_ZN11ast_manager7inc_refEP3ast.exit.i297, label %bb.ej

_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i.i291, %bb.ei, %bb.eh
  %i.wx = icmp eq ptr %i.wh, %18
  %or.cond.i5.i.a = select i1 %i.wx, i1 %22, i1 false
  br i1 %or.cond.i5.i.a, label %_ZN11ast_manager7inc_refEP3ast.exit.i297, label %bb.ej

bb.ej:                                            ; preds = %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i, %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = and i32 %i.wz, 65535
  %i.xb = icmp eq i32 %i.xa, 0
  br i1 %i.xb, label %bb.ek, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493

bb.ek:                                            ; preds = %bb.ej
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !173
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i.i6.i, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493, label %_ZNK11ast_manager6is_notEPK4expr.exit.i7.i

_ZNK11ast_manager6is_notEPK4expr.exit.i7.i:       ; preds = %bb.ek
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !200
  %i.xh = icmp eq i32 %i.xg, 0
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xj = load i32, ptr %i.xi, align 4
  %i.xk = icmp eq i32 %i.xj, 8
  %i.xl = select i1 %i.xh, i1 %i.xk, i1 false
  br i1 %i.xl, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493

_ZNK11ast_manager13is_complementEPK4exprS2_.exit: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i7.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !39
  %i.xo = icmp eq ptr %i.xn, %i.tb
  br i1 %i.xo, label %_ZN11ast_manager7inc_refEP3ast.exit.i297, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493

_ZN11ast_manager7inc_refEP3ast.exit.i297:         ; preds = %bb.eg, %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i, %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit
  %i.xp = load ptr, ptr %12, align 8, !tbaa !191, !nonnull !37, !align !38
  %i.xq = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !142
  %i.xt = add i32 %i.xs, 1
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !142
  %i.xu = load ptr, ptr %i.xq, align 8, !tbaa !18 ; 3 uses
  %.not.i3.i298 = icmp eq ptr %i.xu, null
  br i1 %.not.i3.i298, label %.thread, label %bb.el

bb.el:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i297
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !142
  %i.xx = add i32 %i.xw, -1                       ; 2 uses
  store i32 %i.xx, ptr %i.xv, align 4, !tbaa !142
  %i.xy = icmp eq i32 %i.xx, 0
  br i1 %i.xy, label %bb.em, label %.thread

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.xp, ptr noundef nonnull %i.xu)
          to label %bb.en unwind label %bb.ex

.thread:                                          ; preds = %bb.el, %_ZN11ast_manager7inc_refEP3ast.exit.i297
  store ptr %i.wa, ptr %i.xq, align 8, !tbaa !18
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

bb.en:                                            ; preds = %bb.em
  %.pre = load ptr, ptr %i.jz, align 8, !tbaa !8  ; 2 uses
  store ptr %i.wa, ptr %i.xq, align 8, !tbaa !18
  %i.xz = icmp eq ptr %.pre, null
  br i1 %i.xz, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i.preheader, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %.thread, %bb.en
  %i.ya = phi ptr [ %i.vv, %.thread ], [ %.pre, %bb.en ] ; 4 uses
  %i.yb = getelementptr inbounds i8, ptr %i.ya, i64 -4
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !17 ; 3 uses
  %i.yd = icmp ugt i32 %i.yc, 2
  br i1 %i.yd, label %.lr.ph.i.preheader.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.ye = zext i32 %i.yc to i64
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, %.lr.ph.i.preheader.i
  %.06.i.i = phi ptr [ %i.yn, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.yg, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.yh = load ptr, ptr %.06.i.i, align 8, !tbaa !18 ; 3 uses
  %i.yi = load ptr, ptr %12, align 8, !tbaa !191, !nonnull !37, !align !38
  %.not.i.i.i.i.i302 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i.i.i302, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !142
  %i.yl = add i32 %i.yk, -1                       ; 2 uses
  store i32 %i.yl, ptr %i.yj, align 4, !tbaa !142
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %bb.ep, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.yi, ptr noundef nonnull %i.yh)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit517

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ep, %bb.eo, %.lr.ph.i.i
  %i.yn = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.yo = icmp ult ptr %i.yn, %i.yf
  br i1 %i.yo, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !193

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pr.pre.i = load ptr, ptr %i.jz, align 8, !tbaa !8 ; 3 uses
  %i.yp = icmp eq ptr %.pr.pre.i, null
  br i1 %i.yp, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i.preheader, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pr.pre.i, i64 -4
  %.pre617 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i:   ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.yq = phi i32 [ %.pre617, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge ], [ %i.yc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.pr14.i = phi ptr [ %.pr.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge ], [ %i.ya, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 3 uses
  %.not15.i.i = icmp ult i32 %i.yq, 2
  br i1 %.not15.i.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i.preheader, label %bb.eq

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i.preheader: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.en, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %.pr14.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.en ]
  %.0.i16.i.i.ph = phi i32 [ %i.yq, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ 0, %bb.en ]
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i

bb.eq:                                            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i
  %i.yr = getelementptr inbounds i8, ptr %.pr14.i, i64 -4
  store i32 2, ptr %i.yr, align 4, !tbaa !17
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit307

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i:          ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i.preheader, %.noexc304
  %i.ys = phi ptr [ %.pr.pre.i.i, %.noexc304 ], [ %.ph, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i.preheader ] ; 5 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i:      ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i
  %i.yu = getelementptr inbounds i8, ptr %i.ys, i64 -8
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !17
  %i.yw = icmp ult i32 %i.yv, 2
  br i1 %i.yw, label %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i, label %bb.er

_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jz)
          to label %.noexc304 unwind label %.loopexit.split-lp518.loopexit

.noexc304:                                        ; preds = %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %i.jz, align 8, !tbaa !8
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i, !llvm.loop !296

bb.er:                                            ; preds = %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i
  %i.yx = getelementptr inbounds i8, ptr %i.ys, i64 -4
  store i32 2, ptr %i.yx, align 4, !tbaa !17
  %i.yy = zext nneg i32 %.0.i16.i.i.ph to i64     ; 2 uses
  %i.yz = getelementptr [8 x i8], ptr %i.ys, i64 %i.yy
  %i.za = shl nuw nsw i64 %i.yy, 3
  %i.zb = sub nuw nsw i64 16, %i.za
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yz, i8 0, i64 %i.zb, i1 false), !tbaa !18
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit307

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit307: ; preds = %bb.er, %bb.eq
  %i.zc = phi ptr [ %i.ys, %bb.er ], [ %.pr14.i, %bb.eq ]
  %i.zd = load ptr, ptr %0, align 8, !tbaa !153, !nonnull !37, !align !38
  %i.ze = invoke noundef ptr @_ZN11ast_manager18mk_unit_resolutionEjPKP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.zd, i32 noundef 2, ptr noundef nonnull %i.zc)
          to label %bb.es unwind label %.loopexit.split-lp518.loopexit.split-lp ; 5 uses

bb.es:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit307
  %.not.i.i.i.i308 = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i.i308, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i309, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !142
  %i.zh = add i32 %i.zg, 1
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !142
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i309

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i309: ; preds = %bb.et, %bb.es
  %i.zi = load ptr, ptr %i.vu, align 8, !tbaa !113 ; 4 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i309
  %i.zk = getelementptr inbounds i8, ptr %i.zi, i64 -4
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !17 ; 2 uses
  %i.zm = getelementptr inbounds i8, ptr %i.zi, i64 -8
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !17
  %i.zo = icmp eq i32 %i.zl, %i.zn
  br i1 %i.zo, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i309
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vu)
          to label %.noexc313 unwind label %.loopexit.split-lp518.loopexit.split-lp

.noexc313:                                        ; preds = %bb.ev
  %.pre.i.i310 = load ptr, ptr %i.vu, align 8, !tbaa !113 ; 2 uses
  %.phi.trans.insert.i.i311 = getelementptr inbounds i8, ptr %.pre.i.i310, i64 -4
  %.pre2.i.i312 = load i32, ptr %.phi.trans.insert.i.i311, align 4, !tbaa !17
  br label %bb.ew

bb.ew:                                            ; preds = %.noexc313, %bb.eu
  %i.zp = phi i32 [ %.pre2.i.i312, %.noexc313 ], [ %i.zl, %bb.eu ] ; 2 uses
  %i.zq = phi ptr [ %.pre.i.i310, %.noexc313 ], [ %i.zi, %bb.eu ] ; 2 uses
  %i.zr = getelementptr inbounds i8, ptr %i.zq, i64 -4
  %i.zs = zext i32 %i.zp to i64
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %i.zs
  store ptr %i.ze, ptr %i.zt, align 8, !tbaa !39
  %i.zu = add i32 %i.zp, 1
  store i32 %i.zu, ptr %i.zr, align 4, !tbaa !17
  invoke void @_ZN18reduce_hypotheses014add_hypothesesEP3app(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.ze)
          to label %.critedge135 unwind label %.loopexit.split-lp518.loopexit.split-lp

bb.ex:                                            ; preds = %bb.em
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i7.i, %bb.ej, %bb.ek, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit
  %indvars.iv.next610 = add nuw nsw i64 %indvars.iv609897, 1 ; 2 uses
  %24 = icmp samesign ult i64 %indvars.iv.next610, %i.vy
  br i1 %24, label %bb.eg, label %.critedge, !llvm.loop !297

.critedge:                                        ; preds = %_ZNK11ast_manager13is_complementEPK4exprS2_.exit.thread493, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader, %_ZN18reduce_hypotheses020is_literal_in_clauseEP4exprS1_.exit.preheader
  %i.zw = load ptr, ptr %i.vv, align 8, !tbaa !18
  br label %.critedge135

.critedge135:                                     ; preds = %bb.ew, %.critedge
  %.5 = phi ptr [ %i.zw, %.critedge ], [ %i.ze, %bb.ew ] ; 3 uses
  %i.zx = load ptr, ptr %i.ki, align 8, !tbaa !165 ; 5 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %_ZN6vectorIjLb0EjE4backEv.exit.i317, label %bb.ey

bb.ey:                                            ; preds = %.critedge135
  %i.zz = getelementptr inbounds i8, ptr %i.zx, i64 -4
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !17
  %i.aab = add i32 %i.aaa, -1
  %i.aac = zext i32 %i.aab to i64
  br label %_ZN6vectorIjLb0EjE4backEv.exit.i317

_ZN6vectorIjLb0EjE4backEv.exit.i317:              ; preds = %bb.ey, %.critedge135
  %.0.i.i.i318 = phi i64 [ %i.aac, %bb.ey ], [ 4294967295, %.critedge135 ]
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %.0.i.i.i318
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !17 ; 2 uses
  %i.aaf = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 3 uses
  %i.aag = icmp eq ptr %i.aaf, null
  br i1 %i.aag, label %_ZN18reduce_hypotheses03popEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i319

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i319:  ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i317
  %i.aah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.phi.trans.insert.i320 = getelementptr inbounds i8, ptr %i.aaf, i64 -4
  %.pre.i321 = load i32, ptr %.phi.trans.insert.i320, align 4, !tbaa !17 ; 2 uses
  %i.aai = icmp ugt i32 %.pre.i321, %i.aae
  br i1 %i.aai, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i325, label %_ZN18reduce_hypotheses03popEv.exit

_ZN6vectorIP4exprLb0EjE4backEv.exit.i325:         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i319, %.noexc326
  %i.aaj = phi ptr [ %i.aap, %.noexc326 ], [ %i.aaf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i319 ]
  %i.aak = phi i32 [ %i.aas, %.noexc326 ], [ %.pre.i321, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.lr.ph.i319 ]
  %i.aal = add i32 %i.aak, -1
  %i.aam = zext i32 %i.aal to i64
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %i.aam
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.aao, ptr %4, align 8, !tbaa !129
  store ptr null, ptr %i.aah, align 8, !tbaa !204
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprP3appE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE6removeERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc326 unwind label %bb.ez

.noexc326:                                        ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aap = load ptr, ptr %i.kj, align 8, !tbaa !113 ; 2 uses
  %i.aaq = getelementptr inbounds i8, ptr %i.aap, i64 -4 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !17
  %i.aas = add i32 %i.aar, -1                     ; 3 uses
  store i32 %i.aas, ptr %i.aaq, align 4, !tbaa !17
  %i.aat = icmp ugt i32 %i.aas, %i.aae
  br i1 %i.aat, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i325, label %_ZN18reduce_hypotheses03popEv.exit.sink.split, !llvm.loop !294

bb.ez:                                            ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i325
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp509

.loopexit522:                                     ; preds = %bb.ef, %_ZNK11ast_manager5is_orEPK4expr.exit.i, %bb.ed, %bb.ee, %.preheader.i
  invoke void @_ZN18reduce_hypotheses012get_literalsEP4expr(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.tb)
          to label %.preheader516 unwind label %.loopexit.split-lp509.loopexit.split-lp

.preheader516:                                    ; preds = %.loopexit522
  %i.aav = load ptr, ptr %i.jz, align 8, !tbaa !8 ; 3 uses
  %i.aaw = icmp eq ptr %i.aav, null
  br i1 %i.aaw, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread.lr.ph: ; preds = %.preheader516
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread.lr.ph, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread
  %.pre621638 = phi ptr [ %i.aav, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread.lr.ph ], [ %.pre621639, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread ] ; 3 uses
  %i.aay = phi ptr [ %i.aav, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread.lr.ph ], [ %i.aeo, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread ] ; 9 uses
  %.071567 = phi i32 [ 1, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread.lr.ph ], [ %.1, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread ] ; 7 uses
  %i.aaz = getelementptr inbounds i8, ptr %i.aay, i64 -4
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !17 ; 4 uses
  %i.abb = icmp ult i32 %.071567, %i.aba
  br i1 %i.abb, label %.preheader, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit333

.preheader:                                       ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread
  %i.abc = load ptr, ptr %i.aax, align 8, !tbaa !113 ; 3 uses
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %.preheader..critedge137_crit_edge, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit335.lr.ph

.preheader..critedge137_crit_edge:                ; preds = %.preheader
  %.pre643 = zext i32 %.071567 to i64
  br label %.critedge137

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit335.lr.ph:    ; preds = %.preheader
  %i.abe = getelementptr inbounds i8, ptr %i.abc, i64 -4
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !17 ; 2 uses
  %i.abg = zext i32 %.071567 to i64               ; 3 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.abg
  %wide.trip.count = zext i32 %i.abf to i64
  %exitcond.not898 = icmp eq i32 %i.abf, 0
  br i1 %exitcond.not898, label %.critedge137, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit335.lr.ph
  %i.abi = load ptr, ptr %0, align 8, !tbaa !153, !nonnull !37, !align !38 ; 2 uses
  %i.abj = load ptr, ptr %i.abh, align 8, !tbaa !18 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 24
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !23
  %i.abm = add i32 %i.abl, -1
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.abo = zext i32 %i.abm to i64
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.abo
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !39 ; 6 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abi, i64 832
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !262 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abi, i64 840
  %i.abu = load ptr, ptr %i.abt, align 8          ; 3 uses
  %i.abv = icmp eq ptr %i.abq, %i.abu
  %i.abw = icmp eq ptr %i.abq, %i.abs             ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  br label %.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit333: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit330.thread
  %i.aca = icmp eq i32 %i.aba, 1
  br i1 %i.aca, label %bb.fm, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit365

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498
  %indvars.iv612899 = phi i64 [ %indvars.iv.next613, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %indvars.iv612899
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !39 ; 7 uses
  %i.acd = icmp eq ptr %i.acc, %i.abs
  %or.cond.i.i338 = select i1 %i.acd, i1 %i.abv, i1 false
  br i1 %or.cond.i.i338, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread.loopexit, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.acf = load i32, ptr %i.ace, align 4
  %i.acg = and i32 %i.acf, 65535
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.fb, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i339

bb.fb:                                            ; preds = %bb.fa
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !173
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i.i343 = icmp eq ptr %i.acl, null
  br i1 %.not.i.i.i.i.i.i343, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i339, label %_ZNK11ast_manager6is_notEPK4expr.exit.i.i344

_ZNK11ast_manager6is_notEPK4expr.exit.i.i344:     ; preds = %bb.fb
  %i.acm = load i32, ptr %i.acl, align 8, !tbaa !200
  %i.acn = icmp eq i32 %i.acm, 0
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.acp = load i32, ptr %i.aco, align 4
  %i.acq = icmp eq i32 %i.acp, 8
  %i.acr = select i1 %i.acn, i1 %i.acq, i1 false
  br i1 %i.acr, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i345, label %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i339

_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i345: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i.i344
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !39
  %i.acu = icmp eq ptr %i.act, %i.abq
  %i.acv = icmp eq ptr %i.acc, %i.abu
  %or.cond.i5.i340 = select i1 %i.abw, i1 %i.acv, i1 false
  %or.cond1018 = select i1 %i.acu, i1 true, i1 %or.cond.i5.i340
  br i1 %or.cond1018, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread.loopexit, label %bb.fc

_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i339: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i.i344, %bb.fb, %bb.fa
  %.old = icmp eq ptr %i.acc, %i.abu
  %or.cond.i5.i340.old = select i1 %i.abw, i1 %.old, i1 false
  br i1 %or.cond.i5.i340.old, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread.loopexit, label %bb.fc

bb.fc:                                            ; preds = %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.i345, %_ZNK11ast_manager18is_complement_coreEPK4exprS2_.exit.thread.i339
  %i.acw = load i32, ptr %i.abx, align 4
  %i.acx = and i32 %i.acw, 65535
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.fd, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498

bb.fd:                                            ; preds = %bb.fc
  %i.acz = load ptr, ptr %i.aby, align 8, !tbaa !173
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 24
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i.i6.i341 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i.i.i6.i341, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498, label %_ZNK11ast_manager6is_notEPK4expr.exit.i7.i342

_ZNK11ast_manager6is_notEPK4expr.exit.i7.i342:    ; preds = %bb.fd
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !200
  %i.add = icmp eq i32 %i.adc, 0
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  %i.adf = load i32, ptr %i.ade, align 4
  %i.adg = icmp eq i32 %i.adf, 8
  %i.adh = select i1 %i.add, i1 %i.adg, i1 false
  br i1 %i.adh, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498

_ZNK11ast_manager13is_complementEPK4exprS2_.exit346: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i7.i342
  %i.adi = load ptr, ptr %i.abz, align 8, !tbaa !39
  %i.adj = icmp eq ptr %i.adi, %i.acc
  br i1 %i.adj, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread.loopexit, label %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498

_ZNK11ast_manager13is_complementEPK4exprS2_.exit346.thread498: ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i7.i342, %bb.fc, %bb.fd, %_ZNK11ast_manager13is_complementEPK4exprS2_.exit346
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612899, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count
end_hunk_0
