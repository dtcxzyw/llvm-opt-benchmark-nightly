Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jchuff?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.working_state = type { ptr, i64, %struct.savable_state, ptr, i32 }
%struct.savable_state = type { %union.anon.0, i32, [4 x i32] }
%union.anon.0 = type { i64 }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4
@jpeg_nbits_table = external local_unnamed_addr constant [65536 x i8], align 16

; Function Attrs: nounwind uwtable
define void @jpeg_make_c_derived_tbl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 22 uses
  %i.b = alloca [257 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %or.cond = icmp ugt i32 %2, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 50, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %2, ptr %i.e, align 4, !tbaa !33
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  tail call void %i.g(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.h = sext i32 %2 to i64
  %.in.v.v = select i1 %.not, i64 160, i64 128
  %.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.v
  %.in = getelementptr inbounds [8 x i8], ptr %.in.v, i64 %i.h
  %i.i = load ptr, ptr %.in, align 8, !tbaa !35   ; 18 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 50, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 %2, ptr %i.m, align 4, !tbaa !33
  %i.n = load ptr, ptr %0, align 8, !tbaa !27
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  tail call void %i.o(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1280) #7 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33    ; 3 uses
  %i.y = zext i8 %i.x to i32
  %.not8485 = icmp eq i8 %i.x, 0
  br i1 %.not8485, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.z = zext i8 %i.x to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 1, i64 %i.z, i1 false), !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.178.lcssa = phi i32 [ 0, %bb.g ], [ %i.y, %.lr.ph ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33  ; 3 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = add nuw nsw i32 %.178.lcssa, %i.ac
  %i.ae = icmp samesign ugt i32 %i.ad, 256
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 8, ptr %i.ag, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !34
  tail call void %i.ah(ptr noundef nonnull %0) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.not8485.1 = icmp eq i8 %i.ab, 0
  br i1 %.not8485.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.i
  %i.ai = zext nneg i32 %.178.lcssa to i64
  %scevgep.1 = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.aj = zext i8 %i.ab to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 2, i64 %i.aj, i1 false), !tbaa !33
  %i.ak = add nuw nsw i32 %.178.lcssa, %i.ac
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.i
  %.178.lcssa.1 = phi i32 [ %.178.lcssa, %bb.i ], [ %i.ak, %.lr.ph.1 ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !33  ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = add nsw i32 %.178.lcssa.1, %i.an
  %i.ap = icmp sgt i32 %i.ao, 256
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.1
  %i.aq = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 8, ptr %i.ar, align 8, !tbaa !32
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !34
  tail call void %i.as(ptr noundef nonnull %0) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.1
  %.not8485.2 = icmp eq i8 %i.am, 0
  br i1 %.not8485.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.k
  %i.at = sext i32 %.178.lcssa.1 to i64
  %scevgep.2 = getelementptr i8, ptr %i.a, i64 %i.at
  %i.au = zext i8 %i.am to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.2, i8 3, i64 %i.au, i1 false), !tbaa !33
  %i.av = add nsw i32 %.178.lcssa.1, %i.an
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %.lr.ph.2, %bb.k
  %.178.lcssa.2 = phi i32 [ %.178.lcssa.1, %bb.k ], [ %i.av, %.lr.ph.2 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !33  ; 3 uses
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = add nsw i32 %.178.lcssa.2, %i.ay
  %i.ba = icmp sgt i32 %i.az, 256
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.2
  %i.bb = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 8, ptr %i.bc, align 8, !tbaa !32
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !34
  tail call void %i.bd(ptr noundef nonnull %0) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.2
  %.not8485.3 = icmp eq i8 %i.ax, 0
  br i1 %.not8485.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.m
  %i.be = sext i32 %.178.lcssa.2 to i64
  %scevgep.3 = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bf = zext i8 %i.ax to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.3, i8 4, i64 %i.bf, i1 false), !tbaa !33
  %i.bg = add nsw i32 %.178.lcssa.2, %i.ay
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %.lr.ph.3, %bb.m
  %.178.lcssa.3 = phi i32 [ %.178.lcssa.2, %bb.m ], [ %i.bg, %.lr.ph.3 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !33  ; 3 uses
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = add nsw i32 %.178.lcssa.3, %i.bj
  %i.bl = icmp sgt i32 %i.bk, 256
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.3
  %i.bm = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 8, ptr %i.bn, align 8, !tbaa !32
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !34
  tail call void %i.bo(ptr noundef nonnull %0) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.3
  %.not8485.4 = icmp eq i8 %i.bi, 0
  br i1 %.not8485.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.o
  %i.bp = sext i32 %.178.lcssa.3 to i64
  %scevgep.4 = getelementptr i8, ptr %i.a, i64 %i.bp
  %i.bq = zext i8 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.4, i8 5, i64 %i.bq, i1 false), !tbaa !33
  %i.br = add i32 %.178.lcssa.3, %i.bj
  br label %._crit_edge.4

._crit_edge.4:                                    ; preds = %.lr.ph.4, %bb.o
  %.178.lcssa.4 = phi i32 [ %.178.lcssa.3, %bb.o ], [ %i.br, %.lr.ph.4 ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !33  ; 3 uses
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = add nsw i32 %.178.lcssa.4, %i.bu
  %i.bw = icmp sgt i32 %i.bv, 256
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.4
  %i.bx = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i32 8, ptr %i.by, align 8, !tbaa !32
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !34
  tail call void %i.bz(ptr noundef nonnull %0) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.4
  %.not8485.5 = icmp eq i8 %i.bt, 0
  br i1 %.not8485.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.q
  %i.ca = sext i32 %.178.lcssa.4 to i64
  %scevgep.5 = getelementptr i8, ptr %i.a, i64 %i.ca
  %i.cb = zext i8 %i.bt to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.5, i8 6, i64 %i.cb, i1 false), !tbaa !33
  %i.cc = add i32 %.178.lcssa.4, %i.bu
  br label %._crit_edge.5

._crit_edge.5:                                    ; preds = %.lr.ph.5, %bb.q
  %.178.lcssa.5 = phi i32 [ %.178.lcssa.4, %bb.q ], [ %i.cc, %.lr.ph.5 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33  ; 3 uses
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = add nsw i32 %.178.lcssa.5, %i.cf
  %i.ch = icmp sgt i32 %i.cg, 256
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.5
  %i.ci = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 8, ptr %i.cj, align 8, !tbaa !32
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !34
  tail call void %i.ck(ptr noundef nonnull %0) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.5
  %.not8485.6 = icmp eq i8 %i.ce, 0
  br i1 %.not8485.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.s
  %i.cl = sext i32 %.178.lcssa.5 to i64
  %scevgep.6 = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.cm = zext i8 %i.ce to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.6, i8 7, i64 %i.cm, i1 false), !tbaa !33
  %i.cn = add i32 %.178.lcssa.5, %i.cf
  br label %._crit_edge.6

._crit_edge.6:                                    ; preds = %.lr.ph.6, %bb.s
  %.178.lcssa.6 = phi i32 [ %.178.lcssa.5, %bb.s ], [ %i.cn, %.lr.ph.6 ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !33  ; 3 uses
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = add nsw i32 %.178.lcssa.6, %i.cq
  %i.cs = icmp sgt i32 %i.cr, 256
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.6
  %i.ct = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i32 8, ptr %i.cu, align 8, !tbaa !32
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !34
  tail call void %i.cv(ptr noundef nonnull %0) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.6
  %.not8485.7 = icmp eq i8 %i.cp, 0
  br i1 %.not8485.7, label %._crit_edge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.u
  %i.cw = sext i32 %.178.lcssa.6 to i64
  %scevgep.7 = getelementptr i8, ptr %i.a, i64 %i.cw
  %i.cx = zext i8 %i.cp to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.7, i8 8, i64 %i.cx, i1 false), !tbaa !33
  %i.cy = add i32 %.178.lcssa.6, %i.cq
  br label %._crit_edge.7

._crit_edge.7:                                    ; preds = %.lr.ph.7, %bb.u
  %.178.lcssa.7 = phi i32 [ %.178.lcssa.6, %bb.u ], [ %i.cy, %.lr.ph.7 ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !33  ; 3 uses
  %i.db = zext i8 %i.da to i32                    ; 2 uses
  %i.dc = add nsw i32 %.178.lcssa.7, %i.db
  %i.dd = icmp sgt i32 %i.dc, 256
  br i1 %i.dd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.7
  %i.de = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i32 8, ptr %i.df, align 8, !tbaa !32
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !34
  tail call void %i.dg(ptr noundef nonnull %0) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.7
  %.not8485.8 = icmp eq i8 %i.da, 0
  br i1 %.not8485.8, label %._crit_edge.8, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %bb.w
  %i.dh = sext i32 %.178.lcssa.7 to i64
  %scevgep.8 = getelementptr i8, ptr %i.a, i64 %i.dh
  %i.di = zext i8 %i.da to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.8, i8 9, i64 %i.di, i1 false), !tbaa !33
  %i.dj = add i32 %.178.lcssa.7, %i.db
  br label %._crit_edge.8

._crit_edge.8:                                    ; preds = %.lr.ph.8, %bb.w
  %.178.lcssa.8 = phi i32 [ %.178.lcssa.7, %bb.w ], [ %i.dj, %.lr.ph.8 ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !33  ; 3 uses
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = add nsw i32 %.178.lcssa.8, %i.dm
  %i.do = icmp sgt i32 %i.dn, 256
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.8
  %i.dp = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i32 8, ptr %i.dq, align 8, !tbaa !32
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !34
  tail call void %i.dr(ptr noundef nonnull %0) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.8
  %.not8485.9 = icmp eq i8 %i.dl, 0
  br i1 %.not8485.9, label %._crit_edge.9, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %bb.y
  %i.ds = sext i32 %.178.lcssa.8 to i64
  %scevgep.9 = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.dt = zext i8 %i.dl to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.9, i8 10, i64 %i.dt, i1 false), !tbaa !33
  %i.du = add i32 %.178.lcssa.8, %i.dm
  br label %._crit_edge.9

._crit_edge.9:                                    ; preds = %.lr.ph.9, %bb.y
  %.178.lcssa.9 = phi i32 [ %.178.lcssa.8, %bb.y ], [ %i.du, %.lr.ph.9 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 11
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !33  ; 3 uses
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  %i.dy = add nsw i32 %.178.lcssa.9, %i.dx
  %i.dz = icmp sgt i32 %i.dy, 256
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.9
  %i.ea = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i32 8, ptr %i.eb, align 8, !tbaa !32
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !34
  tail call void %i.ec(ptr noundef nonnull %0) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.9
  %.not8485.10 = icmp eq i8 %i.dw, 0
  br i1 %.not8485.10, label %._crit_edge.10, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %bb.aa
  %i.ed = sext i32 %.178.lcssa.9 to i64
  %scevgep.10 = getelementptr i8, ptr %i.a, i64 %i.ed
  %i.ee = zext i8 %i.dw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.10, i8 11, i64 %i.ee, i1 false), !tbaa !33
  %i.ef = add i32 %.178.lcssa.9, %i.dx
  br label %._crit_edge.10

._crit_edge.10:                                   ; preds = %.lr.ph.10, %bb.aa
  %.178.lcssa.10 = phi i32 [ %.178.lcssa.9, %bb.aa ], [ %i.ef, %.lr.ph.10 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !33  ; 3 uses
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  %i.ej = add nsw i32 %.178.lcssa.10, %i.ei
  %i.ek = icmp sgt i32 %i.ej, 256
  br i1 %i.ek, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.10
  %i.el = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i32 8, ptr %i.em, align 8, !tbaa !32
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !34
  tail call void %i.en(ptr noundef nonnull %0) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.10
  %.not8485.11 = icmp eq i8 %i.eh, 0
  br i1 %.not8485.11, label %._crit_edge.11, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %bb.ac
  %i.eo = sext i32 %.178.lcssa.10 to i64
  %scevgep.11 = getelementptr i8, ptr %i.a, i64 %i.eo
  %i.ep = zext i8 %i.eh to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.11, i8 12, i64 %i.ep, i1 false), !tbaa !33
  %i.eq = add i32 %.178.lcssa.10, %i.ei
  br label %._crit_edge.11

._crit_edge.11:                                   ; preds = %.lr.ph.11, %bb.ac
  %.178.lcssa.11 = phi i32 [ %.178.lcssa.10, %bb.ac ], [ %i.eq, %.lr.ph.11 ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  %i.es = load i8, ptr %i.er, align 1, !tbaa !33  ; 3 uses
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = add nsw i32 %.178.lcssa.11, %i.et
  %i.ev = icmp sgt i32 %i.eu, 256
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.11
  %i.ew = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 8, ptr %i.ex, align 8, !tbaa !32
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !34
  tail call void %i.ey(ptr noundef nonnull %0) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.11
  %.not8485.12 = icmp eq i8 %i.es, 0
  br i1 %.not8485.12, label %._crit_edge.12, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %bb.ae
  %i.ez = sext i32 %.178.lcssa.11 to i64
  %scevgep.12 = getelementptr i8, ptr %i.a, i64 %i.ez
  %i.fa = zext i8 %i.es to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.12, i8 13, i64 %i.fa, i1 false), !tbaa !33
  %i.fb = add i32 %.178.lcssa.11, %i.et
  br label %._crit_edge.12

._crit_edge.12:                                   ; preds = %.lr.ph.12, %bb.ae
  %.178.lcssa.12 = phi i32 [ %.178.lcssa.11, %bb.ae ], [ %i.fb, %.lr.ph.12 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !33  ; 3 uses
  %i.fe = zext i8 %i.fd to i32                    ; 2 uses
  %i.ff = add nsw i32 %.178.lcssa.12, %i.fe
  %i.fg = icmp sgt i32 %i.ff, 256
  br i1 %i.fg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.12
  %i.fh = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 8, ptr %i.fi, align 8, !tbaa !32
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !34
  tail call void %i.fj(ptr noundef nonnull %0) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.12
  %.not8485.13 = icmp eq i8 %i.fd, 0
  br i1 %.not8485.13, label %._crit_edge.13, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %bb.ag
  %i.fk = sext i32 %.178.lcssa.12 to i64
  %scevgep.13 = getelementptr i8, ptr %i.a, i64 %i.fk
  %i.fl = zext i8 %i.fd to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.13, i8 14, i64 %i.fl, i1 false), !tbaa !33
  %i.fm = add i32 %.178.lcssa.12, %i.fe
  br label %._crit_edge.13

._crit_edge.13:                                   ; preds = %.lr.ph.13, %bb.ag
  %.178.lcssa.13 = phi i32 [ %.178.lcssa.12, %bb.ag ], [ %i.fm, %.lr.ph.13 ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !33  ; 3 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = add nsw i32 %.178.lcssa.13, %i.fp
  %i.fr = icmp sgt i32 %i.fq, 256
  br i1 %i.fr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.13
  %i.fs = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  store i32 8, ptr %i.ft, align 8, !tbaa !32
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !34
  tail call void %i.fu(ptr noundef nonnull %0) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.13
  %.not8485.14 = icmp eq i8 %i.fo, 0
  br i1 %.not8485.14, label %._crit_edge.14, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %bb.ai
  %i.fv = sext i32 %.178.lcssa.13 to i64
  %scevgep.14 = getelementptr i8, ptr %i.a, i64 %i.fv
  %i.fw = zext i8 %i.fo to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.14, i8 15, i64 %i.fw, i1 false), !tbaa !33
  %i.fx = add i32 %.178.lcssa.13, %i.fp
  br label %._crit_edge.14

._crit_edge.14:                                   ; preds = %.lr.ph.14, %bb.ai
  %.178.lcssa.14 = phi i32 [ %.178.lcssa.13, %bb.ai ], [ %i.fx, %.lr.ph.14 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !33  ; 3 uses
  %i.ga = zext i8 %i.fz to i32                    ; 2 uses
  %i.gb = add nsw i32 %.178.lcssa.14, %i.ga
  %i.gc = icmp sgt i32 %i.gb, 256
  br i1 %i.gc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.14
  %i.gd = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  store i32 8, ptr %i.ge, align 8, !tbaa !32
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !34
  tail call void %i.gf(ptr noundef nonnull %0) #7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.14
  %.not8485.15 = icmp eq i8 %i.fz, 0
  br i1 %.not8485.15, label %._crit_edge.15, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %bb.ak
  %i.gg = sext i32 %.178.lcssa.14 to i64
  %scevgep.15 = getelementptr i8, ptr %i.a, i64 %i.gg
  %i.gh = zext i8 %i.fz to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.15, i8 16, i64 %i.gh, i1 false), !tbaa !33
  %i.gi = add i32 %.178.lcssa.14, %i.ga
  br label %._crit_edge.15

._crit_edge.15:                                   ; preds = %.lr.ph.15, %bb.ak
  %.178.lcssa.15 = phi i32 [ %.178.lcssa.14, %bb.ak ], [ %i.gi, %.lr.ph.15 ] ; 3 uses
  %i.gj = sext i32 %.178.lcssa.15 to i64
  %i.gk = getelementptr inbounds i8, ptr %i.a, i64 %i.gj
  store i8 0, ptr %i.gk, align 1, !tbaa !33
  %i.gl = load i8, ptr %i.a, align 16, !tbaa !33  ; 3 uses
  %.not8096 = icmp eq i8 %i.gl, 0
  br i1 %.not8096, label %._crit_edge100, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge.15
  %i.gm = sext i8 %i.gl to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.am
  %i.gn = phi i8 [ %i.gy, %bb.am ], [ %i.gl, %.preheader.preheader ] ; 2 uses
  %.099 = phi i32 [ %i.hf, %bb.am ], [ 0, %.preheader.preheader ] ; 2 uses
  %.07498 = phi i32 [ %i.hg, %bb.am ], [ %i.gm, %.preheader.preheader ] ; 4 uses
  %.297 = phi i32 [ %.3.lcssa, %bb.am ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.go = sext i8 %i.gn to i32
  %i.gp = icmp eq i32 %.07498, %i.go
  br i1 %i.gp, label %.lr.ph92.preheader, label %._crit_edge93

.lr.ph92.preheader:                               ; preds = %.preheader
  %i.gq = sext i32 %.297 to i64
  br label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %.lr.ph92
  %indvars.iv109 = phi i64 [ %i.gq, %.lr.ph92.preheader ], [ %indvars.iv.next110, %.lr.ph92 ] ; 2 uses
  %.191 = phi i32 [ %.099, %.lr.ph92.preheader ], [ %i.gs, %.lr.ph92 ] ; 2 uses
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1 ; 3 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv109
  store i32 %.191, ptr %i.gr, align 4, !tbaa !39
  %i.gs = add i32 %.191, 1                        ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next110
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !33  ; 2 uses
  %i.gv = sext i8 %i.gu to i32
  %i.gw = icmp eq i32 %.07498, %i.gv
  br i1 %i.gw, label %.lr.ph92, label %._crit_edge93.loopexit, !llvm.loop !73

._crit_edge93.loopexit:                           ; preds = %.lr.ph92
  %i.gx = trunc nsw i64 %indvars.iv.next110 to i32
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge93.loopexit, %.preheader
  %i.gy = phi i8 [ %i.gn, %.preheader ], [ %i.gu, %._crit_edge93.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.297, %.preheader ], [ %i.gx, %._crit_edge93.loopexit ]
  %.1.lcssa = phi i32 [ %.099, %.preheader ], [ %i.gs, %._crit_edge93.loopexit ] ; 2 uses
  %i.gz = zext i32 %.1.lcssa to i64
  %i.ha = zext nneg i32 %.07498 to i64
  %i.hb = shl nuw i64 1, %i.ha
  %.not83 = icmp sgt i64 %i.hb, %i.gz
  br i1 %.not83, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge93
  %i.hc = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  store i32 8, ptr %i.hd, align 8, !tbaa !32
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !34
  tail call void %i.he(ptr noundef nonnull %0) #7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge93
  %i.hf = shl i32 %.1.lcssa, 1
  %i.hg = add nsw i32 %.07498, 1
  %.not80 = icmp eq i8 %i.gy, 0
  br i1 %.not80, label %._crit_edge100, label %.preheader, !llvm.loop !74

._crit_edge100:                                   ; preds = %bb.am, %._crit_edge.15
  %i.hh = getelementptr inbounds nuw i8, ptr %i.v, i64 1024 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.v, i8 0, i64 1280, i1 false)
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge100
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !76
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !78
  %.not81 = icmp eq i32 %i.hl, 0
  %i.hm = select i1 %.not81, i32 15, i32 16
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge100, %bb.an
  %i.hn = phi i32 [ %i.hm, %bb.an ], [ 255, %._crit_edge100 ]
  %i.ho = icmp sgt i32 %.178.lcssa.15, 0
  br i1 %i.ho, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.ao
  %i.hp = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %wide.trip.count = zext nneg i32 %.178.lcssa.15 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph103, %bb.ar
  %indvars.iv112 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next113, %bb.ar ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %indvars.iv112
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !33  ; 2 uses
  %i.hs = zext i8 %i.hr to i32
  %i.ht = icmp samesign ult i32 %i.hn, %i.hs
  %.pre117 = zext i8 %i.hr to i64                 ; 3 uses
  br i1 %i.ht, label %._crit_edge116, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.pre117
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !33
  %.not82 = icmp eq i8 %i.hv, 0
  br i1 %.not82, label %bb.ar, label %._crit_edge116

._crit_edge116:                                   ; preds = %bb.ap, %bb.aq
  %i.hw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  store i32 8, ptr %i.hx, align 8, !tbaa !32
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !34
  tail call void %i.hy(ptr noundef nonnull %0) #7
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge116, %bb.aq
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv112
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !39
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre117
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !39
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv112
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !33
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.pre117
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !33
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond115.not, label %._crit_edge104, label %bb.ap, !llvm.loop !75

._crit_edge104:                                   ; preds = %bb.ar, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @jpeg_gen_optimal_table(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) initializes((2048, 2056)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [34 x i8], align 16               ; 41 uses
  %i.b = alloca [33 x i32], align 16              ; 37 uses
  %i.c = alloca [257 x i32], align 16             ; 11 uses
  %i.d = alloca [257 x i32], align 16             ; 7 uses
  %i.e = alloca [257 x i32], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %i.a, i8 0, i64 34, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.c, i8 0, i64 1028, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.e, i8 -1, i64 1028, i1 false), !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2048
  store i64 1, ptr %i.f, align 8, !tbaa !41
  br label %bb.b

.preheader108:                                    ; preds = %bb.d
  %i.g = icmp sgt i32 %.187, 0
  %wide.trip.count = zext nneg i32 %.187 to i64
  br i1 %i.g, label %.lr.ph, label %.preheader106

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.g ] ; 5 uses
  %.086114 = phi i32 [ 0, %bb.a ], [ %.187.1, %bb.g ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %.not103 = icmp eq i64 %i.i, 0
  br i1 %.not103, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %.086114 to i64                 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.j
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.l, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j
  store i64 %i.i, ptr %i.m, align 8, !tbaa !41
  %i.n = add nsw i32 %.086114, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.187 = phi i32 [ %i.n, %bb.c ], [ %.086114, %bb.b ] ; 8 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 256
  br i1 %exitcond.not, label %.preheader108, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %.not103.1 = icmp eq i64 %i.p, 0
  br i1 %.not103.1, label %bb.g, label %bb.f

end_hunk_0
