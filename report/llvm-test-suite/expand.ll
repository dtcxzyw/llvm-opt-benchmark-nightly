Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/expand?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@use_random_order = external local_unnamed_addr global i32, align 4
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@debug = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [25 x i8] c"EXPAND: %s (covered %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0AEXPAND1:    \09%s\0A\00", align 1
@bit_count = external local_unnamed_addr global [256 x i32], align 16
@.str.2 = private unnamed_addr constant [38 x i8] c"ON-set and OFF-set are not orthogonal\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ESSEN_PARTS:\09RAISE=%s FREESET=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ESSEN_RAISING:\09RAISE=%s FREESET=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"MOST_FREQUENT:\09best=%d FREESET=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"SELECT_FEASIBLE: started with %d pfcc, ended with %d fcc\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"FEASIBLE:  \09RAISE=%s FREESET=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MINCOV:    \09RAISE=%s FREESET=%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @expand(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @use_random_order, align 4, !tbaa !4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ...) @random_order(ptr noundef %0) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ptr, ...) @mini_sort(ptr noundef %0, ptr noundef nonnull @ascend) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.073 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 14 uses
  %i.e = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.f = icmp slt i32 %i.e, 33
  %i.g = add nsw i32 %i.e, -1
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 536870908
  %i.j = add nuw nsw i32 %i.i, 8
  %narrow = select i1 %i.f, i32 8, i32 %i.j
  %i.k = zext nneg i32 %narrow to i64
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #11
  %i.m = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.l, i32 noundef %i.e) #10 ; 4 uses
  %i.n = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.o = icmp slt i32 %i.n, 33
  %i.p = add nsw i32 %i.n, -1
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 536870908
  %i.s = add nuw nsw i32 %i.r, 8
  %narrow98 = select i1 %i.o, i32 8, i32 %i.s
  %i.t = zext nneg i32 %narrow98 to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #11
  %i.v = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.u, i32 noundef %i.n) #10 ; 3 uses
  %i.w = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.x = icmp slt i32 %i.w, 33
  %i.y = add nsw i32 %i.w, -1
  %i.z = lshr i32 %i.y, 3
  %i.aa = and i32 %i.z, 536870908
  %i.ab = add nuw nsw i32 %i.aa, 8
  %narrow99 = select i1 %i.x, i32 8, i32 %i.ab
  %i.ac = zext nneg i32 %narrow99 to i64
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #11
  %i.ae = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ad, i32 noundef %i.w) #10 ; 5 uses
  %i.af = load i32, ptr @cube, align 8, !tbaa !8  ; 3 uses
  %i.ag = icmp slt i32 %i.af, 33
  %i.ah = add nsw i32 %i.af, -1
  %i.ai = lshr i32 %i.ah, 3
  %i.aj = and i32 %i.ai, 536870908
  %i.ak = add nuw nsw i32 %i.aj, 8
  %narrow100 = select i1 %i.ag, i32 8, i32 %i.ak
  %i.al = zext nneg i32 %narrow100 to i64
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #11
  %i.an = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.am, i32 noundef %i.af) #10 ; 3 uses
  %i.ao = load i32, ptr @cube, align 8, !tbaa !8  ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 33
  %i.aq = add nsw i32 %i.ao, -1
  %i.ar = lshr i32 %i.aq, 3
  %i.as = and i32 %i.ar, 536870908
  %i.at = add nuw nsw i32 %i.as, 8
  %narrow101 = select i1 %i.ap, i32 8, i32 %i.at
  %i.au = zext nneg i32 %narrow101 to i64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #11
  %i.aw = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.av, i32 noundef %i.ao) #10 ; 4 uses
  %.not85 = icmp ne i32 %2, 0
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  %or.cond115 = select i1 %.not85, i1 %i.ay, i1 false
  br i1 %or.cond115, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre119 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.az = phi i32 [ %i.ax, %.lr.ph.preheader ], [ %i.bh, %bb.f ]
  %i.ba = phi ptr [ %.pre119, %.lr.ph.preheader ], [ %i.bi, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %.not97 = icmp eq i32 %i.bc, 0
  br i1 %.not97, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bg = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.ae, ptr noundef %i.ae, ptr noundef %i.bf) #10 ; 0 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !14
  %.pre120 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.bh = phi i32 [ %i.az, %.lr.ph ], [ %.pre120, %bb.e ] ; 2 uses
  %i.bi = phi ptr [ %i.ba, %.lr.ph ], [ %.pre, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = sext i32 %i.bh to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.073, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.073, i64 12 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bp = load i32, ptr %.073, align 8, !tbaa !22
  %i.bq = mul nsw i32 %i.bp, %i.bo                ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %.idx = shl nuw nsw i64 %i.br, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %i.bt = icmp sgt i32 %i.bq, 0
  br i1 %i.bt, label %.lr.ph104, label %._crit_edge108.thread

.lr.ph104:                                        ; preds = %.loopexit, %.lr.ph104
  %.071103 = phi ptr [ %i.by, %.lr.ph104 ], [ %i.bm, %.loopexit ] ; 3 uses
  %i.bu = load i32, ptr %.071103, align 4, !tbaa !4
  %i.bv = and i32 %i.bu, -18433
  store i32 %i.bv, ptr %.071103, align 4, !tbaa !4
  %i.bw = load i32, ptr %.073, align 8, !tbaa !22 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %.071103, i64 %i.bx ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.bs
  br i1 %i.bz, label %.lr.ph104, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph104
  %.pre121 = load i32, ptr %i.bn, align 4, !tbaa !21
  %.pre124 = mul nsw i32 %i.bw, %.pre121          ; 2 uses
  %.pre125 = sext i32 %.pre124 to i64
  %.pre127 = shl nsw i64 %.pre125, 2
  %i.ca = icmp sgt i32 %.pre124, 0
  %i.cb = getelementptr inbounds i8, ptr %i.bm, i64 %.pre127
  br i1 %i.ca, label %.lr.ph107, label %._crit_edge108.thread

.lr.ph107:                                        ; preds = %._crit_edge, %bb.l
  %.172105 = phi ptr [ %i.cu, %bb.l ], [ %i.bm, %._crit_edge ] ; 10 uses
  %i.cc = load i32, ptr %.172105, align 4, !tbaa !4
  %i.cd = and i32 %i.cc, 34816
  %or.cond = icmp eq i32 %i.cd, 0
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph107
  call void @expand1(ptr noundef %1, ptr noundef nonnull %.073, ptr noundef %i.m, ptr noundef %i.v, ptr noundef %i.aw, ptr noundef %i.an, ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %.172105)
  %i.ce = load i32, ptr @debug, align 4, !tbaa !4
  %i.cf = and i32 %i.ce, 4
  %.not95 = icmp eq i32 %i.cf, 0
  br i1 %.not95, label %thread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = tail call ptr (ptr, ...) @pc1(ptr noundef nonnull %.172105) #10
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.cg, i32 noundef %i.ch) ; 0 uses
  br label %bb.i

