Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/roqvideoenc?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 103
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5680
  tail call void @av_lfg_init(ptr noundef nonnull %i.c, i32 noundef 1) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5984 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 4 uses
  %i.h = and i32 %i.g, 15
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41   ; 4 uses
  %i.k = and i32 %i.j, 15
  %.not56 = icmp eq i32 %i.k, 0
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #9
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %i.g, 65535
  %i.m = icmp sgt i32 %i.j, 65535
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 107452
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42
  %.not66 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not66, i32 65535, i32 32768
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.p) #9
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %1 = tail call range(i32 0, 29) i32 @llvm.ctpop.i32(i32 %i.g)
  %.not57 = icmp samesign ult i32 %1, 2
  %2 = tail call range(i32 0, 29) i32 @llvm.ctpop.i32(i32 %i.j)
  %.not58 = icmp samesign ult i32 %2, 2
  %or.cond67 = select i1 %.not57, i1 %.not58, i1 false
  br i1 %or.cond67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  %.pre = load i32, ptr %i.f, align 8, !tbaa !40
  %.pre70 = load i32, ptr %i.i, align 4, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.q = phi i32 [ %i.j, %bb.f ], [ %.pre70, %bb.g ]
  %i.r = phi i32 [ %i.g, %bb.f ], [ %.pre, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 7 uses
  store i32 %i.q, ptr %i.t, align 4, !tbaa !44
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 107448
  store i32 1, ptr %i.u, align 8, !tbaa !45
  %i.v = tail call ptr @av_frame_alloc() #9
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = tail call ptr @av_frame_alloc() #9       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !47
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !46
  %.not59 = icmp eq ptr %i.z, null
  %.not60 = icmp eq ptr %i.x, null
  %or.cond68 = select i1 %.not59, i1 true, i1 %.not60
  br i1 %or.cond68, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !43
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !44
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = sdiv i32 %i.ac, 16
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call noalias ptr @av_calloc(i64 noundef %i.ae, i64 noundef 8) #9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 5952 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !48
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !43
  %i.ai = load i32, ptr %i.t, align 4, !tbaa !44
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, 16
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call ptr @av_malloc_array(i64 noundef %i.al, i64 noundef 8) #9
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 5960 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !49
  %i.ao = load i32, ptr %i.s, align 8, !tbaa !43
  %i.ap = load i32, ptr %i.t, align 4, !tbaa !44
  %i.aq = mul nsw i32 %i.ap, %i.ao
  %i.ar = sdiv i32 %i.aq, 64
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call noalias ptr @av_calloc(i64 noundef %i.as, i64 noundef 8) #9
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 5968 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !50
  %i.av = load i32, ptr %i.s, align 8, !tbaa !43
  %i.aw = load i32, ptr %i.t, align 4, !tbaa !44
  %i.ax = mul nsw i32 %i.aw, %i.av
  %i.ay = sdiv i32 %i.ax, 64
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call ptr @av_malloc_array(i64 noundef %i.az, i64 noundef 8) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 5976 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !51
  %i.bc = load i32, ptr %i.s, align 8, !tbaa !43
  %i.bd = load i32, ptr %i.t, align 4, !tbaa !44
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = sext i32 %i.be to i64
  %i.bg = tail call ptr @av_malloc_array(i64 noundef %i.bf, i64 noundef 12) #9 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 107432
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !52
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !48
  %.not61 = icmp eq ptr %i.bi, null
  br i1 %.not61, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !49
  %.not62 = icmp eq ptr %i.bj, null
  br i1 %.not62, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !50
  %.not63 = icmp eq ptr %i.bk, null
  br i1 %.not63, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !51
  %.not64 = icmp eq ptr %i.bl, null
  %.not65 = icmp eq ptr %i.bg, null
  %or.cond69 = select i1 %.not64, i1 true, i1 %.not65
  br i1 %or.cond69, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr %i.s, align 8, !tbaa !43
  %i.bn = load i32, ptr %i.t, align 4, !tbaa !44
  %i.bo = mul i32 %i.bm, 3
  %i.bp = mul i32 %i.bo, %i.bn
  %i.bq = sdiv i32 %i.bp, 2
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 107440
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !53
  %i.bu = tail call fastcc i32 @create_cel_evals(ptr noundef nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.h, %bb.m, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ %i.bu, %bb.m ], [ -12, %bb.h ], [ -12, %bb.l ], [ -12, %bb.k ], [ -12, %bb.j ], [ -12, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @roq_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.CodingSpool, align 8        ; 22 uses
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 66 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5992 ; 4 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  %i.g = add nsw i32 %i.f, -1
  %narrow = select i1 %.not, i32 256, i32 %i.g
  %.sink = sext i32 %narrow to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5944 ; 5 uses
  store i64 %.sink, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 7 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 6000 ; 56 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 5984 ; 7 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.y, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 107448 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !45
  %.not42 = icmp eq i32 %i.ae, 0
  br i1 %.not42, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = tail call i32 @ff_encode_alloc_frame(ptr noundef nonnull %0, ptr noundef %i.ag) #9 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %roq_encode_video.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = tail call i32 @ff_encode_alloc_frame(ptr noundef nonnull %0, ptr noundef %i.ak) #9 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %roq_encode_video.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !65
  store i16 4097, ptr %i.an, align 1, !tbaa !66
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !65
  store i32 8, ptr %i.ap, align 1, !tbaa !66
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store ptr %i.ar, ptr %i.x, align 8, !tbaa !65
  store i8 0, ptr %i.ar, align 1, !tbaa !66
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.x, align 8, !tbaa !65
  store i8 0, ptr %i.at, align 1, !tbaa !66
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.x, align 8, !tbaa !65
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !67
  %i.ax = trunc i32 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 1, !tbaa !66
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 2 uses
end_hunk_0
begin_hunk_1_@gather_data_for_subcel:bb.a
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.ba, i64 %i.gs ; 2 uses
  %i.gv = mul nsw i64 %i.gr, %i.gu
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gv ; 2 uses
  %i.gw = load i8, ptr %gep, align 1, !tbaa !66
  %i.gx = getelementptr i8, ptr %gep, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !66
  %i.gz = add nsw i64 %i.gr, 1                    ; 3 uses
  %i.ha = mul nsw i64 %i.gz, %i.gu
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ha ; 2 uses
  %i.hb = load i8, ptr %gep.1, align 1, !tbaa !66
  %i.hc = getelementptr i8, ptr %gep.1, i64 1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !66
  %i.he = load i32, ptr %i.bb, align 4, !tbaa !69
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %invariant.gep116 = getelementptr i8, ptr %i.bd, i64 %i.gs ; 2 uses
  %i.hg = mul nsw i64 %i.gr, %i.hf
  %gep117 = getelementptr i8, ptr %invariant.gep116, i64 %i.hg ; 2 uses
  %i.hh = load i8, ptr %gep117, align 1, !tbaa !66
  %i.hi = getelementptr i8, ptr %gep117, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !66
  %i.hk = mul nsw i64 %i.gz, %i.hf
  %gep117.1 = getelementptr i8, ptr %invariant.gep116, i64 %i.hk ; 2 uses
  %i.hl = load i8, ptr %gep117.1, align 1, !tbaa !66
  %i.hm = getelementptr i8, ptr %gep117.1, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !66
  %i.ho = load i32, ptr %i.be, align 8, !tbaa !69
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %invariant.gep118 = getelementptr i8, ptr %i.bg, i64 %i.gs ; 2 uses
  %i.hq = mul nsw i64 %i.gr, %i.hp
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %i.hq ; 2 uses
  %i.hr = load i8, ptr %gep119, align 1, !tbaa !66
  %i.hs = getelementptr i8, ptr %gep119, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !66
  %i.hu = mul nsw i64 %i.gz, %i.hp
  %gep119.1 = getelementptr i8, ptr %invariant.gep118, i64 %i.hu ; 2 uses
  %i.hv = load i8, ptr %gep119.1, align 1, !tbaa !66
  %i.hw = getelementptr i8, ptr %gep119.1, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !66
  %i.hy = mul nsw i32 %i.gj, 12
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.fw, i64 %i.hz ; 12 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  %i.ic = load i8, ptr %i.ia, align 1, !tbaa !66
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ie = load i8, ptr %i.ib, align 1, !tbaa !66
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 3
  %i.ig = load i8, ptr %i.id, align 1, !tbaa !66
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !66
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 5
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !66
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 6
  %i.im = load i8, ptr %i.ij, align 1, !tbaa !66
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 7
  %i.io = load i8, ptr %i.il, align 1, !tbaa !66
  %i.ip = load i8, ptr %i.in, align 1, !tbaa !66
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ir = zext i8 %i.hr to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.ia, i64 9
  %i.it = load i8, ptr %i.iq, align 1, !tbaa !66
  %i.iu = zext i8 %i.it to i32
  %i.iv = sub nsw i32 %i.ir, %i.iu                ; 2 uses
  %i.iw = mul nsw i32 %i.iv, %i.iv
  %i.ix = zext i8 %i.ht to i32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ia, i64 10
  %i.iz = load i8, ptr %i.is, align 1, !tbaa !66
  %i.ja = zext i8 %i.iz to i32
  %i.jb = sub nsw i32 %i.ix, %i.ja                ; 2 uses
  %i.jc = mul nsw i32 %i.jb, %i.jb
  %i.jd = add nuw nsw i32 %i.jc, %i.iw
  %i.je = zext i8 %i.hv to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ia, i64 11
  %i.jg = load i8, ptr %i.iy, align 1, !tbaa !66
  %i.jh = zext i8 %i.jg to i32
  %i.ji = sub nsw i32 %i.je, %i.jh                ; 2 uses
  %i.jj = mul nsw i32 %i.ji, %i.ji
  %i.jk = add nuw nsw i32 %i.jj, %i.jd
  %i.jl = zext i8 %i.hx to i32
  %i.jm = load i8, ptr %i.jf, align 1, !tbaa !66
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nsw i32 %i.jl, %i.jn                ; 2 uses
  %i.jp = mul nsw i32 %i.jo, %i.jo
  %i.jq = add nuw nsw i32 %i.jp, %i.jk
  %i.jr = zext i8 %i.hh to i32
  %i.js = zext i8 %i.ik to i32
  %i.jt = sub nsw i32 %i.jr, %i.js                ; 2 uses
  %i.ju = mul nsw i32 %i.jt, %i.jt
  %i.jv = zext i8 %i.hj to i32
  %i.jw = zext i8 %i.im to i32
  %i.jx = sub nsw i32 %i.jv, %i.jw                ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %i.jx
  %i.jz = add nuw nsw i32 %i.jy, %i.ju
  %i.ka = zext i8 %i.hl to i32
  %i.kb = zext i8 %i.io to i32
  %i.kc = sub nsw i32 %i.ka, %i.kb                ; 2 uses
  %i.kd = mul nsw i32 %i.kc, %i.kc
  %i.ke = add nuw nsw i32 %i.kd, %i.jz
  %i.kf = zext i8 %i.hn to i32
  %i.kg = zext i8 %i.ip to i32
  %i.kh = sub nsw i32 %i.kf, %i.kg                ; 2 uses
  %i.ki = mul nsw i32 %i.kh, %i.kh
  %i.kj = add nuw nsw i32 %i.ki, %i.ke
  %i.kk = zext i8 %i.gw to i32
  %i.kl = zext i8 %i.ic to i32
  %i.km = sub nsw i32 %i.kk, %i.kl                ; 2 uses
  %i.kn = mul nsw i32 %i.km, %i.km
  %i.ko = zext i8 %i.gy to i32
  %i.kp = zext i8 %i.ie to i32
  %i.kq = sub nsw i32 %i.ko, %i.kp                ; 2 uses
  %i.kr = mul nsw i32 %i.kq, %i.kq
  %i.ks = add nuw nsw i32 %i.kr, %i.kn
  %i.kt = zext i8 %i.hb to i32
  %i.ku = zext i8 %i.ig to i32
  %i.kv = sub nsw i32 %i.kt, %i.ku                ; 2 uses
  %i.kw = mul nsw i32 %i.kv, %i.kv
  %i.kx = add nuw nsw i32 %i.kw, %i.ks
  %i.ky = zext i8 %i.hd to i32
  %i.kz = zext i8 %i.ih to i32
  %i.la = sub nsw i32 %i.ky, %i.kz                ; 2 uses
  %i.lb = mul nsw i32 %i.la, %i.la
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = shl nsw i32 %i.lc, 2
  %i.le = add nuw nsw i32 %i.kj, %i.ld
  %i.lf = add nuw nsw i32 %i.le, %i.jq
  %i.lg = load i32, ptr %i.fs, align 4, !tbaa !69
  %i.lh = add nsw i32 %i.lf, %i.lg                ; 2 uses
  store i32 %i.lh, ptr %i.fs, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.preheader, label %.preheader.i74, !llvm.loop !122

bb.g:                                             ; preds = %.preheader
  store i32 0, ptr %i.gb, align 4, !tbaa !90
  store i32 2, ptr %i.gc, align 4, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %.1 = phi i64 [ %i.gh, %bb.g ], [ 2147483647, %.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !69
  %i.lk = sext i32 %i.lj to i64
  %i.ll = shl nsw i64 %i.lk, 7
  %i.lm = mul i64 %i.ga, 10                       ; 2 uses
  %i.ln = add i64 %i.lm, %i.ll                    ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %.1
  br i1 %i.lo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.gb, align 4, !tbaa !90
  store i32 10, ptr %i.gc, align 4, !tbaa !92
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi i64 [ %i.ln, %bb.i ], [ %.1, %bb.h ] ; 2 uses
  %i.lp = load i32, ptr %i.fr, align 4, !tbaa !69
  %i.lq = sext i32 %i.lp to i64
  %i.lr = shl nsw i64 %i.lq, 7
  %i.ls = add i64 %i.lm, %i.lr                    ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %.pre-phi
  br i1 %i.lt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.gb, align 4, !tbaa !90
  store i32 10, ptr %i.gc, align 4, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi156 = phi i64 [ %i.ls, %bb.k ], [ %.pre-phi, %bb.j ]
  %i.lu = sext i32 %i.lh to i64
  %i.lv = shl nsw i64 %i.lu, 7
  %i.lw = mul i64 %i.ga, 34
  %i.lx = add i64 %i.lw, %i.lv
  %i.ly = icmp ult i64 %i.lx, %.pre-phi156
  br i1 %i.ly, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %i.gb, align 4, !tbaa !90
  store i32 34, ptr %i.gc, align 4, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

declare void @ff_apply_motion_8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_apply_vector_4x4(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_apply_motion_4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_apply_vector_2x2(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @avpriv_elbg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !12, i64 8}
!30 = !{!"RoqContext", !11, i64 0, !12, i64 8, !31, i64 16, !31, i64 24, !6, i64 32, !6, i64 36, !7, i64 40, !7, i64 1576}
!31 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!32 = !{!33, !6, i64 5984}
!33 = !{!"RoqEncContext", !30, i64 0, !34, i64 5672, !35, i64 5680, !15, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !6, i64 5984, !31, i64 5992, !16, i64 6000, !37, i64 6008, !7, i64 76700, !7, i64 82844, !39, i64 107424, !26, i64 107432, !26, i64 107440, !6, i64 107448, !6, i64 107452}
!34 = !{!"p1 _ZTS11ELBGContext", !12, i64 0}
!35 = !{!"AVLFG", !7, i64 0, !6, i64 256}
!36 = !{!"p1 _ZTS11motion_vect", !12, i64 0}
!37 = !{!"RoqTempData", !7, i64 0, !7, i64 1024, !7, i64 2048, !7, i64 3072, !6, i64 4096, !6, i64 4100, !6, i64 4104, !38, i64 4108, !7, i64 70676}
!38 = !{!"RoqCodebooks", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 5128, !7, i64 17416}
!39 = !{!"p1 _ZTS13CelEvaluation", !12, i64 0}
!40 = !{!10, !6, i64 112}
!41 = !{!10, !6, i64 116}
!42 = !{!33, !6, i64 107452}
!43 = !{!30, !6, i64 32}
!44 = !{!30, !6, i64 36}
!45 = !{!33, !6, i64 107448}
!46 = !{!30, !31, i64 16}
!47 = !{!30, !31, i64 24}
!48 = !{!33, !36, i64 5952}
!49 = !{!33, !36, i64 5960}
!50 = !{!33, !36, i64 5968}
!51 = !{!33, !36, i64 5976}
!52 = !{!33, !26, i64 107432}
!53 = !{!33, !26, i64 107440}
!54 = !{!33, !31, i64 5992}
!55 = !{!56, !6, i64 160}
!56 = !{!"AVFrame", !7, i64 0, !7, i64 64, !57, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !58, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !59, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!57 = !{!"p2 omnipotent char", !28, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!60 = !{!33, !15, i64 5944}
!61 = !{!62, !16, i64 24}
!62 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!63 = !{!33, !16, i64 6000}
!64 = !{!10, !6, i64 332}
!65 = !{!16, !16, i64 0}
!66 = !{!7, !7, i64 0}
!67 = !{!33, !6, i64 32}
!68 = !{!33, !6, i64 36}
!69 = !{!6, !6, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = distinct !{!72, !71}
!73 = !{!38, !6, i64 0}
!74 = !{!75, !7, i64 4}
!75 = !{!"roq_cell", !7, i64 0, !7, i64 4, !7, i64 5}
!76 = !{!75, !7, i64 5}
!77 = distinct !{!77, !71}
!78 = !{!38, !6, i64 4}
!79 = distinct !{!79, !71}
!80 = distinct !{!80, !71}
!81 = distinct !{!81, !71}
!82 = distinct !{!82, !71}
!83 = !{!37, !6, i64 4096}
!84 = !{!33, !39, i64 107424}
!85 = !{!86, !6, i64 244}
!86 = !{!"CelEvaluation", !7, i64 0, !6, i64 16, !7, i64 20, !87, i64 228, !6, i64 236, !6, i64 240, !6, i64 244}
!87 = !{!"motion_vect", !7, i64 0}
!88 = !{!86, !6, i64 240}
!89 = !{!37, !6, i64 4108}
!90 = !{!91, !6, i64 20}
!91 = !{!"SubcelEvaluation", !7, i64 0, !6, i64 16, !6, i64 20, !7, i64 24, !87, i64 40, !6, i64 48}
!92 = !{!91, !6, i64 16}
!93 = !{!86, !6, i64 16}
!94 = !{!86, !6, i64 236}
!95 = distinct !{!95, !71}
!96 = distinct !{!96, !71}
!97 = !{!37, !6, i64 4100}
!98 = distinct !{!98, !71}
!99 = !{!37, !6, i64 4104}
!100 = distinct !{!100, !71}
!101 = distinct !{!101, !71}
!102 = !{!103, !6, i64 0}
!103 = !{!"CodingSpool", !6, i64 0, !6, i64 4, !7, i64 8, !16, i64 72, !57, i64 80}
!104 = !{!103, !6, i64 4}
!105 = !{!103, !16, i64 72}
!106 = !{!103, !57, i64 80}
!107 = !{!91, !6, i64 48}
!108 = distinct !{!108, !71}
!109 = distinct !{!109, !71}
!110 = !{!31, !31, i64 0}
!111 = !{!36, !36, i64 0}
!112 = !{!62, !6, i64 32}
!113 = !{!62, !6, i64 40}
!114 = distinct !{!114, !71}
!115 = distinct !{!115, !71}
!116 = distinct !{!116, !71}
!117 = distinct !{!117, !71}
!118 = distinct !{!118, !71}
!119 = distinct !{!119, !71}
!120 = distinct !{!120, !71, !121}
!121 = !{!"llvm.loop.unswitch.partial.disable"}
!122 = distinct !{!122, !71}
end_hunk_1
