Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/smacker?download=true
inline.NumInlined: 70
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.GetBitContext = type { ptr, i32, i32, i32 }
%struct.VLC = type { i32, ptr, i32, i32 }
%struct.HuffContext = type { i32, [256 x %struct.HuffEntry] }
%struct.HuffEntry = type { i8, i8 }
%struct.DBCtx = type { i32, i32, ptr, ptr, ptr, [2 x i8], [3 x i32], ptr }

@.str = private unnamed_addr constant [9 x i8] c"smackvid\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Smacker video\00", align 1
@ff_smacker_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 83, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 96, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"smackaud\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Smacker audio\00", align 1
@ff_smackaud_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 86039, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @smka_decode_init, %union.anon { ptr @smka_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Extradata missing!\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Skipping MMAP tree\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Skipping MCLR tree\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Skipping FULL tree\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Skipping TYPE tree\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"size too large\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Skipping %s bytes tree\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Cannot build VLC table\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Maximum tree recursion level exceeded.\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Tree size exceeded!\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Maximum bigtree recursion level exceeded.\0A\00", align 1
@block_runs = internal unnamed_addr constant [64 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 128, i32 256, i32 512, i32 1024, i32 2048], align 16
@.str.17 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"invalid number of channels\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"packet is too big\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Sound: no data\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"channels mismatch\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"sample format mismatch\0A\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"The buffer does not contain an integer number of samples\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.GetBitContext, align 8      ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 30 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !33
  %i.d = tail call ptr @av_frame_alloc() #7       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = icmp slt i32 %i.g, 17
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 5 uses
  %i.l = load i32, ptr %i.k, align 1, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 1, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 1, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 1, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !35
  %i.v = add nsw i32 %i.u, -16                    ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.v, 268435455
  %i.w = shl nuw nsw i32 %i.v, 3
  %i.x = select i1 %or.cond.i.i, i32 -8, i32 %i.w ; 2 uses
  %or.cond.i.i.i = icmp ugt i32 %i.x, 2147483134  ; 3 uses
  %.014.i.i.i = select i1 %or.cond.i.i.i, ptr null, ptr %i.s
  %.013.i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 %i.x ; 2 uses
  store ptr %.014.i.i.i, ptr %1, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %.013.i.i.i, ptr %i.y, align 4, !tbaa !40
  %i.z = add nuw nsw i32 %.013.i.i.i, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br i1 %or.cond.i.i.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i8, ptr %i.s, align 1, !tbaa !37
  %i.ad = and i8 %i.ac, 1
  store i32 1, ptr %i.ab, align 8, !tbaa !42
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.i, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  %i.ae = tail call noalias ptr @av_malloc(i64 noundef 8) #7 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !43
  %.not75.i = icmp eq ptr %i.ae, null
  br i1 %.not75.i, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ae, align 4, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 1, ptr %i.ah, align 8, !tbaa !44
  store <2 x i32> splat (i32 1), ptr %i.ag, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ak = call fastcc i32 @smacker_decode_header_tree(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i32 noundef %i.l) ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %select.unfold, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load i32, ptr %i.ab, align 8, !tbaa !42
  %.pre84.i = load ptr, ptr %1, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.g
  %i.am = phi ptr [ %.pre84.i, %._crit_edge.i ], [ %i.s, %bb.g ]
  %i.an = phi i32 [ %.pre.i, %._crit_edge.i ], [ 1, %bb.g ] ; 3 uses
  %.0.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.g ] ; 2 uses
  %i.ao = lshr i32 %i.an, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = and i32 %i.an, 7
  %i.at = zext i8 %i.ar to i32
  %i.au = add i32 %i.an, 1
  store i32 %i.au, ptr %i.ab, align 8, !tbaa !42
  %i.av = shl nuw nsw i32 1, %i.as
  %i.aw = and i32 %i.av, %i.at
  %.not76.i = icmp eq i32 %i.aw, 0
  br i1 %.not76.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ax, i32 noundef 32, ptr noundef nonnull @.str.6) #7
  %i.ay = call noalias ptr @av_malloc(i64 noundef 8) #7 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !45
  %.not77.i = icmp eq ptr %i.ay, null
  br i1 %.not77.i, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i32 %.0.i, 1
  store i32 0, ptr %i.ay, align 4, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 1, ptr %i.bc, align 4, !tbaa !44
  store <2 x i32> splat (i32 1), ptr %i.bb, align 4, !tbaa !44
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bf = call fastcc i32 @smacker_decode_header_tree(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i32 noundef %i.n) ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %.0.i, %bb.l ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bh = load i32, ptr %i.ab, align 8, !tbaa !42 ; 3 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !38
  %i.bj = lshr i32 %i.bh, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = and i32 %i.bh, 7
  %i.bo = zext i8 %i.bm to i32
  %i.bp = add i32 %i.bh, 1
  store i32 %i.bp, ptr %i.ab, align 8, !tbaa !42
  %i.bq = shl nuw nsw i32 1, %i.bn
  %i.br = and i32 %i.bq, %i.bo
  %.not78.i = icmp eq i32 %i.br, 0
  br i1 %.not78.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bs, i32 noundef 32, ptr noundef nonnull @.str.7) #7
  %i.bt = call noalias ptr @av_malloc(i64 noundef 8) #7 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !46
  %.not79.i = icmp eq ptr %i.bt, null
  br i1 %.not79.i, label %select.unfold, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = add nuw nsw i32 %.1.i, 1
  store i32 0, ptr %i.bt, align 4, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 1, ptr %i.bx, align 8, !tbaa !44
  store <2 x i32> splat (i32 1), ptr %i.bw, align 8, !tbaa !44
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ca = call fastcc i32 @smacker_decode_header_tree(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.p) ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.i = phi i32 [ %.1.i, %bb.p ], [ %i.bv, %bb.o ]
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !42 ; 3 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !38
  %i.ce = lshr i32 %i.cc, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !37
  %i.ci = and i32 %i.cc, 7
  %i.cj = zext i8 %i.ch to i32
  %i.ck = add i32 %i.cc, 1
  store i32 %i.ck, ptr %i.ab, align 8, !tbaa !42
  %i.cl = shl nuw nsw i32 1, %i.ci
  %i.cm = and i32 %i.cl, %i.cj
  %.not80.i = icmp eq i32 %i.cm, 0
  br i1 %.not80.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cn, i32 noundef 32, ptr noundef nonnull @.str.8) #7
  %i.co = call noalias ptr @av_malloc(i64 noundef 8) #7 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !47
  %.not81.i = icmp eq ptr %i.co, null
  br i1 %.not81.i, label %select.unfold, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.cs = call fastcc i32 @smacker_decode_header_tree(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, i32 noundef %i.r) ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %select.unfold, label %.thread.i

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %i.co, align 4, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 1, ptr %i.cv, align 4, !tbaa !44
  store <2 x i32> splat (i32 1), ptr %i.cu, align 4, !tbaa !44
  %i.cw = icmp eq i32 %.2.i, 3
  br i1 %i.cw, label %select.unfold, label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %.val.i = load i32, ptr %i.ab, align 8, !tbaa !42
  %.val82.i = load i32, ptr %i.y, align 4, !tbaa !40
  %i.cx = icmp slt i32 %.val82.i, %.val.i
  br i1 %i.cx, label %select.unfold, label %decode_header_trees.exit

