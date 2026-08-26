Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/boundary_loop?download=true
inline.NumInlined: 620
inline.NumDeleted: 344
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl13boundary_loopIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EE:bb.a
common.resume:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit151, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %.pn69.pn.pn.pn, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit151 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %2, align 8, !tbaa !49
  call void @free(ptr noundef %i.bl) #20
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
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 13 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 9 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !61 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !64 ; 2 uses
  %i.bv = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = zext i32 %i.bu to i64
  %i.cb = sub nsw i64 0, %i.ca
  %.not231 = icmp eq i64 %i.bz, %i.cb
  br i1 %.not231, label %._crit_edge229, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit
  %i.cc = icmp eq i64 %i.dz, 0
  br i1 %i.cc, label %._crit_edge229, label %.lr.ph228.a

.lr.ph228.a:                                      ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = insertelement <2 x ptr> poison, ptr %i.bm, i64 0
  %i.ck = shufflevector <2 x ptr> %i.cj, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.n:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129

.lr.ph:                                           ; preds = %bb.l, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit
  %i.cn = phi ptr [ %i.dw, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ %i.bv, %bb.l ] ; 3 uses
  %i.co = phi i32 [ %i.dx, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ %i.bu, %bb.l ] ; 2 uses
  %i.cp = phi ptr [ %i.dy, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ %i.bt, %bb.l ] ; 2 uses
  %i.cq = phi i64 [ %i.dz, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ 0, %bb.l ] ; 3 uses
  %.061222 = phi i64 [ %i.ea, %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit ], [ 0, %bb.l ] ; 5 uses
  %i.cr = sdiv i64 %.061222, 64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cr
  %i.ct = and i64 %.061222, -9223372036854775745
  %i.cu = icmp ugt i64 %i.ct, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.cu, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cs, i64 %storemerge.idx.i.i.i.i.i
  %i.cv = and i64 %.061222, 63
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !65
  %i.cy = and i64 %i.cx, %i.cw
  %.not193 = icmp eq i64 %i.cy, 0
  br i1 %.not193, label %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.cz = trunc i64 %.061222 to i32               ; 5 uses
  %.not.i152 = icmp eq i64 %i.cq, 0
  br i1 %.not.i152, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %i.bp, align 8, !tbaa !66 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19
  %i.dd = icmp slt i32 %i.dc, %i.cz
  br i1 %i.dd, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.02022.i.i = load ptr, ptr %i.bn, align 8, !tbaa !66 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %bb.q ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, %i.cz               ; 2 uses
  %.in.v.i.i = select i1 %i.dg, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i153 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i153, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.dg, label %._crit_edge.thread.i.i, label %bb.s

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.q
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.bm, %bb.q ] ; 4 uses
  %i.dh = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.di = icmp eq ptr %.019.lcssa29.i.i, %i.dh
  br i1 %i.di, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i.i
  %i.dj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #24
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i
  %i.dk = phi i32 [ %.pre81.i, %bb.r ], [ %i.df, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.r ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.dl = icmp slt i32 %i.dk, %i.cz
  br i1 %i.dl, label %select.unfold, label %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit

select.unfold:                                    ; preds = %bb.s, %._crit_edge.thread.i.i, %bb.p
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.da, %bb.p ], [ %.019.lcssa28.i.i, %bb.s ] ; 3 uses
  %i.dm = icmp eq ptr %.sroa.12.2.i.ph, %i.bm
  br i1 %i.dm, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %select.unfold
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19
  %i.dp = icmp sgt i32 %i.do, %i.cz
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i: ; preds = %bb.t, %select.unfold
  %i.dq = phi i1 [ %i.dp, %bb.t ], [ true, %select.unfold ]
  %i.dr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc79 unwind label %bb.u   ; 2 uses