thread-pre-split:                                 ; preds = %bb.g
  %.pr = load i32, ptr %i.a, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.h
  %i.cj = phi i32 [ %.pr, %thread-pre-split ], [ %i.ch, %bb.h ]
  %i.ck = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef nonnull %.172105, ptr noundef %i.m) #10 ; 0 uses
  %i.cl = load i32, ptr %.172105, align 4, !tbaa !4
  %i.cm = and i32 %i.cl, -34817
  %i.cn = or disjoint i32 %i.cm, 32768
  store i32 %i.cn, ptr %.172105, align 4, !tbaa !4
  %i.co = icmp eq i32 %i.cj, 0
  br i1 %i.co, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cp = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef nonnull %.172105, ptr noundef %i.aw) #10
  %.not96 = icmp eq i32 %i.cp, 0
  br i1 %.not96, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cq = load i32, ptr %.172105, align 4, !tbaa !4
  %i.cr = or i32 %i.cq, 16384
  store i32 %i.cr, ptr %.172105, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph107, %bb.k, %bb.j, %bb.i
  %i.cs = load i32, ptr %.073, align 8, !tbaa !22 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %.172105, i64 %i.ct ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.cb
  br i1 %i.cv, label %.lr.ph107, label %._crit_edge108

._crit_edge108.thread:                            ; preds = %._crit_edge, %.loopexit
  %i.cw = getelementptr inbounds nuw i8, ptr %.073, i64 16
  store i32 0, ptr %i.cw, align 8, !tbaa !23
  br label %._crit_edge113.thread

._crit_edge108:                                   ; preds = %bb.l
  %.pre122 = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %.pre123 = load i32, ptr %i.bn, align 4, !tbaa !21
  %.pre128 = mul nsw i32 %i.cs, %.pre123          ; 2 uses
  %.pre130 = sext i32 %.pre128 to i64
  %.pre132 = shl nsw i64 %.pre130, 2
  %i.cx = icmp sgt i32 %.pre128, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.073, i64 16 ; 3 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !23
  %i.cz = getelementptr inbounds i8, ptr %.pre122, i64 %.pre132 ; 2 uses
  br i1 %i.cx, label %.lr.ph112.outer, label %._crit_edge113.thread

.lr.ph112.outer:                                  ; preds = %._crit_edge108, %.thread
  %i.da = phi i1 [ false, %.thread ], [ true, %._crit_edge108 ]
  %.2109.ph = phi ptr [ %i.dn, %.thread ], [ %.pre122, %._crit_edge108 ]
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.outer, %bb.m
  %.2109 = phi ptr [ %i.di, %bb.m ], [ %.2109.ph, %.lr.ph112.outer ] ; 5 uses
  %i.db = load i32, ptr %.2109, align 4, !tbaa !4 ; 3 uses
  %i.dc = and i32 %i.db, 2048
  %.not92 = icmp eq i32 %i.dc, 0
  br i1 %.not92, label %bb.m, label %.thread

bb.m:                                             ; preds = %.lr.ph112
  %i.dd = or i32 %i.db, 8192
  store i32 %i.dd, ptr %.2109, align 4, !tbaa !4
  %i.de = load i32, ptr %i.cy, align 8, !tbaa !23
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.cy, align 8, !tbaa !23
  %i.dg = load i32, ptr %.073, align 8, !tbaa !22
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.2109, i64 %i.dh ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.cz
  br i1 %i.dj, label %.lr.ph112, label %._crit_edge113

.thread:                                          ; preds = %.lr.ph112
  %i.dk = and i32 %i.db, -8193
  store i32 %i.dk, ptr %.2109, align 4, !tbaa !4
  %i.dl = load i32, ptr %.073, align 8, !tbaa !22
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.2109, i64 %i.dm ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.cz
  br i1 %i.do, label %.lr.ph112.outer, label %._crit_edge113.thread148

._crit_edge113:                                   ; preds = %bb.m
  br i1 %i.da, label %._crit_edge113.thread, label %._crit_edge113.thread148

._crit_edge113.thread148:                         ; preds = %.thread, %._crit_edge113
  %i.dp = tail call ptr (ptr, ...) @sf_inactive(ptr noundef nonnull %.073) #10
  br label %._crit_edge113.thread

._crit_edge113.thread:                            ; preds = %._crit_edge108.thread, %._crit_edge108, %._crit_edge113.thread148, %._crit_edge113
  %.174 = phi ptr [ %i.dp, %._crit_edge113.thread148 ], [ %.073, %._crit_edge113 ], [ %.073, %._crit_edge108 ], [ %.073, %._crit_edge108.thread ]
  %.not87 = icmp eq ptr %i.m, null
  br i1 %.not87, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge113.thread
  tail call void @free(ptr noundef nonnull %i.m) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge113.thread
  %.not88 = icmp eq ptr %i.v, null
  br i1 %.not88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.v) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not89 = icmp eq ptr %i.ae, null
  br i1 %.not89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@elim_lowering:bb.a
  %i.r = load i32, ptr %.06896, align 4, !tbaa !4
  %i.s = and i32 %i.r, 8192
  %.not77 = icmp eq i32 %i.s, 0
  br i1 %.not77, label %.thread84, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !27 ; 4 uses
  %.not78 = icmp eq i32 %i.t, -1
  br i1 %.not78, label %.loopexit87, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.06896, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.u
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = and i32 %i.y, %i.w                       ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = or i32 %i.aa, %i.z
  %i.ac = xor i32 %i.ab, -1
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !28
  %i.ae = and i32 %i.ad, %i.ac
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %.preheader, label %.loopexit86

