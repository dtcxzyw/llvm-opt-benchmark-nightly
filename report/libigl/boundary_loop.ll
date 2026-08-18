inline.NumInlined: 620
inline.NumDeleted: 344
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl13boundary_loopIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EE:bb.a
common.resume:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit151, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %.pn69.pn.pn.pn, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit151 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %2, align 8, !tbaa !49
  call void @free(ptr noundef %i.bm) #20
  br label %common.resume

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl27triangle_triangle_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 13 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !59
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 9 uses
  store i64 0, ptr %i.br, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !61 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 8, !tbaa !64 ; 2 uses
  %i.bw = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = zext i32 %i.bv to i64
  %i.cc = sub nsw i64 0, %i.cb
  %.not234 = icmp eq i64 %i.ca, %i.cc
  br i1 %.not234, label %._crit_edge233, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit
  %i.cd = icmp eq i64 %i.ea, 0
  br i1 %i.cd, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = insertelement <2 x ptr> poison, ptr %i.bn, i64 0
  %i.cl = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.n:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129

.lr.ph:                                           ; preds = %bb.l, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit
  %i.co = phi ptr [ %i.dx, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ %i.bw, %bb.l ] ; 3 uses
  %i.cp = phi i32 [ %i.dy, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ %i.bv, %bb.l ] ; 2 uses
  %i.cq = phi ptr [ %i.dz, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ %i.bu, %bb.l ] ; 2 uses
  %i.cr = phi i64 [ %i.ea, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ 0, %bb.l ] ; 3 uses
  %.056224 = phi i64 [ %i.eb, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ 0, %bb.l ] ; 5 uses
  %i.cs = sdiv i64 %.056224, 64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cs
  %i.cu = and i64 %.056224, -9223372036854775745
  %i.cv = icmp ugt i64 %i.cu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.cv, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ct, i64 %storemerge.idx.i.i.i.i.i
  %i.cw = and i64 %.056224, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !65
  %i.cz = and i64 %i.cy, %i.cx
  %.not192 = icmp eq i64 %i.cz, 0
  br i1 %.not192, label %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.da = trunc i64 %.056224 to i32               ; 5 uses
  %.not.i152 = icmp eq i64 %i.cr, 0
  br i1 %.not.i152, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %i.bq, align 8, !tbaa !66 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !19
  %i.de = icmp slt i32 %i.dd, %i.da
  br i1 %i.de, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.02022.i.i = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %bb.q ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, %i.da               ; 2 uses
  %.in.v.i.i = select i1 %i.dh, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i153 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i153, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.dh, label %._crit_edge.thread.i.i, label %bb.s

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.q
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.bn, %bb.q ] ; 4 uses
  %i.di = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.dj = icmp eq ptr %.019.lcssa29.i.i, %i.di
  br i1 %i.dj, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i.i
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #24
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i
  %i.dl = phi i32 [ %.pre81.i, %bb.r ], [ %i.dg, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.r ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.dm = icmp slt i32 %i.dl, %i.da
  br i1 %i.dm, label %select.unfold, label %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit

select.unfold:                                    ; preds = %bb.s, %._crit_edge.thread.i.i, %bb.p
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.db, %bb.p ], [ %.019.lcssa28.i.i, %bb.s ] ; 3 uses
  %i.dn = icmp eq ptr %.sroa.12.2.i.ph, %i.bn
  br i1 %i.dn, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %select.unfold
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = icmp sgt i32 %i.dp, %i.da
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i: ; preds = %bb.t, %select.unfold
  %i.dr = phi i1 [ %i.dq, %bb.t ], [ true, %select.unfold ]
  %i.ds = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc79 unwind label %bb.u   ; 2 uses

