Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_rb?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @__archive_rb_tree_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !14
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @__archive_rb_tree_find_node(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %.01118 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not19 = icmp eq ptr %.01118, null
  br i1 %.not19, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01120 = phi ptr [ %.011, %bb.b ], [ %.01118, %bb.a ] ; 3 uses
  %i.e = tail call i32 %i.d(ptr noundef nonnull %.01120, ptr noundef %1) #6 ; 2 uses
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.01120, i64 %i.g
  %.011 = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !23

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %.011.lcssa = phi ptr [ null, %bb.a ], [ %.01120, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.011.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @__archive_rb_tree_find_node_geq(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %.01525 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not26 = icmp eq ptr %.01525, null
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01528 = phi ptr [ %.015, %bb.b ], [ %.01525, %bb.a ] ; 4 uses
  %.01427 = phi ptr [ %spec.select, %bb.b ], [ null, %bb.a ]
  %i.e = tail call i32 %i.d(ptr noundef nonnull %.01528, ptr noundef %1) #6 ; 3 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp slt i32 %i.e, 0
  %spec.select = select i1 %i.f, ptr %.01528, ptr %.01427 ; 2 uses
  %i.g = icmp sgt i32 %i.e, 0
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.01528, i64 %i.h
  %.015 = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %.not = icmp eq ptr %.015, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !24

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %.219 = phi ptr [ null, %bb.a ], [ %.01528, %.lr.ph ], [ %spec.select, %bb.b ]
  ret ptr %.219
}

; Function Attrs: nounwind uwtable
define dso_local ptr @__archive_rb_tree_find_node_leq(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %.01525 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not26 = icmp eq ptr %.01525, null
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01528 = phi ptr [ %.015, %bb.b ], [ %.01525, %bb.a ] ; 4 uses
  %.01427 = phi ptr [ %spec.select, %bb.b ], [ null, %bb.a ]
  %i.e = tail call i32 %i.d(ptr noundef nonnull %.01528, ptr noundef %1) #6 ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  %spec.select = select i1 %i.f, ptr %.01528, ptr %.01427 ; 2 uses
  %i.g = zext i1 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.01528, i64 %i.g
  %.015 = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %.not = icmp eq ptr %.015, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !25

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %.219 = phi ptr [ null, %bb.a ], [ %.01528, %.lr.ph ], [ %spec.select, %bb.b ]
  ret ptr %.219
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @__archive_rb_tree_insert_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %.03954 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not55 = icmp eq ptr %.03954, null
  br i1 %.not55, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03956 = phi ptr [ %.039, %bb.b ], [ %.03954, %bb.a ] ; 3 uses
  %i.d = tail call i32 %i.c(ptr noundef nonnull %.03956, ptr noundef %1) #6 ; 2 uses
  %.not48 = icmp eq i32 %i.d, 0
  br i1 %.not48, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  %i.f = zext i1 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.03956, i64 %i.f
  %.039 = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %.not = icmp eq ptr %.039, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.b
  %2 = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.041.lcssa = phi ptr [ %.03956, %._crit_edge ], [ %0, %bb.a ] ; 9 uses
  %.038.lcssa = phi i32 [ %2, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.h = ptrtoint ptr %.041.lcssa to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.masked = and i64 %i.h, -3
  %3 = shl nuw nsw i32 %.038.lcssa, 1
  %masksel = zext nneg i32 %3 to i64
  %i.j = or disjoint i64 %.masked, %masksel       ; 2 uses
  %i.k = icmp eq ptr %.041.lcssa, %0
  br i1 %i.k, label %.critedge50, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = or i64 %i.j, 1
  store i64 %i.l, ptr %i.i, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.041.lcssa, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = zext nneg i32 %.038.lcssa to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.041.lcssa, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !15
  store ptr %1, ptr %i.r, align 8, !tbaa !15
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.041.lcssa, i64 16 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21   ; 3 uses
  %i.w = and i64 %i.v, -4                         ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = icmp eq ptr %i.z, %.041.lcssa           ; 3 uses
  %i.ab = xor i1 %i.aa, true
  %i.ac = zext i1 %i.ab to i64                    ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %._crit_edge.i, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph.i.preheader
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.i
  %i.al = and i64 %i.bo, -4                       ; 3 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = icmp eq ptr %i.ao, %i.bm                ; 3 uses
  %i.aq = xor i1 %i.ap, true
  %i.ar = zext i1 %i.aq to i64                    ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph58, %.lr.ph.i
  %i.az = phi i64 [ %i.ah, %.lr.ph58 ], [ %i.aw, %.lr.ph.i ]
  %i.ba = phi ptr [ %i.ag, %.lr.ph58 ], [ %i.av, %.lr.ph.i ]
  %i.bb = phi ptr [ %i.u, %.lr.ph58 ], [ %i.bn, %.lr.ph.i ] ; 2 uses
  %i.bc = phi ptr [ %i.x, %.lr.ph58 ], [ %i.am, %.lr.ph.i ] ; 4 uses
  %i.bd = and i64 %i.az, -2
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !21
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !21
  %i.bf = and i64 %i.be, -2
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !21
  %i.bg = icmp eq ptr %i.ak, %i.bc
  br i1 %i.bg, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %i.bj = or i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !21
  %i.bk = and i64 %i.bi, -4                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = inttoptr i64 %i.bk to ptr               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !21 ; 4 uses
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.critedge, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph.i, %.lr.ph.i.preheader, %bb.e
  %.025.lcssa.i = phi ptr [ %1, %bb.e ], [ %1, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i ], [ %i.bc, %bb.f ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.041.lcssa, %bb.e ], [ %.041.lcssa, %.lr.ph.i.preheader ], [ %i.bm, %.lr.ph.i ], [ %i.bm, %bb.f ] ; 3 uses
  %.lcssa46.i = phi ptr [ %i.u, %bb.e ], [ %i.u, %.lr.ph.i.preheader ], [ %i.bn, %.lr.ph.i ], [ %i.bn, %bb.f ] ; 4 uses
  %.lcssa44.i = phi i64 [ %i.v, %bb.e ], [ %i.v, %.lr.ph.i.preheader ], [ %i.bo, %.lr.ph.i ], [ %i.bo, %bb.f ]
  %.lcssa42.i = phi i64 [ %i.w, %bb.e ], [ %i.w, %.lr.ph.i.preheader ], [ %i.al, %.lr.ph.i ], [ %i.al, %bb.f ] ; 2 uses
  %.lcssa40.i = phi ptr [ %i.x, %bb.e ], [ %i.x, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i ], [ %i.am, %bb.f ] ; 4 uses
  %.lcssa38.i = phi i1 [ %i.aa, %bb.e ], [ %i.aa, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i ], [ %i.ap, %bb.f ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.ac, %bb.e ], [ %i.ac, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i ], [ %i.ar, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i, i64 %.lcssa.i ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !15 ; 5 uses
  %i.bt = icmp ne ptr %.025.lcssa.i, %i.bs
  %i.bu = icmp eq ptr %i.bs, null
  %or.cond.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %._crit_edge.__archive_rb_tree_reparent_nodes.exit_crit_edge.i, label %bb.j

._crit_edge.__archive_rb_tree_reparent_nodes.exit_crit_edge.i: ; preds = %._crit_edge.i
  %.pre.i = zext i1 %.lcssa38.i to i64
  br label %__archive_rb_tree_reparent_nodes.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bv = lshr i64 %.lcssa44.i, 1
  %i.bw = and i64 %i.bv, 1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.lcssa40.i, i64 %i.bw
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !15
  %i.by = zext i1 %.lcssa38.i to i64              ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !15
  store ptr %.0.lcssa.i, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !21
  %i.cd = and i64 %i.cc, 3
  %i.ce = or disjoint i64 %i.cd, %.lcssa42.i
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !21
  %i.cf = ptrtoint ptr %.025.lcssa.i to i64
  %i.cg = load i64, ptr %.lcssa46.i, align 8, !tbaa !21
  %i.ch = and i64 %i.cg, 3
  %i.ci = or i64 %i.ch, %i.cf                     ; 2 uses
  store i64 %i.ci, ptr %.lcssa46.i, align 8, !tbaa !21
  %i.cj = load i64, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = and i64 %i.ck, 3                        ; 2 uses
  %i.cm = xor i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.cb, align 8, !tbaa !21
  %i.cn = load i64, ptr %.lcssa46.i, align 8, !tbaa !21
  %i.co = xor i64 %i.cn, %i.cl
  %i.cp = and i64 %i.co, -3
  %masksel.i.i = select i1 %.lcssa38.i, i64 2, i64 0
  %storemerge.i.i = or disjoint i64 %i.cp, %masksel.i.i
  store i64 %storemerge.i.i, ptr %.lcssa46.i, align 8, !tbaa !21
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !15 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %__archive_rb_tree_reparent_nodes.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j
  %i.cs = ptrtoint ptr %.0.lcssa.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !21
  %i.cv = and i64 %i.cu, 1
  %.masked.i.i = and i64 %i.cs, -3
  %masksel45.i.i = select i1 %.lcssa38.i, i64 0, i64 2
  %i.cw = or disjoint i64 %masksel45.i.i, %.masked.i.i
  %.sink.i.i = or i64 %i.cw, %i.cv
  store i64 %.sink.i.i, ptr %i.ct, align 8, !tbaa !21
  br label %__archive_rb_tree_reparent_nodes.exit.i

__archive_rb_tree_reparent_nodes.exit.i:          ; preds = %.sink.split.i.i, %bb.j, %._crit_edge.__archive_rb_tree_reparent_nodes.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.__archive_rb_tree_reparent_nodes.exit_crit_edge.i ], [ %i.by, %.sink.split.i.i ], [ %i.by, %bb.j ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.lcssa40.i, i64 %.pre-phi.i ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !15 ; 5 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %__archive_rb_tree_reparent_nodes.exit36.i, label %bb.k

bb.k:                                             ; preds = %__archive_rb_tree_reparent_nodes.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.lcssa40.i, i64 16 ; 5 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !21 ; 2 uses
  %i.dc = and i64 %i.db, -4                       ; 2 uses
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = lshr i64 %i.db, 1
  %i.df = and i64 %i.de, 1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.cy, ptr %i.dg, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.lcssa.i ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !15
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !15
  store ptr %.lcssa40.i, ptr %i.dh, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 4 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !21
  %i.dl = and i64 %i.dk, 3
  %i.dm = or disjoint i64 %i.dl, %i.dc
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !21
  %i.dn = ptrtoint ptr %i.cy to i64
  %i.do = load i64, ptr %i.da, align 8, !tbaa !21
  %i.dp = and i64 %i.do, 3
  %i.dq = or i64 %i.dp, %i.dn                     ; 2 uses
  store i64 %i.dq, ptr %i.da, align 8, !tbaa !21
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !21 ; 2 uses
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = and i64 %i.ds, 3                        ; 2 uses
  %i.du = xor i64 %i.dt, %i.dr
  store i64 %i.du, ptr %i.dj, align 8, !tbaa !21
  %i.dv = load i64, ptr %i.da, align 8, !tbaa !21
  %i.dw = xor i64 %i.dv, %i.dt
  %i.dx = and i64 %i.dw, -3
  %masksel.i30.i = select i1 %.lcssa38.i, i64 0, i64 2
  %storemerge.i31.i = or disjoint i64 %i.dx, %masksel.i30.i
  store i64 %storemerge.i31.i, ptr %i.da, align 8, !tbaa !21
  %i.dy = load ptr, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %__archive_rb_tree_reparent_nodes.exit36.i, label %.sink.split.i32.i

.sink.split.i32.i:                                ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !21
  %i.ec = and i64 %i.eb, 1
  %masksel45.i34.i = select i1 %.lcssa38.i, i64 2, i64 0
  %i.ed = or disjoint i64 %masksel45.i34.i, %i.ec
  %.sink.i35.i = or disjoint i64 %i.ed, %.lcssa42.i
  store i64 %.sink.i35.i, ptr %i.ea, align 8, !tbaa !21
  br label %__archive_rb_tree_reparent_nodes.exit36.i

__archive_rb_tree_reparent_nodes.exit36.i:        ; preds = %.sink.split.i32.i, %bb.k, %__archive_rb_tree_reparent_nodes.exit.i
  %i.ee = load ptr, ptr %0, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.eh = and i64 %i.eg, -2
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !21
  br label %.critedge

.critedge50:                                      ; preds = %bb.c
  %4 = and i64 %i.j, -2
  store i64 %4, ptr %i.i, align 8, !tbaa !21
  %5 = zext nneg i32 %.038.lcssa to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.041.lcssa, i64 %5 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15 ; 2 uses
  store ptr %i.ej, ptr %1, align 8, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !15
  store ptr %1, ptr %i.ei, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.i, %bb.h, %bb.g, %__archive_rb_tree_reparent_nodes.exit36.i, %bb.d, %.critedge50
  %.2 = phi i32 [ 1, %bb.i ], [ 1, %bb.d ], [ 1, %.critedge50 ], [ 1, %__archive_rb_tree_reparent_nodes.exit36.i ], [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @__archive_rb_tree_remove_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %.val.pre = load ptr, ptr %1, align 8, !tbaa !15 ; 2 uses
  %i.a = icmp eq ptr %.val.pre, null              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 5 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.split23, label %.split

.split:                                           ; preds = %bb.c
  %i.i = lshr i64 %i.f, 1
  %i.j = and i64 %i.i, 1
  %i.k = and i64 %i.f, -4
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  store ptr null, ptr %i.m, align 8, !tbaa !15
  br label %__archive_rb_tree_prune_node.exit

.split23:                                         ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.n, %1
  %i.o = trunc i64 %i.f to i32
  %i.p = lshr exact i32 %i.o, 1
  %i.q = and i32 %i.p, 1                          ; 2 uses
  %i.r = and i64 %i.f, -4
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %.val.pre, ptr %i.u, align 8, !tbaa !15
  br i1 %.not, label %__archive_rb_tree_prune_node.exit, label %bb.d

bb.d:                                             ; preds = %.split23
  tail call fastcc void @__archive_rb_tree_removal_rebalance(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.s, i32 noundef %i.q)
  br label %__archive_rb_tree_prune_node.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = zext i1 %i.a to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = lshr i64 %i.w, 1
  %i.ae = and i64 %i.ad, 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ae
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !15
  store i64 %i.w, ptr %i.ac, align 8, !tbaa !21
  br label %__archive_rb_tree_prune_node.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 1                        ; 2 uses
  %i.al = xor i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.lr.ph.i._crit_edge, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.f
  %i.aq = zext nneg i32 %i.ak to i64
  br label %bb.g

.lr.ph.i._crit_edge:                              ; preds = %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !22
  %.not2835.i = icmp ne ptr %i.ar, %1
  tail call void @llvm.assume(i1 %.not2835.i)
  %i.as = and i64 %i.ah, -4
  %i.at = inttoptr i64 %i.as to ptr
  br label %__archive_rb_tree_iterate.exit

bb.g:                                             ; preds = %bb.g, %.preheader33.i
  %.2.i = phi ptr [ %i.av, %bb.g ], [ %i.ao, %.preheader33.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.2.i, i64 %i.aq
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15 ; 2 uses
  %.not.i27 = icmp eq ptr %i.av, null
  br i1 %.not.i27, label %__archive_rb_tree_iterate.exit, label %bb.g, !llvm.loop !0

__archive_rb_tree_iterate.exit:                   ; preds = %bb.g, %.lr.ph.i._crit_edge
  %.0.i = phi ptr [ %i.at, %.lr.ph.i._crit_edge ], [ %.2.i, %bb.g ] ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21 ; 4 uses
  %i.ay = lshr i64 %i.ax, 1
  %.lobit.i = and i64 %i.ay, 1                    ; 5 uses
  %i.az = trunc nuw nsw i64 %.lobit.i to i32
  %i.ba = xor i64 %.lobit.i, 1                    ; 5 uses
  %i.bb = and i64 %i.ax, -4
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bd = icmp eq ptr %.0.i, null
  %i.be = trunc i64 %i.ax to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = xor i32 %i.bf, 1
  %i.bh = select i1 %i.bd, i32 1, i32 %i.bg       ; 2 uses
  %i.bi = icmp eq ptr %1, %i.bc                   ; 3 uses
  %.lobit.pn.i = select i1 %i.bi, i64 %.lobit.i, i64 %i.ba
  %.060.in.i = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.lobit.pn.i
  %.060.i = load ptr, ptr %.060.in.i, align 8, !tbaa !15 ; 3 uses
  %i.bj = icmp eq ptr %.060.i, null
  br i1 %i.bj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %__archive_rb_tree_iterate.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.060.i, i64 16 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21 ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %.not.i28 = icmp eq i64 %i.bm, 0
  br i1 %.not.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = and i64 %i.bl, -2
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !21
  br i1 %i.bi, label %.thread71.i, label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.i
  %.sink.i = and i64 %i.ax, -2
  store i64 %.sink.i, ptr %i.bk, align 8, !tbaa !21
  br label %.thread.i

bb.j:                                             ; preds = %bb.h, %__archive_rb_tree_iterate.exit
  br i1 %i.bi, label %.thread71.i, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %.thread.sink.split.i
  %.070.i = phi i32 [ %i.bh, %bb.j ], [ 0, %.thread.sink.split.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.lobit.i
  store ptr %.060.i, ptr %i.bo, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ba
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !15
  %i.bs = ptrtoint ptr %.0.i to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !21
  %i.bv = and i64 %i.bu, 3
  %i.bw = or i64 %i.bv, %i.bs
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !21
  br label %.thread71.i

.thread71.i:                                      ; preds = %.thread.i, %bb.j, %bb.i
  %.069.i = phi i32 [ %.070.i, %.thread.i ], [ %i.bh, %bb.j ], [ 0, %bb.i ]
  %.061.i = phi i64 [ %.lobit.i, %.thread.i ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.059.i = phi ptr [ %i.bc, %.thread.i ], [ %.0.i, %bb.j ], [ %.0.i, %bb.i ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.061.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.061.i
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !15
  %i.ca = ptrtoint ptr %.0.i to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !21
  %i.cd = and i64 %i.cc, 3
  %i.ce = or i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !21
  %i.cf = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.cg = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ch = and i64 %i.cg, 3                        ; 2 uses
  %i.ci = and i64 %i.cf, -4
  %i.cj = or disjoint i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.aw, align 8, !tbaa !21
  %i.ck = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.cl = and i64 %i.ck, -4                       ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = or disjoint i64 %i.cl, %i.ch
  store i64 %i.cn, ptr %i.aw, align 8, !tbaa !21
  %i.co = lshr i64 %i.cg, 1
  %i.cp = and i64 %i.co, 1
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cp
  store ptr %.0.i, ptr %i.cq, align 8, !tbaa !15
  %.not67.i = icmp eq i32 %.069.i, 0
  br i1 %.not67.i, label %__archive_rb_tree_prune_node.exit, label %bb.k

bb.k:                                             ; preds = %.thread71.i
end_hunk_0
