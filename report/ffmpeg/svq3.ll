Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/svq3?download=true
inline.NumInlined: 70
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.IMbInfo = type { i16, i8, i8 }
%struct.anon.3 = type { i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"svq3\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Sorenson Vector Quantizer 3 / Sorenson Video 3 / SVQ3\00", align 1
@ff_svq3_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 23, i32 35, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 11520, ptr null, ptr null, ptr null, ptr @svq3_decode_init, %union.anon { ptr @svq3_decode_frame }, ptr @svq3_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Unknown fields %d %d %d %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"watermark size: %ux%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"u1: %x u2: %x u3: %x compressed data size: %d offset: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"could not uncompress watermark logo\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"watermark key %#x\0A\00", align 1
@ff_interleaved_golomb_vlc_len = external local_unnamed_addr constant [256 x i8], align 16
@ff_interleaved_ue_golomb_vlc_code = external local_unnamed_addr constant [256 x i8], align 16
@ff_interleaved_dirac_golomb_vlc_code = external local_unnamed_addr constant [256 x i8], align 16
@ff_h264_quant_div6 = external local_unnamed_addr constant [88 x i8], align 16
@ff_h264_quant_rem6 = external local_unnamed_addr constant [88 x i8], align 16
@ff_h264_dequant4_coeff_init = external local_unnamed_addr constant [6 x [3 x i8]], align 16
@scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 16
@.str.8 = private unnamed_addr constant [50 x i8] c"%c hpel:%d, tpel:%d aqp:%d qp:%d, slice_num:%02X\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"error in B-frame picture id\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"non constant slice type\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"error while decoding MB %d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"frame num %ld incomplete pic x %d y %d left %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"frame num %ld left %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"unsupported slice header (%02X)\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"slice after bitstream end\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"illegal slice type %u \0A\00", align 1
@ff_h264_golomb_to_pict_type = external local_unnamed_addr constant [5 x i8], align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Media key encryption\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@.str.18 = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"luma prediction:%u\0A\00", align 1
@svq3_pred_1 = internal unnamed_addr constant [6 x [6 x [5 x i8]]] [[6 x [5 x i8]] [[5 x i8] c"\02\FF\FF\FF\FF", [5 x i8] c"\02\01\FF\FF\FF", [5 x i8] c"\01\02\FF\FF\FF", [5 x i8] c"\02\01\FF\FF\FF", [5 x i8] c"\01\02\FF\FF\FF", [5 x i8] c"\01\02\FF\FF\FF"], [6 x [5 x i8]] [[5 x i8] c"\00\02\FF\FF\FF", [5 x i8] c"\00\02\01\04\03", [5 x i8] c"\00\01\02\04\03", [5 x i8] c"\00\02\01\04\03", [5 x i8] c"\02\00\01\03\04", [5 x i8] c"\00\04\02\01\03"], [6 x [5 x i8]] [[5 x i8] c"\02\00\FF\FF\FF", [5 x i8] c"\02\01\00\04\03", [5 x i8] c"\01\02\04\00\03", [5 x i8] c"\02\01\00\04\03", [5 x i8] c"\02\01\04\03\00", [5 x i8] c"\01\02\04\00\03"], [6 x [5 x i8]] [[5 x i8] c"\02\00\FF\FF\FF", [5 x i8] c"\02\00\01\04\03", [5 x i8] c"\01\02\00\04\03", [5 x i8] c"\02\01\00\04\03", [5 x i8] c"\02\01\03\04\00", [5 x i8] c"\02\04\01\00\03"], [6 x [5 x i8]] [[5 x i8] c"\00\02\FF\FF\FF", [5 x i8] c"\00\02\01\03\04", [5 x i8] c"\01\02\03\00\04", [5 x i8] c"\02\00\01\03\04", [5 x i8] c"\02\01\03\00\04", [5 x i8] c"\02\00\04\03\01"], [6 x [5 x i8]] [[5 x i8] c"\00\02\FF\FF\FF", [5 x i8] c"\00\02\04\01\03", [5 x i8] c"\01\04\02\00\03", [5 x i8] c"\04\02\00\01\03", [5 x i8] c"\02\00\01\04\03", [5 x i8] c"\04\02\01\00\03"]], align 16
@svq3_pred_0 = internal unnamed_addr constant [25 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\04\04"], align 16
@.str.20 = private unnamed_addr constant [18 x i8] c"weird prediction\0A\00", align 1
@ff_h264_i_mb_type_info = external local_unnamed_addr constant [26 x %struct.IMbInfo], align 16
@.str.21 = private unnamed_addr constant [35 x i8] c"ff_h264_check_intra_pred_mode < 0\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cbp_vlc=%u\0A\00", align 1
@ff_h264_golomb_to_intra4x4_cbp = external local_unnamed_addr constant [48 x i8], align 16
@ff_h264_golomb_to_inter_cbp = external local_unnamed_addr constant [48 x i8], align 16
@.str.23 = private unnamed_addr constant [11 x i8] c"qscale:%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"error while decoding intra luma dc\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"error while decoding block\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"error while decoding chroma dc block\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"error while decoding chroma ac block\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"invalid MV vlc\0A\00", align 1
@ff_interleaved_se_golomb_vlc_code = external local_unnamed_addr constant [256 x i8], align 16
@svq3_decode_block.scan_patterns = internal unnamed_addr constant [4 x ptr] [ptr @luma_dc_zigzag_scan, ptr @ff_zigzag_scan, ptr @svq3_scan, ptr @ff_h264_chroma_dc_scan], align 16
@luma_dc_zigzag_scan = internal constant [16 x i8] c"\00\10 \800@P`\90\A0\B0\C0p\D0\E0\F0", align 16
@ff_zigzag_scan = external constant [17 x i8], align 16
@svq3_scan = internal constant [16 x i8] c"\00\01\02\06\0A\03\07\0B\04\08\05\09\0C\0D\0E\0F", align 16
@ff_h264_chroma_dc_scan = external constant [4 x i8], align 1
@svq3_dct_tables = internal unnamed_addr constant [2 x [16 x %struct.anon.3]] [[16 x %struct.anon.3] [%struct.anon.3 zeroinitializer, %struct.anon.3 { i8 0, i8 1 }, %struct.anon.3 { i8 1, i8 1 }, %struct.anon.3 { i8 2, i8 1 }, %struct.anon.3 { i8 0, i8 2 }, %struct.anon.3 { i8 3, i8 1 }, %struct.anon.3 { i8 4, i8 1 }, %struct.anon.3 { i8 5, i8 1 }, %struct.anon.3 { i8 0, i8 3 }, %struct.anon.3 { i8 1, i8 2 }, %struct.anon.3 { i8 2, i8 2 }, %struct.anon.3 { i8 6, i8 1 }, %struct.anon.3 { i8 7, i8 1 }, %struct.anon.3 { i8 8, i8 1 }, %struct.anon.3 { i8 9, i8 1 }, %struct.anon.3 { i8 0, i8 4 }], [16 x %struct.anon.3] [%struct.anon.3 zeroinitializer, %struct.anon.3 { i8 0, i8 1 }, %struct.anon.3 { i8 1, i8 1 }, %struct.anon.3 { i8 0, i8 2 }, %struct.anon.3 { i8 2, i8 1 }, %struct.anon.3 { i8 0, i8 3 }, %struct.anon.3 { i8 0, i8 4 }, %struct.anon.3 { i8 0, i8 5 }, %struct.anon.3 { i8 3, i8 1 }, %struct.anon.3 { i8 4, i8 1 }, %struct.anon.3 { i8 1, i8 2 }, %struct.anon.3 { i8 1, i8 3 }, %struct.anon.3 { i8 0, i8 6 }, %struct.anon.3 { i8 0, i8 7 }, %struct.anon.3 { i8 0, i8 8 }, %struct.anon.3 { i8 0, i8 9 }]], align 16
@ff_h264_chroma_qp = external local_unnamed_addr constant [7 x [88 x i8]], align 16
@svq3_dequant_coeff = internal unnamed_addr constant [32 x i32] [i32 3881, i32 4351, i32 4890, i32 5481, i32 6154, i32 6914, i32 7761, i32 8718, i32 9781, i32 10987, i32 12339, i32 13828, i32 15523, i32 17435, i32 19561, i32 21873, i32 24552, i32 27656, i32 30847, i32 34870, i32 38807, i32 43747, i32 49103, i32 54683, i32 61694, i32 68745, i32 77615, i32 89113, i32 100253, i32 109366, i32 126635, i32 141533], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @svq3_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1328 ; 3 uses
  store ptr %i.c, ptr %i.d, align 16, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 11432
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1344 ; 3 uses
  store ptr %i.e, ptr %i.f, align 16, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 11464
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !40
  %i.i = tail call ptr @av_frame_alloc() #10
  %i.j = load ptr, ptr %i.d, align 16, !tbaa !29
  store ptr %i.i, ptr %i.j, align 8, !tbaa !41
  %i.k = tail call ptr @av_frame_alloc() #10
  %i.l = load ptr, ptr %i.f, align 16, !tbaa !39
  store ptr %i.k, ptr %i.l, align 8, !tbaa !41
  %i.m = tail call ptr @av_frame_alloc() #10      ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = load ptr, ptr %i.d, align 16, !tbaa !29
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %init_dequant4_coeff_table.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.f, align 16, !tbaa !39
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %.not118 = icmp eq ptr %i.r, null
  %.not119 = icmp eq ptr %i.m, null
  %or.cond = select i1 %.not118, i1 true, i1 %.not119
  br i1 %or.cond, label %init_dequant4_coeff_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @ff_h264dsp_init(ptr noundef nonnull %i.s, i32 noundef 8, i32 noundef 1) #10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  tail call void @ff_h264_pred_init(ptr noundef nonnull %i.t, i32 noundef 23, i32 noundef 8, i32 noundef 1) #10
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1312
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.u, i32 noundef 8) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 8, ptr %i.v, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  tail call void @ff_hpeldsp_init(ptr noundef nonnull %i.w, i32 noundef %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  tail call void @ff_tpeldsp_init(ptr noundef nonnull %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 12, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.ab, align 4, !tbaa !47
  store ptr %0, ptr %i.b, align 16, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1412
  store <2 x i32> splat (i32 1), ptr %i.ac, align 4, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1420
  store i32 0, ptr %i.ad, align 4, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %.not120 = icmp eq ptr %i.af, null
  br i1 %.not120, label %.loopexit, label %.preheader127

.preheader127:                                    ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 8
  br i1 %i.ai, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.aj = add nsw i32 %i.ah, -9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.0110130 = phi ptr [ %i.ap, %bb.e ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %.0113129 = phi i32 [ %i.aq, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ak = load i32, ptr %.0110130, align 1
  %i.al = icmp ne i32 %i.ak, 1213285715
  %i.am = zext i1 %i.al to i32
  %.not121 = icmp eq i32 %i.am, 0
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.an = tail call fastcc i32 @svq3_decode_extradata(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %.0113129) #11 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %init_dequant4_coeff_table.exit, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.0110130, i64 1
  %i.aq = add nuw nsw i32 %.0113129, 1
  %exitcond.not = icmp eq i32 %.0113129, %i.aj
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !53

.loopexit:                                        ; preds = %bb.e, %.preheader127, %bb.d, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1492 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1496 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1500 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1508
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1432
  %i.ay = load <2 x i32>, ptr %i.ar, align 8, !tbaa !49
  %i.az = add nsw <2 x i32> %i.ay, splat (i32 15)
  %i.ba = sdiv <2 x i32> %i.az, splat (i32 16)    ; 4 uses
  store <2 x i32> %i.ba, ptr %i.as, align 4, !tbaa !49
  %i.bb = extractelement <2 x i32> %i.ba, i64 0   ; 3 uses
  %1 = add nsw i32 %i.bb, 1                       ; 2 uses
  store i32 %1, ptr %i.au, align 4, !tbaa !55
  %2 = extractelement <2 x i32> %i.ba, i64 1      ; 2 uses
  %i.bc = mul nsw i32 %2, %i.bb
  store i32 %i.bc, ptr %i.av, align 16, !tbaa !56
  %i.bd = shl nsw i32 %i.bb, 2
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !57
  %i.be = shl nsw <2 x i32> %i.ba, splat (i32 4)
  store <2 x i32> %i.be, ptr %i.ax, align 8, !tbaa !49
  %i.bf = add nsw i32 %2, 2
  %i.bg = mul nsw i32 %i.bf, %1
  %i.bh = add nsw i32 %i.bg, 1
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = tail call noalias ptr @av_calloc(i64 noundef %i.bi, i64 noundef 12) #10 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 11496
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !58
  %.not122 = icmp eq ptr %i.bj, null
  br i1 %.not122, label %init_dequant4_coeff_table.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bl = load i32, ptr %i.au, align 4, !tbaa !55
  %i.bm = load i32, ptr %i.as, align 4, !tbaa !59
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = or disjoint i32 %i.bn, 1
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !60
  %i.bq = shl i32 %i.bp, 2
  %i.br = mul i32 %i.bq, %i.bo
  %i.bs = add i32 %i.br, 4
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = tail call noalias ptr @av_calloc(i64 noundef %i.bt, i64 noundef 24) #10 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 11504
  store ptr %i.bu, ptr %i.bv, align 16, !tbaa !61
  %.not123 = icmp eq ptr %i.bu, null
  br i1 %.not123, label %init_dequant4_coeff_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = shl nsw i32 %i.bl, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.au, align 4, !tbaa !55
  %i.cc = shl nsw i32 %i.cb, 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call noalias ptr @av_mallocz(i64 noundef %i.cd) #10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  store ptr %i.ce, ptr %i.cf, align 16, !tbaa !62
  %.not124 = icmp eq ptr %i.ce, null
  br i1 %.not124, label %init_dequant4_coeff_table.exit, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %.0106135 = phi i64 [ 0, %bb.g ], [ %i.cn, %bb.i ] ; 2 uses
  %.0107134 = phi ptr [ %i.ca, %bb.g ], [ %i.cl, %bb.i ] ; 2 uses
  %.0109133 = phi ptr [ %i.bz, %bb.g ], [ %i.cm, %bb.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.0106135 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %.0109133, ptr %i.ch, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %.0107134, ptr %i.ci, align 8, !tbaa !64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0107134, i64 %i.bt ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.bt
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0109133, i64 %i.bi
  %i.cn = add nuw nsw i64 %.0106135, 1            ; 2 uses
  %exitcond141.not = icmp eq i64 %i.cn, 3
  br i1 %exitcond141.not, label %bb.h, label %bb.i, !llvm.loop !65

bb.j:                                             ; preds = %bb.h
  %i.co = load i32, ptr %i.au, align 4, !tbaa !55
  %i.cp = load i32, ptr %i.at, align 8, !tbaa !60
  %i.cq = add nsw i32 %i.cp, 1
  %i.cr = mul nsw i32 %i.cq, %i.co
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 2
  %i.cu = tail call noalias ptr @av_mallocz(i64 noundef %i.ct) #10 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 1512
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !66
  %.not125 = icmp eq ptr %i.cu, null
  br i1 %.not125, label %init_dequant4_coeff_table.exit, label %.preheader126

.preheader126:                                    ; preds = %bb.j
  %i.cw = load i32, ptr %i.at, align 8, !tbaa !60 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.preheader.preheader, label %._crit_edge139

.preheader.preheader:                             ; preds = %.preheader126
  %.pre = load i32, ptr %i.as, align 4, !tbaa !59 ; 2 uses
  %i.cy = icmp sgt i32 %.pre, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0111138 = phi i32 [ %i.di, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  br i1 %i.cy, label %.lr.ph137.preheader, label %._crit_edge

.lr.ph137.preheader:                              ; preds = %.preheader
  %.pre142 = load i32, ptr %i.au, align 4, !tbaa !55 ; 2 uses
  %i.cz = mul nsw i32 %.pre142, %.0111138
  %i.da = shl nsw i32 %.pre142, 1
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %.lr.ph137
  %.0112136 = phi i32 [ %i.dg, %.lr.ph137 ], [ 0, %.lr.ph137.preheader ] ; 2 uses
  %i.db = add nsw i32 %i.cz, %.0112136            ; 2 uses
  %i.dc = srem i32 %i.db, %i.da
  %i.dd = shl nsw i32 %i.dc, 3
  %i.de = sext i32 %i.db to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !49
  %i.dg = add nuw nsw i32 %.0112136, 1            ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %.pre
  br i1 %i.dh, label %.lr.ph137, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph137, %.preheader
  %i.di = add nuw nsw i32 %.0111138, 1            ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.cw
  br i1 %i.dj, label %.preheader, label %._crit_edge139, !llvm.loop !68

._crit_edge139:                                   ; preds = %._crit_edge, %.preheader126
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 5384
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge139
  %indvars.iv.i = phi i64 [ 0, %._crit_edge139 ], [ %indvars.iv.next.i, %bb.k ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @ff_h264_quant_div6, i64 %indvars.iv.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !69
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dn, 2                ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr @ff_h264_quant_rem6, i64 %indvars.iv.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !69
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [3 x i8], ptr @ff_h264_dequant4_coeff_init, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.dk, i64 %indvars.iv.i ; 16 uses
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !69
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 4
  %i.dx = shl i32 %i.dw, %i.do                    ; 4 uses
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !69
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 4
  %i.ec = shl i32 %i.eb, %i.do                    ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i32 %i.dx, ptr %i.ee, align 4, !tbaa !49
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.ec, ptr %i.eg, align 4, !tbaa !49
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !69
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 4
  %i.el = shl i32 %i.ek, %i.do                    ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %i.el, ptr %i.em, align 4, !tbaa !49
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  store i32 %i.ec, ptr %i.en, align 4, !tbaa !49
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !49
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.dx, ptr %i.ep, align 4, !tbaa !49
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %i.ec, ptr %i.eq, align 4, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i32 %i.dx, ptr %i.er, align 4, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store i32 %i.ec, ptr %i.es, align 4, !tbaa !49
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.ec, ptr %i.et, align 4, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store i32 %i.el, ptr %i.eu, align 4, !tbaa !49
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  store i32 %i.ec, ptr %i.ev, align 4, !tbaa !49
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 60
  store i32 %i.el, ptr %i.ew, align 4, !tbaa !49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 52
  br i1 %exitcond.not.i, label %init_dequant4_coeff_table.exit, label %bb.k, !llvm.loop !70

init_dequant4_coeff_table.exit:                   ; preds = %bb.k, %.loopexit, %bb.h, %bb.j, %bb.f, %bb.d, %bb.a, %bb.b
  %.3 = phi i32 [ -12, %bb.a ], [ %i.an, %bb.d ], [ -12, %bb.h ], [ -12, %bb.b ], [ -12, %.loopexit ], [ -12, %bb.f ], [ -12, %bb.j ], [ 0, %bb.k ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @svq3_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 333 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71   ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1336
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %.not271 = icmp eq ptr %i.i, null
  br i1 %.not271, label %get_buffer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1476
  %i.k = load i32, ptr %i.j, align 4, !tbaa !74
  %.not272 = icmp eq i32 %i.k, 0
  br i1 %.not272, label %bb.d, label %get_buffer.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @av_frame_move_ref(ptr noundef %1, ptr noundef nonnull %i.h) #10
  store i32 1, ptr %2, align 4, !tbaa !49
  br label %get_buffer.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1488 ; 4 uses
  store i32 0, ptr %i.l, align 16, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1484 ; 11 uses
  store i32 0, ptr %i.m, align 4, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1480 ; 12 uses
  store i32 0, ptr %i.n, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 2 uses
  %or.cond.i = icmp ugt i32 %i.d, 268435455
  %i.r = shl nsw i32 %i.d, 3                      ; 2 uses
  %i.s = select i1 %or.cond.i, i32 -8, i32 %i.r   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.s, 2147483135    ; 2 uses
  %i.t = icmp ne ptr %i.q, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.t       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.q, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.s, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.o, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1364
  store i32 %.013.i.i, ptr %i.u, align 4, !tbaa !80
  %i.v = add nuw nsw i32 %.013.i.i, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1368
  store i32 %i.v, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  store i32 0, ptr %i.x, align 16, !tbaa !82
  br i1 %or.cond3.i.i, label %bb.f, label %get_buffer.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = tail call fastcc i32 @svq3_decode_slice_header(ptr noundef nonnull %0) ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %get_buffer.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1492 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1496 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = sdiv i32 %i.af, 8
  %i.ah = icmp slt i32 %i.aa, %i.ag
  br i1 %i.ah, label %get_buffer.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1472 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !83 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1468 ; 16 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !84
  %.not = icmp eq i32 %i.aj, 3
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !85
  %i.an = shufflevector <2 x ptr> %i.am, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !85
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 1328 ; 32 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  tail call void @av_frame_unref(ptr noundef %i.aq) #10
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !84 ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 16, !tbaa !29 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  store i32 %i.ar, ptr %i.au, align 8, !tbaa !86
  %i.av = icmp eq i32 %i.ar, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 276 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !91
  %i.ay = and i32 %i.ax, -3
  %masksel = select i1 %i.av, i32 2, i32 0
  %.sink492 = or disjoint i32 %i.ay, %masksel
  store i32 %.sink492, ptr %i.aw, align 4, !tbaa !91
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1468
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !84
  %.not.i = icmp ne i32 %i.bb, 3
  %i.bc = zext i1 %.not.i to i32
  %i.bd = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.at, i32 noundef %i.bc) #10 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %get_buffer.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 1584 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !92
  %.not11.i = icmp eq ptr %i.bg, null
  br i1 %.not11.i, label %bb.l, label %get_buffer.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !49
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call noalias ptr @av_calloc(i64 noundef %i.bk, i64 noundef 17) #10 ; 2 uses
  store ptr %i.bl, ptr %i.bf, align 16, !tbaa !92
  %.not12.i = icmp eq ptr %i.bl, null
  br i1 %.not12.i, label %get_buffer.exit.thread, label %get_buffer.exit

get_buffer.exit:                                  ; preds = %bb.k, %bb.l
  %i.bm = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 24 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 11016 ; 3 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 11208
  store i32 0, ptr %i.bq, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 11020 ; 2 uses
  store i32 4, ptr %i.br, align 4, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 11212
  store i32 4, ptr %i.bs, align 4, !tbaa !49
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.bu = shl nsw i32 %i.bt, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 11024 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 16, !tbaa !49
  %i.bw = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.bx = shl i32 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 11216
  store i32 %i.bx, ptr %i.by, align 16, !tbaa !49
  %i.bz = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.ca = shl nsw i32 %i.bz, 2
  %i.cb = add nsw i32 %i.ca, 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 11028 ; 2 uses
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !49
  %i.cd = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.ce = shl i32 %i.cd, 3
  %i.cf = or disjoint i32 %i.ce, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 11220
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 11032 ; 2 uses
  store i32 8, ptr %i.ch, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 11224
  store i32 8, ptr %i.ci, align 8, !tbaa !49
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 11036 ; 2 uses
  store i32 12, ptr %i.cj, align 4, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 11228
  store i32 12, ptr %i.ck, align 4, !tbaa !49
  %i.cl = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.cm = shl nsw i32 %i.cl, 2
  %i.cn = add nsw i32 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 11040 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 16, !tbaa !49
  %i.cp = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.cq = shl i32 %i.cp, 3
  %i.cr = add nsw i32 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 11232
  store i32 %i.cr, ptr %i.cs, align 16, !tbaa !49
  %i.ct = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.cu = shl nsw i32 %i.ct, 2
  %i.cv = add nsw i32 %i.cu, 12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 11044 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !49
  %i.cx = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.cy = shl i32 %i.cx, 3
  %i.cz = add nsw i32 %i.cy, 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 11236
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !49
  %i.db = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.dc = shl nsw i32 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 11048 ; 2 uses
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !49
  %i.de = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.df = shl i32 %i.de, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 11240
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !49
  %i.dh = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.di = shl nsw i32 %i.dh, 3
  %i.dj = or disjoint i32 %i.di, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 11052 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !49
  %i.dl = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.dm = shl i32 %i.dl, 4
  %i.dn = or disjoint i32 %i.dm, 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 11244
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !49
  %i.dp = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.dq = mul nsw i32 %i.dp, 12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 11056 ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 16, !tbaa !49
  %i.ds = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.dt = mul i32 %i.ds, 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 11248
  store i32 %i.dt, ptr %i.du, align 16, !tbaa !49
  %i.dv = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.dw = mul nsw i32 %i.dv, 12
  %i.dx = add nsw i32 %i.dw, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 11060 ; 2 uses
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !49
  %i.dz = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.ea = mul i32 %i.dz, 24
  %i.eb = or disjoint i32 %i.ea, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 11252
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !49
  %i.ed = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.ee = shl nsw i32 %i.ed, 3
  %i.ef = add nsw i32 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 11064 ; 2 uses
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !49
  %i.eh = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.ei = shl i32 %i.eh, 4
  %i.ej = or disjoint i32 %i.ei, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 11256
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !49
  %i.el = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.em = shl nsw i32 %i.el, 3
  %i.en = add nsw i32 %i.em, 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 11068 ; 2 uses
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !49
  %i.ep = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.eq = shl i32 %i.ep, 4
  %i.er = or disjoint i32 %i.eq, 12
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 11260
  store i32 %i.er, ptr %i.es, align 4, !tbaa !49
  %i.et = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.eu = mul nsw i32 %i.et, 12
  %i.ev = add nsw i32 %i.eu, 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 11072 ; 2 uses
  store i32 %i.ev, ptr %i.ew, align 16, !tbaa !49
  %i.ex = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.ey = mul i32 %i.ex, 24
  %i.ez = add nsw i32 %i.ey, 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 11264
  store i32 %i.ez, ptr %i.fa, align 16, !tbaa !49
  %i.fb = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.fc = mul nsw i32 %i.fb, 12
  %i.fd = add nsw i32 %i.fc, 12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 11076 ; 2 uses
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !49
  %i.ff = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.fg = mul i32 %i.ff, 24
  %i.fh = add nsw i32 %i.fg, 12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 11268
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !49
  %i.fj = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !41
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 68 ; 24 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 11144
end_hunk_0
begin_hunk_1_@svq3_decode_frame:bb.a

.preheader.lr.ph:                                 ; preds = %.preheader320
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 1500 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 1376 ; 23 uses
  %i.mw = getelementptr i8, ptr %i.b, i64 1384    ; 14 uses
  %i.mx = getelementptr i8, ptr %i.b, i64 1388
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 1392 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.b, i64 1508 ; 13 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 1576 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 1580 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 1568 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 1512 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.b, i64 1528 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.b, i64 1540 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 1548 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 1556 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 1564 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 1539
  %i.nk = getelementptr inbounds nuw i8, ptr %i.b, i64 1547
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 1555
  %i.nm = getelementptr inbounds nuw i8, ptr %i.b, i64 1563
  %i.nn = getelementptr inbounds nuw i8, ptr %i.b, i64 1532
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 1533
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 1534
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 1535
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 1559
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 1551
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 1543
  %i.nu = getelementptr inbounds nuw i8, ptr %i.b, i64 1524 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  %.phi.trans.insert560.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1412
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 1644 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 1676 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 1708 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.b, i64 1740
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 1923 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  %i.oc = getelementptr inbounds nuw i8, ptr %i.b, i64 1924
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 1632
  %i.oe = getelementptr inbounds nuw i8, ptr %i.b, i64 1928
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 1612
  %i.og = getelementptr inbounds nuw i8, ptr %i.b, i64 1804 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 1836 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 1868 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 1900
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 1963 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  %i.om = getelementptr inbounds nuw i8, ptr %i.b, i64 1964
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 1792
  %i.oo = getelementptr inbounds nuw i8, ptr %i.b, i64 1968
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 1772
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 1336
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 5272 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 1428
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 1444 ; 28 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.b, i64 5072 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.b, i64 5264 ; 9 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.b, i64 2000 ; 12 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 2512 ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 3024 ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 5316 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 5317 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 2544 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 5324 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 2576 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 5325 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.b, i64 2608 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 5356 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 5357 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 3056 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.b, i64 5364 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 3088 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 5365 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 3120 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 1448 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.b, i64 1520 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.b, i64 1320 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.ps = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 5076
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 5074
  %i.pv = getelementptr inbounds nuw i8, ptr %i.b, i64 5078
  %i.pw = getelementptr inbounds nuw i8, ptr %i.b, i64 5080
  %i.px = getelementptr inbounds nuw i8, ptr %i.b, i64 5084
  %i.py = getelementptr inbounds nuw i8, ptr %i.b, i64 5082
  %i.pz = getelementptr inbounds nuw i8, ptr %i.b, i64 5086
  %i.qa = getelementptr inbounds nuw i8, ptr %i.b, i64 5088
  %i.qb = getelementptr inbounds nuw i8, ptr %i.b, i64 5092
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 5090
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 5094
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 5096
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 5100
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 5098
  %i.qh = getelementptr inbounds nuw i8, ptr %i.b, i64 5102
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  %i.qj = getelementptr inbounds nuw i8, ptr %i.b, i64 2256
  %i.qk = getelementptr inbounds nuw i8, ptr %i.b, i64 2320
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 2032
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 2096
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 2288
  %i.qo = getelementptr inbounds nuw i8, ptr %i.b, i64 2352
  %i.qp = getelementptr inbounds nuw i8, ptr %i.b, i64 2128
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.qr = getelementptr inbounds nuw i8, ptr %i.b, i64 2384
  %i.qs = getelementptr inbounds nuw i8, ptr %i.b, i64 2448
  %i.qt = getelementptr inbounds nuw i8, ptr %i.b, i64 2160
  %i.qu = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  %i.qv = getelementptr inbounds nuw i8, ptr %i.b, i64 2416
  %i.qw = getelementptr inbounds nuw i8, ptr %i.b, i64 2480
  %i.qx = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.b, i64 5640 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.b, i64 11080
  %i.ra = getelementptr inbounds nuw i8, ptr %i.b, i64 11084
  %i.rb = getelementptr inbounds nuw i8, ptr %i.b, i64 11088
  %i.rc = getelementptr inbounds nuw i8, ptr %i.b, i64 11092
  %i.rd = getelementptr inbounds nuw i8, ptr %i.b, i64 11144
  %i.re = getelementptr inbounds nuw i8, ptr %i.b, i64 11148
  %i.rf = getelementptr inbounds nuw i8, ptr %i.b, i64 11152
  %i.rg = getelementptr inbounds nuw i8, ptr %i.b, i64 11156
  %i.rh = getelementptr inbounds nuw i8, ptr %i.b, i64 1476 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.rj = getelementptr inbounds nuw i8, ptr %i.b, i64 5276
  %i.rk = getelementptr inbounds nuw i8, ptr %i.b, i64 5277
  %i.rl = getelementptr inbounds nuw i8, ptr %i.b, i64 2032
  %i.rm = getelementptr inbounds nuw i8, ptr %i.b, i64 2032
  %i.rn = getelementptr inbounds nuw i8, ptr %i.b, i64 5284
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  %i.rp = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  %i.rq = getelementptr inbounds nuw i8, ptr %i.b, i64 5285
  %i.rr = getelementptr inbounds nuw i8, ptr %i.b, i64 2096
  %i.rs = getelementptr inbounds nuw i8, ptr %i.b, i64 2096
  %i.rt = getelementptr inbounds nuw i8, ptr %i.b, i64 5278
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 2128
  %i.rv = getelementptr inbounds nuw i8, ptr %i.b, i64 2128
  %i.rw = getelementptr inbounds nuw i8, ptr %i.b, i64 5279
  %i.rx = getelementptr inbounds nuw i8, ptr %i.b, i64 2160
  %i.ry = getelementptr inbounds nuw i8, ptr %i.b, i64 2160
  %i.rz = getelementptr inbounds nuw i8, ptr %i.b, i64 5286
  %i.sa = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.sb = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.sc = getelementptr inbounds nuw i8, ptr %i.b, i64 5287
  %i.sd = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  %i.se = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  %i.sf = getelementptr inbounds nuw i8, ptr %i.b, i64 5292
  %i.sg = getelementptr inbounds nuw i8, ptr %i.b, i64 2256
  %i.sh = getelementptr inbounds nuw i8, ptr %i.b, i64 2256
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 5293
  %i.sj = getelementptr inbounds nuw i8, ptr %i.b, i64 2288
  %i.sk = getelementptr inbounds nuw i8, ptr %i.b, i64 2288
  %i.sl = getelementptr inbounds nuw i8, ptr %i.b, i64 5300
  %i.sm = getelementptr inbounds nuw i8, ptr %i.b, i64 2320
  %i.sn = getelementptr inbounds nuw i8, ptr %i.b, i64 2320
  %i.so = getelementptr inbounds nuw i8, ptr %i.b, i64 5301
  %i.sp = getelementptr inbounds nuw i8, ptr %i.b, i64 2352
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 2352
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 5294
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 2384
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 2384
  %i.su = getelementptr inbounds nuw i8, ptr %i.b, i64 5295
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 2416
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 2416
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 5302
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 2448
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 2448
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 5303
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 2480
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 2480
  br label %.preheader

.preheader320:                                    ; preds = %.thread301, %bb.ab, %bb.z
  %scevgep = getelementptr nuw i8, ptr %i.b, i64 1931
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep, i8 1, i64 5, i1 false), !tbaa !69
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 1936
  store i8 -2, ptr %i.td, align 16, !tbaa !69
  %scevgep.1 = getelementptr nuw i8, ptr %i.b, i64 1939
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.1, i8 1, i64 5, i1 false), !tbaa !69
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 1944
  store i8 -2, ptr %i.te, align 8, !tbaa !69
  %scevgep.2 = getelementptr nuw i8, ptr %i.b, i64 1947
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.2, i8 1, i64 5, i1 false), !tbaa !69
  %i.tf = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  store i8 -2, ptr %i.tf, align 16, !tbaa !69
  %scevgep.3 = getelementptr nuw i8, ptr %i.b, i64 1955
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.3, i8 1, i64 5, i1 false), !tbaa !69
  %scevgep.1425 = getelementptr nuw i8, ptr %i.b, i64 1971
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.1425, i8 1, i64 5, i1 false), !tbaa !69
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 1976
  store i8 -2, ptr %i.tg, align 8, !tbaa !69
  %scevgep.1.1 = getelementptr nuw i8, ptr %i.b, i64 1979
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.1.1, i8 1, i64 5, i1 false), !tbaa !69
  %i.th = getelementptr inbounds nuw i8, ptr %i.b, i64 1984
  store i8 -2, ptr %i.th, align 16, !tbaa !69
  %scevgep.2.1 = getelementptr nuw i8, ptr %i.b, i64 1987
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.2.1, i8 1, i64 5, i1 false), !tbaa !69
  %i.ti = getelementptr inbounds nuw i8, ptr %i.b, i64 1992
  store i8 -2, ptr %i.ti, align 8, !tbaa !69
  %scevgep.3.1 = getelementptr nuw i8, ptr %i.b, i64 1995
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep.3.1, i8 1, i64 5, i1 false), !tbaa !69
  store i32 0, ptr %i.m, align 4, !tbaa !76
  %i.tj = load i32, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.preheader.lr.ph, label %._crit_edge381

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  store i32 0, ptr %i.n, align 8, !tbaa !77
  %i.tl = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.tm = icmp sgt i32 %i.tl, 0
  br i1 %i.tm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.gb
  %storemerge262380 = phi i32 [ %i.bth, %bb.gb ], [ 0, %.preheader ]
  %i.tn = load i32, ptr %i.m, align 4, !tbaa !76
  %i.to = load i32, ptr %i.mu, align 4, !tbaa !55
  %i.tp = mul nsw i32 %i.to, %i.tn
  %i.tq = add nsw i32 %i.tp, %storemerge262380
  store i32 %i.tq, ptr %i.l, align 16, !tbaa !75
  %.val280 = load i32, ptr %i.mw, align 8, !tbaa !82 ; 3 uses
  %.val281 = load i32, ptr %i.mx, align 4, !tbaa !80
  %i.tr = sub nsw i32 %.val281, %.val280          ; 2 uses
  %i.ts = icmp slt i32 %i.tr, 8
  br i1 %i.ts, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %.lr.ph
  %i.tt = and i32 %.val280, 7                     ; 2 uses
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.tv = and i32 %i.tr, 7
  %.val = load ptr, ptr %i.mv, align 16, !tbaa !79
  %i.tw = lshr i32 %.val280, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %.val, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 1, !tbaa !69
  %i.ua = tail call i32 @llvm.bswap.i32(i32 %i.tz)
  %i.ub = shl i32 %i.ua, %i.tt
  %i.uc = sub nuw nsw i32 32, %i.tv
  %i.ud = lshr i32 %i.ub, %i.uc
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.uf = tail call fastcc i32 @svq3_decode_slice_header(ptr noundef nonnull %0) ; 2 uses
  %i.ug = icmp slt i32 %i.uf, 0
  br i1 %i.ug, label %get_buffer.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.uh = load i32, ptr %i.ai, align 16, !tbaa !83
  %i.ui = load i32, ptr %i.ak, align 4, !tbaa !84
  %.not264 = icmp eq i32 %i.uh, %i.ui
  br i1 %.not264, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %.lr.ph
  %i.uj = load i32, ptr %i.mw, align 8, !tbaa !82 ; 4 uses
  %i.uk = load i32, ptr %i.my, align 16, !tbaa !81 ; 8 uses
  %i.ul = load ptr, ptr %i.mv, align 16, !tbaa !79 ; 6 uses
  %i.um = lshr i32 %i.uj, 3
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 1, !tbaa !69
  %i.uq = tail call i32 @llvm.bswap.i32(i32 %i.up)
  %i.ur = and i32 %i.uj, 7
  %i.us = shl i32 %i.uq, %i.ur                    ; 3 uses
  %i.ut = and i32 %i.us, -1434451968
  %.not.i282 = icmp eq i32 %i.ut, 0
  br i1 %.not.i282, label %.preheader.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.uu = lshr i32 %i.us, 24
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !69
  %i.uy = zext i8 %i.ux to i32
  %i.uz = add i32 %i.uj, %i.uy
  %..i = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 %i.uz) ; 2 uses
  store i32 %..i, ptr %i.mw, align 8, !tbaa !82
  %i.va = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.uv
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !69
  %i.vc = zext i8 %i.vb to i32
  br label %get_interleaved_ue_golomb.exit

