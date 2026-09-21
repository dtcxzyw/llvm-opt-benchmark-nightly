Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/escape124?download=true
inline.NumInlined: 44
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.SuperBlock = type { [32 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"escape124\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Escape 124\00", align 1
@ff_escape124_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 115, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 64, ptr null, ptr null, ptr null, ptr @escape124_decode_init, %union.anon { ptr @escape124_decode_frame }, ptr @escape124_decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Skipping frame\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid codebook size 0.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Depth or num_superblocks are too large\0A\00", align 1
@mask_matrix = internal unnamed_addr constant [16 x i16] [i16 1, i16 2, i16 16, i16 32, i16 4, i16 8, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 8192, i16 1024, i16 2048, i16 16384, i16 -32768], align 16
@.str.5 = private unnamed_addr constant [26 x i8] c"Escape sizes: %i, %i, %i\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@decode_macroblock.transitions = internal unnamed_addr constant [3 x [2 x i8]] [[2 x i8] c"\02\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00"], align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @escape124_decode_init(ptr nofree noundef captures(none) initializes((136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 39, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = lshr i32 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = lshr i32 %i.h, 3
  %i.j = mul i32 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !32
  %i.l = tail call ptr @av_frame_alloc() #6       ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !33
  %.not = icmp eq ptr %i.l, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @escape124_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  %4 = alloca %union.SuperBlock, align 4          ; 46 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = sdiv i32 %i.g, 8                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 32 uses
  %or.cond.i = icmp ugt i32 %i.c, 268435455
  %i.k = shl nuw nsw i32 %i.c, 3
  %i.l = select i1 %or.cond.i, i32 -8, i32 %i.k   ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.l, 2147483135
  %i.m = icmp ne ptr %i.j, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.m       ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.l, i32 0 ; 7 uses
  %i.n = add nuw nsw i32 %.013.i.i, 8             ; 25 uses
  br i1 %or.cond3.i.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !32
  %i.r = zext i32 %i.q to i64
  %i.s = mul nuw nsw i64 %i.r, 23
  %i.t = udiv i64 %i.s, 4320
  %i.u = add nuw nsw i64 %i.t, 64
  %i.v = icmp samesign ugt i64 %i.u, %i.o
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.j, align 1, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i32, ptr %i.x, align 1, !tbaa !46   ; 3 uses
  %i.z = shl i32 %i.y, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !46
  %i.ac = and i32 %i.ab, 65535
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !46
  %i.af = shl i32 %i.ae, 16
  %i.ag = or disjoint i32 %i.af, %i.ac
  %i.ah = and i32 %i.w, 276
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.y, 1920
  %.not146 = icmp eq i32 %i.ai, 0
  %or.cond = or i1 %.not, %.not146
  br i1 %or.cond, label %bb.d, label %.preheader337

.preheader337:                                    ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47
  %.not147 = icmp eq ptr %i.am, null
  br i1 %.not147, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.2) #6
  store i32 1, ptr %2, align 4, !tbaa !48
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.ao = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.an) #6
  %. = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 0)
  br label %.thread

bb.f:                                             ; preds = %.preheader337, %bb.u
  %indvars.iv = phi i64 [ 0, %.preheader337 ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %.sroa.19.0347 = phi i32 [ 64, %.preheader337 ], [ %.sroa.19.3, %bb.u ] ; 5 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = shl nuw nsw i32 131072, %i.ap
  %i.ar = and i32 %i.aq, %i.z
  %.not158 = icmp eq i32 %i.ar, 0
  br i1 %.not158, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i64 %indvars.iv, 2
  %i.at = lshr i32 %.sroa.19.0347, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !46
  %i.ax = and i32 %.sroa.19.0347, 7
  %i.ay = lshr i32 %i.aw, %i.ax                   ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.az = and i32 %i.ay, 1048575                  ; 4 uses
  %.not159 = icmp eq i32 %i.az, 0
  br i1 %.not159, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #6
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ba = add i32 %.sroa.19.0347, 20
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ba)
  %i.bc = add nsw i32 %i.az, -1                   ; 2 uses
  %i.bd = icmp samesign ugt i32 %i.az, 65536      ; 2 uses
  %i.be = lshr i32 %i.bc, 16
  %spec.select.i = select i1 %i.bd, i32 %i.be, i32 %i.bc ; 3 uses
  %spec.select11.i = select i1 %i.bd, i32 16, i32 0
  %.not.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.bf = lshr i32 %spec.select.i, 8
  %.110.i = select i1 %.not.i, i32 %spec.select.i, i32 %i.bf
  %i.bg = zext nneg i32 %.110.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !46
  %i.bj = zext i8 %i.bi to i32
  %i.bk = select i1 %.not.i, i32 1, i32 9
  %i.bl = or disjoint i32 %i.bk, %spec.select11.i
  %i.bm = add nuw nsw i32 %i.bl, %i.bj
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bn = and i32 %i.ay, 15                       ; 4 uses
  %i.bo = add i32 %.sroa.19.0347, 4
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.bo) ; 2 uses
  %i.bq = icmp eq i64 %indvars.iv, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = shl nuw nsw i32 1, %i.bn
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !32
  %i.bt = shl i32 %i.bs, %i.bn
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.sroa.19.1 = phi i32 [ %i.bb, %bb.j ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ] ; 3 uses
  %.0122 = phi i32 [ %i.bm, %bb.j ], [ %i.bn, %bb.l ], [ %i.bn, %bb.m ] ; 2 uses
  %.0121 = phi i32 [ %i.az, %bb.j ], [ %i.br, %bb.l ], [ %i.bt, %bb.m ] ; 5 uses
  %i.bu = load i32, ptr %i.p, align 8, !tbaa !32
  %i.bv = lshr i32 2147483647, %.0122
  %.not160 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not160, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #6
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.bx) #6
  %i.by = icmp ugt i32 %.0121, 63161282
  br i1 %i.by, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = sub nsw i32 %.013.i.i, %.sroa.19.1
  %i.ca = mul nuw nsw i32 %.0121, 34
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i171 = icmp eq i32 %.0121, 0              ; 2 uses
  %i.cc = shl nuw nsw i32 %.0121, 3
  %narrow.i = select i1 %.not.i171, i32 1, i32 %i.cc
  %i.cd = zext nneg i32 %narrow.i to i64
  %i.ce = tail call noalias ptr @av_malloc(i64 noundef %i.cd) #6 ; 3 uses
  %.not19.i = icmp eq ptr %i.ce, null
  br i1 %.not19.i, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  br i1 %.not.i171, label %.thread315, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.0121 to i64 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.cf = phi i32 [ %.sroa.19.1, %.lr.ph.i ], [ %i.df, %bb.s ] ; 3 uses
  %i.cg = lshr i32 %i.cf, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !46
  %i.ck = and i32 %i.cf, 7
  %i.cl = lshr i32 %i.cj, %i.ck                   ; 4 uses
  %i.cm = add i32 %i.cf, 4
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.cm) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.co = lshr i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !46
  %i.cs = and i32 %i.cn, 7
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = and i32 %i.ct, 32767
  %i.cv = add nuw i32 %i.cn, 15
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.cv) ; 3 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !48
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !46
  %i.db = and i32 %i.cw, 7
  %i.dc = lshr i32 %i.da, %i.db
  %i.dd = and i32 %i.dc, 32767
  %i.de = add nuw i32 %i.cw, 15
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.de) ; 2 uses
  store i32 %i.dd, ptr %i.ak, align 4, !tbaa !48
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i ; 4 uses
  %i.dh = and i32 %i.cl, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48
  %i.dl = trunc i32 %i.dk to i16
  store i16 %i.dl, ptr %i.dg, align 2, !tbaa !46
  %i.dm = lshr i32 %i.cl, 1
  %i.dn = and i32 %i.dm, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.do