.noexc79:                                         ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store i32 %i.cz, ptr %i.ds, align 4, !tbaa !19
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #20
  %i.dt = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  store i64 %i.du, ptr %i.bq, align 8, !tbaa !60
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !61
  %.pre243 = load i32, ptr %i.bs, align 8, !tbaa !64
  %.pre244 = load ptr, ptr %7, align 8, !tbaa !61
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiEOi.exit: ; preds = %bb.s, %.noexc79, %.lr.ph
  %i.dw = phi ptr [ %i.cn, %bb.s ], [ %.pre244, %.noexc79 ], [ %i.cn, %.lr.ph ] ; 2 uses
  %i.dx = phi i32 [ %i.co, %bb.s ], [ %.pre243, %.noexc79 ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.dy = phi ptr [ %i.cp, %bb.s ], [ %.pre, %.noexc79 ], [ %i.cp, %.lr.ph ] ; 2 uses
  %i.dz = phi i64 [ %i.cq, %bb.s ], [ %i.du, %.noexc79 ], [ %i.cq, %.lr.ph ] ; 2 uses
  %i.ea = add nuw i64 %.061222, 1                 ; 2 uses
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = shl nsw i64 %i.ed, 3
  %i.ef = zext i32 %i.dx to i64
  %i.eg = add nsw i64 %i.ee, %i.ef
  %i.eh = icmp ult i64 %i.ea, %i.eg
  br i1 %i.eh, label %.lr.ph, label %.preheader, !llvm.loop !68

bb.v:                                             ; preds = %.lr.ph228.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.0232 = phi i32 [ undef, %.lr.ph228.a ], [ %.2.lcssa306310, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ei = load ptr, ptr %i.bo, align 8, !tbaa !58 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !19 ; 4 uses
  %i.el = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 40) #21
  %i.em = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.en = add i64 %i.em, -1
  store i64 %i.en, ptr %i.bq, align 8, !tbaa !60
  %i.eo = sext i32 %i.ek to i64                   ; 2 uses
  %i.ep = load ptr, ptr %7, align 8, !tbaa !61
  %i.eq = sdiv i32 %i.ek, 64
  %.sext = sext i32 %i.eq to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.sext
  %i.es = and i64 %i.eo, -9223372036854775745
  %i.et = icmp ugt i64 %i.es, -9223372036854775808
  %storemerge.idx.i.i.i.i.i80 = select i1 %i.et, i64 -8, i64 0
  %storemerge.i.i.i.i.i81 = getelementptr inbounds i8, ptr %i.er, i64 %storemerge.idx.i.i.i.i.i80 ; 2 uses
  %i.eu = and i64 %i.eo, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = xor i64 %i.ev, -1
  %i.ex = load i64, ptr %storemerge.i.i.i.i.i81, align 8, !tbaa !65
  %i.ey = and i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %storemerge.i.i.i.i.i81, align 8, !tbaa !65
  %i.ez = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 4 uses
  %i.fa = load ptr, ptr %i.ce, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.ek, ptr %i.ez, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store ptr %i.fb, ptr %i.cd, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.x:                                             ; preds = %bb.v
  %i.fc = load ptr, ptr %9, align 8, !tbaa !16    ; 4 uses
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 5 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775804
  br i1 %i.fg, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc85 unwind label %.loopexit.split-lp197

.noexc85:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.fh = ashr exact i64 %i.ff, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 2305843009213693951)
  %i.fl = select i1 %i.fj, i64 2305843009213693951, i64 %i.fk ; 3 uses
  %.not.i.i.i84 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i84)
  %i.fm = shl nuw nsw i64 %i.fl, 2
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #25
          to label %.noexc86 unwind label %.loopexit196 ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store i32 %i.ek, ptr %i.fo, align 4, !tbaa !19
  %i.fp = icmp sgt i64 %i.ff, 0
  br i1 %i.fp, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.z:                                             ; preds = %.noexc86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fn, ptr align 4 %i.fc, i64 %i.ff, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.z, %.noexc86
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.fr = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ft) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.fn, ptr %9, align 8, !tbaa !16
  store ptr %i.fq, ptr %i.cd, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.fu, ptr %i.ce, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.fw = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !19 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = load ptr, ptr %5, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gd ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !14
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !16 ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = lshr exact i64 %i.gl, 2                 ; 2 uses
  %i.gn = trunc i64 %i.gm to i32
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %._crit_edge._crit_edge, label %.lr.ph225

