inline.NumInlined: 1372
inline.NumDeleted: 727
begin_hunk_0
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.21 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner13AddNodeHashesEP6aiNodeRSt3setIjSt4lessIjESaIjEE(ptr noundef readonly captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8                ; 4 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = and i32 %i.c, 3
  %i.f = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.f, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.d
  %unroll_iter = and i32 %i.f, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %i.d, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.af, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.g = load i16, ptr %.05463.i, align 1
  %i.h = zext i16 %i.g to i32
  %i.i = add i32 %.05562.i, %i.h                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.k = load i16, ptr %i.j, align 1
  %i.l = zext i16 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 11
  %i.n = shl i32 %i.i, 16
  %i.o = xor i32 %i.m, %i.n
  %i.p = xor i32 %i.o, %i.i                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.r = lshr i32 %i.p, 11
  %i.s = add i32 %i.r, %i.p
  %i.t = load i16, ptr %i.q, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = add i32 %i.s, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 11
  %i.aa = shl i32 %i.v, 16
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = xor i32 %i.ab, %i.v                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ae = lshr i32 %i.ac, 11
  %i.af = add i32 %i.ae, %i.ac                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.ag = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.ag, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.d, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %i.d, %bb.d ], [ %i.ad, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.d ], [ %i.af, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.ah = load i16, ptr %.05463.i.epil.init, align 1
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add i32 %.05562.i.epil.init, %i.ai      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 11
  %i.ao = shl i32 %i.aj, 16
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = xor i32 %i.ap, %i.aj                    ; 2 uses
  %i.ar = lshr i32 %i.aq, 11
  %i.as = add i32 %i.ar, %i.aq
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa26 = phi i32 [ %i.af, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.as, %.lr.ph.i.epil.preheader ]
  %i.at = add nsw i32 %i.f, -1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %scevgep.i = getelementptr i8, ptr %i.aw, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.d ], [ %.lcssa26, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %i.d, %bb.d ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.e, label %default.unreachable [
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
    i32 0, label %_Z13SuperFastHashPKcjj.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i
  %i.ax = load i16, ptr %.054.lcssa.i, align 1
  %i.ay = zext i16 %i.ax to i32
  %i.az = add i32 %.055.lcssa.i, %i.ay            ; 2 uses
  %i.ba = shl i32 %i.az, 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = tail call i8 @llvm.abs.i8(i8 %i.bc, i1 false)
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 18
  %i.bg = xor i32 %i.ba, %i.bf
  %i.bh = xor i32 %i.bg, %i.az                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 11
  %i.bj = add i32 %i.bi, %i.bh
  br label %_Z13SuperFastHashPKcjj.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.bk = load i16, ptr %.054.lcssa.i, align 1
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add i32 %.055.lcssa.i, %i.bl            ; 2 uses
  %i.bn = shl i32 %i.bm, 11
  %i.bo = xor i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 17
  %i.bq = add i32 %i.bp, %i.bo
  br label %_Z13SuperFastHashPKcjj.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.br = load i8, ptr %.054.lcssa.i, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = add i32 %.055.lcssa.i, %i.bs            ; 2 uses
  %i.bu = shl i32 %i.bt, 10
  %i.bv = xor i32 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = add i32 %i.bw, %i.bv
  br label %_Z13SuperFastHashPKcjj.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

_Z13SuperFastHashPKcjj.exit:                      ; preds = %._crit_edge.i, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.e ], [ %i.bq, %bb.f ], [ %i.bx, %bb.g ] ; 2 uses
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
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

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
  %cond.fr.i.i = freeze i1 %i.cu
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertEOj.exit

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
  %.not14 = icmp eq i32 %i.dg, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

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
  br i1 %i.dn, label %bb.k, label %.loopexit, !llvm.loop !6

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
define void @_ZN6Assimp13SceneCombiner15AddNodePrefixesEP6aiNodePKcj(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
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
  br i1 %i.t, label %bb.e, label %._crit_edge, !llvm.loop !7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6Assimp13SceneCombiner13FindNameMatchERK8aiStringRSt6vectorINS_11SceneHelperESaIS5_EEj(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1028) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
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
  %.056.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = and i32 %.056.i, 3
  %i.g = lshr i32 %.056.i, 2                      ; 4 uses
  switch i32 %i.g, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.c
  %unroll_iter = and i32 %i.g, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.h = load i16, ptr %.05463.i, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = add i32 %.05562.i, %i.i                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 11
  %i.o = shl i32 %i.j, 16
  %i.p = xor i32 %i.n, %i.o
  %i.q = xor i32 %i.p, %i.j                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.s = lshr i32 %i.q, 11
  %i.t = add i32 %i.s, %i.q
  %i.u = load i16, ptr %i.r, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %i.t, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 11
  %i.ab = shl i32 %i.w, 16
  %i.ac = xor i32 %i.aa, %i.ab
  %i.ad = xor i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.af = lshr i32 %i.ad, 11
  %i.ag = add i32 %i.af, %i.ad                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.ah = and i32 %.056.i, 4
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.c, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %i.a, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.c ], [ %i.ag, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod30 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ai = load i16, ptr %.05463.i.epil.init, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add i32 %.05562.i.epil.init, %i.aj      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 11
  %i.ap = shl i32 %i.ak, 16
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = xor i32 %i.aq, %i.ak                    ; 2 uses
  %i.as = lshr i32 %i.ar, 11
  %i.at = add i32 %i.as, %i.ar
  br label %._crit_edge.loopexit.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp13SceneCombiner22AddNodePrefixesCheckedEP6aiNodePKcjRSt6vectorINS_11SceneHelperESaIS6_EEj:bb.a
  %.05463.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.h = load i16, ptr %.05463.i, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = add i32 %.05562.i, %i.i                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 11
  %i.o = shl i32 %i.j, 16
  %i.p = xor i32 %i.n, %i.o
  %i.q = xor i32 %i.p, %i.j                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.s = lshr i32 %i.q, 11
  %i.t = add i32 %i.s, %i.q
  %i.u = load i16, ptr %i.r, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %i.t, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 11
  %i.ab = shl i32 %i.w, 16
  %i.ac = xor i32 %i.aa, %i.ab
  %i.ad = xor i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.af = lshr i32 %i.ad, 11
  %i.ag = add i32 %i.af, %i.ad                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.ah = and i32 %.056.i, 4
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.c, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %i.a, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.c ], [ %i.ag, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod40 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.ai = load i16, ptr %.05463.i.epil.init, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add i32 %.05562.i.epil.init, %i.aj      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
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
  %.055.lcssa.i = phi i32 [ 0, %bb.c ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %i.a, %bb.c ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.f, label %default.unreachable [
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 0, label %_Z13SuperFastHashPKcjj.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.ay = load i16, ptr %.054.lcssa.i, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = add i32 %.055.lcssa.i, %i.az            ; 2 uses
  %i.bb = shl i32 %i.ba, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
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
  %i.bl = load i16, ptr %.054.lcssa.i, align 1
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add i32 %.055.lcssa.i, %i.bm            ; 2 uses
  %i.bo = shl i32 %i.bn, 11
  %i.bp = xor i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 17
  %i.br = add i32 %i.bq, %i.bp
  br label %_Z13SuperFastHashPKcjj.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.bs = load i8, ptr %.054.lcssa.i, align 1
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %.055.lcssa.i, %i.bt            ; 2 uses
  %i.bv = shl i32 %i.bu, 10
  %i.bw = xor i32 %i.bv, %i.bu                    ; 2 uses
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add i32 %i.bx, %i.bw
  br label %_Z13SuperFastHashPKcjj.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

_Z13SuperFastHashPKcjj.exit:                      ; preds = %._crit_edge.i, %bb.d, %bb.e, %bb.f
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bk, %bb.d ], [ %i.br, %bb.e ], [ %i.by, %bb.f ] ; 2 uses
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
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = load ptr, ptr %3, align 8               ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 96
  %.not31 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not31, label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_Z13SuperFastHashPKcjj.exit, %.critedge
  %i.cs = phi i64 [ %i.do, %.critedge ], [ 0, %_Z13SuperFastHashPKcjj.exit ]
  %.02228 = phi i32 [ %i.dn, %.critedge ], [ 0, %_Z13SuperFastHashPKcjj.exit ] ; 2 uses
  %.not = icmp eq i32 %4, %.02228
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
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.da = icmp eq ptr %.19.i.i.i, %i.cw
  br i1 %i.da, label %.critedge, label %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit

_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit:        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp ult i32 %i.ck, %i.dc
  br i1 %i.dd, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit
  %.not.i24 = icmp ne i32 %i.b, 0
  %i.de = load i8, ptr %i.a, align 4
  %i.df = icmp eq i8 %i.de, 36
  %or.cond.i = select i1 %.not.i24, i1 %i.df, i1 false
  br i1 %or.cond.i, label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = add i32 %i.b, %2                        ; 2 uses
  %i.dh = icmp ugt i32 %i.dg, 1022
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.di = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull @.str.14)
  br label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit

bb.k:                                             ; preds = %bb.i
  %i.dj = zext i32 %2 to i64                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dj
  %i.dl = add i32 %i.b, 1
  %i.dm = zext i32 %i.dl to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dk, ptr nonnull align 4 %i.a, i64 %i.dm, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %1, i64 %i.dj, i1 false)
  store i32 %i.dg, ptr %0, align 8
  br label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i, %bb.g, %.lr.ph, %_ZNSt3setIjSt4lessIjESaIjEE4findERKj.exit
  %i.dn = add i32 %.02228, 1                      ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = icmp ugt i64 %i.cr, %i.do
  br i1 %i.dp, label %.lr.ph, label %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit, !llvm.loop !10

_ZN6Assimp12PrefixStringER8aiStringPKcj.exit:     ; preds = %.critedge, %_Z13SuperFastHashPKcjj.exit, %bb.k, %bb.j, %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8
  %.not32 = icmp eq i32 %i.dr, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZN6Assimp12PrefixStringER8aiStringPKcj.exit
  ret void

bb.l:                                             ; preds = %.lr.ph30, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void @_ZN6Assimp13SceneCombiner22AddNodePrefixesCheckedEP6aiNodePKcjRSt6vectorINS_11SceneHelperESaIS6_EEj(ptr noundef %i.dv, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = load i32, ptr %i.dq, align 8
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp samesign ult i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %bb.l, label %._crit_edge, !llvm.loop !11
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp13SceneCombiner21OffsetNodeMeshIndicesEP6aiNodej(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, %1
  store i32 %i.j, ptr %i.h, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.preheader, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph14, %bb.c
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv17
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_ZN6Assimp13SceneCombiner21OffsetNodeMeshIndicesEP6aiNodej(ptr noundef %i.p, i32 noundef %1)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.q = load i32, ptr %i.d, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next18, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneRSt6vectorIS2_SaIS2_EEj(ptr noundef captures(address_is_null) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.11", align 8    ; 8 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %.not36 = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not36, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.f) #23
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.j) #23
  %i.k = load ptr, ptr %0, align 8
  tail call void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.k)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 3 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.l)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.l, ptr %0, align 8
  br label %bb.j

common.resume:                                    ; preds = %bb.p, %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40, %bb.v, %bb.u, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.q, %bb.p ], [ %.pn, %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40 ], [ %i.al, %bb.u ], [ %i.am, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1168) #24
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f
  tail call void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.h, i1 noundef zeroext false)
  br label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit

bb.k:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  store ptr %i.n, ptr %0, align 8
  br label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.f) #23
  %i.o = load ptr, ptr %0, align 8
  tail call void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.o)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.p = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 3 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.p)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.p, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1168) #24
  br label %common.resume

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.r = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 4 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.r)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.s = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22 ; 7 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store i32 11, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.u, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  store i8 0, ptr %i.v, align 1
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre47 = load ptr, ptr %1, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.w = ptrtoint ptr %.pre to i64
  %i.x = ptrtoint ptr %.pre47 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 576460752303423487
end_hunk_1
begin_hunk_2_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %.preheader820 ] ; 2 uses
  %i.hj = phi ptr [ %i.lx, %bb.as ], [ %i.he, %.preheader820 ]
  %i.hk = phi ptr [ %i.lw, %bb.as ], [ %i.gy, %.preheader820 ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 5 uses
  %i.hq = load i32, ptr %i.ho, align 8            ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph862
  %i.hs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hp) #21
  %i.ht = trunc i64 %i.hs to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph862
  %.056.i = phi i32 [ %i.ht, %bb.ak ], [ %i.hq, %.lr.ph862 ] ; 3 uses
  %i.hu = and i32 %.056.i, 3
  %i.hv = lshr i32 %.056.i, 2                     ; 4 uses
  switch i32 %i.hv, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.al
  %unroll_iter = and i32 %i.hv, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %i.hp, %.lr.ph.i.preheader.new ], [ %i.it, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.iv, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.hw = load i16, ptr %.05463.i, align 1
  %i.hx = zext i16 %i.hw to i32
  %i.hy = add i32 %.05562.i, %i.hx                ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.ia = load i16, ptr %i.hz, align 1
  %i.ib = zext i16 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 11
  %i.id = shl i32 %i.hy, 16
  %i.ie = xor i32 %i.ic, %i.id
  %i.if = xor i32 %i.ie, %i.hy                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.ih = lshr i32 %i.if, 11
  %i.ii = add i32 %i.ih, %i.if
  %i.ij = load i16, ptr %i.ig, align 1
  %i.ik = zext i16 %i.ij to i32
  %i.il = add i32 %i.ii, %i.ik                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.in = load i16, ptr %i.im, align 1
  %i.io = zext i16 %i.in to i32
  %i.ip = shl nuw nsw i32 %i.io, 11
  %i.iq = shl i32 %i.il, 16
  %i.ir = xor i32 %i.ip, %i.iq
  %i.is = xor i32 %i.ir, %i.il                    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.iu = lshr i32 %i.is, 11
  %i.iv = add i32 %i.iu, %i.is                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.iw = and i32 %.056.i, 4
  %lcmp.mod1378.not = icmp eq i32 %i.iw, 0
  br i1 %lcmp.mod1378.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.al, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %i.hp, %bb.al ], [ %i.it, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.al ], [ %i.iv, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod1380 = trunc i32 %i.hv to i1
  call void @llvm.assume(i1 %lcmp.mod1380)
  %i.ix = load i16, ptr %.05463.i.epil.init, align 1
  %i.iy = zext i16 %i.ix to i32
  %i.iz = add i32 %.05562.i.epil.init, %i.iy      ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.jb = load i16, ptr %i.ja, align 1
  %i.jc = zext i16 %i.jb to i32
  %i.jd = shl nuw nsw i32 %i.jc, 11
  %i.je = shl i32 %i.iz, 16
  %i.jf = xor i32 %i.jd, %i.je
  %i.jg = xor i32 %i.jf, %i.iz                    ; 2 uses
  %i.jh = lshr i32 %i.jg, 11
  %i.ji = add i32 %i.jh, %i.jg
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa1371 = phi i32 [ %i.iv, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ji, %.lr.ph.i.epil.preheader ]
  %i.jj = add nsw i32 %i.hv, -1
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 2
  %i.jm = getelementptr i8, ptr %i.hp, i64 %i.jl
  %scevgep.i = getelementptr i8, ptr %i.jm, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.al, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.al ], [ %.lcssa1371, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %i.hp, %bb.al ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.hu, label %._crit_edge.i.unreachabledefault [
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
    i32 0, label %_Z13SuperFastHashPKcjj.exit
  ]

bb.am:                                            ; preds = %._crit_edge.i
  %i.jn = load i16, ptr %.054.lcssa.i, align 1
  %i.jo = zext i16 %i.jn to i32
  %i.jp = add i32 %.055.lcssa.i, %i.jo            ; 2 uses
  %i.jq = shl i32 %i.jp, 16
  %i.jr = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = call i8 @llvm.abs.i8(i8 %i.js, i1 false)
  %i.ju = zext i8 %i.jt to i32
  %i.jv = shl nuw nsw i32 %i.ju, 18
  %i.jw = xor i32 %i.jq, %i.jv
  %i.jx = xor i32 %i.jw, %i.jp                    ; 2 uses
  %i.jy = lshr i32 %i.jx, 11
  %i.jz = add i32 %i.jy, %i.jx
  br label %_Z13SuperFastHashPKcjj.exit

bb.an:                                            ; preds = %._crit_edge.i
  %i.ka = load i16, ptr %.054.lcssa.i, align 1
  %i.kb = zext i16 %i.ka to i32
  %i.kc = add i32 %.055.lcssa.i, %i.kb            ; 2 uses
  %i.kd = shl i32 %i.kc, 11
  %i.ke = xor i32 %i.kd, %i.kc                    ; 2 uses
  %i.kf = lshr i32 %i.ke, 17
  %i.kg = add i32 %i.kf, %i.ke
  br label %_Z13SuperFastHashPKcjj.exit

bb.ao:                                            ; preds = %._crit_edge.i
  %i.kh = load i8, ptr %.054.lcssa.i, align 1
  %i.ki = sext i8 %i.kh to i32
  %i.kj = add i32 %.055.lcssa.i, %i.ki            ; 2 uses
  %i.kk = shl i32 %i.kj, 10
  %i.kl = xor i32 %i.kk, %i.kj                    ; 2 uses
  %i.km = lshr i32 %i.kl, 1
  %i.kn = add i32 %i.km, %i.kl
  br label %_Z13SuperFastHashPKcjj.exit

._crit_edge.i.unreachabledefault:                 ; preds = %._crit_edge.i
  unreachable

default.unreachable:                              ; preds = %._crit_edge.i.i517, %._crit_edge.i.i559, %._crit_edge.i.i606, %._crit_edge.i.i, %._crit_edge.i.i645
  unreachable

_Z13SuperFastHashPKcjj.exit:                      ; preds = %._crit_edge.i, %bb.am, %bb.an, %bb.ao
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.jz, %bb.am ], [ %i.kg, %bb.an ], [ %i.kn, %bb.ao ] ; 2 uses
  %i.ko = shl i32 %.1.i, 3
  %i.kp = xor i32 %i.ko, %.1.i                    ; 2 uses
  %i.kq = lshr i32 %i.kp, 5
  %i.kr = add i32 %i.kq, %i.kp                    ; 2 uses
  %i.ks = shl i32 %i.kr, 4
  %i.kt = xor i32 %i.ks, %i.kr                    ; 2 uses
  %i.ku = lshr i32 %i.kt, 17
  %i.kv = add i32 %i.ku, %i.kt                    ; 2 uses
  %i.kw = shl i32 %i.kv, 25
  %i.kx = xor i32 %i.kw, %i.kv                    ; 2 uses
  %i.ky = lshr i32 %i.kx, 6
  %i.kz = add i32 %i.ky, %i.kx                    ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hk, i64 56 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.la, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_Z13SuperFastHashPKcjj.exit ] ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ld = load i32, ptr %i.lc, align 4            ; 2 uses
  %i.le = icmp ult i32 %i.kz, %i.ld               ; 2 uses
  %.in.v.i.i.i = select i1 %i.le, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.le, label %._crit_edge.thread.i.i.i, label %bb.aq

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_Z13SuperFastHashPKcjj.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.lb, %_Z13SuperFastHashPKcjj.exit ] ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = icmp eq ptr %.019.lcssa29.i.i.i, %i.lg
  br i1 %i.lh, label %select.unfold.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.li = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i
  %i.lj = phi i32 [ %.pre.i.i, %bb.ap ], [ %i.ld, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ap ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.lk = icmp ult i32 %i.lj, %i.kz
  %cond.fr.i.i = freeze i1 %i.lk
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %bb.as

select.unfold.i.i:                                ; preds = %bb.aq, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.aq ] ; 3 uses
  %i.ll = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.lb
  br i1 %i.ll, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = icmp ult i32 %i.kz, %i.ln
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.ar, %select.unfold.i.i
  %i.lp = phi i1 [ %i.lo, %bb.ar ], [ true, %select.unfold.i.i ]
  %i.lq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %.noexc467 unwind label %bb.at ; 2 uses