.preheader.i:                                     ; preds = %bb.ah, %bb.ak
  %.044.i = phi i32 [ %i.wb, %bb.ak ], [ %i.us, %bb.ah ]
  %.043.i = phi i32 [ %spec.select56.i, %bb.ak ], [ %i.uj, %bb.ah ]
  %.0.i283 = phi i32 [ %i.vu, %bb.ak ], [ 1, %bb.ah ] ; 2 uses
  %i.vd = lshr i32 %.044.i, 24
  %i.ve = zext nneg i32 %i.vd to i64              ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !69  ; 3 uses
  %spec.select57.i = tail call i8 @llvm.umin.i8(i8 %i.vg, i8 8)
  %spec.select.i = zext nneg i8 %spec.select57.i to i32
  %i.vh = add i32 %.043.i, %spec.select.i         ; 2 uses
  %spec.select56.i = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 %i.vh) ; 5 uses
  %.not54.i = icmp eq i8 %i.vg, 9
  br i1 %.not54.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i
  %i.vi = zext i8 %i.vg to i32
  %i.vj = add nsw i32 %i.vi, -1
  %i.vk = ashr i32 %i.vj, 1
  %i.vl = shl i32 %.0.i283, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ve
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !69
  %i.vo = zext i8 %i.vn to i32
  %i.vp = or i32 %i.vl, %i.vo
  br label %.loopexit.i

bb.ak:                                            ; preds = %.preheader.i
  %i.vq = shl i32 %.0.i283, 4                     ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ve
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !69
  %i.vt = zext i8 %i.vs to i32
  %i.vu = or i32 %i.vq, %i.vt                     ; 2 uses
  %i.vv = lshr i32 %spec.select56.i, 3
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 1, !tbaa !69
  %i.vz = tail call i32 @llvm.bswap.i32(i32 %i.vy)
  %i.wa = and i32 %spec.select56.i, 7
  %i.wb = shl i32 %i.vz, %i.wa
  %i.wc = icmp ult i32 %i.vq, 134217728
  %i.wd = icmp ult i32 %i.vh, %i.uk
  %i.we = select i1 %i.wc, i1 %i.wd, i1 false
  br i1 %i.we, label %.preheader.i, label %.loopexit.i, !llvm.loop !104

.loopexit.i:                                      ; preds = %bb.ak, %bb.aj
  %.1.i = phi i32 [ %i.vp, %bb.aj ], [ %i.vu, %bb.ak ]
  store i32 %spec.select56.i, ptr %i.mw, align 8, !tbaa !82
  %i.wf = add i32 %.1.i, -1
  br label %get_interleaved_ue_golomb.exit

get_interleaved_ue_golomb.exit:                   ; preds = %bb.ai, %.loopexit.i
  %i.wg = phi i32 [ %..i, %bb.ai ], [ %spec.select56.i, %.loopexit.i ] ; 6 uses
  %.045.i = phi i32 [ %i.vc, %bb.ai ], [ %i.wf, %.loopexit.i ] ; 4 uses
  %i.wh = load i32, ptr %i.ak, align 4, !tbaa !84 ; 5 uses
  %i.wi = icmp eq i32 %i.wh, 1
  br i1 %i.wi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %get_interleaved_ue_golomb.exit
  %i.wj = add i32 %.045.i, 8
  br label %bb.an

