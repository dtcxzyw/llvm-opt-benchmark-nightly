Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverenvironment?download=true
inline.NumInlined: 4733
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN15ActiveBlockList6updateERSt6vectorIP9PlayerSAOSaIS2_EEssRSt3setIN4core8vector3dIsEESt4lessIS9_ESaIS9_EESE_SE_:bb.a
  %.not1032.i = icmp slt i32 %i.bg, %i.bh
  %or.cond.i = select i1 %.not837.i, i1 true, i1 %.not1032.i
  br i1 %or.cond.i, label %_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph46.i, %._crit_edge41.split.i
  %storemerge43.i = phi i16 [ %i.ds, %._crit_edge41.split.i ], [ %i.az, %.lr.ph46.i ] ; 9 uses
  %i.bi = sub i16 %storemerge43.i, %.sroa.023.0.extract.trunc.i
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph40.i
  %storemerge738.i = phi i16 [ %i.bc, %.lr.ph40.i ], [ %i.dq, %._crit_edge.i ] ; 9 uses
  %i.bl = sub i16 %storemerge738.i, %.sroa.4.0.extract.trunc.i
  %i.bm = sext i16 %i.bl to i32                   ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bm
  %i.bo = add nuw nsw i32 %i.bn, %i.bk
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i, %.lr.ph.i
  %storemerge933.i = phi i16 [ %i.bf, %.lr.ph.i ], [ %i.do, %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i ] ; 6 uses
  %i.bp = sub i16 %storemerge933.i, %.sroa.7.0.extract.trunc.i
  %i.bq = sext i16 %i.bp to i32                   ; 2 uses
  %i.br = mul nsw i32 %i.bq, %i.bq
  %i.bs = add nuw nsw i32 %i.bo, %i.br
  %i.bt = uitofp nsz nneg i32 %i.bs to float
  %i.bu = call nsz noundef float @llvm.sqrt.f32(float %i.bt)
  %i.bv = fptosi float %i.bu to i32
  %i.bw = trunc i32 %i.bv to i16
  %.not11.i = icmp slt i16 %2, %i.bw
  br i1 %.not11.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.02126.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !61 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %.02126.i.i.i, null
  br i1 %.not27.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i.backedge
  %.02128.i.i.i = phi ptr [ %.02128.i.i.i.be, %.lr.ph.i.i.i.backedge ], [ %.02126.i.i.i, %bb.g ] ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 32
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !71 ; 3 uses
  %i.bz = icmp slt i16 %storemerge43.i, %i.by
  br i1 %i.bz, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = icmp eq i16 %storemerge43.i, %i.by
  br i1 %i.ca, label %bb.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 34
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !72 ; 2 uses
  %i.cd = icmp slt i16 %storemerge738.i, %i.cc
  br i1 %i.cd, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = icmp eq i16 %storemerge738.i, %i.cc
  br i1 %i.ce, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 36
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !73
  %i.ch = icmp slt i16 %storemerge933.i, %i.cg
  br i1 %i.ch, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 16
  %.021.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.021.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.backedge

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.j, %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 24
  %.021.i13.i.i = load ptr, ptr %i.cj, align 8, !tbaa !61 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.021.i13.i.i, null
  br i1 %.not.i14.i.i, label %._crit_edge.i.thread.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i
  %.02128.i.i.i.be = phi ptr [ %.021.i13.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ], [ %.021.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ]
  br label %.lr.ph.i.i.i, !llvm.loop !2

