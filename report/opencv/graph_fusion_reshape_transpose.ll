Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_reshape_transpose?download=true
inline.NumInlined: 615
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060527ModelFusionReshapeTranspose9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i293: ; preds = %bb.be
  %i.lk = icmp eq ptr %.19.i.i.i288, %i.m
  br i1 %i.lk, label %.critedge229, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit296

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit296: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i293
  %.19.i.i.i288.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lj, ptr %.0811.i.i.i287, ptr %.012.i.i.i286
  %.19.i.i.i288.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i288.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ll = load i32, ptr %.19.i.i.i288.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !42
  %i.lm = icmp slt i32 %i.lg, %i.ll
  br i1 %i.lm, label %.critedge229, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit296
  %i.ln = getelementptr inbounds nuw i8, ptr %.19.i.i.i288, i64 36
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !46 ; 3 uses
  %i.lp = icmp sgt i32 %i.lo, -1
  br i1 %i.lp, label %bb.bg, label %.critedge229

bb.bg:                                            ; preds = %bb.bf
  %i.lq = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.lr = lshr i32 %i.lo, 6
  %.zext = zext nneg i32 %i.lr to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.zext ; 2 uses
  %i.lt = and i64 %i.lq, 63
  %i.lu = shl nuw i64 1, %i.lt                    ; 2 uses
  %i.lv = load i64, ptr %i.ls, align 8, !tbaa !80 ; 2 uses
  %i.lw = and i64 %i.lv, %i.lu
  %.not435 = icmp eq i64 %i.lw, 0
  br i1 %.not435, label %bb.bh, label %.critedge229

bb.bh:                                            ; preds = %bb.bg
  %i.lx = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lx, i64 %i.lq
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !40 ; 5 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mb = call ptr @__dynamic_cast(ptr nonnull %i.lz, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060513Reshape2LayerE, i64 0) #17
  %i.mc = icmp eq ptr %i.mb, null
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.not215 = phi i1 [ %i.mc, %bb.bi ], [ true, %bb.bh ]
  %i.md = sext i32 %i.lg to i64
  %i.me = load ptr, ptr %i.dc, align 8, !tbaa !20
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.md ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !42
  %i.mh = icmp eq i32 %i.mg, 1
  br i1 %i.mh, label %bb.bk, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312

bb.bk:                                            ; preds = %bb.bj
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !35  ; 2 uses
  %.not10.i.i.i301 = icmp eq ptr %i.mi, null
  br i1 %.not10.i.i.i301, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312, label %.lr.ph.i.i.i302