end_hunk_0
begin_hunk_1_@escape124_decode_frame:bb.a
  %.idx30.i232 = mul nsw i64 %i.ep, 14            ; 3 uses
  %i.fg = shl nsw i32 %i.h, 3
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = sub nsw i64 %.idx24.i229, %i.fh
  %i.fj = sub nsw i64 %.idx25.i179, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 124
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph383, %copy_superblock.exit
  %.0124382 = phi ptr [ %i.ex, %.lr.ph383 ], [ %.1125, %copy_superblock.exit ] ; 24 uses
  %.0126380 = phi ptr [ %i.ew, %.lr.ph383 ], [ %.3129, %copy_superblock.exit ] ; 20 uses
  %.0130379 = phi i32 [ -1, %.lr.ph383 ], [ %i.ui, %copy_superblock.exit ] ; 2 uses
  %.0132378 = phi i32 [ 0, %.lr.ph383 ], [ %.1133, %copy_superblock.exit ]
  %.0134375 = phi i32 [ 0, %.lr.ph383 ], [ %i.uj, %copy_superblock.exit ] ; 4 uses
  %.0308374 = phi i32 [ 1, %.lr.ph383 ], [ %.6, %copy_superblock.exit ] ; 4 uses
  %.sroa.19.4373 = phi i32 [ %.sroa.19.3, %.lr.ph383 ], [ %.sroa.19.14, %copy_superblock.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  switch i32 %.0130379, label %decode_skip_count.exit.thread [
    i32 -1, label %bb.y
    i32 0, label %decode_skip_count.exit.thread328
  ]

bb.y:                                             ; preds = %bb.x
  %.not22.i = icmp sgt i32 %.013.i.i, %.sroa.19.4373
  br i1 %.not22.i, label %bb.z, label %decode_skip_count.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.go = lshr i32 %.sroa.19.4373, 3
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !46
  %spec.select.i.i = add nsw i32 %.sroa.19.4373, 1 ; 3 uses
  %i.gs = zext i8 %i.gr to i32
  %i.gt = and i32 %.sroa.19.4373, 7
  %i.gu = shl nuw nsw i32 1, %i.gt
  %i.gv = and i32 %i.gu, %i.gs
  %.not.i172 = icmp eq i32 %i.gv, 0
  br i1 %.not.i172, label %decode_skip_count.exit.thread328, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gw = lshr i32 %spec.select.i.i, 3
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 1, !tbaa !46
  %i.ha = and i32 %spec.select.i.i, 7
  %i.hb = lshr i32 %i.gz, %i.ha
  %i.hc = and i32 %i.hb, 7
  %i.hd = add nsw i32 %.sroa.19.4373, 4
  %i.he = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.hd) ; 4 uses
  %i.hf = add nuw nsw i32 %i.hc, 1                ; 2 uses
  %.not19.i173 = icmp eq i32 %i.hf, 8
  br i1 %.not19.i173, label %bb.ab, label %decode_skip_count.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.hg = lshr i32 %i.he, 3
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 1, !tbaa !46
  %i.hk = and i32 %i.he, 7
  %i.hl = lshr i32 %i.hj, %i.hk
  %i.hm = and i32 %i.hl, 127
  %i.hn = add nuw i32 %i.he, 7
  %i.ho = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.hn) ; 4 uses
  %i.hp = add nuw nsw i32 %i.hm, 8                ; 2 uses
  %.not20.i = icmp eq i32 %i.hp, 135
  br i1 %.not20.i, label %bb.ac, label %decode_skip_count.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.hq = lshr i32 %i.ho, 3
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 1, !tbaa !46
  %i.hu = and i32 %i.ho, 7
  %i.hv = lshr i32 %i.ht, %i.hu
  %i.hw = and i32 %i.hv, 4095
  %i.hx = add nuw i32 %i.ho, 12
  %i.hy = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.hx)
  %i.hz = add nuw nsw i32 %i.hw, 135
  br label %decode_skip_count.exit.thread

