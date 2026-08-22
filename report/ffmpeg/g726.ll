Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g726?download=true
inline.NumInlined: 28
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecDefault = type { ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.anon.2 = type { i64 }
%struct.G726Tables = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"g726\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"G.726 ADPCM\00", align 1
@defaults = internal constant [2 x %struct.FFCodecDefault] [%struct.FFCodecDefault { ptr @.str.10, ptr @.str.11 }, %struct.FFCodecDefault zeroinitializer], align 16
@.compoundliteral = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_adpcm_g726_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 69643, i32 1048642, i8 0, [3 x i8] zeroinitializer, ptr @g726_class, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 152, ptr null, ptr null, ptr @defaults, ptr @g726_encode_init, %union.anon { ptr @g726_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral } } }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"g726le\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"G.726 little endian ADPCM (\22right-justified\22)\00", align 1
@.compoundliteral.4 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_adpcm_g726le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 69667, i32 1048642, i8 0, [3 x i8] zeroinitializer, ptr @g726_class, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 152, ptr null, ptr null, ptr @defaults, ptr @g726_encode_init, %union.anon { ptr @g726_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.4 } } }, align 8
@ff_adpcm_g726_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 69643, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 152, ptr null, ptr null, ptr null, ptr @g726_decode_init, %union.anon { ptr @g726_decode_frame }, ptr null, ptr @g726_decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"G.726 ADPCM little-endian\00", align 1
@ff_adpcm_g726le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.5, i32 1, i32 69667, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 152, ptr null, ptr null, ptr null, ptr @g726_decode_init, %union.anon { ptr @g726_decode_frame }, ptr null, ptr @g726_decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@g726_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"code_size\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Bits per code\00", align 1
@options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 140, i32 2, %union.anon.2 { i64 4 }, double 2.000000e+00, double 5.000000e+00, i32 9, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [140 x i8] c"Sample rates other than 8kHz are not allowed when the compliance level is higher than unofficial. Resample or reduce the compliance level.\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Only mono is supported\0A\00", align 1
@G726Tables_pool = internal unnamed_addr constant [4 x %struct.G726Tables] [%struct.G726Tables { ptr @quant_tbl16, ptr @iquant_tbl16, ptr @W_tbl16, ptr @F_tbl16 }, %struct.G726Tables { ptr @quant_tbl24, ptr @iquant_tbl24, ptr @W_tbl24, ptr @F_tbl24 }, %struct.G726Tables { ptr @quant_tbl32, ptr @iquant_tbl32, ptr @W_tbl32, ptr @F_tbl32 }, %struct.G726Tables { ptr @quant_tbl40, ptr @iquant_tbl40, ptr @W_tbl40, ptr @F_tbl40 }], align 16
@quant_tbl16 = internal constant [2 x i32] [i32 260, i32 2147483647], align 4
@iquant_tbl16 = internal constant [4 x i16] [i16 116, i16 365, i16 365, i16 116], align 2
@W_tbl16 = internal constant [4 x i16] [i16 -22, i16 439, i16 439, i16 -22], align 2
@F_tbl16 = internal constant [4 x i8] c"\00\07\07\00", align 1
@quant_tbl24 = internal constant [4 x i32] [i32 7, i32 217, i32 330, i32 2147483647], align 16
@iquant_tbl24 = internal constant [8 x i16] [i16 -32768, i16 135, i16 273, i16 373, i16 373, i16 273, i16 135, i16 -32768], align 16
@W_tbl24 = internal constant [8 x i16] [i16 -4, i16 30, i16 137, i16 582, i16 582, i16 137, i16 30, i16 -4], align 16
@F_tbl24 = internal constant [8 x i8] c"\00\01\02\07\07\02\01\00", align 1
@quant_tbl32 = internal constant [8 x i32] [i32 -125, i32 79, i32 177, i32 245, i32 299, i32 348, i32 399, i32 2147483647], align 16
@iquant_tbl32 = internal constant [16 x i16] [i16 -32768, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -32768], align 16
@W_tbl32 = internal constant [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 16
@F_tbl32 = internal constant [16 x i8] c"\00\00\00\01\01\01\03\07\07\03\01\01\01\00\00\00", align 16
@quant_tbl40 = internal constant [16 x i32] [i32 -122, i32 -16, i32 67, i32 138, i32 197, i32 249, i32 297, i32 338, i32 377, i32 412, i32 444, i32 474, i32 501, i32 527, i32 552, i32 2147483647], align 16
@iquant_tbl40 = internal constant [32 x i16] [i16 -32768, i16 -66, i16 28, i16 104, i16 169, i16 224, i16 274, i16 318, i16 358, i16 395, i16 429, i16 459, i16 488, i16 514, i16 539, i16 566, i16 566, i16 539, i16 514, i16 488, i16 459, i16 429, i16 395, i16 358, i16 318, i16 274, i16 224, i16 169, i16 104, i16 28, i16 -66, i16 -32768], align 16
@W_tbl40 = internal constant [32 x i16] [i16 14, i16 14, i16 24, i16 39, i16 40, i16 41, i16 58, i16 100, i16 141, i16 179, i16 219, i16 280, i16 358, i16 440, i16 529, i16 696, i16 696, i16 529, i16 440, i16 358, i16 280, i16 219, i16 179, i16 141, i16 100, i16 58, i16 41, i16 40, i16 39, i16 24, i16 14, i16 14], align 16
@F_tbl40 = internal constant [32 x i8] c"\00\00\00\00\00\01\01\01\01\01\02\03\04\05\06\06\06\06\05\04\03\02\01\01\01\01\01\00\00\00\00\00", align 16
@.str.14 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@.str.15 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"s->buf_ptr < s->buf_end\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"libavcodec/put_bits.h\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Decoding more than one channel\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Invalid number of bits %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Frame invalidly split, missing parser?\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @g726_encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  %.not = icmp eq i32 %i.g, 0
  %i.h = zext i1 %.not to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %i.h, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = load i32, ptr %i.m, align 8, !tbaa !37
  %.not24 = icmp eq i32 %i.n, 8000
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #12
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %.not25 = icmp eq i32 %i.p, 1
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13) #12
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %.not26 = icmp eq i64 %i.r, 0
  br i1 %.not26, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.pre28 = load i32, ptr %.phi.trans.insert27, align 8, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 3 uses
  %i.u = sdiv i32 %i.t, 2
  %i.v = sext i32 %i.u to i64
  %i.w = add nsw i64 %i.r, %i.v
  %i.x = sext i32 %i.t to i64
  %i.y = sdiv i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.aa = phi i32 [ %.pre28, %._crit_edge ], [ %i.t, %bb.g ]
  %i.ab = phi i32 [ %.pre, %._crit_edge ], [ %i.z, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 2)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 5) ; 5 uses
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !40
  %i.af = mul nsw i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64
  store i64 %i.ag, ptr %i.q, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = getelementptr [32 x i8], ptr @G726Tables_pool, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 16 dereferenceable(32) %i.al, i64 32, i1 false), !tbaa.struct !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  store i8 32, ptr %i.an, align 2, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  store i8 32, ptr %i.ao, align 1, !tbaa !46
  store <2 x i32> splat (i32 1), ptr %i.am, align 8, !tbaa !48
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.h
  %indvars.iv.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i8 32, ptr %i.aq, align 1, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i, label %g726_reset.exit, label %.preheader.i, !llvm.loop !49