bb.am:                                            ; preds = %get_interleaved_ue_golomb.exit
  %i.wk = icmp eq i32 %i.wh, 3
  %i.wl = icmp ugt i32 %.045.i, 3
  %or.cond = select i1 %i.wk, i1 %i.wl, i1 false
  %i.wm = add i32 %.045.i, 4
  %spec.select273 = select i1 %or.cond, i32 %i.wm, i32 %.045.i
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0218 = phi i32 [ %i.wj, %bb.al ], [ %spec.select273, %bb.am ] ; 12 uses
  %i.wn = icmp ugt i32 %.0218, 33
  br i1 %i.wn, label %svq3_decode_mb.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.wo = load i32, ptr %i.l, align 16, !tbaa !75 ; 10 uses
  %i.wp = load i32, ptr %i.n, align 8, !tbaa !77  ; 7 uses
  %i.wq = shl nsw i32 %i.wp, 2
  %i.wr = load i32, ptr %i.m, align 4, !tbaa !76  ; 5 uses
  %i.ws = shl nsw i32 %i.wr, 2
  %i.wt = load i32, ptr %i.mz, align 4, !tbaa !57 ; 4 uses
  %i.wu = mul nsw i32 %i.ws, %i.wt
  %i.wv = add nsw i32 %i.wu, %i.wq                ; 18 uses
  %i.ww = icmp eq i32 %i.wr, 0
  %i.wx = select i1 %i.ww, i32 13311, i32 65535   ; 2 uses
  store i32 %i.wx, ptr %i.na, align 8, !tbaa !105
  %i.wy = icmp eq i32 %i.wp, 0
  %i.wz = select i1 %i.wy, i32 24415, i32 65535   ; 2 uses
  store i32 %i.wz, ptr %i.nb, align 4, !tbaa !106
  %i.xa = icmp eq i32 %.0218, 0                   ; 2 uses
  br i1 %i.xa, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.xb = icmp eq i32 %i.wh, 2
  br i1 %i.xb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.xc = load ptr, ptr %i.oq, align 8, !tbaa !40
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !63
  %i.xf = sext i32 %i.wo to i64                   ; 2 uses
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !49 ; 2 uses
  %i.xi = icmp eq i32 %i.xh, -1
  br i1 %i.xi, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.xj = shl nsw i32 %i.wp, 4
  %i.xk = shl nsw i32 %i.wr, 4
  tail call fastcc void @svq3_mc_dir_part(ptr noundef nonnull %i.b, i32 noundef %i.xj, i32 noundef %i.xk, i32 noundef 16, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.xl = load i32, ptr %i.ak, align 4, !tbaa !84 ; 2 uses
  %i.xm = icmp eq i32 %i.xl, 3
  br i1 %i.xm, label %bb.as, label %bb.cm

bb.as:                                            ; preds = %bb.ar
  %i.xn = load i32, ptr %i.n, align 8, !tbaa !77
  %i.xo = shl nsw i32 %i.xn, 4
  %i.xp = load i32, ptr %i.m, align 4, !tbaa !76
  %i.xq = shl nsw i32 %i.xp, 4
  tail call fastcc void @svq3_mc_dir_part(ptr noundef nonnull %i.b, i32 noundef %i.xo, i32 noundef %i.xq, i32 noundef 16, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %thread-pre-split

bb.at:                                            ; preds = %bb.aq
  %spec.select.i288 = tail call i32 @llvm.umin.i32(i32 %i.xh, i32 6) ; 2 uses
  %i.xr = tail call fastcc i32 @svq3_mc_dir(ptr noundef nonnull %i.b, i32 noundef %spec.select.i288, i32 noundef 4, i32 noundef 0, i32 noundef 0)
  %i.xs = icmp slt i32 %i.xr, 0
  br i1 %i.xs, label %svq3_decode_mb.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xt = tail call fastcc i32 @svq3_mc_dir(ptr noundef nonnull %i.b, i32 noundef %spec.select.i288, i32 noundef 4, i32 noundef 1, i32 noundef 1)
  %i.xu = icmp slt i32 %i.xt, 0
  br i1 %i.xu, label %svq3_decode_mb.exit.thread, label %.thread412.i

bb.av:                                            ; preds = %bb.ao
  %i.xv = icmp samesign ult i32 %.0218, 8
  br i1 %i.xv, label %bb.aw, label %bb.bt

bb.aw:                                            ; preds = %bb.av
  %i.xw = load i32, ptr %i.nv, align 8, !tbaa !95 ; 2 uses
  %.not.i287 = icmp eq i32 %i.xw, 0
  %.pre561.i = load i32, ptr %.phi.trans.insert560.i, align 4, !tbaa !94 ; 2 uses
  br i1 %.not.i287, label %._crit_edge.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xx = lshr i32 %i.wg, 3
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !69
  %i.yb = icmp slt i32 %i.wg, %i.uk
  %i.yc = zext i1 %i.yb to i32
  %spec.select.i.i = add i32 %i.wg, %i.yc         ; 2 uses
  %i.yd = zext i8 %i.ya to i32
  %i.ye = and i32 %i.wg, 7
  %i.yf = shl nuw nsw i32 %i.yd, %i.ye
  %i.yg = lshr i32 %i.yf, 7
  store i32 %spec.select.i.i, ptr %i.mw, align 8, !tbaa !82
  %i.yh = and i32 %i.yg, 1
  %i.yi = xor i32 %i.yh, %.pre561.i
  %i.yj = icmp eq i32 %i.yi, 1
  br i1 %i.yj, label %bb.ba, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ax, %bb.aw
  %i.yk = phi i32 [ %spec.select.i.i, %bb.ax ], [ %i.wg, %bb.aw ] ; 4 uses
  %.not361.i = icmp eq i32 %.pre561.i, 0
  br i1 %.not361.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i
  %i.yl = lshr i32 %i.yk, 3
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !69
  %i.yp = icmp slt i32 %i.yk, %i.uk
  %i.yq = zext i1 %i.yp to i32
  %spec.select.i382.i = add i32 %i.yk, %i.yq
  %i.yr = zext i8 %i.yo to i32
  %i.ys = and i32 %i.yk, 7
  %i.yt = shl nuw nsw i32 %i.yr, %i.ys
  %i.yu = lshr i32 %i.yt, 7
  store i32 %spec.select.i382.i, ptr %i.mw, align 8, !tbaa !82
  %i.yv = and i32 %i.yu, 1
  %i.yw = xor i32 %i.yv, %i.xw
  %i.yx = icmp eq i32 %i.yw, 1
  br i1 %i.yx, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.0341.i = phi i32 [ 1, %bb.az ], [ 3, %bb.ax ], [ 2, %bb.ay ] ; 3 uses
  %i.yy = icmp sgt i32 %i.wp, 0                   ; 4 uses
  %i.yz = sext i32 %i.wo to i64                   ; 5 uses
  %i.za = add nsw i32 %i.wv, -1
  %i.zb = icmp sgt i32 %i.wr, 0                   ; 2 uses
  %i.zc = sub nsw i32 %i.wv, %i.wt
  %i.zd = sext i32 %i.zc to i64                   ; 4 uses
  %i.ze = xor i32 %i.wt, -1
  %i.zf = add i32 %i.wv, %i.ze
  %i.zg = sext i32 %i.zf to i64                   ; 2 uses
  %.not364.i = icmp eq i32 %i.wh, 3               ; 3 uses
  %i.zh = sext i32 %i.wt to i64                   ; 6 uses
  %i.zi = sext i32 %i.za to i64                   ; 8 uses
  br i1 %i.yy, label %bb.bj, label %.loopexit460.loopexit.i

bb.bb:                                            ; preds = %bb.bo
  br i1 %i.yy, label %..thread584.i_crit_edge, label %.loopexit460.loopexit.1.i

..thread584.i_crit_edge:                          ; preds = %bb.bb
  %.pre429 = load ptr, ptr %i.nc, align 16, !tbaa !62
  %.pre430 = load ptr, ptr %i.nd, align 8, !tbaa !66
  br label %.thread584.i

.thread584.i:                                     ; preds = %..thread584.i_crit_edge, %.thread583.i
  %i.zj = phi ptr [ %.pre430, %..thread584.i_crit_edge ], [ %i.adm, %.thread583.i ]
  %i.zk = phi ptr [ %.pre429, %..thread584.i_crit_edge ], [ %i.adl, %.thread583.i ]
  %i.zl = getelementptr [4 x i8], ptr %i.zj, i64 %i.yz
  %i.zm = getelementptr i8, ptr %i.zl, i64 -4
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !49
  %i.zo = add i32 %i.zn, 6
  %i.zp = zext i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !69
  %.not363.1.i = icmp eq i8 %i.zr, -1
  br i1 %.not363.1.i, label %.loopexit460.loopexit.1.i, label %.preheader461.1.i

.preheader461.1.i:                                ; preds = %.thread584.i
  %i.zs = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16 ; 4 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !64
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %i.zi
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !69
  store i32 %i.zw, ptr %i.og, align 4, !tbaa !69
  %i.zx = load ptr, ptr %i.zt, align 8, !tbaa !64
  %i.zy = getelementptr [4 x i8], ptr %i.zx, i64 %i.zi
  %i.zz = getelementptr [4 x i8], ptr %i.zy, i64 %i.zh
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !69
  store i32 %i.aaa, ptr %i.oh, align 4, !tbaa !69
  %i.aab = load ptr, ptr %i.zt, align 8, !tbaa !64
  %.idx576.i = shl nsw i64 %i.zh, 3
  %i.aac = getelementptr i8, ptr %i.aab, i64 %.idx576.i
  %i.aad = getelementptr [4 x i8], ptr %i.aac, i64 %i.zi
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !69
  store i32 %i.aae, ptr %i.oi, align 4, !tbaa !69
  %i.aaf = load ptr, ptr %i.zt, align 8, !tbaa !64
  %.idx577.i = mul nsw i64 %i.zh, 12
  %i.aag = getelementptr i8, ptr %i.aaf, i64 %.idx577.i
  %i.aah = getelementptr [4 x i8], ptr %i.aag, i64 %i.zi
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !69
  br label %.loopexit460.1.i

.loopexit460.loopexit.1.i:                        ; preds = %.thread.i, %.thread584.i, %bb.bb
  store i32 0, ptr %i.og, align 4, !tbaa !69
  store i32 0, ptr %i.oh, align 4, !tbaa !69
  store i32 0, ptr %i.oi, align 4, !tbaa !69
  br label %.loopexit460.1.i

.loopexit460.1.i:                                 ; preds = %.loopexit460.loopexit.1.i, %.preheader461.1.i
  %.sink.i = phi i32 [ 0, %.loopexit460.loopexit.1.i ], [ %i.aai, %.preheader461.1.i ]
  store i32 %.sink.i, ptr %i.oj, align 4, !tbaa !69
  br i1 %i.zb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit460.1.i
  store i64 -72340172838076674, ptr %i.ok, align 1
  br label %.thread585.i

bb.bd:                                            ; preds = %.loopexit460.1.i
  %i.aaj = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 3 uses
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !64
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.zd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ol, ptr noundef nonnull align 2 dereferenceable(16) %i.aam, i64 16, i1 false)
  %i.aan = load ptr, ptr %i.nc, align 16, !tbaa !62 ; 4 uses
  %i.aao = load ptr, ptr %i.nd, align 8, !tbaa !66 ; 2 uses
  %i.aap = load i32, ptr %i.mu, align 4, !tbaa !55 ; 2 uses
  %i.aaq = sub nsw i32 %i.wo, %i.aap
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aar ; 3 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !49
  %i.aau = zext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !69
  %i.aax = icmp eq i8 %i.aaw, -1
  %i.aay = select i1 %i.aax, i8 -2, i8 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.om, i8 %i.aay, i64 4, i1 false)
  %i.aaz = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.aba = add nsw i32 %i.aaz, -1
  %i.abb = icmp slt i32 %i.wp, %i.aba
  br i1 %i.abb, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.abc = load ptr, ptr %i.aak, align 8, !tbaa !64
  %i.abd = getelementptr [4 x i8], ptr %i.abc, i64 %i.zd
  %i.abe = getelementptr i8, ptr %i.abd, i64 16
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !69
  store i32 %i.abf, ptr %i.on, align 16, !tbaa !69
  %i.abg = getelementptr i8, ptr %i.aas, i64 4
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !49
  %i.abi = add i32 %i.abh, 6
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !69
  %i.abm = icmp eq i8 %i.abl, -1
  br i1 %i.abm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.abn = load i32, ptr %i.aas, align 4, !tbaa !49
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.abo
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !69
  %i.abr = icmp eq i8 %i.abq, -1
  %i.abs = select i1 %i.abr, i8 -2, i8 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.sink607.i = phi i8 [ -2, %bb.bd ], [ -2, %bb.be ], [ %i.abs, %bb.bf ]
  store i8 %.sink607.i, ptr %i.oo, align 16, !tbaa !69
  br i1 %i.yy, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i8 -2, ptr %i.ok, align 1, !tbaa !69
  br label %.thread585.i

bb.bi:                                            ; preds = %bb.bg
  %i.abt = load ptr, ptr %i.aak, align 8, !tbaa !64
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.zg
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !69
  store i32 %i.abv, ptr %i.op, align 4, !tbaa !69
  %i.abw = xor i32 %i.aap, -1
  %i.abx = add i32 %i.wo, %i.abw
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !49
  %i.acb = add i32 %i.aca, 3
  %i.acc = zext i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !69
  %i.acf = icmp eq i8 %i.ace, -1
  %i.acg = select i1 %i.acf, i8 -2, i8 1
  store i8 %i.acg, ptr %i.ok, align 1, !tbaa !69
  br label %.thread585.i

bb.bj:                                            ; preds = %bb.ba
  %i.ach = load ptr, ptr %i.nc, align 16, !tbaa !62
  %i.aci = load ptr, ptr %i.nd, align 8, !tbaa !66
  %i.acj = getelementptr [4 x i8], ptr %i.aci, i64 %i.yz
  %i.ack = getelementptr i8, ptr %i.acj, i64 -4
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !49
  %i.acm = add i32 %i.acl, 6
  %i.acn = zext i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.acn
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !69
  %.not363.i = icmp eq i8 %i.acp, -1
  br i1 %.not363.i, label %.loopexit460.loopexit.i, label %.preheader461.i

.preheader461.i:                                  ; preds = %bb.bj
  %i.acq = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8 ; 4 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !64
  %i.act = getelementptr inbounds [4 x i8], ptr %i.acs, i64 %i.zi
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !69
  store i32 %i.acu, ptr %i.nw, align 4, !tbaa !69
  %i.acv = load ptr, ptr %i.acr, align 8, !tbaa !64
  %i.acw = getelementptr [4 x i8], ptr %i.acv, i64 %i.zi
  %i.acx = getelementptr [4 x i8], ptr %i.acw, i64 %i.zh
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !69
  store i32 %i.acy, ptr %i.nx, align 4, !tbaa !69
  %i.acz = load ptr, ptr %i.acr, align 8, !tbaa !64
  %.idx.i = shl nsw i64 %i.zh, 3
  %i.ada = getelementptr i8, ptr %i.acz, i64 %.idx.i
  %i.adb = getelementptr [4 x i8], ptr %i.ada, i64 %i.zi
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !69
  store i32 %i.adc, ptr %i.ny, align 4, !tbaa !69
  %i.add = load ptr, ptr %i.acr, align 8, !tbaa !64
  %.idx575.i = mul nsw i64 %i.zh, 12
  %i.ade = getelementptr i8, ptr %i.add, i64 %.idx575.i
  %i.adf = getelementptr [4 x i8], ptr %i.ade, i64 %i.zi
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !69
  br label %.loopexit460.i

.loopexit460.loopexit.i:                          ; preds = %bb.bj, %bb.ba
  store i32 0, ptr %i.nw, align 4, !tbaa !69
  store i32 0, ptr %i.nx, align 4, !tbaa !69
  store i32 0, ptr %i.ny, align 4, !tbaa !69
  br label %.loopexit460.i

.loopexit460.i:                                   ; preds = %.loopexit460.loopexit.i, %.preheader461.i
  %.sink609.i = phi i32 [ %i.adg, %.preheader461.i ], [ 0, %.loopexit460.loopexit.i ]
  store i32 %.sink609.i, ptr %i.nz, align 4, !tbaa !69
  br i1 %i.zb, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %.loopexit460.i
  %i.adh = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 8 ; 3 uses
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !64
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.zd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ob, ptr noundef nonnull align 2 dereferenceable(16) %i.adk, i64 16, i1 false)
  %i.adl = load ptr, ptr %i.nc, align 16, !tbaa !62 ; 5 uses
  %i.adm = load ptr, ptr %i.nd, align 8, !tbaa !66 ; 3 uses
  %i.adn = load i32, ptr %i.mu, align 4, !tbaa !55 ; 2 uses
  %i.ado = sub nsw i32 %i.wo, %i.adn
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.adp ; 3 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !49
  %i.ads = zext i32 %i.adr to i64
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !69
  %i.adv = icmp eq i8 %i.adu, -1
  %i.adw = select i1 %i.adv, i8 -2, i8 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.oc, i8 %i.adw, i64 4, i1 false)
  %i.adx = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.ady = add nsw i32 %i.adx, -1
  %i.adz = icmp slt i32 %i.wp, %i.ady
  br i1 %i.adz, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.aea = load ptr, ptr %i.adi, align 8, !tbaa !64
  %i.aeb = getelementptr [4 x i8], ptr %i.aea, i64 %i.zd
  %i.aec = getelementptr i8, ptr %i.aeb, i64 16
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !69
  store i32 %i.aed, ptr %i.od, align 16, !tbaa !69
  %i.aee = getelementptr i8, ptr %i.adq, i64 4
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !49
  %i.aeg = add i32 %i.aef, 6
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.aeh
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !69
  %i.aek = icmp eq i8 %i.aej, -1
  br i1 %i.aek, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ael = load i32, ptr %i.adq, align 4, !tbaa !49
  %i.aem = zext i32 %i.ael to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !69
  %i.aep = icmp eq i8 %i.aeo, -1
  %i.aeq = select i1 %i.aep, i8 -2, i8 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.sink611.i = phi i8 [ %i.aeq, %bb.bm ], [ -2, %bb.bl ], [ -2, %bb.bk ]
  store i8 %.sink611.i, ptr %i.oe, align 8, !tbaa !69
  br i1 %i.yy, label %.thread583.i, label %.thread.i

bb.bo:                                            ; preds = %.loopexit460.i
  store i64 -72340172838076674, ptr %i.oa, align 1
  br i1 %.not364.i, label %bb.bb, label %bb.bp

.thread583.i:                                     ; preds = %bb.bn
  %i.aer = load ptr, ptr %i.adi, align 8, !tbaa !64
  %i.aes = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %i.zg
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !69
  store i32 %i.aet, ptr %i.of, align 4, !tbaa !69
  %i.aeu = xor i32 %i.adn, -1
  %i.aev = add i32 %i.wo, %i.aeu
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !49
  %i.aez = add i32 %i.aey, 3
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.afa
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !69
  %i.afd = icmp eq i8 %i.afc, -1
  %i.afe = select i1 %i.afd, i8 -2, i8 1
  store i8 %i.afe, ptr %i.oa, align 1, !tbaa !69
  br i1 %.not364.i, label %.thread584.i, label %bb.bp

.thread.i:                                        ; preds = %bb.bn
  store i8 -2, ptr %i.oa, align 1, !tbaa !69
  br i1 %.not364.i, label %.loopexit460.loopexit.1.i, label %bb.bp

bb.bp:                                            ; preds = %.thread.i, %.thread583.i, %bb.bo
  %i.aff = icmp eq i32 %i.wh, 2
  br i1 %i.aff, label %bb.bq, label %.thread585.i

bb.bq:                                            ; preds = %bb.bp
  %i.afg = add nsw i32 %.0218, -1
  %i.afh = tail call fastcc i32 @svq3_mc_dir(ptr noundef nonnull %i.b, i32 noundef %i.afg, i32 noundef %.0341.i, i32 noundef 0, i32 noundef 0)
  %i.afi = icmp slt i32 %i.afh, 0
  br i1 %i.afi, label %svq3_decode_mb.exit.thread, label %.thread412.i

.thread585.i:                                     ; preds = %bb.bp, %bb.bi, %bb.bh, %bb.bc
  %.not365.i = icmp eq i32 %.0218, 2
  br i1 %.not365.i, label %.loopexit459.thread.i, label %bb.br

.loopexit459.thread.i:                            ; preds = %.thread585.i
  %i.afj = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !64
  %i.afm = sext i32 %i.wv to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afl, i64 %i.afm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.afn, i8 0, i64 16, i1 false)
  %i.afo = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !64
  %i.afr = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.afs = add nsw i32 %i.afr, %i.wv
  %i.aft = sext i32 %i.afs to i64
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.afq, i64 %i.aft
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.afu, i8 0, i64 16, i1 false)
  %i.afv = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !64
  %i.afy = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.afz = shl nsw i32 %i.afy, 1
  %i.aga = add nsw i32 %i.afz, %i.wv
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.afx, i64 %i.agb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.agc, i8 0, i64 16, i1 false)
  %i.agd = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !64
  %i.agg = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.agh = mul nsw i32 %i.agg, 3
  %i.agi = add nsw i32 %i.agh, %i.wv
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [4 x i8], ptr %i.agf, i64 %i.agj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.agk, i8 0, i64 16, i1 false)
  br label %bb.bs

bb.br:                                            ; preds = %.thread585.i
  %i.agl = tail call fastcc i32 @svq3_mc_dir(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %.0341.i, i32 noundef 0, i32 noundef 0)
  %i.agm = icmp slt i32 %i.agl, 0
  br i1 %i.agm, label %svq3_decode_mb.exit.thread, label %.loopexit459.i

.loopexit459.i:                                   ; preds = %bb.br
  %.not366.i = icmp eq i32 %.0218, 1
  br i1 %.not366.i, label %.preheader457.i, label %bb.bs

.preheader457.i:                                  ; preds = %.loopexit459.i
  %i.agn = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !64
  %i.agq = sext i32 %i.wv to i64
  %i.agr = getelementptr inbounds [4 x i8], ptr %i.agp, i64 %i.agq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.agr, i8 0, i64 16, i1 false)
  %i.ags = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !64
  %i.agv = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.agw = add nsw i32 %i.agv, %i.wv
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.agx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  %i.agz = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !64
  %i.ahc = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.ahd = shl nsw i32 %i.ahc, 1
  %i.ahe = add nsw i32 %i.ahd, %i.wv
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.ahb, i64 %i.ahf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ahg, i8 0, i64 16, i1 false)
  %i.ahh = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !64
  %i.ahk = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.ahl = mul nsw i32 %i.ahk, 3
  %i.ahm = add nsw i32 %i.ahl, %i.wv
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.ahj, i64 %i.ahn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aho, i8 0, i64 16, i1 false)
  br label %.thread412.i

bb.bs:                                            ; preds = %.loopexit459.i, %.loopexit459.thread.i
  %i.ahp = icmp eq i32 %.0218, 3
  %i.ahq = zext i1 %i.ahp to i32
  %i.ahr = tail call fastcc i32 @svq3_mc_dir(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %.0341.i, i32 noundef 1, i32 noundef %i.ahq)
  %i.ahs = icmp slt i32 %i.ahr, 0
  br i1 %i.ahs, label %svq3_decode_mb.exit.thread, label %.thread412.i

bb.bt:                                            ; preds = %bb.av
  %i.aht = icmp eq i32 %.0218, 8                  ; 2 uses
  switch i32 %.0218, label %bb.ck [
    i32 33, label %bb.bu
    i32 8, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  %i.ahu = load ptr, ptr %i.nc, align 16, !tbaa !62 ; 9 uses
  %i.ahv = load ptr, ptr %i.nd, align 8, !tbaa !66 ; 2 uses
  %i.ahw = sext i32 %i.wo to i64
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.ahw ; 2 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !49
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ahz ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ne, i8 -1, i64 40, i1 false)
  br i1 %i.aht, label %bb.bv, label %.preheader466.preheader.i

.preheader466.preheader.i:                        ; preds = %bb.bu
  store i32 33686018, ptr %i.nf, align 4
  store i32 33686018, ptr %i.ng, align 4
  store i32 33686018, ptr %i.nh, align 4
  store i32 33686018, ptr %i.ni, align 4
  br label %.loopexit464.i

bb.bv:                                            ; preds = %bb.bu
  %i.aib = icmp sgt i32 %i.wp, 0
  br i1 %i.aib, label %.preheader465.i, label %bb.bx

.preheader465.i:                                  ; preds = %bb.bv
  %i.aic = getelementptr i8, ptr %i.ahx, i64 -4   ; 4 uses
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !49
  %i.aie = add i32 %i.aid, 6
  %i.aif = zext i32 %i.aie to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !69 ; 2 uses
  store i8 %i.aih, ptr %i.nj, align 1, !tbaa !69
  %i.aii = load i32, ptr %i.aic, align 4, !tbaa !49
  %i.aij = add i32 %i.aii, 5
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.aik
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !69
  store i8 %i.aim, ptr %i.nk, align 1, !tbaa !69
  %i.ain = load i32, ptr %i.aic, align 4, !tbaa !49
  %i.aio = add i32 %i.ain, 4
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !69
  store i8 %i.air, ptr %i.nl, align 1, !tbaa !69
  %i.ais = load i32, ptr %i.aic, align 4, !tbaa !49
  %i.ait = add i32 %i.ais, 3
  %i.aiu = zext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !69
  store i8 %i.aiw, ptr %i.nm, align 1, !tbaa !69
  %i.aix = icmp eq i8 %i.aih, -1
  br i1 %i.aix, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.preheader465.i
  store i32 24415, ptr %i.nb, align 4, !tbaa !106
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.preheader465.i, %bb.bv
  %i.aiy = icmp sgt i32 %i.wr, 0
  br i1 %i.aiy, label %bb.by, label %.preheader526