.lr.ph.i.i.i302:                                  ; preds = %bb.bk, %.lr.ph.i.i.i302
  %.012.i.i.i303 = phi ptr [ %.1.i.i.i308, %.lr.ph.i.i.i302 ], [ %i.mi, %bb.bk ] ; 4 uses
  %.0811.i.i.i304 = phi ptr [ %.19.i.i.i305, %.lr.ph.i.i.i302 ], [ %i.r, %bb.bk ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.012.i.i.i303, i64 32
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !42
  %i.ml = icmp slt i32 %i.mk, %i.lg               ; 3 uses
  %.19.i.i.i305 = select i1 %i.ml, ptr %.0811.i.i.i304, ptr %.012.i.i.i303 ; 2 uses
  %.1.in.v.i.i.i306 = select i1 %i.ml, i64 24, i64 16
  %.1.in.i.i.i307 = getelementptr inbounds nuw i8, ptr %.012.i.i.i303, i64 %.1.in.v.i.i.i306
  %.1.i.i.i308 = load ptr, ptr %.1.in.i.i.i307, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i309 = icmp eq ptr %.1.i.i.i308, null
  br i1 %.not.i.i.i309, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i310, label %.lr.ph.i.i.i302, !llvm.loop !62

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i310: ; preds = %.lr.ph.i.i.i302
  %i.mm = icmp eq ptr %.19.i.i.i305, %i.r
  br i1 %i.mm, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i310
  %.19.i.i.i305.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ml, ptr %.0811.i.i.i304, ptr %.012.i.i.i303
  %.19.i.i.i305.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i305.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.mn = load i32, ptr %.19.i.i.i305.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !42
  %.not436 = icmp slt i32 %i.lg, %i.mn
  br label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312:   ; preds = %bb.bk, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i310, %bb.bl, %bb.bj
  %i.mo = phi i1 [ false, %bb.bj ], [ true, %bb.bk ], [ true, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i310 ], [ %.not436, %bb.bl ]
  br i1 %.not215, label %.critedge229, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !85
  %i.ms = load ptr, ptr %i.mp, align 8, !tbaa !86
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = icmp eq i64 %i.mv, 4
  %or.cond15 = and i1 %i.mo, %i.mw
  br i1 %or.cond15, label %bb.bn, label %.critedge229

bb.bn:                                            ; preds = %bb.bm
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !86
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !42
  store i32 %i.mz, ptr %i.le, align 4, !tbaa !42
  %i.na = or i64 %i.lv, %i.lu
  store i64 %i.na, ptr %i.ls, align 8, !tbaa !80
  store i32 0, ptr %i.mf, align 4, !tbaa !42
  br label %.critedge229

.critedge229:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.af, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i293, %bb.bd, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit296, %bb.bg, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312, %bb.bm, %bb.bn, %bb.bf, %.thread400, %bb.t, %.thread401.thread, %bb.bc, %.thread401, %bb.v, %bb.w, %bb.u
  %.24 = phi i1 [ %.5481, %bb.v ], [ %.5481, %bb.u ], [ %.15596, %.thread401.thread ], [ %.5481, %bb.w ], [ true, %bb.af ], [ %.8, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.15, %.thread401 ], [ true, %.thread400 ], [ %.15596, %bb.bc ], [ %.5481, %bb.t ], [ %.15596, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit296 ], [ %.15596, %bb.bf ], [ %.15596, %bb.bg ], [ %.15596, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit312 ], [ true, %bb.bn ], [ %.15596, %bb.bm ], [ %.15596, %bb.bd ], [ %.15596, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i293 ] ; 2 uses
  %i.nb = add nuw i64 %.0140482, 1                ; 2 uses
  %exitcond510.not = icmp eq i64 %i.nb, %i.l
  br i1 %exitcond510.not, label %._crit_edge487, label %bb.t, !llvm.loop !65

bb.bo:                                            ; preds = %._crit_edge487
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.nc = icmp ugt i64 %i.l, 576460752303423487
  br i1 %i.nc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc321 unwind label %.thread634

.thread634:                                       ; preds = %bb.bp
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cm

.noexc321:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %.thread, %bb.bo
  %.sroa.0360.0587588606 = phi ptr [ null, %.thread ], [ %i.bp, %bb.bo ] ; 6 uses
  %.sroa.22372.0584590603 = phi ptr [ null, %.thread ], [ %i.db, %bb.bo ] ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not580 = icmp eq ptr %i.g, %i.h
  br i1 %.not580, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.bq
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ng = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #20
          to label %.noexc322 unwind label %bb.cl ; 4 uses

.noexc322:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_M_allocateEm.exit.i
  %i.nh = load ptr, ptr %6, align 8, !tbaa !29    ; 5 uses
  %i.ni = load ptr, ptr %i.nf, align 8, !tbaa !28 ; 2 uses
  %.not10.i.i.i.i317 = icmp eq ptr %i.nh, %i.ni
  br i1 %.not10.i.i.i.i317, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i318

.lr.ph.i.i.i.i318:                                ; preds = %.noexc322, %.lr.ph.i.i.i.i318
  %.012.i.i.i.i319 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i318 ], [ %i.ng, %.noexc322 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i.i.i318 ], [ %i.nh, %.noexc322 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.nj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.nk = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !88, !noalias !87
  store ptr null, ptr %i.nj, align 8, !tbaa !49, !alias.scope !88, !noalias !87
  store <2 x ptr> %i.nk, ptr %.012.i.i.i.i319, align 8, !tbaa !48, !alias.scope !87, !noalias !88
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !40, !alias.scope !88, !noalias !87
  %i.nl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i319, i64 16
  %.not.i.i.i.i320 = icmp eq ptr %i.nl, %i.ni
  br i1 %.not.i.i.i.i320, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i318, !llvm.loop !1

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i318, %.noexc322
  %.not.i8.i = icmp eq ptr %i.nh, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.nn = load ptr, ptr %i.ne, align 8, !tbaa !50
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nh to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef %i.nq) #18
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.br, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ng, ptr %6, align 8, !tbaa !29
  store ptr %i.ng, ptr %i.nf, align 8, !tbaa !28
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.k
  store ptr %i.nr, ptr %i.ne, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE7reserveEm.exit: ; preds = %bb.bq, %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  br i1 %.not492, label %._crit_edge491, label %.lr.ph490

.lr.ph490:                                        ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE7reserveEm.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.bs

._crit_edge491:                                   ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE7reserveEm.exit
  %i.nt = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !25
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 96
  %i.nw = load ptr, ptr %i.nv, align 8
  invoke void %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ca unwind label %bb.cl

bb.bs:                                            ; preds = %.lr.ph490, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %.0489 = phi i64 [ 0, %.lr.ph490 ], [ %i.os, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
  %7 = lshr i64 %.0489, 6
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0360.0587588606, i64 %7
  %i.ny = and i64 %.0489, 63
  %i.nz = shl nuw i64 1, %i.ny
  %i.oa = load i64, ptr %i.nx, align 8, !tbaa !80
  %i.ob = and i64 %i.oa, %i.nz
  %.not426 = icmp eq i64 %i.ob, 0
  br i1 %.not426, label %bb.bt, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.bt:                                            ; preds = %bb.bs
  %i.oc = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.oc, i64 %.0489 ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !40 ; 2 uses
  %.not427 = icmp eq ptr %i.oe, null
  br i1 %.not427, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.of = load ptr, ptr %i.ns, align 8, !tbaa !28 ; 6 uses
  %i.og = load ptr, ptr %i.ne, align 8, !tbaa !50
  %.not.i327 = icmp eq ptr %i.of, %i.og
  br i1 %.not.i327, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.oe, ptr %i.of, align 8, !tbaa !40
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !49 ; 3 uses
  store ptr %i.oj, ptr %i.oh, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 3 uses
  %i.ol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.om = load i32, ptr %i.ok, align 4, !tbaa !42
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.ok, align 4, !tbaa !42
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.oo = atomicrmw volatile add ptr %i.ok, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.ns, align 8, !tbaa !28
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.op = phi ptr [ %i.of, %bb.bv ], [ %i.of, %bb.bx ], [ %.pre.i, %bb.by ]
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store ptr %i.oq, ptr %i.ns, align 8, !tbaa !28
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.bz:                                            ; preds = %bb.bu
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.of, ptr noundef nonnull align 8 dereferenceable(16) %i.od)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit unwind label %.thread629