.preheader:                                       ; preds = %bb.d
  %i.af = icmp sgt i32 %i.t, 1
  br i1 %i.af, label %.lr.ph.preheader, label %.loopexit87

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.06896, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = and i32 %i.aj, %i.ah                    ; 2 uses
  %i.al = lshr i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak
  %i.an = and i32 %i.am, 1431655765
  %.not80 = icmp eq i32 %i.an, 1431655765
  br i1 %.not80, label %bb.e, label %.loopexit86

.loopexit87:                                      ; preds = %bb.e, %.preheader, %bb.c
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph95.preheader, label %.thread84

.lr.ph95.preheader:                               ; preds = %.loopexit87
  %i.ar = sext i32 %i.ao to i64
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.g
  %indvars.iv112 = phi i64 [ %i.ar, %.lr.ph95.preheader ], [ %indvars.iv.next113, %bb.g ] ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv112
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv112
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %.not8190 = icmp sgt i32 %i.ax, %i.av
  br i1 %.not8190, label %.loopexit86, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.lr.ph95
  %i.ay = sext i32 %i.ax to i64
  %i.az = add i32 %i.av, 1
  br label %.lr.ph92

bb.f:                                             ; preds = %.lr.ph92
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next109 to i32
  %exitcond111.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond111.not, label %.loopexit86, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %bb.f
  %indvars.iv108 = phi i64 [ %i.ay, %.lr.ph92.preheader ], [ %indvars.iv.next109, %bb.f ] ; 4 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.06896, i64 %indvars.iv108
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv108
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = and i32 %i.bd, %i.bb
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv108
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = and i32 %i.be, %i.bg
  %.not82 = icmp eq i32 %i.bh, 0
  br i1 %.not82, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph92
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %lftr.wideiv115 = trunc i64 %indvars.iv.next113 to i32
  %exitcond116.not = icmp eq i32 %i.ap, %lftr.wideiv115
  br i1 %exitcond116.not, label %.thread84, label %.lr.ph95

.loopexit86:                                      ; preds = %.lr.ph, %.lr.ph95, %bb.f, %bb.d
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !23
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.p, align 8, !tbaa !23
  %i.bk = load i32, ptr %.06896, align 4, !tbaa !4
  %i.bl = and i32 %i.bk, -8193
  store i32 %i.bl, ptr %.06896, align 4, !tbaa !4
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %.thread84

.thread84:                                        ; preds = %bb.g, %.loopexit87, %bb.b, %.loopexit86
  %i.bm = phi i32 [ %.pre, %.loopexit86 ], [ %i.q, %.loopexit87 ], [ %i.q, %bb.b ], [ %i.q, %bb.g ] ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.06896, i64 %i.bn ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.k
  br i1 %i.bp, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.thread84, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21
  %i.bu = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bt                ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %.idx104 = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 %.idx104
  %i.by = icmp sgt i32 %i.bv, 0
  br i1 %i.by, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph103, %bb.o
  %i.ca = phi i32 [ %i.bu, %.lr.ph103 ], [ %i.cs, %bb.o ] ; 2 uses
  %.169101 = phi ptr [ %i.br, %.lr.ph103 ], [ %i.cu, %bb.o ] ; 5 uses
  %i.cb = load i32, ptr %.169101, align 4, !tbaa !4 ; 2 uses
  %i.cc = and i32 %i.cb, 8192
  %.not74 = icmp eq i32 %i.cc, 0
  br i1 %.not74, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = and i32 %i.cb, 1023                     ; 2 uses
  %.not128 = icmp eq i32 %i.cd, 0
  %i.ce = sext i1 %.not128 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0 = phi i32 [ %i.cd, %bb.j ], [ %i.cm, %bb.l ] ; 4 uses
  %i.cf = zext nneg i32 %.0 to i64                ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.169101, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cf
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = xor i32 %i.cj, -1
  %i.cl = and i32 %i.ch, %i.ck
  %.not75 = icmp eq i32 %i.cl, 0
  br i1 %.not75, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = add nsw i32 %.0, -1
  %i.cn = icmp sgt i32 %.0, 1
  br i1 %i.cn, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi i32 [ %.0, %bb.k ], [ %i.ce, %bb.l ]
  %.not76 = icmp eq i32 %.1, 0
  br i1 %.not76, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = load i32, ptr %i.bz, align 8, !tbaa !23
  %i.cp = add nsw i32 %i.co, -1
  store i32 %i.cp, ptr %i.bz, align 8, !tbaa !23
  %i.cq = load i32, ptr %.169101, align 4, !tbaa !4
  %i.cr = and i32 %i.cq, -8193
  store i32 %i.cr, ptr %.169101, align 4, !tbaa !4
  %.pre117 = load i32, ptr %1, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.n
  %i.cs = phi i32 [ %i.ca, %bb.m ], [ %i.ca, %bb.i ], [ %.pre117, %bb.n ] ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %.169101, i64 %i.ct ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.bx
  br i1 %i.cv, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.h, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @most_frequent(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8   ; 5 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #11 ; 5 uses
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.a to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.d, i8 0, i64 %i.g, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.m = mul nsw i32 %i.l, %i.k                   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.idx = shl nsw i64 %i.n, 2
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 %.idx
  %i.p = icmp sgt i32 %i.m, 0
  br i1 %i.p, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %bb.b, %bb.d
  %i.q = phi i32 [ %i.t, %bb.d ], [ %i.l, %bb.b ]
  %.045 = phi ptr [ %i.v, %bb.d ], [ %i.i, %bb.b ] ; 3 uses
  %i.r = load i32, ptr %.045, align 4, !tbaa !4
  %i.s = and i32 %i.r, 8192
  %.not42 = icmp eq i32 %i.s, 0
  br i1 %.not42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph47
  tail call void (ptr, ptr, i32, ...) @set_adjcnt(ptr noundef nonnull %.045, ptr noundef %i.d, i32 noundef 1) #10
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph47, %bb.c
  %i.t = phi i32 [ %i.q, %.lr.ph47 ], [ %.pre, %bb.c ] ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.045, i64 %i.u ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.o
  br i1 %i.w, label %.lr.ph47, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %.pre56 = load i32, ptr @cube, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %._crit_edge
  %i.x = phi i32 [ %.pre56, %.loopexit.loopexit ], [ %i.a, %bb.b ], [ %i.a, %._crit_edge ] ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph52.preheader, label %._crit_edge53

.lr.ph52.preheader:                               ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.03150 = phi i32 [ -1, %.lr.ph52.preheader ], [ %.1, %bb.f ] ; 3 uses
  %.03249 = phi i32 [ -1, %.lr.ph52.preheader ], [ %.133, %bb.f ] ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.aa = lshr i64 %indvars.iv, 5
  %i.ab = and i64 %i.aa, 134217727
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = and i32 %i.z, 31
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.ae, %i.ag
  %.not41 = icmp eq i32 %i.ah, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph52
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %.03150
  %spec.select = select i1 %i.ak, i32 %i.z, i32 %.03249
  %spec.select43 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %.03150)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph52
  %.133 = phi i32 [ %.03249, %.lr.ph52 ], [ %spec.select, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.03150, %.lr.ph52 ], [ %spec.select43, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %.lr.ph52

._crit_edge53:                                    ; preds = %bb.f, %.loopexit
  %.032.lcssa = phi i32 [ -1, %.loopexit ], [ %.133, %bb.f ] ; 2 uses
  %.not39 = icmp eq ptr %i.d, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge53
  tail call void @free(ptr noundef nonnull %i.d) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge53
  %i.al = load i32, ptr @debug, align 4, !tbaa !4
  %i.am = and i32 %i.al, 8
  %.not40 = icmp eq i32 %i.am, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = tail call ptr (ptr, ...) @pc2(ptr noundef %1) #10
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.032.lcssa, ptr noundef %i.an) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i32 %.032.lcssa
}