bb.by:                                            ; preds = %bb.bx
  %i.aiz = load i32, ptr %i.mu, align 4, !tbaa !55
  %i.aja = sub nsw i32 %i.wo, %i.aiz
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.ajb ; 4 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !49
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.aje
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !69 ; 2 uses
  store i8 %i.ajg, ptr %i.nn, align 4, !tbaa !69
  %i.ajh = load i32, ptr %i.ajc, align 4, !tbaa !49
  %i.aji = add i32 %i.ajh, 1
  %i.ajj = zext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !69
  store i8 %i.ajl, ptr %i.no, align 1, !tbaa !69
  %i.ajm = load i32, ptr %i.ajc, align 4, !tbaa !49
  %i.ajn = add i32 %i.ajm, 2
  %i.ajo = zext i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ajo
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !69
  store i8 %i.ajq, ptr %i.np, align 2, !tbaa !69
  %i.ajr = load i32, ptr %i.ajc, align 4, !tbaa !49
  %i.ajs = add i32 %i.ajr, 3
  %i.ajt = zext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !69
  store i8 %i.ajv, ptr %i.nq, align 1, !tbaa !69
  %i.ajw = icmp eq i8 %i.ajg, -1
  br i1 %i.ajw, label %bb.bz, label %.preheader526

bb.bz:                                            ; preds = %bb.by
  store i32 13311, ptr %i.na, align 8, !tbaa !105
  br label %.preheader526

.preheader526:                                    ; preds = %bb.bz, %bb.by, %bb.bx
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.ajx = icmp samesign ult i64 %indvars.iv.i, 14
  br i1 %i.ajx, label %bb.cb, label %.loopexit464.loopexit.i, !llvm.loop !107

bb.cb:                                            ; preds = %.preheader526, %bb.ca
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ca ], [ 0, %.preheader526 ] ; 3 uses
  %i.ajy = phi i32 [ %i.alt, %bb.ca ], [ %i.wg, %.preheader526 ] ; 4 uses
  %i.ajz = lshr i32 %i.ajy, 3
  %i.aka = zext nneg i32 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 1, !tbaa !69
  %i.akd = tail call i32 @llvm.bswap.i32(i32 %i.akc)
  %i.ake = and i32 %i.ajy, 7
  %i.akf = shl i32 %i.akd, %i.ake                 ; 3 uses
  %i.akg = and i32 %i.akf, -1434451968
  %.not.i.i = icmp eq i32 %i.akg, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.akh = lshr i32 %i.akf, 24
  %i.aki = zext nneg i32 %i.akh to i64            ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.aki
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !69
  %i.akl = zext i8 %i.akk to i32
  %i.akm = add i32 %i.ajy, %i.akl
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 %i.akm) ; 2 uses
  store i32 %..i.i, ptr %i.mw, align 8, !tbaa !82
  %i.akn = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.aki
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !69
  %i.akp = zext i8 %i.ako to i32
  br label %get_interleaved_ue_golomb.exit.i

.preheader.i.i:                                   ; preds = %bb.cb, %bb.ce
  %.044.i.i = phi i32 [ %i.alo, %bb.ce ], [ %i.akf, %bb.cb ]
  %.043.i.i = phi i32 [ %spec.select56.i.i, %bb.ce ], [ %i.ajy, %bb.cb ]
  %.0.i.i286 = phi i32 [ %i.alh, %bb.ce ], [ 1, %bb.cb ] ; 2 uses
  %i.akq = lshr i32 %.044.i.i, 24
  %i.akr = zext nneg i32 %i.akq to i64            ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.akr
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !69 ; 3 uses
  %spec.select57.i.i = tail call i8 @llvm.umin.i8(i8 %i.akt, i8 8)
  %spec.select.i383.i = zext nneg i8 %spec.select57.i.i to i32
  %i.aku = add i32 %.043.i.i, %spec.select.i383.i ; 2 uses
  %spec.select56.i.i = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 %i.aku) ; 5 uses
  %.not54.i.i = icmp eq i8 %i.akt, 9
  br i1 %.not54.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i.i
  %i.akv = zext i8 %i.akt to i32
  %i.akw = add nsw i32 %i.akv, -1
  %i.akx = ashr i32 %i.akw, 1
  %i.aky = shl i32 %.0.i.i286, %i.akx
  %i.akz = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.akr
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !69
  %i.alb = zext i8 %i.ala to i32
  %i.alc = or i32 %i.aky, %i.alb
  br label %.loopexit.i.i

bb.ce:                                            ; preds = %.preheader.i.i
  %i.ald = shl i32 %.0.i.i286, 4                  ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.akr
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !69
  %i.alg = zext i8 %i.alf to i32
  %i.alh = or i32 %i.ald, %i.alg                  ; 2 uses
  %i.ali = lshr i32 %spec.select56.i.i, 3
  %i.alj = zext nneg i32 %i.ali to i64
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.alj
  %i.all = load i32, ptr %i.alk, align 1, !tbaa !69
  %i.alm = tail call i32 @llvm.bswap.i32(i32 %i.all)
  %i.aln = and i32 %spec.select56.i.i, 7
  %i.alo = shl i32 %i.alm, %i.aln
  %i.alp = icmp ult i32 %i.ald, 134217728
  %i.alq = icmp ult i32 %i.aku, %i.uk
  %i.alr = select i1 %i.alp, i1 %i.alq, i1 false
  br i1 %i.alr, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !104

.loopexit.i.i:                                    ; preds = %bb.ce, %bb.cd
  %.1.i.i = phi i32 [ %i.alc, %bb.cd ], [ %i.alh, %bb.ce ]
  store i32 %spec.select56.i.i, ptr %i.mw, align 8, !tbaa !82
  %i.als = add i32 %.1.i.i, -1
  br label %get_interleaved_ue_golomb.exit.i

get_interleaved_ue_golomb.exit.i:                 ; preds = %.loopexit.i.i, %bb.cc
  %i.alt = phi i32 [ %..i.i, %bb.cc ], [ %spec.select56.i.i, %.loopexit.i.i ]
  %.045.i.i = phi i32 [ %i.akp, %bb.cc ], [ %i.als, %.loopexit.i.i ] ; 3 uses
  %i.alu = icmp ugt i32 %.045.i.i, 24
  br i1 %i.alu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %get_interleaved_ue_golomb.exit.i
  %i.alv = load ptr, ptr %i.b, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alv, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.045.i.i) #10
  br label %svq3_decode_mb.exit.thread

bb.cg:                                            ; preds = %get_interleaved_ue_golomb.exit.i
  %i.alw = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv.i
  %i.alx = load i8, ptr %i.alw, align 2, !tbaa !69
  %i.aly = zext i8 %i.alx to i64
  %i.alz = getelementptr i8, ptr %i.ne, i64 %i.aly ; 5 uses
  %i.ama = getelementptr i8, ptr %i.alz, i64 -1
  %i.amb = getelementptr i8, ptr %i.alz, i64 -8
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !69
  %i.amd = sext i8 %i.amc to i64
  %i.ame = getelementptr [30 x i8], ptr @svq3_pred_1, i64 %i.amd
  %i.amf = load i8, ptr %i.ama, align 1, !tbaa !69
  %i.amg = sext i8 %i.amf to i64
  %i.amh = getelementptr i8, ptr %i.ame, i64 35
  %i.ami = getelementptr [5 x i8], ptr %i.amh, i64 %i.amg
  %i.amj = zext nneg i32 %.045.i.i to i64
  %i.amk = getelementptr inbounds nuw [2 x i8], ptr @svq3_pred_0, i64 %i.amj ; 2 uses
  %i.aml = load i8, ptr %i.amk, align 2, !tbaa !69
  %i.amm = zext i8 %i.aml to i64
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.amm
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !69 ; 3 uses
  store i8 %i.amo, ptr %i.alz, align 1, !tbaa !69
  %i.amp = getelementptr i8, ptr %i.alz, i64 -7
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !69
  %i.amr = sext i8 %i.amq to i64
  %i.ams = getelementptr [30 x i8], ptr @svq3_pred_1, i64 %i.amr
  %i.amt = sext i8 %i.amo to i64
  %i.amu = getelementptr i8, ptr %i.ams, i64 35
  %i.amv = getelementptr [5 x i8], ptr %i.amu, i64 %i.amt
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amk, i64 1
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !69
  %i.amy = zext i8 %i.amx to i64
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amy
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !69 ; 2 uses
  %i.anb = getelementptr i8, ptr %i.alz, i64 1
  store i8 %i.ana, ptr %i.anb, align 1, !tbaa !69
  %i.anc = icmp eq i8 %i.amo, -1
  %i.and = icmp eq i8 %i.ana, -1
  %or.cond.i285 = select i1 %i.anc, i1 true, i1 %i.and
  br i1 %or.cond.i285, label %bb.ch, label %bb.ca

bb.ch:                                            ; preds = %bb.cg
  %i.ane = load ptr, ptr %i.b, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ane, i32 noundef 16, ptr noundef nonnull @.str.20) #10
  br label %svq3_decode_mb.exit.thread

.loopexit464.loopexit.i:                          ; preds = %bb.ca
  %.pre.i = load i32, ptr %i.ni, align 4, !tbaa !69
  br label %.loopexit464.i

.loopexit464.i:                                   ; preds = %.loopexit464.loopexit.i, %.preheader466.preheader.i
  %i.anf = phi i32 [ 33686018, %.preheader466.preheader.i ], [ %.pre.i, %.loopexit464.loopexit.i ]
  store i32 %i.anf, ptr %i.aia, align 4, !tbaa !69
  %i.ang = load i8, ptr %i.nr, align 1, !tbaa !69
  %i.anh = getelementptr inbounds nuw i8, ptr %i.aia, i64 4
  store i8 %i.ang, ptr %i.anh, align 4, !tbaa !69
  %i.ani = load i8, ptr %i.ns, align 1, !tbaa !69
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aia, i64 5
  store i8 %i.ani, ptr %i.anj, align 1, !tbaa !69
  %i.ank = load i8, ptr %i.nt, align 1, !tbaa !69
  %i.anl = getelementptr inbounds nuw i8, ptr %i.aia, i64 6
  store i8 %i.ank, ptr %i.anl, align 2, !tbaa !69
  br i1 %i.aht, label %bb.ci, label %.preheader463.preheader.i

.preheader463.preheader.i:                        ; preds = %.loopexit464.i
  store i32 185273099, ptr %i.nf, align 4
  store i32 185273099, ptr %i.ng, align 4
  store i32 185273099, ptr %i.nh, align 4
  store i32 185273099, ptr %i.ni, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %.loopexit464.i
  %i.anm = load ptr, ptr %i.b, align 16, !tbaa !48
  %i.ann = load i32, ptr %i.na, align 8, !tbaa !105
  %i.ano = load i32, ptr %i.nb, align 4, !tbaa !106
  %i.anp = tail call i32 @ff_h264_check_intra4x4_pred_mode(ptr noundef nonnull %i.ne, ptr noundef %i.anm, i32 noundef %i.ann, i32 noundef %i.ano) #10 ; 0 uses
  %i.anq = load <2 x i32>, ptr %i.n, align 8, !tbaa !49
  %i.anr = icmp eq <2 x i32> %i.anq, zeroinitializer
  %i.ans = select <2 x i1> %i.anr, <2 x i32> <i32 24415, i32 13311>, <2 x i32> splat (i32 65535)
  %i.ant = shufflevector <2 x i32> %i.ans, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.preheader463.preheader.i
  %i.anu = phi <2 x i32> [ %i.ant, %bb.ci ], [ <i32 13311, i32 24415>, %.preheader463.preheader.i ]
  store <2 x i32> %i.anu, ptr %i.na, align 8, !tbaa !49
  br label %thread-pre-split

bb.ck:                                            ; preds = %bb.bt
  %i.anv = zext nneg i32 %.0218 to i64
  %i.anw = getelementptr [4 x i8], ptr @ff_h264_i_mb_type_info, i64 %i.anv ; 2 uses
  %i.anx = getelementptr i8, ptr %i.anw, i64 -30
  %i.any = load i8, ptr %i.anx, align 2, !tbaa !108 ; 2 uses
  %i.anz = lshr i8 %i.any, 1
  %i.aoa = trunc i8 %i.any to i1
  %i.aob = select i1 %i.aoa, i32 3, i32 0
  %i.aoc = xor i8 %i.anz, 1
  %i.aod = zext nneg i8 %i.aoc to i32
  %i.aoe = xor i32 %i.aob, %i.aod
  %i.aof = load ptr, ptr %i.b, align 16, !tbaa !48
  %i.aog = tail call i32 @ff_h264_check_intra_pred_mode(ptr noundef %i.aof, i32 noundef %i.wx, i32 noundef %i.wz, i32 noundef %i.aoe, i32 noundef 0) #10 ; 2 uses
  store i32 %i.aog, ptr %i.nu, align 4, !tbaa !111
  %i.aoh = icmp slt i32 %i.aog, 0
  br i1 %i.aoh, label %svq3_decode_mb.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aoi = getelementptr i8, ptr %i.anw, i64 -29
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !112
  %i.aok = zext i8 %i.aoj to i32
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.as, %bb.cj, %bb.cl
  %.1348.ph.i.ph = phi i32 [ 2, %bb.cl ], [ 1, %bb.cj ], [ 131072, %bb.as ]
  %.0339.ph.i.ph = phi i32 [ %i.aok, %bb.cl ], [ 0, %bb.cj ], [ 0, %bb.as ]
  %.pr = load i32, ptr %i.ak, align 4, !tbaa !84
  br label %bb.cm

bb.cm:                                            ; preds = %thread-pre-split, %bb.ar
  %i.aol = phi i32 [ %.pr, %thread-pre-split ], [ %i.xl, %bb.ar ]
  %.1348.ph.i = phi i32 [ %.1348.ph.i.ph, %thread-pre-split ], [ 131072, %bb.ar ] ; 3 uses
  %.0339.ph.i = phi i32 [ %.0339.ph.i.ph, %thread-pre-split ], [ 0, %bb.ar ] ; 2 uses
  %.not368.i = icmp eq i32 %i.aol, 1
  br i1 %.not368.i, label %.loopexit455.i, label %.preheader456.i

.preheader456.i:                                  ; preds = %bb.cm
  %i.aom = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !64
  %i.aop = sext i32 %i.wv to i64                  ; 2 uses
  %i.aoq = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.aop
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aoq, i8 0, i64 16, i1 false)
  %i.aor = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !64
  %i.aou = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.aov = add nsw i32 %i.aou, %i.wv
  %i.aow = sext i32 %i.aov to i64
  %i.aox = getelementptr inbounds [4 x i8], ptr %i.aot, i64 %i.aow
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aox, i8 0, i64 16, i1 false)
  %i.aoy = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !64
  %i.apb = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.apc = shl nsw i32 %i.apb, 1
  %i.apd = add nsw i32 %i.apc, %i.wv
  %i.ape = sext i32 %i.apd to i64
  %i.apf = getelementptr inbounds [4 x i8], ptr %i.apa, i64 %i.ape
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.apf, i8 0, i64 16, i1 false)
  %i.apg = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !64
  %i.apj = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.apk = mul nsw i32 %i.apj, 3
  %i.apl = add nsw i32 %i.apk, %i.wv
  %i.apm = sext i32 %i.apl to i64
  %i.apn = getelementptr inbounds [4 x i8], ptr %i.api, i64 %i.apm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.apn, i8 0, i64 16, i1 false)
  %i.apo = load i32, ptr %i.ak, align 4, !tbaa !84
  %i.app = icmp eq i32 %i.apo, 3
  br i1 %i.app, label %.preheader454.i, label %.loopexit455.i

.preheader454.i:                                  ; preds = %.preheader456.i
  %i.apq = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 16
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !64
  %i.apt = getelementptr inbounds [4 x i8], ptr %i.aps, i64 %i.aop
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.apt, i8 0, i64 16, i1 false)
  %i.apu = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !64
  %i.apx = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.apy = add nsw i32 %i.apx, %i.wv
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.apz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aqa, i8 0, i64 16, i1 false)
  %i.aqb = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !64
  %i.aqe = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.aqf = shl nsw i32 %i.aqe, 1
  %i.aqg = add nsw i32 %i.aqf, %i.wv
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.aqh
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aqi, i8 0, i64 16, i1 false)
  %i.aqj = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 16
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !64
  %i.aqm = load i32, ptr %i.mz, align 4, !tbaa !57
  %i.aqn = mul nsw i32 %i.aqm, 3
  %i.aqo = add nsw i32 %i.aqn, %i.wv
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = getelementptr inbounds [4 x i8], ptr %i.aql, i64 %i.aqp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aqq, i8 0, i64 16, i1 false)
  br label %.loopexit455.i

.loopexit455.i:                                   ; preds = %.preheader454.i, %.preheader456.i, %bb.cm
  %i.aqr = trunc i32 %.1348.ph.i to i1
  br i1 %i.aqr, label %bb.cn, label %.loopexit455..thread412_crit_edge.i

.loopexit455..thread412_crit_edge.i:              ; preds = %.loopexit455.i
  %.pre565.i = sext i32 %i.wo to i64
  br label %.thread412.i

.thread412.i:                                     ; preds = %.loopexit455..thread412_crit_edge.i, %bb.bs, %.preheader457.i, %bb.bq, %bb.au
  %.pre-phi.i = phi i64 [ %.pre565.i, %.loopexit455..thread412_crit_edge.i ], [ %i.yz, %.preheader457.i ], [ %i.yz, %bb.bq ], [ %i.yz, %bb.bs ], [ %i.xf, %bb.au ]
  %.1348408417.i = phi i32 [ %.1348.ph.i, %.loopexit455..thread412_crit_edge.i ], [ 8, %.preheader457.i ], [ 8, %bb.bq ], [ 8, %bb.bs ], [ 8, %bb.au ]
  %.0339410415.i = phi i32 [ %.0339.ph.i, %.loopexit455..thread412_crit_edge.i ], [ 0, %.preheader457.i ], [ 0, %bb.bq ], [ 0, %bb.bs ], [ 0, %bb.au ]
  %i.aqs = load ptr, ptr %i.nc, align 16, !tbaa !62
  %i.aqt = load ptr, ptr %i.nd, align 8, !tbaa !66
  %i.aqu = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %.pre-phi.i
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !49
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqw
  store i64 144680345676153346, ptr %i.aqx, align 1
  br label %bb.cn

bb.cn:                                            ; preds = %.thread412.i, %.loopexit455.i
  %i.aqy = phi i1 [ false, %.thread412.i ], [ true, %.loopexit455.i ]
  %.1348408418.i = phi i32 [ %.1348408417.i, %.thread412.i ], [ %.1348.ph.i, %.loopexit455.i ] ; 5 uses
  %.0339410416.i = phi i32 [ %.0339410415.i, %.thread412.i ], [ %.0339.ph.i, %.loopexit455.i ] ; 2 uses
  %i.aqz = and i32 %.1348408418.i, 131072
  %.not369.i = icmp eq i32 %i.aqz, 0
  br i1 %.not369.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ara = load i32, ptr %i.ak, align 4, !tbaa !84 ; 2 uses
  %i.arb = icmp eq i32 %i.ara, 3
  br i1 %i.arb, label %.thread423.thread.i, label %.thread435.i

bb.cp:                                            ; preds = %bb.cn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.or, i8 0, i64 112, i1 false)
  %i.arc = and i32 %.1348408418.i, 2              ; 2 uses
  %.not370.not.i = icmp eq i32 %i.arc, 0
  br i1 %.not370.not.i, label %bb.cq, label %.thread428.i

.thread423.thread.i:                              ; preds = %bb.co
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.or, i8 0, i64 112, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %.thread423.thread.i, %bb.cp
  %i.ard = load i32, ptr %i.mw, align 8, !tbaa !82 ; 4 uses
  %i.are = load i32, ptr %i.my, align 16, !tbaa !81 ; 3 uses
  %i.arf = load ptr, ptr %i.mv, align 16, !tbaa !79 ; 2 uses
  %i.arg = lshr i32 %i.ard, 3
  %i.arh = zext nneg i32 %i.arg to i64
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arf, i64 %i.arh
  %i.arj = load i32, ptr %i.ari, align 1, !tbaa !69
  %i.ark = tail call i32 @llvm.bswap.i32(i32 %i.arj)
  %i.arl = and i32 %i.ard, 7
  %i.arm = shl i32 %i.ark, %i.arl                 ; 3 uses
  %i.arn = and i32 %i.arm, -1434451968
  %.not.i384.i = icmp eq i32 %i.arn, 0
  br i1 %.not.i384.i, label %.preheader.i387.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aro = lshr i32 %i.arm, 24
  %i.arp = zext nneg i32 %i.aro to i64            ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.arp
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !69
  %i.ars = zext i8 %i.arr to i32
  %i.art = add i32 %i.ard, %i.ars
  %..i385.i = tail call i32 @llvm.umin.i32(i32 %i.are, i32 %i.art)
  store i32 %..i385.i, ptr %i.mw, align 8, !tbaa !82
  %i.aru = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.arp
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !69
  %i.arw = zext i8 %i.arv to i32
  br label %get_interleaved_ue_golomb.exit397.i

.preheader.i387.i:                                ; preds = %bb.cq, %bb.ct
  %.044.i388.i = phi i32 [ %i.asv, %bb.ct ], [ %i.arm, %bb.cq ]
  %.043.i389.i = phi i32 [ %spec.select56.i393.i, %bb.ct ], [ %i.ard, %bb.cq ]
  %.0.i390.i = phi i32 [ %i.aso, %bb.ct ], [ 1, %bb.cq ] ; 2 uses
  %i.arx = lshr i32 %.044.i388.i, 24
  %i.ary = zext nneg i32 %i.arx to i64            ; 3 uses
  %i.arz = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.ary
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !69 ; 3 uses
  %spec.select57.i391.i = tail call i8 @llvm.umin.i8(i8 %i.asa, i8 8)
  %spec.select.i392.i = zext nneg i8 %spec.select57.i391.i to i32
  %i.asb = add i32 %.043.i389.i, %spec.select.i392.i ; 2 uses
  %spec.select56.i393.i = tail call i32 @llvm.umin.i32(i32 %i.are, i32 %i.asb) ; 4 uses
  %.not54.i394.i = icmp eq i8 %i.asa, 9
  br i1 %.not54.i394.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.preheader.i387.i
  %i.asc = zext i8 %i.asa to i32
  %i.asd = add nsw i32 %i.asc, -1
  %i.ase = ashr i32 %i.asd, 1
  %i.asf = shl i32 %.0.i390.i, %i.ase
  %i.asg = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ary
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !69
  %i.asi = zext i8 %i.ash to i32
  %i.asj = or i32 %i.asf, %i.asi
  br label %.loopexit.i395.i