.noexc467:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  store i32 %i.kz, ptr %i.lr, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lp, ptr noundef nonnull %i.lq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lb) #23
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hk, i64 88 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = add i64 %i.lt, 1
  store i64 %i.lu, ptr %i.ls, align 8
  %.pre1056 = load ptr, ptr %7, align 8
  br label %bb.as

bb.as:                                            ; preds = %.noexc467, %bb.aq
  %i.lv = phi ptr [ %.pre1056, %.noexc467 ], [ %i.hi, %bb.aq ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lw = getelementptr inbounds nuw [96 x i8], ptr %i.lv, i64 %i.gt ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.lz = load i32, ptr %i.ly, align 8
  %i.ma = zext i32 %i.lz to i64
  %i.mb = icmp samesign ult i64 %indvars.iv.next, %i.ma
  br i1 %i.mb, label %.lr.ph862, label %.loopexit821, !llvm.loop !23

bb.at:                                            ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit821:                                     ; preds = %bb.as, %.preheader820, %bb.ah
  %i.md = phi ptr [ %i.gx, %bb.ah ], [ %i.gx, %.preheader820 ], [ %i.lv, %bb.as ] ; 2 uses
  %i.me = add i32 %.0330863, 1                    ; 2 uses
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %i.mg = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = ptrtoint ptr %i.md to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = sdiv exact i64 %i.mj, 96
  %i.ml = icmp ugt i64 %i.mk, %i.mf
  br i1 %i.ml, label %bb.ah, label %.loopexit823, !llvm.loop !24

.loopexit823:                                     ; preds = %.loopexit821, %._crit_edge860.thread, %.preheader822, %._crit_edge860
  %.not3881244 = phi i1 [ %.not3881232, %._crit_edge860.thread ], [ false, %.preheader822 ], [ true, %._crit_edge860 ], [ false, %.loopexit821 ] ; 4 uses
  %.sroa.0747.078012151242 = phi ptr [ null, %._crit_edge860.thread ], [ %i.cs, %.preheader822 ], [ %i.cs, %._crit_edge860 ], [ %i.cs, %.loopexit821 ] ; 11 uses
  %.sroa.26.077712201240 = phi ptr [ null, %._crit_edge860.thread ], [ %i.ct, %.preheader822 ], [ %i.ct, %._crit_edge860 ], [ %i.ct, %.loopexit821 ] ; 3 uses
  %.sroa.0733.012251238 = phi ptr [ null, %._crit_edge860.thread ], [ %i.cu, %.preheader822 ], [ %i.cu, %._crit_edge860 ], [ %i.cu, %.loopexit821 ] ; 14 uses
  %.sroa.18.012271235 = phi ptr [ null, %._crit_edge860.thread ], [ %i.ea, %.preheader822 ], [ %i.ea, %._crit_edge860 ], [ %i.ea, %.loopexit821 ] ; 2 uses
  %i.mm = phi ptr [ %i.cc, %._crit_edge860.thread ], [ %i.cc, %.preheader822 ], [ %i.cc, %._crit_edge860 ], [ %i.mg, %.loopexit821 ] ; 4 uses
  %i.mn = load ptr, ptr %7, align 8               ; 6 uses
  %.not971 = icmp eq ptr %i.mm, %i.mn             ; 2 uses
  br i1 %.not971, label %._crit_edge868, label %.lr.ph867

.lr.ph867:                                        ; preds = %.loopexit823
  %i.mo = and i32 %3, 4
  %.not438 = icmp eq i32 %i.mo, 0
  %i.mp = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.an, i64 96 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %.promoted = load i32, ptr %i.ms, align 8
  %.promoted869 = load i32, ptr %i.mt, align 8
  %.promoted870 = load i32, ptr %i.mu, align 8
  %i.mv = ptrtoint ptr %i.mm to i64
  %i.mw = ptrtoint ptr %i.mn to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = sdiv exact i64 %i.mx, 96
  br label %bb.au

._crit_edge868:                                   ; preds = %bb.ay, %.loopexit823
  %i.mz = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 8            ; 2 uses
  %.not389 = icmp eq i32 %i.na, 0
  br i1 %.not389, label %.loopexit819, label %bb.az

bb.au:                                            ; preds = %.lr.ph867, %bb.ay
  %i.nb = phi i32 [ %.promoted870, %.lr.ph867 ], [ %i.oj, %bb.ay ]
  %i.nc = phi i32 [ %.promoted869, %.lr.ph867 ], [ %i.of, %bb.ay ]
  %i.nd = phi i32 [ %.promoted, %.lr.ph867 ], [ %i.ob, %bb.ay ]
  %i.ne = phi i64 [ 0, %.lr.ph867 ], [ %i.oq, %bb.ay ] ; 2 uses
  %.0340865 = phi i32 [ 0, %.lr.ph867 ], [ %i.op, %bb.ay ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [96 x i8], ptr %i.mn, i64 %i.ne ; 7 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0747.078012151242, i64 %i.ne
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = icmp ne i32 %.0340865, %i.nh
  %or.cond = and i1 %.not438, %i.ni
  br i1 %or.cond, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nj = load ptr, ptr %i.nf, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 64
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = load i32, ptr %i.mp, align 8
  %i.nn = add i32 %i.nm, %i.nl
  store i32 %i.nn, ptr %i.mp, align 8
  %i.no = load ptr, ptr %i.nf, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nq = load i32, ptr %i.np, align 8
  %i.nr = load i32, ptr %i.mq, align 8
  %i.ns = add i32 %i.nr, %i.nq
  store i32 %i.ns, ptr %i.mq, align 8
  %i.nt = load ptr, ptr %i.nf, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load i32, ptr %i.nu, align 8
  %i.nw = load i32, ptr %i.mr, align 8
  %i.nx = add i32 %i.nw, %i.nv
  store i32 %i.nx, ptr %i.mr, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.ny = load ptr, ptr %i.nf, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 80
  %i.oa = load i32, ptr %i.nz, align 8
  %i.ob = add i32 %i.nd, %i.oa                    ; 2 uses
  store i32 %i.ob, ptr %i.ms, align 8
  %i.oc = load ptr, ptr %i.nf, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 96
  %i.oe = load i32, ptr %i.od, align 8
  %i.of = add i32 %i.nc, %i.oe                    ; 2 uses
  store i32 %i.of, ptr %i.mt, align 8
  %i.og = load ptr, ptr %i.nf, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 48
  %i.oi = load i32, ptr %i.oh, align 8
  %i.oj = add i32 %i.nb, %i.oi                    ; 2 uses
  store i32 %i.oj, ptr %i.mu, align 8
  %i.ok = load ptr, ptr %i.nf, align 8
  %i.ol = load i32, ptr %i.ok, align 8
  %i.om = and i32 %i.ol, 8
  %.not439 = icmp eq i32 %i.om, 0
  br i1 %.not439, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.on = load i32, ptr %i.an, align 8
  %i.oo = or i32 %i.on, 8
  store i32 %i.oo, ptr %i.an, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.op = add i32 %.0340865, 1                    ; 2 uses
  %i.oq = zext i32 %i.op to i64                   ; 2 uses
  %i.or = icmp ugt i64 %i.my, %i.oq
  br i1 %i.or, label %bb.au, label %._crit_edge868, !llvm.loop !25

bb.az:                                            ; preds = %._crit_edge868
  %i.os = zext i32 %i.na to i64
  %i.ot = shl nuw nsw i64 %i.os, 3
  %i.ou = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ot) #22
          to label %bb.ba unwind label %bb.bb     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.ov = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  store ptr %i.ou, ptr %i.ov, align 8
  br i1 %.not971, label %.loopexit819, label %.lr.ph884

.lr.ph884:                                        ; preds = %bb.ba
  %i.ow = and i32 %3, 4
  %.not434 = icmp eq i32 %i.ow, 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.bc:                                            ; preds = %.lr.ph884, %._crit_edge876
  %i.oy = phi ptr [ %i.mn, %.lr.ph884 ], [ %i.qd, %._crit_edge876 ]
  %i.oz = phi i64 [ 0, %.lr.ph884 ], [ %i.qb, %._crit_edge876 ] ; 3 uses
  %.0334882 = phi i32 [ 0, %.lr.ph884 ], [ %i.pz, %._crit_edge876 ]
  %.0345881 = phi ptr [ %i.ou, %.lr.ph884 ], [ %.1346.lcssa, %._crit_edge876 ] ; 4 uses
  %.0348878 = phi i32 [ 0, %.lr.ph884 ], [ %i.qa, %._crit_edge876 ] ; 4 uses
  %i.pa = getelementptr inbounds nuw [96 x i8], ptr %i.oy, i64 %i.oz ; 3 uses
  %i.pb = load ptr, ptr %i.pa, align 8            ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  %i.pd = load i32, ptr %i.pc, align 8
  %.not973 = icmp eq i32 %i.pd, 0
  br i1 %.not973, label %._crit_edge876, label %.lr.ph875

.lr.ph875:                                        ; preds = %bb.bc
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0747.078012151242, i64 %i.oz ; 3 uses
  br i1 %.not434, label %.lr.ph875.split.us, label %.lr.ph875.split

.lr.ph875.split.us:                               ; preds = %.lr.ph875
  %i.pf = load i32, ptr %i.pe, align 4
  %i.pg = icmp eq i32 %.0348878, %i.pf
end_hunk_2
begin_hunk_3_@_ZN6Assimp13SceneCombiner13AttachToGraphEP6aiNodeRSt6vectorINS_18NodeAttachmentInfoESaIS4_EE:bb.a
; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner13AttachToGraphEP7aiSceneRSt6vectorINS_18NodeAttachmentInfoESaIS4_EE(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN6Assimp13SceneCombiner13AttachToGraphEP6aiNodeRSt6vectorINS_18NodeAttachmentInfoESaIS4_EE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIP7aiSceneSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #24
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1028) %i.e, i8 0, i64 1028, i1 false)
  store ptr %i.c, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.c, ptr noundef nonnull align 8 dereferenceable(1060) %1, i64 32, i1 false)
  %i.f = icmp eq ptr %i.c, %1
  br i1 %i.f, label %_ZN9aiTextureaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i32, ptr %i.g, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 0, ptr %i.m, align 1
  br label %_ZN9aiTextureaSERKS_.exit