decode_skip_count.exit.thread:                    ; preds = %bb.x, %bb.ab, %bb.ac, %bb.aa, %bb.y
  %.1131327 = phi i32 [ %.0130379, %bb.x ], [ %i.hp, %bb.ab ], [ %i.hz, %bb.ac ], [ %i.hf, %bb.aa ], [ -1, %bb.y ] ; 2 uses
  %.sroa.19.5325 = phi i32 [ %.sroa.19.4373, %bb.x ], [ %i.ho, %bb.ab ], [ %i.hy, %bb.ac ], [ %i.he, %bb.aa ], [ %.sroa.19.4373, %bb.y ] ; 2 uses
  %.not.i174 = icmp eq ptr %.0126380, null
  %i.ia = getelementptr inbounds [2 x i8], ptr %.0124382, i64 %i.ep ; 2 uses
  br i1 %.not.i174, label %.preheader.preheader.i, label %.preheader14.preheader.i

.preheader14.preheader.i:                         ; preds = %decode_skip_count.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, ptr noundef nonnull readonly align 2 dereferenceable(16) %.0126380, i64 16, i1 false)
  %i.ib = getelementptr inbounds [2 x i8], ptr %.0126380, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ia, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ib, i64 16, i1 false)
  %i.ic = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  %i.id = getelementptr inbounds i8, ptr %.0126380, i64 %.idx21.i177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ic, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.id, i64 16, i1 false)
  %i.ie = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  %i.if = getelementptr inbounds i8, ptr %.0126380, i64 %.idx23.i178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ie, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.if, i64 16, i1 false)
  %i.ig = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  %i.ih = getelementptr inbounds i8, ptr %.0126380, i64 %.idx25.i179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ig, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ih, i64 16, i1 false)
  %i.ii = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  %i.ij = getelementptr inbounds i8, ptr %.0126380, i64 %.idx27.i180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ii, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ij, i64 16, i1 false)
  %i.ik = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  %i.il = getelementptr inbounds i8, ptr %.0126380, i64 %.idx29.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ik, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.il, i64 16, i1 false)
  %i.im = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  %i.in = getelementptr inbounds i8, ptr %.0126380, i64 %.idx31.i182
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.im, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.in, i64 16, i1 false)
  br label %copy_superblock.exit

.preheader.preheader.i:                           ; preds = %decode_skip_count.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ia, i8 0, i64 16, i1 false)
  %i.io = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.io, i8 0, i64 16, i1 false)
  %i.ip = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ip, i8 0, i64 16, i1 false)
  %i.iq = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.iq, i8 0, i64 16, i1 false)
  %i.ir = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ir, i8 0, i64 16, i1 false)
  %i.is = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.is, i8 0, i64 16, i1 false)
  %i.it = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.it, i8 0, i64 16, i1 false)
  br label %copy_superblock.exit

decode_skip_count.exit.thread328:                 ; preds = %bb.x, %bb.z
  %.sroa.19.5332 = phi i32 [ %.sroa.19.4373, %bb.x ], [ %spec.select.i.i, %bb.z ] ; 3 uses
  %.not.i175 = icmp eq ptr %.0126380, null
  br i1 %.not.i175, label %.preheader.preheader.i183, label %.preheader14.preheader.i176

.preheader14.preheader.i176:                      ; preds = %decode_skip_count.exit.thread328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull readonly align 2 dereferenceable(16) %.0126380, i64 16, i1 false)
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0126380, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.iu, i64 16, i1 false)
  %i.iv = getelementptr inbounds i8, ptr %.0126380, i64 %.idx21.i177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ez, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.iv, i64 16, i1 false)
  %i.iw = getelementptr inbounds i8, ptr %.0126380, i64 %.idx23.i178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.iw, i64 16, i1 false)
  %i.ix = getelementptr inbounds i8, ptr %.0126380, i64 %.idx25.i179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fb, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ix, i64 16, i1 false)
  %i.iy = getelementptr inbounds i8, ptr %.0126380, i64 %.idx27.i180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.iy, i64 16, i1 false)
  %i.iz = getelementptr inbounds i8, ptr %.0126380, i64 %.idx29.i181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fd, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.iz, i64 16, i1 false)
  %i.ja = getelementptr inbounds i8, ptr %.0126380, i64 %.idx31.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fe, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ja, i64 16, i1 false)
  br label %copy_superblock.exit184

.preheader.preheader.i183:                        ; preds = %decode_skip_count.exit.thread328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  br label %copy_superblock.exit184