bb.ct:                                            ; preds = %.preheader.i387.i
  %i.ask = shl i32 %.0.i390.i, 4                  ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ary
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !69
  %i.asn = zext i8 %i.asm to i32
  %i.aso = or i32 %i.ask, %i.asn                  ; 2 uses
  %i.asp = lshr i32 %spec.select56.i393.i, 3
  %i.asq = zext nneg i32 %i.asp to i64
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arf, i64 %i.asq
  %i.ass = load i32, ptr %i.asr, align 1, !tbaa !69
  %i.ast = tail call i32 @llvm.bswap.i32(i32 %i.ass)
  %i.asu = and i32 %spec.select56.i393.i, 7
  %i.asv = shl i32 %i.ast, %i.asu
  %i.asw = icmp ult i32 %i.ask, 134217728
  %i.asx = icmp ult i32 %i.asb, %i.are
  %i.asy = select i1 %i.asw, i1 %i.asx, i1 false
  br i1 %i.asy, label %.preheader.i387.i, label %.loopexit.i395.i, !llvm.loop !104

.loopexit.i395.i:                                 ; preds = %bb.ct, %bb.cs
  %.1.i396.i = phi i32 [ %i.asj, %bb.cs ], [ %i.aso, %bb.ct ]
  store i32 %spec.select56.i393.i, ptr %i.mw, align 8, !tbaa !82
  %i.asz = add i32 %.1.i396.i, -1
  br label %get_interleaved_ue_golomb.exit397.i

get_interleaved_ue_golomb.exit397.i:              ; preds = %.loopexit.i395.i, %bb.cr
  %.045.i386.i = phi i32 [ %i.arw, %bb.cr ], [ %i.asz, %.loopexit.i395.i ] ; 3 uses
  %i.ata = icmp ugt i32 %.045.i386.i, 47
  br i1 %i.ata, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %get_interleaved_ue_golomb.exit397.i
  %i.atb = load ptr, ptr %i.b, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.atb, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %.045.i386.i) #10
  br label %svq3_decode_mb.exit.thread

bb.cv:                                            ; preds = %get_interleaved_ue_golomb.exit397.i
  %i.atc = and i32 %.1348408418.i, 5
  %.not371.i = icmp eq i32 %i.atc, 0
  %i.atd = zext nneg i32 %.045.i386.i to i64
  %.in.in.v.i = select i1 %.not371.i, ptr @ff_h264_golomb_to_inter_cbp, ptr @ff_h264_golomb_to_intra4x4_cbp
  %.in.in.i = getelementptr inbounds nuw i8, ptr %.in.in.v.i, i64 %i.atd
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !69
  %i.ate = zext i8 %.in.i to i32
  %.pre564.i = load i32, ptr %i.ak, align 4, !tbaa !84
  br label %.thread435.i

.thread435.i:                                     ; preds = %bb.cv, %bb.co
  %i.atf = phi i32 [ %.pre564.i, %bb.cv ], [ %i.ara, %bb.co ]
  %.1340439.i = phi i32 [ %i.ate, %bb.cv ], [ %.0339410416.i, %bb.co ] ; 4 uses
  %.not372.i = icmp eq i32 %i.atf, 1
  br i1 %.not372.i, label %.thread441.i, label %bb.cw

bb.cw:                                            ; preds = %.thread435.i
  %i.atg = load i32, ptr %i.os, align 4, !tbaa !96
  %i.ath = icmp ne i32 %i.atg, 0
  %i.ati = icmp ne i32 %.1340439.i, 0
  %or.cond4.i = select i1 %i.ath, i1 %i.ati, i1 false
  br i1 %or.cond4.i, label %.thread428.i, label %.thread441.i

.thread428.i:                                     ; preds = %bb.cw, %bb.cp
  %.1340434.i = phi i32 [ %.0339410416.i, %bb.cp ], [ %.1340439.i, %bb.cw ] ; 2 uses
  %i.atj = phi i32 [ %i.arc, %bb.cp ], [ 0, %bb.cw ] ; 2 uses
  %.not370.not421432.i = phi i1 [ false, %bb.cp ], [ true, %bb.cw ]
  %i.atk = load i32, ptr %i.mw, align 8, !tbaa !82 ; 4 uses
  %i.atl = load i32, ptr %i.my, align 16, !tbaa !81 ; 3 uses
  %i.atm = load ptr, ptr %i.mv, align 16, !tbaa !79 ; 2 uses
  %i.atn = lshr i32 %i.atk, 3
  %i.ato = zext nneg i32 %i.atn to i64
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atm, i64 %i.ato
  %i.atq = load i32, ptr %i.atp, align 1, !tbaa !69
  %i.atr = tail call i32 @llvm.bswap.i32(i32 %i.atq)
  %i.ats = and i32 %i.atk, 7
  %i.att = shl i32 %i.atr, %i.ats                 ; 3 uses
  %i.atu = and i32 %i.att, -1434451968
  %.not.i398.i = icmp eq i32 %i.atu, 0
  br i1 %.not.i398.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.thread428.i
  %i.atv = lshr i32 %i.att, 24
  %i.atw = zext nneg i32 %i.atv to i64            ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.atw
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !69
  %i.atz = zext i8 %i.aty to i32
  %i.aua = add i32 %i.atk, %i.atz
  %..i399.i = tail call i32 @llvm.umin.i32(i32 %i.atl, i32 %i.aua)
  store i32 %..i399.i, ptr %i.mw, align 8, !tbaa !82
  %i.aub = getelementptr inbounds nuw i8, ptr @ff_interleaved_se_golomb_vlc_code, i64 %i.atw
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !69
  %i.aud = sext i8 %i.auc to i32
  br label %get_interleaved_se_golomb.exit.i

bb.cy:                                            ; preds = %.thread428.i
  %i.aue = add i32 %i.atk, 8
  %i.auf = tail call i32 @llvm.umin.i32(i32 %i.atl, i32 %i.aue) ; 3 uses
  %i.aug = lshr i32 %i.auf, 3
end_hunk_1
begin_hunk_2_@svq3_decode_frame:bb.a
  %i.bpc = getelementptr inbounds i8, ptr %i.bax, i64 %i.bpb
  %i.bpd = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bpe = sext i32 %i.bpd to i64
  %i.bpf = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bpe
  %i.bpg = getelementptr i8, ptr %i.bpf, i64 12
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !69
  %i.bpi = zext i8 %i.bph to i32
  %i.bpj = add nsw i32 %i.bpi, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.bpc, ptr noundef nonnull %i.ox, i32 noundef %i.bai, i32 noundef %i.bpj, i32 noundef 2)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.bpk = load i8, ptr %i.pa, align 1, !tbaa !69
  %.not78.1.i = icmp eq i8 %i.bpk, 0
  br i1 %.not78.1.i, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bpl = load i16, ptr %i.pb, align 16, !tbaa !121
  %.not79.1.i = icmp eq i16 %i.bpl, 0
  br i1 %.not79.1.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.bpm = load i32, ptr %i.ra, align 4, !tbaa !49
  %i.bpn = sext i32 %i.bpm to i64
  %i.bpo = getelementptr inbounds i8, ptr %i.bax, i64 %i.bpn
  %i.bpp = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bpq = sext i32 %i.bpp to i64
  %i.bpr = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bpq
  %i.bps = getelementptr i8, ptr %i.bpr, i64 12
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !69
  %i.bpu = zext i8 %i.bpt to i32
  %i.bpv = add nsw i32 %i.bpu, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.bpo, ptr noundef nonnull %i.pb, i32 noundef %i.bai, i32 noundef %i.bpv, i32 noundef 2)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.bpw = load i8, ptr %i.pc, align 4, !tbaa !69
  %.not78.2.i = icmp eq i8 %i.bpw, 0
  br i1 %.not78.2.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.bpx = load i16, ptr %i.pd, align 16, !tbaa !121
  %.not79.2.i = icmp eq i16 %i.bpx, 0
  br i1 %.not79.2.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.bpy = load i32, ptr %i.rb, align 16, !tbaa !49
  %i.bpz = sext i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds i8, ptr %i.bax, i64 %i.bpz
  %i.bqb = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bqc = sext i32 %i.bqb to i64
  %i.bqd = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bqc
  %i.bqe = getelementptr i8, ptr %i.bqd, i64 12
  %i.bqf = load i8, ptr %i.bqe, align 1, !tbaa !69
  %i.bqg = zext i8 %i.bqf to i32
  %i.bqh = add nsw i32 %i.bqg, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.bqa, ptr noundef nonnull %i.pd, i32 noundef %i.bai, i32 noundef %i.bqh, i32 noundef 2)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.bqi = load i8, ptr %i.pe, align 1, !tbaa !69
  %.not78.3.i = icmp eq i8 %i.bqi, 0
  br i1 %.not78.3.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bqj = load i16, ptr %i.pf, align 16, !tbaa !121
  %.not79.3.i = icmp eq i16 %i.bqj, 0
  br i1 %.not79.3.i, label %.lr.ph.1.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.bqk = load i32, ptr %i.rc, align 4, !tbaa !49
  %i.bql = sext i32 %i.bqk to i64
  %i.bqm = getelementptr inbounds i8, ptr %i.bax, i64 %i.bql
  %i.bqn = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bqo = sext i32 %i.bqn to i64
  %i.bqp = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bqo
  %i.bqq = getelementptr i8, ptr %i.bqp, i64 12
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !69
  %i.bqs = zext i8 %i.bqr to i32
  %i.bqt = add nsw i32 %i.bqs, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.bqm, ptr noundef nonnull %i.pf, i32 noundef %i.bai, i32 noundef %i.bqt, i32 noundef 2)
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.fn, %bb.fm
  %i.bqu = load i8, ptr %i.pg, align 4, !tbaa !69
  %.not78.1104.i = icmp eq i8 %i.bqu, 0
  br i1 %.not78.1104.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.lr.ph.1.i
  %i.bqv = load i16, ptr %i.oy, align 16, !tbaa !121
  %.not79.1105.i = icmp eq i16 %i.bqv, 0
  br i1 %.not79.1105.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph.1.i
  %i.bqw = load i32, ptr %i.rd, align 8, !tbaa !49
  %i.bqx = sext i32 %i.bqw to i64
  %i.bqy = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bqx
  %i.bqz = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bra = sext i32 %i.bqz to i64
  %i.brb = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bra
  %i.brc = getelementptr i8, ptr %i.brb, i64 12
  %i.brd = load i8, ptr %i.brc, align 1, !tbaa !69
  %i.bre = zext i8 %i.brd to i32
  %i.brf = add nsw i32 %i.bre, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.bqy, ptr noundef nonnull %i.oy, i32 noundef %i.bai, i32 noundef %i.brf, i32 noundef 2)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.brg = load i8, ptr %i.ph, align 1, !tbaa !69
  %.not78.1.1.i = icmp eq i8 %i.brg, 0
  br i1 %.not78.1.1.i, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.brh = load i16, ptr %i.pi, align 16, !tbaa !121
  %.not79.1.1.i = icmp eq i16 %i.brh, 0
  br i1 %.not79.1.1.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.bri = load i32, ptr %i.re, align 4, !tbaa !49
  %i.brj = sext i32 %i.bri to i64
  %i.brk = getelementptr inbounds i8, ptr %i.bbb, i64 %i.brj
  %i.brl = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.brm = sext i32 %i.brl to i64
  %i.brn = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.brm
  %i.bro = getelementptr i8, ptr %i.brn, i64 12
  %i.brp = load i8, ptr %i.bro, align 1, !tbaa !69
  %i.brq = zext i8 %i.brp to i32
  %i.brr = add nsw i32 %i.brq, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.brk, ptr noundef nonnull %i.pi, i32 noundef %i.bai, i32 noundef %i.brr, i32 noundef 2)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.brs = load i8, ptr %i.pj, align 4, !tbaa !69
  %.not78.2.1.i = icmp eq i8 %i.brs, 0
  br i1 %.not78.2.1.i, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.brt = load i16, ptr %i.pk, align 16, !tbaa !121
  %.not79.2.1.i = icmp eq i16 %i.brt, 0
  br i1 %.not79.2.1.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.bru = load i32, ptr %i.rf, align 16, !tbaa !49
  %i.brv = sext i32 %i.bru to i64
  %i.brw = getelementptr inbounds i8, ptr %i.bbb, i64 %i.brv
  %i.brx = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bry = sext i32 %i.brx to i64
  %i.brz = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bry
  %i.bsa = getelementptr i8, ptr %i.brz, i64 12
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !69
  %i.bsc = zext i8 %i.bsb to i32
  %i.bsd = add nsw i32 %i.bsc, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.brw, ptr noundef nonnull %i.pk, i32 noundef %i.bai, i32 noundef %i.bsd, i32 noundef 2)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.bse = load i8, ptr %i.pl, align 1, !tbaa !69
  %.not78.3.1.i = icmp eq i8 %i.bse, 0
  br i1 %.not78.3.1.i, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bsf = load i16, ptr %i.pm, align 16, !tbaa !121
  %.not79.3.1.i = icmp eq i16 %i.bsf, 0
  br i1 %.not79.3.1.i, label %hl_decode_mb.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.bsg = load i32, ptr %i.rg, align 4, !tbaa !49
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = getelementptr inbounds i8, ptr %i.bbb, i64 %i.bsh
  %i.bsj = load i32, ptr %i.ot, align 4, !tbaa !97
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr i8, ptr @ff_h264_chroma_qp, i64 %i.bsk
  %i.bsm = getelementptr i8, ptr %i.bsl, i64 12
  %i.bsn = load i8, ptr %i.bsm, align 1, !tbaa !69
  %i.bso = zext i8 %i.bsn to i32
  %i.bsp = add nsw i32 %i.bso, -12
  tail call fastcc void @svq3_add_idct_c(ptr noundef %i.bsi, ptr noundef nonnull %i.pm, i32 noundef %i.bai, i32 noundef %i.bsp, i32 noundef 2)
  br label %hl_decode_mb.exit

hl_decode_mb.exit:                                ; preds = %bb.fy, %bb.fx, %hl_decode_mb_idct_luma.exit.i, %bb.ds
  %i.bsq = load i32, ptr %i.ak, align 4, !tbaa !84 ; 2 uses
  %.not268 = icmp eq i32 %i.bsq, 3
  br i1 %.not268, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %hl_decode_mb.exit
  %i.bsr = load i32, ptr %i.rh, align 4, !tbaa !74
  %.not269 = icmp eq i32 %i.bsr, 0
  br i1 %.not269, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bss = icmp eq i32 %i.bsq, 2
  %i.bst = icmp ult i32 %.0218, 8
  %or.cond3 = and i1 %i.bst, %i.bss
  %i.bsu = add nsw i32 %.0218, -1
  %i.bsv = select i1 %or.cond3, i32 %i.bsu, i32 -1
  %i.bsw = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 24
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !63
  %i.bsz = load i32, ptr %i.n, align 8, !tbaa !77
  %i.bta = load i32, ptr %i.m, align 4, !tbaa !76
  %i.btb = load i32, ptr %i.mu, align 4, !tbaa !55
  %i.btc = mul nsw i32 %i.btb, %i.bta
  %i.btd = add nsw i32 %i.btc, %i.bsz
  %i.bte = sext i32 %i.btd to i64
  %i.btf = getelementptr inbounds [4 x i8], ptr %i.bsy, i64 %i.bte
  store i32 %i.bsv, ptr %i.btf, align 4, !tbaa !49
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %hl_decode_mb.exit
  %i.btg = load i32, ptr %i.n, align 8, !tbaa !77
  %i.bth = add nsw i32 %i.btg, 1                  ; 3 uses
  store i32 %i.bth, ptr %i.n, align 8, !tbaa !77
  %i.bti = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.btj = icmp slt i32 %i.bth, %i.bti
  br i1 %i.btj, label %.lr.ph, label %._crit_edge, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.gb, %.preheader
  %i.btk = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.btl = load ptr, ptr %i.btk, align 8, !tbaa !41
  %i.btm = load ptr, ptr %i.ri, align 16, !tbaa !39
  %i.btn = load ptr, ptr %i.btm, align 8, !tbaa !41 ; 2 uses
  %i.bto = load ptr, ptr %i.btn, align 8, !tbaa !73
  %.not263 = icmp eq ptr %i.bto, null
  %spec.select274 = select i1 %.not263, ptr null, ptr %i.btn
  %i.btp = load i32, ptr %i.m, align 4, !tbaa !76
  %i.btq = shl nsw i32 %i.btp, 4
  %i.btr = load i32, ptr %i.rh, align 4, !tbaa !74
  tail call void @ff_draw_horiz_band(ptr noundef nonnull %0, ptr noundef %i.btl, ptr noundef %spec.select274, i32 noundef %i.btq, i32 noundef 16, i32 noundef 3, i32 noundef 0, i32 noundef %i.btr) #10
  %i.bts = load i32, ptr %i.m, align 4, !tbaa !76
  %i.btt = add nsw i32 %i.bts, 1                  ; 3 uses
  store i32 %i.btt, ptr %i.m, align 4, !tbaa !76
  %i.btu = load i32, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.btv = icmp slt i32 %i.btt, %i.btu
  br i1 %i.btv, label %.preheader, label %._crit_edge381, !llvm.loop !124

._crit_edge381:                                   ; preds = %._crit_edge, %.preheader320
  %storemerge254.lcssa = phi i32 [ 0, %.preheader320 ], [ %i.btt, %._crit_edge ] ; 2 uses
  %.lcssa354 = phi i32 [ %i.tj, %.preheader320 ], [ %i.btu, %._crit_edge ]
  %i.btw = getelementptr i8, ptr %i.b, i64 1384
  %.val276 = load i32, ptr %i.btw, align 8, !tbaa !82
  %i.btx = sub nsw i32 %i.r, %.val276             ; 3 uses
  %.not255 = icmp eq i32 %storemerge254.lcssa, %.lcssa354
  %.pre431 = load i32, ptr %i.n, align 8, !tbaa !77 ; 2 uses
  br i1 %.not255, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %._crit_edge381
  %i.bty = load i32, ptr %i.ab, align 4, !tbaa !59
  %.not256 = icmp eq i32 %.pre431, %i.bty
  br i1 %.not256, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %._crit_edge381
  %i.btz = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bua = load i64, ptr %i.btz, align 8, !tbaa !125
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.12, i64 noundef %i.bua, i32 noundef %storemerge254.lcssa, i32 noundef %.pre431, i32 noundef %i.btx) #10
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.bub = icmp slt i32 %i.btx, 0
  br i1 %i.bub, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.buc = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bud = load i64, ptr %i.buc, align 8, !tbaa !125
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13, i64 noundef %i.bud, i32 noundef %i.btx) #10
  br label %get_buffer.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.bue = load i32, ptr %i.ak, align 4, !tbaa !84
  %i.buf = icmp eq i32 %i.bue, 3
  br i1 %i.buf, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.bug = getelementptr inbounds nuw i8, ptr %i.b, i64 1476
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !74
  %.not257 = icmp eq i32 %i.buh, 0
  br i1 %.not257, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.bui = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.buj = load ptr, ptr %i.bui, align 8, !tbaa !41
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.buk = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.bul = load ptr, ptr %i.buk, align 16, !tbaa !39
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !41 ; 2 uses
  %i.bun = load ptr, ptr %i.bum, align 8, !tbaa !73
  %.not258 = icmp eq ptr %i.bun, null
  br i1 %.not258, label %.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.sink493 = phi ptr [ %i.buj, %bb.gi ], [ %i.bum, %bb.gj ]
  %i.buo = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %.sink493) #10 ; 2 uses
  %i.bup = icmp slt i32 %i.buo, 0
  br i1 %i.bup, label %get_buffer.exit.thread, label %.thread

.thread:                                          ; preds = %bb.gj, %bb.gk
  %i.buq = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.bur = load ptr, ptr %i.buq, align 16, !tbaa !39
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !41
  %i.but = load ptr, ptr %i.bus, align 8, !tbaa !73
  %.not259 = icmp eq ptr %i.but, null
  br i1 %.not259, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %.thread
  %i.buu = getelementptr inbounds nuw i8, ptr %i.b, i64 1476
  %i.buv = load i32, ptr %i.buu, align 4, !tbaa !74
  %.not260 = icmp eq i32 %i.buv, 0
  br i1 %.not260, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.thread
  store i32 1, ptr %2, align 4, !tbaa !49
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.buw = load i32, ptr %i.ak, align 4, !tbaa !84
  %.not261 = icmp eq i32 %i.buw, 3
  br i1 %.not261, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.bux = load <2 x ptr>, ptr %i.ao, align 16, !tbaa !85
  %i.buy = shufflevector <2 x ptr> %i.bux, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.buy, ptr %i.ao, align 16, !tbaa !85
  br label %get_buffer.exit.thread

bb.gp:                                            ; preds = %bb.gn
  %i.buz = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.bva = load ptr, ptr %i.buz, align 8, !tbaa !41
  tail call void @av_frame_unref(ptr noundef %i.bva) #10
  br label %get_buffer.exit.thread