declare void @set_adjcnt(...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @setup_BB_CC(ptr nofree noundef captures(none) initializes((16, 20)) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !22
  %i.g = mul nsw i32 %i.f, %i.b                   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.030 = phi ptr [ %i.o, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %i.k = load i32, ptr %.030, align 4, !tbaa !4
  %i.l = or i32 %i.k, 8192
  store i32 %i.l, ptr %.030, align 4, !tbaa !4
  %i.m = load i32, ptr %0, align 8, !tbaa !22
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.030, i64 %i.n ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.i
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %i.v = load i32, ptr %1, align 8, !tbaa !22
  %i.w = mul nsw i32 %i.v, %i.r                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %.idx34 = shl nsw i64 %i.x, 2
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %.idx34
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.lr.ph33, label %.loopexit

.lr.ph33:                                         ; preds = %bb.b, %bb.e
  %.131 = phi ptr [ %i.aj, %bb.e ], [ %i.u, %bb.b ] ; 4 uses
  %i.aa = load i32, ptr %.131, align 4, !tbaa !4  ; 2 uses
  %i.ab = and i32 %i.aa, 34816
  %or.cond = icmp eq i32 %i.ab, 0
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph33
  %i.ac = load i32, ptr %i.s, align 8, !tbaa !23
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.s, align 8, !tbaa !23
  %i.ae = load i32, ptr %.131, align 4, !tbaa !4
  %i.af = and i32 %i.ae, -8193
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph33
  %i.ag = or i32 %i.aa, 8192
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi i32 [ %i.ag, %bb.d ], [ %i.af, %bb.c ]
  store i32 %storemerge, ptr %.131, align 4, !tbaa !4
  %i.ah = load i32, ptr %1, align 8, !tbaa !22
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.131, i64 %i.ai ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %i.y
  br i1 %i.ak, label %.lr.ph33, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @select_feasible(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #11 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = load i32, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nsw i64 %i.l, 2
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0126 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ] ; 3 uses
  %.0110125 = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %bb.d ] ; 3 uses
  %i.p = load i32, ptr %.0110125, align 4, !tbaa !4
  %i.q = and i32 %i.p, 8192
  %.not121 = icmp eq i32 %i.q, 0
  br i1 %.not121, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %.0126, 1
  %i.s = sext i32 %.0126 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.s
  store ptr %.0110125, ptr %i.t, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.r, %bb.c ], [ %.0126, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %.0110125, i64 %i.o ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.m
  br i1 %i.v, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ] ; 5 uses
  %i.w = load i32, ptr %i.a, align 8, !tbaa !23
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #11 ; 9 uses
  %i.aa = load i32, ptr @cube, align 8, !tbaa !8
  %i.ab = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %.0.lcssa, i32 noundef %i.aa) #10 ; 3 uses
  %i.ac = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ac, label %.lr.ph129, label %.preheader124.preheader

.lr.ph129:                                        ; preds = %._crit_edge
end_hunk_1
begin_hunk_2_@feasibly_covered:bb.a
._crit_edge106:                                   ; preds = %._crit_edge99, %.thread, %bb.a
  %.064 = phi i32 [ 1, %bb.a ], [ 1, %.thread ], [ 0, %._crit_edge99 ]
  ret i32 %.064
}

; Function Attrs: nounwind uwtable
define dso_local void @mincov(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = load i32, ptr @cube, align 8, !tbaa !8
  %i.f = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.d, i32 noundef %i.e) #10 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.m, 2
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %.idx
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.r = phi i32 [ %i.k, %.lr.ph ], [ %i.ae, %bb.d ]
  %.089 = phi ptr [ %i.h, %.lr.ph ], [ %i.ag, %bb.d ] ; 3 uses
  %i.s = load i32, ptr %.089, align 4, !tbaa !4
  %i.t = and i32 %i.s, 8192
  %.not66 = icmp eq i32 %i.t, 0
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.v = load i32, ptr %i.f, align 8, !tbaa !22
  %i.w = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.q, align 4, !tbaa !21
  %i.y = mul nsw i32 %i.w, %i.v
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.ac = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.aa, ptr noundef %i.ab) #10
  %i.ad = tail call ptr (ptr, ptr, ptr, ...) @force_lower(ptr noundef %i.ac, ptr noundef nonnull %.089, ptr noundef %1) #10 ; 0 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ae = phi i32 [ %i.r, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.089, i64 %i.af ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.n
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.am = load i32, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.al                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.idx100 = shl nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %.idx100 ; 6 uses
  %i.aq = icmp sgt i32 %i.an, 0
  %.pre106 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 7 uses
  br i1 %i.aq, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %._crit_edge
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.as = icmp slt i32 %.pre106, %i.ar
  br i1 %i.as, label %.lr.ph98.split, label %.lr.ph98.split.us.preheader

.lr.ph98.split.us.preheader:                      ; preds = %.lr.ph98
  %i.at = sext i32 %i.am to i64                   ; 5 uses
  br label %bb.e