copy_superblock.exit184:                          ; preds = %.preheader14.preheader.i176, %.preheader.preheader.i183
  %i.jb = icmp sgt i32 %.013.i.i, %.sroa.19.5332
  br i1 %i.jb, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %copy_superblock.exit184
  %.promoted = load i32, ptr %4, align 4
  %.promoted425 = load i32, ptr %i.ey, align 4
  %.promoted429 = load i32, ptr %i.fk, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.0.0.extract.trunc.i432 = phi i32 [ %.sroa.0.0.extract.trunc.i431, %.loopexit ], [ %.promoted429, %.lr.ph.preheader ] ; 2 uses
  %.sroa.2.0.extract.trunc.i428 = phi i32 [ %spec.select433, %.loopexit ], [ %.promoted425, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.extract.trunc.i424 = phi i32 [ %spec.select434, %.loopexit ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %.0118352 = phi i32 [ %i.mg, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.1309351 = phi i32 [ %.7, %.loopexit ], [ %.0308374, %.lr.ph.preheader ] ; 3 uses
  %.sroa.19.6350 = phi i32 [ %i.mf, %.loopexit ], [ %.sroa.19.5332, %.lr.ph.preheader ] ; 3 uses
  %i.jc = lshr i32 %.sroa.19.6350, 3
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !46
  %spec.select.i185 = add nsw i32 %.sroa.19.6350, 1 ; 5 uses
  %i.jg = zext i8 %i.jf to i32
  %i.jh = and i32 %.sroa.19.6350, 7
  %i.ji = shl nuw nsw i32 1, %i.jh
  %i.jj = and i32 %i.ji, %i.jg
  %.not149 = icmp eq i32 %i.jj, 0
  br i1 %.not149, label %bb.ad, label %.critedge.loopexit

bb.ad:                                            ; preds = %.lr.ph
  %i.jk = lshr i32 %spec.select.i185, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !46
  %5 = icmp slt i32 %spec.select.i185, %i.n
  %6 = zext i1 %5 to i32
  %spec.select.i.i186 = add i32 %spec.select.i185, %6 ; 5 uses
  %i.jo = zext i8 %i.jn to i32
  %i.jp = and i32 %spec.select.i185, 7
  %i.jq = shl nuw nsw i32 1, %i.jp
  %i.jr = and i32 %i.jq, %i.jo
  %.not.i187 = icmp eq i32 %i.jr, 0
  br i1 %.not.i187, label %._crit_edge.i190, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.js = lshr i32 %spec.select.i.i186, 3
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !46
  %i.jw = icmp slt i32 %spec.select.i.i186, %i.n
  %i.jx = zext i1 %i.jw to i32
  %spec.select.i26.i = add i32 %spec.select.i.i186, %i.jx
  %i.jy = zext i8 %i.jv to i32
  %i.jz = and i32 %spec.select.i.i186, 7
  %i.ka = lshr i32 %i.jy, %i.jz
  %i.kb = and i32 %i.ka, 1
  %i.kc = sext i32 %.1309351 to i64
  %i.kd = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.kc
  %i.ke = zext nneg i32 %i.kb to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !46
  %i.kh = sext i8 %i.kg to i32
  br label %._crit_edge.i190

._crit_edge.i190:                                 ; preds = %bb.ad, %bb.ae
  %.sroa.19.18 = phi i32 [ %spec.select.i26.i, %bb.ae ], [ %spec.select.i.i186, %bb.ad ] ; 4 uses
  %.7 = phi i32 [ %i.kh, %bb.ae ], [ %.1309351, %bb.ad ] ; 4 uses
  %i.ki = sext i32 %.7 to i64
  %i.kj = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ki ; 3 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !52 ; 3 uses
  %.not.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i, label %get_bitsz.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i190
  %i.kl = lshr i32 %.sroa.19.18, 3
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 1, !tbaa !46
  %i.kp = and i32 %.sroa.19.18, 7
  %i.kq = lshr i32 %i.ko, %i.kp
  %i.kr = sub i32 32, %i.kk
  %i.ks = lshr i32 -1, %i.kr
  %i.kt = and i32 %i.kq, %i.ks
  %i.ku = add i32 %i.kk, %.sroa.19.18
  %i.kv = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ku)
  br label %get_bitsz.exit.i

get_bitsz.exit.i:                                 ; preds = %bb.af, %._crit_edge.i190
  %.sroa.19.19 = phi i32 [ %.sroa.19.18, %._crit_edge.i190 ], [ %i.kv, %bb.af ] ; 3 uses
  %i.kw = phi i32 [ 0, %._crit_edge.i190 ], [ %i.kt, %bb.af ] ; 2 uses
  %i.kx = icmp eq i32 %.7, 1
  br i1 %i.kx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %get_bitsz.exit.i
  %i.ky = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.kz = shl i32 %.0134375, %i.ky
  %i.la = add i32 %i.kz, %i.kw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %get_bitsz.exit.i
  %.0.i188 = phi i32 [ %i.la, %bb.ag ], [ %i.kw, %get_bitsz.exit.i ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !53
  %.not22.i189 = icmp ult i32 %.0.i188, %i.lc
  br i1 %.not22.i189, label %bb.ai, label %decode_macroblock.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !54 ; 2 uses
  %.not23.i = icmp eq ptr %i.le, null
  br i1 %.not23.i, label %decode_macroblock.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lf = zext i32 %.0.i188 to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i64, ptr %i.lg, align 4, !tbaa !46
  br label %decode_macroblock.exit

decode_macroblock.exit:                           ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.lh, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.li = lshr i32 %.sroa.19.19, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 1, !tbaa !46
  %i.lm = and i32 %.sroa.19.19, 7
  %i.ln = lshr i32 %i.ll, %i.lm                   ; 17 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i to i32 ; 16 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 16 uses
  %i.lo = and i32 %i.ln, 1
  %.not155 = icmp eq i32 %i.lo, 0                 ; 2 uses
  %spec.select433 = select i1 %.not155, i32 %.sroa.2.0.extract.trunc.i428, i32 %.sroa.2.0.extract.trunc.i ; 2 uses
  %spec.select434 = select i1 %.not155, i32 %.sroa.0.0.extract.trunc.i424, i32 %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.lp = and i32 %i.ln, 2
  %.not155.1 = icmp eq i32 %i.lp, 0
  br i1 %.not155.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %decode_macroblock.exit
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fl, align 4, !tbaa !48
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %decode_macroblock.exit
  %.sroa.0.0.extract.trunc.i431 = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.ak ], [ %.sroa.0.0.extract.trunc.i432, %decode_macroblock.exit ] ; 2 uses
  %i.lq = and i32 %i.ln, 16
  %.not155.2 = icmp eq i32 %i.lq, 0
  br i1 %.not155.2, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fm, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fn, align 4, !tbaa !48
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.lr = and i32 %i.ln, 32
  %.not155.3 = icmp eq i32 %i.lr, 0
  br i1 %.not155.3, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fo, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fp, align 4, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ls = and i32 %i.ln, 4
  %.not155.4 = icmp eq i32 %i.ls, 0
  br i1 %.not155.4, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fq, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fr, align 4, !tbaa !48
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.lt = and i32 %i.ln, 8
  %.not155.5 = icmp eq i32 %i.lt, 0
  br i1 %.not155.5, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fs, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.ft, align 4, !tbaa !48
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.lu = and i32 %i.ln, 64
  %.not155.6 = icmp eq i32 %i.lu, 0
  br i1 %.not155.6, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fu, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fv, align 4, !tbaa !48
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lv = and i32 %i.ln, 128
  %.not155.7 = icmp eq i32 %i.lv, 0
  br i1 %.not155.7, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fw, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fx, align 4, !tbaa !48
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lw = and i32 %i.ln, 256
  %.not155.8 = icmp eq i32 %i.lw, 0
  br i1 %.not155.8, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.fy, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.fz, align 4, !tbaa !48
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.lx = and i32 %i.ln, 512
  %.not155.9 = icmp eq i32 %i.lx, 0
  br i1 %.not155.9, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.ga, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.gb, align 4, !tbaa !48
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ly = and i32 %i.ln, 4096
  %.not155.10 = icmp eq i32 %i.ly, 0
  br i1 %.not155.10, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.gc, align 4, !tbaa !48
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.gd, align 4, !tbaa !48
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lz = and i32 %i.ln, 8192
  %.not155.11 = icmp eq i32 %i.lz, 0
  br i1 %.not155.11, label %bb.bf, label %bb.be

end_hunk_1
begin_hunk_2_@escape124_decode_frame:bb.a
  %i.ni = add nuw i32 %i.mz, 4
  %i.nj = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ni)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.sroa.19.9 = phi i32 [ %i.nj, %bb.bo ], [ %i.mz, %bb.bn ] ; 4 uses
  %.pn = phi i32 [ %i.nh, %bb.bo ], [ 15, %bb.bn ]
  %.2120 = xor i32 %.pn, %.0118.lcssa
  %i.nk = and i32 %i.mx, 2
  %.not152.1 = icmp eq i32 %i.nk, 0
  br i1 %.not152.1, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nl = lshr i32 %.sroa.19.9, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 1, !tbaa !46
  %i.np = and i32 %.sroa.19.9, 7
  %i.nq = lshr i32 %i.no, %i.np
  %i.nr = add i32 %.sroa.19.9, 4
  %i.ns = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.nr)
  %i.nt = shl i32 %i.nq, 4
  %i.nu = and i32 %i.nt, 240
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.sroa.19.9.1 = phi i32 [ %i.ns, %bb.bq ], [ %.sroa.19.9, %bb.bp ] ; 4 uses
  %.pn.1 = phi i32 [ %i.nu, %bb.bq ], [ 240, %bb.bp ]
  %.2120.1 = xor i32 %.pn.1, %.2120
  %i.nv = and i32 %i.mx, 4
  %.not152.2 = icmp eq i32 %i.nv, 0
  br i1 %.not152.2, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nw = lshr i32 %.sroa.19.9.1, 3
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 1, !tbaa !46
  %i.oa = and i32 %.sroa.19.9.1, 7
  %i.ob = lshr i32 %i.nz, %i.oa
  %i.oc = add i32 %.sroa.19.9.1, 4
  %i.od = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.oc)
  %i.oe = shl i32 %i.ob, 8
  %i.of = and i32 %i.oe, 3840
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sroa.19.9.2 = phi i32 [ %i.od, %bb.bs ], [ %.sroa.19.9.1, %bb.br ] ; 4 uses
  %.pn.2 = phi i32 [ %i.of, %bb.bs ], [ 3840, %bb.br ]
  %.2120.2 = xor i32 %.pn.2, %.2120.1
  %i.og = and i32 %i.mx, 8
  %.not152.3 = icmp eq i32 %i.og, 0
  br i1 %.not152.3, label %bb.bu, label %.preheader

