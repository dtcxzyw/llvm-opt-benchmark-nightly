Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/roqvideoenc?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumUnrolled: 106
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.motion_vect = type { [2 x i32] }
%struct.CodingSpool = type { i32, i32, [64 x i8], ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"roqvideo\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"id RoQ video\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 14, i32 -1], align 4
@ff_roq_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 38, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr @roq_class, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 100, i32 107456, ptr null, ptr null, ptr null, ptr @roq_encode_init, %union.anon { ptr @roq_encode_frame }, ptr @roq_encode_end, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"RoQ\00", align 1
@roq_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"quake3_compat\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Whether to respect known limitations in Quake 3 decoder\00", align 1
@options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 107452, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [36 x i8] c"Dimensions must be divisible by 16\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Dimensions are max %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"Warning: dimensions not power of two, this is not supported by quake\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Cannot encode video in Quake compatible form\0A\00", align 1
@.str.11 = private unnamed_addr constant [100 x i8] c"Warning, generated a frame too big for Quake (%d > 65535), now switching to a bigger qscale value.\0A\00", align 1
@motion_search.offsets = internal unnamed_addr constant [8 x %struct.motion_vect] [%struct.motion_vect { [2 x i32] [i32 0, i32 -1] }, %struct.motion_vect { [2 x i32] [i32 0, i32 1] }, %struct.motion_vect { [2 x i32] [i32 -1, i32 0] }, %struct.motion_vect { [2 x i32] [i32 1, i32 0] }, %struct.motion_vect { [2 x i32] [i32 -1, i32 1] }, %struct.motion_vect { [2 x i32] [i32 1, i32 -1] }, %struct.motion_vect { [2 x i32] [i32 -1, i32 -1] }, %struct.motion_vect { [2 x i32] [i32 1, i32 1] }], align 16
@__const.gather_data_for_cel.bitsUsed = private unnamed_addr constant [4 x i32] [i32 2, i32 10, i32 10, i32 0], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @roq_encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5680
  tail call void @av_lfg_init(ptr noundef nonnull %i.c, i32 noundef 1) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5984 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %i.h = and i32 %i.g, 15
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69   ; 2 uses
  %i.k = load <2 x i32>, ptr %i.f, align 8, !tbaa !42 ; 2 uses
  %i.l = and i32 %i.j, 15
  %.not56 = icmp eq i32 %i.l, 0
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #9
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %i.g, 65535
  %i.n = icmp sgt i32 %i.j, 65535
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 107452
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  %.not66 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not66, i32 65535, i32 32768
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.q) #9
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.r = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %i.k)
  %1 = icmp samesign ult <2 x i32> %i.r, splat (i32 2) ; 2 uses
  %2 = extractelement <2 x i1> %1, i64 0
  %3 = extractelement <2 x i1> %1, i64 1
  %or.cond67 = select i1 %2, i1 %3, i1 false
  br i1 %or.cond67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  %i.s = load <2 x i32>, ptr %i.f, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.t = phi <2 x i32> [ %i.k, %bb.f ], [ %i.s, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 6 uses
  store <2 x i32> %i.t, ptr %i.u, align 8, !tbaa !42
  store i32 0, ptr %i.e, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 107448
  store i32 1, ptr %i.w, align 8, !tbaa !44
  %i.x = tail call ptr @av_frame_alloc() #9
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !45
  %i.z = tail call ptr @av_frame_alloc() #9       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !46
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !45
  %.not59 = icmp eq ptr %i.ab, null
  %.not60 = icmp eq ptr %i.z, null
  %or.cond68 = select i1 %.not59, i1 true, i1 %.not60
  br i1 %or.cond68, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !47
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !48
  %i.ae = mul nsw i32 %i.ad, %i.ac
  %i.af = sdiv i32 %i.ae, 16
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call noalias ptr @av_calloc(i64 noundef %i.ag, i64 noundef 8) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 5952 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !49
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !47
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !48
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = sdiv i32 %i.al, 16
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call ptr @av_malloc_array(i64 noundef %i.an, i64 noundef 8) #9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 5960 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !70
  %i.aq = load i32, ptr %i.u, align 8, !tbaa !47
  %i.ar = load i32, ptr %i.v, align 4, !tbaa !48
  %i.as = mul nsw i32 %i.ar, %i.aq
  %i.at = sdiv i32 %i.as, 64
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @av_calloc(i64 noundef %i.au, i64 noundef 8) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 5968 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !50
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !47
  %i.ay = load i32, ptr %i.v, align 4, !tbaa !48
  %i.az = mul nsw i32 %i.ay, %i.ax
  %i.ba = sdiv i32 %i.az, 64
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call ptr @av_malloc_array(i64 noundef %i.bb, i64 noundef 8) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 5976 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !71
  %i.be = load i32, ptr %i.u, align 8, !tbaa !47
  %i.bf = load i32, ptr %i.v, align 4, !tbaa !48
  %i.bg = mul nsw i32 %i.bf, %i.be
  %i.bh = sext i32 %i.bg to i64
  %i.bi = tail call ptr @av_malloc_array(i64 noundef %i.bh, i64 noundef 12) #9 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 107432
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !51
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !49
  %.not61 = icmp eq ptr %i.bk, null
  br i1 %.not61, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !70
  %.not62 = icmp eq ptr %i.bl, null
  br i1 %.not62, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !50
  %.not63 = icmp eq ptr %i.bm, null
  br i1 %.not63, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !71
  %.not64 = icmp eq ptr %i.bn, null
  %.not65 = icmp eq ptr %i.bi, null
  %or.cond69 = select i1 %.not64, i1 true, i1 %.not65
  br i1 %or.cond69, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.u, align 8, !tbaa !47
  %i.bp = load i32, ptr %i.v, align 4, !tbaa !48
  %i.bq = mul i32 %i.bo, 3
  %i.br = mul i32 %i.bq, %i.bp
  %i.bs = sdiv i32 %i.br, 2
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 107440
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !52
  %i.bw = tail call fastcc i32 @create_cel_evals(ptr noundef nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.h, %bb.m, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ %i.bw, %bb.m ], [ -12, %bb.h ], [ -12, %bb.l ], [ -12, %bb.k ], [ -12, %bb.j ], [ -12, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @roq_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.CodingSpool, align 8        ; 22 uses
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 66 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5992 ; 4 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  %i.g = add nsw i32 %i.f, -1
  %narrow = select i1 %.not, i32 256, i32 %i.g
  %.sink = sext i32 %narrow to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5944 ; 5 uses
  store i64 %.sink, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 7 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !48
  %i.m = mul nsw i32 %i.l, %i.j
  %i.n = sdiv i32 %i.m, 64
  %i.o = mul nsw i32 %i.n, 138
  %i.p = add nsw i32 %i.o, 7
  %i.q = sdiv i32 %i.p, 8
  %i.r = add nsw i32 %i.q, 2568
  %i.s = sext i32 %i.r to i64
  %i.t = tail call i32 @ff_alloc_packet(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.s) #9 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %roq_encode_video.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 6000 ; 56 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 5984 ; 7 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !93
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.y, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 107448 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44
  %.not42 = icmp eq i32 %i.ae, 0
  br i1 %.not42, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ah = tail call i32 @ff_encode_alloc_frame(ptr noundef nonnull %0, ptr noundef %i.ag) #9 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %roq_encode_video.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = tail call i32 @ff_encode_alloc_frame(ptr noundef nonnull %0, ptr noundef %i.ak) #9 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %roq_encode_video.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !55
  store i16 4097, ptr %i.an, align 1, !tbaa !56
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !55
  store i32 8, ptr %i.ap, align 1, !tbaa !56
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store ptr %i.ar, ptr %i.x, align 8, !tbaa !55
  store i8 0, ptr %i.ar, align 1, !tbaa !56
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.x, align 8, !tbaa !55
  store i8 0, ptr %i.at, align 1, !tbaa !56
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.x, align 8, !tbaa !55
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !94
  %i.ax = trunc i32 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 1, !tbaa !56
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 2 uses
  store ptr %i.az, ptr %i.x, align 8, !tbaa !55
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !95
  %i.bb = trunc i32 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 1, !tbaa !56
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !55
  store i8 8, ptr %i.bd, align 1, !tbaa !56
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.bf, ptr %i.x, align 8, !tbaa !55
  store i8 0, ptr %i.bf, align 1, !tbaa !56
end_hunk_0