._crit_edge.thread.i.i.i:                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %bb.g
  %.020.lcssa40.i.i.i = phi ptr [ %i.a, %bb.g ], [ %.02128.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.cl = icmp eq ptr %.020.lcssa40.i.i.i, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cm = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i.i.i) #33 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !71
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i, %bb.k
  %i.cn = phi i16 [ %.pre.i.i, %bb.k ], [ %i.by, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %.020.lcssa39.i.i.i = phi ptr [ %.020.lcssa40.i.i.i, %bb.k ], [ %.02128.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i = phi ptr [ %i.cm, %bb.k ], [ %.02128.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %i.co = icmp slt i16 %i.cn, %storemerge43.i
  br i1 %i.co, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.thread.i.i
  %i.cp = icmp eq i16 %i.cn, %storemerge43.i
  br i1 %i.cp, label %bb.m, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 34
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !72 ; 2 uses
  %i.cs = icmp slt i16 %i.cr, %storemerge738.i
  br i1 %i.cs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = icmp eq i16 %i.cr, %storemerge738.i
  br i1 %i.ct, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i: ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 36
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !73
  %i.cw = icmp slt i16 %i.cv, %storemerge933.i
  br i1 %i.cw, label %bb.o, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

bb.o:                                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i, %bb.m, %._crit_edge.i.thread.i.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.020.lcssa39.i.i.i, %._crit_edge.i.thread.i.i ], [ %.020.lcssa39.i.i.i, %bb.m ], [ %.020.lcssa39.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i ], [ %.020.lcssa40.i.i.i, %._crit_edge.thread.i.i.i ] ; 5 uses
  %i.cx = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.cx, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !71 ; 2 uses
  %i.da = icmp slt i16 %storemerge43.i, %i.cz
  br i1 %i.da, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = icmp eq i16 %storemerge43.i, %i.cz
  br i1 %i.db, label %bb.r, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 34
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !72 ; 2 uses
  %i.de = icmp slt i16 %storemerge738.i, %i.dd
  br i1 %i.de, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = icmp eq i16 %storemerge738.i, %i.dd
  br i1 %i.df, label %bb.t, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 36
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !73
  %i.di = icmp slt i16 %storemerge933.i, %i.dh
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.dj = phi i1 [ false, %bb.q ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.p ], [ false, %bb.s ], [ %i.di, %bb.t ]
  %i.dk = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i16 %storemerge43.i, ptr %i.dl, align 2, !tbaa !74
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 34
  store i16 %storemerge738.i, ptr %.sroa.10.0..sroa_idx.i, align 2, !tbaa !74
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  store i16 %storemerge933.i, ptr %.sroa.17.0..sroa_idx.i, align 2, !tbaa !74
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #32
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !56
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.e, align 8, !tbaa !56
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i: ; preds = %.noexc, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i, %bb.n, %bb.l, %bb.f
  %i.do = add i16 %storemerge933.i, 1             ; 2 uses
  %i.dp = sext i16 %i.do to i32
  %.not10.i = icmp slt i32 %i.bg, %i.dp
  br i1 %.not10.i, label %._crit_edge.i, label %bb.f, !llvm.loop !562

._crit_edge.i:                                    ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i
  %i.dq = add i16 %storemerge738.i, 1             ; 2 uses
  %i.dr = sext i16 %i.dq to i32
  %.not8.i = icmp slt i32 %i.bd, %i.dr
  br i1 %.not8.i, label %._crit_edge41.split.i, label %.lr.ph.i, !llvm.loop !563

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.ds = add i16 %storemerge43.i, 1              ; 2 uses
  %i.dt = sext i16 %i.ds to i32
  %.not.i = icmp slt i32 %i.ba, %i.dt
  br i1 %.not.i, label %_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph40.i, !llvm.loop !564

_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit: ; preds = %._crit_edge41.split.i, %.lr.ph46.i, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 1148
  %i.dv = load i16, ptr %i.du, align 4, !tbaa !569
  %.sroa.speculated = call i16 @llvm.smin.i16(i16 %i.dv, i16 %3) ; 5 uses
  %i.dw = icmp sgt i16 %.sroa.speculated, %2
  br i1 %i.dw, label %bb.u, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit

bb.u:                                             ; preds = %_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 1140
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !570
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 332
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !154
  %i.eb = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dy, i64 1
  %i.ed = fpext <2 x float> %i.ec to <2 x double>
  %i.ee = fmul nsz <2 x double> %i.ed, splat (double f0x3F91DF46A2529D39)
  %i.ef = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ee) ; 2 uses
  %i.eg = extractvalue { <2 x double>, <2 x double> } %i.ef, 0 ; 3 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  %i.ei = extractvalue { <2 x double>, <2 x double> } %i.ef, 1 ; 3 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1
  %i.ek = call nsz double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %i.ej)
  %i.el = fptrunc nsz double %i.ek to float
  %i.em = extractelement <2 x double> %i.eg, i64 0 ; 2 uses
  %i.en = fpext nsz float %i.el to double         ; 2 uses
  %i.eo = fneg nsz double %i.en
  %i.ep = fmul nsz double %i.em, %i.eo
  %i.eq = fneg nsz <2 x double> %i.eg
  %i.er = insertelement <2 x double> %i.eq, double %i.ep, i64 0
  %i.es = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> zeroinitializer, <2 x double> %i.er)
  %i.et = fptrunc <2 x double> %i.es to <2 x float> ; 2 uses
  %i.eu = extractelement <2 x double> %i.ei, i64 0
  %i.ev = fmul nsz double %i.eu, %i.en
  %i.ew = call nsz double @llvm.fmuladd.f64(double %i.em, double 0.000000e+00, double %i.ev)
  %i.ex = fptrunc nsz double %i.ew to float       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.z, i64 1150
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !571, !range !155, !noundef !156
  %i.fa = trunc nuw i8 %i.ez to i1                ; 2 uses
  %i.fb = fneg nsz <2 x float> %i.et
  %i.fc = fneg nsz float %i.ex
  %.sroa.0152.0 = select nsz i1 %i.fa, <2 x float> %i.fb, <2 x float> %i.et
  %.sroa.15.0 = select nsz i1 %i.fa, float %i.fc, float %i.ex
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.aa, align 8, !tbaa !68
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !68
  %i.fd = invoke { <2 x float>, float } @_ZNK9PlayerSAO12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.z)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.fca.0.extract3.i = extractvalue { <2 x float>, float } %i.fd, 0
  %.fca.1.extract4.i = extractvalue { <2 x float>, float } %i.fd, 1
  %i.fe = fadd nsz <2 x float> %.sroa.01.0.copyload.i.i, %.fca.0.extract3.i
  %i.ff = fadd nsz float %.sroa.22.0.copyload.i.i, %.fca.1.extract4.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.z, i64 1144
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !572
  %i.fi = sext i16 %.sroa.speculated to i32       ; 3 uses
  %i.fj = sub i16 %.sroa.023.0.extract.trunc.i, %.sroa.speculated ; 2 uses
  %i.fk = add nsw i32 %i.ak, %i.fi                ; 2 uses
  %i.fl = sext i16 %i.fj to i32
  %.not54.i = icmp slt i32 %i.fk, %i.fl
  br i1 %.not54.i, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.v
  %i.fm = sitofp i16 %.sroa.speculated to float
  %i.fn = fmul nnan nsz float %i.fm, 1.000000e+01
  %i.fo = fmul nnan nsz float %i.fn, 1.600000e+01
  %i.fp = fptosi float %i.fo to i16
  %i.fq = insertelement <2 x i16> poison, i16 %.sroa.speculated, i64 0
  %i.fr = shufflevector <2 x i16> %i.fq, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.fs = sub <2 x i16> %i.ay, %i.fr              ; 3 uses
  %i.ft = ashr exact i48 %.sroa.3.0.insert.shift.i.i, 32
  %i.fu = trunc nsw i48 %i.ft to i32
  %i.fv = sitofp nsz i16 %i.fp to float
  %i.fw = add nsw i32 %i.aw, %i.fi                ; 2 uses
  %i.fx = add nsw i32 %i.fi, %i.fu                ; 2 uses
  %i.fy = sext <2 x i16> %i.fs to <2 x i32>
  %i.fz = insertelement <2 x i32> poison, i32 %i.fx, i64 0
  %i.ga = insertelement <2 x i32> %i.fz, i32 %i.fw, i64 1
  %i.gb = icmp slt <2 x i32> %i.ga, %i.fy         ; 2 uses
  %i.gc = extractelement <2 x i1> %i.gb, i64 0
  %i.gd = extractelement <2 x i1> %i.gb, i64 1
  %or.cond.i96 = select i1 %i.gd, i1 true, i1 %i.gc
  br i1 %or.cond.i96, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.lr.ph58.i
  %i.ge = extractelement <2 x i16> %i.fs, i64 1
  %i.gf = extractelement <2 x i16> %i.fs, i64 0
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %._crit_edge53.split.i
  %storemerge55.i = phi i16 [ %i.ic, %._crit_edge53.split.i ], [ %i.fj, %.lr.ph52.i.preheader ] ; 9 uses
  %.sroa.0.0.insert.ext.i97 = zext i16 %storemerge55.i to i48
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %._crit_edge.i100, %.lr.ph52.i
  %storemerge3050.i = phi i16 [ %i.ge, %.lr.ph52.i ], [ %i.ia, %._crit_edge.i100 ] ; 9 uses
  %.sroa.10.0.insert.ext.i = zext i16 %storemerge3050.i to i48
  %.sroa.10.0.insert.shift.i = shl nuw nsw i48 %.sroa.10.0.insert.ext.i, 16
  %invariant.op.i = or disjoint i48 %.sroa.10.0.insert.shift.i, %.sroa.0.0.insert.ext.i97
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99, %.lr.ph.i98
  %storemerge3245.i = phi i16 [ %i.gf, %.lr.ph.i98 ], [ %i.hy, %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99 ] ; 6 uses
  %.sroa.16.0.insert.ext.i = zext i16 %storemerge3245.i to i48
  %.sroa.16.0.insert.shift.i = shl nuw i48 %.sroa.16.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.reass.i = or disjoint i48 %.sroa.16.0.insert.shift.i, %invariant.op.i
  %i.gg = invoke noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.0.0.insert.insert.reass.i, <2 x float> %i.fe, float %i.ff, <2 x float> %.sroa.0152.0, float %.sroa.15.0, float noundef %i.fh, float noundef %i.fv, ptr noundef null)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.w
  br i1 %i.gg, label %bb.x, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

