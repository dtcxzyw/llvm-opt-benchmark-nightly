Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/circle?download=true
inline.NumInlined: 19
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %union.anon.0, ptr, ptr }
%union.anon.0 = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }

@Verbose = external local_unnamed_addr global i8, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"root = %s max steps to root = %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"twopi: use of weight=0 creates disconnected component.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Rank separation = \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%.03lf \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ranksep\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @circleLayout(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.anon, align 8               ; 15 uses
  %i.b = tail call i32 @agnnodes(ptr noundef %0) #13
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @agfstnode(ptr noundef %0) #13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @agnnodes(ptr noundef %0) #13
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = mul nsw i64 %i.j, %i.j                   ; 2 uses
  %i.l = tail call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, null
  br i1 %.not15.i, label %initLayout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.loopexit.i
  %.016.i = phi ptr [ %i.aj, %.loopexit.i ], [ %i.l, %bb.c ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.016.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.k, ptr %i.q, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store double 1.000000e+01, ptr %i.r, align 8, !tbaa !32
  %i.s = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.016.i) #13 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.s, null
  br i1 %.not28.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %bb.h
  %.02030.i.i = phi ptr [ %i.af, %bb.h ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %.02229.i.i = phi ptr [ %.1.i.i, %bb.h ], [ null, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.02030.i.i, align 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = icmp eq i32 %i.u, 3
  %i.w = select i1 %i.v, i64 56, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36   ; 2 uses
  %i.z = icmp eq ptr %i.y, %.016.i
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = icmp eq i32 %i.u, 2
  %i.ab = select i1 %i.aa, i64 56, i64 -8
  %i.ac = getelementptr inbounds i8, ptr %.02030.i.i, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.021.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ae = icmp eq ptr %.016.i, %.021.i.i
  br i1 %i.ae, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not26.i.i = icmp eq ptr %.02229.i.i, null
  br i1 %.not26.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not27.i.i = icmp eq ptr %.02229.i.i, %.021.i.i
  br i1 %.not27.i.i, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02229.i.i, %bb.e ], [ %.02229.i.i, %bb.g ], [ %.021.i.i, %bb.f ]
  %i.af = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.02030.i.i, ptr noundef nonnull %.016.i) #13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !43

.loopexit.i:                                      ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sink.i = phi i64 [ 0, %.lr.ph.i ], [ %i.k, %bb.g ], [ 0, %bb.h ]
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  store i64 %.sink.i, ptr %i.ai, align 8, !tbaa !38
  %i.aj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.016.i) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %initLayout.exit, label %.lr.ph.i, !llvm.loop !44

initLayout.exit:                                  ; preds = %.loopexit.i, %bb.c
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %findCenterNode.exit

bb.i:                                             ; preds = %initLayout.exit
  %i.ak = tail call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not21.i = icmp eq ptr %i.ak, null
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i25

._crit_edge.i:                                    ; preds = %bb.k, %bb.i
  %i.al = tail call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not2023.i = icmp eq ptr %i.al, null
  br i1 %.not2023.i, label %findCenterNode.exit, label %.lr.ph28.i

.lr.ph.i25:                                       ; preds = %bb.i, %bb.k
  %.01622.i = phi ptr [ %i.as, %bb.k ], [ %i.ak, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01622.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !38
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i25
  tail call fastcc void @setNStepsToLeaf(ptr noundef %0, ptr noundef nonnull %.01622.i, ptr noundef null)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i25
  %i.as = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01622.i) #13 ; 2 uses
  %.not.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i26, label %._crit_edge.i, label %.lr.ph.i25, !llvm.loop !45