.lr.ph225:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.critedge230
  %i.gp = phi i64 [ %i.mr, %.critedge230 ], [ %i.gm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.gq = phi ptr [ %i.mn, %.critedge230 ], [ %i.gi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.gr = phi i32 [ %i.mh, %.critedge230 ], [ %i.gc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.gs = phi i64 [ %i.me, %.critedge230 ], [ %i.fz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.gt = phi i64 [ %i.md, %.critedge230 ], [ %i.fy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.gu = phi ptr [ %i.mb, %.critedge230 ], [ %i.fw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.gv = phi ptr [ %i.ma, %.critedge230 ], [ %i.fv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.1230333 = phi i32 [ %.1, %.critedge230 ], [ %.0232, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.gw = ashr exact i64 %i.gs, 2                 ; 3 uses
  %i.gx = load ptr, ptr %3, align 8, !tbaa !41, !noalias !69
  %i.gy = load i64, ptr %i.cf, align 8, !tbaa !42, !noalias !69 ; 6 uses
  %i.gz = load i64, ptr %i.cg, align 8, !tbaa !9  ; 7 uses
  %i.ha = icmp sgt i64 %i.gy, 1
  %i.hb = load ptr, ptr %7, align 8
  %i.hc = and i64 %i.gp, 2147483647
  %i.hd = add nsw i64 %i.gy, -1                   ; 2 uses
  %min.iters.check343 = icmp ugt i64 %i.gy, 8
  %ident.check.not = icmp eq i64 %i.gz, 1
  %or.cond = select i1 %min.iters.check343, i1 %ident.check.not, i1 false
  %n.vec345 = and i64 %i.hd, -8                   ; 3 uses
  %i.he = or disjoint i64 %n.vec345, 1
  %cmp.n357 = icmp eq i64 %i.hd, %n.vec345
  br label %bb.ab

._crit_edge:                                      ; preds = %.critedge
  br i1 %.243, label %bb.ae, label %._crit_edge._crit_edge

.loopexit196:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit198 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp197:                            ; preds = %bb.y
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ab:                                            ; preds = %.lr.ph225, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.0223 = phi i32 [ %.1230333, %.lr.ph225 ], [ %.1, %.critedge ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hh ; 8 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !19 ; 3 uses
  br i1 %i.ha, label %.lr.ph.i.i.i.i87.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit

.lr.ph.i.i.i.i87.preheader:                       ; preds = %bb.ab
  br i1 %or.cond, label %vector.ph344, label %.lr.ph.i.i.i.i87.preheader360

vector.ph344:                                     ; preds = %.lr.ph.i.i.i.i87.preheader
  %broadcast.splatinsert346 = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %broadcast.splat347 = shufflevector <4 x i32> %broadcast.splatinsert346, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph344
  %index349 = phi i64 [ 0, %vector.ph344 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %vec.phi350 = phi <4 x i32> [ %broadcast.splat347, %vector.ph344 ], [ %i.hn, %vector.body348 ]
  %vec.phi351 = phi <4 x i32> [ %broadcast.splat347, %vector.ph344 ], [ %i.ho, %vector.body348 ]
  %i.hk = getelementptr [4 x i8], ptr %i.hi, i64 %index349 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %i.hm = getelementptr i8, ptr %i.hk, i64 20
  %wide.load352 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !19
  %wide.load353 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !19
  %i.hn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load352, <4 x i32> %vec.phi350) ; 2 uses
  %i.ho = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load353, <4 x i32> %vec.phi351) ; 2 uses
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next354, %n.vec345
  br i1 %i.hp, label %middle.block355, label %vector.body348, !llvm.loop !72

middle.block355:                                  ; preds = %vector.body348
  %rdx.minmax356 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hn, <4 x i32> %i.ho)
  %i.hq = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax356) ; 2 uses
  br i1 %cmp.n357, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit, label %.lr.ph.i.i.i.i87.preheader360

.lr.ph.i.i.i.i87.preheader360:                    ; preds = %.lr.ph.i.i.i.i87.preheader, %middle.block355
  %.01722.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i87.preheader ], [ %i.he, %middle.block355 ] ; 4 uses
  %.02021.i.i.i.i.ph = phi i32 [ %i.hj, %.lr.ph.i.i.i.i87.preheader ], [ %i.hq, %middle.block355 ] ; 2 uses
  %i.hr = sub i64 %i.gy, %.01722.i.i.i.i.ph
  %xtraiter = and i64 %i.hr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i87.prol

.lr.ph.i.i.i.i87.prol:                            ; preds = %.lr.ph.i.i.i.i87.preheader360, %.lr.ph.i.i.i.i87.prol
  %.01722.i.i.i.i.prol = phi i64 [ %i.hw, %.lr.ph.i.i.i.i87.prol ], [ %.01722.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader360 ] ; 2 uses
  %.02021.i.i.i.i.prol = phi i32 [ %i.hv, %.lr.ph.i.i.i.i87.prol ], [ %.02021.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader360 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i87.prol ], [ 0, %.lr.ph.i.i.i.i87.preheader360 ]
  %i.hs = mul nsw i64 %.01722.i.i.i.i.prol, %i.gz
  %i.ht = getelementptr [4 x i8], ptr %i.hi, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !19
  %i.hv = call noundef i32 @llvm.smin.i32(i32 %i.hu, i32 %.02021.i.i.i.i.prol) ; 3 uses
  %i.hw = add nuw nsw i64 %.01722.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i87.prol, !llvm.loop !73

.lr.ph.i.i.i.i87.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i87.prol, %.lr.ph.i.i.i.i87.preheader360
  %.lcssa363.unr = phi i32 [ poison, %.lr.ph.i.i.i.i87.preheader360 ], [ %i.hv, %.lr.ph.i.i.i.i87.prol ]
  %.01722.i.i.i.i.unr = phi i64 [ %.01722.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader360 ], [ %i.hw, %.lr.ph.i.i.i.i87.prol ]
  %.02021.i.i.i.i.unr = phi i32 [ %.02021.i.i.i.i.ph, %.lr.ph.i.i.i.i87.preheader360 ], [ %i.hv, %.lr.ph.i.i.i.i87.prol ]
  %i.hx = sub i64 %.01722.i.i.i.i.ph, %i.gy
  %i.hy = icmp ugt i64 %i.hx, -4
  br i1 %i.hy, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit, label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %.lr.ph.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i87
  %.01722.i.i.i.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i87 ], [ %.01722.i.i.i.i.unr, %.lr.ph.i.i.i.i87.prol.loopexit ] ; 5 uses
  %.02021.i.i.i.i = phi i32 [ %i.ir, %.lr.ph.i.i.i.i87 ], [ %.02021.i.i.i.i.unr, %.lr.ph.i.i.i.i87.prol.loopexit ]
  %i.hz = mul nsw i64 %.01722.i.i.i.i, %i.gz
  %i.ia = getelementptr [4 x i8], ptr %i.hi, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !19
  %i.ic = call noundef i32 @llvm.smin.i32(i32 %i.ib, i32 %.02021.i.i.i.i)
  %i.id = add nuw nsw i64 %.01722.i.i.i.i, 1
  %i.ie = mul nsw i64 %i.id, %i.gz
  %i.if = getelementptr [4 x i8], ptr %i.hi, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !19
  %i.ih = call noundef i32 @llvm.smin.i32(i32 %i.ig, i32 %i.ic)
  %i.ii = add nuw nsw i64 %.01722.i.i.i.i, 2
  %i.ij = mul nsw i64 %i.ii, %i.gz
  %i.ik = getelementptr [4 x i8], ptr %i.hi, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !19
  %i.im = call noundef i32 @llvm.smin.i32(i32 %i.il, i32 %i.ih)
  %i.in = add nuw nsw i64 %.01722.i.i.i.i, 3
  %i.io = mul nsw i64 %i.in, %i.gz
  %i.ip = getelementptr [4 x i8], ptr %i.hi, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !19
  %i.ir = call noundef i32 @llvm.smin.i32(i32 %i.iq, i32 %i.im) ; 2 uses
  %i.is = add nuw nsw i64 %.01722.i.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i.i88.3 = icmp eq i64 %i.is, %i.gy
  br i1 %exitcond.not.i.i.i.i88.3, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit, label %.lr.ph.i.i.i.i87, !llvm.loop !74

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit: ; preds = %.lr.ph.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i87, %middle.block355, %bb.ab
  %.020.lcssa.i.i.i.i = phi i32 [ %i.hj, %bb.ab ], [ %i.hq, %middle.block355 ], [ %.lcssa363.unr, %.lr.ph.i.i.i.i87.prol.loopexit ], [ %i.ir, %.lr.ph.i.i.i.i87 ]
  %i.it = icmp slt i32 %.020.lcssa.i.i.i.i, 0
  br i1 %i.it, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit
  %i.iu = load ptr, ptr %0, align 8, !tbaa !41
  %i.iv = getelementptr [4 x i8], ptr %i.iu, i64 %i.hh ; 4 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !19
  %i.ix = icmp ne i32 %i.iw, %i.gr
  %spec.select = sext i1 %i.ix to i32
  %i.iy = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.iz = getelementptr [4 x i8], ptr %i.iv, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !19
  %i.jb = icmp eq i32 %i.ja, %i.gr
  %spec.select76 = select i1 %i.jb, i32 1, i32 %spec.select
  %.idx = shl i64 %i.iy, 3
  %i.jc = getelementptr i8, ptr %i.iv, i64 %.idx
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !19
  %i.je = icmp eq i32 %i.jd, %i.gr
  %spec.select77 = select i1 %i.je, i32 2, i32 %spec.select76 ; 2 uses
  %i.jf = add nsw i32 %spec.select77, 1
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = load i64, ptr %i.e, align 8, !tbaa !42
  %i.ji = srem i64 %i.jg, %i.jh
  %i.jj = mul nsw i64 %i.ji, %i.iy
  %i.jk = getelementptr [4 x i8], ptr %i.iv, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !19 ; 3 uses
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = sdiv i32 %i.jl, 64
  %.sext190 = sext i32 %i.jn to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %.sext190
  %i.jp = and i64 %i.jm, -9223372036854775745
  %i.jq = icmp ugt i64 %i.jp, -9223372036854775808
  %storemerge.idx.i.i.i.i.i89 = select i1 %i.jq, i64 -8, i64 0
  %storemerge.i.i.i.i.i90 = getelementptr inbounds i8, ptr %i.jo, i64 %storemerge.idx.i.i.i.i.i89
  %i.jr = and i64 %i.jm, 63
  %i.js = shl nuw i64 1, %i.jr
  %i.jt = load i64, ptr %storemerge.i.i.i.i.i90, align 8, !tbaa !65
  %i.ju = and i64 %i.js, %i.jt
  %.not = icmp eq i64 %i.ju, 0
  br i1 %.not, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jv = sext i32 %spec.select77 to i64
  %i.jw = mul nsw i64 %i.gz, %i.jv
  %i.jx = getelementptr [4 x i8], ptr %i.hi, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !19
  %i.jz = icmp slt i32 %i.jy, 0                   ; 2 uses
  %spec.select191 = select i1 %i.jz, i32 %i.jl, i32 %.0223
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %bb.ac, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit
  %.1 = phi i32 [ %.0223, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit ], [ %.0223, %bb.ac ], [ %spec.select191, %bb.ad ] ; 12 uses
  %.243 = phi i1 [ false, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE8minCoeffEv.exit ], [ false, %bb.ac ], [ %i.jz, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ka = icmp samesign uge i64 %indvars.iv.next, %i.hc
  %.not62 = select i1 %i.ka, i1 true, i1 %.243
  br i1 %.not62, label %._crit_edge, label %bb.ab, !llvm.loop !75

bb.ae:                                            ; preds = %._crit_edge
  %i.kb = load ptr, ptr %i.ce, align 8, !tbaa !26
  %.not.i93 = icmp eq ptr %i.gv, %i.kb
  br i1 %.not.i93, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %.1, ptr %i.gv, align 4, !tbaa !19
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store ptr %i.kc, ptr %i.cd, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102

bb.ag:                                            ; preds = %bb.ae
  %i.kd = icmp eq i64 %i.gs, 9223372036854775804
  br i1 %i.kd, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc100 unwind label %.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94: ; preds = %bb.ag
  %.sroa.speculated.i.i.i95 = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.ke = add nsw i64 %.sroa.speculated.i.i.i95, %i.gw ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.gw
  %i.kg = call i64 @llvm.umin.i64(i64 %i.ke, i64 2305843009213693951)
  %i.kh = select i1 %i.kf, i64 2305843009213693951, i64 %i.kg ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %i.kh, 0
  call void @llvm.assume(i1 %.not.i.i.i96)
  %i.ki = shl nuw nsw i64 %i.kh, 2
  %i.kj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ki) #25
          to label %.noexc101 unwind label %.loopexit195 ; 4 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 %i.gs ; 2 uses
  store i32 %.1, ptr %i.kk, align 4, !tbaa !19
  %i.kl = icmp sgt i64 %i.gs, 0
  br i1 %i.kl, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97

bb.ai:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kj, ptr align 4 %i.gu, i64 %i.gs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97: ; preds = %bb.ai, %.noexc101
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %.not.i17.i.i98 = icmp eq ptr %i.gu, null
  br i1 %.not.i17.i.i98, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97
  %i.kn = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = sub i64 %i.ko, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.kp) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i97
  store ptr %i.kj, ptr %9, align 8, !tbaa !16
  store ptr %i.km, ptr %i.cd, align 8, !tbaa !14
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kh
  store ptr %i.kq, ptr %i.ce, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102

_ZNSt6vectorIiSaIiEE9push_backERKi.exit102:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i99, %bb.af
  %.041.i.i = load ptr, ptr %i.bn, align 8, !tbaa !66 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102, %bb.am
  %.044.i.i = phi ptr [ %.0.i.i, %bb.am ], [ %.041.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.am ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ] ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !19 ; 2 uses
  %i.kt = icmp slt i32 %i.ks, %.1
  br i1 %i.kt, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i154
  %i.ku = icmp slt i32 %.1, %i.ks
  br i1 %i.ku, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kv = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !76 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %bb.al, %.lr.ph.i.i.i155
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i155 ], [ %i.kw, %bb.al ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i155 ], [ %.044.i.i, %bb.al ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !19
  %i.lb = icmp slt i32 %i.la, %.1                 ; 2 uses
  %.19.i.i.i = select i1 %i.lb, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.lb, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i156, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i155, !llvm.loop !78

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i155, %bb.al
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.al ], [ %.19.i.i.i, %.lr.ph.i.i.i155 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.ky, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.ky, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !19
  %i.le = icmp slt i32 %.1, %i.ld                 ; 2 uses
  %.19.i28.i.i = select i1 %i.le, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.le, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !79

bb.am:                                            ; preds = %bb.ak, %.lr.ph.i.i154
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i154 ], [ 16, %bb.ak ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i154 ], [ %.044.i.i, %bb.ak ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.lf, align 8, !tbaa !66 ; 2 uses
  %.not.i.i157 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i157, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i, label %.lr.ph.i.i154, !llvm.loop !80

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i: ; preds = %bb.am, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ], [ %.123.i.i, %bb.am ] ; 3 uses
  %.sroa.3.0.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit102 ], [ %.123.i.i, %bb.am ] ; 3 uses
  %i.lg = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.lh = icmp eq ptr %.sroa.037.0.i.i, %i.lg
  %i.li = icmp eq ptr %.sroa.3.0.i.i, %i.bm
  %or.cond.i = select i1 %i.lh, i1 %i.li, i1 false
  br i1 %or.cond.i, label %bb.an, label %.critedge.i.i

bb.an:                                            ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #26
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i.i: ; preds = %bb.an
  store ptr null, ptr %i.bn, align 8, !tbaa !57
  store <2 x ptr> %i.ck, ptr %i.bo, align 8, !tbaa !66
  store i64 0, ptr %i.bq, align 8, !tbaa !60
  br label %.critedge230

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i
  br i1 %.not8.i.i, label %.critedge230, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.ll, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.ll = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #24 ; 2 uses
  %i.lm = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef 40) #21
  %i.ln = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.lo = add i64 %i.ln, -1
  store i64 %i.lo, ptr %i.bq, align 8, !tbaa !60
  %.not.i3.i = icmp eq ptr %i.ll, %.sroa.3.0.i.i
  br i1 %.not.i3.i, label %.critedge230, label %.lr.ph.i2.i, !llvm.loop !81

