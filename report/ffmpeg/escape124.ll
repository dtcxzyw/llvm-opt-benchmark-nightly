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
  %4 = alloca %union.SuperBlock, align 16         ; 22 uses
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
  %i.n = add nuw nsw i32 %.013.i.i, 8             ; 23 uses
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
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.ex = load ptr, ptr %1, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.idx21.i177 = shl nsw i64 %i.eu, 2             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.idx23.i178 = mul nsw i64 %i.eu, 6             ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.idx25.i179 = shl nsw i64 %i.eu, 3             ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.idx27.i180 = mul nsw i64 %i.eu, 10            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %.idx29.i181 = mul nsw i64 %i.eu, 12            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %.idx31.i182 = mul nsw i64 %i.eu, 14            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %.not153 = trunc i32 %i.y to i1
  %.idx.i227 = shl nsw i64 %i.ep, 2               ; 3 uses
  %.idx22.i228 = mul nsw i64 %i.ep, 6             ; 3 uses
  %.idx24.i229 = shl nsw i64 %i.ep, 3             ; 4 uses
  %.idx26.i230 = mul nsw i64 %i.ep, 10            ; 3 uses
  %.idx28.i231 = mul nsw i64 %i.ep, 12            ; 3 uses
  %.idx30.i232 = mul nsw i64 %i.ep, 14            ; 3 uses
  %i.fg = shl nsw i32 %i.h, 3
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = sub nsw i64 %.idx24.i229, %i.fh
  %i.fj = sub nsw i64 %.idx25.i179, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph383, %copy_superblock.exit
  %.0124382 = phi ptr [ %i.ex, %.lr.ph383 ], [ %.1125, %copy_superblock.exit ] ; 24 uses
  %.0126380 = phi ptr [ %i.ew, %.lr.ph383 ], [ %.3129, %copy_superblock.exit ] ; 20 uses
  %.0130379 = phi i32 [ -1, %.lr.ph383 ], [ %i.uo, %copy_superblock.exit ] ; 2 uses
  %.0132378 = phi i32 [ 0, %.lr.ph383 ], [ %.1133, %copy_superblock.exit ]
  %.0134375 = phi i32 [ 0, %.lr.ph383 ], [ %i.up, %copy_superblock.exit ] ; 4 uses
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
  %i.fq = lshr i32 %.sroa.19.4373, 3
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !46
  %spec.select.i.i = add nsw i32 %.sroa.19.4373, 1 ; 3 uses
  %i.fu = zext i8 %i.ft to i32
  %i.fv = and i32 %.sroa.19.4373, 7
  %i.fw = shl nuw nsw i32 1, %i.fv
  %i.fx = and i32 %i.fw, %i.fu
  %.not.i172 = icmp eq i32 %i.fx, 0
  br i1 %.not.i172, label %decode_skip_count.exit.thread328, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = lshr i32 %spec.select.i.i, 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 1, !tbaa !46
  %i.gc = and i32 %spec.select.i.i, 7
  %i.gd = lshr i32 %i.gb, %i.gc
  %i.ge = and i32 %i.gd, 7
  %i.gf = add nsw i32 %.sroa.19.4373, 4
  %i.gg = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.gf) ; 4 uses
  %i.gh = add nuw nsw i32 %i.ge, 1                ; 2 uses
  %.not19.i173 = icmp eq i32 %i.gh, 8
  br i1 %.not19.i173, label %bb.ab, label %decode_skip_count.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.gi = lshr i32 %i.gg, 3
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 1, !tbaa !46
  %i.gm = and i32 %i.gg, 7
  %i.gn = lshr i32 %i.gl, %i.gm
  %i.go = and i32 %i.gn, 127
  %i.gp = add nuw i32 %i.gg, 7
  %i.gq = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.gp) ; 4 uses
  %i.gr = add nuw nsw i32 %i.go, 8                ; 2 uses
  %.not20.i = icmp eq i32 %i.gr, 135
  br i1 %.not20.i, label %bb.ac, label %decode_skip_count.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.gs = lshr i32 %i.gq, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 1, !tbaa !46
  %i.gw = and i32 %i.gq, 7
  %i.gx = lshr i32 %i.gv, %i.gw
  %i.gy = and i32 %i.gx, 4095
  %i.gz = add nuw i32 %i.gq, 12
  %i.ha = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.gz)
  %i.hb = add nuw nsw i32 %i.gy, 135
  br label %decode_skip_count.exit.thread

decode_skip_count.exit.thread:                    ; preds = %bb.x, %bb.ab, %bb.ac, %bb.aa, %bb.y
  %.1131327 = phi i32 [ %.0130379, %bb.x ], [ %i.gr, %bb.ab ], [ %i.hb, %bb.ac ], [ %i.gh, %bb.aa ], [ -1, %bb.y ] ; 2 uses
  %.sroa.19.5325 = phi i32 [ %.sroa.19.4373, %bb.x ], [ %i.gq, %bb.ab ], [ %i.ha, %bb.ac ], [ %i.gg, %bb.aa ], [ %.sroa.19.4373, %bb.y ] ; 2 uses
  %.not.i174 = icmp eq ptr %.0126380, null
  %i.hc = getelementptr inbounds [2 x i8], ptr %.0124382, i64 %i.ep ; 2 uses
  br i1 %.not.i174, label %.preheader.preheader.i, label %.preheader14.preheader.i