.thread629:                                       ; preds = %bb.bz
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cm

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.bs, %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, %bb.bz, %bb.bt
  %i.os = add nuw i64 %.0489, 1                   ; 2 uses
  %exitcond512.not = icmp eq i64 %i.os, %i.l
  br i1 %exitcond512.not, label %._crit_edge491, label %bb.bs, !llvm.loop !69

bb.ca:                                            ; preds = %._crit_edge491
  %i.ot = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !28 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ot, %i.ov
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i329

.lr.ph.i.i.i329:                                  ; preds = %bb.ca, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pn, %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i ], [ %i.ot, %bb.ca ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i330 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i.i.i.i330, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i329
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 4 uses
  %i.oz = load atomic i64, ptr %i.oy acquire, align 8 ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 4294967297
  %i.pb = trunc i64 %i.oz to i32                  ; 2 uses
  br i1 %i.pa, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.oy, align 8, !tbaa !53
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  store i32 0, ptr %i.pc, align 4, !tbaa !54
  %i.pd = load ptr, ptr %i.ox, align 8, !tbaa !25
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #17, !inline_history !70
  %i.pg = load ptr, ptr %i.ox, align 8, !tbaa !25
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #17, !inline_history !70
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.pj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.pj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pk = add nsw i32 %i.pb, -1
  store i32 %i.pk, ptr %i.oy, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.pl = atomicrmw volatile add ptr %i.oy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.pb, %bb.ce ], [ %i.pl, %bb.cf ]
  %i.pm = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.pm, label %bb.cg, label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i, !prof !55

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #17
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cc, %.lr.ph.i.i.i329
  %i.pn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i331 = icmp eq ptr %i.pn, %i.ov
  br i1 %.not.i.i.i331, label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i329, !llvm.loop !2

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ca
  %i.po = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ot, %bb.ca ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.po, null
  br i1 %.not.i.i1.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.pp = load ptr, ptr %i.ne, align 8, !tbaa !50
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.po to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.ps) #18
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZSt8_DestroyIPN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not.i.i332 = icmp eq ptr %.sroa.0360.0587588606, null
  br i1 %.not.i.i332, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.thread613

.thread613:                                       ; preds = %._crit_edge487, %bb.ci
  %.sroa.0360.0587589620 = phi ptr [ %.sroa.0360.0587588606, %bb.ci ], [ %i.bp, %._crit_edge487 ]
  %.sroa.22372.0584591619 = phi ptr [ %.sroa.22372.0584590603, %bb.ci ], [ %i.db, %._crit_edge487 ] ; 2 uses
  %.5.lcssa592618 = phi i1 [ true, %bb.ci ], [ false, %._crit_edge487 ]
  %i.pt = ptrtoint ptr %.sroa.22372.0584591619 to i64
  %i.pu = ptrtoint ptr %.sroa.0360.0587589620 to i64
  %i.pv = sub i64 %i.pt, %i.pu                    ; 2 uses
  %i.pw = ashr exact i64 %i.pv, 3
  %i.px = sub nsw i64 0, %i.pw
  %i.py = getelementptr inbounds [8 x i8], ptr %.sroa.22372.0584591619, i64 %i.px
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.pv) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread, %bb.ci, %.thread613
  %.5.lcssa592612 = phi i1 [ %.5.lcssa592618, %.thread613 ], [ true, %bb.ci ], [ false, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread ]
  %i.pz = load ptr, ptr %i.s, align 8, !tbaa !35
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.pz)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.cj

bb.cj:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.qa = landingpad { ptr, i32 }
          catch ptr null
  %i.qb = extractvalue { ptr, i32 } %i.qa, 0
  call void @__clang_call_terminate(ptr %i.qb) #22
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.qc = load ptr, ptr %i.n, align 8, !tbaa !35
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.qc)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit unwind label %bb.ck

bb.ck:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  %i.qd = landingpad { ptr, i32 }
          catch ptr null
  %i.qe = extractvalue { ptr, i32 } %i.qd, 0
  call void @__clang_call_terminate(ptr %i.qe) #22
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i1 %.5.lcssa592612

bb.cl:                                            ; preds = %._crit_edge491, %_ZNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE11_M_allocateEm.exit.i
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not.i.i333 = icmp eq ptr %.sroa.0360.0587588606, null
  br i1 %.not.i.i333, label %.body238, label %bb.cm
end_hunk_0