bb.bu:                                            ; preds = %bb.bt
  %i.oh = lshr i32 %.sroa.19.9.2, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 1, !tbaa !46
  %i.ol = and i32 %.sroa.19.9.2, 7
  %i.om = lshr i32 %i.ok, %i.ol
  %i.on = add i32 %.sroa.19.9.2, 4
  %i.oo = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.on)
  %i.op = shl i32 %i.om, 12
  %i.oq = and i32 %i.op, 61440
  br label %.preheader

.preheader:                                       ; preds = %bb.bt, %bb.bu
  %.sroa.19.9.3 = phi i32 [ %i.oo, %bb.bu ], [ %.sroa.19.9.2, %bb.bt ]
  %.pn.3 = phi i32 [ %i.oq, %bb.bu ], [ 61440, %bb.bt ]
  %.2120.3 = xor i32 %.pn.3, %.2120.2
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader, %bb.cd
  %indvars.iv399 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next400, %bb.cd ] ; 4 uses
  %.2310371 = phi i32 [ %.1309.lcssa, %.preheader ], [ %.3311, %bb.cd ] ; 3 uses
  %.sroa.19.10370 = phi i32 [ %.sroa.19.9.3, %.preheader ], [ %.sroa.19.11, %bb.cd ] ; 5 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr @mask_matrix, i64 %indvars.iv399
  %i.os = load i16, ptr %i.or, align 2, !tbaa !56
  %i.ot = zext i16 %i.os to i32
  %i.ou = and i32 %.2120.3, %i.ot
  %.not151 = icmp eq i32 %i.ou, 0
  br i1 %.not151, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ov = lshr i32 %.sroa.19.10370, 3
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !46
  %i.oz = icmp slt i32 %.sroa.19.10370, %i.n
  %i.pa = zext i1 %i.oz to i32
  %spec.select.i.i192 = add i32 %.sroa.19.10370, %i.pa ; 5 uses
  %i.pb = zext i8 %i.oy to i32
  %i.pc = and i32 %.sroa.19.10370, 7
  %i.pd = shl nuw nsw i32 1, %i.pc
  %i.pe = and i32 %i.pd, %i.pb
  %.not.i193 = icmp eq i32 %i.pe, 0
  br i1 %.not.i193, label %._crit_edge.i202, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pf = lshr i32 %spec.select.i.i192, 3
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !46
  %i.pj = icmp slt i32 %spec.select.i.i192, %i.n
  %i.pk = zext i1 %i.pj to i32
  %spec.select.i26.i194 = add i32 %spec.select.i.i192, %i.pk
  %i.pl = zext i8 %i.pi to i32
  %i.pm = and i32 %spec.select.i.i192, 7
  %i.pn = lshr i32 %i.pl, %i.pm
  %i.po = and i32 %i.pn, 1
  %i.pp = sext i32 %.2310371 to i64
  %i.pq = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.pp
  %i.pr = zext nneg i32 %i.po to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !46
  %i.pu = sext i8 %i.pt to i32
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %bb.bw, %bb.bx
  %.sroa.19.20 = phi i32 [ %spec.select.i26.i194, %bb.bx ], [ %spec.select.i.i192, %bb.bw ] ; 4 uses
  %.8 = phi i32 [ %i.pu, %bb.bx ], [ %.2310371, %bb.bw ] ; 3 uses
  %i.pv = sext i32 %.8 to i64
  %i.pw = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.pv ; 3 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !52 ; 3 uses
  %.not.i.i195 = icmp eq i32 %i.px, 0
  br i1 %.not.i.i195, label %get_bitsz.exit.i197, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i202
  %i.py = lshr i32 %.sroa.19.20, 3
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 1, !tbaa !46
  %i.qc = and i32 %.sroa.19.20, 7
  %i.qd = lshr i32 %i.qb, %i.qc
  %i.qe = sub i32 32, %i.px
  %i.qf = lshr i32 -1, %i.qe
  %i.qg = and i32 %i.qd, %i.qf
  %i.qh = add i32 %i.px, %.sroa.19.20
  %i.qi = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.qh)
  br label %get_bitsz.exit.i197