get_buffer.exit.thread:                           ; preds = %bb.ae, %bb.l, %bb.j, %svq3_decode_mb.exit.thread, %bb.go, %bb.gp, %bb.gk, %bb.u, %bb.w, %bb.q, %bb.n, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d, %bb.gf, %bb.aa
  %.3 = phi i32 [ -1, %svq3_decode_mb.exit.thread ], [ 0, %bb.b ], [ -1094995529, %bb.e ], [ %i.y, %bb.f ], [ -1094995529, %bb.g ], [ %i.kz, %bb.q ], [ -1, %bb.aa ], [ %i.d, %bb.go ], [ -1, %bb.gf ], [ 0, %bb.u ], [ %i.buo, %bb.gk ], [ %i.kr, %bb.n ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.bd, %bb.j ], [ 0, %bb.w ], [ %i.d, %bb.gp ], [ -12, %bb.l ], [ %i.uf, %bb.ae ]
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @svq3_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11400
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 11504
  tail call void @av_freep(ptr noundef nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 11496
  tail call void @av_freep(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  tail call void @av_freep(ptr noundef nonnull %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  tail call void @av_freep(ptr noundef nonnull %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  tail call void @av_freep(ptr noundef nonnull %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1512
  tail call void @av_freep(ptr noundef nonnull %i.i) #10
  ret i32 0

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv
  tail call void @av_frame_free(ptr noundef nonnull %i.j) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare void @ff_h264dsp_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_h264_pred_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_videodsp_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_hpeldsp_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_tpeldsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @svq3_decode_extradata(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 1, !tbaa !69
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %reass.sub = sub i32 %i.j, %2
  %i.k = add i32 %reass.sub, -8
  %i.l = icmp ugt i32 %i.h, %i.k
  br i1 %i.l, label %skip_1stop_8data_bits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 22 uses
  %i.n = shl i32 %i.h, 3                          ; 2 uses
  %or.cond.i = icmp ult i32 %i.n, 2147483135
  %.013.i = select i1 %or.cond.i, i32 %i.n, i32 0 ; 4 uses
  %i.o = add nuw nsw i32 %.013.i, 8               ; 27 uses
  %i.p = load i32, ptr %i.m, align 1, !tbaa !69
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  %i.r = lshr i32 %i.q, 29
  switch i32 %i.r, label %default.unreachable [
    i32 7, label %bb.i
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 0, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.s = lshr i32 %i.q, 17
  %i.t = and i32 %i.s, 4095
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.o, i32 15) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.w = load i32, ptr %i.v, align 1, !tbaa !69
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = and i32 %i.u, 7
end_hunk_2
begin_hunk_3_@svq3_decode_slice_header:bb.a
  store i32 %i.t, ptr %i.f, align 16, !tbaa !82
  %i.u = and i32 %i.r, 159                        ; 2 uses
  %i.v = add nsw i32 %i.u, -3
  %switch = icmp ult i32 %i.v, -2
  %i.w = and i32 %i.q, 1610612736
  %i.x = icmp eq i32 %i.w, 0
  %or.cond = or i1 %i.x, %switch
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %i.r) #10
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.y = lshr i32 %i.q, 29
  %i.z = and i32 %i.y, 3                          ; 3 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = lshr i32 %i.t, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !69
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = and i32 %i.t, 7
  %i.ah = shl i32 %i.af, %i.ag
  %i.ai = sub nuw nsw i32 32, %i.aa
  %i.aj = lshr i32 %i.ah, %i.ai                   ; 3 uses
  %i.ak = shl nuw nsw i32 %i.aj, 3                ; 3 uses
  %i.al = add nsw i32 %i.z, -1                    ; 2 uses
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = add i32 %i.t, 8
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.an)
  store i32 %i.ao, ptr %i.f, align 16, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1400 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  %i.ar = sext i32 %i.am to i64                   ; 3 uses
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef %i.ar) #10
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !131 ; 2 uses
  %.not95 = icmp eq ptr %i.as, null
  br i1 %.not95, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = shl nsw i64 %i.ar, 3
  %.val102 = load i32, ptr %i.f, align 16, !tbaa !82 ; 2 uses
  %i.au = getelementptr i8, ptr %i.b, i64 1364
  %.val103 = load i32, ptr %i.au, align 4, !tbaa !80
  %i.av = sub nsw i32 %.val103, %.val102
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp sgt i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.az = sdiv i32 %.val102, 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.bb, i64 %i.ar, i1 false)
  %.not96 = icmp eq i32 %i.z, 0
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !131 ; 2 uses
  %i.bd = zext nneg i32 %i.aj to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = zext nneg i32 %i.al to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  %i.bh = load i32, ptr %i.bg, align 16, !tbaa !130 ; 2 uses
  %.not97 = icmp eq i32 %i.bh, 0
  br i1 %.not97, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !131
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !69
  %i.bl = xor i32 %i.bk, %i.bh
  store i32 %i.bl, ptr %i.bj, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1376
  %i.bn = load ptr, ptr %i.ap, align 8, !tbaa !131 ; 9 uses
  %.not = icmp eq ptr %i.bn, null
  %.013.i = select i1 %.not, i32 0, i32 %i.ak     ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 16, !tbaa !79
  %i.bo = getelementptr i8, ptr %i.b, i64 1388
  store i32 %.013.i, ptr %i.bo, align 4, !tbaa !80
  %i.bp = add nuw nsw i32 %.013.i, 8              ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1392
  store i32 %i.bp, ptr %i.bq, align 16, !tbaa !81
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 1384 ; 10 uses
  store i32 0, ptr %i.br, align 8, !tbaa !82
  %i.bs = shl nsw i32 %i.am, 3                    ; 2 uses
  %i.bt = load i32, ptr %i.f, align 16, !tbaa !82 ; 3 uses
  %i.bu = sub nsw i32 0, %i.bt                    ; 2 uses
  %i.bv = load i32, ptr %i.h, align 8, !tbaa !81
  %i.bw = sub nsw i32 %i.bv, %i.bt
  %i.bx = icmp slt i32 %i.bs, %i.bu
  %..i.i = tail call i32 @llvm.smin.i32(i32 range(i32 -8, 134217737) %i.bs, i32 %i.bw)
  %.0.i.i = select i1 %i.bx, i32 %i.bu, i32 %..i.i
  %i.by = add nsw i32 %.0.i.i, %i.bt
  store i32 %i.by, ptr %i.f, align 16, !tbaa !82
  %i.bz = load i32, ptr %i.bn, align 1, !tbaa !69
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz) ; 3 uses
  %i.cb = and i32 %i.ca, -1434451968
  %.not.i104 = icmp eq i32 %i.cb, 0
  br i1 %.not.i104, label %.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = lshr i32 %i.ca, 24
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !69
  %i.cg = zext i8 %i.cf to i32
  %..i = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.cg) ; 2 uses
  store i32 %..i, ptr %i.br, align 8, !tbaa !82
  %i.ch = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.cd
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !69
  %i.cj = zext i8 %i.ci to i32
  br label %get_interleaved_ue_golomb.exit

.preheader.i:                                     ; preds = %bb.j, %bb.m
  %.044.i = phi i32 [ %i.di, %bb.m ], [ %i.ca, %bb.j ]
  %.043.i = phi i32 [ %spec.select56.i, %bb.m ], [ 0, %bb.j ]
  %.0.i105 = phi i32 [ %i.db, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.ck = lshr i32 %.044.i, 24
  %i.cl = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !69  ; 3 uses
  %spec.select57.i = tail call i8 @llvm.umin.i8(i8 %i.cn, i8 8)
  %spec.select.i106 = zext nneg i8 %spec.select57.i to i32
  %i.co = add i32 %.043.i, %spec.select.i106      ; 2 uses
  %spec.select56.i = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.co) ; 5 uses
  %.not54.i = icmp eq i8 %i.cn, 9
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.cp = zext i8 %i.cn to i32
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = ashr i32 %i.cq, 1
  %i.cs = shl i32 %.0.i105, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cl
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !69
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or i32 %i.cs, %i.cv
  br label %.loopexit.i

bb.m:                                             ; preds = %.preheader.i
  %i.cx = shl i32 %.0.i105, 4                     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cl
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !69
  %i.da = zext i8 %i.cz to i32
  %i.db = or i32 %i.cx, %i.da                     ; 2 uses
  %i.dc = lshr i32 %spec.select56.i, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 1, !tbaa !69
  %i.dg = tail call i32 @llvm.bswap.i32(i32 %i.df)
  %i.dh = and i32 %spec.select56.i, 7
  %i.di = shl i32 %i.dg, %i.dh
  %i.dj = icmp ult i32 %i.cx, 134217728
  %i.dk = icmp ult i32 %i.co, %i.bp
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.preheader.i, label %.loopexit.i, !llvm.loop !104

.loopexit.i:                                      ; preds = %bb.m, %bb.l
  %.1.i107 = phi i32 [ %i.cw, %bb.l ], [ %i.db, %bb.m ]
  store i32 %spec.select56.i, ptr %i.br, align 8, !tbaa !82
  %i.dm = add i32 %.1.i107, -1
  br label %get_interleaved_ue_golomb.exit

get_interleaved_ue_golomb.exit:                   ; preds = %bb.k, %.loopexit.i
  %i.dn = phi i32 [ %..i, %bb.k ], [ %spec.select56.i, %.loopexit.i ] ; 5 uses
  %.045.i = phi i32 [ %i.cj, %bb.k ], [ %i.dm, %.loopexit.i ] ; 3 uses
  %i.do = icmp ugt i32 %.045.i, 2
  br i1 %i.do, label %bb.n, label %bb.o

bb.n:                                             ; preds = %get_interleaved_ue_golomb.exit
  %i.dp = load ptr, ptr %i.b, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dp, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %.045.i) #10
  br label %.thread

bb.o:                                             ; preds = %get_interleaved_ue_golomb.exit
  %i.dq = zext nneg i32 %.045.i to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @ff_h264_golomb_to_pict_type, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !69
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 1472
  store i32 %i.dt, ptr %i.du, align 16, !tbaa !83
  %i.dv = icmp eq i32 %i.u, 2
  br i1 %i.dv, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.dx = load i32, ptr %i.dw, align 16, !tbaa !56 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 64
  br i1 %i.dy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = add nsw i32 %i.dx, -1                   ; 2 uses
  %.not.i = icmp samesign ult i32 %i.dx, 65537    ; 2 uses
  %i.ea = lshr i32 %i.dz, 16
  %spec.select.i = select i1 %.not.i, i32 %i.dz, i32 %i.ea ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.eb = lshr i32 %spec.select.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.eb
  %i.ec = zext nneg i32 %.110.i to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !69
  %i.ef = zext i8 %i.ee to i32
  %i.eg = select i1 %.not11.i, i32 1, i32 9
  %i.eh = or disjoint i32 %i.eg, %spec.select12.i
  %i.ei = add nuw nsw i32 %i.eh, %i.ef
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ej = phi i32 [ %i.ei, %bb.q ], [ 6, %bb.p ]
  %i.ek = add nuw nsw i32 %i.dn, %i.ej
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.ek) ; 2 uses
  store i32 %i.el, ptr %i.br, align 8, !tbaa !82
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.em = lshr i32 %i.dn, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !69
  %i.eq = icmp slt i32 %i.dn, %i.bp
  %i.er = zext i1 %i.eq to i32
  %spec.select.i108 = add nuw nsw i32 %i.dn, %i.er ; 2 uses
  %i.es = zext i8 %i.ep to i32
  %i.et = and i32 %i.dn, 7
  store i32 %spec.select.i108, ptr %i.br, align 8, !tbaa !82
  %i.eu = lshr exact i32 128, %i.et
  %i.ev = and i32 %i.eu, %i.es
  %.not98 = icmp eq i32 %i.ev, 0
  br i1 %.not98, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = load ptr, ptr %i.b, align 16, !tbaa !48
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.ew, ptr noundef nonnull @.str.17) #10
  br label %.thread

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ex = phi i32 [ %spec.select.i108, %bb.s ], [ %i.el, %bb.r ] ; 3 uses
  %i.ey = lshr i32 %i.ex, 3
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 1, !tbaa !69
  %i.fc = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fd = and i32 %i.ex, 7
  %i.fe = shl i32 %i.fc, %i.fd
  %i.ff = lshr i32 %i.fe, 24
  %i.fg = add nuw nsw i32 %i.ex, 8
  %i.fh = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.fg) ; 4 uses
  store i32 %i.fh, ptr %i.br, align 8, !tbaa !82
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 1440
  store i32 %i.ff, ptr %i.fi, align 16, !tbaa !98
  %i.fj = lshr i32 %i.fh, 3
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 1, !tbaa !69
  %i.fn = tail call i32 @llvm.bswap.i32(i32 %i.fm)
  %i.fo = and i32 %i.fh, 7
  %i.fp = shl i32 %i.fn, %i.fo
  %i.fq = lshr i32 %i.fp, 27
  %i.fr = add nuw nsw i32 %i.fh, 5                ; 2 uses
  %i.fs = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.fr) ; 4 uses
  store i32 %i.fs, ptr %i.br, align 8, !tbaa !82
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 1444
  store i32 %i.fq, ptr %i.ft, align 4, !tbaa !97
  %i.fu = lshr i32 %i.fs, 3
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !69
  %i.fy = icmp samesign ult i32 %i.fr, %i.bp
  %i.fz = zext i1 %i.fy to i32
  %spec.select.i109 = add nuw nsw i32 %i.fs, %i.fz
  %i.ga = zext i8 %i.fx to i32
  %i.gb = and i32 %i.fs, 7
  %i.gc = shl nuw nsw i32 %i.ga, %i.gb
  %i.gd = lshr i32 %i.gc, 7
  %i.ge = and i32 %i.gd, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 1428
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !96
  %i.gg = add nuw nsw i32 %spec.select.i109, 1    ; 2 uses
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.gg)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 1420
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !50
  %.not99 = icmp eq i32 %i.gj, 0
  %i.gk = add nuw nsw i32 %i.gh, 1
  %minmaxop = select i1 %.not99, i32 %i.gg, i32 %i.gk
  %i.gl = tail call i32 @llvm.umin.i32(i32 %minmaxop, i32 %i.bp)
  %i.gm = add nuw nsw i32 %i.gl, 1
  %i.gn = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.gm)
  %i.go = add nuw nsw i32 %i.gn, 2                ; 2 uses
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.go) ; 2 uses
  store i32 %i.gp, ptr %i.br, align 8, !tbaa !82
  %.not7.i = icmp samesign ult i32 %i.go, %i.ak
  br i1 %.not7.i, label %.preheader.i112, label %.thread

.preheader.i112:                                  ; preds = %bb.u, %bb.v
  %i.gq = phi i32 [ %i.hc, %bb.v ], [ %i.gp, %bb.u ] ; 4 uses
  %i.gr = lshr i32 %i.gq, 3
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !69
  %i.gv = icmp slt i32 %i.gq, %i.bp
  %i.gw = zext i1 %i.gv to i32
  %spec.select.i.i = add nuw nsw i32 %i.gq, %i.gw ; 2 uses
  %i.gx = zext i8 %i.gu to i32
  %i.gy = and i32 %i.gq, 7
  store i32 %spec.select.i.i, ptr %i.br, align 8, !tbaa !82
  %i.gz = lshr exact i32 128, %i.gy
  %i.ha = and i32 %i.gz, %i.gx
  %.not.i113 = icmp eq i32 %i.ha, 0
  br i1 %.not.i113, label %skip_1stop_8data_bits.exit, label %bb.v

bb.v:                                             ; preds = %.preheader.i112
  %i.hb = add nuw nsw i32 %spec.select.i.i, 8     ; 2 uses
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.hb) ; 2 uses
  store i32 %i.hc, ptr %i.br, align 8, !tbaa !82
  %.not8.i = icmp ult i32 %i.hb, %i.ak
  br i1 %.not8.i, label %.preheader.i112, label %.thread, !llvm.loop !128