g726_reset.exit:                                  ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store <2 x i32> <i32 544, i32 34816>, ptr %i.ar, align 4, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i32 544, ptr %i.as, align 8, !tbaa !51
  store <4 x i32> <i32 4096, i32 2736, i32 2048, i32 1640>, ptr %i.a, align 16, !tbaa !48
  %i.at = zext nneg i32 %i.ae to i64
  %i.au = getelementptr [4 x i8], ptr %i.a, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %g726_reset.exit, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ 0, %g726_reset.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @g726_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul nsw i32 %i.g, %i.e
  %i.i = add nsw i32 %i.h, 7
  %i.j = sdiv i32 %i.i, 8
  %i.k = sext i32 %i.j to i64
  %i.l = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.k, i32 noundef 0) #12 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %spec.select.i = select i1 %i.r, ptr null, ptr %i.o ; 2 uses
  %spec.select11.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.s = zext nneg i32 %spec.select11.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.d, align 8, !tbaa !53
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %flush_put_bits_le.exit

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = ptrtoint ptr %i.t to i64                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %put_bits.exit
  %.066 = phi i32 [ 0, %.lr.ph ], [ %i.cq, %put_bits.exit ]
  %.02265 = phi ptr [ %i.c, %.lr.ph ], [ %.1, %put_bits.exit ] ; 2 uses
  %.sroa.0.064 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %put_bits.exit ] ; 3 uses
  %.sroa.17.063 = phi i32 [ 32, %.lr.ph ], [ %i.cp, %put_bits.exit ] ; 10 uses
  %.sroa.31.062 = phi ptr [ %spec.select.i, %.lr.ph ], [ %.sroa.31.1, %put_bits.exit ] ; 10 uses
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !33
  %.not25 = icmp eq i32 %i.ab, 0
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !40  ; 9 uses
  %i.ad = load i16, ptr %.02265, align 2, !tbaa !61
  %i.ae = sdiv i16 %i.ad, 4
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !63
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 3 uses
  %spec.select.i.i26 = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 4 uses
  %i.ai = and i32 %spec.select.i.i26, 65280
  %.not.i.i.i27 = icmp eq i32 %i.ai, 0            ; 2 uses
  %i.aj = lshr i32 %spec.select.i.i26, 8
  %spec.select.i.i.i28 = select i1 %.not.i.i.i27, i32 %spec.select.i.i26, i32 %i.aj
  %spec.select7.i.i.i29 = select i1 %.not.i.i.i27, i32 0, i32 8
  %i.ak = zext nneg i32 %spec.select.i.i.i28 to i64
  %i.al = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %spec.select7.i.i.i29, %i.an ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 7
  %i.aq = shl i32 %spec.select.i.i26, 7
  %i.ar = ashr i32 %i.aq, %i.ao
  %i.as = and i32 %i.ar, 127
  %i.at = load i32, ptr %i.y, align 8, !tbaa !51
  %i.au = ashr i32 %i.at, 2
  %i.av = sub nsw i32 %i.ap, %i.au
  %i.aw = add nsw i32 %i.av, %i.as                ; 2 uses
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !65  ; 2 uses
  br i1 %.not25, label %.preheader, label %.preheader92

.preheader92:                                     ; preds = %bb.c, %.preheader92
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader92 ], [ 0, %bb.c ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !48 ; 2 uses
  %.not.i.i = icmp ne i32 %i.az, 2147483647
  %i.ba = icmp slt i32 %i.az, %i.aw
  %or.cond24.i.i = select i1 %.not.i.i, i1 %i.ba, i1 false
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond24.i.i, label %.preheader92, label %g726_encode.exit, !llvm.loop !66

g726_encode.exit:                                 ; preds = %.preheader92
  %i.bb = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %.lobit.i.i = ashr i32 %i.ah, 31                ; 2 uses
  %spec.select25.i.i = xor i32 %.lobit.i.i, %i.bb
  %i.bc = icmp ne i32 %i.ac, 2
  %i.bd = icmp eq i32 %.lobit.i.i, %i.bb
  %or.cond.i.i = and i1 %i.bc, %i.bd
  %i.be = and i32 %spec.select25.i.i, 255
  %i.bf = select i1 %or.cond.i.i, i32 255, i32 %i.be
  %notmask.i.i = shl nsw i32 -1, %i.ac
  %i.bg = xor i32 %notmask.i.i, -1
  %i.bh = and i32 %i.bf, %i.bg                    ; 3 uses
  %i.bi = tail call fastcc signext i16 @g726_decode(ptr noundef nonnull %i.b, i32 noundef %i.bh) ; 0 uses
  %i.bj = sub nsw i32 32, %.sroa.17.063
  %i.bk = shl i32 %i.bh, %i.bj
  %i.bl = or i32 %i.bk, %.sroa.0.064              ; 2 uses
  %.not.i = icmp slt i32 %i.ac, %.sroa.17.063
  br i1 %.not.i, label %put_bits.exit, label %bb.d

bb.d:                                             ; preds = %g726_encode.exit
  %i.bm = ptrtoint ptr %.sroa.31.062 to i64
  %i.bn = sub i64 %i.aa, %i.bm
  %i.bo = icmp ugt i64 %i.bn, 3
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bl, ptr %.sroa.31.062, align 1, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.31.062, i64 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.14) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.31.2 = phi ptr [ %i.bp, %bb.e ], [ %.sroa.31.062, %bb.f ]
  %i.bq = lshr i32 %i.bh, %.sroa.17.063
  %i.br = add nsw i32 %.sroa.17.063, 32
  br label %put_bits.exit

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv.i.i30 = phi i64 [ %indvars.iv.next.i.i33, %.preheader ], [ 0, %bb.c ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i.i30
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !48 ; 2 uses
  %.not.i.i31 = icmp ne i32 %i.bt, 2147483647
  %i.bu = icmp slt i32 %i.bt, %i.aw
  %or.cond24.i.i32 = select i1 %.not.i.i31, i1 %i.bu, i1 false
  %indvars.iv.next.i.i33 = add nuw nsw i64 %indvars.iv.i.i30, 1
  br i1 %or.cond24.i.i32, label %.preheader, label %g726_encode.exit38, !llvm.loop !66

g726_encode.exit38:                               ; preds = %.preheader
  %i.bv = trunc nuw nsw i64 %indvars.iv.i.i30 to i32 ; 2 uses
  %.lobit.i.i34 = ashr i32 %i.ah, 31              ; 2 uses
  %spec.select25.i.i35 = xor i32 %.lobit.i.i34, %i.bv
  %i.bw = icmp ne i32 %i.ac, 2
  %i.bx = icmp eq i32 %.lobit.i.i34, %i.bv
  %or.cond.i.i36 = and i1 %i.bw, %i.bx
  %i.by = and i32 %spec.select25.i.i35, 255
  %i.bz = select i1 %or.cond.i.i36, i32 255, i32 %i.by
  %notmask.i.i37 = shl nsw i32 -1, %i.ac
  %i.ca = xor i32 %notmask.i.i37, -1
  %i.cb = and i32 %i.bz, %i.ca                    ; 4 uses
  %i.cc = tail call fastcc signext i16 @g726_decode(ptr noundef nonnull %i.b, i32 noundef %i.cb) ; 0 uses
  %i.cd = icmp slt i32 %i.ac, %.sroa.17.063
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %g726_encode.exit38
  %i.ce = shl i32 %.sroa.0.064, %i.ac
  %i.cf = or i32 %i.cb, %i.ce
  br label %put_bits.exit

bb.i:                                             ; preds = %g726_encode.exit38
  %i.cg = ptrtoint ptr %.sroa.31.062 to i64
  %i.ch = sub i64 %i.aa, %i.cg
  %i.ci = icmp ugt i64 %i.ch, 3
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = shl i32 %.sroa.0.064, %.sroa.17.063
  %i.ck = sub nsw i32 %i.ac, %.sroa.17.063
  %i.cl = lshr i32 %i.cb, %i.ck
  %i.cm = or i32 %i.cl, %i.cj
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  store i32 %i.cn, ptr %.sroa.31.062, align 1, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.31.062, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.14) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.31.4 = phi ptr [ %i.co, %bb.j ], [ %.sroa.31.062, %bb.k ]
  %reass.sub.i = add i32 %.sroa.17.063, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.g, %g726_encode.exit, %bb.l, %bb.h
  %reass.sub.i.sink = phi i32 [ %reass.sub.i, %bb.l ], [ %.sroa.17.063, %bb.h ], [ %.sroa.17.063, %g726_encode.exit ], [ %i.br, %bb.g ]
  %.sroa.31.1 = phi ptr [ %.sroa.31.4, %bb.l ], [ %.sroa.31.062, %bb.h ], [ %.sroa.31.062, %g726_encode.exit ], [ %.sroa.31.2, %bb.g ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %i.cb, %bb.l ], [ %i.cf, %bb.h ], [ %i.bl, %g726_encode.exit ], [ %i.bq, %bb.g ] ; 3 uses
  %i.cp = sub i32 %reass.sub.i.sink, %i.ac        ; 5 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.02265, i64 2
  %i.cq = add nuw nsw i32 %.066, 1                ; 2 uses
  %i.cr = load i32, ptr %i.d, align 8, !tbaa !53
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.c, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %put_bits.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !33
  %.not = icmp eq i32 %i.cu, 0
  %i.cv = icmp slt i32 %i.cp, 32                  ; 2 uses
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.cv, label %.lr.ph.i, label %flush_put_bits_le.exit

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %.sroa.31.6 = phi ptr [ %i.cy, %bb.o ], [ %.sroa.31.1, %bb.m ] ; 3 uses
  %.sroa.17.2 = phi i32 [ %i.da, %bb.o ], [ %i.cp, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.cz, %bb.o ], [ %.sroa.0.1, %bb.m ] ; 2 uses
  %i.cw = icmp ult ptr %.sroa.31.6, %i.t
  br i1 %i.cw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 177) #12
  tail call void @abort() #13
  unreachable