bb.x:                                             ; preds = %.noexc126
  %.02126.i.i.i102 = load ptr, ptr %i.p, align 8, !tbaa !61 ; 2 uses
  %.not27.i.i.i103 = icmp eq ptr %.02126.i.i.i102, null
  br i1 %.not27.i.i.i103, label %._crit_edge.thread.i.i.i122, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %bb.x, %.lr.ph.i.i.i104.backedge
  %.02128.i.i.i105 = phi ptr [ %.02128.i.i.i105.be, %.lr.ph.i.i.i104.backedge ], [ %.02126.i.i.i102, %bb.x ] ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 32
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !71 ; 3 uses
  %i.gj = icmp slt i16 %storemerge55.i, %i.gi
  br i1 %i.gj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i104
  %i.gk = icmp eq i16 %storemerge55.i, %i.gi
  br i1 %i.gk, label %bb.z, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106

bb.z:                                             ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 34
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !72 ; 2 uses
  %i.gn = icmp slt i16 %storemerge3050.i, %i.gm
  br i1 %i.gn, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = icmp eq i16 %storemerge3050.i, %i.gm
  br i1 %i.go, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118: ; preds = %bb.aa
  %i.gp = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 36
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !73
  %i.gr = icmp slt i16 %storemerge3245.i, %i.gq
  br i1 %i.gr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118, %bb.z, %.lr.ph.i.i.i104
  %i.gs = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 16
  %.021.i.i.i120 = load ptr, ptr %i.gs, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %.021.i.i.i120, null
  br i1 %.not.i.i.i121, label %._crit_edge.thread.i.i.i122, label %.lr.ph.i.i.i104.backedge

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118, %bb.aa, %bb.y
  %i.gt = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 24
  %.021.i13.i.i107 = load ptr, ptr %i.gt, align 8, !tbaa !61 ; 2 uses
  %.not.i14.i.i108 = icmp eq ptr %.021.i13.i.i107, null
  br i1 %.not.i14.i.i108, label %._crit_edge.i.thread.i.i111, label %.lr.ph.i.i.i104.backedge

.lr.ph.i.i.i104.backedge:                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119
  %.02128.i.i.i105.be = phi ptr [ %.021.i13.i.i107, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ], [ %.021.i.i.i120, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119 ]
  br label %.lr.ph.i.i.i104, !llvm.loop !2

._crit_edge.thread.i.i.i122:                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, %bb.x
  %.020.lcssa40.i.i.i123 = phi ptr [ %i.o, %bb.x ], [ %.02128.i.i.i105, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119 ] ; 4 uses
  %i.gu = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.gv = icmp eq ptr %.020.lcssa40.i.i.i123, %i.gu
  br i1 %i.gv, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread.i.i.i122
  %i.gw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i.i.i123) #33 ; 2 uses
  %.phi.trans.insert.i.i124 = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %.pre.i.i125 = load i16, ptr %.phi.trans.insert.i.i124, align 2, !tbaa !71
  br label %._crit_edge.i.thread.i.i111

._crit_edge.i.thread.i.i111:                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106, %bb.ab
  %i.gx = phi i16 [ %.pre.i.i125, %bb.ab ], [ %i.gi, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ] ; 2 uses
  %.020.lcssa39.i.i.i112 = phi ptr [ %.020.lcssa40.i.i.i123, %bb.ab ], [ %.02128.i.i.i105, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ] ; 3 uses
  %.sroa.06.0.i.i.i113 = phi ptr [ %i.gw, %bb.ab ], [ %.02128.i.i.i105, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ] ; 2 uses
  %i.gy = icmp slt i16 %i.gx, %storemerge55.i
  br i1 %i.gy, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.thread.i.i111
  %i.gz = icmp eq i16 %i.gx, %storemerge55.i
  br i1 %i.gz, label %bb.ad, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

bb.ad:                                            ; preds = %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i113, i64 34
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !72 ; 2 uses
  %i.hc = icmp slt i16 %i.hb, %storemerge3050.i
  br i1 %i.hc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hd = icmp eq i16 %i.hb, %storemerge3050.i
  br i1 %i.hd, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114: ; preds = %bb.ae
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i113, i64 36
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !73
  %i.hg = icmp slt i16 %i.hf, %storemerge3245.i
  br i1 %i.hg, label %bb.af, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

bb.af:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114, %bb.ad, %._crit_edge.i.thread.i.i111, %._crit_edge.thread.i.i.i122
  %.sroa.4.0.i.ph.i.i115 = phi ptr [ %.020.lcssa39.i.i.i112, %._crit_edge.i.thread.i.i111 ], [ %.020.lcssa39.i.i.i112, %bb.ad ], [ %.020.lcssa39.i.i.i112, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114 ], [ %.020.lcssa40.i.i.i123, %._crit_edge.thread.i.i.i122 ] ; 5 uses
  %i.hh = icmp eq ptr %.sroa.4.0.i.ph.i.i115, %i.o
  br i1 %i.hh, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i115, i64 32
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !71 ; 2 uses
  %i.hk = icmp slt i16 %storemerge55.i, %i.hj
  br i1 %i.hk, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hl = icmp eq i16 %storemerge55.i, %i.hj
  br i1 %i.hl, label %bb.ai, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116

