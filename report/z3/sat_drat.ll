Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_drat?download=true
inline.NumInlined: 741
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3sat4drat7is_drupEjPKNS_7literalER7svectorIS1_jE:bb.a
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.i, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit

bb.h:                                             ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 8, !tbaa !70
  tail call void @_ZN3sat4drat9propagateENS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %.sroa.0.0.copyload.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.at = load i8, ptr %i.a, align 8, !tbaa !106, !range !33, !noundef !34
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.preheader, label %.lr.ph.i, !llvm.loop !4

_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit: ; preds = %.lr.ph.i, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i, %._ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit_crit_edge
  %i.av = phi i1 [ %i.ae, %._ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit_crit_edge ], [ false, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i ], [ false, %.lr.ph.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = icmp samesign uge i64 %indvars.iv.next, %i.k
  %.not26 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.not26, label %.preheader, label %bb.e, !llvm.loop !250

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread.preheader: ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28.prol.loopexit, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28.lr.ph
  %i.ax = zext i32 %.0.i to i64
  br label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28: ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28.prol.loopexit, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.3, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28 ], [ %indvars.iv40.unr, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.pre46, i64 %indvars.iv40
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !104
  %i.ba = lshr i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bb
  store i32 0, ptr %i.bc, align 4, !tbaa !108
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.pre46, i64 %indvars.iv40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !104
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bh
  store i32 0, ptr %i.bi, align 4, !tbaa !108
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.pre46, i64 %indvars.iv40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !104
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bn
  store i32 0, ptr %i.bo, align 4, !tbaa !108
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.pre46, i64 %indvars.iv40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !104
  %i.bs = lshr i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bt
  store i32 0, ptr %i.bu, align 4, !tbaa !108
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next41.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread.preheader, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit28

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread: ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread.preheader, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit
  %i.bv = phi ptr [ %.pre46, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread.preheader ], [ %i.cl, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ] ; 4 uses
  %indvars.iv43 = phi i64 [ %i.ax, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread.preheader ], [ %indvars.iv.next44, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ] ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !70
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv43, %i.by
  br i1 %i.bz, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %.0.i, ptr %i.ca, align 4, !tbaa !70
  br label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit

_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %.preheader, %bb.i
  %i.cb = load i8, ptr %i.a, align 8, !tbaa !106, !range !33, !noundef !34
  %i.cc = trunc nuw i8 %i.cb to i1
  store i8 0, ptr %i.a, align 8, !tbaa !106
  br label %bb.m

bb.j:                                             ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv43
  %i.ce = load ptr, ptr %3, align 8, !tbaa !112   ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !70 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !70
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.l, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !112 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !70
  %.pre47 = load ptr, ptr %i.e, align 8, !tbaa !73
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.k, %bb.l
  %i.cl = phi ptr [ %.pre47, %bb.l ], [ %i.bv, %bb.k ] ; 2 uses
  %i.cm = phi i32 [ %.pre2.i, %bb.l ], [ %i.ch, %bb.k ] ; 2 uses
  %i.cn = phi ptr [ %.pre.i, %bb.l ], [ %i.ce, %bb.k ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = load i32, ptr %i.cd, align 4, !tbaa !70
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !70
  %i.cs = add i32 %i.cm, 1
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !70
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %i.ct = icmp eq ptr %i.cl, null
  br i1 %i.ct, label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit30.thread, !llvm.loop !251

bb.m:                                             ; preds = %bb.b, %bb.a, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit
  %.0 = phi i1 [ %i.cc, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat4drat7is_drupEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !106, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ]   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 641 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !88, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.lr.ph.split.preheader, label %.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.m = zext i32 %1 to i64
  br label %.lr.ph.split

.preheader.loopexit:                              ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i, %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit, %bb.g
  %i.n = phi i1 [ true, %bb.g ], [ true, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i ], [ false, %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit ]
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader.loopexit
  %i.o = phi ptr [ %.pre, %.preheader.loopexit ], [ %i.f, %.lr.ph ] ; 7 uses
  %.lcssa = phi i1 [ %i.n, %.preheader.loopexit ], [ false, %.lr.ph ]
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.lr.ph

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.lr.ph: ; preds = %.preheader
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !70   ; 2 uses
  %i.s = icmp ult i32 %.0.i, %i.r
  br i1 %i.s, label %.lr.ph26, label %.split

.lr.ph26:                                         ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 5 uses
  %i.v = zext i32 %.0.i to i64                    ; 4 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol.loopexit, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol: ; preds = %.lr.ph26, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol
  %indvars.iv31.prol = phi i64 [ %indvars.iv.next32.prol, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol ], [ %i.v, %.lr.ph26 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol ], [ 0, %.lr.ph26 ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv31.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104
  %i.z = lshr i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.aa
  store i32 0, ptr %i.ab, align 4, !tbaa !108
  %indvars.iv.next32.prol = add nuw nsw i64 %indvars.iv31.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol.loopexit, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol, !llvm.loop !252

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol.loopexit: ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol, %.lr.ph26
  %indvars.iv31.unr = phi i64 [ %i.v, %.lr.ph26 ], [ %indvars.iv.next32.prol, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol ]
  %i.ac = sub nsw i64 %i.v, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.split, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit
  %.pr = load i8, ptr %i.j, align 1, !tbaa !88
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %3 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph.split.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.af = xor i32 %.sroa.0.0.copyload, 1
  %i.ag = trunc nuw i8 %3 to i1
  br i1 %i.ag, label %bb.e, label %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit

bb.e:                                             ; preds = %.lr.ph.split
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !73  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !70
  %i.al = zext i32 %i.ak to i64
  br label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.al, %bb.f ], [ 0, %bb.e ]
  tail call void @_ZN3sat4drat6assignENS_7literalEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %i.af, ptr noundef null)
  %i.am = load i8, ptr %i.a, align 8, !tbaa !106, !range !33, !noundef !34
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.preheader.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ %.0.i.i, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit.i ] ; 3 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !73  ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i: ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !70
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.i, %i.as
  br i1 %i.at, label %bb.g, label %_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit

bb.g:                                             ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.au, align 8, !tbaa !70
  tail call void @_ZN3sat4drat9propagateENS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %.sroa.0.0.copyload.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.av = load i8, ptr %i.a, align 8, !tbaa !106, !range !33, !noundef !34
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.preheader.loopexit, label %.lr.ph.i, !llvm.loop !4

_ZN3sat4drat16assign_propagateENS_7literalEPNS_6clauseE.exit: ; preds = %.lr.ph.i, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit8.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %.not, label %.lr.ph.splitthread-pre-split, label %.preheader.loopexit, !llvm.loop !253

.split:                                           ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol.loopexit, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.lr.ph
  store i32 %.0.i, ptr %i.q, align 4, !tbaa !70
  br label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit

_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit: ; preds = %.preheader, %.split
  store i8 0, ptr %i.a, align 8, !tbaa !106
  br label %bb.h

_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread: ; preds = %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol.loopexit, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.3, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread ], [ %indvars.iv31.unr, %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread.prol.loopexit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv31
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !104
  %i.az = lshr i32 %i.ay, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ba
  store i32 0, ptr %i.bb, align 4, !tbaa !108
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !104
  %i.bf = lshr i32 %i.be, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bg
  store i32 0, ptr %i.bh, align 4, !tbaa !108
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !104
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  store i32 0, ptr %i.bn, align 4, !tbaa !108
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv31
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !104
  %i.br = lshr i32 %i.bq, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bs
  store i32 0, ptr %i.bt, align 4, !tbaa !108
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next32.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.split, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread

bb.h:                                             ; preds = %bb.b, %bb.a, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit
  %.0 = phi i1 [ %.lcssa, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN3sat4drat7is_dratEjPKNS_7literalE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3sat4drat20validate_propagationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit

_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not28 = icmp eq i32 %i.e, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.b

._crit_edge:                                      ; preds = %.split.us.thread, %bb.a, %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %.split.us.thread
  %.02329 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %.split.us.thread ] ; 3 uses
  %i.j = load ptr, ptr %.02329, align 8, !tbaa !84, !nonnull !34, !align !85 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !102  ; 2 uses
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %.split.us.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.02329, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !92
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %.split.us.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !68   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.split.us.thread, label %.preheader.split

.preheader.split:                                 ; preds = %.preheader
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !70
  %wide.trip.count = zext i32 %i.l to i64
  br label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i

.split.us:                                        ; preds = %bb.e
  %i.v = icmp ne i32 %.1, 0
  %i.w = icmp ne i32 %.122, 1
  %i.x = select i1 %i.v, i1 true, i1 %i.w
  br i1 %i.x, label %.split.us.thread, label %bb.f

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i:         ; preds = %.preheader.split, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02025 = phi i32 [ 0, %.preheader.split ], [ %.1, %bb.e ] ; 3 uses
  %.02124 = phi i32 [ 0, %.preheader.split ], [ %.122, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.y, align 4, !tbaa !70 ; 2 uses
  %i.z = lshr i32 %.sroa.0.0.copyload, 1          ; 2 uses
  %.not.i.i = icmp ult i32 %i.z, %i.u
  br i1 %.not.i.i, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, label %_ZNK3sat4drat5valueENS_7literalE.exit.thread

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i:       ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aa
  %.0.i.sroa.speculate.load..i = load i32, ptr %i.ab, align 4, !tbaa !108 ; 3 uses
  %i.ac = icmp eq i32 %.0.i.sroa.speculate.load..i, 0
  br i1 %i.ac, label %_ZNK3sat4drat5valueENS_7literalE.exit.thread, label %_ZNK3sat4drat5valueENS_7literalE.exit

_ZNK3sat4drat5valueENS_7literalE.exit:            ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i
  %i.ad = trunc i32 %.sroa.0.0.copyload to i1
  %i.ae = sub nsw i32 0, %.0.i.sroa.speculate.load..i
  %spec.select = select i1 %i.ad, i32 %i.ae, i32 %.0.i.sroa.speculate.load..i
  switch i32 %spec.select, label %bb.e [
    i32 0, label %_ZNK3sat4drat5valueENS_7literalE.exit.thread
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.af = add i32 %.02025, 1
  br label %bb.e

_ZNK3sat4drat5valueENS_7literalE.exit.thread:     ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.ag = add i32 %.02124, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit, %bb.d, %_ZNK3sat4drat5valueENS_7literalE.exit.thread
  %.122 = phi i32 [ %.02124, %_ZNK3sat4drat5valueENS_7literalE.exit ], [ %i.ag, %_ZNK3sat4drat5valueENS_7literalE.exit.thread ], [ %.02124, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.02025, %_ZNK3sat4drat5valueENS_7literalE.exit ], [ %.02025, %_ZNK3sat4drat5valueENS_7literalE.exit.thread ], [ %i.af, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, !llvm.loop !255

bb.f:                                             ; preds = %.split.us
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.4, i32 noundef 375, ptr noundef nonnull @.str.5)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %.preheader, %.split.us, %bb.f, %bb.c, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.02329, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat4drat7is_dratEjPKNS_7literalEj(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %class.svector.25, align 8          ; 14 uses
  %i.a = zext i32 %3 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %.sroa.029.0.copyload = load i32, ptr %i.b, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !112
  %.not.i.i = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %.lr.ph.preheader.i.i
  %i.c = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %i.k, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
end_hunk_0