.lr.ph98.split.us:                                ; preds = %bb.e
  %i.au = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.at ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.ap
  br i1 %i.av, label %.lr.ph98.split.us.1, label %._crit_edge99

.lr.ph98.split.us.1:                              ; preds = %.lr.ph98.split.us
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.ap
  br i1 %i.ax, label %.lr.ph98.split.us.2, label %._crit_edge99

.lr.ph98.split.us.2:                              ; preds = %.lr.ph98.split.us.1
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.ap
  br i1 %i.az, label %.lr.ph98.split.us.3, label %._crit_edge99

.lr.ph98.split.us.3:                              ; preds = %.lr.ph98.split.us.2
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.at ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.ap
  br i1 %i.bb, label %.lr.ph98.split.us.4, label %._crit_edge99

.lr.ph98.split.us.4:                              ; preds = %.lr.ph98.split.us.3
  %i.bc = add nuw nsw i32 %.05895.us128, 5        ; 2 uses
  %exitcond.4 = icmp eq i32 %i.bc, 500
  br i1 %exitcond.4, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph98.split.us.4, %.lr.ph98.split.us.preheader
  %.05895.us128 = phi i32 [ 0, %.lr.ph98.split.us.preheader ], [ %i.bc, %.lr.ph98.split.us.4 ]
  %.196.us127 = phi ptr [ %i.aj, %.lr.ph98.split.us.preheader ], [ %i.ba, %.lr.ph98.split.us.4 ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %.196.us127, i64 %i.at ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.ap
  br i1 %i.be, label %.lr.ph98.split.us, label %._crit_edge99

.lr.ph98.split:                                   ; preds = %.lr.ph98, %bb.h
  %i.bf = phi i32 [ %i.bt, %bb.h ], [ %i.ar, %.lr.ph98 ] ; 2 uses
  %.196 = phi ptr [ %i.by, %bb.h ], [ %i.aj, %.lr.ph98 ] ; 2 uses
  %.05895 = phi i32 [ %i.bu, %bb.h ], [ 0, %.lr.ph98 ]
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.lr.ph98.split
  %i.bi = sext i32 %i.bg to i64
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph93.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.05990 = phi i32 [ 1, %.lr.ph93.preheader ], [ %.160, %bb.g ] ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !15
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bm = tail call i32 (ptr, ptr, ...) @set_dist(ptr noundef %.196, ptr noundef %i.bl) #10 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph93
  %i.bo = mul nsw i32 %i.bm, %.05990              ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 500
  br i1 %i.bp, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph93, %bb.f
  %.160 = phi i32 [ %i.bo, %bb.f ], [ %.05990, %.lr.ph93 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.g, %.lr.ph98.split
  %i.bt = phi i32 [ %i.bf, %.lr.ph98.split ], [ %i.bq, %bb.g ]
  %.059.lcssa = phi i32 [ 1, %.lr.ph98.split ], [ %.160, %bb.g ]
  %i.bu = add nuw nsw i32 %.059.lcssa, %.05895    ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 500
  br i1 %i.bv, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge94
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !22
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %.196, i64 %i.bx ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.ap
  br i1 %i.bz, label %.lr.ph98.split, label %._crit_edge99.loopexit, !llvm.loop !43

._crit_edge99.loopexit:                           ; preds = %bb.h
  %.pre105 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %bb.e, %.lr.ph98.split.us, %.lr.ph98.split.us.1, %.lr.ph98.split.us.2, %.lr.ph98.split.us.3, %._crit_edge99.loopexit, %._crit_edge
  %i.ca = phi i32 [ %.pre106, %._crit_edge ], [ %.pre105, %._crit_edge99.loopexit ], [ %.pre106, %.lr.ph98.split.us.3 ], [ %.pre106, %.lr.ph98.split.us.2 ], [ %.pre106, %.lr.ph98.split.us.1 ], [ %.pre106, %.lr.ph98.split.us ], [ %.pre106, %bb.e ]
  %i.cb = tail call ptr (ptr, i32, ...) @unravel(ptr noundef nonnull %i.f, i32 noundef %i.ca) #10 ; 2 uses
  %i.cc = tail call ptr (ptr, ...) @do_sm_minimum_cover(ptr noundef %i.cb) #10 ; 3 uses
  %i.cd = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.b, ptr noundef %2, ptr noundef %i.cc) #10
  %i.ce = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %1, ptr noundef %1, ptr noundef %i.cd) #10 ; 0 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.cg = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %2, ptr noundef %i.cf) #10 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.ch = load i32, ptr @debug, align 4, !tbaa !4
  %i.ci = and i32 %i.ch, 8
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge99
  %i.cj = tail call ptr (ptr, ...) @pc1(ptr noundef %1) #10
  %i.ck = tail call ptr (ptr, ...) @pc2(ptr noundef %2) #10
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.cj, ptr noundef %i.ck) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge99
  tail call void (ptr, ...) @sf_free(ptr noundef %i.cb) #10
  %.not65 = icmp eq ptr %i.cc, null
  br i1 %.not65, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.cc) #10
  br label %bb.v

.loopexit:                                        ; preds = %.lr.ph98.split.us.4, %._crit_edge94, %bb.f
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.f) #10
  %i.cm = load i32, ptr @cube, align 8, !tbaa !8  ; 4 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 2                    ; 2 uses
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.co) #11 ; 4 uses
  %i.cq = icmp sgt i32 %i.cm, 0
  br i1 %i.cq, label %.lr.ph52.preheader.i, label %._crit_edge53.i