.noexc79:                                         ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store i32 %i.da, ptr %i.dt, align 4, !tbaa !19
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dr, ptr noundef nonnull %i.ds, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #20
  %i.du = load i64, ptr %i.br, align 8, !tbaa !60
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.br, align 8, !tbaa !60
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !61
  %.pre249 = load i32, ptr %i.bt, align 8, !tbaa !64
  %.pre250 = load ptr, ptr %7, align 8, !tbaa !61
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit: ; preds = %bb.s, %.noexc79, %.lr.ph
  %i.dx = phi ptr [ %i.co, %bb.s ], [ %.pre250, %.noexc79 ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.dy = phi i32 [ %i.cp, %bb.s ], [ %.pre249, %.noexc79 ], [ %i.cp, %.lr.ph ] ; 2 uses
  %i.dz = phi ptr [ %i.cq, %bb.s ], [ %.pre, %.noexc79 ], [ %i.cq, %.lr.ph ] ; 2 uses
  %i.ea = phi i64 [ %i.cr, %bb.s ], [ %i.dv, %.noexc79 ], [ %i.cr, %.lr.ph ] ; 2 uses
  %i.eb = add nuw i64 %.056224, 1                 ; 2 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = shl nsw i64 %i.ee, 3
  %i.eg = zext i32 %i.dy to i64
  %i.eh = add nsw i64 %i.ef, %i.eg
  %i.ei = icmp ult i64 %i.eb, %i.eh
  br i1 %i.ei, label %.lr.ph, label %.preheader, !llvm.loop !68

bb.v:                                             ; preds = %.lr.ph232, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ej = load ptr, ptr %i.bp, align 8, !tbaa !58 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !19 ; 4 uses
  %i.em = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 40) #21
  %i.en = load i64, ptr %i.br, align 8, !tbaa !60
  %i.eo = add i64 %i.en, -1
  store i64 %i.eo, ptr %i.br, align 8, !tbaa !60
  %i.ep = sext i32 %i.el to i64                   ; 2 uses
  %i.eq = load ptr, ptr %7, align 8, !tbaa !61
  %i.er = sdiv i32 %i.el, 64
  %.sext = sext i32 %i.er to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.sext
  %i.et = and i64 %i.ep, -9223372036854775745
  %i.eu = icmp ugt i64 %i.et, -9223372036854775808
  %storemerge.idx.i.i.i.i.i80 = select i1 %i.eu, i64 -8, i64 0
  %storemerge.i.i.i.i.i81 = getelementptr inbounds i8, ptr %i.es, i64 %storemerge.idx.i.i.i.i.i80 ; 2 uses
  %i.ev = and i64 %i.ep, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = xor i64 %i.ew, -1
  %i.ey = load i64, ptr %storemerge.i.i.i.i.i81, align 8, !tbaa !65
  %i.ez = and i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %storemerge.i.i.i.i.i81, align 8, !tbaa !65
  %i.fa = load ptr, ptr %i.ce, align 8, !tbaa !14 ; 4 uses
  %i.fb = load ptr, ptr %i.cf, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.el, ptr %i.fa, align 4, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store ptr %i.fc, ptr %i.ce, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.x:                                             ; preds = %bb.v
  %i.fd = load ptr, ptr %9, align 8, !tbaa !16    ; 4 uses
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 6 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775804
  br i1 %i.fh, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc85 unwind label %.loopexit.split-lp196

.noexc85:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.fi = ashr exact i64 %i.fg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 2305843009213693951)
  %i.fm = select i1 %i.fk, i64 2305843009213693951, i64 %i.fl ; 3 uses
  %.not.i.i.i84 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i84)
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #25
          to label %.noexc86 unwind label %.loopexit195 ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fg ; 2 uses
  store i32 %i.el, ptr %i.fp, align 4, !tbaa !19
  %i.fq = icmp sgt i64 %i.fg, 0
  br i1 %i.fq, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.z:                                             ; preds = %.noexc86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr align 4 %i.fd, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.z, %.noexc86
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fg) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.fo, ptr %9, align 8, !tbaa !16
  store ptr %i.fr, ptr %i.ce, align 8, !tbaa !14
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.fs, ptr %i.cf, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ft = load ptr, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.fu = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fu, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = load ptr, ptr %5, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %i.gb ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !14
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !16 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = lshr exact i64 %i.gj, 2                 ; 2 uses
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = icmp slt i32 %i.gl, 1
  br i1 %i.gm, label %.thread, label %.lr.ph227