.preheader14.preheader.i:                         ; preds = %decode_skip_count.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, ptr noundef nonnull readonly align 2 dereferenceable(16) %.0126380, i64 16, i1 false)
  %i.hd = getelementptr inbounds [2 x i8], ptr %.0126380, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hc, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hd, i64 16, i1 false)
  %i.he = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  %i.hf = getelementptr inbounds i8, ptr %.0126380, i64 %.idx21.i177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.he, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hf, i64 16, i1 false)
  %i.hg = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  %i.hh = getelementptr inbounds i8, ptr %.0126380, i64 %.idx23.i178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hg, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hh, i64 16, i1 false)
  %i.hi = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  %i.hj = getelementptr inbounds i8, ptr %.0126380, i64 %.idx25.i179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hi, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hj, i64 16, i1 false)
  %i.hk = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  %i.hl = getelementptr inbounds i8, ptr %.0126380, i64 %.idx27.i180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hk, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hl, i64 16, i1 false)
  %i.hm = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  %i.hn = getelementptr inbounds i8, ptr %.0126380, i64 %.idx29.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hm, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hn, i64 16, i1 false)
  %i.ho = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  %i.hp = getelementptr inbounds i8, ptr %.0126380, i64 %.idx31.i182
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ho, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hp, i64 16, i1 false)
  br label %copy_superblock.exit

.preheader.preheader.i:                           ; preds = %decode_skip_count.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false)
  %i.hq = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false)
  %i.hr = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  %i.hs = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hs, i8 0, i64 16, i1 false)
  %i.ht = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false)
  %i.hu = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  %i.hv = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false)
  br label %copy_superblock.exit

decode_skip_count.exit.thread328:                 ; preds = %bb.x, %bb.z
  %.sroa.19.5332 = phi i32 [ %.sroa.19.4373, %bb.x ], [ %spec.select.i.i, %bb.z ] ; 3 uses
  %.not.i175 = icmp eq ptr %.0126380, null
  br i1 %.not.i175, label %.preheader.preheader.i183, label %.preheader14.preheader.i176

.preheader14.preheader.i176:                      ; preds = %decode_skip_count.exit.thread328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull readonly align 2 dereferenceable(16) %.0126380, i64 16, i1 false)
  %i.hw = getelementptr inbounds [2 x i8], ptr %.0126380, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ey, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hw, i64 16, i1 false)
  %i.hx = getelementptr inbounds i8, ptr %.0126380, i64 %.idx21.i177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ez, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hx, i64 16, i1 false)
  %i.hy = getelementptr inbounds i8, ptr %.0126380, i64 %.idx23.i178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fa, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hy, i64 16, i1 false)
  %i.hz = getelementptr inbounds i8, ptr %.0126380, i64 %.idx25.i179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fb, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.hz, i64 16, i1 false)
  %i.ia = getelementptr inbounds i8, ptr %.0126380, i64 %.idx27.i180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ia, i64 16, i1 false)
  %i.ib = getelementptr inbounds i8, ptr %.0126380, i64 %.idx29.i181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fd, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ib, i64 16, i1 false)
  %i.ic = getelementptr inbounds i8, ptr %.0126380, i64 %.idx31.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fe, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ic, i64 16, i1 false)
  br label %copy_superblock.exit184

.preheader.preheader.i183:                        ; preds = %decode_skip_count.exit.thread328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  br label %copy_superblock.exit184