bb.ai:                                            ; preds = %bb.ah
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i115, i64 34
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !72 ; 2 uses
  %i.ho = icmp slt i16 %storemerge3050.i, %i.hn
  br i1 %i.ho, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = icmp eq i16 %storemerge3050.i, %i.hn
  br i1 %i.hp, label %bb.ak, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116

bb.ak:                                            ; preds = %bb.aj
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i115, i64 36
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !73
  %i.hs = icmp slt i16 %storemerge3245.i, %i.hr
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.ht = phi i1 [ false, %bb.ah ], [ true, %bb.af ], [ true, %bb.ai ], [ true, %bb.ag ], [ false, %bb.aj ], [ %i.hs, %bb.ak ]
end_hunk_0
begin_hunk_1_@_ZN6server15ActiveObjectMgr12removeObjectEt

; Function Attrs: uwtable
define dso_local void @_ZN17ServerEnvironment9createSAOE16ActiveObjectTypeN4core8vector3dIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.716") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3560) %1, i32 noundef %2, <2 x float> %3, float %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %cond = icmp eq i32 %2, 7
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(1152) ptr @_Znwm(i64 noundef 1152) #34, !noalias !869 ; 3 uses
  invoke void @_ZN12LuaEntitySAOC1EP17ServerEnvironmentN4core8vector3dIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1145) %i.b, ptr noundef nonnull %1, <2 x float> %3, float %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrI12LuaEntitySAOSt14default_deleteIS0_EED2Ev.exit unwind label %bb.c, !noalias !869

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1152) #37, !noalias !869
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i2 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i2, label %_ZTW13warningstream.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.d, %bb.e
  %i.d = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !9
  %.v.i = select i1 %i.h, i64 976, i64 984
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.100, ptr %i.a, align 8, !tbaa !308
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !309  ; 5 uses
  %.not.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrI12LuaEntitySAOSt14default_deleteIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZTW13warningstream.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !316
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN11StreamProxylsIR16ActiveObjectTypeEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !309
  br label %_ZN11StreamProxylsIR16ActiveObjectTypeEERS_OT_.exit

_ZN11StreamProxylsIR16ActiveObjectTypeEERS_OT_.exit: ; preds = %bb.f, %bb.g
  %i.s = phi ptr [ %.pre.i, %bb.g ], [ %i.k, %bb.f ]
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %2) ; 0 uses
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !309  ; 5 uses
  %.not.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrI12LuaEntitySAOSt14default_deleteIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11StreamProxylsIR16ActiveObjectTypeEERS_OT_.exit
  %i.u = load ptr, ptr %.pr, align 8, !tbaa !162
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.pr, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !316
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i5 = load ptr, ptr %i.i, align 8, !tbaa !309 ; 2 uses
  %.pre = load ptr, ptr %.pre.i5, align 8, !tbaa !162
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = phi i64 [ %.pre9, %bb.i ], [ %i.w, %bb.h ]
  %i.ac = phi ptr [ %.pre.i5, %bb.i ], [ %.pr, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt16__throw_bad_castv() #36
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !328
  %.not.i1.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 67
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !262
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.af)
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !162
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef signext i8 %i.am(ptr noundef nonnull align 8 dereferenceable(570) %i.af, i8 noundef signext 10), !inline_history !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.aj, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext %.0.i.i.i)
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  br label %_ZNSt10unique_ptrI12LuaEntitySAOSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI12LuaEntitySAOSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN11StreamProxylsIR16ActiveObjectTypeEERS_OT_.exit, %_ZTW13warningstream.exit, %bb.b
  %storemerge = phi ptr [ %i.b, %bb.b ], [ null, %_ZTW13warningstream.exit ], [ null, %_ZN11StreamProxylsIR16ActiveObjectTypeEERS_OT_.exit ], [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !871
  ret void
}

declare noundef zeroext i1 @_ZN8MapBlock19onObjectsActivationEv(ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !309    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !316
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !309
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !74 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.155, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.156, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.156, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.157, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !309    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !316
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !309
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !68
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !68
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.155, i64 noundef 1) ; 0 uses
  %i.k = fpext <2 x float> %.sroa.01.0.copyload to <2 x double> ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.156, i64 noundef 1) ; 0 uses
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.o) ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.156, i64 noundef 1) ; 0 uses
  %i.r = fpext nsz float %.sroa.22.0.copyload to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.157, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI12StaticObjectSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !420    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !421  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !262
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #37
  br label %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i

_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !420
  br label %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI12StaticObjectSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !424
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #37
  br label %_ZNSt12_Vector_baseI12StaticObjectSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI12StaticObjectSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17ServerEnvironment21deleteStaticFromBlockEP18ServerActiveObjecttjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3560) %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !425, !range !155, !noundef !156
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %.sroa.02.0.copyload = load i48, ptr %i.h, align 2, !tbaa !74 ; 2 uses
  br i1 %4, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.g, i48 %.sroa.02.0.copyload) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.m

.thread:                                          ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(608) %i.g, i48 %.sroa.02.0.copyload, i1 noundef zeroext false) ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %.thread25, label %bb.m

.thread25:                                        ; preds = %.thread
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.d

bb.d:                                             ; preds = %.thread25
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %.thread25, %bb.d
  %i.n = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !27
  %.v.i = select i1 %i.r, i64 976, i64 984
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.107, ptr %i.b, align 8, !tbaa !308
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 2 dereferenceable(6) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.108, ptr %i.a, align 8, !tbaa !308
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !309  ; 5 uses
  %.not.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i17, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZTW11errorstream.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !316
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN11StreamProxylsIRtEERS_OT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !309
  br label %_ZN11StreamProxylsIRtEERS_OT_.exit

_ZN11StreamProxylsIRtEERS_OT_.exit:               ; preds = %bb.e, %bb.f
  %i.ae = phi ptr [ %.pre.i, %bb.f ], [ %i.w, %bb.e ]
  %i.af = zext i16 %2 to i64
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef %i.af) ; 0 uses
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !309  ; 5 uses
  %.not.i18 = icmp eq ptr %.pr, null
  br i1 %.not.i18, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit
  %i.ah = load ptr, ptr %.pr, align 8, !tbaa !162
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.pr, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !316
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i19 = load ptr, ptr %i.v, align 8, !tbaa !309 ; 2 uses
  %.pre = load ptr, ptr %.pre.i19, align 8, !tbaa !162
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre27 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi i64 [ %.pre27, %bb.h ], [ %i.aj, %bb.g ]
  %i.ap = phi ptr [ %.pre.i19, %bb.h ], [ %.pr, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i20, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt16__throw_bad_castv() #36
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !328
  %.not.i1.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 67
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !262
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.as)
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !162
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.as, i8 noundef signext 10), !inline_history !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi i8 [ %i.aw, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %.0.i.i.i)
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaISA_EERKSt8optionalI14PointabilitiesEE3$_0E9_M_invokeERKSt9_Any_dataOS1_":bb.a