.lr.ph28.i:                                       ; preds = %._crit_edge.i, %.lr.ph28.i
  %.026.i = phi ptr [ %i.aw, %.lr.ph28.i ], [ %i.al, %._crit_edge.i ] ; 3 uses
  %.01725.i = phi i64 [ %.1.i, %.lr.ph28.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.01824.i = phi ptr [ %.119.i, %.lr.ph28.i ], [ null, %._crit_edge.i ] ; 2 uses
  %i.at = icmp eq ptr %.01824.i, null             ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 152
  %.pre31.i = load ptr, ptr %.phi.trans.insert30.i, align 8, !tbaa !30
  %.pre32.i = load i64, ptr %.pre31.i, align 8, !tbaa !38 ; 3 uses
  %i.au = icmp ugt i64 %.pre32.i, %.01725.i
  %spec.select37.i = tail call i64 @llvm.umax.i64(i64 %.pre32.i, i64 %.01725.i)
  %i.av = select i1 %i.at, i1 true, i1 %i.au
  %.119.i = select i1 %i.av, ptr %.026.i, ptr %.01824.i ; 2 uses
  %.1.i = select i1 %i.at, i64 %.pre32.i, i64 %spec.select37.i
  %i.aw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.026.i) #13 ; 2 uses
  %.not20.i = icmp eq ptr %i.aw, null
  br i1 %.not20.i, label %findCenterNode.exit, label %.lr.ph28.i, !llvm.loop !46

findCenterNode.exit:                              ; preds = %.lr.ph28.i, %._crit_edge.i, %initLayout.exit
  %.022 = phi ptr [ %1, %initLayout.exit ], [ null, %._crit_edge.i ], [ %.119.i, %.lr.ph28.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bd = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef null) #13
  %.fr.i.i = freeze ptr %i.bd                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 40, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 10 uses
  store ptr %.022, ptr %i.be, align 8, !tbaa !60
  %i.bf = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 8) #13
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.bh = load ptr, ptr %2, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.val4347.i.i = load i64, ptr %i.bj, align 8, !tbaa !64
  %.not48.i.i = icmp eq i64 %.val4347.i.i, 0
  br i1 %.not48.i.i, label %setNStepsToCenter.exit.i, label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %findCenterNode.exit
  %.not42.i.i = icmp eq ptr %.fr.i.i, null
  br i1 %.not42.i.i, label %.lr.ph49.split.us.i.i, label %.lr.ph49.split.i.i

.lr.ph49.split.us.i.i:                            ; preds = %.lr.ph49.i.i, %.loopexit.us.i.i
  call void @gv_list_pop_front_(ptr noundef nonnull %2, ptr noundef nonnull %i.be, i64 noundef 8) #13
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !60 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !58
  %i.br = add i64 %i.bq, 1                        ; 2 uses
  %i.bs = call ptr @agfstedge(ptr noundef %0, ptr noundef %i.bk) #13 ; 2 uses
  %.not4144.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not4144.us.i.i, label %.loopexit.us.i.i, label %streq.exit.thread.us.us.i.i

.loopexit.us.i.i:                                 ; preds = %bb.o, %.lr.ph49.split.us.i.i
  %.val43.us.i.i = load i64, ptr %i.bj, align 8, !tbaa !64
  %.not.us.i.i = icmp eq i64 %.val43.us.i.i, 0
  br i1 %.not.us.i.i, label %setNStepsToCenter.exit.i, label %.lr.ph49.split.us.i.i, !llvm.loop !47

streq.exit.thread.us.us.i.i:                      ; preds = %.lr.ph49.split.us.i.i, %bb.o
  %.03545.us.us.i.i = phi ptr [ %i.cw, %bb.o ], [ %i.bs, %.lr.ph49.split.us.i.i ] ; 4 uses
  %i.bt = load i32, ptr %.03545.us.us.i.i, align 8
  %i.bu = and i32 %i.bt, 3                        ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 3
  %i.bw = select i1 %i.bv, i64 56, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %.03545.us.us.i.i, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bk
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %streq.exit.thread.us.us.i.i
  %i.ca = icmp eq i32 %i.bu, 2
  %i.cb = select i1 %i.ca, i64 56, i64 -8
  %i.cc = getelementptr inbounds i8, ptr %.03545.us.us.i.i, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %streq.exit.thread.us.us.i.i
  %.034.us.us.i.i = phi ptr [ %i.cd, %bb.l ], [ %i.by, %streq.exit.thread.us.us.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.034.us.us.i.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !58
  %i.ck = icmp ult i64 %i.br, %i.cj
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.br, ptr %i.ci, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.bk, ptr %i.cl, align 8, !tbaa !39
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 152
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !40
  store ptr %.034.us.us.i.i, ptr %i.be, align 8, !tbaa !60
  %i.cs = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 8) #13
  %i.ct = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.cu = load ptr, ptr %2, align 8, !tbaa !61
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cw = call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.03545.us.us.i.i, ptr noundef %i.bk) #13 ; 2 uses
  %.not41.us.us.i.i = icmp eq ptr %i.cw, null
  br i1 %.not41.us.us.i.i, label %.loopexit.us.i.i, label %streq.exit.thread.us.us.i.i, !llvm.loop !48