get_bitsz.exit.i197:                              ; preds = %bb.by, %._crit_edge.i202
  %.sroa.19.21 = phi i32 [ %.sroa.19.20, %._crit_edge.i202 ], [ %i.qi, %bb.by ]
  %i.qj = phi i32 [ 0, %._crit_edge.i202 ], [ %i.qg, %bb.by ] ; 2 uses
  %i.qk = icmp eq i32 %.8, 1
  br i1 %i.qk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %get_bitsz.exit.i197
  %i.ql = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.qm = shl i32 %.0134375, %i.ql
  %i.qn = add i32 %i.qm, %i.qj
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %get_bitsz.exit.i197
  %.0.i198 = phi i32 [ %i.qn, %bb.bz ], [ %i.qj, %get_bitsz.exit.i197 ] ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !53
  %.not22.i199 = icmp ult i32 %.0.i198, %i.qp
  br i1 %.not22.i199, label %bb.cb, label %decode_macroblock.exit204

bb.cb:                                            ; preds = %bb.ca
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !54 ; 2 uses
  %.not23.i201 = icmp eq ptr %i.qr, null
  br i1 %.not23.i201, label %decode_macroblock.exit204, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qs = zext i32 %.0.i198 to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 4, !tbaa !46
  br label %decode_macroblock.exit204

decode_macroblock.exit204:                        ; preds = %bb.ca, %bb.cb, %bb.cc
  %.sroa.0.0.insert.insert.i200 = phi i64 [ %i.qu, %bb.cc ], [ 0, %bb.cb ], [ 0, %bb.ca ] ; 2 uses
  %.sroa.0.0.extract.trunc.i205 = trunc i64 %.sroa.0.0.insert.insert.i200 to i32
  %.sroa.2.0.extract.shift.i206 = lshr i64 %.sroa.0.0.insert.insert.i200, 32
  %.sroa.2.0.extract.trunc.i207 = trunc nuw i64 %.sroa.2.0.extract.shift.i206 to i32
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv399
  %i.qw = and i64 %indvars.iv399, 12
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.qw ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i205, ptr %i.qx, align 4, !tbaa !48
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store i32 %.sroa.2.0.extract.trunc.i207, ptr %i.qy, align 4, !tbaa !48
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bv, %decode_macroblock.exit204
  %.sroa.19.11 = phi i32 [ %.sroa.19.10370, %bb.bv ], [ %.sroa.19.21, %decode_macroblock.exit204 ] ; 2 uses
  %.3311 = phi i32 [ %.2310371, %bb.bv ], [ %.8, %decode_macroblock.exit204 ] ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next400, 16
  br i1 %exitcond402.not, label %.critedge2, label %bb.bv, !llvm.loop !40