copy_superblock.exit184:                          ; preds = %.preheader14.preheader.i176, %.preheader.preheader.i183
  %i.id = icmp sgt i32 %.013.i.i, %.sroa.19.5332
  br i1 %i.id, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %copy_superblock.exit184
  %i.ie = load <4 x i32>, ptr %4, align 16
  %i.if = load <4 x i32>, ptr %i.ey, align 16
  %i.ig = load <4 x i32>, ptr %i.fk, align 16
  %i.ih = load <4 x i32>, ptr %i.fl, align 16
  %i.ii = load <4 x i32>, ptr %i.fm, align 16
  %i.ij = load <4 x i32>, ptr %i.fn, align 16
  %i.ik = load <4 x i32>, ptr %i.fo, align 16
  %i.il = load <4 x i32>, ptr %i.fp, align 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %decode_macroblock.exit
  %.0118352 = phi i32 [ %i.me, %decode_macroblock.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.1309351 = phi i32 [ %.7, %decode_macroblock.exit ], [ %.0308374, %.lr.ph.preheader ] ; 3 uses
  %.sroa.19.6350 = phi i32 [ %i.md, %decode_macroblock.exit ], [ %.sroa.19.5332, %.lr.ph.preheader ] ; 4 uses
  %i.im = phi <4 x i32> [ %i.lp, %decode_macroblock.exit ], [ %i.ie, %.lr.ph.preheader ] ; 2 uses
  %i.in = phi <4 x i32> [ %i.lm, %decode_macroblock.exit ], [ %i.if, %.lr.ph.preheader ] ; 2 uses
  %i.io = phi <4 x i32> [ %i.lt, %decode_macroblock.exit ], [ %i.ig, %.lr.ph.preheader ] ; 2 uses
  %i.ip = phi <4 x i32> [ %i.ls, %decode_macroblock.exit ], [ %i.ih, %.lr.ph.preheader ] ; 2 uses
  %i.iq = phi <4 x i32> [ %i.lx, %decode_macroblock.exit ], [ %i.ii, %.lr.ph.preheader ] ; 2 uses
  %i.ir = phi <4 x i32> [ %i.lw, %decode_macroblock.exit ], [ %i.ij, %.lr.ph.preheader ] ; 2 uses
  %i.is = phi <4 x i32> [ %i.mb, %decode_macroblock.exit ], [ %i.ik, %.lr.ph.preheader ] ; 2 uses
  %i.it = phi <4 x i32> [ %i.ma, %decode_macroblock.exit ], [ %i.il, %.lr.ph.preheader ] ; 2 uses
  %i.iu = lshr i32 %.sroa.19.6350, 3
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !46
  %spec.select.i185 = add nsw i32 %.sroa.19.6350, 1 ; 3 uses
  %i.iy = zext i8 %i.ix to i32
  %i.iz = and i32 %.sroa.19.6350, 7
  %i.ja = shl nuw nsw i32 1, %i.iz
  %i.jb = and i32 %i.ja, %i.iy
  %.not149 = icmp eq i32 %i.jb, 0
  br i1 %.not149, label %bb.ad, label %.critedge.loopexit

bb.ad:                                            ; preds = %.lr.ph
  %i.jc = lshr i32 %spec.select.i185, 3
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !46
  %spec.select.i.i186 = add i32 %.sroa.19.6350, 2 ; 5 uses
  %i.jg = zext i8 %i.jf to i32
  %i.jh = and i32 %spec.select.i185, 7
  %i.ji = shl nuw nsw i32 1, %i.jh
  %i.jj = and i32 %i.ji, %i.jg
  %.not.i187 = icmp eq i32 %i.jj, 0
  br i1 %.not.i187, label %._crit_edge.i190, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jk = lshr i32 %spec.select.i.i186, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !46
  %i.jo = icmp slt i32 %spec.select.i.i186, %i.n
  %i.jp = zext i1 %i.jo to i32
  %spec.select.i26.i = add i32 %spec.select.i.i186, %i.jp
  %i.jq = zext i8 %i.jn to i32
  %i.jr = and i32 %spec.select.i.i186, 7
  %i.js = lshr i32 %i.jq, %i.jr
  %i.jt = and i32 %i.js, 1
  %i.ju = sext i32 %.1309351 to i64
  %i.jv = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.ju
  %i.jw = zext nneg i32 %i.jt to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !46
  %i.jz = sext i8 %i.jy to i32
  br label %._crit_edge.i190

._crit_edge.i190:                                 ; preds = %bb.ad, %bb.ae
  %.sroa.19.18 = phi i32 [ %spec.select.i26.i, %bb.ae ], [ %spec.select.i.i186, %bb.ad ] ; 4 uses
  %.7 = phi i32 [ %i.jz, %bb.ae ], [ %.1309351, %bb.ad ] ; 4 uses
  %i.ka = sext i32 %.7 to i64
  %i.kb = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ka ; 3 uses
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !52 ; 3 uses
  %.not.i.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i, label %get_bitsz.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i190
  %i.kd = lshr i32 %.sroa.19.18, 3
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 1, !tbaa !46
  %i.kh = and i32 %.sroa.19.18, 7
  %i.ki = lshr i32 %i.kg, %i.kh
  %i.kj = sub i32 32, %i.kc
  %i.kk = lshr i32 -1, %i.kj
  %i.kl = and i32 %i.ki, %i.kk
  %i.km = add i32 %i.kc, %.sroa.19.18
  %i.kn = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.km)
  br label %get_bitsz.exit.i