.loopexit.i.i:                                    ; preds = %bb.s, %.lr.ph49.split.i.i
  %.val43.i.i = load i64, ptr %i.bj, align 8, !tbaa !64
  %.not.i.i28 = icmp eq i64 %.val43.i.i, 0
  br i1 %.not.i.i28, label %setNStepsToCenter.exit.i, label %.lr.ph49.split.i.i, !llvm.loop !47

.lr.ph49.split.i.i:                               ; preds = %.lr.ph49.i.i, %.loopexit.i.i
  call void @gv_list_pop_front_(ptr noundef nonnull %2, ptr noundef nonnull %i.be, i64 noundef 8) #13
  %i.cx = load ptr, ptr %i.be, align 8, !tbaa !60 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 152
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !58
  %i.de = add i64 %i.dd, 1                        ; 2 uses
  %i.df = call ptr @agfstedge(ptr noundef %0, ptr noundef %i.cx) #13 ; 2 uses
  %.not4144.i.i = icmp eq ptr %i.df, null
  br i1 %.not4144.i.i, label %.loopexit.i.i, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph49.split.i.i, %bb.s
  %.03545.i.i = phi ptr [ %i.eo, %bb.s ], [ %i.df, %.lr.ph49.split.i.i ] ; 5 uses
  %i.dg = call ptr @agxget(ptr noundef nonnull %.03545.i.i, ptr noundef nonnull %.fr.i.i) #13 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1
  %.not.i.i.i = icmp eq i8 %i.dh, 48
  br i1 %.not.i.i.i, label %streq.exit.i.i, label %streq.exit.thread.i.i

streq.exit.i.i:                                   ; preds = %.lr.ph.i.i27
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.s, label %streq.exit.thread.i.i

streq.exit.thread.i.i:                            ; preds = %streq.exit.i.i, %.lr.ph.i.i27
  %i.dl = load i32, ptr %.03545.i.i, align 8
  %i.dm = and i32 %i.dl, 3                        ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 3
  %i.do = select i1 %i.dn, i64 56, i64 120
  %i.dp = getelementptr inbounds nuw i8, ptr %.03545.i.i, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !36 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cx
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %streq.exit.thread.i.i
  %i.ds = icmp eq i32 %i.dm, 2
  %i.dt = select i1 %i.ds, i64 56, i64 -8
  %i.du = getelementptr inbounds i8, ptr %.03545.i.i, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %streq.exit.thread.i.i
  %.034.i.i = phi ptr [ %i.dv, %bb.p ], [ %i.dq, %streq.exit.thread.i.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 152
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !30 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !58
  %i.ec = icmp ult i64 %i.de, %i.eb
  br i1 %i.ec, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.ea, align 8, !tbaa !58
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store ptr %i.cx, ptr %i.ed, align 8, !tbaa !39
  %i.ee = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 152
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !30
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !40
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !40
  store ptr %.034.i.i, ptr %i.be, align 8, !tbaa !60
  %i.ek = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 8) #13
  %i.el = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.em = load ptr, ptr %2, align 8, !tbaa !61
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.el, ptr %i.en, align 8, !tbaa !62
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %streq.exit.i.i
  %i.eo = call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.03545.i.i, ptr noundef %i.cx) #13 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.eo, null
  br i1 %.not41.i.i, label %.loopexit.i.i, label %.lr.ph.i.i27, !llvm.loop !48