skip_1stop_8data_bits.exit:                       ; preds = %.preheader.i112
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 1480 ; 4 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !77
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %skip_1stop_8data_bits.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 1568 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 16, !tbaa !62
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 1512 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !66
  %i.hk = sext i32 %i.d to i64
  %i.hl = getelementptr [4 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !49
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  store i32 -1, ptr %i.hq, align 1
  %i.hr = load ptr, ptr %i.hg, align 16, !tbaa !62
  %i.hs = load ptr, ptr %i.hi, align 8, !tbaa !66
  %i.ht = load i32, ptr %i.hd, align 8, !tbaa !77 ; 2 uses
  %i.hu = sub nsw i32 %i.d, %i.ht
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !49
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hy
  %i.ia = sext i32 %i.ht to i64
  %i.ib = shl nsw i64 %i.ia, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hz, i8 -1, i64 %i.ib, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %skip_1stop_8data_bits.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 1484
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !76
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 1568 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 16, !tbaa !62
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 1512 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !66
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 1500 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !55
  %i.il = sub nsw i32 %i.d, %i.ik
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !49
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 1492
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !59
  %i.it = load i32, ptr %i.hd, align 8, !tbaa !77
  %i.iu = sub nsw i32 %i.is, %i.it
  %i.iv = sext i32 %i.iu to i64
  %i.iw = shl nsw i64 %i.iv, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.iq, i8 -1, i64 %i.iw, i1 false)
  %i.ix = load i32, ptr %i.hd, align 8, !tbaa !77
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.iz = load ptr, ptr %i.if, align 16, !tbaa !62
  %i.ja = load ptr, ptr %i.ih, align 8, !tbaa !66
  %i.jb = load i32, ptr %i.ij, align 4, !tbaa !55
  %i.jc = xor i32 %i.jb, -1
  %i.jd = add i32 %i.d, %i.jc
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !49
  %i.jh = add i32 %i.jg, 3
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ji
  store i8 -1, ptr %i.jj, align 1, !tbaa !69
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.u, %bb.c, %bb.e, %bb.x, %bb.z, %bb.y, %bb.t, %bb.n, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.n ], [ 0, %bb.x ], [ -1094995529, %bb.e ], [ -1163346256, %bb.t ], [ 0, %bb.y ], [ 0, %bb.z ], [ -12, %bb.c ], [ -1094995529, %bb.u ], [ -1094995529, %bb.v ]
  ret i32 %.1
}

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @get_buffer(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1468
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %.not = icmp ne i32 %i.e, 3
  %i.f = zext i1 %.not to i32
  %i.g = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %i.c, i32 noundef %i.f) #10 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1584 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !92
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @av_calloc(i64 noundef %i.n, i64 noundef 17) #10 ; 2 uses
  store ptr %i.o, ptr %i.i, align 16, !tbaa !92
  %.not12 = icmp eq ptr %i.o, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ %i.g, %bb.a ], [ 0, %bb.d ], [ -12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @alloc_dummy_frame(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18) #10
  %i.a = load ptr, ptr %1, align 8, !tbaa !41
  tail call void @av_frame_unref(ptr noundef %i.a) #10
  %i.b = tail call fastcc i32 @get_buffer(ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = sext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = load i32, ptr %i.f, align 4, !tbaa !133
  %i.p = sdiv i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49
  %i.s = mul nsw i32 %i.p, %i.r
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 -128, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = load i32, ptr %i.f, align 4, !tbaa !133
  %i.y = sdiv i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49
  %i.ab = mul nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 -128, i64 %i.ac, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.b
}

declare signext i8 @av_get_picture_type_char(i32 noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_draw_horiz_band(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @svq3_mc_dir_part(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 4, 17) %3, i32 noundef range(i32 4, 17) %4, i32 noundef %5, i32 noundef range(i32 -98304, 1431590230) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %9, 0
  %.in.v = select i1 %i.a, i64 1344, i64 1336
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.b = load ptr, ptr %.in, align 8, !tbaa !85   ; 6 uses
  %i.c = lshr i32 %3, 3                           ; 2 uses
  %i.d = sub nuw nsw i32 2, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 7 uses
  %i.l = add nsw i32 %5, %1                       ; 5 uses
  %i.m = add nsw i32 %6, %2                       ; 5 uses
  %i.n = icmp slt i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !134 ; 3 uses
  br i1 %i.n, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = xor i32 %3, -1
  %i.p = add i32 %.pre, %i.o
  %i.q = icmp sge i32 %i.l, %i.p
  %i.r = icmp slt i32 %i.m, 0
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.t = load i32, ptr %i.s, align 4, !tbaa !135  ; 2 uses
  %i.u = xor i32 %4, -1
  %i.v = add i32 %i.t, %i.u
  %.not = icmp slt i32 %i.m, %i.v
  br i1 %.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.b
  %reass.sub = sub i32 %.pre, %3
  %i.w = add i32 %reass.sub, 15
  %i.x = icmp slt i32 %i.l, -16
  %..i134 = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.w)
  %.0.i135 = select i1 %i.x, i32 -16, i32 %..i134
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.z = load i32, ptr %i.y, align 4, !tbaa !135  ; 2 uses
  %reass.sub139 = sub i32 %i.z, %4
  %i.aa = add i32 %reass.sub139, 15
  %i.ab = icmp slt i32 %i.m, -16
  %..i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.aa)
  %.0.i = select i1 %i.ab, i32 -16, i32 %..i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.ac = phi i32 [ %i.z, %._crit_edge ], [ %i.t, %bb.c ]
  %.0121 = phi i32 [ %.0.i, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %.0120 = phi i32 [ %.0.i135, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %.not124 = phi i1 [ false, %._crit_edge ], [ true, %bb.c ] ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.ae = sext i32 %1 to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = mul nsw i32 %i.i, %2
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.al = sext i32 %.0120 to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = mul nsw i32 %.0121, %i.i
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao ; 2 uses
  br i1 %.not124, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@svq3_mc_dir_part:bb.a
  %i.co = sext i32 %7 to i64                      ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co ; 4 uses
  %.v131 = select i1 %.not132, i64 752, i64 880
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.v131
  %i.cr = zext nneg i32 %i.bx to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.co ; 4 uses
  %i.cu = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !73
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.bz
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cc ; 4 uses
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !73
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cd
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cf ; 3 uses
  br i1 %.not124, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.j
  br i1 %.not125, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  %i.df = load ptr, ptr %i.cp, align 8, !tbaa !119
  tail call void %i.df(ptr noundef %i.cz, ptr noundef %i.de, i32 noundef %i.k, i32 noundef %i.bv, i32 noundef %i.bw) #10
  %i.dg = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !73
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.bz
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.cc
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !73
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.cd
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.cf
  %i.dr = load ptr, ptr %i.cp, align 8, !tbaa !119
  tail call void %i.dr(ptr noundef %i.dl, ptr noundef %i.dq, i32 noundef %i.k, i32 noundef %i.bv, i32 noundef %i.bw) #10
  br label %.loopexit

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.ds = load ptr, ptr %i.ct, align 8, !tbaa !119
  tail call void %i.ds(ptr noundef %i.cz, ptr noundef %i.de, i64 noundef %i.ci, i32 noundef %i.bw) #10
  %i.dt = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !73
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.bz
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.cc
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !73
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.cd
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.cf
  %i.ee = load ptr, ptr %i.ct, align 8, !tbaa !119
  tail call void %i.ee(ptr noundef %i.dy, ptr noundef %i.ed, i64 noundef %i.ci, i32 noundef %i.bw) #10
  br label %.loopexit

.split:                                           ; preds = %bb.j
  %i.ef = load ptr, ptr %i.cg, align 16, !tbaa !136
  %i.eg = load ptr, ptr %i.ch, align 16, !tbaa !92
  %i.eh = load i32, ptr %i.cl, align 8, !tbaa !134
  %i.ei = ashr i32 %i.eh, 1
  %i.ej = load i32, ptr %i.cm, align 4, !tbaa !135
  %i.ek = ashr i32 %i.ej, 1
  tail call void %i.ef(ptr noundef %i.eg, ptr noundef %i.de, i64 noundef %i.ci, i64 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.bq, i32 noundef %i.bu, i32 noundef %i.ei, i32 noundef %i.ek) #10
  %i.el = load ptr, ptr %i.ch, align 16, !tbaa !92 ; 2 uses
  br i1 %.not125, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %i.em = load ptr, ptr %i.cp, align 8, !tbaa !119
  tail call void %i.em(ptr noundef %i.cz, ptr noundef %i.el, i32 noundef %i.k, i32 noundef %i.bv, i32 noundef %i.bw) #10
  %i.en = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !73
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.bz
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.cc
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !73
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.cd
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.cf
  %i.ey = load ptr, ptr %i.cg, align 16, !tbaa !136
  %i.ez = load ptr, ptr %i.ch, align 16, !tbaa !92
  %i.fa = load i32, ptr %i.cl, align 8, !tbaa !134
  %i.fb = ashr i32 %i.fa, 1
  %i.fc = load i32, ptr %i.cm, align 4, !tbaa !135
  %i.fd = ashr i32 %i.fc, 1
  tail call void %i.ey(ptr noundef %i.ez, ptr noundef %i.ex, i64 noundef %i.ci, i64 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.bq, i32 noundef %i.bu, i32 noundef %i.fb, i32 noundef %i.fd) #10
  %i.fe = load ptr, ptr %i.ch, align 16, !tbaa !92
  %i.ff = load ptr, ptr %i.cp, align 8, !tbaa !119
  tail call void %i.ff(ptr noundef %i.es, ptr noundef %i.fe, i32 noundef %i.k, i32 noundef %i.bv, i32 noundef %i.bw) #10
  br label %.loopexit

.split.split.us.preheader:                        ; preds = %.split
  %i.fg = load ptr, ptr %i.ct, align 8, !tbaa !119
  tail call void %i.fg(ptr noundef %i.cz, ptr noundef %i.el, i64 noundef %i.ci, i32 noundef %i.bw) #10
  %i.fh = load ptr, ptr %i.e, align 16, !tbaa !29
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !73
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.bz
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.cc
  %i.fn = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !73
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.cd
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.cf
  %i.fs = load ptr, ptr %i.cg, align 16, !tbaa !136
  %i.ft = load ptr, ptr %i.ch, align 16, !tbaa !92
  %i.fu = load i32, ptr %i.cl, align 8, !tbaa !134
  %i.fv = ashr i32 %i.fu, 1
  %i.fw = load i32, ptr %i.cm, align 4, !tbaa !135
  %i.fx = ashr i32 %i.fw, 1
  tail call void %i.fs(ptr noundef %i.ft, ptr noundef %i.fr, i64 noundef %i.ci, i64 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.bq, i32 noundef %i.bu, i32 noundef %i.fv, i32 noundef %i.fx) #10
  %i.fy = load ptr, ptr %i.ch, align 16, !tbaa !92
  %i.fz = load ptr, ptr %i.ct, align 8, !tbaa !119
  tail call void %i.fz(ptr noundef %i.fm, ptr noundef %i.fy, i64 noundef %i.ci, i32 noundef %i.bw) #10
  br label %.loopexit

.loopexit:                                        ; preds = %.split.split.preheader, %.split.split.us.preheader, %.split.us.split.preheader, %.split.us.split.us.preheader, %bb.i
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @svq3_mc_dir(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 7) %1, i32 noundef range(i32 1, 5) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %1, 5
  %i.b = icmp eq i32 %i.a, 4                      ; 2 uses
  %i.c = and i32 %1, 1
  %i.d = lshr exact i32 16, %i.c
  %i.e = select i1 %i.b, i32 4, i32 %i.d          ; 7 uses
  %i.f = trunc nuw nsw i32 %1 to i8               ; 2 uses
  %.lhs.trunc = add nuw nsw i8 %i.f, 1
  %i.g = udiv i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.g to i32
  %i.h = lshr i32 16, %.zext                      ; 5 uses
  %i.i = icmp eq i32 %2, 4                        ; 5 uses
  %.neg240 = select i1 %i.i, i32 96, i32 0        ; 2 uses
  %i.j = select i1 %i.i, i32 -96, i32 0           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.l = load i32, ptr %i.k, align 8, !tbaa !134
  %i.m = sub nsw i32 %i.l, %i.e
  %i.n = mul nsw i32 %i.m, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.p = load i32, ptr %i.o, align 4, !tbaa !135
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = mul nsw i32 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1484
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1508 ; 2 uses
  %.neg230 = add i32 %i.n, %.neg240
  %.neg232 = add i32 %i.r, %.neg240
  %i.v = lshr exact i32 %i.e, 2                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.x = zext nneg i32 %3 to i64                  ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr %i.z, i64 %i.x ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ac = icmp eq i32 %3, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %.off = add nsw i32 %1, -2
  %i.ai = icmp ult i32 %.off, 3
  %i.aj = icmp eq i32 %i.e, 8                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.x
  %i.al = icmp samesign ugt i32 %1, 4
  %or.cond9 = select i1 %i.b, i1 true, i1 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %.lhs.trunc.off = add nsw i8 %i.f, -2
  %i.an = icmp ult i8 %.lhs.trunc.off, 3          ; 3 uses
  %i.ao = icmp samesign ugt i32 %1, 4             ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.ak
  %.0142239 = phi i32 [ 0, %bb.a ], [ %i.op, %bb.ak ] ; 6 uses
  %i.ap = lshr i32 %.0142239, 2
  %i.aq = lshr i32 %.0142239, 1
  %i.ar = and i32 %i.aq, 2
  %i.as = and i32 %.0142239, 8
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = icmp samesign ult i32 %.0142239, 8
  %or.cond3 = select i1 %i.ai, i1 %i.au, i1 false
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %fill_rectangle.exit
  %.0146238 = phi i32 [ 0, %.preheader ], [ %i.on, %fill_rectangle.exit ] ; 6 uses
  %i.av = load i32, ptr %i.s, align 8, !tbaa !77  ; 2 uses
  %i.aw = shl nsw i32 %i.av, 2
  %i.ax = lshr exact i32 %.0146238, 2             ; 2 uses
  %i.ay = add nuw nsw i32 %i.aw, %i.ax
  %i.az = load i32, ptr %i.t, align 4, !tbaa !76  ; 2 uses
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = add nuw nsw i32 %i.ba, %i.ap
  %i.bc = load i32, ptr %i.u, align 4, !tbaa !57
  %i.bd = mul nsw i32 %i.bb, %i.bc
  %i.be = add nsw i32 %i.ay, %i.bd                ; 2 uses
  %i.bf = shl nsw i32 %i.av, 4
  %i.bg = add nuw nsw i32 %i.bf, %.0146238        ; 4 uses
  %i.bh = shl nsw i32 %i.az, 4
  %i.bi = add nuw nsw i32 %i.bh, %.0142239        ; 4 uses
  %i.bj = and i32 %i.ax, 1
  %i.bk = lshr exact i32 %.0146238, 1
  %i.bl = and i32 %i.bk, 4
  %i.bm = or disjoint i32 %i.at, %i.bj
  %i.bn = or disjoint i32 %i.bm, %i.bl            ; 4 uses
  br i1 %i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !69
  %i.br = zext i8 %i.bq to i32                    ; 3 uses
  %i.bs = add nsw i32 %i.br, -8                   ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.y, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !69  ; 2 uses
  %i.bw = add nsw i32 %i.br, -1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.y, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !69  ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bx ; 7 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bt ; 6 uses
  %i.cc = add nsw i32 %i.bs, %i.v
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.y, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !69  ; 2 uses
  %.not.i = icmp eq i8 %i.cf, -2
  br i1 %.not.i, label %bb.d, label %svq3_fetch_diagonal_mv.exit

bb.d:                                             ; preds = %bb.c
  %i.cg = add nsw i32 %i.br, -9
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.y, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !69
  br label %svq3_fetch_diagonal_mv.exit

svq3_fetch_diagonal_mv.exit:                      ; preds = %bb.c, %bb.d
  %.pn = phi i64 [ %i.ch, %bb.d ], [ %i.cd, %bb.c ]
  %.0.in.i = phi i8 [ %i.cj, %bb.d ], [ %i.cf, %bb.c ] ; 2 uses
  %.0208 = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.pn ; 6 uses
  %i.ck = icmp eq i8 %.0.in.i, 1
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i8 %i.bv, 1                     ; 2 uses
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i8 %i.bz, 1                     ; 2 uses
  %i.cp = zext i1 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, %i.cn
  %i.cr = add nuw nsw i32 %i.cq, %i.cl            ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, 1
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %svq3_fetch_diagonal_mv.exit
  %i.ct = load i16, ptr %i.ca, align 2, !tbaa !121
  %i.cu = sext i16 %i.ct to i32                   ; 2 uses
  %i.cv = load i16, ptr %i.cb, align 2, !tbaa !121
  %i.cw = sext i16 %i.cv to i32                   ; 2 uses
  %i.cx = load i16, ptr %.0208, align 2, !tbaa !121
  %i.cy = sext i16 %i.cx to i32
  %..i158 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.cu, i32 range(i32 -32768, 32768) %i.cw)
  %.20.i = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.cu, i32 range(i32 -32768, 32768) %i.cw)
  %i.cz = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.cy, i32 %..i158)
  %i.da = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.cz, i32 %.20.i)
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !121
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !121
  %i.dg = sext i16 %i.df to i32                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0208, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !121
  %i.dj = sext i16 %i.di to i32
  %..i159 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.dd, i32 range(i32 -32768, 32768) %i.dg)
  %.20.i160 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.dd, i32 range(i32 -32768, 32768) %i.dg)
  %i.dk = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.dj, i32 %..i159)
  %i.dl = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.dk, i32 %.20.i160)
  br label %svq3_pred_motion.exit

bb.f:                                             ; preds = %svq3_fetch_diagonal_mv.exit
  %i.dm = icmp eq i32 %i.cr, 1
  br i1 %i.dm, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dn = load i16, ptr %i.ca, align 2, !tbaa !121
  %i.do = sext i16 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !121
  %i.dr = sext i16 %i.dq to i32
  br label %svq3_pred_motion.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ds = load i16, ptr %i.cb, align 2, !tbaa !121
  %i.dt = sext i16 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !121
  %i.dw = sext i16 %i.dv to i32
  br label %svq3_pred_motion.exit

bb.k:                                             ; preds = %bb.i
  %i.dx = load i16, ptr %.0208, align 2, !tbaa !121
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %.0208, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !121
  %i.eb = sext i16 %i.ea to i32
  br label %svq3_pred_motion.exit

bb.l:                                             ; preds = %bb.f
  %i.ec = icmp eq i8 %i.bv, -2
  %i.ed = icmp eq i8 %.0.in.i, -2
  %or.cond.i = and i1 %i.ec, %i.ed
  %i.ee = icmp ne i8 %i.bz, -2
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ee, i1 false
  %i.ef = load i16, ptr %i.ca, align 2, !tbaa !121
  %i.eg = sext i16 %i.ef to i32                   ; 3 uses
  br i1 %or.cond3.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !121
  %i.ej = sext i16 %i.ei to i32
  br label %svq3_pred_motion.exit

bb.n:                                             ; preds = %bb.l
  %i.ek = load i16, ptr %i.cb, align 2, !tbaa !121
  %i.el = sext i16 %i.ek to i32                   ; 2 uses
  %i.em = load i16, ptr %.0208, align 2, !tbaa !121
  %i.en = sext i16 %i.em to i32
  %..i161 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.eg, i32 range(i32 -32768, 32768) %i.el)
  %.20.i162 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.eg, i32 range(i32 -32768, 32768) %i.el)
  %i.eo = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.en, i32 %..i161)
  %i.ep = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.eo, i32 %.20.i162)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !121
  %i.es = sext i16 %i.er to i32                   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !121
  %i.ev = sext i16 %i.eu to i32                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0208, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !121
  %i.ey = sext i16 %i.ex to i32
  %..i163 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.es, i32 range(i32 -32768, 32768) %i.ev)
  %.20.i164 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.es, i32 range(i32 -32768, 32768) %i.ev)
  %i.ez = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.ey, i32 %..i163)
  %i.fa = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.ez, i32 %.20.i164)
  br label %svq3_pred_motion.exit

bb.o:                                             ; preds = %bb.b
  %i.fb = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !64
  %i.fe = sext i32 %i.be to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !121
  %i.fh = sext i16 %i.fg to i32
  %i.fi = shl nsw i32 %i.fh, 1                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !121
  %i.fl = sext i16 %i.fk to i32
  %i.fm = shl nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = load i32, ptr %i.ad, align 16, !tbaa !101 ; 3 uses
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fo = mul nsw i32 %i.fn, %i.fi
  %i.fp = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.fq = sdiv i32 %i.fo, %i.fp
  %i.fr = add nsw i32 %i.fq, 1
  %i.fs = ashr i32 %i.fr, 1
  %i.ft = mul nsw i32 %i.fn, %i.fm
  %i.fu = sdiv i32 %i.ft, %i.fp
  %i.fv = add nsw i32 %i.fu, 1
  %i.fw = ashr i32 %i.fv, 1
  br label %svq3_pred_motion.exit

bb.q:                                             ; preds = %bb.o
  %i.fx = load i32, ptr %i.ae, align 4, !tbaa !102 ; 3 uses
  %i.fy = sub nsw i32 %i.fn, %i.fx                ; 2 uses
  %i.fz = mul nsw i32 %i.fy, %i.fi
  %i.ga = sdiv i32 %i.fz, %i.fx
  %i.gb = add nsw i32 %i.ga, 1
  %i.gc = ashr i32 %i.gb, 1
  %i.gd = mul nsw i32 %i.fy, %i.fm
  %i.ge = sdiv i32 %i.gd, %i.fx
  %i.gf = add nsw i32 %i.ge, 1
  %i.gg = ashr i32 %i.gf, 1
  br label %svq3_pred_motion.exit

svq3_pred_motion.exit:                            ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.e, %bb.p, %bb.q
  %.0205 = phi i32 [ %i.fs, %bb.p ], [ %i.gc, %bb.q ], [ %i.da, %bb.e ], [ %i.do, %bb.h ], [ %i.dt, %bb.j ], [ %i.dy, %bb.k ], [ %i.eg, %bb.m ], [ %i.ep, %bb.n ] ; 2 uses
end_hunk_4
begin_hunk_5_@svq3_mc_dir:bb.a
  %..i168 = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.jb)
  store i32 %..i168, ptr %i.ag, align 8, !tbaa !82
  %i.jc = getelementptr inbounds nuw i8, ptr @ff_interleaved_se_golomb_vlc_code, i64 %i.ix
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !69
  %i.je = sext i8 %i.jd to i32
  br label %get_interleaved_se_golomb.exit177

bb.v:                                             ; preds = %get_interleaved_se_golomb.exit
  %i.jf = add i32 %i.in, 8
  %i.jg = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.jf) ; 3 uses
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 1, !tbaa !69
  %i.jl = tail call i32 @llvm.bswap.i32(i32 %i.jk)
  %i.jm = and i32 %i.jg, 7
  %i.jn = shl i32 %i.jl, %i.jm
  %i.jo = lshr i32 %i.jn, 8
  %i.jp = or i32 %i.jo, %i.iu                     ; 2 uses
  %i.jq = and i32 %i.jp, 11184810
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %get_interleaved_se_golomb.exit177.thread, label %.lr.ph.preheader.i170

.lr.ph.preheader.i170:                            ; preds = %bb.v
  %i.js = or i32 %i.jp, 1
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171, %.lr.ph.preheader.i170
  %.055.i172 = phi i32 [ %i.ju, %.lr.ph.i171 ], [ 31, %.lr.ph.preheader.i170 ] ; 2 uses
  %.04654.i173 = phi i32 [ %i.jx, %.lr.ph.i171 ], [ %i.js, %.lr.ph.preheader.i170 ] ; 3 uses
  %i.jt = shl i32 %.04654.i173, %.055.i172
  %i.ju = add nsw i32 %.055.i172, -1              ; 4 uses
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = tail call i32 @llvm.fshl.i32(i32 %.04654.i173, i32 %.04654.i173, i32 2)
  %i.jx = sub i32 %i.jw, %i.jv                    ; 4 uses
  %i.jy = icmp sgt i32 %i.jx, -1
  br i1 %i.jy, label %.lr.ph.i171, label %._crit_edge.i174, !llvm.loop !113

._crit_edge.i174:                                 ; preds = %.lr.ph.i171
  %reass.sub.i175 = add i32 %i.jg, 55
  %i.jz = shl i32 %i.ju, 1
  %i.ka = sub i32 %reass.sub.i175, %i.jz
  %.52.i176 = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.ka)
  store i32 %.52.i176, ptr %i.ag, align 8, !tbaa !82
  %i.kb = lshr i32 -1, %i.ju
  %i.kc = and i32 %i.jx, %i.kb
  %i.kd = add i32 %i.kc, -1
  %i.ke = and i32 %i.jx, 1
  %i.kf = sub nsw i32 0, %i.ke
  %i.kg = xor i32 %i.kd, %i.kf
  %i.kh = add i32 %i.kg, 1
  %i.ki = ashr i32 %i.kh, 1
  br label %get_interleaved_se_golomb.exit177

get_interleaved_se_golomb.exit177:                ; preds = %bb.u, %._crit_edge.i174
  %.1.i169 = phi i32 [ %i.je, %bb.u ], [ %i.ki, %._crit_edge.i174 ] ; 4 uses
  %i.kj = add nsw i32 %.1.i169, 32768
  %.not150 = icmp ult i32 %i.kj, 65536
  %i.kk = add nsw i32 %.1.i, 32768
  %.not151 = icmp ult i32 %i.kk, 65536
  %or.cond154 = select i1 %.not150, i1 %.not151, i1 false
  br i1 %or.cond154, label %bb.w, label %get_interleaved_se_golomb.exit177.thread

get_interleaved_se_golomb.exit177.thread:         ; preds = %bb.v, %get_interleaved_se_golomb.exit177
  %i.kl = load ptr, ptr %0, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kl, i32 noundef 16, ptr noundef nonnull @.str.28) #10
  br label %.loopexit

bb.w:                                             ; preds = %get_interleaved_se_golomb.exit177
  switch i32 %2, label %bb.y [
    i32 3, label %bb.x
    i32 2, label %.thread
  ]

bb.x:                                             ; preds = %bb.w
  %i.km = add nsw i32 %.0.i156, 1
  %i.kn = ashr i32 %i.km, 1
  %i.ko = add nsw i32 %.1.i169, %i.kn             ; 3 uses
  %i.kp = add nsw i32 %.0.i, 1
  %i.kq = ashr i32 %i.kp, 1
  %i.kr = add nsw i32 %.1.i, %i.kq                ; 3 uses
  %i.ks = add nsw i32 %i.ko, 196608
  %i.kt = udiv i32 %i.ks, 3
  %i.ku = add nsw i32 %i.kt, -65536               ; 2 uses
  %i.kv = add nsw i32 %i.kr, 196608
  %i.kw = udiv i32 %i.kv, 3
  %i.kx = add nsw i32 %i.kw, -65536               ; 2 uses
  %.neg = mul i32 %i.ku, -3
  %.neg152 = mul i32 %i.kx, -3
  %i.ky = add i32 %.neg152, %i.kr
  %i.kz = shl nsw i32 %i.ky, 2
  %i.la = add i32 %i.ko, %i.kz
  %i.lb = add i32 %i.la, %.neg
  tail call fastcc void @svq3_mc_dir_part(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.ku, i32 noundef %i.kx, i32 noundef %i.lb, i32 noundef 1, i32 noundef %3, i32 noundef %4)
  %i.lc = shl nsw i32 %i.ko, 1
  %i.ld = shl nsw i32 %i.kr, 1
  br label %.thread217