.lr.ph52.preheader.i:                             ; preds = %.loopexit
  %i.cr = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.cs, i1 false), !tbaa !4
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.m, %.lr.ph52.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %.03150.i = phi i32 [ -1, %.lr.ph52.preheader.i ], [ %.1.i, %bb.m ] ; 3 uses
  %.03249.i = phi i32 [ -1, %.lr.ph52.preheader.i ], [ %.133.i, %bb.m ] ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cu = lshr i64 %indvars.iv.i, 5
  %i.cv = and i64 %i.cu, 134217727
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = and i32 %i.ct, 31
  %i.da = shl nuw i32 1, %i.cz
  %i.db = and i32 %i.cy, %i.da
  %.not41.i = icmp eq i32 %i.db, 0
  br i1 %.not41.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph52.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %i.de = icmp sgt i32 %i.dd, %.03150.i
  %spec.select.i = select i1 %i.de, i32 %i.ct, i32 %.03249.i
  %spec.select43.i = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 %.03150.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph52.i
  %.133.i = phi i32 [ %.03249.i, %.lr.ph52.i ], [ %spec.select.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %.03150.i, %.lr.ph52.i ], [ %spec.select43.i, %bb.l ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cr
  br i1 %exitcond.not.i, label %._crit_edge53.i, label %.lr.ph52.i

._crit_edge53.i:                                  ; preds = %bb.m, %.loopexit
  %.032.lcssa.i = phi i32 [ -1, %.loopexit ], [ %.133.i, %bb.m ] ; 2 uses
  %.not39.i = icmp eq ptr %i.cp, null
  br i1 %.not39.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge53.i
  tail call void @free(ptr noundef nonnull %i.cp) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge53.i
  %i.df = load i32, ptr @debug, align 4, !tbaa !4
  %i.dg = and i32 %i.df, 8
  %.not40.i = icmp eq i32 %i.dg, 0
  br i1 %.not40.i, label %most_frequent.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = tail call ptr (ptr, ...) @pc2(ptr noundef %2) #10
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.032.lcssa.i, ptr noundef %i.dh) ; 0 uses
  %.pre107 = load i32, ptr @cube, align 8, !tbaa !8 ; 2 uses
  %.pre108 = sext i32 %.pre107 to i64
  %.pre109 = shl nsw i64 %.pre108, 2
  br label %most_frequent.exit

most_frequent.exit:                               ; preds = %bb.o, %bb.p
  %.pre-phi110 = phi i64 [ %i.co, %bb.o ], [ %.pre109, %bb.p ]
  %i.dj = phi i32 [ %i.cm, %bb.o ], [ %.pre107, %bb.p ] ; 2 uses
  %i.dk = and i32 %.032.lcssa.i, 31
  %i.dl = shl nuw i32 1, %i.dk
  %i.dm = tail call noalias ptr @malloc(i64 noundef %.pre-phi110) #11 ; 4 uses
  %i.dn = icmp sgt i32 %i.dj, 0
  br i1 %i.dn, label %.lr.ph52.preheader.i72, label %._crit_edge53.i68

.lr.ph52.preheader.i72:                           ; preds = %most_frequent.exit
  %i.do = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dp = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dm, i8 0, i64 %i.dp, i1 false), !tbaa !4
  br label %.lr.ph52.i74

.lr.ph52.i74:                                     ; preds = %bb.r, %.lr.ph52.preheader.i72
  %indvars.iv.i75 = phi i64 [ 0, %.lr.ph52.preheader.i72 ], [ %indvars.iv.next.i83, %bb.r ] ; 4 uses
  %.03150.i76 = phi i32 [ -1, %.lr.ph52.preheader.i72 ], [ %.1.i82, %bb.r ] ; 3 uses
  %.03249.i77 = phi i32 [ -1, %.lr.ph52.preheader.i72 ], [ %.133.i81, %bb.r ] ; 2 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.i75 to i32 ; 2 uses
  %i.dr = lshr i64 %indvars.iv.i75, 5
  %i.ds = and i64 %i.dr, 134217727
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = and i32 %i.dq, 31
  %i.dx = shl nuw i32 1, %i.dw
  %i.dy = and i32 %i.dv, %i.dx
  %.not41.i78 = icmp eq i32 %i.dy, 0
  br i1 %.not41.i78, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph52.i74
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i75
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, %.03150.i76
  %spec.select.i79 = select i1 %i.eb, i32 %i.dq, i32 %.03249.i77
  %spec.select43.i80 = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 %.03150.i76)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph52.i74
  %.133.i81 = phi i32 [ %.03249.i77, %.lr.ph52.i74 ], [ %spec.select.i79, %bb.q ] ; 2 uses
  %.1.i82 = phi i32 [ %.03150.i76, %.lr.ph52.i74 ], [ %spec.select43.i80, %bb.q ]
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %indvars.iv.next.i83, %i.do
  br i1 %exitcond.not.i84, label %._crit_edge53.i68, label %.lr.ph52.i74

._crit_edge53.i68:                                ; preds = %bb.r, %most_frequent.exit
  %.032.lcssa.i69 = phi i32 [ -1, %most_frequent.exit ], [ %.133.i81, %bb.r ] ; 2 uses
  %.not39.i70 = icmp eq ptr %i.dm, null
  br i1 %.not39.i70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge53.i68
  tail call void @free(ptr noundef nonnull %i.dm) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge53.i68
  %i.ec = load i32, ptr @debug, align 4, !tbaa !4
  %i.ed = and i32 %i.ec, 8
  %.not40.i71 = icmp eq i32 %i.ed, 0
  br i1 %.not40.i71, label %most_frequent.exit86, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = tail call ptr (ptr, ...) @pc2(ptr noundef %2) #10
  %i.ef = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.032.lcssa.i69, ptr noundef %i.ee) ; 0 uses
  br label %most_frequent.exit86

most_frequent.exit86:                             ; preds = %bb.t, %bb.u
  %i.eg = ashr i32 %.032.lcssa.i69, 5
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr %1, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 4      ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = or i32 %i.ek, %i.dl
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !4
  %i.em = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %2, ptr noundef %2, ptr noundef %1) #10 ; 0 uses
  tail call void @essen_parts(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %bb.k, %most_frequent.exit86
  ret void
}

declare ptr @unravel(...) local_unnamed_addr #2