get_bitsz.exit.i:                                 ; preds = %bb.af, %._crit_edge.i190
  %.sroa.19.19 = phi i32 [ %.sroa.19.18, %._crit_edge.i190 ], [ %i.kn, %bb.af ] ; 3 uses
  %i.ko = phi i32 [ 0, %._crit_edge.i190 ], [ %i.kl, %bb.af ] ; 2 uses
  %i.kp = icmp eq i32 %.7, 1
  br i1 %i.kp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %get_bitsz.exit.i
  %i.kq = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.kr = shl i32 %.0134375, %i.kq
  %i.ks = add i32 %i.kr, %i.ko
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %get_bitsz.exit.i
  %.0.i188 = phi i32 [ %i.ks, %bb.ag ], [ %i.ko, %get_bitsz.exit.i ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !53
  %.not22.i189 = icmp ult i32 %.0.i188, %i.ku
  br i1 %.not22.i189, label %bb.ai, label %decode_macroblock.exit

bb.ai:                                            ; preds = %bb.ah
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !54 ; 2 uses
  %.not23.i = icmp eq ptr %i.kw, null
  br i1 %.not23.i, label %decode_macroblock.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kx = zext i32 %.0.i188 to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 4, !tbaa !46
  br label %decode_macroblock.exit

decode_macroblock.exit:                           ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.kz, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.la = lshr i32 %.sroa.19.19, 3
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 1, !tbaa !46
  %i.le = and i32 %.sroa.19.19, 7
  %i.lf = lshr i32 %i.ld, %i.le                   ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.lg = insertelement <4 x i32> poison, i32 %i.lf, i64 0
  %i.lh = shufflevector <4 x i32> %i.lg, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.li = and <4 x i32> %i.lh, <i32 1, i32 2, i32 16, i32 32>
  %i.lj = icmp eq <4 x i32> %i.li, zeroinitializer ; 2 uses
  %i.lk = insertelement <4 x i32> poison, i32 %.sroa.2.0.extract.trunc.i, i64 0
  %i.ll = shufflevector <4 x i32> %i.lk, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lm = select <4 x i1> %i.lj, <4 x i32> %i.in, <4 x i32> %i.ll ; 2 uses
  %i.ln = insertelement <4 x i32> poison, i32 %.sroa.0.0.extract.trunc.i, i64 0
  %i.lo = shufflevector <4 x i32> %i.ln, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lp = select <4 x i1> %i.lj, <4 x i32> %i.im, <4 x i32> %i.lo ; 2 uses
  %i.lq = and <4 x i32> %i.lh, <i32 4, i32 8, i32 64, i32 128>
  %i.lr = icmp eq <4 x i32> %i.lq, zeroinitializer ; 2 uses
  %i.ls = select <4 x i1> %i.lr, <4 x i32> %i.ip, <4 x i32> %i.ll ; 2 uses
  %i.lt = select <4 x i1> %i.lr, <4 x i32> %i.io, <4 x i32> %i.lo ; 2 uses
  %i.lu = and <4 x i32> %i.lh, <i32 256, i32 512, i32 4096, i32 8192>
  %i.lv = icmp eq <4 x i32> %i.lu, zeroinitializer ; 2 uses
  %i.lw = select <4 x i1> %i.lv, <4 x i32> %i.ir, <4 x i32> %i.ll ; 2 uses
  %i.lx = select <4 x i1> %i.lv, <4 x i32> %i.iq, <4 x i32> %i.lo ; 2 uses
  %i.ly = and <4 x i32> %i.lh, <i32 1024, i32 2048, i32 16384, i32 32768>
  %i.lz = icmp eq <4 x i32> %i.ly, zeroinitializer ; 2 uses
  %i.ma = select <4 x i1> %i.lz, <4 x i32> %i.it, <4 x i32> %i.ll ; 2 uses
  %i.mb = select <4 x i1> %i.lz, <4 x i32> %i.is, <4 x i32> %i.lo ; 2 uses
  %i.mc = add i32 %.sroa.19.19, 16
  %i.md = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.mc) ; 3 uses
  %i.me = or i32 %i.lf, %.0118352                 ; 2 uses
  %i.mf = icmp sgt i32 %.013.i.i, %i.md
  br i1 %i.mf, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !39