bb.o:                                             ; preds = %.lr.ph.i
  %i.cx = trunc i32 %.sroa.0.2 to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.31.6, i64 1
  store i8 %i.cx, ptr %.sroa.31.6, align 1, !tbaa !64
  %i.cz = lshr i32 %.sroa.0.2, 8
  %i.da = add nsw i32 %.sroa.17.2, 8
  %i.db = icmp slt i32 %.sroa.17.2, 24
  br i1 %i.db, label %.lr.ph.i, label %flush_put_bits_le.exit, !llvm.loop !68

bb.p:                                             ; preds = %._crit_edge
  br i1 %i.cv, label %.lr.ph.i39, label %flush_put_bits_le.exit

.lr.ph.i39:                                       ; preds = %bb.p
  %i.dc = shl i32 %.sroa.0.1, %i.cp
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i39
  %.sroa.31.7 = phi ptr [ %.sroa.31.1, %.lr.ph.i39 ], [ %i.dg, %bb.s ] ; 3 uses
  %.sroa.17.3 = phi i32 [ %i.cp, %.lr.ph.i39 ], [ %i.di, %bb.s ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %i.dc, %.lr.ph.i39 ], [ %i.dh, %bb.s ] ; 2 uses
  %i.dd = icmp ult ptr %.sroa.31.7, %i.t
  br i1 %i.dd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 160) #12
  tail call void @abort() #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.de = lshr i32 %.sroa.0.3, 24
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.31.7, i64 1
  store i8 %i.df, ptr %.sroa.31.7, align 1, !tbaa !64
  %i.dh = shl i32 %.sroa.0.3, 8
  %i.di = add nsw i32 %.sroa.17.3, 8
  %i.dj = icmp slt i32 %.sroa.17.3, 24
  br i1 %i.dj, label %bb.q, label %flush_put_bits_le.exit, !llvm.loop !69

flush_put_bits_le.exit:                           ; preds = %bb.o, %bb.s, %bb.b, %bb.p, %bb.m
  store i32 1, ptr %3, align 4, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %flush_put_bits_le.exit
  %.023 = phi i32 [ 0, %flush_put_bits_le.exit ], [ %i.l, %bb.a ]
  ret i32 %.023
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @g726_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #12
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.f) #12
  store <2 x i32> splat (i32 1), ptr %i.f, align 8, !tbaa !48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  %.not = icmp eq i32 %i.j, 0
  %i.k = zext i1 %.not to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 %i.k, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %i.n, ptr %i.o, align 4, !tbaa !40
  %i.p = add i32 %i.n, -6
  %or.cond = icmp ult i32 %i.p, -4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.n) #12
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = zext nneg i32 %i.n to i64
  %i.s = getelementptr [32 x i8], ptr @G726Tables_pool, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  store i8 32, ptr %i.v, align 2, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 45
  store i8 32, ptr %i.w, align 1, !tbaa !46
  store <2 x i32> splat (i32 1), ptr %i.u, align 8, !tbaa !48
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i8 32, ptr %i.y, align 1, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i, label %g726_reset.exit, label %.preheader.i, !llvm.loop !49