declare ptr @do_sm_minimum_cover(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @find_all_primes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #10 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = load i32, ptr %i.e, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !21
  %i.l = mul nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m ; 3 uses
  %i.o = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.n, ptr noundef %1) #10 ; 0 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !4
  %i.q = or i32 %i.p, 32768
  store i32 %i.q, ptr %i.n, align 4, !tbaa !4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.r = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.d) #10 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21
  %i.w = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %.idx = shl nsw i64 %i.y, 2
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %.idx
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.ad = phi i32 [ %i.w, %.lr.ph ], [ %i.aq, %bb.f ]
  %.05961 = phi ptr [ %i.t, %.lr.ph ], [ %i.as, %bb.f ] ; 3 uses
  %i.ae = load i32, ptr %.05961, align 4, !tbaa !4
  %i.af = and i32 %i.ae, 8192
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !22
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !21 ; 2 uses
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !21
  %i.ak = mul nsw i32 %i.ai, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.ao = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.am, ptr noundef %i.an) #10
  %i.ap = tail call ptr (ptr, ptr, ptr, ...) @force_lower(ptr noundef %i.ao, ptr noundef nonnull %.05961, ptr noundef %1) #10 ; 0 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aq = phi i32 [ %i.ad, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.05961, i64 %i.ar ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.z
  br i1 %i.at, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29
  %i.av = tail call ptr (ptr, i32, ...) @unravel(ptr noundef %i.r, i32 noundef %i.au) #10
  %i.aw = tail call ptr (ptr, ...) @sf_rev_contain(ptr noundef %i.av) #10 ; 2 uses
  %i.ax = tail call ptr (ptr, ...) @exact_minimum_cover(ptr noundef %i.aw) #10 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !22
  %i.bd = mul nsw i32 %i.bc, %i.bb                ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %.idx66 = shl nsw i64 %i.be, 2
  %i.bf = getelementptr inbounds i8, ptr %i.az, i64 %.idx66
  %i.bg = icmp sgt i32 %i.bd, 0
  br i1 %i.bg, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %._crit_edge
  %scevgep76 = getelementptr i8, ptr %1, i64 4
  %scevgep87 = getelementptr i8, ptr %2, i64 4
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.loopexit
  %.162 = phi ptr [ %i.dq, %.loopexit ], [ %i.az, %.lr.ph64.preheader ] ; 14 uses
  %i.bh = load i32, ptr %2, align 4, !tbaa !4     ; 2 uses
  %i.bi = and i32 %i.bh, 1023
  %i.bj = load i32, ptr %.162, align 4, !tbaa !4
  %i.bk = and i32 %i.bj, -1024
  %i.bl = or disjoint i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %.162, align 4, !tbaa !4
  %i.bm = and i32 %i.bh, 1023                     ; 3 uses
  %i.bn = zext nneg i32 %i.bm to i64              ; 6 uses
  %i.bo = icmp ne i32 %i.bm, 0
  %.neg = sext i1 %i.bo to i64
  %i.bp = add nuw nsw i64 %i.bn, 1
  %i.bq = add nsw i64 %i.bp, %.neg                ; 3 uses
  %min.iters.check93 = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check93, label %scalar.ph92.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph64
  %.not107 = icmp eq i32 %i.bm, 0
  %i.br = select i1 %.not107, i64 0, i64 4        ; 2 uses
  %scevgep83 = getelementptr i8, ptr %.162, i64 %i.br
  %scevgep84 = getelementptr i8, ptr %.162, i64 4
  %i.bs = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.bs
  %scevgep86 = getelementptr i8, ptr %2, i64 %i.br
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.bs
  %bound089 = icmp ult ptr %scevgep83, %scevgep88
  %bound190 = icmp ult ptr %scevgep86, %scevgep85
  %found.conflict91 = and i1 %bound089, %bound190
  br i1 %found.conflict91, label %scalar.ph92.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck81
  %n.vec95 = and i64 %i.bq, -8                    ; 3 uses
  %i.bt = sub nsw i64 %i.bn, %n.vec95
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %i.bu = sub i64 %i.bn, %index97                 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -28
  %wide.load98 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !4, !alias.scope !45
  %wide.load99 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !4, !alias.scope !45
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.162, i64 %i.bu ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -28 ; 2 uses
  %wide.load100 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !4, !alias.scope !48, !noalias !45
  %wide.load101 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !4, !alias.scope !48, !noalias !45
  %i.cb = xor <4 x i32> %wide.load100, splat (i32 -1)
  %i.cc = xor <4 x i32> %wide.load101, splat (i32 -1)
  %i.cd = and <4 x i32> %wide.load98, %i.cb
  %i.ce = and <4 x i32> %wide.load99, %i.cc
  store <4 x i32> %i.cd, ptr %i.bz, align 4, !tbaa !4, !alias.scope !48, !noalias !45
  store <4 x i32> %i.ce, ptr %i.ca, align 4, !tbaa !4, !alias.scope !48, !noalias !45
  %index.next102 = add nuw i64 %index97, 8        ; 2 uses
  %i.cf = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.cf, label %middle.block103, label %vector.body96, !llvm.loop !50

middle.block103:                                  ; preds = %vector.body96
  %cmp.n104 = icmp eq i64 %i.bq, %n.vec95
  br i1 %cmp.n104, label %.loopexit106, label %scalar.ph92.preheader

scalar.ph92.preheader:                            ; preds = %vector.memcheck81, %.lr.ph64, %middle.block103
  %indvars.iv.ph = phi i64 [ %i.bn, %vector.memcheck81 ], [ %i.bn, %.lr.ph64 ], [ %i.bt, %middle.block103 ]
  br label %scalar.ph92