_ZN9aiTextureaSERKS_.exit:                        ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN9aiTextureaSERKS_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not24 = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %i.c, align 8
  %i.r = shl i32 %i.p, 2
  %i.s = select i1 %.not24, i32 1, i32 %i.r
  %.019 = mul i32 %i.q, %i.s                      ; 2 uses
  %.not25.not = icmp eq i32 %.019, 0
  br i1 %.not25.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %.019 to i64                    ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #22 ; 2 uses
  store ptr %i.u, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZN9aiTextureaSERKS_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP10aiMaterialPKS1_(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 9 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8
  tail call void @_ZN10aiMaterial5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8
  %i.l = zext i32 %i.g to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22
  store ptr %i.n, ptr %i.c, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  resume { ptr, i32 } %i.o

.lr.ph:                                           ; preds = %bb.e, %_ZN8aiStringaSERKS_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8aiStringaSERKS_.exit ], [ 0, %bb.e ] ; 3 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #22 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1040 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.p, i8 0, i64 1040, i1 false)
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1048 ; 2 uses
  store ptr null, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store ptr %i.p, ptr %i.t, align 8
  %i.u = load ptr, ptr %1, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1036
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 1036
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = zext i32 %i.y to i64                    ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #22 ; 2 uses
  store ptr %i.ab, ptr %i.r, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1048
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ad, i64 %i.aa, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 1032
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 1028
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = icmp eq ptr %i.p, %i.w
  br i1 %i.ak, label %_ZN8aiStringaSERKS_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %i.w, align 8
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.al, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.p, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ao = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %i.an, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  store i8 0, ptr %i.ap, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.k, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %_ZN8aiStringaSERKS_.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #22 ; 34 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1272 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1312
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.j, i8 0, i64 1032, i1 false)
  store ptr %i.c, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.c, ptr noundef nonnull align 8 dereferenceable(1320) %1, i64 236, i1 false)
  %i.k = icmp eq ptr %i.c, %1
  br i1 %i.k, label %_ZN6aiMeshaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.n = load i32, ptr %i.l, align 4
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store i8 0, ptr %i.r, align 1
  br label %_ZN6aiMeshaSERKS_.exit