setNStepsToCenter.exit.i:                         ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %findCenterNode.exit
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 8) #13
  call void @gv_list_free_(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.ep = call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not23.i = icmp eq ptr %i.ep, null
  br i1 %.not23.i, label %setParentNodes.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %setNStepsToCenter.exit.i, %bb.t
  %.01625.i = phi ptr [ %i.ex, %bb.t ], [ %i.ep, %setNStepsToCenter.exit.i ] ; 2 uses
  %.01724.i = phi i64 [ %spec.select.i, %bb.t ], [ 0, %setNStepsToCenter.exit.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.01625.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 152
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !58 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.bc
  br i1 %i.ew, label %setParentNodes.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i29
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 %.01724.i) ; 2 uses
  %i.ex = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01625.i) #13 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ex, null
  br i1 %.not.i30, label %setParentNodes.exit, label %.lr.ph.i29, !llvm.loop !49

setParentNodes.exit:                              ; preds = %.lr.ph.i29, %bb.t, %setNStepsToCenter.exit.i
  %spec.select21.i = phi i64 [ 0, %setNStepsToCenter.exit.i ], [ %spec.select.i, %bb.t ], [ -1, %.lr.ph.i29 ] ; 11 uses
  %i.ey = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not24 = icmp eq i8 %i.ey, 0
  br i1 %.not24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %setParentNodes.exit
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.fa = call ptr @agnameof(ptr noundef %.022) #13
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str, ptr noundef %i.fa, i64 noundef %spec.select21.i) #14 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %setParentNodes.exit
  %i.fc = icmp eq i64 %spec.select21.i, -1
  br i1 %i.fc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.1) #13
  br label %bb.ah

bb.x:                                             ; preds = %bb.v
  %i.fd = call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not21.i32 = icmp eq ptr %i.fd, null
  br i1 %.not21.i32, label %setSubtreeSize.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.x, %.loopexit.i33
  %.01022.i = phi ptr [ %i.fu, %.loopexit.i33 ], [ %i.fd, %bb.x ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.01022.i, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !30 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !40
  %.not11.i = icmp eq i64 %i.fj, 0
  br i1 %.not11.i, label %bb.y, label %.loopexit.i33

bb.y:                                             ; preds = %.lr.ph23.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !41
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !41
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !39 ; 2 uses
  %.not1219.i = icmp eq ptr %.018.i, null
  br i1 %.not1219.i, label %.loopexit.i33, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.y, %.lr.ph.i36
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i36 ], [ %.018.i, %bb.y ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 152
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !41
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !41
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !39 ; 2 uses
  %.not12.i = icmp eq ptr %.0.i, null
  br i1 %.not12.i, label %.loopexit.i33, label %.lr.ph.i36, !llvm.loop !50

.loopexit.i33:                                    ; preds = %.lr.ph.i36, %bb.y, %.lr.ph23.i
  %i.fu = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01022.i) #13 ; 2 uses
  %.not.i34 = icmp eq ptr %i.fu, null
  br i1 %.not.i34, label %setSubtreeSize.exit, label %.lr.ph23.i, !llvm.loop !51

setSubtreeSize.exit:                              ; preds = %.loopexit.i33, %bb.x
  %i.fv = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 152
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  store double f0x401921FB54442D18, ptr %i.fy, align 8, !tbaa !42
  call fastcc void @setChildSubtreeSpans(ptr noundef %0, ptr noundef %.022)
  %i.fz = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 152
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !30
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  store double 0.000000e+00, ptr %i.gc, align 8, !tbaa !32
  call fastcc void @setChildPositions(ptr noundef %0, ptr noundef %.022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gd = add nuw i64 %spec.select21.i, 1         ; 3 uses
  %mul.ov.i.i.i = icmp ugt i64 %spec.select21.i, 2305843009213693950
  br i1 %mul.ov.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %setSubtreeSize.exit
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.gf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.8, i64 noundef range(i64 1, 0) %i.gd, i64 noundef 8) #14 ; 0 uses
  call fastcc void @graphviz_exit() #15
  unreachable

