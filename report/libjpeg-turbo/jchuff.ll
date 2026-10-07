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
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33    ; 4 uses
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %.not8485 = icmp eq i8 %i.x, 0
  br i1 %.not8485, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.z = zext i8 %i.x to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 1, i64 %i.z, i1 false), !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33  ; 3 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.y, %i.ac
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
  %i.ai = zext i8 %i.x to i64
  %scevgep.1 = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.aj = zext i8 %i.ab to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 2, i64 %i.aj, i1 false), !tbaa !33
  %i.ak = add nuw nsw i32 %i.y, %i.ac
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.i
  %.178.lcssa.1 = phi i32 [ %i.y, %bb.i ], [ %i.ak, %.lr.ph.1 ] ; 4 uses
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
end_hunk_0