bb.ce:                                            ; preds = %.critedge
  %i.qz = icmp sgt i32 %.013.i.i, %spec.select.i191
  %or.cond385 = select i1 %.not153, i1 %i.qz, i1 false
  br i1 %or.cond385, label %.lr.ph361, label %.critedge2

.lr.ph361:                                        ; preds = %bb.ce, %decode_macroblock.exit221
  %.4360 = phi i32 [ %.9, %decode_macroblock.exit221 ], [ %.1309.lcssa, %bb.ce ] ; 3 uses
  %.sroa.19.12359 = phi i32 [ %i.to, %decode_macroblock.exit221 ], [ %spec.select.i191, %bb.ce ] ; 3 uses
  %i.ra = lshr i32 %.sroa.19.12359, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !46
  %spec.select.i208 = add nsw i32 %.sroa.19.12359, 1 ; 5 uses
  %i.re = zext i8 %i.rd to i32
  %i.rf = and i32 %.sroa.19.12359, 7
  %i.rg = shl nuw nsw i32 1, %i.rf
  %i.rh = and i32 %i.rg, %i.re
  %.not154 = icmp eq i32 %i.rh, 0
  br i1 %.not154, label %bb.cf, label %.critedge2

bb.cf:                                            ; preds = %.lr.ph361
  %i.ri = lshr i32 %spec.select.i208, 3
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !46
  %7 = icmp slt i32 %spec.select.i208, %i.n
  %8 = zext i1 %7 to i32
  %spec.select.i.i209 = add i32 %spec.select.i208, %8 ; 5 uses
  %i.rm = zext i8 %i.rl to i32
  %i.rn = and i32 %spec.select.i208, 7
  %i.ro = shl nuw nsw i32 1, %i.rn
  %i.rp = and i32 %i.ro, %i.rm
  %.not.i210 = icmp eq i32 %i.rp, 0
  br i1 %.not.i210, label %._crit_edge.i219, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rq = lshr i32 %spec.select.i.i209, 3
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !46
  %i.ru = icmp slt i32 %spec.select.i.i209, %i.n
  %i.rv = zext i1 %i.ru to i32
  %spec.select.i26.i211 = add i32 %spec.select.i.i209, %i.rv
  %i.rw = zext i8 %i.rt to i32
  %i.rx = and i32 %spec.select.i.i209, 7
  %i.ry = lshr i32 %i.rw, %i.rx
  %i.rz = and i32 %i.ry, 1
  %i.sa = sext i32 %.4360 to i64
  %i.sb = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.sa
  %i.sc = zext nneg i32 %i.rz to i64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !46
  %i.sf = sext i8 %i.se to i32
  br label %._crit_edge.i219

._crit_edge.i219:                                 ; preds = %bb.cf, %bb.cg
  %.sroa.19.22 = phi i32 [ %spec.select.i26.i211, %bb.cg ], [ %spec.select.i.i209, %bb.cf ] ; 4 uses
  %.9 = phi i32 [ %i.sf, %bb.cg ], [ %.4360, %bb.cf ] ; 4 uses
  %i.sg = sext i32 %.9 to i64
  %i.sh = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.sg ; 3 uses
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !52 ; 3 uses
  %.not.i.i212 = icmp eq i32 %i.si, 0
  br i1 %.not.i.i212, label %get_bitsz.exit.i214, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i219
  %i.sj = lshr i32 %.sroa.19.22, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 1, !tbaa !46
  %i.sn = and i32 %.sroa.19.22, 7
  %i.so = lshr i32 %i.sm, %i.sn
  %i.sp = sub i32 32, %i.si
  %i.sq = lshr i32 -1, %i.sp
  %i.sr = and i32 %i.so, %i.sq
  %i.ss = add i32 %i.si, %.sroa.19.22
  %i.st = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ss)
  br label %get_bitsz.exit.i214

get_bitsz.exit.i214:                              ; preds = %bb.ch, %._crit_edge.i219
  %.sroa.19.23 = phi i32 [ %.sroa.19.22, %._crit_edge.i219 ], [ %i.st, %bb.ch ] ; 3 uses
  %i.su = phi i32 [ 0, %._crit_edge.i219 ], [ %i.sr, %bb.ch ] ; 2 uses
  %i.sv = icmp eq i32 %.9, 1
  br i1 %i.sv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %get_bitsz.exit.i214
  %i.sw = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.sx = shl i32 %.0134375, %i.sw
  %i.sy = add i32 %i.sx, %i.su
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %get_bitsz.exit.i214
  %.0.i215 = phi i32 [ %i.sy, %bb.ci ], [ %i.su, %get_bitsz.exit.i214 ] ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !53
  %.not22.i216 = icmp ult i32 %.0.i215, %i.ta
  br i1 %.not22.i216, label %bb.ck, label %decode_macroblock.exit221

bb.ck:                                            ; preds = %bb.cj
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !54 ; 2 uses
  %.not23.i218 = icmp eq ptr %i.tc, null
  br i1 %.not23.i218, label %decode_macroblock.exit221, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.td = zext i32 %.0.i215 to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.td
  %i.tf = load i64, ptr %i.te, align 4, !tbaa !46
  br label %decode_macroblock.exit221