_ZN6aiMeshaSERKS_.exit:                           ; preds = %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  %i.u = load i32, ptr %i.d, align 4              ; 45 uses
  %i.v = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6aiMeshaSERKS_.exit
  %i.w = zext i32 %i.u to i64
  %i.x = mul nuw nsw i64 %i.w, 12                 ; 4 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #22 ; 5 uses
  %i.z = icmp eq i32 %i.u, 0
  br i1 %i.z, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d
  %i.aa = add nsw i64 %i.x, -12
  %i.ab = urem i64 %i.aa, 12
  %i.ac = sub nsw i64 %i.x, %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.ac, i1 false)
  store ptr %i.y, ptr %i.f, align 8
  %.not9.i = icmp eq i32 %i.u, 1
  br i1 %.not9.i, label %bb.g, label %bb.e, !prof !47

bb.e:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr nonnull align 4 %i.v, i64 %i.x, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

bb.f:                                             ; preds = %bb.d
  store ptr %i.y, ptr %i.f, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

bb.g:                                             ; preds = %.loopexit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZN6aiMeshaSERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i42 = icmp eq ptr %i.ae, null
  br i1 %.not.i42, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit
  %i.af = zext i32 %i.u to i64
  %i.ag = mul nuw nsw i64 %i.af, 12               ; 4 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #22 ; 5 uses
  %i.ai = icmp eq i32 %i.u, 0
  br i1 %i.ai, label %bb.j, label %.loopexit.i43