.loopexit195:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i94
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.critedge230:                                     ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv.exit.i.i, %.critedge.i.i
  %i.lp = sext i32 %.1 to i64                     ; 2 uses
  %i.lq = load ptr, ptr %7, align 8, !tbaa !61
  %i.lr = sdiv i32 %.1, 64
  %.sext188 = sext i32 %i.lr to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %.sext188
  %i.lt = and i64 %i.lp, -9223372036854775745
  %i.lu = icmp ugt i64 %i.lt, -9223372036854775808
  %storemerge.idx.i.i.i.i.i104 = select i1 %i.lu, i64 -8, i64 0
  %storemerge.i.i.i.i.i105 = getelementptr inbounds i8, ptr %i.ls, i64 %storemerge.idx.i.i.i.i.i104 ; 2 uses
  %i.lv = and i64 %i.lp, 63
  %i.lw = shl nuw i64 1, %i.lv
  %i.lx = xor i64 %i.lw, -1
  %i.ly = load i64, ptr %storemerge.i.i.i.i.i105, align 8, !tbaa !65
  %i.lz = and i64 %i.ly, %i.lx
  store i64 %i.lz, ptr %storemerge.i.i.i.i.i105, align 8, !tbaa !65
  %i.ma = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.mb = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64               ; 2 uses
  %i.me = sub i64 %i.mc, %i.md                    ; 2 uses
  %i.mf = getelementptr i8, ptr %i.mb, i64 %i.me
  %i.mg = getelementptr i8, ptr %i.mf, i64 -4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !19 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = load ptr, ptr %5, align 8, !tbaa !31
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %i.mj, i64 %i.mi ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !14
  %i.mn = load ptr, ptr %i.mk, align 8, !tbaa !16 ; 2 uses
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = lshr exact i64 %i.mq, 2                 ; 2 uses
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = icmp slt i32 %i.ms, 1
  br i1 %i.mt, label %._crit_edge._crit_edge, label %.lr.ph225, !llvm.loop !82

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %.critedge230, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.2.lcssa306310 = phi i32 [ %.0232, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.1, %.critedge230 ], [ %.1, %._crit_edge ]
  %i.mu = load ptr, ptr %i.ch, align 8, !tbaa !28 ; 6 uses
  %i.mv = load ptr, ptr %i.ci, align 8, !tbaa !37
  %.not.i108 = icmp eq ptr %i.mu, %i.mv
  br i1 %.not.i108, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge._crit_edge
  %i.mw = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.mx = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.mw, %i.mx
  br i1 %.not.i.i.i.i.i, label %.noexc110, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nb = icmp ugt i64 %i.na, 9223372036854775804
  br i1 %i.nb, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !83