scalar.ph92:                                      ; preds = %scalar.ph92.preheader, %scalar.ph92
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph92 ], [ %indvars.iv.ph, %scalar.ph92.preheader ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.162, i64 %indvars.iv ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = xor i32 %i.cj, -1
  %i.cl = and i32 %i.ch, %i.ck
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cm = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cm, label %scalar.ph92, label %.loopexit106, !llvm.loop !51

.loopexit106:                                     ; preds = %scalar.ph92, %middle.block103
  %i.cn = load i32, ptr %.162, align 4, !tbaa !4
  %i.co = and i32 %i.cn, 1023                     ; 3 uses
  %i.cp = zext nneg i32 %i.co to i64              ; 6 uses
  %i.cq = icmp ne i32 %i.co, 0
  %.neg108 = sext i1 %i.cq to i64
  %i.cr = add nuw nsw i64 %i.cp, 1
  %i.cs = add nsw i64 %i.cr, %.neg108             ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit106
  %.not109 = icmp eq i32 %i.co, 0
  %i.ct = select i1 %.not109, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %.162, i64 %i.ct
  %scevgep73 = getelementptr i8, ptr %.162, i64 4
  %i.cu = shl nuw nsw i64 %i.cp, 2                ; 2 uses
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.cu
  %scevgep75 = getelementptr i8, ptr %1, i64 %i.ct
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.cu
  %bound0 = icmp ult ptr %scevgep, %scevgep77
  %bound1 = icmp ult ptr %scevgep75, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %i.cv = sub nsw i64 %i.cp, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = sub i64 %i.cp, %index                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.162, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -12 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cy, align 4, !tbaa !4, !alias.scope !52, !noalias !55
  %wide.load78 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !4, !alias.scope !52, !noalias !55
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -12
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -28
  %wide.load79 = load <4 x i32>, ptr %i.db, align 4, !tbaa !4, !alias.scope !55
  %wide.load80 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !4, !alias.scope !55
  %i.dd = or <4 x i32> %wide.load79, %wide.load
  %i.de = or <4 x i32> %wide.load80, %wide.load78
  store <4 x i32> %i.dd, ptr %i.cy, align 4, !tbaa !4, !alias.scope !52, !noalias !55
  store <4 x i32> %i.de, ptr %i.cz, align 4, !tbaa !4, !alias.scope !52, !noalias !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.loopexit106, %middle.block
  %indvars.iv68.ph = phi i64 [ %i.cp, %vector.memcheck ], [ %i.cp, %.loopexit106 ], [ %i.cv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %scalar.ph ], [ %indvars.iv68.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.162, i64 %indvars.iv68 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv68
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = or i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1
  %i.dl = icmp samesign ugt i64 %indvars.iv68, 1
  br i1 %i.dl, label %scalar.ph, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.dm = load i32, ptr %.162, align 4, !tbaa !4
  %i.dn = or i32 %i.dm, 32768
  store i32 %i.dn, ptr %.162, align 4, !tbaa !4
  %i.do = load i32, ptr %i.ax, align 8, !tbaa !22
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.162, i64 %i.dp ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.bf
  br i1 %i.dr, label %.lr.ph64, label %._crit_edge65

._crit_edge65:                                    ; preds = %.loopexit, %._crit_edge
  tail call void (ptr, ...) @sf_free(ptr noundef %i.aw) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge65, %bb.b
  %.058 = phi ptr [ %i.e, %bb.b ], [ %i.ax, %._crit_edge65 ]
  ret ptr %.058
}

declare ptr @sf_rev_contain(...) local_unnamed_addr #2

declare ptr @exact_minimum_cover(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @all_primes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.b = icmp slt i32 %i.a, 33
  %i.c = add nsw i32 %i.a, -1
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 536870908
  %i.f = add nuw nsw i32 %i.e, 8
  %narrow = select i1 %i.b, i32 8, i32 %i.f
  %i.g = zext nneg i32 %narrow to i64
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #11
  %i.i = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.h, i32 noundef %i.a) #10 ; 5 uses
  %i.j = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 536870908
  %i.o = add nuw nsw i32 %i.n, 8
  %narrow37 = select i1 %i.k, i32 8, i32 %i.o
  %i.p = zext nneg i32 %narrow37 to i64
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #11
  %i.r = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.q, i32 noundef %i.j) #10 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = load i32, ptr @cube, align 8, !tbaa !8
  %i.v = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.t, i32 noundef %i.u) #10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 2 uses
  %i.y = load i32, ptr %i.s, align 4, !tbaa !21
  %i.z = load i32, ptr %0, align 8, !tbaa !22
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx = shl nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %.idx
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.039 = phi ptr [ %i.v, %.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %.03038 = phi ptr [ %i.x, %.lr.ph ], [ %i.be, %bb.e ] ; 4 uses
  %i.ah = load i32, ptr %.03038, align 4, !tbaa !4
  %i.ai = and i32 %i.ah, 32768
  %.not36 = icmp eq i32 %i.ai, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.039, ptr noundef nonnull %.03038) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.r, ptr noundef nonnull %.03038) #10 ; 0 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !24
  %i.am = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.i, ptr noundef %i.al, ptr noundef %i.r) #10 ; 0 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !21 ; 2 uses
  store i32 %i.an, ptr %i.af, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.ap = load i32, ptr %1, align 8, !tbaa !22
  %i.aq = mul nsw i32 %i.ap, %i.an                ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %.idx.i = shl nuw nsw i64 %i.ar, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %i.at = icmp sgt i32 %i.aq, 0
  br i1 %i.at, label %.lr.ph.i, label %setup_BB_CC.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.030.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.au = load i32, ptr %.030.i, align 4, !tbaa !4
  %i.av = or i32 %i.au, 8192
  store i32 %i.av, ptr %.030.i, align 4, !tbaa !4
  %i.aw = load i32, ptr %1, align 8, !tbaa !22
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.030.i, i64 %i.ax ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.as
  br i1 %i.az, label %.lr.ph.i, label %setup_BB_CC.exit

setup_BB_CC.exit:                                 ; preds = %.lr.ph.i, %bb.d
  tail call void @essen_parts(ptr noundef nonnull %1, ptr noundef null, ptr noundef %i.r, ptr noundef %i.i)
  %i.ba = tail call ptr @find_all_primes(ptr noundef nonnull %1, ptr noundef %i.r, ptr noundef %i.i)
  %i.bb = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.039, ptr noundef %i.ba) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %setup_BB_CC.exit
  %.1 = phi ptr [ %i.aj, %bb.c ], [ %i.bb, %setup_BB_CC.exit ] ; 2 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !22
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.03038, i64 %i.bd ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.ac
  br i1 %i.bf, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %i.v, %bb.a ], [ %.1, %bb.e ]
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.r) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.i) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret ptr %.0.lcssa
}

declare ptr @sf_addset(...) local_unnamed_addr #2

declare ptr @sf_append(...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !12, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !10, i64 112, !5, i64 120, !5, i64 124}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p2 int", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!9, !10, i64 112}
!15 = !{!9, !12, i64 72}
!16 = !{!10, !10, i64 0}
!17 = !{!9, !5, i64 4}
!18 = !{!19, !10, i64 24}
!19 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !20, i64 32}
!20 = !{!"p1 _ZTS10set_family", !11, i64 0}
!21 = !{!19, !5, i64 12}
!22 = !{!19, !5, i64 0}
!23 = !{!19, !5, i64 16}
!24 = !{!9, !10, i64 88}
!25 = !{!9, !12, i64 80}
!26 = !{!9, !10, i64 96}
!27 = !{!9, !5, i64 108}
!28 = !{!9, !5, i64 104}
!29 = !{!9, !5, i64 8}
!30 = !{!9, !10, i64 48}
!31 = !{!9, !10, i64 40}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unswitch.partial.disable"}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !38, !39}
!51 = distinct !{!51, !38}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !38, !39}
!58 = distinct !{!58, !38}
end_hunk_2