.loopexit.i43:                                    ; preds = %bb.h
  %i.aj = add nsw i64 %i.ag, -12
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nsw i64 %i.ag, %i.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 0, i64 %i.al, i1 false)
  store ptr %i.ah, ptr %i.ad, align 8
  %.not9.i44 = icmp eq i32 %i.u, 1
  br i1 %.not9.i44, label %bb.k, label %bb.i, !prof !47

bb.i:                                             ; preds = %.loopexit.i43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull align 4 %i.ae, i64 %i.ag, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45

bb.j:                                             ; preds = %bb.h
  store ptr %i.ah, ptr %i.ad, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45

bb.k:                                             ; preds = %.loopexit.i43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45: ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit, %bb.i, %bb.j, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i46 = icmp eq ptr %i.an, null
  br i1 %.not.i46, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45
  %i.ao = zext i32 %i.u to i64
  %i.ap = mul nuw nsw i64 %i.ao, 12               ; 4 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22 ; 5 uses
  %i.ar = icmp eq i32 %i.u, 0
  br i1 %i.ar, label %bb.n, label %.loopexit.i47

.loopexit.i47:                                    ; preds = %bb.l
  %i.as = add nsw i64 %i.ap, -12
  %i.at = urem i64 %i.as, 12
  %i.au = sub nsw i64 %i.ap, %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.au, i1 false)
  store ptr %i.aq, ptr %i.am, align 8
  %.not9.i48 = icmp eq i32 %i.u, 1
  br i1 %.not9.i48, label %bb.o, label %bb.m, !prof !47