.critedge.loopexit:                               ; preds = %decode_macroblock.exit, %.lr.ph
  %.1309.lcssa.ph = phi i32 [ %.7, %decode_macroblock.exit ], [ %.1309351, %.lr.ph ]
  %.0118.lcssa.ph = phi i32 [ %i.me, %decode_macroblock.exit ], [ %.0118352, %.lr.ph ]
  %.sroa.19.7.ph = phi i32 [ %i.md, %decode_macroblock.exit ], [ %spec.select.i185, %.lr.ph ]
  %i.mg = phi <4 x i32> [ %i.lp, %decode_macroblock.exit ], [ %i.im, %.lr.ph ]
  %i.mh = phi <4 x i32> [ %i.lm, %decode_macroblock.exit ], [ %i.in, %.lr.ph ]
  %i.mi = phi <4 x i32> [ %i.lt, %decode_macroblock.exit ], [ %i.io, %.lr.ph ]
  %i.mj = phi <4 x i32> [ %i.ls, %decode_macroblock.exit ], [ %i.ip, %.lr.ph ]
  %i.mk = phi <4 x i32> [ %i.lx, %decode_macroblock.exit ], [ %i.iq, %.lr.ph ]
  %i.ml = phi <4 x i32> [ %i.lw, %decode_macroblock.exit ], [ %i.ir, %.lr.ph ]
  %i.mm = phi <4 x i32> [ %i.mb, %decode_macroblock.exit ], [ %i.is, %.lr.ph ]
  %i.mn = phi <4 x i32> [ %i.ma, %decode_macroblock.exit ], [ %i.it, %.lr.ph ]
  store <4 x i32> %i.mg, ptr %4, align 16
  store <4 x i32> %i.mh, ptr %i.ey, align 16
  store <4 x i32> %i.mi, ptr %i.fk, align 16
  store <4 x i32> %i.mj, ptr %i.fl, align 16
  store <4 x i32> %i.mk, ptr %i.fm, align 16
  store <4 x i32> %i.ml, ptr %i.fn, align 16
  store <4 x i32> %i.mm, ptr %i.fo, align 16
  store <4 x i32> %i.mn, ptr %i.fp, align 16
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %copy_superblock.exit184
  %.1309.lcssa = phi i32 [ %.0308374, %copy_superblock.exit184 ], [ %.1309.lcssa.ph, %.critedge.loopexit ] ; 3 uses
  %.0118.lcssa = phi i32 [ 0, %copy_superblock.exit184 ], [ %.0118.lcssa.ph, %.critedge.loopexit ]
  %.sroa.19.7 = phi i32 [ %.sroa.19.5332, %copy_superblock.exit184 ], [ %.sroa.19.7.ph, %.critedge.loopexit ] ; 4 uses
  %i.mo = lshr i32 %.sroa.19.7, 3
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !46
  %i.ms = icmp slt i32 %.sroa.19.7, %i.n
  %i.mt = zext i1 %i.ms to i32
  %spec.select.i191 = add i32 %.sroa.19.7, %i.mt  ; 6 uses
  %i.mu = zext i8 %i.mr to i32
  %i.mv = and i32 %.sroa.19.7, 7
  %i.mw = shl nuw nsw i32 1, %i.mv
  %i.mx = and i32 %i.mw, %i.mu
  %.not150 = icmp eq i32 %i.mx, 0
  br i1 %.not150, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %.critedge
  %i.my = lshr i32 %spec.select.i191, 3
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 1, !tbaa !46
  %i.nc = and i32 %spec.select.i191, 7
  %i.nd = lshr i32 %i.nb, %i.nc                   ; 4 uses
  %i.ne = add i32 %spec.select.i191, 4
  %i.nf = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ne) ; 4 uses
  %i.ng = and i32 %i.nd, 1
  %.not152 = icmp eq i32 %i.ng, 0
  br i1 %.not152, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.nh = lshr i32 %i.nf, 3
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 1, !tbaa !46
  %i.nl = and i32 %i.nf, 7
  %i.nm = lshr i32 %i.nk, %i.nl
  %i.nn = and i32 %i.nm, 15
  %i.no = add nuw i32 %i.nf, 4
  %i.np = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.no)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.19.9 = phi i32 [ %i.np, %bb.al ], [ %i.nf, %bb.ak ] ; 4 uses
  %.pn = phi i32 [ %i.nn, %bb.al ], [ 15, %bb.ak ]
  %.2120 = xor i32 %.pn, %.0118.lcssa
  %i.nq = and i32 %i.nd, 2
  %.not152.1 = icmp eq i32 %i.nq, 0
  br i1 %.not152.1, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nr = lshr i32 %.sroa.19.9, 3
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 1, !tbaa !46
  %i.nv = and i32 %.sroa.19.9, 7
  %i.nw = lshr i32 %i.nu, %i.nv
  %i.nx = add i32 %.sroa.19.9, 4
  %i.ny = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.nx)
  %i.nz = shl i32 %i.nw, 4
  %i.oa = and i32 %i.nz, 240
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sroa.19.9.1 = phi i32 [ %i.ny, %bb.an ], [ %.sroa.19.9, %bb.am ] ; 4 uses
  %.pn.1 = phi i32 [ %i.oa, %bb.an ], [ 240, %bb.am ]
  %.2120.1 = xor i32 %.pn.1, %.2120
  %i.ob = and i32 %i.nd, 4
  %.not152.2 = icmp eq i32 %i.ob, 0
  br i1 %.not152.2, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.oc = lshr i32 %.sroa.19.9.1, 3
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 1, !tbaa !46
  %i.og = and i32 %.sroa.19.9.1, 7
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = add i32 %.sroa.19.9.1, 4
  %i.oj = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.oi)
  %i.ok = shl i32 %i.oh, 8
  %i.ol = and i32 %i.ok, 3840
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.sroa.19.9.2 = phi i32 [ %i.oj, %bb.ap ], [ %.sroa.19.9.1, %bb.ao ] ; 4 uses
  %.pn.2 = phi i32 [ %i.ol, %bb.ap ], [ 3840, %bb.ao ]
  %.2120.2 = xor i32 %.pn.2, %.2120.1
  %i.om = and i32 %i.nd, 8
  %.not152.3 = icmp eq i32 %i.om, 0
  br i1 %.not152.3, label %bb.ar, label %.preheader

bb.ar:                                            ; preds = %bb.aq
  %i.on = lshr i32 %.sroa.19.9.2, 3
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 1, !tbaa !46
  %i.or = and i32 %.sroa.19.9.2, 7
  %i.os = lshr i32 %i.oq, %i.or
  %i.ot = add i32 %.sroa.19.9.2, 4
  %i.ou = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ot)
  %i.ov = shl i32 %i.os, 12
  %i.ow = and i32 %i.ov, 61440
  br label %.preheader