bb.m:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 337
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !1080 ; 2 uses
  store i8 %i.bv, ptr %i.a, align 1, !tbaa !550
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 337
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !1080 ; 2 uses
  store i8 %i.bx, ptr %i.a, align 1, !tbaa !550
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.by = phi i8 [ %.0.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bv, %bb.m ], [ %.0.i71.i.i.i, %bb.l ], [ %i.bx, %bb.n ] ; 2 uses
  %.not63.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not63.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load <2 x float>, ptr %3, align 8, !tbaa !68
  %i.ca = fadd nsz <2 x float> %.sroa.01.0.copyload.i.i.i.i, %i.bz ; 3 uses
  store <2 x float> %i.ca, ptr %3, align 8, !tbaa !68
  %i.cb = load float, ptr %i.v, align 8, !tbaa !512
  %i.cc = fadd nsz float %.sroa.22.0.copyload.i.i.i.i, %i.cb ; 3 uses
  store float %i.cc, ptr %i.v, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.cd = load ptr, ptr %.val, align 8, !tbaa !1074, !nonnull !156, !align !549 ; 3 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !426
  %i.cf = extractelement <2 x float> %i.ca, i64 0
  %i.cg = fsub nsz float %i.cf, %i.ce             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !154
  %i.cj = extractelement <2 x float> %i.ca, i64 1
  %i.ck = fsub nsz float %i.cj, %i.ci             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !512
  %i.cn = fsub nsz float %i.cc, %i.cm             ; 2 uses
  %i.co = fmul nsz float %i.ck, %i.ck
  %i.cp = call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.co)
  %i.cq = call nsz noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cp) ; 2 uses
  store float %i.cq, ptr %i.b, align 4, !tbaa !68
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1081, !nonnull !156, !align !307 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !497 ; 2 uses
  store i16 %i.cu, ptr %i.c, align 2, !tbaa !74
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !553 ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !554
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.09.0.copyload.i.i.i.i.i = load <2 x float>, ptr %3, align 8, !tbaa !68
  %.sroa.07.0.copyload.i.i.i.i.i = load <2 x float>, ptr %4, align 8, !tbaa !68
  %.sroa.28.0.copyload.i.i.i.i.i = load float, ptr %i.w, align 8, !tbaa !68
  %.sroa.05.0.copyload.i.i.i.i.i = load <2 x float>, ptr %5, align 8, !tbaa !68
  %.sroa.26.0.copyload.i.i.i.i.i = load float, ptr %i.x, align 8, !tbaa !68
  store i8 2, ptr %i.cw, align 4, !tbaa !557
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.by, ptr %i.cz, align 1, !tbaa !558
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.da, i8 0, i64 18, i1 false)
  store i16 %i.cu, ptr %i.db, align 4, !tbaa !559
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 22
  store i16 0, ptr %i.dc, align 2, !tbaa !560
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store <2 x float> %.sroa.09.0.copyload.i.i.i.i.i, ptr %i.dd, align 4, !tbaa !68
  %.sroa.212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store float %i.cc, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !68
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  store <2 x float> %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.de, align 4, !tbaa !68
  %.sroa.28.0..sroa_idx.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  store float %.sroa.28.0.copyload.i.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i13.i.i.i.i, align 4, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <2 x float> %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.df, align 4, !tbaa !68
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store float %.sroa.26.0.copyload.i.i.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  store float %i.cq, ptr %i.dg, align 4, !tbaa !561
  %i.dh = load ptr, ptr %i.cv, align 8, !tbaa !553
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store ptr %i.di, ptr %i.cv, align 8, !tbaa !553
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr %i.cw, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i

_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.d, %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %"_ZSt10__invoke_rIbRZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS7_EERKSt8optionalI14PointabilitiesEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rIbRZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS7_EERKSt8optionalI14PointabilitiesEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.a, %bb.u
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaISA_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS6_EERKSt8optionalI14PointabilitiesEE3$_0", ptr %0, align 8, !tbaa !547
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !268
  store ptr %.val, ptr %0, align 8, !tbaa !268
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1082
  store ptr %i.a, ptr %0, align 8, !tbaa !268
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !268 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #37
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #28