.noexc.i.i.i:                                     ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc109 unwind label %.loopexit.split-lp202

.noexc109:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.nc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #25
          to label %.noexc110 unwind label %.loopexit201

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.ap
  %i.nd = phi ptr [ null, %bb.ap ], [ %i.nc, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.nd, ptr %i.mu, align 8, !tbaa !16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !14
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.na
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !26
  %i.nh = load ptr, ptr %9, align 8, !tbaa !84    ; 4 uses
  %i.ni = load ptr, ptr %i.cd, align 8, !tbaa !84
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.nh to i64
  %i.nl = sub i64 %i.nj, %i.nk                    ; 4 uses
  %i.nm = icmp sgt i64 %i.nl, 4
  br i1 %i.nm, label %bb.ar, label %bb.as, !prof !85

bb.ar:                                            ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.nd, ptr align 4 %i.nh, i64 %i.nl, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.as:                                            ; preds = %.noexc110
  %i.nn = icmp eq i64 %i.nl, 4
  br i1 %i.nn, label %bb.at, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.no = load i32, ptr %i.nh, align 4, !tbaa !19
  store i32 %i.no, ptr %i.nd, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.at, %bb.as, %bb.ar
  %i.np = getelementptr inbounds i8, ptr %i.nd, i64 %i.nl
  store ptr %i.np, ptr %i.ne, align 8, !tbaa !14
  %i.nq = load ptr, ptr %i.ch, align 8, !tbaa !28
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  store ptr %i.nr, ptr %i.ch, align 8, !tbaa !28
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.au:                                            ; preds = %._crit_edge._crit_edge
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit201

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.au
  %.pre245 = load ptr, ptr %9, align 8, !tbaa !16
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.ns = phi ptr [ %.pre245, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.nh, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.nt = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.ns to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nw) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.nx = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.ny = icmp eq i64 %i.nx, 0
  br i1 %i.ny, label %._crit_edge229, label %bb.v, !llvm.loop !86

.loopexit201:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.au
  %lpad.loopexit203 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp202:                            ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit201, %.loopexit.split-lp202, %.loopexit195, %.loopexit.split-lp, %.loopexit196, %.loopexit.split-lp197
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp199, %.loopexit.split-lp197 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit198, %.loopexit196 ], [ %lpad.loopexit, %.loopexit195 ], [ %lpad.loopexit203, %.loopexit201 ], [ %lpad.loopexit.split-lp204, %.loopexit.split-lp202 ]
  %i.nz = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIiSaIiEED2Ev.exit114, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.oa = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.nz to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.od) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit114

_ZNSt6vectorIiSaIiEED2Ev.exit114:                 ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bf

._crit_edge229:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l, %.preheader
  %i.oe = load ptr, ptr %i.bn, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.oe)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %._crit_edge229
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #26
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %._crit_edge229
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.oh = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %.not.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  %i.oi = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !87 ; 2 uses
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = ptrtoint ptr %i.oh to i64
  %i.om = sub i64 %i.ok, %i.ol                    ; 2 uses
  %i.on = ashr exact i64 %i.om, 3
  %i.oo = sub nsw i64 0, %i.on
  %i.op = getelementptr inbounds [8 x i8], ptr %i.oj, i64 %i.oo
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.om) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.oq = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !28 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.oq, %i.os
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.oz, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.oq, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.ot = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = ptrtoint ptr %i.ot to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef %i.oy) #21
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.ba, %.lr.ph.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.oz, %i.os
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.pa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.oq, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !37
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.pa to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.pf) #21
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
end_hunk_0