decode_macroblock.exit221:                        ; preds = %bb.cj, %bb.ck, %bb.cl
  %.sroa.0.0.insert.insert.i217 = phi i64 [ %i.tf, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  %i.tg = lshr i32 %.sroa.19.23, 3
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.th
  %i.tj = load i32, ptr %i.ti, align 1, !tbaa !46
  %i.tk = and i32 %.sroa.19.23, 7
  %i.tl = lshr i32 %i.tj, %i.tk                   ; 2 uses
  %i.tm = and i32 %i.tl, 15
  %i.tn = add i32 %.sroa.19.23, 4
  %i.to = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.tn) ; 3 uses
  %.sroa.0.0.extract.trunc.i222 = trunc i64 %.sroa.0.0.insert.insert.i217 to i32
  %.sroa.2.0.extract.shift.i223 = lshr i64 %.sroa.0.0.insert.insert.i217, 32
  %.sroa.2.0.extract.trunc.i224 = trunc nuw i64 %.sroa.2.0.extract.shift.i223 to i32
  %i.tp = zext nneg i32 %i.tm to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tp
  %i.tr = and i32 %i.tl, 12
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.ts ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i222, ptr %i.tt, align 4, !tbaa !48
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store i32 %.sroa.2.0.extract.trunc.i224, ptr %i.tu, align 4, !tbaa !48
  %i.tv = icmp sgt i32 %.013.i.i, %i.to
  br i1 %i.tv, label %.lr.ph361, label %.critedge2, !llvm.loop !41

.critedge2:                                       ; preds = %.lr.ph361, %decode_macroblock.exit221, %bb.cd, %bb.ce
  %.sroa.19.13 = phi i32 [ %.sroa.19.11, %bb.cd ], [ %spec.select.i191, %bb.ce ], [ %i.to, %decode_macroblock.exit221 ], [ %spec.select.i208, %.lr.ph361 ]
  %.5 = phi i32 [ %.3311, %bb.cd ], [ %.1309.lcssa, %bb.ce ], [ %.9, %decode_macroblock.exit221 ], [ %.4360, %.lr.ph361 ]
  %i.tw = getelementptr inbounds [2 x i8], ptr %.0124382, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.tw, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ey, i64 16, i1 false)
  %i.tx = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.tx, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ez, i64 16, i1 false)
  %i.ty = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ty, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.fa, i64 16, i1 false)
  %i.tz = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.tz, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.fb, i64 16, i1 false)
  %i.ua = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ua, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.fc, i64 16, i1 false)
  %i.ub = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ub, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.fd, i64 16, i1 false)
  %i.uc = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uc, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.fe, i64 16, i1 false)
  br label %copy_superblock.exit

copy_superblock.exit:                             ; preds = %.preheader.preheader.i, %.preheader14.preheader.i, %.critedge2
  %.1131326 = phi i32 [ 0, %.critedge2 ], [ %.1131327, %.preheader14.preheader.i ], [ %.1131327, %.preheader.preheader.i ]
  %.sroa.19.14 = phi i32 [ %.sroa.19.13, %.critedge2 ], [ %.sroa.19.5325, %.preheader14.preheader.i ], [ %.sroa.19.5325, %.preheader.preheader.i ] ; 2 uses
  %.6 = phi i32 [ %.5, %.critedge2 ], [ %.0308374, %.preheader14.preheader.i ], [ %.0308374, %.preheader.preheader.i ]
  %i.ud = add i32 %.0132378, 1                    ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.0124382, i64 16
  %.not156 = icmp eq ptr %.0126380, null          ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0126380, i64 16
  %spec.select = select i1 %.not156, ptr null, ptr %i.uf ; 2 uses
  %i.ug = icmp eq i32 %i.ud, %i.h                 ; 3 uses
  %i.uh = getelementptr inbounds [2 x i8], ptr %spec.select, i64 %i.fj
  %.2128 = select i1 %.not156, ptr null, ptr %i.uh
  %.1133 = select i1 %i.ug, i32 0, i32 %i.ud
  %.3129 = select i1 %i.ug, ptr %.2128, ptr %spec.select
  %.1125.idx = select i1 %i.ug, i64 %i.fi, i64 0
  %.1125 = getelementptr inbounds [2 x i8], ptr %i.ue, i64 %.1125.idx
  %i.ui = add i32 %.1131326, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.uj = add nuw i32 %.0134375, 1                ; 2 uses
  %i.uk = load i32, ptr %i.p, align 8, !tbaa !32
  %i.ul = icmp ult i32 %i.uj, %i.uk
  br i1 %i.ul, label %bb.x, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %copy_superblock.exit, %bb.w
  %.sroa.19.4.lcssa = phi i32 [ %.sroa.19.3, %bb.w ], [ %.sroa.19.14, %copy_superblock.exit ]
  %i.um = sdiv i32 %.sroa.19.4.lcssa, 8
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %i.ag, i32 noundef %i.c, i32 noundef %i.um) #6
  %i.un = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.uo = tail call i32 @av_frame_replace(ptr noundef %i.un, ptr noundef nonnull %1) #6 ; 2 uses
  %i.up = icmp slt i32 %i.uo, 0
  br i1 %i.up, label %.thread, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !48
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p, %bb.i, %bb.o, %bb.t, %._crit_edge, %bb.v, %bb.e, %bb.d, %bb.b, %bb.a, %bb.cm
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.a ], [ -12, %bb.t ], [ -1094995529, %bb.d ], [ %i.ek, %bb.v ], [ 0, %bb.cm ], [ %., %bb.e ], [ %i.uo, %._crit_edge ], [ -1094995529, %bb.o ], [ -1094995529, %bb.i ], [ -1094995529, %bb.p ], [ -1094995529, %bb.q ]
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @escape124_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !57

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_free(ptr noundef nonnull %i.b) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_2