declare noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_S5_PS5_S6_S6_(ptr noundef nonnull align 4 dereferenceable(24), <2 x float>, float, <2 x float>, float, <2 x float>, float, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK7UnitSAO16getTotalRotationEv(ptr noundef nonnull align 8 dereferenceable(954) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 4    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !68
  store float 1.000000e+00, ptr %1, align 4, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load float, ptr %i.f, align 8, !tbaa !512
  %i.h = load <2 x float>, ptr %i.e, align 8, !tbaa !68
  %i.i = fmul nsz <2 x float> %i.h, splat (float f0xBC8EFA35)
  %i.j = fmul nsz float %i.g, f0xBC8EFA35
  call void @_Z18setPitchYawRollRadRN4core8CMatrix4IfEENS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(64) %1, <2 x float> %i.i, float %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.l = load float, ptr %i.k, align 4, !tbaa !1083
  %i.m = fmul nsz float %i.l, f0xBC8EFA35
  %i.n = fpext nsz float %i.m to double
  %i.o = fmul nsz double %i.n, 5.000000e-01
  %sincos34.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.o) ; 2 uses
  %cos36.i.i = extractvalue { double, double } %sincos34.i.i, 1 ; 3 uses
  %i.p = fmul nsz double %cos36.i.i, 0.000000e+00 ; 2 uses
  %i.q = fmul ninf nsz double %i.p, 0.000000e+00
  %sin35.i.i = extractvalue { double, double } %sincos34.i.i, 0 ; 2 uses
  %i.r = fmul nsz double %sin35.i.i, 0.000000e+00 ; 3 uses
  %i.s = fneg nsz double %i.r
  %i.t = call nsz double @llvm.fmuladd.f64(double %cos36.i.i, double 0.000000e+00, double %i.s)
  %i.u = fadd nsz double %sin35.i.i, %i.q
  %i.v = fsub nsz double %i.p, %i.r
  %i.w = fmul ninf nsz double %i.r, 0.000000e+00
  %i.x = fadd nsz double %cos36.i.i, %i.w
  %i.y = fptrunc nsz double %i.t to float         ; 3 uses
  %i.z = insertelement <2 x double> poison, double %i.u, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.v, i64 1
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float> ; 4 uses
  %i.ac = fptrunc nsz double %i.x to float        ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ab, %i.ab
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ae = call nsz float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ad)
  %i.af = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ag = call nsz float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ae)
  %i.ah = call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ag)
  %i.ai = fpext nsz float %i.ah to double
  %i.aj = call nsz double @llvm.sqrt.f64(double %i.ai)
  %i.ak = load float, ptr %1, align 4, !tbaa !68  ; 3 uses
  %i.al = load float, ptr %i.a, align 4, !tbaa !68 ; 3 uses
  %i.am = fmul nsz float %i.al, %i.al
  %i.an = call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !68 ; 3 uses
  %i.aq = call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.an)
  %i.ar = call nsz noundef float @llvm.sqrt.f32(float %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !68 ; 3 uses
  %i.au = call nsz float @llvm.fabs.f32(float %i.ar)
  %i.av = fcmp nsz ole float %i.au, f0x358637BD
  %i.aw = fpext nsz float %i.ar to double
  %i.ax = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ay ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = fptrunc nsz double %i.ba to float       ; 3 uses
  %i.bc = fmul nsz float %i.y, %i.bb              ; 4 uses
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul nsz <2 x float> %i.be, %i.ab       ; 4 uses
  %i.bg = fmul nsz float %i.ac, %i.bb             ; 4 uses
  %i.bh = extractelement <2 x double> %i.az, i64 1
  %i.bi = select i1 %i.av, double f0x37F0000010000010, double %i.bh ; 3 uses
  %i.bj = fpext nsz float %i.ap to double
  %i.bk = fmul nsz double %i.bi, %i.bj            ; 2 uses
  %i.bl = fcmp nsz olt double %i.bk, -1.000000e+00
  %i.bm = select i1 %i.bl, double -1.000000e+00, double %i.bk ; 2 uses
  %i.bn = fcmp nsz olt double %i.bm, 1.000000e+00
  %i.bo = select i1 %i.bn, double %i.bm, double 1.000000e+00 ; 2 uses
  %i.bp = call nsz noundef double @llvm.fabs.f64(double %i.bo)
  %i.bq = fadd nsz double %i.bp, -1.000000e+00
  %i.br = call nsz noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp nsz ugt double %i.br, 1.000000e-08
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bt = load float, ptr %i.c, align 4, !tbaa !68
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load <2 x float>, ptr %i.bv, align 4
  %i.bx = load <2 x float>, ptr %i.bu, align 4, !tbaa !68 ; 2 uses
  %i.by = shufflevector <2 x float> %i.at, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bz = fmul nsz <2 x float> %i.by, %i.by
  %i.ca = shufflevector <2 x float> %i.at, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.ca, <2 x float> %i.bz)
  %i.cc = insertelement <2 x float> %i.bw, float %i.bt, i64 1 ; 3 uses
  %i.cd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cc, <2 x float> %i.cb)
  %i.ce = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cd) ; 2 uses
  %i.cf = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ce)
  %i.cg = fcmp nsz ole <2 x float> %i.cf, splat (float f0x358637BD)
  %i.ch = fpext <2 x float> %i.ce to <2 x double>
  %i.ci = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ch
  %i.cj = select <2 x i1> %i.cg, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.ci
  %i.ck = fpext <2 x float> %i.cc to <2 x double>
  %i.cl = fmul nsz <2 x double> %i.cj, %i.ck      ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = extractelement <2 x double> %i.cl, i64 1
  %i.co = call nsz double @llvm.atan2.f64(double %i.cm, double %i.cn)
  %i.cp = fpext nsz float %i.ak to double
  %i.cq = fmul nsz double %i.bi, %i.cp
  %i.cr = fpext nsz float %i.al to double
  %i.cs = fmul nsz double %i.bi, %i.cr
  %i.ct = call nsz double @llvm.atan2.f64(double %i.cs, double %i.cq)
  %i.cu = fptrunc nsz double %i.co to float
  %i.cv = fpext nsz float %i.cu to double
  %i.cw = fmul nsz double %i.cv, 5.000000e-01
  %i.cx = call nsz { double, double } @llvm.sincos.f64(double %i.cw)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