.lr.ph227:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.loopexit
  %i.gn = phi i64 [ %i.ml, %.loopexit ], [ %i.gk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.go = phi ptr [ %i.mh, %.loopexit ], [ %i.gg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.gp = phi i32 [ %i.mb, %.loopexit ], [ %i.ga, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.gq = phi i64 [ %i.ly, %.loopexit ], [ %i.fx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.gr = phi ptr [ %i.lv, %.loopexit ], [ %i.fu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.gs = phi ptr [ %i.lu, %.loopexit ], [ %i.ft, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.gt = ashr exact i64 %i.gq, 2                 ; 3 uses
  %i.gu = load ptr, ptr %3, align 8, !tbaa !41, !noalias !69
  %i.gv = load i64, ptr %i.cg, align 8, !tbaa !42, !noalias !69 ; 6 uses
  %i.gw = load i64, ptr %i.ch, align 8, !tbaa !9  ; 7 uses
  %i.gx = icmp sgt i64 %i.gv, 1
  %i.gy = load ptr, ptr %7, align 8
  %i.gz = and i64 %i.gn, 2147483647
  %i.ha = add nsw i64 %i.gv, -1                   ; 2 uses
  %min.iters.check355 = icmp ugt i64 %i.gv, 8
  %ident.check.not = icmp eq i64 %i.gw, 1
  %or.cond = select i1 %min.iters.check355, i1 %ident.check.not, i1 false
  %n.vec357 = and i64 %i.ha, -8                   ; 3 uses
  %i.hb = or disjoint i64 %n.vec357, 1
  %cmp.n369 = icmp eq i64 %i.ha, %n.vec357
  br label %bb.ab

._crit_edge:                                      ; preds = %.critedge
  br i1 %.259, label %bb.ae, label %.thread

.loopexit195:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit197 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp196:                            ; preds = %bb.y
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ab:                                            ; preds = %.lr.ph227, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.2225 = phi i32 [ undef, %.lr.ph227 ], [ %.3, %.critedge ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !19
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.he ; 8 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19 ; 3 uses
  br i1 %i.gx, label %.lr.ph.i.i.i.i87.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit

.lr.ph.i.i.i.i87.preheader:                       ; preds = %bb.ab
  br i1 %or.cond, label %vector.ph356, label %.lr.ph.i.i.i.i87.preheader372

vector.ph356:                                     ; preds = %.lr.ph.i.i.i.i87.preheader
  %broadcast.splatinsert358 = insertelement <4 x i32> poison, i32 %i.hg, i64 0
  %broadcast.splat359 = shufflevector <4 x i32> %broadcast.splatinsert358, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph356
  %index361 = phi i64 [ 0, %vector.ph356 ], [ %index.next366, %vector.body360 ] ; 2 uses
  %vec.phi362 = phi <4 x i32> [ %broadcast.splat359, %vector.ph356 ], [ %i.hk, %vector.body360 ]
  %vec.phi363 = phi <4 x i32> [ %broadcast.splat359, %vector.ph356 ], [ %i.hl, %vector.body360 ]
  %i.hh = getelementptr [4 x i8], ptr %i.hf, i64 %index361 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 4
  %i.hj = getelementptr i8, ptr %i.hh, i64 20
  %wide.load364 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !19
  %wide.load365 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !19
  %i.hk = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load364, <4 x i32> %vec.phi362) ; 2 uses
  %i.hl = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load365, <4 x i32> %vec.phi363) ; 2 uses
  %index.next366 = add nuw i64 %index361, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next366, %n.vec357
  br i1 %i.hm, label %middle.block367, label %vector.body360, !llvm.loop !72

middle.block367:                                  ; preds = %vector.body360
  %rdx.minmax368 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hk, <4 x i32> %i.hl)
  %i.hn = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax368) ; 2 uses
  br i1 %cmp.n369, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit, label %.lr.ph.i.i.i.i87.preheader372

.lr.ph.i.i.i.i87.preheader372:                    ; preds = %.lr.ph.i.i.i.i87.preheader, %middle.block367
  %.01722.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i87.preheader ], [ %i.hb, %middle.block367 ] ; 4 uses
  %.02021.i.i.i.i.ph = phi i32 [ %i.hg, %.lr.ph.i.i.i.i87.preheader ], [ %i.hn, %middle.block367 ] ; 2 uses
  %i.ho = sub i64 %i.gv, %.01722.i.i.i.i.ph
  %xtraiter = and i64 %i.ho, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i87.prol

.lr.ph.i.i.i.i87.prol:                            ; preds = %.lr.ph.i.i.i.i87.preheader372, %.lr.ph.i.i.i.i87.prol
  %.01722.i.i.i.i.prol = phi i64 [ %i.ht, %.lr.ph.i.i.i.i87.prol ], [ %.01722.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader372 ] ; 2 uses
  %.02021.i.i.i.i.prol = phi i32 [ %i.hs, %.lr.ph.i.i.i.i87.prol ], [ %.02021.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader372 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i87.prol ], [ 0, %.lr.ph.i.i.i.i87.preheader372 ]
  %i.hp = mul nsw i64 %.01722.i.i.i.i.prol, %i.gw
  %i.hq = getelementptr [4 x i8], ptr %i.hf, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !19
  %i.hs = call noundef i32 @llvm.smin.i32(i32 %i.hr, i32 %.02021.i.i.i.i.prol) ; 3 uses
  %i.ht = add nuw nsw i64 %.01722.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i87.prol, !llvm.loop !73

.lr.ph.i.i.i.i87.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i87.prol, %.lr.ph.i.i.i.i87.preheader372
  %.lcssa375.unr = phi i32 [ poison, %.lr.ph.i.i.i.i87.preheader372 ], [ %i.hs, %.lr.ph.i.i.i.i87.prol ]
  %.01722.i.i.i.i.unr = phi i64 [ %.01722.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader372 ], [ %i.ht, %.lr.ph.i.i.i.i87.prol ]
  %.02021.i.i.i.i.unr = phi i32 [ %.02021.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader372 ], [ %i.hs, %.lr.ph.i.i.i.i87.prol ]
  %i.hu = sub i64 %.01722.i.i.i.i.ph, %i.gv
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit, label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %.lr.ph.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i87
  %.01722.i.i.i.i = phi i64 [ %i.ip, %.lr.ph.i.i.i.i87 ], [ %.01722.i.i.i.i.unr, %.lr.ph.i.i.i.i87.prol.loopexit ] ; 5 uses
  %.02021.i.i.i.i = phi i32 [ %i.io, %.lr.ph.i.i.i.i87 ], [ %.02021.i.i.i.i.unr, %.lr.ph.i.i.i.i87.prol.loopexit ]
  %i.hw = mul nsw i64 %.01722.i.i.i.i, %i.gw
  %i.hx = getelementptr [4 x i8], ptr %i.hf, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !19
  %i.hz = call noundef i32 @llvm.smin.i32(i32 %i.hy, i32 %.02021.i.i.i.i)
  %i.ia = add nuw nsw i64 %.01722.i.i.i.i, 1
  %i.ib = mul nsw i64 %i.ia, %i.gw
  %i.ic = getelementptr [4 x i8], ptr %i.hf, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !19
  %i.ie = call noundef i32 @llvm.smin.i32(i32 %i.id, i32 %i.hz)
  %i.if = add nuw nsw i64 %.01722.i.i.i.i, 2
  %i.ig = mul nsw i64 %i.if, %i.gw
  %i.ih = getelementptr [4 x i8], ptr %i.hf, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !19
  %i.ij = call noundef i32 @llvm.smin.i32(i32 %i.ii, i32 %i.ie)
  %i.ik = add nuw nsw i64 %.01722.i.i.i.i, 3
  %i.il = mul nsw i64 %i.ik, %i.gw
  %i.im = getelementptr [4 x i8], ptr %i.hf, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !19
  %i.io = call noundef i32 @llvm.smin.i32(i32 %i.in, i32 %i.ij) ; 2 uses
  %i.ip = add nuw nsw i64 %.01722.i.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i.i88.3 = icmp eq i64 %i.ip, %i.gv
  br i1 %exitcond.not.i.i.i.i88.3, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit, label %.lr.ph.i.i.i.i87, !llvm.loop !74

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit: ; preds = %.lr.ph.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i87, %middle.block367, %bb.ab
  %.020.lcssa.i.i.i.i = phi i32 [ %i.hg, %bb.ab ], [ %i.hn, %middle.block367 ], [ %.lcssa375.unr, %.lr.ph.i.i.i.i87.prol.loopexit ], [ %i.io, %.lr.ph.i.i.i.i87 ]
  %i.iq = icmp slt i32 %.020.lcssa.i.i.i.i, 0
  br i1 %i.iq, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit
  %i.ir = load ptr, ptr %0, align 8, !tbaa !41
  %i.is = getelementptr [4 x i8], ptr %i.ir, i64 %i.he ; 4 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !19
  %i.iu = icmp ne i32 %i.it, %i.gp
  %spec.select = sext i1 %i.iu to i32
  %i.iv = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.iw = getelementptr [4 x i8], ptr %i.is, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !19
  %i.iy = icmp eq i32 %i.ix, %i.gp
  %spec.select76 = select i1 %i.iy, i32 1, i32 %spec.select
  %.idx = shl i64 %i.iv, 3
  %i.iz = getelementptr i8, ptr %i.is, i64 %.idx
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !19
  %i.jb = icmp eq i32 %i.ja, %i.gp
  %spec.select77 = select i1 %i.jb, i32 2, i32 %spec.select76 ; 2 uses
  %i.jc = add nsw i32 %spec.select77, 1
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = load i64, ptr %i.e, align 8, !tbaa !42
  %i.jf = srem i64 %i.jd, %i.je
  %i.jg = mul nsw i64 %i.jf, %i.iv
  %i.jh = getelementptr [4 x i8], ptr %i.is, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !19 ; 3 uses
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = sdiv i32 %i.ji, 64
  %.sext189 = sext i32 %i.jk to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %.sext189
  %i.jm = and i64 %i.jj, -9223372036854775745
  %i.jn = icmp ugt i64 %i.jm, -9223372036854775808
  %storemerge.idx.i.i.i.i.i89 = select i1 %i.jn, i64 -8, i64 0
  %storemerge.i.i.i.i.i90 = getelementptr inbounds i8, ptr %i.jl, i64 %storemerge.idx.i.i.i.i.i89
  %i.jo = and i64 %i.jj, 63
  %i.jp = shl nuw i64 1, %i.jo
  %i.jq = load i64, ptr %storemerge.i.i.i.i.i90, align 8, !tbaa !65
  %i.jr = and i64 %i.jp, %i.jq
  %.not = icmp eq i64 %i.jr, 0
  br i1 %.not, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.js = sext i32 %spec.select77 to i64
  %i.jt = mul nsw i64 %i.gw, %i.js
  %i.ju = getelementptr [4 x i8], ptr %i.hf, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !19
  %i.jw = icmp slt i32 %i.jv, 0                   ; 2 uses
  %spec.select190 = select i1 %i.jw, i32 %i.ji, i32 %.2225
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %bb.ac, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit
  %.3 = phi i32 [ %.2225, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit ], [ %.2225, %bb.ac ], [ %spec.select190, %bb.ad ] ; 9 uses
  %.259 = phi i1 [ false, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit ], [ false, %bb.ac ], [ %i.jw, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jx = icmp samesign uge i64 %indvars.iv.next, %i.gz
  %.not62 = select i1 %i.jx, i1 true, i1 %.259
  br i1 %.not62, label %._crit_edge, label %bb.ab, !llvm.loop !75

bb.ae:                                            ; preds = %._crit_edge
  %i.jy = load ptr, ptr %i.cf, align 8, !tbaa !26
  %.not.i93 = icmp eq ptr %i.gs, %i.jy
  br i1 %.not.i93, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %.3, ptr %i.gs, align 4, !tbaa !19
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store ptr %i.jz, ptr %i.ce, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102

bb.ag:                                            ; preds = %bb.ae
  %i.ka = icmp eq i64 %i.gq, 9223372036854775804
  br i1 %i.ka, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc100 unwind label %.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94: ; preds = %bb.ag
  %.sroa.speculated.i.i.i95 = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.kb = add nsw i64 %.sroa.speculated.i.i.i95, %i.gt ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.gt
  %i.kd = call i64 @llvm.umin.i64(i64 %i.kb, i64 2305843009213693951)
  %i.ke = select i1 %i.kc, i64 2305843009213693951, i64 %i.kd ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %i.ke, 0
  call void @llvm.assume(i1 %.not.i.i.i96)
  %i.kf = shl nuw nsw i64 %i.ke, 2
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #25
          to label %.noexc101 unwind label %.loopexit194 ; 4 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %i.gq ; 2 uses
  store i32 %.3, ptr %i.kh, align 4, !tbaa !19
  %i.ki = icmp sgt i64 %i.gq, 0
  br i1 %i.ki, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97

bb.ai:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kg, ptr align 4 %i.gr, i64 %i.gq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97: ; preds = %bb.ai, %.noexc101
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %.not.i17.i.i98 = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i98, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gq) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97
  store ptr %i.kg, ptr %9, align 8, !tbaa !16
  store ptr %i.kj, ptr %i.ce, align 8, !tbaa !14
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ke
  store ptr %i.kk, ptr %i.cf, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102

_ZNSt6vectorIiSaIiEE9push_backERKi.exit102:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99, %bb.af
  %.041.i.i = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102, %bb.am
  %.044.i.i = phi ptr [ %.0.i.i, %bb.am ], [ %.041.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.am ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !19 ; 2 uses
  %i.kn = icmp slt i32 %i.km, %.3
  br i1 %i.kn, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i154
  %i.ko = icmp slt i32 %.3, %i.km
  br i1 %i.ko, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kp = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !76 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kq, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %bb.al, %.lr.ph.i.i.i155
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i155 ], [ %i.kq, %bb.al ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i155 ], [ %.044.i.i, %bb.al ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !19
  %i.kv = icmp slt i32 %i.ku, %.3                 ; 2 uses
  %.19.i.i.i = select i1 %i.kv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.kv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i156, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i155, !llvm.loop !78

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i155, %bb.al
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.al ], [ %.19.i.i.i, %.lr.ph.i.i.i155 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.ks, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.ks, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !19
  %i.ky = icmp slt i32 %.3, %i.kx                 ; 2 uses
  %.19.i28.i.i = select i1 %i.ky, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.ky, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !79

bb.am:                                            ; preds = %bb.ak, %.lr.ph.i.i154
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i154 ], [ 16, %bb.ak ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i154 ], [ %.044.i.i, %bb.ak ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.kz, align 8, !tbaa !66 ; 2 uses
  %.not.i.i157 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i157, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i.i154, !llvm.loop !80

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i: ; preds = %bb.am, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ], [ %.123.i.i, %bb.am ] ; 3 uses
  %.sroa.3.0.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ], [ %.123.i.i, %bb.am ] ; 3 uses
  %i.la = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.lb = icmp eq ptr %.sroa.037.0.i.i, %i.la
  %i.lc = icmp eq ptr %.sroa.3.0.i.i, %i.bn
  %or.cond.i = select i1 %i.lb, i1 %i.lc, i1 false
  br i1 %or.cond.i, label %bb.an, label %.critedge.i.i

bb.an:                                            ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #26
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i.i: ; preds = %bb.an
  store ptr null, ptr %i.bo, align 8, !tbaa !57
  store <2 x ptr> %i.cl, ptr %i.bp, align 8, !tbaa !66
  store i64 0, ptr %i.br, align 8, !tbaa !60
  br label %.loopexit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i
  br i1 %.not8.i.i, label %.loopexit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.lf, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.lf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #24 ; 2 uses
  %i.lg = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 40) #21
  %i.lh = load i64, ptr %i.br, align 8, !tbaa !60
  %i.li = add i64 %i.lh, -1
  store i64 %i.li, ptr %i.br, align 8, !tbaa !60
  %.not.i3.i = icmp eq ptr %i.lf, %.sroa.3.0.i.i
  br i1 %.not.i3.i, label %.loopexit, label %.lr.ph.i2.i, !llvm.loop !81