bb.m:                                             ; preds = %.loopexit.i47
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull align 4 %i.an, i64 %i.ap, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49

bb.n:                                             ; preds = %bb.l
  store ptr %i.aq, ptr %i.am, align 8
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49

bb.o:                                             ; preds = %.loopexit.i47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49: ; preds = %bb.m, %bb.n, %bb.o, %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit45
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not.i50 = icmp eq ptr %i.aw, null
  br i1 %.not.i50, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit49
  %i.ax = zext i32 %i.u to i64
  %i.ay = mul nuw nsw i64 %i.ax, 12               ; 4 uses
  %i.az = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #22 ; 5 uses
  %i.ba = icmp eq i32 %i.u, 0
  br i1 %i.ba, label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53.thread, label %.loopexit.i51

.loopexit.i51:                                    ; preds = %bb.p
  %i.bb = add nsw i64 %i.ay, -12
  %i.bc = urem i64 %i.bb, 12
  %i.bd = sub nsw i64 %i.ay, %i.bc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.az, i8 0, i64 %i.bd, i1 false)
  store ptr %i.az, ptr %i.av, align 8
  %.not9.i52 = icmp eq i32 %i.u, 1
  br i1 %.not9.i52, label %bb.r, label %bb.q, !prof !47

bb.q:                                             ; preds = %.loopexit.i51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.aw, i64 %i.ay, i1 false)
  br label %_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53

_ZN6Assimp12GetArrayCopyI10aiVector3tIfEEEvRPT_j.exit53.thread: ; preds = %bb.p
  store ptr %i.az, ptr %i.av, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

end_hunk_3
begin_hunk_4_@_ZN6aiMeshD2Ev:bb.a
  br i1 %i.ed, label %bb.bm, label %bb.bl

.lr.ph58:                                         ; preds = %bb.bi, %bb.bk
  %i.ee = phi i32 [ %i.ej, %bb.bk ], [ %i.ea, %bb.bi ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  %i.ef = load ptr, ptr %i.eb, align 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv66
  %i.eh = load ptr, ptr %i.eg, align 8            ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph58
  call void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %i.eh) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 1200) #24
  %.pre78 = load i32, ptr %i.dz, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph58, %bb.bj
  %i.ej = phi i32 [ %i.ee, %.lr.ph58 ], [ %.pre78, %bb.bj ] ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next67, %i.ek
  br i1 %i.el, label %.lr.ph58, label %._crit_edge59, !llvm.loop !107

bb.bl:                                            ; preds = %._crit_edge59
  call void @_ZdaPv(ptr noundef nonnull %.pre79) #24
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge59, %bb.bl, %bb.bi, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.en = load ptr, ptr %i.em, align 8            ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %.idx = shl i64 %i.eq, 4                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bn
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6aiFaceD2Ev.exit
  %i.et = phi ptr [ %i.eu, %_ZN6aiFaceD2Ev.exit ], [ %i.es, %.preheader.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -16 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN6aiFaceD2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #24
  br label %_ZN6aiFaceD2Ev.exit

_ZN6aiFaceD2Ev.exit:                              ; preds = %.preheader, %bb.bo
  %i.ey = icmp eq ptr %i.eu, %i.en
  br i1 %i.ey, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN6aiFaceD2Ev.exit, %bb.bn
  %i.ez = or disjoint i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ep, i64 noundef %i.ez) #24
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %bb.bm
  ret void

