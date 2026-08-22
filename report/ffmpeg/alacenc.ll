Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alacenc?download=true
inline.NumInlined: 37
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVChannelLayout = type { i32, i32, %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.anon.3 = type { i64 }
%struct.AlacLPCContext = type { i32, [31 x i32], i32 }

@.str = private unnamed_addr constant [5 x i8] c"alac\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ALAC (Apple Lossless Audio Codec)\00", align 1
@ff_alac_ch_layouts = external constant [9 x %struct.AVChannelLayout], align 16
@.compoundliteral = internal constant [3 x i32] [i32 7, i32 6, i32 -1], align 4
@ff_alac_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86032, i32 1048642, i8 0, [3 x i8] zeroinitializer, ptr @alacenc_class, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 103648, ptr null, ptr null, ptr null, ptr @alac_encode_init, %union.anon { ptr @alac_encode_frame }, ptr @alac_encode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr @ff_alac_ch_layouts, ptr null, ptr @.compoundliteral } } }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"alacenc\00", align 1
@alacenc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"min_prediction_order\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"max_prediction_order\00", align 1
@options = internal constant [3 x { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr null, i32 28, i32 2, %union.anon.3 { i64 4 }, double 1.000000e+00, double 3.000000e+01, i32 9, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr null, i32 32, i32 2, %union.anon.3 { i64 6 }, double 1.000000e+00, double 3.000000e+01, i32 9, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [32 x i8] c"encoding as 24 bits-per-sample\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"invalid prediction orders: min=%d max=%d\0A\00", align 1
@ff_alac_channel_elements = external local_unnamed_addr constant [8 x [5 x i32]], align 16
@ff_alac_channel_layout_offsets = external local_unnamed_addr constant [8 x [8 x i8]], align 16
@.str.9 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@.str.10 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"s->buf_ptr < s->buf_end\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"libavcodec/put_bits.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @alac_encode_init(ptr noundef initializes((376, 380)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 4096, ptr %i.c, align 16, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store i32 4096, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  %i.g = icmp eq i32 %i.f, 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %.not = icmp eq i32 %i.i, 24
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.7) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 24, ptr %i.h, align 4, !tbaa !38
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 16, ptr %i.h, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ 16, %bb.e ], [ 24, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.o, i32 2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0.i.sink = phi i32 [ %i.p, %bb.g ], [ 2, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 %.0.i.sink, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 65624 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 65628
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 65632
  store <4 x i32> <i32 40, i32 10, i32 14, i32 4>, ptr %i.r, align 8, !tbaa !42
  %i.u = load i32, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %i.x = icmp slt i32 %i.u, 4096
  %i.y = mul i32 %i.w, %i.u
  %i.z = mul i32 %i.y, %i.k
  %i.aa = select i1 %i.x, i32 64, i32 32
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr exact i32 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !44
  %i.ae = tail call noalias ptr @av_mallocz(i64 noundef 100) #7 ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !45
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 36, ptr %i.ah, align 8, !tbaa !46
  store i32 603979776, ptr %i.ae, align 1, !tbaa !47
  %1 = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1667329121, ptr %1, align 1, !tbaa !47
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.aj, ptr %i.ak, align 1, !tbaa !47
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !38 ; 2 uses
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  store i8 %i.am, ptr %i.an, align 1, !tbaa !47
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !43  ; 2 uses
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 21
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !47
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !44
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 %i.as, ptr %i.at, align 1, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.av = load i32, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = mul i32 %i.ao, %i.al
  %i.ax = mul i32 %i.aw, %i.av
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  store i32 %i.ay, ptr %i.az, align 1, !tbaa !47
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 %i.ba, ptr %i.bb, align 1, !tbaa !47
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !41
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.r, align 8, !tbaa !49
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 18
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !47
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !50
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 19
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !47
  %i.bk = load i32, ptr %i.t, align 16, !tbaa !51
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !52 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !53 ; 2 uses
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.bq, i32 noundef %i.bo) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.bs, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 65904
  %i.bu = tail call i32 @ff_lpc_init(ptr noundef nonnull %i.bt, i32 noundef %i.ai, i32 noundef %i.bo, i32 noundef 2) #7
  %. = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.l
  %.0 = phi i32 [ -22, %bb.l ], [ %., %bb.m ], [ -12, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @alac_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.d, ptr %i.e, align 16, !tbaa !29
  %i.f = icmp slt i32 %i.d, 4096
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %i.k = mul i32 %i.h, %i.d
  %i.l = mul i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 65
  %i.n = ashr i32 %i.m, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.p, %bb.c ]  ; 2 uses
  %i.q = shl nsw i32 %.0, 2
  %i.r = sext i32 %i.q to i64
  %i.s = tail call i32 @ff_alloc_packet(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.r) #7 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = add nsw i32 %i.x, -16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink38 = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  %.sink = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i32 %.sink38, ptr %i.z, align 4, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %.val36 = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.ae = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %.val37 = load i32, ptr %i.ae, align 8, !tbaa !64
  %i.af = tail call fastcc i32 @write_frame(ptr noundef nonnull %i.b, ptr %.val36, i32 %.val37, ptr noundef %i.ac) ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %.0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.z, align 4, !tbaa !60
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !61
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !62
  %.val35 = load i32, ptr %i.ae, align 8, !tbaa !64
  %i.ai = tail call fastcc i32 @write_frame(ptr noundef nonnull %i.b, ptr %.val, i32 %.val35, ptr noundef %i.ah)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.031 = phi i32 [ %i.ai, %bb.h ], [ %i.af, %bb.g ]
  store i32 %.031, ptr %i.ae, align 8, !tbaa !64
  store i32 1, ptr %3, align 4, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.032 = phi i32 [ 0, %bb.i ], [ %i.s, %bb.d ]
  ret i32 %.032
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @alac_encode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65904
  tail call void @ff_lpc_end(ptr noundef nonnull %i.c) #7
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare i32 @ff_lpc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_frame(ptr noundef initializes((65592, 65624)) %0, ptr %.24.val, i32 %.32.val, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65592 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 3 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds [20 x i8], ptr @ff_alac_channel_elements, i64 %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr @ff_alac_channel_layout_offsets, i64 %i.g
  %i.j = icmp slt i32 %.32.val, 0
  %spec.select.i = select i1 %i.j, ptr null, ptr %.24.val ; 3 uses
  %spec.select11.i = tail call i32 @llvm.smax.i32(i32 %.32.val, i32 0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65600 ; 2 uses
  store ptr %spec.select.i, ptr %i.k, align 8, !tbaa !65
  %i.l = zext nneg i32 %spec.select11.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.l
end_hunk_0