.preheader:                                       ; preds = %bb.aq, %bb.ar
  %.sroa.19.9.3 = phi i32 [ %i.ou, %bb.ar ], [ %.sroa.19.9.2, %bb.aq ]
  %.pn.3 = phi i32 [ %i.ow, %bb.ar ], [ 61440, %bb.aq ]
  %.2120.3 = xor i32 %.pn.3, %.2120.2
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.ba
  %indvars.iv399 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next400, %bb.ba ] ; 4 uses
  %.2310371 = phi i32 [ %.1309.lcssa, %.preheader ], [ %.3311, %bb.ba ] ; 3 uses
  %.sroa.19.10370 = phi i32 [ %.sroa.19.9.3, %.preheader ], [ %.sroa.19.11, %bb.ba ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr @mask_matrix, i64 %indvars.iv399
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !56
  %i.oz = zext i16 %i.oy to i32
  %i.pa = and i32 %.2120.3, %i.oz
  %.not151 = icmp eq i32 %i.pa, 0
  br i1 %.not151, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pb = lshr i32 %.sroa.19.10370, 3
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !46
  %i.pf = icmp slt i32 %.sroa.19.10370, %i.n
  %i.pg = zext i1 %i.pf to i32
  %spec.select.i.i192 = add i32 %.sroa.19.10370, %i.pg ; 5 uses
  %i.ph = zext i8 %i.pe to i32
  %i.pi = and i32 %.sroa.19.10370, 7
  %i.pj = shl nuw nsw i32 1, %i.pi
  %i.pk = and i32 %i.pj, %i.ph
  %.not.i193 = icmp eq i32 %i.pk, 0
  br i1 %.not.i193, label %._crit_edge.i202, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.pl = lshr i32 %spec.select.i.i192, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !46
  %i.pp = icmp slt i32 %spec.select.i.i192, %i.n
  %i.pq = zext i1 %i.pp to i32
  %spec.select.i26.i194 = add i32 %spec.select.i.i192, %i.pq
  %i.pr = zext i8 %i.po to i32
  %i.ps = and i32 %spec.select.i.i192, 7
  %i.pt = lshr i32 %i.pr, %i.ps
  %i.pu = and i32 %i.pt, 1
  %i.pv = sext i32 %.2310371 to i64
  %i.pw = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.pv
  %i.px = zext nneg i32 %i.pu to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !46
  %i.qa = sext i8 %i.pz to i32
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %bb.at, %bb.au
  %.sroa.19.20 = phi i32 [ %spec.select.i26.i194, %bb.au ], [ %spec.select.i.i192, %bb.at ] ; 4 uses
  %.8 = phi i32 [ %i.qa, %bb.au ], [ %.2310371, %bb.at ] ; 3 uses
  %i.qb = sext i32 %.8 to i64
  %i.qc = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.qb ; 3 uses
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !52 ; 3 uses
  %.not.i.i195 = icmp eq i32 %i.qd, 0
  br i1 %.not.i.i195, label %get_bitsz.exit.i197, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i202
  %i.qe = lshr i32 %.sroa.19.20, 3
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 1, !tbaa !46
  %i.qi = and i32 %.sroa.19.20, 7
  %i.qj = lshr i32 %i.qh, %i.qi
  %i.qk = sub i32 32, %i.qd
  %i.ql = lshr i32 -1, %i.qk
  %i.qm = and i32 %i.qj, %i.ql
  %i.qn = add i32 %i.qd, %.sroa.19.20
  %i.qo = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.qn)
  br label %get_bitsz.exit.i197