bb.c:                                             ; preds = %bb.a
  %i.cy = load float, ptr %i.d, align 4, !tbaa !68
  %i.cz = fpext nsz float %i.cy to double
  %i.da = extractelement <2 x float> %i.at, i64 0
  %i.db = fneg nsz float %i.da
  %i.dc = fpext nsz float %i.db to double
  %i.dd = call nsz double @llvm.atan2.f64(double %i.dc, double %i.cz)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit: ; preds = %bb.b, %bb.c
  %.025.i.i.i = phi { double, double } [ { double 0.000000e+00, double 1.000000e+00 }, %bb.c ], [ %i.cx, %bb.b ] ; 2 uses
  %.0.i.i.i = phi nsz double [ %i.dd, %bb.c ], [ %i.ct, %bb.b ]
  %i.de = call nsz double @llvm.asin.f64(double %i.bo)
  %i.df = fptrunc nsz double %i.de to float
  %i.dg = fneg nsz float %i.df
  %i.dh = fptrunc nsz double %.0.i.i.i to float
  %sin.i.i18 = extractvalue { double, double } %.025.i.i.i, 0 ; 3 uses
  %cos.i.i19 = extractvalue { double, double } %.025.i.i.i, 1 ; 3 uses
  %i.di = fpext nsz float %i.dg to double
  %i.dj = fmul nsz double %i.di, 5.000000e-01
  %sincos34.i.i20 = call nsz { double, double } @llvm.sincos.f64(double %i.dj) ; 2 uses
  %sin35.i.i21 = extractvalue { double, double } %sincos34.i.i20, 0 ; 2 uses
  %cos36.i.i22 = extractvalue { double, double } %sincos34.i.i20, 1
  %i.dk = fpext nsz float %i.dh to double
  %i.dl = fmul nsz double %i.dk, 5.000000e-01
  %sincos37.i.i23 = call nsz { double, double } @llvm.sincos.f64(double %i.dl) ; 2 uses
  %sin38.i.i24 = extractvalue { double, double } %sincos37.i.i23, 0 ; 2 uses
  %cos39.i.i25 = extractvalue { double, double } %sincos37.i.i23, 1 ; 2 uses
  %i.dm = fmul nsz double %sin35.i.i21, %cos39.i.i25 ; 2 uses
  %i.dn = fmul nsz double %sin35.i.i21, %sin38.i.i24 ; 2 uses
  %i.do = fneg nsz double %i.dn
  %i.dp = fmul nsz double %cos.i.i19, %i.do
  %i.dq = fneg nsz double %i.dm
  %i.dr = fneg nsz float %i.bc
  %i.ds = insertelement <2 x double> poison, double %cos36.i.i22, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> poison, double %cos39.i.i25, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %sin38.i.i24, i64 1
  %i.dw = fmul nsz <2 x double> %i.dt, %i.dv      ; 3 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = call nsz double @llvm.fmuladd.f64(double %sin.i.i18, double %i.dx, double %i.dp)
  %i.dz = fptrunc nsz double %i.dy to float       ; 3 uses
  %i.ea = extractelement <2 x double> %i.dw, i64 1
  %i.eb = fmul nsz double %sin.i.i18, %i.ea
  %i.ec = call nsz double @llvm.fmuladd.f64(double %cos.i.i19, double %i.dm, double %i.eb)
  %i.ed = fptrunc nsz double %i.ec to float       ; 3 uses
  %i.ee = insertelement <2 x double> poison, double %sin.i.i18, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.dq, i64 1
  %i.ei = fmul nsz <2 x double> %i.ef, %i.eh
  %i.ej = insertelement <2 x double> poison, double %cos.i.i19, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.dw, <2 x double> %i.ei)
  %i.em = fptrunc <2 x double> %i.el to <2 x float> ; 3 uses
  %i.en = fmul nsz float %i.ed, %i.ed
  %i.eo = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.en)
  %i.ep = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.eq = call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.eo)
  %i.er = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.es = call nsz float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.eq)
  %i.et = fpext nsz float %i.es to double
  %i.eu = call nsz double @llvm.sqrt.f64(double %i.et)
  %i.ev = fdiv nsz double 1.000000e+00, %i.eu
  %i.ew = fptrunc nsz double %i.ev to float       ; 3 uses
  %i.ex = fmul nsz float %i.dz, %i.ew             ; 4 uses
  %i.ey = fmul nsz float %i.ed, %i.ew             ; 3 uses
  %i.ez = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul nsz <2 x float> %i.fa, %i.em       ; 4 uses
  %i.fc = fmul nsz float %i.ex, %i.dr
  %i.fd = extractelement <2 x float> %i.fb, i64 0 ; 3 uses
  %i.fe = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.bg, float %i.fc)
  %i.ff = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.fg = extractelement <2 x float> %i.fb, i64 1
  %i.fh = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.fi = fmul nsz float %i.bg, %i.ex
  %i.fj = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.bc, float %i.fi)
  %i.fk = fmul nsz float %i.bg, %i.ey
  %i.fl = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.ff, float %i.fk)
  %i.fm = fneg nsz float %i.ex
  %i.fn = fmul nsz float %i.bg, %i.fg
  %i.fo = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = insertelement <2 x float> %i.fo, float %i.bc, i64 1
  %i.fq = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fl, i64 1
  %i.fs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fp, <2 x float> %i.fr)
  %i.ft = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fm, i64 1
  %i.fv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.bf, <2 x float> %i.fs) ; 3 uses
  %i.fw = insertelement <2 x float> %i.fb, float %i.ey, i64 0
  %i.fx = fneg nsz <2 x float> %i.fw              ; 3 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.ff, float %i.fe)
  %i.ga = extractelement <2 x float> %i.fx, i64 1
  %i.gb = call nsz float @llvm.fmuladd.f32(float %i.ga, float %i.fh, float %i.fz) ; 6 uses
  %i.gc = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.fh, float %i.fj)
  %i.gd = insertelement <2 x float> %i.fo, float %i.bc, i64 0
  %i.ge = insertelement <2 x float> %i.fv, float %i.gc, i64 1
  %i.gf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.gd, <2 x float> %i.ge) ; 6 uses
  %i.gg = fmul nsz float %i.gb, %i.gb
  %i.gh = fpext nsz float %i.gg to double         ; 2 uses
  %i.gi = extractelement <2 x float> %i.gf, i64 1 ; 5 uses
  %i.gj = fmul nsz float %i.gi, %i.gi
  %i.gk = fpext nsz float %i.gj to double         ; 2 uses
  %i.gl = extractelement <2 x float> %i.fv, i64 1 ; 3 uses
  %i.gm = fmul nsz float %i.gl, %i.gl
  %i.gn = fpext nsz float %i.gm to double         ; 2 uses
  %i.go = extractelement <2 x float> %i.gf, i64 0
  %foldExtExtBinop46 = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gp = extractelement <2 x float> %foldExtExtBinop46, i64 0
  %i.gq = fpext nsz float %i.gp to double         ; 2 uses
  %i.gr = fneg nsz float %i.go
  %i.gs = fmul nsz float %i.gi, %i.gr
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.gl, float %i.gb, float %i.gs)
  %i.gu = fpext nsz float %i.gt to double
  %i.gv = fmul nsz double %i.gu, 2.000000e+00     ; 4 uses
  %i.gw = fadd nsz double %i.gv, -1.000000e+00
  %i.gx = call nsz noundef double @llvm.fabs.f64(double %i.gw)
  %i.gy = fcmp nsz ugt double %i.gx, f0x3EB0C6F7A0B5ED8D
  br i1 %i.gy, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  %i.gz = fpext nsz float %i.gi to double
  %i.ha = fpext nsz float %i.gb to double
  %i.hb = call nsz double @llvm.atan2.f64(double %i.gz, double %i.ha)
  %i.hc = fmul nsz double %i.hb, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.e:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  %i.hd = fadd nsz double %i.gv, 1.000000e+00
  %i.he = call nsz noundef double @llvm.fabs.f64(double %i.hd)
  %i.hf = fcmp nsz ugt double %i.he, f0x3EB0C6F7A0B5ED8D
  br i1 %i.hf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hg = fpext nsz float %i.gi to double
  %i.hh = fpext nsz float %i.gb to double
  %i.hi = call nsz double @llvm.atan2.f64(double %i.hg, double %i.hh)
  %i.hj = fmul nsz double %i.hi, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.g:                                             ; preds = %bb.e
  %i.hk = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hn = fmul nsz <2 x float> %i.hl, %i.hm
  %i.ho = fsub nsz double %i.gk, %i.gn
  %i.hp = fsub nsz double %i.ho, %i.gq
  %i.hq = fadd nsz double %i.hp, %i.gh
  %i.hr = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.hr, <2 x float> %i.hn)
  %i.ht = fpext <2 x float> %i.hs to <2 x double>
  %i.hu = fmul nsz <2 x double> %i.ht, splat (double 2.000000e+00) ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 1
  %i.hw = call nsz double @llvm.atan2.f64(double %i.hv, double %i.hq)
  %i.hx = fadd nsz double %i.gk, %i.gn
  %i.hy = fsub nsz double %i.gq, %i.hx
  %i.hz = fadd nsz double %i.hy, %i.gh
  %i.ia = extractelement <2 x double> %i.hu, i64 0
  %i.ib = call nsz double @llvm.atan2.f64(double %i.ia, double %i.hz)
  %i.ic = fcmp nsz olt double %i.gv, -1.000000e+00
  %i.id = select i1 %i.ic, double -1.000000e+00, double %i.gv ; 2 uses
  %i.ie = fcmp nsz olt double %i.id, 1.000000e+00
  %i.if = select i1 %i.ie, double %i.id, double 1.000000e+00
  %i.ig = call nsz double @llvm.asin.f64(double %i.if)
  %i.ih = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.ig, i64 1
  %i.ij = fptrunc <2 x double> %i.ii to <2 x float>
  %i.ik = fmul nsz <2 x float> %i.ij, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.10.0.in = phi double [ %i.hw, %bb.g ], [ %i.hj, %bb.f ], [ %i.hc, %bb.d ]
  %i.il = phi <2 x float> [ %i.ik, %bb.g ], [ <float 0.000000e+00, float -9.000000e+01>, %bb.f ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.d ]
  %.sroa.10.0 = fptrunc double %.sroa.10.0.in to float
  %i.im = fmul nsz float %.sroa.10.0, f0x42652EE0
  %.fca.0.insert.i32 = insertvalue { <2 x float>, float } poison, <2 x float> %i.il, 0
  %.fca.1.insert.i33 = insertvalue { <2 x float>, float } %.fca.0.insert.i32, float %i.im, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret { <2 x float>, float } %.fca.1.insert.i33
}