.loopexit194:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit:                                        ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i.i, %.critedge.i.i
  %i.lj = sext i32 %.3 to i64                     ; 2 uses
  %i.lk = load ptr, ptr %7, align 8, !tbaa !61
  %i.ll = sdiv i32 %.3, 64
  %.sext187 = sext i32 %i.ll to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %.sext187
  %i.ln = and i64 %i.lj, -9223372036854775745
  %i.lo = icmp ugt i64 %i.ln, -9223372036854775808
  %storemerge.idx.i.i.i.i.i104 = select i1 %i.lo, i64 -8, i64 0
  %storemerge.i.i.i.i.i105 = getelementptr inbounds i8, ptr %i.lm, i64 %storemerge.idx.i.i.i.i.i104 ; 2 uses
  %i.lp = and i64 %i.lj, 63
  %i.lq = shl nuw i64 1, %i.lp
  %i.lr = xor i64 %i.lq, -1
  %i.ls = load i64, ptr %storemerge.i.i.i.i.i105, align 8, !tbaa !65
  %i.lt = and i64 %i.ls, %i.lr
  store i64 %i.lt, ptr %storemerge.i.i.i.i.i105, align 8, !tbaa !65
  %i.lu = load ptr, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.lv = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 2 uses
  %i.lz = getelementptr i8, ptr %i.lv, i64 %i.ly
  %i.ma = getelementptr i8, ptr %i.lz, i64 -4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !19 ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = load ptr, ptr %5, align 8, !tbaa !31
  %i.me = getelementptr inbounds nuw [24 x i8], ptr %i.md, i64 %i.mc ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !14
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !16 ; 2 uses
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = lshr exact i64 %i.mk, 2                 ; 2 uses
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = icmp slt i32 %i.mm, 1
  br i1 %i.mn, label %.thread, label %.lr.ph227, !llvm.loop !82