bb.aa:                                            ; preds = %setSubtreeSize.exit
  %i.gg = call noalias ptr @calloc(i64 noundef range(i64 1, 0) %i.gd, i64 noundef 8) #16 ; 10 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ab, label %gv_calloc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.gj = shl nuw i64 %i.gd, 3
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.9, i64 noundef %i.gj) #14 ; 0 uses
  call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !72
  %i.gn = call ptr @agattr_text(ptr noundef %i.gm, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef null) #13
  %i.go = call ptr @late_string(ptr noundef %0, ptr noundef %i.gn, ptr noundef null) #13 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.go, null
  br i1 %.not.i.i37, label %.critedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %gv_calloc.exit.i.i
  %.not3538.i.i = icmp eq i64 %spec.select21.i, 0
  br i1 %.not3538.i.i, label %.critedge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader.i.i
  %i.gp = call double @strtod(ptr noundef nonnull %i.go, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.gq = fcmp ogt double %i.gp, 0.000000e+00
  br i1 %i.gq, label %.lr.ph.i42, label %.critedge.i.i

.loopexit.i.i43:                                  ; preds = %bb.ac
  %exitcond.not.i.i = icmp eq i64 %.02940.i27.i, %spec.select21.i
  br i1 %exitcond.not.i.i, label %getRankseps.exit.i, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %.loopexit.i.i43
  %i.gr = add nuw nsw i64 %.02940.i27.i, 1        ; 2 uses
  %i.gs = call double @strtod(ptr noundef nonnull %.132.i.i, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.gt = fcmp ogt double %i.gs, 0.000000e+00
  br i1 %i.gt, label %.lr.ph.i42, label %.critedge.i.i

.lr.ph.i42:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i44
  %i.gu = phi double [ %i.gs, %.lr.ph.i.i44 ], [ %i.gp, %.lr.ph.i.preheader.i ]
  %.02940.i27.i = phi i64 [ %i.gr, %.lr.ph.i.i44 ], [ 1, %.lr.ph.i.preheader.i ] ; 3 uses
  %.02741.i26.i = phi double [ %i.gw, %.lr.ph.i.i44 ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %i.gv = call nsz double @llvm.maxnum.f64(double %i.gu, double 2.000000e-02) ; 2 uses
  %i.gw = fadd double %i.gv, %.02741.i26.i        ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.02940.i27.i
  store double %i.gw, ptr %i.gx, align 8, !tbaa !73
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i.i, %.lr.ph.i42
  %.132.i.i = phi ptr [ %i.gy, %.lr.ph.i42 ], [ %i.ha, %.critedge2.i.i ] ; 3 uses
  %i.gz = load i8, ptr %.132.i.i, align 1, !tbaa !61
  switch i8 %i.gz, label %.loopexit.i.i43 [
    i8 9, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 11, label %.critedge2.i.i
    i8 12, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 32, label %.critedge2.i.i
    i8 58, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %.132.i.i, i64 1
  br label %bb.ac, !llvm.loop !52

.critedge.i.i:                                    ; preds = %.lr.ph.i.i44, %.lr.ph.i.preheader.i, %.preheader.i.i, %gv_calloc.exit.i.i
  %.130.i.i = phi i64 [ 1, %gv_calloc.exit.i.i ], [ 1, %.preheader.i.i ], [ 1, %.lr.ph.i.preheader.i ], [ %i.gr, %.lr.ph.i.i44 ] ; 5 uses
  %.128.i.i = phi double [ 0.000000e+00, %gv_calloc.exit.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ], [ %i.gw, %.lr.ph.i.i44 ] ; 2 uses
  %.1.i.i38 = phi double [ 1.000000e+00, %gv_calloc.exit.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ], [ %i.gv, %.lr.ph.i.i44 ] ; 5 uses
  %.not3649.i.i = icmp ugt i64 %.130.i.i, %spec.select21.i
  br i1 %.not3649.i.i, label %getRankseps.exit.i, label %.lr.ph52.i.i.preheader

.lr.ph52.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.hb = add nuw nsw i64 %spec.select21.i, 1
  %i.hc = sub nuw i64 %i.hb, %.130.i.i
  %i.hd = sub nuw i64 %spec.select21.i, %.130.i.i
  %xtraiter = and i64 %i.hc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.i.i.prol.loopexit, label %.lr.ph52.i.i.prol

.lr.ph52.i.i.prol:                                ; preds = %.lr.ph52.i.i.preheader, %.lr.ph52.i.i.prol
end_hunk_0