g726_reset.exit:                                  ; preds = %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store <2 x i32> <i32 544, i32 34816>, ptr %i.z, align 4, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 544, ptr %i.aa, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.ab, align 4, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !37
  %.not18 = icmp eq i32 %i.ad, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %g726_reset.exit
  store i32 8000, ptr %i.ac, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %g726_reset.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1163346256, %bb.b ], [ -22, %bb.d ], [ 0, %bb.f ], [ 0, %g726_reset.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @g726_decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 3 uses
  %i.g = shl nsw i32 %i.d, 3                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = sdiv i32 %i.g, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.j, ptr %i.k, align 8, !tbaa !53
  %i.l = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.g, 2147483135
  %i.n = icmp ne ptr %i.b, null
  %or.cond3.i = and i1 %i.n, %or.cond.i
  %.013.i = select i1 %or.cond3.i, i32 %i.g, i32 0 ; 2 uses
  %i.o = add nuw nsw i32 %.013.i, 8
  %.not31 = icmp eq i32 %i.j, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.in = phi i32 [ %i.j, %.lr.ph ], [ %i.r, %bb.f ]
  %.02233 = phi ptr [ %i.p, %.lr.ph ], [ %i.am, %bb.f ] ; 2 uses
  %.sroa.5.032 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.f ] ; 4 uses
  %i.r = add nsw i32 %.in, -1                     ; 2 uses
  %i.s = load i32, ptr %i.q, align 8, !tbaa !33
  %.not25 = icmp eq i32 %i.s, 0
  %i.t = load i32, ptr %i.h, align 4, !tbaa !40   ; 3 uses
  %i.u = lshr i32 %.sroa.5.032, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1, !tbaa !64   ; 2 uses
  %i.y = add i32 %i.t, %.sroa.5.032
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.y) ; 2 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %.sroa.5.032, 7
  %i.ab = lshr i32 %i.x, %i.aa
  %i.ac = sub i32 32, %i.t
  %i.ad = lshr i32 -1, %i.ac
  %i.ae = and i32 %i.ab, %i.ad
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.ag = and i32 %.sroa.5.032, 7
  %i.ah = shl i32 %i.af, %i.ag
  %i.ai = sub nsw i32 32, %i.t
  %i.aj = lshr i32 %i.ah, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = phi i32 [ %i.aj, %bb.e ], [ %i.ae, %bb.d ]
  %i.al = tail call fastcc signext i16 @g726_decode(ptr noundef nonnull %i.f, i32 noundef %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %.02233, i64 2
  store i16 %i.al, ptr %.02233, align 2, !tbaa !61
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.sroa.5.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.z, %bb.f ]
  %i.an = icmp sgt i32 %.013.i, %.sroa.5.0.lcssa
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.023 = phi i32 [ %i.d, %bb.h ], [ %i.l, %bb.a ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @g726_decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
.preheader.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [32 x i8], ptr @G726Tables_pool, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  store i8 32, ptr %i.j, align 2, !tbaa !46
  store i32 1, ptr %i.i, align 4, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 45
  store i8 32, ptr %i.k, align 1, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 1, ptr %i.l, align 4, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 32, ptr %i.m, align 4, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  store i8 32, ptr %i.n, align 1, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  store i8 32, ptr %i.o, align 2, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i8 32, ptr %i.p, align 1, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i8 32, ptr %i.q, align 4, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  store i8 32, ptr %i.r, align 1, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 544, ptr %i.s, align 4, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 34816, ptr %i.t, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 544, ptr %i.u, align 8, !tbaa !51
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i16 @g726_decode(ptr nofree noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = add nsw i32 %i.b, -1
  %i.d = ashr i32 %1, %i.c                        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %.val144 = load i32, ptr %i.f, align 8, !tbaa !51 ; 4 uses
  %i.g = sext i32 %1 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [2 x i8], ptr %.val, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !61
  %i.j = sext i16 %i.i to i32
  %i.k = ashr i32 %.val144, 2
  %i.l = add nsw i32 %i.k, %i.j                   ; 3 uses
  %i.m = lshr i32 %i.l, 7
  %i.n = and i32 %i.m, 15
  %i.o = and i32 %i.l, 127
  %i.p = or disjoint i32 %i.o, 128
  %i.q = icmp slt i32 %i.l, 0
  %i.r = shl nuw nsw i32 %i.p, %i.n
  %i.s = shl nuw i32 %i.r, 9
  %i.t = ashr i32 %i.s, 16
  %i.u = select i1 %i.q, i32 0, i32 %i.t          ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !76
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.v, align 8, !tbaa !74   ; 2 uses
  %i.aa = ashr i32 %i.z, 15                       ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 9
  %i.ac = lshr i32 %i.z, 10
  %i.ad = and i32 %i.ac, 31
  %i.ae = or disjoint i32 %i.ad, 32
  %i.af = shl i32 %i.ae, %i.aa
  %i.ag = mul nsw i32 %i.af, 3
  %i.ah = ashr i32 %i.ag, 2
  %i.ai = select i1 %i.ab, i32 23808, i32 %i.ah
  %i.aj = icmp slt i32 %i.ai, %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = phi i1 [ false, %bb.a ], [ %i.aj, %bb.b ] ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %i.al = sub nsw i32 0, %i.u
  %spec.select = select i1 %.not, i32 %i.u, i32 %i.al ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !63
  %i.ao = add nsw i32 %i.an, %spec.select
  %sext = shl i32 %i.ao, 16                       ; 3 uses
  %i.ap = ashr exact i32 %sext, 16                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !77
  %i.as = add nsw i32 %i.ar, %spec.select
  %i.at = tail call i32 @llvm.scmp.i32.i32(i32 %i.as, i32 0) ; 4 uses
  br i1 %i.ak, label %.loopexit.loopexit, label %.loopexit.loopexit179

.loopexit.loopexit:                               ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %.loopexit

.loopexit.loopexit179:                            ; preds = %bb.c
  %.not132 = icmp eq i32 %spec.select, 0
  %.inv.i145 = icmp sgt i32 %spec.select, -1
  %i.av = select i1 %.inv.i145, i32 128, i32 -128
  %i.aw = select i1 %.not132, i32 0, i32 %i.av    ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !48 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !48 ; 3 uses
  %i.bb = mul i32 %i.at, %i.ay
  %i.bc = mul i32 %i.bb, %i.ba
  %i.bd = sub i32 0, %i.bc
  %i.be = ashr i32 %i.bd, 5
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 -256)
  %.0.i143 = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 255)
  %i.bg = shl nsw i32 %i.at, 7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !48
  %i.bj = mul nsw i32 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !48 ; 2 uses
  %i.bm = ashr i32 %i.bl, 7
  %i.bn = add i32 %i.bl, %i.bj
  %i.bo = sub i32 %i.bn, %i.bm
  %i.bp = add i32 %i.bo, %.0.i143                 ; 2 uses
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 -12288)
  %.0.i142 = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 12288) ; 3 uses
  store i32 %.0.i142, ptr %i.bk, align 4, !tbaa !48
  %i.br = mul nsw i32 %i.at, 192
  %i.bs = mul nsw i32 %i.br, %i.ba
  %i.bt = ashr i32 %i.ay, 8
  %i.bu = sub nsw i32 %i.bs, %i.bt
  %i.bv = add nsw i32 %i.bu, %i.ay                ; 2 uses
  %.neg = add nsw i32 %.0.i142, -15360            ; 2 uses
  %i.bw = sub nsw i32 15360, %.0.i142
  %i.bx = icmp slt i32 %i.bv, %.neg
  %..i139 = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bw)
  %.0.i140 = select i1 %i.bx, i32 %.neg, i32 %..i139
  store i32 %.0.i140, ptr %i.ax, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.bz = sub nsw i32 0, %i.aw                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cb = load i8, ptr %i.by, align 2, !tbaa !78
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !78
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !78
  %i.ci = insertelement <4 x i8> poison, i8 %i.cb, i64 0
  %i.cj = insertelement <4 x i8> %i.ci, i8 %i.cd, i64 1
  %i.ck = insertelement <4 x i8> %i.cj, i8 %i.cf, i64 2
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.ch, i64 3
  %i.cm = icmp eq <4 x i8> %i.cl, zeroinitializer
  %i.cn = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cp = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.cq = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cr = select <4 x i1> %i.cm, <4 x i32> %i.co, <4 x i32> %i.cq
  %i.cs = load <4 x i32>, ptr %i.ca, align 8, !tbaa !48 ; 2 uses
  %i.ct = ashr <4 x i32> %i.cs, splat (i32 8)
  %i.cu = sub <4 x i32> %i.cs, %i.ct
  %i.cv = add <4 x i32> %i.cu, %i.cr              ; 3 uses
  store <4 x i32> %i.cv, ptr %i.ca, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !78
  %.inv.i146.5 = icmp eq i8 %i.da, 0
  %.inv.i146.4 = icmp eq i8 %i.cx, 0
  %i.db = select i1 %.inv.i146.5, i32 %i.aw, i32 %i.bz
  %i.dc = select i1 %.inv.i146.4, i32 %i.aw, i32 %i.bz
  %i.dd = load <2 x i32>, ptr %i.cy, align 8, !tbaa !48 ; 2 uses
  %i.de = ashr <2 x i32> %i.dd, splat (i32 8)
  %i.df = sub <2 x i32> %i.dd, %i.de
  %i.dg = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %i.dh = insertelement <2 x i32> %i.dg, i32 %i.db, i64 1
  %i.di = add <2 x i32> %i.df, %i.dh
  store <2 x i32> %i.di, ptr %i.cy, align 8, !tbaa !48
  %i.dj = icmp slt i32 %i.bp, -11776
  %i.dk = extractelement <4 x i32> %i.cv, i64 0
  %i.dl = ashr i32 %i.dk, 2
  %i.dm = extractelement <4 x i32> %i.cv, i64 1
  %i.dn = ashr i32 %i.dm, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit179, %.loopexit.loopexit
  %i.do = phi i32 [ %i.dn, %.loopexit.loopexit179 ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %i.dp = phi i32 [ %i.dl, %.loopexit.loopexit179 ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %i.dq = phi i1 [ %i.dj, %.loopexit.loopexit179 ], [ false, %.loopexit.loopexit ] ; 2 uses
  %i.dr = phi i32 [ %i.ba, %.loopexit.loopexit179 ], [ %.pre, %.loopexit.loopexit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !48
  %i.du = tail call i32 @llvm.umax.i32(i32 %i.at, i32 1)
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !48
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dw, ptr noundef nonnull align 8 dereferenceable(3) %i.dv, i64 3, i1 false), !tbaa.struct !79
  %.lobit.i = lshr i32 %i.ap, 31
  %i.dx = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.dx, ptr %i.dv, align 8, !tbaa !78
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.ap, i1 true) ; 4 uses
  %i.dy = and i32 %spec.select.i, 65280
  %.not.i.i = icmp eq i32 %i.dy, 0                ; 2 uses
  %i.dz = lshr i32 %spec.select.i, 8
  %spec.select.i.i = select i1 %.not.i.i, i32 %spec.select.i, i32 %i.dz
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.ea = zext nneg i32 %spec.select.i.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !64
  %i.ed = zext i8 %i.ec to i32
  %i.ee = icmp ne i32 %sext, 0                    ; 2 uses
  %i.ef = zext i1 %i.ee to i32
  %i.eg = or disjoint i32 %spec.select7.i.i, %i.ef
  %i.eh = add nuw nsw i32 %i.eg, %i.ed            ; 2 uses
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !80
  %i.ek = shl nuw nsw i32 %spec.select.i, 6
  %i.el = and i32 %i.eh, 255
  %i.em = lshr i32 %i.ek, %i.el
  %i.en = trunc i32 %i.em to i8
  %i.eo = select i1 %i.ee, i8 %i.en, i8 32
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.eo, ptr %i.ep, align 2, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 49
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %scevgep, ptr noundef nonnull align 1 dereferenceable(15) %i.eq, i64 15, i1 false)
  %spec.select.i148 = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 4 uses
  %i.er = and i32 %spec.select.i148, 65280
  %.not.i.i149 = icmp eq i32 %i.er, 0             ; 2 uses
  %i.es = lshr i32 %spec.select.i148, 8
  %spec.select.i.i150 = select i1 %.not.i.i149, i32 %spec.select.i148, i32 %i.es
  %spec.select7.i.i151 = select i1 %.not.i.i149, i32 0, i32 8
  %i.et = zext nneg i32 %spec.select.i.i150 to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = zext i8 %i.ev to i32
  %i.ex = icmp ne i32 %i.u, 0                     ; 2 uses
  %i.ey = zext i1 %i.ex to i32
  %i.ez = or disjoint i32 %spec.select7.i.i151, %i.ey
  %i.fa = add nuw nsw i32 %i.ez, %i.ew            ; 3 uses
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !80
  %i.fd = shl nuw nsw i32 %spec.select.i148, 6
  %i.fe = and i32 %i.fa, 255
  %i.ff = lshr i32 %i.fd, %i.fe
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = select i1 %i.ex, i8 %i.fg, i8 32        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.fh, ptr %i.fi, align 8, !tbaa !46
  %i.fj = trunc i32 %i.d to i8                    ; 2 uses
  store i8 %i.fj, ptr %i.eq, align 2, !tbaa !78
  %i.fk = zext i1 %i.dq to i32
  store i32 %i.fk, ptr %i.w, align 4, !tbaa !76
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !81
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.g ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !64
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !82 ; 2 uses
  %i.ft = sub nsw i32 0, %i.fs
  %i.fu = ashr i32 %i.ft, 5
  %i.fv = add i32 %i.fu, %i.fs
  %i.fw = add i32 %i.fv, %i.fq                    ; 2 uses
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !82
  %i.fx = load i8, ptr %i.fn, align 1, !tbaa !64
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw nsw i32 %i.fy, 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !83 ; 2 uses
  %i.gc = sub nsw i32 0, %i.gb
  %i.gd = ashr i32 %i.gc, 7
  %i.ge = add i32 %i.gd, %i.gb
  %i.gf = add i32 %i.ge, %i.fz                    ; 3 uses
  store i32 %i.gf, ptr %i.ga, align 8, !tbaa !83
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br i1 %i.ak, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !84 ; 2 uses
  %i.gi = sub nsw i32 0, %i.gh
  %i.gj = ashr i32 %i.gi, 4
  %i.gk = add nsw i32 %i.gj, %i.gh                ; 3 uses
  store i32 %i.gk, ptr %i.gg, align 8, !tbaa !84
  %i.gl = icmp slt i32 %.val144, 1536
  %or.cond.not = select i1 %i.gl, i1 true, i1 %i.dq
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gm = shl i32 %i.fw, 2
  %i.gn = sub nsw i32 %i.gm, %i.gf
  %i.go = tail call i32 @llvm.abs.i32(i32 %i.gn, i1 true)
  %i.gp = ashr i32 %i.gf, 3
  %.not135 = icmp slt i32 %i.go, %i.gp
  br i1 %.not135, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.gq = add nsw i32 %i.gk, 32
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.f
  %.sink = phi i32 [ %i.gq, %bb.f ], [ 256, %.loopexit ] ; 2 uses
  store i32 %.sink, ptr %i.gg, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.gr = phi i32 [ %i.gk, %bb.e ], [ %.sink, %.sink.split ]
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gu, i64 %i.g
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !61
  %i.gx = sext i16 %i.gw to i32
  %i.gy = sub nsw i32 0, %.val144
  %i.gz = ashr i32 %i.gy, 5
  %i.ha = add i32 %i.gz, %.val144
  %i.hb = add i32 %i.ha, %i.gx
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 544)
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 5120) ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !73
  %i.hf = load i32, ptr %i.v, align 8, !tbaa !74  ; 2 uses
  %i.hg = sub nsw i32 0, %i.hf
  %i.hh = ashr i32 %i.hg, 6
  %i.hi = add i32 %i.hh, %i.hf
  %i.hj = add i32 %i.hi, %i.hd                    ; 3 uses
  store i32 %i.hj, ptr %i.v, align 8, !tbaa !74
  %i.hk = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 256)
  %spec.select136 = ashr i32 %i.hk, 2
  %i.hl = ashr i32 %i.hj, 6
  %i.hm = sub nsw i32 %i.hd, %i.hl
  %i.hn = mul nsw i32 %i.hm, %spec.select136
  %i.ho = add nsw i32 %i.hn, %i.hj
  %i.hp = ashr i32 %i.ho, 6
  store i32 %i.hp, ptr %i.f, align 8, !tbaa !51
  %.lobit.i152 = lshr i32 %i.dp, 31
  %i.hq = trunc nuw nsw i32 %.lobit.i152 to i8
  %spec.select.i153 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.dp, i1 true) ; 4 uses
  %i.hr = and i32 %spec.select.i153, 65280
  %.not.i.i154 = icmp eq i32 %i.hr, 0             ; 2 uses
  %i.hs = lshr i32 %spec.select.i153, 8
  %spec.select.i.i155 = select i1 %.not.i.i154, i32 %spec.select.i153, i32 %i.hs
  %spec.select7.i.i156 = select i1 %.not.i.i154, i8 0, i8 8
  %i.ht = zext nneg i32 %spec.select.i.i155 to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !64
  %i.hw = icmp ne i32 %i.dp, 0                    ; 2 uses
  %i.hx = zext i1 %i.hw to i8
  %.tr = or disjoint i8 %spec.select7.i.i156, %i.hx
  %i.hy = shl i32 %spec.select.i153, 6
  %.narrow = add i8 %.tr, %i.hv
  %i.hz = zext i8 %.narrow to i32                 ; 2 uses
  %i.ia = ashr i32 %i.hy, %i.hz
  %i.ib = and i32 %i.fa, 255
  %i.ic = add nuw nsw i32 %i.ib, %i.hz            ; 3 uses
  %i.id = and i32 %i.ia, 255
  %i.ie = select i1 %i.hw, i32 %i.id, i32 32
  %i.if = zext i8 %i.fh to i32
  %i.ig = mul nuw nsw i32 %i.ie, %i.if
  %i.ih = add nuw nsw i32 %i.ig, 48
  %i.ii = lshr i32 %i.ih, 4                       ; 2 uses
  %i.ij = icmp samesign ugt i32 %i.ic, 19
  %i.ik = add nsw i32 %i.ic, -19
  %i.il = shl i32 %i.ii, %i.ik
  %i.im = sub nuw nsw i32 19, %i.ic
  %i.in = lshr i32 %i.ii, %i.im
  %i.io = select i1 %i.ij, i32 %i.il, i32 %i.in   ; 2 uses
  %.not.i = icmp eq i8 %i.fj, %i.hq
  %i.ip = sub nsw i32 0, %i.io
  %i.iq = select i1 %.not.i, i32 %i.io, i32 %i.ip
  %sext169 = shl i32 %i.iq, 16
  %i.ir = ashr exact i32 %sext169, 16
  %.lobit.i152.1 = lshr i32 %i.do, 31
  %i.is = trunc nuw nsw i32 %.lobit.i152.1 to i8
  %spec.select.i153.1 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.do, i1 true) ; 4 uses
  %i.it = and i32 %spec.select.i153.1, 65280
  %.not.i.i154.1 = icmp eq i32 %i.it, 0           ; 2 uses
  %i.iu = lshr i32 %spec.select.i153.1, 8
  %spec.select.i.i155.1 = select i1 %.not.i.i154.1, i32 %spec.select.i153.1, i32 %i.iu
  %spec.select7.i.i156.1 = select i1 %.not.i.i154.1, i8 0, i8 8
  %i.iv = zext nneg i32 %spec.select.i.i155.1 to i64
  %i.iw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !64
  %i.iy = icmp ne i32 %i.do, 0                    ; 2 uses
  %i.iz = zext i1 %i.iy to i8
  %.tr185 = or disjoint i8 %spec.select7.i.i156.1, %i.iz
  %i.ja = shl i32 %spec.select.i153.1, 6
  %.narrow186 = add i8 %.tr185, %i.ix
  %i.jb = zext i8 %.narrow186 to i32              ; 2 uses
  %i.jc = ashr i32 %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.jf = load i8, ptr %i.je, align 2, !tbaa !80
  %i.jg = zext i8 %i.jf to i32
  %i.jh = add nuw nsw i32 %i.jb, %i.jg            ; 3 uses
  %i.ji = and i32 %i.jc, 255
  %i.jj = select i1 %i.iy, i32 %i.ji, i32 32
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !46
  %i.jm = zext i8 %i.jl to i32
  %i.jn = mul nuw nsw i32 %i.jj, %i.jm
  %i.jo = add nuw nsw i32 %i.jn, 48
  %i.jp = lshr i32 %i.jo, 4                       ; 2 uses
  %i.jq = icmp samesign ugt i32 %i.jh, 19
  %i.jr = add nsw i32 %i.jh, -19
  %i.js = shl i32 %i.jp, %i.jr
  %i.jt = sub nuw nsw i32 19, %i.jh
  %i.ju = lshr i32 %i.jp, %i.jt
  %i.jv = select i1 %i.jq, i32 %i.js, i32 %i.ju   ; 2 uses
  %i.jw = load i8, ptr %i.jd, align 1, !tbaa !78
  %.not.i.1 = icmp eq i8 %i.jw, %i.is
  %i.jx = sub nsw i32 0, %i.jv
  %i.jy = select i1 %.not.i.1, i32 %i.jv, i32 %i.jx
  %sext169.1 = shl i32 %i.jy, 16
  %i.jz = ashr exact i32 %sext169.1, 16
  %i.ka = add nsw i32 %i.jz, %i.ir
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !48
  %i.kd = ashr i32 %i.kc, 2                       ; 3 uses
  %.lobit.i152.2 = lshr i32 %i.kd, 31
  %i.ke = trunc nuw nsw i32 %.lobit.i152.2 to i8
  %spec.select.i153.2 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.kd, i1 true) ; 4 uses
  %i.kf = and i32 %spec.select.i153.2, 65280
  %.not.i.i154.2 = icmp eq i32 %i.kf, 0           ; 2 uses
  %i.kg = lshr i32 %spec.select.i153.2, 8
  %spec.select.i.i155.2 = select i1 %.not.i.i154.2, i32 %spec.select.i153.2, i32 %i.kg
  %spec.select7.i.i156.2 = select i1 %.not.i.i154.2, i8 0, i8 8
  %i.kh = zext nneg i32 %spec.select.i.i155.2 to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !64
  %i.kk = icmp ne i32 %i.kd, 0                    ; 2 uses
  %i.kl = zext i1 %i.kk to i8
  %.tr187 = or disjoint i8 %spec.select7.i.i156.2, %i.kl
  %i.km = shl i32 %spec.select.i153.2, 6
  %.narrow188 = add i8 %.tr187, %i.kj
  %i.kn = zext i8 %.narrow188 to i32              ; 2 uses
  %i.ko = ashr i32 %i.km, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !80
  %i.ks = zext i8 %i.kr to i32
  %i.kt = add nuw nsw i32 %i.kn, %i.ks            ; 3 uses
  %i.ku = and i32 %i.ko, 255
  %i.kv = select i1 %i.kk, i32 %i.ku, i32 32
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !46
  %i.ky = zext i8 %i.kx to i32
  %i.kz = mul nuw nsw i32 %i.kv, %i.ky
  %i.la = add nuw nsw i32 %i.kz, 48
  %i.lb = lshr i32 %i.la, 4                       ; 2 uses
  %i.lc = icmp samesign ugt i32 %i.kt, 19
  %i.ld = add nsw i32 %i.kt, -19
  %i.le = shl i32 %i.lb, %i.ld
  %i.lf = sub nuw nsw i32 19, %i.kt
  %i.lg = lshr i32 %i.lb, %i.lf
  %i.lh = select i1 %i.lc, i32 %i.le, i32 %i.lg   ; 2 uses
  %i.li = load i8, ptr %i.kp, align 4, !tbaa !78
  %.not.i.2 = icmp eq i8 %i.li, %i.ke
  %i.lj = sub nsw i32 0, %i.lh
  %i.lk = select i1 %.not.i.2, i32 %i.lh, i32 %i.lj
  %sext169.2 = shl i32 %i.lk, 16
  %i.ll = ashr exact i32 %sext169.2, 16
  %i.lm = add nsw i32 %i.ll, %i.ka
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !48
  %i.lp = ashr i32 %i.lo, 2                       ; 3 uses
  %.lobit.i152.3 = lshr i32 %i.lp, 31
  %i.lq = trunc nuw nsw i32 %.lobit.i152.3 to i8
  %spec.select.i153.3 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.lp, i1 true) ; 4 uses
  %i.lr = and i32 %spec.select.i153.3, 65280
  %.not.i.i154.3 = icmp eq i32 %i.lr, 0           ; 2 uses
  %i.ls = lshr i32 %spec.select.i153.3, 8
  %spec.select.i.i155.3 = select i1 %.not.i.i154.3, i32 %spec.select.i153.3, i32 %i.ls
  %spec.select7.i.i156.3 = select i1 %.not.i.i154.3, i8 0, i8 8
  %i.lt = zext nneg i32 %spec.select.i.i155.3 to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !64
  %i.lw = icmp ne i32 %i.lp, 0                    ; 2 uses
  %i.lx = zext i1 %i.lw to i8
  %.tr189 = or disjoint i8 %spec.select7.i.i156.3, %i.lx
  %i.ly = shl i32 %spec.select.i153.3, 6
  %.narrow190 = add i8 %.tr189, %i.lv
  %i.lz = zext i8 %.narrow190 to i32              ; 2 uses
  %i.ma = ashr i32 %i.ly, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !80
  %i.me = zext i8 %i.md to i32
  %i.mf = add nuw nsw i32 %i.lz, %i.me            ; 3 uses
  %i.mg = and i32 %i.ma, 255
  %i.mh = select i1 %i.lw, i32 %i.mg, i32 32
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !46
  %i.mk = zext i8 %i.mj to i32
  %i.ml = mul nuw nsw i32 %i.mh, %i.mk
  %i.mm = add nuw nsw i32 %i.ml, 48
  %i.mn = lshr i32 %i.mm, 4                       ; 2 uses
  %i.mo = icmp samesign ugt i32 %i.mf, 19
  %i.mp = add nsw i32 %i.mf, -19
  %i.mq = shl i32 %i.mn, %i.mp
  %i.mr = sub nuw nsw i32 19, %i.mf
  %i.ms = lshr i32 %i.mn, %i.mr
  %i.mt = select i1 %i.mo, i32 %i.mq, i32 %i.ms   ; 2 uses
  %i.mu = load i8, ptr %i.mb, align 1, !tbaa !78
  %.not.i.3 = icmp eq i8 %i.mu, %i.lq
  %i.mv = sub nsw i32 0, %i.mt
  %i.mw = select i1 %.not.i.3, i32 %i.mt, i32 %i.mv
  %sext169.3 = shl i32 %i.mw, 16
  %i.mx = ashr exact i32 %sext169.3, 16
  %i.my = add nsw i32 %i.mx, %i.lm
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !48
  %i.nb = ashr i32 %i.na, 2                       ; 3 uses
  %.lobit.i152.4 = lshr i32 %i.nb, 31
  %i.nc = trunc nuw nsw i32 %.lobit.i152.4 to i8
  %spec.select.i153.4 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.nb, i1 true) ; 4 uses
  %i.nd = and i32 %spec.select.i153.4, 65280
  %.not.i.i154.4 = icmp eq i32 %i.nd, 0           ; 2 uses
  %i.ne = lshr i32 %spec.select.i153.4, 8
  %spec.select.i.i155.4 = select i1 %.not.i.i154.4, i32 %spec.select.i153.4, i32 %i.ne
  %spec.select7.i.i156.4 = select i1 %.not.i.i154.4, i8 0, i8 8
  %i.nf = zext nneg i32 %spec.select.i.i155.4 to i64
  %i.ng = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !64
  %i.ni = icmp ne i32 %i.nb, 0                    ; 2 uses
  %i.nj = zext i1 %i.ni to i8
  %.tr191 = or disjoint i8 %spec.select7.i.i156.4, %i.nj
  %i.nk = shl i32 %spec.select.i153.4, 6
  %.narrow192 = add i8 %.tr191, %i.nh
  %i.nl = zext i8 %.narrow192 to i32              ; 2 uses
  %i.nm = ashr i32 %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.np = load i8, ptr %i.no, align 1, !tbaa !80
  %i.nq = zext i8 %i.np to i32
  %i.nr = add nuw nsw i32 %i.nl, %i.nq            ; 3 uses
  %i.ns = and i32 %i.nm, 255
  %i.nt = select i1 %i.ni, i32 %i.ns, i32 32
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.nv = load i8, ptr %i.nu, align 4, !tbaa !46
  %i.nw = zext i8 %i.nv to i32
  %i.nx = mul nuw nsw i32 %i.nt, %i.nw
  %i.ny = add nuw nsw i32 %i.nx, 48
  %i.nz = lshr i32 %i.ny, 4                       ; 2 uses
  %i.oa = icmp samesign ugt i32 %i.nr, 19
  %i.ob = add nsw i32 %i.nr, -19
  %i.oc = shl i32 %i.nz, %i.ob
  %i.od = sub nuw nsw i32 19, %i.nr
  %i.oe = lshr i32 %i.nz, %i.od
  %i.of = select i1 %i.oa, i32 %i.oc, i32 %i.oe   ; 2 uses
  %i.og = load i8, ptr %i.nn, align 2, !tbaa !78
  %.not.i.4 = icmp eq i8 %i.og, %i.nc
  %i.oh = sub nsw i32 0, %i.of
  %i.oi = select i1 %.not.i.4, i32 %i.of, i32 %i.oh
  %sext169.4 = shl i32 %i.oi, 16
  %i.oj = ashr exact i32 %sext169.4, 16
  %i.ok = add nsw i32 %i.oj, %i.my
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !48
  %i.on = ashr i32 %i.om, 2                       ; 3 uses
  %.lobit.i152.5 = lshr i32 %i.on, 31
  %i.oo = trunc nuw nsw i32 %.lobit.i152.5 to i8
  %spec.select.i153.5 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.on, i1 true) ; 4 uses
  %i.op = and i32 %spec.select.i153.5, 65280
  %.not.i.i154.5 = icmp eq i32 %i.op, 0           ; 2 uses
  %i.oq = lshr i32 %spec.select.i153.5, 8
  %spec.select.i.i155.5 = select i1 %.not.i.i154.5, i32 %spec.select.i153.5, i32 %i.oq
  %spec.select7.i.i156.5 = select i1 %.not.i.i154.5, i8 0, i8 8
  %i.or = zext nneg i32 %spec.select.i.i155.5 to i64
  %i.os = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !64
  %i.ou = icmp ne i32 %i.on, 0                    ; 2 uses
  %i.ov = zext i1 %i.ou to i8
  %.tr193 = or disjoint i8 %spec.select7.i.i156.5, %i.ov
  %i.ow = shl i32 %spec.select.i153.5, 6
  %.narrow194 = add i8 %.tr193, %i.ot
  %i.ox = zext i8 %.narrow194 to i32              ; 2 uses
  %i.oy = ashr i32 %i.ow, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.pb = load i8, ptr %i.pa, align 2, !tbaa !80
  %i.pc = zext i8 %i.pb to i32
  %i.pd = add nuw nsw i32 %i.ox, %i.pc            ; 3 uses
  %i.pe = and i32 %i.oy, 255
  %i.pf = select i1 %i.ou, i32 %i.pe, i32 32
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !46
  %i.pi = zext i8 %i.ph to i32
  %i.pj = mul nuw nsw i32 %i.pf, %i.pi
  %i.pk = add nuw nsw i32 %i.pj, 48
  %i.pl = lshr i32 %i.pk, 4                       ; 2 uses
  %i.pm = icmp samesign ugt i32 %i.pd, 19
  %i.pn = add nsw i32 %i.pd, -19
  %i.po = shl i32 %i.pl, %i.pn
  %i.pp = sub nuw nsw i32 19, %i.pd
  %i.pq = lshr i32 %i.pl, %i.pp
  %i.pr = select i1 %i.pm, i32 %i.po, i32 %i.pq   ; 2 uses
  %i.ps = load i8, ptr %i.oz, align 1, !tbaa !78
  %.not.i.5 = icmp eq i8 %i.ps, %i.oo
  %i.pt = sub nsw i32 0, %i.pr
  %i.pu = select i1 %.not.i.5, i32 %i.pr, i32 %i.pt
  %sext169.5 = shl i32 %i.pu, 16
  %i.pv = ashr exact i32 %sext169.5, 16
  %i.pw = add nsw i32 %i.pv, %i.ok                ; 2 uses
  %i.px = ashr i32 %i.pw, 1
  store i32 %i.px, ptr %i.aq, align 4, !tbaa !77
  %i.py = load i32, ptr %i.gs, align 8, !tbaa !48
  %i.pz = ashr i32 %i.py, 2                       ; 3 uses
  %.lobit.i157 = lshr i32 %i.pz, 31
  %i.qa = trunc nuw nsw i32 %.lobit.i157 to i8
  %spec.select.i158 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.pz, i1 true) ; 4 uses
  %i.qb = and i32 %spec.select.i158, 65280
  %.not.i.i159 = icmp eq i32 %i.qb, 0             ; 2 uses
  %i.qc = lshr i32 %spec.select.i158, 8
  %spec.select.i.i160 = select i1 %.not.i.i159, i32 %spec.select.i158, i32 %i.qc
  %spec.select7.i.i161 = select i1 %.not.i.i159, i8 0, i8 8
  %i.qd = zext nneg i32 %spec.select.i.i160 to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !64
  %i.qg = icmp ne i32 %i.pz, 0                    ; 2 uses
  %i.qh = zext i1 %i.qg to i8
  %.tr195 = or disjoint i8 %spec.select7.i.i161, %i.qh
  %i.qi = shl i32 %spec.select.i158, 6
  %.narrow196 = add i8 %.tr195, %i.qf
  %i.qj = zext i8 %.narrow196 to i32              ; 2 uses
  %i.qk = ashr i32 %i.qi, %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !80
  %i.qn = zext i8 %i.qm to i32
  %i.qo = add nuw nsw i32 %i.qj, %i.qn            ; 3 uses
  %i.qp = and i32 %i.qk, 255
  %i.qq = select i1 %i.qg, i32 %i.qp, i32 32
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !46
  %i.qt = zext i8 %i.qs to i32
  %i.qu = mul nuw nsw i32 %i.qq, %i.qt
  %i.qv = add nuw nsw i32 %i.qu, 48
  %i.qw = lshr i32 %i.qv, 4                       ; 2 uses
  %i.qx = icmp samesign ugt i32 %i.qo, 19
  %i.qy = add nsw i32 %i.qo, -19
  %i.qz = shl i32 %i.qw, %i.qy
  %i.ra = sub nuw nsw i32 19, %i.qo
  %i.rb = lshr i32 %i.qw, %i.ra
  %i.rc = select i1 %i.qx, i32 %i.qz, i32 %i.rb   ; 2 uses
  %i.rd = load i8, ptr %i.dv, align 8, !tbaa !78
  %.not.i162 = icmp eq i8 %i.rd, %i.qa
  %i.re = sub nsw i32 0, %i.rc
  %i.rf = select i1 %.not.i162, i32 %i.rc, i32 %i.re
  %sext168 = shl i32 %i.rf, 16
  %i.rg = ashr exact i32 %sext168, 16
  %i.rh = add nsw i32 %i.rg, %i.pw
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !48
  %i.rk = ashr i32 %i.rj, 2                       ; 3 uses
  %.lobit.i157.1 = lshr i32 %i.rk, 31
  %i.rl = trunc nuw nsw i32 %.lobit.i157.1 to i8
  %spec.select.i158.1 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.rk, i1 true) ; 4 uses
  %i.rm = and i32 %spec.select.i158.1, 65280
  %.not.i.i159.1 = icmp eq i32 %i.rm, 0           ; 2 uses
  %i.rn = lshr i32 %spec.select.i158.1, 8
  %spec.select.i.i160.1 = select i1 %.not.i.i159.1, i32 %spec.select.i158.1, i32 %i.rn
  %spec.select7.i.i161.1 = select i1 %.not.i.i159.1, i8 0, i8 8
  %i.ro = zext nneg i32 %spec.select.i.i160.1 to i64
  %i.rp = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ro
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !64
  %i.rr = icmp ne i32 %i.rk, 0                    ; 2 uses
  %i.rs = zext i1 %i.rr to i8
  %.tr197 = or disjoint i8 %spec.select7.i.i161.1, %i.rs
  %i.rt = shl i32 %spec.select.i158.1, 6
  %.narrow198 = add i8 %.tr197, %i.rq
  %i.ru = zext i8 %.narrow198 to i32              ; 2 uses
  %i.rv = ashr i32 %i.rt, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ry = load i8, ptr %i.rx, align 4, !tbaa !80
  %i.rz = zext i8 %i.ry to i32
  %i.sa = add nuw nsw i32 %i.ru, %i.rz            ; 3 uses
  %i.sb = and i32 %i.rv, 255
  %i.sc = select i1 %i.rr, i32 %i.sb, i32 32
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !46
  %i.sf = zext i8 %i.se to i32
  %i.sg = mul nuw nsw i32 %i.sc, %i.sf
  %i.sh = add nuw nsw i32 %i.sg, 48
  %i.si = lshr i32 %i.sh, 4                       ; 2 uses
  %i.sj = icmp samesign ugt i32 %i.sa, 19
  %i.sk = add nsw i32 %i.sa, -19
  %i.sl = shl i32 %i.si, %i.sk
  %i.sm = sub nuw nsw i32 19, %i.sa
  %i.sn = lshr i32 %i.si, %i.sm
  %i.so = select i1 %i.sj, i32 %i.sl, i32 %i.sn   ; 2 uses
  %i.sp = load i8, ptr %i.rw, align 1, !tbaa !78
  %.not.i162.1 = icmp eq i8 %i.sp, %i.rl
  %i.sq = sub nsw i32 0, %i.so
  %i.sr = select i1 %.not.i162.1, i32 %i.so, i32 %i.sq
  %sext168.1 = shl i32 %i.sr, 16
  %i.ss = ashr exact i32 %sext168.1, 16
  %i.st = add nsw i32 %i.ss, %i.rh
  %i.su = ashr i32 %i.st, 1
  store i32 %i.su, ptr %i.am, align 8, !tbaa !63
  %i.sv = ashr exact i32 %sext, 14
  %i.sw = tail call i32 @llvm.smax.i32(i32 %i.sv, i32 -65535)
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.sw, i32 65535)
  %i.sx = trunc i32 %.0.i to i16
  ret i16 %i.sx
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!29 = !{!10, !13, i64 16}
!30 = !{!31, !16, i64 0}
!31 = !{!"AVCodec", !16, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !11, i64 32, !32, i64 40, !16, i64 48}
!32 = !{!"p1 _ZTS9AVProfile", !12, i64 0}
!33 = !{!34, !6, i64 144}
!34 = !{!"G726Context", !11, i64 0, !35, i64 8, !7, i64 40, !7, i64 46, !7, i64 64, !7, i64 72, !7, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144}
!35 = !{!"G726Tables", !26, i64 0, !19, i64 8, !19, i64 16, !16, i64 24}
!36 = !{!10, !6, i64 516}
!37 = !{!10, !6, i64 344}
!38 = !{!10, !6, i64 356}
!39 = !{!10, !15, i64 56}
!40 = !{!34, !6, i64 140}
!41 = !{!10, !6, i64 648}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !45}
!43 = !{!26, !26, i64 0}
!44 = !{!19, !19, i64 0}
!45 = !{!16, !16, i64 0}
!46 = !{!47, !7, i64 2}
!47 = !{!"Float11", !7, i64 0, !7, i64 1, !7, i64 2}
!48 = !{!6, !6, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!34, !6, i64 136}
!52 = !{!10, !6, i64 376}
!53 = !{!54, !6, i64 112}
!54 = !{!"AVFrame", !7, i64 0, !7, i64 64, !55, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !56, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !57, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!55 = !{!"p2 omnipotent char", !28, i64 0}
!56 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!57 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!58 = !{!59, !16, i64 24}
!59 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!60 = !{!59, !6, i64 32}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !7, i64 0}
!63 = !{!34, !6, i64 128}
!64 = !{!7, !7, i64 0}
!65 = !{!34, !26, i64 8}
!66 = distinct !{!66, !50}
!67 = distinct !{!67, !50}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = !{!12, !12, i64 0}
!71 = !{!10, !6, i64 348}
!72 = distinct !{!72, !50}
!73 = !{!34, !6, i64 108}
!74 = !{!34, !6, i64 112}
!75 = !{!34, !19, i64 16}
!76 = !{!34, !6, i64 124}
!77 = !{!34, !6, i64 132}
!78 = !{!47, !7, i64 0}
!79 = !{i64 0, i64 1, !64, i64 1, i64 1, !64, i64 2, i64 1, !64}
!80 = !{!47, !7, i64 1}
!81 = !{!34, !16, i64 32}
!82 = !{!34, !6, i64 116}
!83 = !{!34, !6, i64 120}
!84 = !{!34, !6, i64 104}
!85 = !{!34, !19, i64 24}
end_hunk_0