bb.bq:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner14MergeMaterialsEPP10aiMaterialN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEESB_(ptr noundef writeonly captures(address_is_null) %0, ptr readonly captures(address) %1, ptr readnone captures(address) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 10 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.lr.ph.preheader unwind label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.d
  store ptr %i.d, ptr %0, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @_ZN10aiMaterial5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader.preheader, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #24
  resume { ptr, i32 } %i.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.055 = phi i32 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.043.054 = phi ptr [ %i.l, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.043.054, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %.055                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.043.054, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.l, %2
  br i1 %.not51, label %._crit_edge, label %.lr.ph, !llvm.loop !108

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.k, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8
  %i.o = zext i32 %i.k to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22
  store ptr %i.q, ptr %i.d, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge58
  %.sroa.0.060 = phi ptr [ %i.u, %._crit_edge58 ], [ %1, %.preheader.preheader ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.060, align 8      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %.not61 = icmp eq i32 %i.t, 0
  br i1 %.not61, label %._crit_edge58, label %.lr.ph57

._crit_edge58:                                    ; preds = %bb.i, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.060, i64 8 ; 2 uses
  %.not52 = icmp eq ptr %i.u, %2
  br i1 %.not52, label %.loopexit, label %.preheader, !llvm.loop !109

.lr.ph57:                                         ; preds = %.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.bg, %bb.i ], [ %i.r, %.preheader ]
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1028 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1032 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = call i32 @aiGetMaterialProperty(ptr noundef nonnull %i.d, ptr noundef nonnull %i.z, i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph57
  %i.af = call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #22 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1040 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.af, i8 0, i64 1040, i1 false)
  store i32 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1048 ; 2 uses
  store ptr null, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = load i32, ptr %i.n, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  store ptr %i.af, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 1036
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 1036
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = zext i32 %i.an to i64                   ; 2 uses
  %i.aq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22 ; 2 uses
  store ptr %i.aq, ptr %i.ah, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 1048
  %i.as = load ptr, ptr %i.ar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.as, i64 %i.ap, i1 false)
  %i.at = load i32, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  store i32 %i.at, ptr %i.au, align 8
  %i.av = load i32, ptr %i.aa, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = icmp eq ptr %i.af, %i.y
  br i1 %i.ax, label %_ZN8aiStringaSERKS_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.y, align 8
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.ay, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.af, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ba = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.z, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 0, ptr %i.bb, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.g, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 1040
  %i.bd = load i32, ptr %i.bc, align 8
  store i32 %i.bd, ptr %i.ag, align 8
  %i.be = load i32, ptr %i.n, align 8
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.n, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN8aiStringaSERKS_.exit, %.lr.ph57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load ptr, ptr %.sroa.0.060, align 8     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph57, label %._crit_edge58, !llvm.loop !110

.loopexit:                                        ; preds = %._crit_edge58, %bb.a, %bb.c
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN10aiMaterial5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i32 @aiGetMaterialProperty(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 4 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.c)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 1168) #24
  br label %bb.am

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.d ] ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  invoke void @_ZN10aiMetadataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #24
  br label %bb.am

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.n, align 8
  br label %_ZN6Assimp12CopyPtrArrayI11aiAnimationEEvRPPT_PKPKS2_j.exit

bb.l:                                             ; preds = %bb.j
  %i.q = zext i32 %i.l to i64                     ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22
  store ptr %i.s, ptr %i.n, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @_ZN6Assimp13SceneCombiner4CopyEPP11aiAnimationPKS1_(ptr noundef %i.u, ptr noundef %i.w)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %_ZN6Assimp12CopyPtrArrayI11aiAnimationEEvRPPT_PKPKS2_j.exit, label %bb.m, !llvm.loop !111

_ZN6Assimp12CopyPtrArrayI11aiAnimationEEvRPPT_PKPKS2_j.exit: ; preds = %bb.m, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i54 = icmp eq i32 %i.y, 0
  br i1 %.not.i54, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6Assimp12CopyPtrArrayI11aiAnimationEEvRPPT_PKPKS2_j.exit
  store ptr null, ptr %i.aa, align 8
  br label %_ZN6Assimp12CopyPtrArrayI9aiTextureEEvRPPT_PKPKS2_j.exit

bb.o:                                             ; preds = %_ZN6Assimp12CopyPtrArrayI11aiAnimationEEvRPPT_PKPKS2_j.exit
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #22
  store ptr %i.af, ptr %i.aa, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_.exit.i, %bb.o
  %indvars.iv.i55 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i56, %_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_.exit.i ] ; 3 uses
  %i.ag = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i55
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = icmp eq ptr %i.ag, null
  %i.ak = icmp eq ptr %i.ai, null
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i55
  %i.am = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1028) %i.ao, i8 0, i64 1028, i1 false)
  store ptr %i.am, ptr %i.al, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(1060) %i.ai, i64 32, i1 false)
  %i.ap = icmp eq ptr %i.am, %i.ai
  br i1 %i.ap, label %_ZN9aiTextureaSERKS_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ar = load i32, ptr %i.aq, align 4
  %spec.select.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i, ptr %i.ao, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 36 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.au = zext nneg i32 %spec.select.i.i.i.i to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr nonnull readonly align 4 %i.at, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  store i8 0, ptr %i.av, align 1
  br label %_ZN9aiTextureaSERKS_.exit.i.i

_ZN9aiTextureaSERKS_.exit.i.i:                    ; preds = %bb.r, %bb.q
  %i.aw = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN9aiTextureaSERKS_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not24.i.i = icmp eq i32 %i.ay, 0
  %i.az = load i32, ptr %i.am, align 8
  %i.ba = shl i32 %i.ay, 2
  %i.bb = select i1 %.not24.i.i, i32 1, i32 %i.ba
  %.019.i.i = mul i32 %i.bb, %i.az                ; 2 uses
  %.not25.not.i.i = icmp eq i32 %.019.i.i, 0
  br i1 %.not25.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.an, align 8
  br label %_ZN6Assimp13SceneCombiner4CopyEPP9aiTexturePKS1_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bc = zext i32 %.019.i.i to i64               ; 2 uses
end_hunk_4