get_bitsz.exit.i197:                              ; preds = %bb.av, %._crit_edge.i202
  %.sroa.19.21 = phi i32 [ %.sroa.19.20, %._crit_edge.i202 ], [ %i.qo, %bb.av ]
  %i.qp = phi i32 [ 0, %._crit_edge.i202 ], [ %i.qm, %bb.av ] ; 2 uses
  %i.qq = icmp eq i32 %.8, 1
  br i1 %i.qq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %get_bitsz.exit.i197
  %i.qr = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.qs = shl i32 %.0134375, %i.qr
  %i.qt = add i32 %i.qs, %i.qp
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %get_bitsz.exit.i197
  %.0.i198 = phi i32 [ %i.qt, %bb.aw ], [ %i.qp, %get_bitsz.exit.i197 ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !53
  %.not22.i199 = icmp ult i32 %.0.i198, %i.qv
  br i1 %.not22.i199, label %bb.ay, label %decode_macroblock.exit204

bb.ay:                                            ; preds = %bb.ax
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !54 ; 2 uses
  %.not23.i201 = icmp eq ptr %i.qx, null
  br i1 %.not23.i201, label %decode_macroblock.exit204, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qy = zext i32 %.0.i198 to i64
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.qy
  %i.ra = load i64, ptr %i.qz, align 4, !tbaa !46
  br label %decode_macroblock.exit204

decode_macroblock.exit204:                        ; preds = %bb.ax, %bb.ay, %bb.az
  %.sroa.0.0.insert.insert.i200 = phi i64 [ %i.ra, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.0.0.extract.trunc.i205 = trunc i64 %.sroa.0.0.insert.insert.i200 to i32
  %.sroa.2.0.extract.shift.i206 = lshr i64 %.sroa.0.0.insert.insert.i200, 32
  %.sroa.2.0.extract.trunc.i207 = trunc nuw i64 %.sroa.2.0.extract.shift.i206 to i32
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv399
  %i.rc = and i64 %indvars.iv399, 12
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rc ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i205, ptr %i.rd, align 4, !tbaa !48
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store i32 %.sroa.2.0.extract.trunc.i207, ptr %i.re, align 4, !tbaa !48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.as, %decode_macroblock.exit204
  %.sroa.19.11 = phi i32 [ %.sroa.19.10370, %bb.as ], [ %.sroa.19.21, %decode_macroblock.exit204 ] ; 2 uses
  %.3311 = phi i32 [ %.2310371, %bb.as ], [ %.8, %decode_macroblock.exit204 ] ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next400, 16
  br i1 %exitcond402.not, label %.critedge2, label %bb.as, !llvm.loop !40

bb.bb:                                            ; preds = %.critedge
  %i.rf = icmp sgt i32 %.013.i.i, %spec.select.i191
  %or.cond385 = select i1 %.not153, i1 %i.rf, i1 false
  br i1 %or.cond385, label %.lr.ph361, label %.critedge2

.lr.ph361:                                        ; preds = %bb.bb, %decode_macroblock.exit221
  %.4360 = phi i32 [ %.9, %decode_macroblock.exit221 ], [ %.1309.lcssa, %bb.bb ] ; 3 uses
  %.sroa.19.12359 = phi i32 [ %i.tu, %decode_macroblock.exit221 ], [ %spec.select.i191, %bb.bb ] ; 4 uses
  %i.rg = lshr i32 %.sroa.19.12359, 3
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !46
  %spec.select.i208 = add nsw i32 %.sroa.19.12359, 1 ; 3 uses
  %i.rk = zext i8 %i.rj to i32
  %i.rl = and i32 %.sroa.19.12359, 7
  %i.rm = shl nuw nsw i32 1, %i.rl
  %i.rn = and i32 %i.rm, %i.rk
  %.not154 = icmp eq i32 %i.rn, 0
  br i1 %.not154, label %bb.bc, label %.critedge2

bb.bc:                                            ; preds = %.lr.ph361
  %i.ro = lshr i32 %spec.select.i208, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !46
  %spec.select.i.i209 = add i32 %.sroa.19.12359, 2 ; 5 uses
  %i.rs = zext i8 %i.rr to i32
  %i.rt = and i32 %spec.select.i208, 7
  %i.ru = shl nuw nsw i32 1, %i.rt
  %i.rv = and i32 %i.ru, %i.rs
  %.not.i210 = icmp eq i32 %i.rv, 0
  br i1 %.not.i210, label %._crit_edge.i219, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.rw = lshr i32 %spec.select.i.i209, 3
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !46
  %i.sa = icmp slt i32 %spec.select.i.i209, %i.n
  %i.sb = zext i1 %i.sa to i32
  %spec.select.i26.i211 = add i32 %spec.select.i.i209, %i.sb
  %i.sc = zext i8 %i.rz to i32
  %i.sd = and i32 %spec.select.i.i209, 7
  %i.se = lshr i32 %i.sc, %i.sd
  %i.sf = and i32 %i.se, 1
  %i.sg = sext i32 %.4360 to i64
  %i.sh = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.sg
  %i.si = zext nneg i32 %i.sf to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !46
  %i.sl = sext i8 %i.sk to i32
  br label %._crit_edge.i219

._crit_edge.i219:                                 ; preds = %bb.bc, %bb.bd
  %.sroa.19.22 = phi i32 [ %spec.select.i26.i211, %bb.bd ], [ %spec.select.i.i209, %bb.bc ] ; 4 uses
  %.9 = phi i32 [ %i.sl, %bb.bd ], [ %.4360, %bb.bc ] ; 4 uses
  %i.sm = sext i32 %.9 to i64
  %i.sn = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.sm ; 3 uses
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !52 ; 3 uses
  %.not.i.i212 = icmp eq i32 %i.so, 0
  br i1 %.not.i.i212, label %get_bitsz.exit.i214, label %bb.be

bb.be:                                            ; preds = %._crit_edge.i219
  %i.sp = lshr i32 %.sroa.19.22, 3
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 1, !tbaa !46
  %i.st = and i32 %.sroa.19.22, 7
  %i.su = lshr i32 %i.ss, %i.st
  %i.sv = sub i32 32, %i.so
  %i.sw = lshr i32 -1, %i.sv
  %i.sx = and i32 %i.su, %i.sw
  %i.sy = add i32 %i.so, %.sroa.19.22
  %i.sz = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.sy)
  br label %get_bitsz.exit.i214

get_bitsz.exit.i214:                              ; preds = %bb.be, %._crit_edge.i219
  %.sroa.19.23 = phi i32 [ %.sroa.19.22, %._crit_edge.i219 ], [ %i.sz, %bb.be ] ; 3 uses
  %i.ta = phi i32 [ 0, %._crit_edge.i219 ], [ %i.sx, %bb.be ] ; 2 uses
  %i.tb = icmp eq i32 %.9, 1
  br i1 %i.tb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %get_bitsz.exit.i214
  %i.tc = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.td = shl i32 %.0134375, %i.tc
  %i.te = add i32 %i.td, %i.ta
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %get_bitsz.exit.i214
  %.0.i215 = phi i32 [ %i.te, %bb.bf ], [ %i.ta, %get_bitsz.exit.i214 ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !53
  %.not22.i216 = icmp ult i32 %.0.i215, %i.tg
  br i1 %.not22.i216, label %bb.bh, label %decode_macroblock.exit221

bb.bh:                                            ; preds = %bb.bg
  %i.th = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !54 ; 2 uses
  %.not23.i218 = icmp eq ptr %i.ti, null
  br i1 %.not23.i218, label %decode_macroblock.exit221, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tj = zext i32 %.0.i215 to i64
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = load i64, ptr %i.tk, align 4, !tbaa !46
  br label %decode_macroblock.exit221

decode_macroblock.exit221:                        ; preds = %bb.bg, %bb.bh, %bb.bi
  %.sroa.0.0.insert.insert.i217 = phi i64 [ %i.tl, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.tm = lshr i32 %.sroa.19.23, 3
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 1, !tbaa !46
  %i.tq = and i32 %.sroa.19.23, 7
  %i.tr = lshr i32 %i.tp, %i.tq                   ; 2 uses
  %i.ts = and i32 %i.tr, 15
  %i.tt = add i32 %.sroa.19.23, 4
  %i.tu = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.tt) ; 3 uses
  %.sroa.0.0.extract.trunc.i222 = trunc i64 %.sroa.0.0.insert.insert.i217 to i32
  %.sroa.2.0.extract.shift.i223 = lshr i64 %.sroa.0.0.insert.insert.i217, 32
  %.sroa.2.0.extract.trunc.i224 = trunc nuw i64 %.sroa.2.0.extract.shift.i223 to i32
  %i.tv = zext nneg i32 %i.ts to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tv
  %i.tx = and i32 %i.tr, 12
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.ty ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i222, ptr %i.tz, align 4, !tbaa !48
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i32 %.sroa.2.0.extract.trunc.i224, ptr %i.ua, align 4, !tbaa !48
  %i.ub = icmp sgt i32 %.013.i.i, %i.tu
  br i1 %i.ub, label %.lr.ph361, label %.critedge2, !llvm.loop !41

.critedge2:                                       ; preds = %.lr.ph361, %decode_macroblock.exit221, %bb.ba, %bb.bb
  %.sroa.19.13 = phi i32 [ %.sroa.19.11, %bb.ba ], [ %spec.select.i191, %bb.bb ], [ %i.tu, %decode_macroblock.exit221 ], [ %spec.select.i208, %.lr.ph361 ]
  %.5 = phi i32 [ %.3311, %bb.ba ], [ %.1309.lcssa, %bb.bb ], [ %.9, %decode_macroblock.exit221 ], [ %.4360, %.lr.ph361 ]
  %i.uc = getelementptr inbounds [2 x i8], ptr %.0124382, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, ptr noundef nonnull readonly align 16 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uc, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ey, i64 16, i1 false)
  %i.ud = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ud, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ez, i64 16, i1 false)
  %i.ue = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ue, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fa, i64 16, i1 false)
  %i.uf = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uf, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fb, i64 16, i1 false)
  %i.ug = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ug, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fc, i64 16, i1 false)
  %i.uh = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uh, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fd, i64 16, i1 false)
  %i.ui = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ui, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fe, i64 16, i1 false)
  br label %copy_superblock.exit