bb.y:                                             ; preds = %bb.w
  %i.le = add nsw i32 %.0.i156, 393219
  %i.lf = udiv i32 %i.le, 6
  %i.lg = add nsw i32 %i.lf, -65536
  %i.lh = add nsw i32 %i.lg, %.1.i169             ; 2 uses
  %i.li = add nsw i32 %.0.i, 393219
  %i.lj = udiv i32 %i.li, 6
  %i.lk = add nsw i32 %i.lj, -65536
  %i.ll = add nsw i32 %i.lk, %.1.i                ; 2 uses
  tail call fastcc void @svq3_mc_dir_part(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.lh, i32 noundef %i.ll, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  %i.lm = mul nsw i32 %i.lh, 6
  %i.ln = mul nsw i32 %i.ll, 6
  br label %.thread217

.thread:                                          ; preds = %bb.w, %svq3_pred_motion.exit
  %.0144216 = phi i32 [ 0, %svq3_pred_motion.exit ], [ %.1.i, %bb.w ]
  %.0145215 = phi i32 [ 0, %svq3_pred_motion.exit ], [ %.1.i169, %bb.w ]
  %i.lo = add nsw i32 %.0.i156, 196609
  %i.lp = udiv i32 %i.lo, 3
  %i.lq = add nsw i32 %.0145215, %i.lp            ; 2 uses
  %i.lr = add nsw i32 %i.lq, -65536               ; 2 uses
  %i.ls = add nsw i32 %.0.i, 196609
  %i.lt = udiv i32 %i.ls, 3
  %i.lu = add nsw i32 %.0144216, %i.lt            ; 3 uses
  %i.lv = add nsw i32 %i.lu, -65536               ; 2 uses
  %i.lw = and i32 %i.lq, 1
  %i.lx = shl i32 %i.lu, 1
  %i.ly = and i32 %i.lx, 2
  %i.lz = or disjoint i32 %i.lw, %i.ly
  %i.ma = ashr i32 %i.lr, 1
  %i.mb = ashr i32 %i.lv, 1
  tail call fastcc void @svq3_mc_dir_part(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.ma, i32 noundef %i.mb, i32 noundef %i.lz, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  %i.mc = mul nsw i32 %i.lr, 3                    ; 2 uses
  %i.md = mul nsw i32 %i.lv, 3
  br i1 %i.i, label %.thread..critedge_crit_edge, label %.thread217

.thread..critedge_crit_edge:                      ; preds = %.thread
  %.pre = and i32 %i.mc, 65535
  %.pre246 = mul i32 %i.lu, 196608
  %.pre248 = or disjoint i32 %.pre, %.pre246
  br label %.critedge

.thread217:                                       ; preds = %bb.x, %bb.y, %.thread
  %.1222 = phi i32 [ %i.md, %.thread ], [ %i.ld, %bb.x ], [ %i.ln, %bb.y ]
  %.1206220 = phi i32 [ %i.mc, %.thread ], [ %i.lc, %bb.x ], [ %i.lm, %bb.y ]
  %i.me = and i32 %.1206220, 65535
  %i.mf = shl i32 %.1222, 16
  %i.mg = or disjoint i32 %i.me, %i.mf            ; 6 uses
  br i1 %or.cond3, label %bb.z, label %.thread217._crit_edge

bb.z:                                             ; preds = %.thread217
  %i.mh = zext nneg i32 %i.bn to i64
  %i.mi = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !69
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  store i32 %i.mg, ptr %i.mm, align 4, !tbaa !69
  %i.mn = icmp samesign ult i32 %.0146238, 8
  %or.cond5 = select i1 %i.aj, i1 %i.mn, i1 false
  br i1 %or.cond5, label %bb.aa, label %.thread217._crit_edge

bb.aa:                                            ; preds = %bb.z
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 36
  store i32 %i.mg, ptr %i.mo, align 4, !tbaa !69
  br label %.thread217._crit_edge

.thread217._crit_edge:                            ; preds = %.thread217, %bb.z, %bb.aa
  %i.mp = icmp samesign ult i32 %.0146238, 8
  %or.cond7 = select i1 %i.aj, i1 %i.mp, i1 false
  br i1 %or.cond7, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread217._crit_edge
  %i.mq = zext nneg i32 %i.bn to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !69
  %i.mt = zext i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1604
  store i32 %i.mg, ptr %i.mv, align 4, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread217._crit_edge
  br i1 %or.cond9, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.mw = zext nneg i32 %i.bn to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !69
  %i.mz = zext i8 %i.my to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.mz
  store i32 %i.mg, ptr %i.na, align 4, !tbaa !69
  br label %.critedge

.critedge:                                        ; preds = %.thread..critedge_crit_edge, %bb.ad, %bb.ac
  %.pre-phi249 = phi i32 [ %.pre248, %.thread..critedge_crit_edge ], [ %i.mg, %bb.ad ], [ %i.mg, %bb.ac ] ; 13 uses
  %i.nb = load ptr, ptr %i.am, align 16, !tbaa !29
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.x
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !64
  %i.nf = sext i32 %i.be to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.nf ; 13 uses
  %i.nh = load i32, ptr %i.u, align 4, !tbaa !57  ; 7 uses
  %i.ni = shl nsw i32 %i.nh, 2                    ; 3 uses
  switch i32 %i.v, label %fill_rectangle.exit [
    i32 1, label %bb.ae
    i32 2, label %bb.ag
    i32 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %.critedge
  store i32 %.pre-phi249, ptr %i.ng, align 4, !tbaa !49
  br i1 %i.ao, label %fill_rectangle.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds i8, ptr %i.ng, i64 %i.nj
  store i32 %.pre-phi249, ptr %i.nk, align 4, !tbaa !49
  br i1 %i.an, label %fill_rectangle.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.af
  %i.nl = shl nsw i32 %i.nh, 3
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds i8, ptr %i.ng, i64 %i.nm
  store i32 %.pre-phi249, ptr %i.nn, align 4, !tbaa !49
  %i.no = mul nsw i32 %i.nh, 12
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds i8, ptr %i.ng, i64 %i.np
  store i32 %.pre-phi249, ptr %i.nq, align 4, !tbaa !49
  br label %fill_rectangle.exit

bb.ag:                                            ; preds = %.critedge
  store i32 %.pre-phi249, ptr %i.ng, align 4, !tbaa !49
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 4 uses
  store i32 %.pre-phi249, ptr %i.nr, align 4, !tbaa !49
  br i1 %i.ao, label %fill_rectangle.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ns = sext i32 %i.ni to i64                   ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ng, i64 %i.ns
  store i32 %.pre-phi249, ptr %i.nt, align 4, !tbaa !49
  %i.nu = getelementptr inbounds i8, ptr %i.nr, i64 %i.ns
  store i32 %.pre-phi249, ptr %i.nu, align 4, !tbaa !49
  br i1 %i.an, label %fill_rectangle.exit, label %.critedge133.i

.critedge133.i:                                   ; preds = %bb.ah
  %i.nv = shl nsw i32 %i.nh, 3
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %i.ng, i64 %i.nw
  store i32 %.pre-phi249, ptr %i.nx, align 4, !tbaa !49
  %i.ny = getelementptr inbounds i8, ptr %i.nr, i64 %i.nw
  store i32 %.pre-phi249, ptr %i.ny, align 4, !tbaa !49
  %i.nz = mul nsw i32 %i.nh, 12
  %i.oa = sext i32 %i.nz to i64                   ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %i.ng, i64 %i.oa
  store i32 %.pre-phi249, ptr %i.ob, align 4, !tbaa !49
  %i.oc = getelementptr inbounds i8, ptr %i.nr, i64 %i.oa
  store i32 %.pre-phi249, ptr %i.oc, align 4, !tbaa !49
  br label %fill_rectangle.exit

bb.ai:                                            ; preds = %.critedge
  %i.od = insertelement <4 x i32> poison, i32 %.pre-phi249, i64 0
  %i.oe = shufflevector <4 x i32> %i.od, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.oe, ptr %i.ng, align 4, !tbaa !49
  %i.of = sext i32 %i.ni to i64
  %i.og = getelementptr inbounds i8, ptr %i.ng, i64 %i.of
  store <4 x i32> %i.oe, ptr %i.og, align 4, !tbaa !49
  br i1 %i.an, label %fill_rectangle.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.oh = shl nsw i32 %i.nh, 3
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds i8, ptr %i.ng, i64 %i.oi
  store <4 x i32> %i.oe, ptr %i.oj, align 4, !tbaa !49
  %i.ok = mul nsw i32 %i.nh, 12
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds i8, ptr %i.ng, i64 %i.ol
  store <4 x i32> %i.oe, ptr %i.om, align 4, !tbaa !49
  br label %fill_rectangle.exit

fill_rectangle.exit:                              ; preds = %.critedge, %bb.ae, %bb.af, %.critedge.i, %bb.ag, %bb.ah, %.critedge133.i, %bb.ai, %bb.aj
  %i.on = add nuw nsw i32 %.0146238, %i.e         ; 2 uses
  %i.oo = icmp samesign ult i32 %i.on, 16
  br i1 %i.oo, label %bb.b, label %bb.ak, !llvm.loop !137

bb.ak:                                            ; preds = %fill_rectangle.exit
  %i.op = add nuw nsw i32 %.0142239, %i.h         ; 2 uses
  %i.oq = icmp samesign ult i32 %i.op, 16
  br i1 %i.oq, label %.preheader, label %.loopexit, !llvm.loop !138

.loopexit:                                        ; preds = %bb.ak, %get_interleaved_se_golomb.exit177.thread
  %.3 = phi i32 [ -1, %get_interleaved_se_golomb.exit177.thread ], [ 0, %bb.ak ]
  ret i32 %.3
}

declare i32 @ff_h264_check_intra4x4_pred_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_h264_check_intra_pred_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @svq3_decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 1, 4) %3) unnamed_addr #7 {
bb.a:
  %i.a = mul nuw nsw i32 %3, 3
  %i.b = lshr i32 %i.a, 2                         ; 3 uses
  %i.c = zext nneg i32 %3 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @svq3_decode_block.scan_patterns, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = lshr exact i32 16, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81   ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.k = icmp eq i32 %3, 3
  %.not56 = icmp eq i32 %i.b, 0
  %i.l = zext nneg i32 %i.b to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr @svq3_dct_tables, i64 %i.l
  %.not54 = icmp eq i32 %3, 2
  %.promoted70 = load i32, ptr %i.g, align 8, !tbaa !82
  br label %.preheader

.preheader:                                       ; preds = %bb.r, %bb.a
  %.promoted71 = phi i32 [ %.promoted70, %bb.a ], [ %spec.select56.i6067, %bb.r ]
  %.069 = phi i32 [ %i.f, %bb.a ], [ %i.da, %bb.r ] ; 4 uses
  %.04768 = phi i32 [ %2, %bb.a ], [ %.069, %bb.r ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.q
  %spec.select56.i6066 = phi i32 [ %spec.select56.i6067, %bb.q ], [ %.promoted71, %.preheader ] ; 4 uses
  %.1 = phi i32 [ %i.cz, %bb.q ], [ %.04768, %.preheader ]
  %i.n = lshr i32 %spec.select56.i6066, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !69
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = and i32 %spec.select56.i6066, 7
  %i.t = shl i32 %i.r, %i.s                       ; 3 uses
  %i.u = and i32 %i.t, -1434451968
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = lshr i32 %i.t, 24
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !69
  %i.z = zext i8 %i.y to i32
  %i.aa = add i32 %spec.select56.i6066, %i.z
  %..i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.aa) ; 2 uses
  store i32 %..i, ptr %i.g, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.w
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !69
  %i.ad = zext i8 %i.ac to i32
  br label %get_interleaved_ue_golomb.exit

.preheader.i:                                     ; preds = %bb.b, %bb.e
  %.044.i = phi i32 [ %i.bc, %bb.e ], [ %i.t, %bb.b ]
  %.043.i = phi i32 [ %spec.select56.i, %bb.e ], [ %spec.select56.i6066, %bb.b ]
  %.0.i = phi i32 [ %i.av, %bb.e ], [ 1, %bb.b ]  ; 2 uses
  %i.ae = lshr i32 %.044.i, 24
  %i.af = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69  ; 3 uses
  %spec.select57.i = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 8)
  %spec.select.i = zext nneg i8 %spec.select57.i to i32
  %i.ai = add i32 %.043.i, %spec.select.i         ; 2 uses
  %spec.select56.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.ai) ; 5 uses
  %.not54.i = icmp eq i8 %i.ah, 9
  br i1 %.not54.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.aj = zext i8 %i.ah to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = ashr i32 %i.ak, 1
  %i.am = shl i32 %.0.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.af
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !69
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or i32 %i.am, %i.ap
  br label %.loopexit.i

bb.e:                                             ; preds = %.preheader.i
  %i.ar = shl i32 %.0.i, 4                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.af
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = zext i8 %i.at to i32
  %i.av = or i32 %i.ar, %i.au                     ; 2 uses
  %i.aw = lshr i32 %spec.select56.i, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !69
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %spec.select56.i, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = icmp ult i32 %i.ar, 134217728
  %i.be = icmp ult i32 %i.ai, %i.i
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.preheader.i, label %.loopexit.i, !llvm.loop !104

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.aq, %bb.d ], [ %i.av, %bb.e ]
  store i32 %spec.select56.i, ptr %i.g, align 8, !tbaa !82
  %i.bg = add i32 %.1.i, -1
  br label %get_interleaved_ue_golomb.exit
end_hunk_5
begin_hunk_6_@svq3_add_idct_c:bb.a
  %i.if = trunc nuw i32 %i.ic to i8
  %.0.i105.2 = select i1 %i.id, i8 %i.ie, i8 %i.if
  store i8 %.0.i105.2, ptr %i.hv, align 1, !tbaa !69
  %i.ig = getelementptr i8, ptr %0, i64 %i.bf
  %i.ih = getelementptr i8, ptr %i.ig, i64 2      ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !69
  %i.ij = zext i8 %i.ii to i32
  %i.ik = sub nsw i32 %i.gj, %i.gw
  %i.il = mul i32 %i.ik, %i.c
  %i.im = add i32 %i.il, %.0
  %i.in = ashr i32 %i.im, 20
  %i.io = add nsw i32 %i.in, %i.ij                ; 3 uses
  %i.ip = icmp ugt i32 %i.io, 255
  %isnotneg.i.2 = icmp sgt i32 %i.io, -1
  %i.iq = sext i1 %isnotneg.i.2 to i8
  %i.ir = trunc nuw i32 %i.io to i8
  %.0.i.2 = select i1 %i.ip, i8 %i.iq, i8 %i.ir
  store i8 %.0.i.2, ptr %i.ih, align 1, !tbaa !69
  %i.is = load i16, ptr %i.q, align 2, !tbaa !121
  %i.it = sext i16 %i.is to i32                   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !121
  %i.iw = sext i16 %i.iv to i32                   ; 2 uses
  %i.ix = add nsw i32 %i.iw, %i.it
  %i.iy = mul nsw i32 %i.ix, 13                   ; 2 uses
  %i.iz = sub nsw i32 %i.it, %i.iw
  %i.ja = mul nsw i32 %i.iz, 13                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !121
  %i.jd = sext i16 %i.jc to i32                   ; 2 uses
  %i.je = mul nsw i32 %i.jd, 7
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !121
  %i.jh = sext i16 %i.jg to i32                   ; 2 uses
  %.neg.3 = mul nsw i32 %i.jh, -17
  %i.ji = add nsw i32 %.neg.3, %i.je              ; 2 uses
  %i.jj = mul nsw i32 %i.jd, 17
  %i.jk = mul nsw i32 %i.jh, 7
  %i.jl = add nsw i32 %i.jk, %i.jj                ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !69
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add nsw i32 %i.jl, %i.iy
  %i.jq = mul i32 %i.jp, %i.c
  %i.jr = add i32 %i.jq, %.0
  %i.js = ashr i32 %i.jr, 20
  %i.jt = add nsw i32 %i.js, %i.jo                ; 3 uses
  %i.ju = icmp ugt i32 %i.jt, 255
  %isnotneg.i108.3 = icmp sgt i32 %i.jt, -1
  %i.jv = sext i1 %isnotneg.i108.3 to i8
  %i.jw = trunc nuw i32 %i.jt to i8
  %.0.i109.3 = select i1 %i.ju, i8 %i.jv, i8 %i.jw
  store i8 %.0.i109.3, ptr %i.jm, align 1, !tbaa !69
  %i.jx = getelementptr i8, ptr %0, i64 %i.bd
  %i.jy = getelementptr i8, ptr %i.jx, i64 3      ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !69
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add nsw i32 %i.ji, %i.ja
  %i.kc = mul i32 %i.kb, %i.c
  %i.kd = add i32 %i.kc, %.0
  %i.ke = ashr i32 %i.kd, 20
  %i.kf = add nsw i32 %i.ke, %i.ka                ; 3 uses
  %i.kg = icmp ugt i32 %i.kf, 255
  %isnotneg.i106.3 = icmp sgt i32 %i.kf, -1
  %i.kh = sext i1 %isnotneg.i106.3 to i8
  %i.ki = trunc nuw i32 %i.kf to i8
  %.0.i107.3 = select i1 %i.kg, i8 %i.kh, i8 %i.ki
  store i8 %.0.i107.3, ptr %i.jy, align 1, !tbaa !69
  %i.kj = getelementptr i8, ptr %0, i64 %i.be
  %i.kk = getelementptr i8, ptr %i.kj, i64 3      ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !69
  %i.km = zext i8 %i.kl to i32
  %i.kn = sub nsw i32 %i.ja, %i.ji
  %i.ko = mul i32 %i.kn, %i.c
  %i.kp = add i32 %i.ko, %.0
  %i.kq = ashr i32 %i.kp, 20
  %i.kr = add nsw i32 %i.kq, %i.km                ; 3 uses
  %i.ks = icmp ugt i32 %i.kr, 255
  %isnotneg.i104.3 = icmp sgt i32 %i.kr, -1
  %i.kt = sext i1 %isnotneg.i104.3 to i8
  %i.ku = trunc nuw i32 %i.kr to i8
  %.0.i105.3 = select i1 %i.ks, i8 %i.kt, i8 %i.ku
  store i8 %.0.i105.3, ptr %i.kk, align 1, !tbaa !69
  %i.kv = getelementptr i8, ptr %0, i64 %i.bf
  %i.kw = getelementptr i8, ptr %i.kv, i64 3      ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !69
  %i.ky = zext i8 %i.kx to i32
  %i.kz = sub nsw i32 %i.iy, %i.jl
  %i.la = mul i32 %i.kz, %i.c
  %i.lb = add i32 %i.la, %.0
  %i.lc = ashr i32 %i.lb, 20
  %i.ld = add nsw i32 %i.lc, %i.ky                ; 3 uses
  %i.le = icmp ugt i32 %i.ld, 255
  %isnotneg.i.3 = icmp sgt i32 %i.ld, -1
  %i.lf = sext i1 %isnotneg.i.3 to i8
  %i.lg = trunc nuw i32 %i.ld to i8
  %.0.i.3 = select i1 %i.le, i8 %i.lf, i8 %i.lg
  store i8 %.0.i.3, ptr %i.kw, align 1, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind willreturn memory(read) }

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
!29 = !{!30, !37, i64 1328}
!30 = !{!"SVQ3Context", !31, i64 0, !32, i64 8, !33, i64 280, !34, i64 752, !35, i64 1136, !36, i64 1312, !37, i64 1328, !37, i64 1336, !37, i64 1344, !38, i64 1352, !38, i64 1376, !16, i64 1400, !6, i64 1408, !6, i64 1412, !6, i64 1416, !6, i64 1420, !6, i64 1424, !6, i64 1428, !6, i64 1432, !6, i64 1436, !6, i64 1440, !6, i64 1444, !6, i64 1448, !6, i64 1452, !6, i64 1456, !6, i64 1460, !6, i64 1464, !6, i64 1468, !6, i64 1472, !6, i64 1476, !6, i64 1480, !6, i64 1484, !6, i64 1488, !6, i64 1492, !6, i64 1496, !6, i64 1500, !6, i64 1504, !6, i64 1508, !26, i64 1512, !6, i64 1520, !6, i64 1524, !7, i64 1528, !16, i64 1568, !6, i64 1576, !6, i64 1580, !16, i64 1584, !7, i64 1600, !7, i64 1920, !7, i64 2000, !7, i64 5072, !7, i64 5264, !7, i64 5384, !7, i64 11016, !7, i64 11400, !26, i64 11496, !19, i64 11504}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"H264DSPContext", !7, i64 0, !7, i64 32, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264}
!33 = !{!"H264PredContext", !7, i64 0, !7, i64 120, !7, i64 216, !7, i64 304, !7, i64 376, !7, i64 392, !7, i64 408, !7, i64 424, !7, i64 448}
!34 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!35 = !{!"TpelDSPContext", !7, i64 0, !7, i64 88}
!36 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!37 = !{!"p1 _ZTS9SVQ3Frame", !12, i64 0}
!38 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!39 = !{!30, !37, i64 1344}
!40 = !{!30, !37, i64 1336}
!41 = !{!42, !43, i64 0}
!42 = !{!"SVQ3Frame", !43, i64 0, !7, i64 8, !26, i64 24}
!43 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!44 = !{!10, !6, i64 652}
!45 = !{!10, !6, i64 64}
!46 = !{!10, !6, i64 136}
!47 = !{!10, !6, i64 156}
!48 = !{!30, !31, i64 0}
!49 = !{!6, !6, i64 0}
!50 = !{!30, !6, i64 1420}
!51 = !{!10, !16, i64 72}
!52 = !{!10, !6, i64 80}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!30, !6, i64 1500}
!56 = !{!30, !6, i64 1504}
!57 = !{!30, !6, i64 1508}
!58 = !{!30, !26, i64 11496}
!59 = !{!30, !6, i64 1492}
!60 = !{!30, !6, i64 1496}
!61 = !{!30, !19, i64 11504}
!62 = !{!30, !16, i64 1568}
!63 = !{!42, !26, i64 24}
!64 = !{!19, !19, i64 0}
!65 = distinct !{!65, !54}
!66 = !{!30, !26, i64 1512}
!67 = distinct !{!67, !54}
!68 = distinct !{!68, !54}
!69 = !{!7, !7, i64 0}
!70 = distinct !{!70, !54}
!71 = !{!72, !6, i64 32}
!72 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!73 = !{!16, !16, i64 0}
!74 = !{!30, !6, i64 1476}
!75 = !{!30, !6, i64 1488}
!76 = !{!30, !6, i64 1484}
!77 = !{!30, !6, i64 1480}
!78 = !{!72, !16, i64 24}
!79 = !{!38, !16, i64 0}
!80 = !{!38, !6, i64 12}
!81 = !{!38, !6, i64 16}
!82 = !{!38, !6, i64 8}
!83 = !{!30, !6, i64 1472}
!84 = !{!30, !6, i64 1468}
!85 = !{!37, !37, i64 0}
!86 = !{!87, !6, i64 120}
!87 = !{!"AVFrame", !7, i64 0, !7, i64 64, !88, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !89, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !90, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!88 = !{!"p2 omnipotent char", !28, i64 0}
!89 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!90 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!91 = !{!87, !6, i64 276}
!92 = !{!30, !16, i64 1584}
!93 = !{!10, !6, i64 524}
!94 = !{!30, !6, i64 1412}
!95 = !{!30, !6, i64 1416}
!96 = !{!30, !6, i64 1428}
!97 = !{!30, !6, i64 1444}
!98 = !{!30, !6, i64 1440}
!99 = !{!10, !6, i64 704}
!100 = !{!30, !6, i64 1464}
!101 = !{!30, !6, i64 1456}
!102 = !{!30, !6, i64 1460}
!103 = !{!30, !6, i64 1452}
!104 = distinct !{!104, !54}
!105 = !{!30, !6, i64 1576}
!106 = !{!30, !6, i64 1580}
!107 = distinct !{!107, !54}
!108 = !{!109, !7, i64 2}
!109 = !{!"IMbInfo", !110, i64 0, !7, i64 2, !7, i64 3}
!110 = !{!"short", !7, i64 0}
!111 = !{!30, !6, i64 1524}
!112 = !{!109, !7, i64 3}
!113 = distinct !{!113, !54}
!114 = distinct !{!114, !54}
!115 = !{!30, !6, i64 1448}
!116 = !{!30, !6, i64 1520}
!117 = !{!30, !12, i64 1320}
!118 = distinct !{null}
!119 = !{!12, !12, i64 0}
!120 = distinct !{!120, !54}
!121 = !{!110, !110, i64 0}
!122 = !{!30, !12, i64 248}
!123 = distinct !{!123, !54}
!124 = distinct !{!124, !54}
!125 = !{!10, !15, i64 824}
!126 = distinct !{!126, !54}
!127 = !{!10, !6, i64 172}
!128 = distinct !{!128, !54}
!129 = !{!15, !15, i64 0}
!130 = !{!30, !6, i64 1424}
!131 = !{!30, !16, i64 1400}
!132 = !{!30, !16, i64 1352}
!133 = !{!10, !6, i64 116}
!134 = !{!30, !6, i64 1432}
!135 = !{!30, !6, i64 1436}
!136 = !{!30, !12, i64 1312}
!137 = distinct !{!137, !54}
!138 = distinct !{!138, !54}
!139 = !{!140, !7, i64 0}
!140 = !{!"", !7, i64 0, !7, i64 1}
!141 = !{!140, !7, i64 1}
!142 = distinct !{!142, !54}
!143 = distinct !{!143, !54}
end_hunk_6
