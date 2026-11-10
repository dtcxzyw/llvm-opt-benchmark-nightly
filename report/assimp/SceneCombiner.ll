Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SceneCombiner?download=true
inline.NumInlined: 1372
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN6Assimp13SceneCombiner13AddNodeHashesEP6aiNodeRSt3setIjSt4lessIjESaIjEE:bb.a

_Z13SuperFastHashPKcjj.exit:                      ; preds = %._crit_edge.i, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.e ], [ %i.bq, %bb.f ], [ %i.bx, %bb.g ] ; 2 uses
  %i.by = shl i32 %.1.i, 3
  %i.bz = xor i32 %i.by, %.1.i                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 5
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = shl i32 %i.cb, 4
  %i.cd = xor i32 %i.cc, %i.cb                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 17
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = shl i32 %i.cf, 25
  %i.ch = xor i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = add i32 %i.ci, %i.ch                    ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.ck, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_Z13SuperFastHashPKcjj.exit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = icmp ult i32 %i.cj, %i.cn               ; 2 uses
  %.in.v.i.i.i = select i1 %i.co, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.co, label %._crit_edge.thread.i.i.i, label %bb.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_Z13SuperFastHashPKcjj.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %.019.lcssa29.i.i.i, %i.cq
  br i1 %i.cr, label %select.unfold.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cs = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %i.ct = phi i32 [ %.pre.i.i, %bb.h ], [ %i.cn, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.h ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.cu = icmp ult i32 %i.ct, %i.cj
  br i1 %i.cu, label %select.unfold.i.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit

select.unfold.i.i:                                ; preds = %bb.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.i ] ; 3 uses
  %i.cv = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cl
  br i1 %i.cv, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %select.unfold.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp ult i32 %i.cj, %i.cx
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.j, %select.unfold.i.i
  %i.cz = phi i1 [ %i.cy, %bb.j ], [ true, %select.unfold.i.i ]
  %i.da = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i32 %i.cj, ptr %i.db, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8
  br label %_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit

_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit:       ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, %bb.i, %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8
  %.not17 = icmp eq i32 %i.dg, 0
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void @_ZN6Assimp13SceneCombiner13AddNodeHashesEP6aiNodeRSt3setIjSt4lessIjESaIjEE(ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = load i32, ptr %i.df, align 8
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp samesign ult i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %bb.k, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %bb.k, %_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit, %bb.b
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #1

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner15AddNodePrefixesEP6aiNodePKcj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !44 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %.not.i = icmp ne i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = icmp eq i8 %i.c, 36
  %or.cond.i = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %or.cond.i, label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.a, %2                         ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1022
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.14)
  br label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = add i32 %i.a, 1
  %i.k = zext i32 %i.j to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %i.b, i64 %i.k, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr align 1 %1, i64 %i.h, i1 false)
  store i32 %i.e, ptr %0, align 4
  br label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit

_ZN6Assimp12PrefixStringER8aiStringPKcj.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @_ZN6Assimp13SceneCombiner15AddNodePrefixesEP6aiNodePKcj(ptr noundef %i.q, ptr noundef %1, i32 noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.l, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.e, label %._crit_edge, !llvm.loop !43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6Assimp13SceneCombiner13FindNameMatchERK8aiStringRSt6vectorINS_11SceneHelperESaIS5_EEj(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1028) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #3 align 2 !guid !45 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %0, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.e = trunc i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.054.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = and i32 %.054.i, 3
  %i.g = lshr i32 %.054.i, 2                      ; 4 uses
  switch i32 %i.g, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.c
  %unroll_iter = and i32 %i.g, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.063.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %.05661.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.h = load i16, ptr %.05661.i, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = add i32 %.063.i, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05661.i, i64 2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 11
  %i.o = shl i32 %i.j, 16
  %i.p = xor i32 %i.n, %i.o
  %i.q = xor i32 %i.p, %i.j                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05661.i, i64 4
  %i.s = lshr i32 %i.q, 11
  %i.t = add i32 %i.s, %i.q
  %i.u = load i16, ptr %i.r, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %i.t, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05661.i, i64 6
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 11
  %i.ab = shl i32 %i.w, 16
  %i.ac = xor i32 %i.aa, %i.ab
  %i.ad = xor i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05661.i, i64 8 ; 2 uses
  %i.af = lshr i32 %i.ad, 11
  %i.ag = add i32 %i.af, %i.ad                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.ah = and i32 %.054.i, 4
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.c, %._crit_edge.loopexit.i.unr-lcssa
  %.063.i.epil.init = phi i32 [ 0, %bb.c ], [ %i.ag, %._crit_edge.loopexit.i.unr-lcssa ]
  %.05661.i.epil.init = phi ptr [ %i.a, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ai = load i16, ptr %.05661.i.epil.init, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add i32 %.063.i.epil.init, %i.aj        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05661.i.epil.init, i64 2
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 11
  %i.ap = shl i32 %i.ak, 16
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = xor i32 %i.aq, %i.ak                    ; 2 uses
  %i.as = lshr i32 %i.ar, 11
  %i.at = add i32 %i.as, %i.ar
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ag, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.at, %.lr.ph.i.epil.preheader ]
  %i.au = add nsw i32 %i.g, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %i.a, i64 %i.aw
  %scevgep.i = getelementptr i8, ptr %i.ax, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %._crit_edge.loopexit.i
  %.056.lcssa.i = phi ptr [ %i.a, %bb.c ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.f, label %default.unreachable [
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 0, label %_Z13SuperFastHashPKcjj.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.ay = load i16, ptr %.056.lcssa.i, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = add i32 %.0.lcssa.i, %i.az              ; 2 uses
  %i.bb = shl i32 %i.ba, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.056.lcssa.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = tail call i8 @llvm.abs.i8(i8 %i.bd, i1 false)
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 18
  %i.bh = xor i32 %i.bb, %i.bg
  %i.bi = xor i32 %i.bh, %i.ba                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 11
  %i.bk = add i32 %i.bj, %i.bi
  br label %_Z13SuperFastHashPKcjj.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.bl = load i16, ptr %.056.lcssa.i, align 1
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add i32 %.0.lcssa.i, %i.bm              ; 2 uses
  %i.bo = shl i32 %i.bn, 11
  %i.bp = xor i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 17
  %i.br = add i32 %i.bq, %i.bp
  br label %_Z13SuperFastHashPKcjj.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.bs = load i8, ptr %.056.lcssa.i, align 1
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %.0.lcssa.i, %i.bt              ; 2 uses
  %i.bv = shl i32 %i.bu, 10
  %i.bw = xor i32 %i.bv, %i.bu                    ; 2 uses
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add i32 %i.bx, %i.bw
  br label %_Z13SuperFastHashPKcjj.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

_Z13SuperFastHashPKcjj.exit:                      ; preds = %._crit_edge.i, %bb.d, %bb.e, %bb.f
  %.1.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bk, %bb.d ], [ %i.br, %bb.e ], [ %i.by, %bb.f ] ; 2 uses
  %i.bz = shl i32 %.1.i, 3
  %i.ca = xor i32 %i.bz, %.1.i                    ; 2 uses
  %i.cb = lshr i32 %i.ca, 5
  %i.cc = add i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = shl i32 %i.cc, 4
  %i.ce = xor i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = lshr i32 %i.ce, 17
  %i.cg = add i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = shl i32 %i.cg, 25
  %i.ci = xor i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = lshr i32 %i.ci, 6
  %i.ck = add i32 %i.cj, %i.ci                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = load ptr, ptr %1, align 8               ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 96
  %.not1521.not = icmp eq ptr %i.cm, %i.cn
  br i1 %.not1521.not, label %.critedge17, label %.lr.ph

.lr.ph:                                           ; preds = %_Z13SuperFastHashPKcjj.exit, %.critedge
  %i.cs = phi i64 [ %i.df, %.critedge ], [ 0, %_Z13SuperFastHashPKcjj.exit ]
  %.01222 = phi i32 [ %i.de, %.critedge ], [ 0, %_Z13SuperFastHashPKcjj.exit ] ; 2 uses
  %.not = icmp eq i32 %2, %.01222
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw [96 x i8], ptr %i.cn, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cv, %bb.g ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cw, %bb.g ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp ult i32 %i.cy, %i.ck               ; 2 uses
  %.19.i.i.i = select i1 %i.cz, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.cz, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.da = icmp eq ptr %.19.i.i.i, %i.cw
  br i1 %i.da, label %.critedge, label %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit

_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit:        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp ult i32 %i.ck, %i.dc
  br i1 %i.dd, label %.critedge, label %.critedge17

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i, %bb.g, %.lr.ph, %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit
  %i.de = add i32 %.01222, 1                      ; 2 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %.not15 = icmp ugt i64 %i.cr, %i.df
  br i1 %.not15, label %.lr.ph, label %.critedge17, !llvm.loop !3

.critedge17:                                      ; preds = %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit, %.critedge, %_Z13SuperFastHashPKcjj.exit
  %.not15.lcssa = phi i1 [ false, %_Z13SuperFastHashPKcjj.exit ], [ false, %.critedge ], [ true, %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit ]
  ret i1 %.not15.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner22AddNodePrefixesCheckedEP6aiNodePKcjRSt6vectorINS_11SceneHelperESaIS6_EEj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #0 align 2 !guid !48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.b = load i32, ptr %0, align 8                ; 4 uses
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.e = trunc i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.054.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = and i32 %.054.i, 3
  %i.g = lshr i32 %.054.i, 2                      ; 4 uses
  switch i32 %i.g, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.c
  %unroll_iter = and i32 %i.g, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.063.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %.05661.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.h = load i16, ptr %.05661.i, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = add i32 %.063.i, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05661.i, i64 2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 11
  %i.o = shl i32 %i.j, 16
  %i.p = xor i32 %i.n, %i.o
  %i.q = xor i32 %i.p, %i.j                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05661.i, i64 4
  %i.s = lshr i32 %i.q, 11
  %i.t = add i32 %i.s, %i.q
  %i.u = load i16, ptr %i.r, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %i.t, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05661.i, i64 6
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 11
  %i.ab = shl i32 %i.w, 16
  %i.ac = xor i32 %i.aa, %i.ab
  %i.ad = xor i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05661.i, i64 8 ; 2 uses
  %i.af = lshr i32 %i.ad, 11
  %i.ag = add i32 %i.af, %i.ad                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
end_hunk_0