copy_superblock.exit:                             ; preds = %.preheader.preheader.i, %.preheader14.preheader.i, %.critedge2
  %.1131326 = phi i32 [ 0, %.critedge2 ], [ %.1131327, %.preheader14.preheader.i ], [ %.1131327, %.preheader.preheader.i ]
  %.sroa.19.14 = phi i32 [ %.sroa.19.13, %.critedge2 ], [ %.sroa.19.5325, %.preheader14.preheader.i ], [ %.sroa.19.5325, %.preheader.preheader.i ] ; 2 uses
  %.6 = phi i32 [ %.5, %.critedge2 ], [ %.0308374, %.preheader14.preheader.i ], [ %.0308374, %.preheader.preheader.i ]
  %i.uj = add i32 %.0132378, 1                    ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.0124382, i64 16
  %.not156 = icmp eq ptr %.0126380, null          ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.0126380, i64 16
  %spec.select = select i1 %.not156, ptr null, ptr %i.ul ; 2 uses
  %i.um = icmp eq i32 %i.uj, %i.h                 ; 3 uses
  %i.un = getelementptr inbounds [2 x i8], ptr %spec.select, i64 %i.fj
  %.2128 = select i1 %.not156, ptr null, ptr %i.un
  %.1133 = select i1 %i.um, i32 0, i32 %i.uj
  %.3129 = select i1 %i.um, ptr %.2128, ptr %spec.select
  %.1125.idx = select i1 %i.um, i64 %i.fi, i64 0
  %.1125 = getelementptr inbounds [2 x i8], ptr %i.uk, i64 %.1125.idx
  %i.uo = add i32 %.1131326, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.up = add nuw i32 %.0134375, 1                ; 2 uses
  %i.uq = load i32, ptr %i.p, align 8, !tbaa !32
  %i.ur = icmp ult i32 %i.up, %i.uq
  br i1 %i.ur, label %bb.x, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %copy_superblock.exit, %bb.w
  %.sroa.19.4.lcssa = phi i32 [ %.sroa.19.3, %bb.w ], [ %.sroa.19.14, %copy_superblock.exit ]
  %i.us = sdiv i32 %.sroa.19.4.lcssa, 8
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %i.ag, i32 noundef %i.c, i32 noundef %i.us) #6
  %i.ut = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.uu = tail call i32 @av_frame_replace(ptr noundef %i.ut, ptr noundef nonnull %1) #6 ; 2 uses
  %i.uv = icmp slt i32 %i.uu, 0
  br i1 %i.uv, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !48
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p, %bb.i, %bb.o, %bb.t, %._crit_edge, %bb.v, %bb.e, %bb.d, %bb.b, %bb.a, %bb.bj
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.a ], [ -12, %bb.t ], [ -1094995529, %bb.d ], [ %i.ek, %bb.v ], [ 0, %bb.bj ], [ %., %bb.e ], [ %i.uu, %._crit_edge ], [ -1094995529, %bb.o ], [ -1094995529, %bb.i ], [ -1094995529, %bb.p ], [ -1094995529, %bb.q ]
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

end_hunk_1