.thread:                                          ; preds = %.loopexit, %._crit_edge, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.mo = load ptr, ptr %i.ci, align 8, !tbaa !28 ; 6 uses
  %i.mp = load ptr, ptr %i.cj, align 8, !tbaa !37
  %.not.i108 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not.i108, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.mq = load ptr, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.mr = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.mq, %i.mr
  br i1 %.not.i.i.i.i.i, label %.noexc110, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mv = icmp ugt i64 %i.mu, 9223372036854775804
  br i1 %i.mv, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !83

.noexc.i.i.i:                                     ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc109 unwind label %.loopexit.split-lp201

.noexc109:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.mw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mu) #25
          to label %.noexc110 unwind label %.loopexit200

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.ap
  %i.mx = phi ptr [ null, %bb.ap ], [ %i.mw, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.mx, ptr %i.mo, align 8, !tbaa !16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !14
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mu
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !26
  %i.nb = load ptr, ptr %9, align 8, !tbaa !84    ; 4 uses
  %i.nc = load ptr, ptr %i.ce, align 8, !tbaa !84
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 4 uses
  %i.ng = icmp sgt i64 %i.nf, 4
  br i1 %i.ng, label %bb.ar, label %bb.as, !prof !85

bb.ar:                                            ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mx, ptr align 4 %i.nb, i64 %i.nf, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.as:                                            ; preds = %.noexc110
  %i.nh = icmp eq i64 %i.nf, 4
  br i1 %i.nh, label %bb.at, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ni = load i32, ptr %i.nb, align 4, !tbaa !19
  store i32 %i.ni, ptr %i.mx, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.at, %bb.as, %bb.ar
  %i.nj = getelementptr inbounds i8, ptr %i.mx, i64 %i.nf
  store ptr %i.nj, ptr %i.my, align 8, !tbaa !14
  %i.nk = load ptr, ptr %i.ci, align 8, !tbaa !28
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store ptr %i.nl, ptr %i.ci, align 8, !tbaa !28
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.au:                                            ; preds = %.thread
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.mo, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit200

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.au
  %.pre251 = load ptr, ptr %9, align 8, !tbaa !16
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.nm = phi ptr [ %.pre251, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.nb, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.nn = load ptr, ptr %i.cf, align 8, !tbaa !26
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nq) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.nr = load i64, ptr %i.br, align 8, !tbaa !60
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %._crit_edge233, label %bb.v, !llvm.loop !86

.loopexit200:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.au
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp201:                            ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit200, %.loopexit.split-lp201, %.loopexit194, %.loopexit.split-lp, %.loopexit195, %.loopexit.split-lp196
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp198, %.loopexit.split-lp196 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit197, %.loopexit195 ], [ %lpad.loopexit, %.loopexit194 ], [ %lpad.loopexit202, %.loopexit200 ], [ %lpad.loopexit.split-lp203, %.loopexit.split-lp201 ]
  %i.nt = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIiSaIiEED2Ev.exit114, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nu = load ptr, ptr %i.cf, align 8, !tbaa !26
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.nt to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef %i.nx) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit114

_ZNSt6vectorIiSaIiEED2Ev.exit114:                 ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bf

._crit_edge233:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l, %.preheader
  %i.ny = load ptr, ptr %i.bo, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.ny)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %._crit_edge233
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #26
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %._crit_edge233
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ob = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  %i.oc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !87 ; 2 uses
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = ptrtoint ptr %i.ob to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 2 uses
  %i.oh = ashr exact i64 %i.og, 3
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.od, i64 %i.oi
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.og) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ok = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !28 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ok, %i.om
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ot, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.ok, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.on = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !26
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = sub i64 %i.oq, %i.or
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.os) #21
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.ba, %.lr.ph.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ot, %i.om
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.ou = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ok, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ov = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !37
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ou to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.oz) #21
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
end_hunk_0