decode_header_trees.exit:                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.u

select.unfold:                                    ; preds = %.thread.i, %bb.d, %bb.f, %bb.j, %bb.n, %bb.r, %bb.s, %bb.t, %bb.p, %bb.l, %bb.h
  %.065.i.ph = phi i32 [ -1094995529, %bb.d ], [ %i.ak, %bb.h ], [ %i.bf, %bb.l ], [ %i.ca, %bb.p ], [ -1094995529, %bb.t ], [ %i.cs, %bb.s ], [ -12, %bb.r ], [ -12, %bb.n ], [ -12, %bb.j ], [ -12, %bb.f ], [ -1094995529, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.u

bb.u:                                             ; preds = %select.unfold, %decode_header_trees.exit, %bb.a, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -12, %bb.a ], [ %.065.i.ph, %select.unfold ], [ 0, %decode_header_trees.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp slt i32 %i.d, 770
  br i1 %i.e, label %smk_get_code.exit272.thread337, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef 0) #7 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %smk_get_code.exit272.thread337, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !34   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 4 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !48
  %i.n = icmp ne ptr %i.l, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.s = load i8, ptr %i.l, align 1, !tbaa !37
  %i.t = and i8 %i.s, 2                           ; 2 uses
  %.not = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 276 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52
  %i.w = and i32 %i.v, -3
  %masksel = zext nneg i8 %i.t to i32
  %.sink668 = or disjoint i32 %i.w, %masksel
  %.sink = select i1 %.not, i32 2, i32 1
  store i32 %.sink668, ptr %i.u, align 4, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i32 %.sink, ptr %i.x, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bytestream2_init.exit
  %.0191407 = phi i32 [ 0, %bytestream2_init.exit ], [ %i.bc, %bb.e ]
  %.0200406 = phi ptr [ %i.q, %bytestream2_init.exit ], [ %i.bb, %bb.e ] ; 3 uses
  %.sroa.0332.0405 = phi ptr [ %i.r, %bytestream2_init.exit ], [ %i.an, %bb.e ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 3
  %i.z = load i8, ptr %.sroa.0332.0405, align 1, !tbaa !37
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ab, %i.af
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = or disjoint i32 %i.ak, -16777216
  %i.am = getelementptr inbounds nuw i8, ptr %.0200406, i64 4
  store i32 %i.al, ptr %.0200406, align 4, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 6
  %i.ao = load i8, ptr %i.y, align 1, !tbaa !37
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.aq, %i.au
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = or disjoint i32 %i.az, -16777216
  %i.bb = getelementptr inbounds nuw i8, ptr %.0200406, i64 8
  store i32 %i.ba, ptr %i.am, align 4, !tbaa !44
  %i.bc = add nuw nsw i32 %.0191407, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bc, 256
  br i1 %exitcond.not.1, label %bb.f, label %bb.e, !llvm.loop !58

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !44
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bm
  store i32 0, ptr %i.bn, align 4, !tbaa !44
  %i.bo = load i32, ptr %i.bf, align 8, !tbaa !44
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bw
  store i32 0, ptr %i.bx, align 4, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !44
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ca
  store i32 0, ptr %i.cb, align 4, !tbaa !44
  %i.cc = load i32, ptr %i.bt, align 4, !tbaa !44
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cd
  store i32 0, ptr %i.ce, align 4, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 25 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 9 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !44
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ck
  store i32 0, ptr %i.cl, align 4, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 17 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !44
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.co
  store i32 0, ptr %i.cp, align 4, !tbaa !44
  %i.cq = load i32, ptr %i.ch, align 8, !tbaa !44
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cr
  store i32 0, ptr %i.cs, align 4, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !44
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cy
  store i32 0, ptr %i.cz, align 4, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !44
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dc
  store i32 0, ptr %i.dd, align 4, !tbaa !44
  %i.de = load i32, ptr %i.cv, align 4, !tbaa !44
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.df
  store i32 0, ptr %i.dg, align 4, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 769 ; 13 uses
  %i.di = load i32, ptr %i.c, align 8, !tbaa !48
  %i.dj = add nsw i32 %i.di, -769                 ; 2 uses
  %or.cond.i292 = icmp ugt i32 %i.dj, 268435455
  %i.dk = shl nuw nsw i32 %i.dj, 3
  %i.dl = select i1 %or.cond.i292, i32 -8, i32 %i.dk ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.dl, 2147483134   ; 2 uses
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.dl ; 23 uses
  br i1 %or.cond.i.i, label %smk_get_code.exit272.thread337, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !60
  %i.do = ashr i32 %i.dn, 2                       ; 13 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !61
  %i.dr = ashr i32 %i.dq, 2
  %i.ds = mul nsw i32 %i.dr, %i.do                ; 12 uses
end_hunk_0