declare noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24), <2 x float>, float, <2 x float>, float, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i16 @_ZNK14Pointabilities11matchObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN12LuaEntitySAO7getNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1145)) local_unnamed_addr #4

declare i16 @_ZNK14Pointabilities11matchPlayerERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_Z18setPitchYawRollRadRN4core8CMatrix4IfEENS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(64), <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1091   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.150) #36
  unreachable

_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 12 uses
  %i.r = load i16, ptr %2, align 2, !tbaa !74
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %3, align 4, !tbaa !68
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !68
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %4, align 4, !tbaa !68
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !68
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %5, align 4, !tbaa !68
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !68
  %i.s = load float, ptr %6, align 4, !tbaa !68
  %i.t = load i8, ptr %7, align 1, !tbaa !550
  store i8 2, ptr %i.q, align 4, !tbaa !557
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !558
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.v, i8 0, i64 18, i1 false)
  store i16 %i.r, ptr %i.w, align 4, !tbaa !559
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  store i16 0, ptr %i.x, align 2, !tbaa !560
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <2 x float> %.sroa.09.0.copyload.i, ptr %i.y, align 4, !tbaa !68
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store float %.sroa.210.0.copyload.i, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store <2 x float> %.sroa.07.0.copyload.i, ptr %i.z, align 4, !tbaa !68
  %.sroa.28.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store float %.sroa.28.0.copyload.i, ptr %.sroa.28.0..sroa_idx.i31, align 4, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store <2 x float> %.sroa.05.0.copyload.i, ptr %i.aa, align 4, !tbaa !68
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store float %.sroa.26.0.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  store float %i.s, ptr %i.ab, align 4, !tbaa !561
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i, i64 64, i1 false), !tbaa.struct !1093, !alias.scope !1094
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1087

_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i32 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i32, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i33
  %.012.i.i.i34 = phi ptr [ %i.ag, %.lr.ph.i.i.i33 ], [ %i.ae, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i35 = phi ptr [ %i.af, %.lr.ph.i.i.i33 ], [ %1, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i34, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i35, i64 64, i1 false), !tbaa.struct !1093, !alias.scope !1095
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i35, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 64 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i33, !llvm.loop !1087

_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %.lr.ph.i.i.i33, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ae, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ag, %.lr.ph.i.i.i33 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseI12PointedThingSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !554
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #37
  br label %_ZNSt12_Vector_baseI12PointedThingSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI12PointedThingSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1091
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !553
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !554
  ret void
}

; Function Attrs: uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjecttEZN17ServerEnvironment20removeRemovedObjectsEvE3$_0E9_M_invokeERKSt9_Any_dataOS1_Ot"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %2) #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1102  ; 3 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !248  ; 9 uses
  %.val4 = load i16, ptr %2, align 2, !tbaa !74   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 %.val4, ptr %i.g, align 2, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 225 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !502, !range !155, !noundef !156
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 224
  %i.l = load i8, ptr %i.k, align 8, !range !155
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br i1 %i.n, label %bb.b, label %"_ZSt10__invoke_rIbRZN17ServerEnvironment20removeRemovedObjectsEvE3$_0JP18ServerActiveObjecttEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit"

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN17ServerEnvironment21deleteStaticFromBlockEP18ServerActiveObjecttjb(ptr noundef nonnull readonly align 8 dereferenceable(3560) %.val, ptr noundef nonnull %.val3, i16 noundef zeroext %.val4, i32 noundef 1024, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !548
  %.not.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i, label %bb.e, label %"_ZSt10__invoke_rIbRZN17ServerEnvironment20removeRemovedObjectsEvE3$_0JP18ServerActiveObjecttEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit"

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.h, align 1, !tbaa !502, !range !155, !noundef !156
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN11StreamProxylsEPFRSoS0_E.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val3, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !425, !range !155, !noundef !156
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %_ZN11StreamProxylsEPFRSoS0_E.exit.i.i.i

end_hunk_2
