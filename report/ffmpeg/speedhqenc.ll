Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/speedhqenc?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVClass = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%union.anon.1 = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"speedhq\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NewTek SpeedHQ\00", align 1
@ff_mpv_enc_class = external constant %struct.AVClass, align 8
@.compoundliteral = internal constant [4 x i32] [i32 0, i32 4, i32 5, i32 -1], align 4
@ff_speedhq_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon.1, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 217, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr @ff_mpv_enc_class, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 98, i32 11008, ptr null, ptr null, ptr null, ptr @speedhq_encode_init, %union.anon.1 { ptr @ff_mpv_encode_picture }, ptr @ff_mpv_encode_end, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"s->buf_ptr < s->buf_end\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"libavcodec/put_bits.h\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1
@speedhq_encode_init.init_static_once = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"SpeedHQ does not support resolutions above 65500x65500\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"width must be a multiple of 16\0A\00", align 1
@uni_speedhq_ac_vlc_len = internal global [8192 x i8] zeroinitializer, align 16
@ff_mpeg12_dc_scale_table = external hidden constant [4 x [32 x i8]], align 16
@speedhq_max_level = internal global [65 x i8] zeroinitializer, align 16
@speedhq_index_run = internal global [65 x i8] zeroinitializer, align 16
@ff_speedhq_vlc_table = external hidden constant [123 x [2 x i16]], align 16
@ff_mpeg12_vlc_dc_lum_bits = external local_unnamed_addr constant [12 x i8], align 1
@mpeg12_vlc_dc_lum_code_reversed = internal unnamed_addr constant [12 x i16] [i16 1, i16 0, i16 2, i16 5, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511], align 16
@ff_mpeg12_vlc_dc_chroma_bits = external local_unnamed_addr constant [12 x i8], align 1
@mpeg12_vlc_dc_chroma_code_reversed = internal unnamed_addr constant [12 x i16] [i16 0, i16 2, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023], align 16
@speedhq_lum_dc_uni = internal unnamed_addr global [512 x i32] zeroinitializer, align 16
@speedhq_chr_dc_uni = internal unnamed_addr global [512 x i32] zeroinitializer, align 16
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@ff_speedhq_run = external hidden constant [121 x i8], align 16
@ff_speedhq_level = external hidden constant [121 x i8], align 16
@switch.table.speedhq_encode_init = private unnamed_addr constant [6 x i32] [i32 810633299, i32 poison, i32 poison, i32 poison, i32 844187731, i32 877742163], align 4

; Function Attrs: nounwind uwtable
define void @ff_speedhq_end_slice(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = icmp slt i32 %i.c, 32
  br i1 %i.d, label %.lr.ph.i, label %flush_put_bits_le.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4408
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.i = icmp ult ptr %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 177) #5
  tail call void @abort() #6
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.a, align 8, !tbaa !15
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.l, ptr %i.e, align 8, !tbaa !13
  store i8 %i.k, ptr %i.g, align 1, !tbaa !16
  %i.m = load i32, ptr %i.a, align 8, !tbaa !15
  %i.n = lshr i32 %i.m, 8
  store i32 %i.n, ptr %i.a, align 8, !tbaa !15
  %i.o = load i32, ptr %i.b, align 4, !tbaa !9    ; 2 uses
  %i.p = add nsw i32 %i.o, 8
  store i32 %i.p, ptr %i.b, align 4, !tbaa !9
  %i.q = icmp slt i32 %i.o, 24
  br i1 %i.q, label %bb.b, label %flush_put_bits_le.exit, !llvm.loop !17

flush_put_bits_le.exit:                           ; preds = %bb.d, %bb.a
  store i32 32, ptr %i.b, align 4, !tbaa !9
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.r = getelementptr i8, ptr %0, i64 4392       ; 4 uses
  %.val16 = load ptr, ptr %i.r, align 8, !tbaa !19 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 4400       ; 4 uses
  %.val17 = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.t = ptrtoint ptr %.val17 to i64
  %i.u = ptrtoint ptr %.val16 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10992 ; 4 uses
  %i.y = load i32, ptr %i.x, align 16, !tbaa !20  ; 2 uses
  %i.z = sub nsw i32 %i.w, %i.y                   ; 3 uses
  %i.aa = trunc i32 %i.z to i8
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds i8, ptr %.val16, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !16
  %i.ad = lshr i32 %i.z, 8
  %i.ae = trunc i32 %i.ad to i8
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.ag = load i32, ptr %i.x, align 16, !tbaa !20
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 %i.ae, ptr %i.aj, align 1, !tbaa !16
  %i.ak = lshr i32 %i.z, 16
  %i.al = trunc i32 %i.ak to i8
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.an = load i32, ptr %i.x, align 16, !tbaa !20
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.al, ptr %i.aq, align 1, !tbaa !16
  %.val = load ptr, ptr %i.r, align 8, !tbaa !19
  %.val15 = load ptr, ptr %i.s, align 16, !tbaa !13 ; 2 uses
  %i.ar = ptrtoint ptr %.val15 to i64             ; 2 uses
  %i.as = ptrtoint ptr %.val to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.x, align 16, !tbaa !20
  %i.av = load i32, ptr %i.a, align 16, !tbaa !15 ; 2 uses
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !9   ; 3 uses
  %.not.i = icmp sgt i32 %i.aw, 24
  br i1 %.not.i, label %put_bits_le.exit, label %bb.e

bb.e:                                             ; preds = %flush_put_bits_le.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ar
  %i.bb = icmp ugt i64 %i.ba, 3
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.av, ptr %.val15, align 1, !tbaa !16
  %i.bc = load ptr, ptr %i.s, align 16, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store ptr %i.bd, ptr %i.s, align 16, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.be = add nsw i32 %i.aw, 32
  br label %put_bits_le.exit

put_bits_le.exit:                                 ; preds = %flush_put_bits_le.exit, %bb.h
  %.020.i = phi i32 [ 0, %bb.h ], [ %i.av, %flush_put_bits_le.exit ]
  %.0.i = phi i32 [ %i.be, %bb.h ], [ %i.aw, %flush_put_bits_le.exit ]
  %i.bf = add nsw i32 %.0.i, -24
  store i32 %.020.i, ptr %i.a, align 16, !tbaa !15
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @speedhq_encode_init(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 65500
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !76
  %i.h = icmp sgt i32 %i.g, 65500
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %i.d, 15
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #5
  br label %bb.g

switch.lookup:                                    ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = zext nneg i32 %i.k to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.speedhq_encode_init, i64 %i.m
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr %i.l, align 4, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 10392
  store ptr @speedhq_encode_picture_header, ptr %i.n, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6552
  store ptr @speedhq_encode_mb, ptr %i.o, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6128
  store <2 x i32> <i32 -2048, i32 2047>, ptr %i.p, align 16, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 6144
  store <4 x ptr> <ptr @uni_speedhq_ac_vlc_len, ptr @uni_speedhq_ac_vlc_len, ptr @uni_speedhq_ac_vlc_len, ptr @uni_speedhq_ac_vlc_len>, ptr %i.q, align 16, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  store ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg12_dc_scale_table, i64 96), ptr %i.r, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg12_dc_scale_table, i64 96), ptr %i.s, align 16, !tbaa !84
  %i.t = tail call i32 @ff_mpv_encode_init(ptr noundef nonnull %0) #5 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %switch.lookup
  %i.v = tail call i32 @pthread_once(ptr noundef nonnull @speedhq_encode_init.init_static_once, ptr noundef nonnull @speedhq_init_static_data) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -1163346256, %bb.e ], [ 0, %bb.f ], [ %i.t, %switch.lookup ]
  ret i32 %.0
}

declare i32 @ff_mpv_encode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ff_mpv_encode_end(ptr noundef) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @speedhq_encode_picture_header(ptr nofree noundef captures(none) initializes((10992, 10996)) %0) #0 {
put_bits_le.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 4388       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = shl nsw i32 %i.d, 1
  %i.f = sub nsw i32 100, %i.e
  %i.g = load i32, ptr %i.a, align 8, !tbaa !15
  %i.h = or i32 %i.f, %i.g                        ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !15
  store i32 24, ptr %i.b, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.o, 3
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %put_bits_le.exit
  %i.q = or i32 %i.h, 1024
  store i32 %i.q, ptr %i.l, align 1, !tbaa !16
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.k, align 8, !tbaa !13
  br label %put_bits_le.exit11

bb.b:                                             ; preds = %put_bits_le.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %put_bits_le.exit11

put_bits_le.exit11:                               ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10992
  store i32 4, ptr %i.t, align 16, !tbaa !20
  store i32 0, ptr %i.a, align 16, !tbaa !15
  store i32 8, ptr %i.b, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @speedhq_encode_mb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  tail call fastcc void @encode_block(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call fastcc void @encode_block(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @encode_block(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call fastcc void @encode_block(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 3)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call fastcc void @encode_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call fastcc void @encode_block(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 5)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.g = load i32, ptr %i.f, align 16, !tbaa !86
  switch i32 %i.g, label %bb.c [
    i32 3, label %bb.b
    i32 2, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1024
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef 8)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 9)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 6)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 896
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef 7)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1280, %bb.b ], [ 768, %bb.a ]
  %.sink30 = phi i32 [ 10, %bb.b ], [ 6, %bb.a ]
  %.sink29 = phi i64 [ 1408, %bb.b ], [ 896, %bb.a ]
  %.sink28 = phi i32 [ 11, %bb.b ], [ 7, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.sink31
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %.sink30)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sink29
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %.sink28)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %.tr.i.i = trunc i64 %i.t to i32
  %i.w = shl i32 %.tr.i.i, 3
  %reass.sub.i.i = sub i32 %i.w, %i.v
  %i.x = add i32 %reass.sub.i.i, 32               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !87
  store i32 %i.x, ptr %i.y, align 16, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6336 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !88
  %i.ac = sub i32 %i.ab, %i.z
  %i.ad = add i32 %i.ac, %i.x
  store i32 %i.ad, ptr %i.aa, align 16, !tbaa !88
  ret void
}

declare i32 @ff_mpv_encode_init(ptr noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @speedhq_init_static_data() #1 {
bb.a:
  tail call void @ff_rl_init_level_run(ptr noundef nonnull @speedhq_max_level, ptr noundef nonnull @speedhq_index_run, ptr noundef nonnull @ff_speedhq_run, ptr noundef nonnull @ff_speedhq_level, i32 noundef 121) #5
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @ff_mpeg1_init_uni_ac_vlc(ptr noundef nonnull @speedhq_max_level, ptr noundef nonnull @speedhq_index_run, ptr noundef nonnull @ff_speedhq_vlc_table, ptr noundef nonnull @uni_speedhq_ac_vlc_len) #5
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ -255, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.a = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 3 uses
  %.027.lobit = ashr i32 %i.a, 31
  %spec.select = add nsw i32 %.027.lobit, %i.a
  %i.c = shl nuw nsw i32 %i.b, 1
  %.not.i = icmp samesign ult i32 %i.b, 32768     ; 2 uses
  %i.d = lshr i32 %i.b, 15
  %spec.select.i = select i1 %.not.i, i32 %i.c, i32 %i.d ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.e = lshr i32 %spec.select.i, 8
  %i.f = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.e
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.f
  %i.g = zext nneg i32 %.110.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i32
  %i.k = add nuw nsw i32 %.1.i, %i.j              ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr @ff_mpeg12_vlc_dc_lum_bits, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = add nuw nsw i32 %i.k, %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @mpeg12_vlc_dc_lum_code_reversed, i64 %i.l
  %i.r = load i16, ptr %i.q, align 2, !tbaa !89
  %i.s = zext i16 %i.r to i32
  %notmask.i = shl nsw i32 -1, %i.k
  %i.t = xor i32 %notmask.i, -1
  %i.u = and i32 %spec.select, %i.t               ; 2 uses
  %i.v = shl i32 %i.u, %i.o
  %i.w = add i32 %i.v, %i.s
  %i.x = shl i32 %i.w, 8
  %i.y = add nsw i32 %i.p, %i.x
  %i.z = add nsw i64 %indvars.iv, 255             ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr @speedhq_lum_dc_uni, i64 %i.z
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr @ff_mpeg12_vlc_dc_chroma_bits, i64 %i.l
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = add nuw nsw i32 %i.k, %i.ad
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @mpeg12_vlc_dc_chroma_code_reversed, i64 %i.l
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !89
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl i32 %i.u, %i.ad
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = shl i32 %i.aj, 8
  %i.al = add nsw i32 %i.ae, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @speedhq_chr_dc_uni, i64 %i.z
  store i32 %i.al, ptr %i.am, align 4, !tbaa !81
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !90
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 12) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 4                       ; 3 uses
  %i.b = and i32 %2, 1
  %i.c = add nuw nsw i32 %i.b, 1
  %i.d = select i1 %i.a, i32 0, i32 %i.c
  %i.e = load i16, ptr %1, align 2, !tbaa !89
  %i.f = sext i16 %i.e to i32                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6360
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81
  %i.k = sub nsw i32 %i.j, %i.f                   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 8 uses
  %i.m = add nsw i32 %i.k, 255                    ; 2 uses
  %i.n = icmp ugt i32 %i.m, 510
  br i1 %i.n, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = mul nsw i32 %i.k, -2                     ; 3 uses
  %i.q = and i32 %i.p, 65280
  %.not.i30.i = icmp eq i32 %i.q, 0               ; 2 uses
  %i.r = lshr i32 %i.p, 8
  %spec.select.i31.i = select i1 %.not.i30.i, i32 %i.p, i32 %i.r
  %spec.select7.i32.i = select i1 %.not.i30.i, i32 0, i32 8
  %i.s = zext nneg i32 %spec.select.i31.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %spec.select7.i32.i, %i.v
  %i.x = add nsw i32 %i.k, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = shl nuw nsw i32 %i.k, 1
  %i.z = and i32 %i.k, 32640
  %.not.i.i = icmp eq i32 %i.z, 0                 ; 2 uses
  %i.aa = lshr i32 %i.k, 7
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.y, i32 %i.aa
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.ab = zext nneg i32 %spec.select.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %spec.select7.i.i, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027.i = phi i32 [ %i.x, %bb.c ], [ %i.k, %bb.d ]
  %.0.i = phi i32 [ %i.w, %bb.c ], [ %i.af, %bb.d ] ; 4 uses
  %i.ag = zext nneg i32 %.0.i to i64              ; 4 uses
  %notmask.i33.i = shl nsw i32 -1, %.0.i
  %i.ah = xor i32 %notmask.i33.i, -1
  %i.ai = and i32 %.027.i, %i.ah                  ; 2 uses
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !15  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9  ; 9 uses
  %i.am = sub nsw i32 32, %i.al                   ; 2 uses
  br i1 %i.a, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr @ff_mpeg12_vlc_dc_lum_bits, i64 %i.ag
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = add nuw nsw i32 %.0.i, %i.ap            ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @mpeg12_vlc_dc_lum_code_reversed, i64 %i.ag
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !89
  %i.at = zext i16 %i.as to i32
  %i.au = shl i32 %i.ai, %i.ap
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %i.aw = shl i32 %i.av, %i.am
  %i.ax = or i32 %i.aw, %i.aj                     ; 2 uses
  %.not.i34.i = icmp slt i32 %i.aq, %i.al
  br i1 %.not.i34.i, label %put_bits_le.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.be, 3
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ax, ptr %i.bb, align 1, !tbaa !16
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = lshr i32 %i.av, %i.al
  %i.bj = add nsw i32 %i.al, 32
  br label %put_bits_le.exit.i

put_bits_le.exit.i:                               ; preds = %bb.j, %bb.f
  %.020.i.i = phi i32 [ %i.bi, %bb.j ], [ %i.ax, %bb.f ] ; 2 uses
  %.0.i.i = phi i32 [ %i.bj, %bb.j ], [ %i.al, %bb.f ]
  %i.bk = sub nsw i32 %.0.i.i, %i.aq              ; 2 uses
  store i32 %.020.i.i, ptr %i.l, align 8, !tbaa !15
  store i32 %i.bk, ptr %i.ak, align 4, !tbaa !9
  br label %encode_dc.exit

bb.k:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr @ff_mpeg12_vlc_dc_chroma_bits, i64 %i.ag
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = add nuw nsw i32 %.0.i, %i.bn            ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @mpeg12_vlc_dc_chroma_code_reversed, i64 %i.ag
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !89
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl i32 %i.ai, %i.bn
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = shl i32 %i.bt, %i.am
  %i.bv = or i32 %i.bu, %i.aj                     ; 2 uses
  %.not.i35.i = icmp slt i32 %i.bo, %i.al
  br i1 %.not.i35.i, label %put_bits_le.exit38.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ugt i64 %i.cc, 3
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.bv, ptr %i.bz, align 1, !tbaa !16
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !13
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cg = lshr i32 %i.bt, %i.al
  %i.ch = add nsw i32 %i.al, 32
  br label %put_bits_le.exit38.i

put_bits_le.exit38.i:                             ; preds = %bb.o, %bb.k
  %.020.i36.i = phi i32 [ %i.cg, %bb.o ], [ %i.bv, %bb.k ] ; 2 uses
  %.0.i37.i = phi i32 [ %i.ch, %bb.o ], [ %i.al, %bb.k ]
  %i.ci = sub nsw i32 %.0.i37.i, %i.bo            ; 2 uses
  store i32 %.020.i36.i, ptr %i.l, align 8, !tbaa !15
  store i32 %i.ci, ptr %i.ak, align 4, !tbaa !9
  br label %encode_dc.exit

bb.p:                                             ; preds = %bb.a
  %i.cj = zext nneg i32 %i.m to i64               ; 2 uses
  %i.ck = load i32, ptr %i.l, align 8, !tbaa !15  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9  ; 9 uses
  %i.cn = sub nsw i32 32, %i.cm                   ; 2 uses
  br i1 %i.a, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @speedhq_lum_dc_uni, i64 %i.cj
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !81 ; 2 uses
  %i.cq = and i32 %i.cp, 255                      ; 2 uses
  %i.cr = lshr i32 %i.cp, 8                       ; 2 uses
  %i.cs = shl i32 %i.cr, %i.cn
  %i.ct = or i32 %i.cs, %i.ck                     ; 2 uses
  %.not.i39.i = icmp slt i32 %i.cq, %i.cm
  br i1 %.not.i39.i, label %put_bits_le.exit42.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = icmp ugt i64 %i.da, 3
  br i1 %i.db, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.ct, ptr %i.cx, align 1, !tbaa !16
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !13
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = lshr i32 %i.cr, %i.cm
  %i.df = add nsw i32 %i.cm, 32
  br label %put_bits_le.exit42.i

put_bits_le.exit42.i:                             ; preds = %bb.u, %bb.q
  %.020.i40.i = phi i32 [ %i.de, %bb.u ], [ %i.ct, %bb.q ] ; 2 uses
  %.0.i41.i = phi i32 [ %i.df, %bb.u ], [ %i.cm, %bb.q ]
  %i.dg = sub nsw i32 %.0.i41.i, %i.cq            ; 2 uses
  store i32 %.020.i40.i, ptr %i.l, align 8, !tbaa !15
  store i32 %i.dg, ptr %i.cl, align 4, !tbaa !9
  br label %encode_dc.exit

bb.v:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @speedhq_chr_dc_uni, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !81 ; 2 uses
  %i.dj = and i32 %i.di, 255                      ; 2 uses
  %i.dk = lshr i32 %i.di, 8                       ; 2 uses
  %i.dl = shl i32 %i.dk, %i.cn
  %i.dm = or i32 %i.dl, %i.ck                     ; 2 uses
  %.not.i43.i = icmp slt i32 %i.dj, %i.cm
  br i1 %.not.i43.i, label %put_bits_le.exit46.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !13 ; 2 uses
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ugt i64 %i.dt, 3
  br i1 %i.du, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.dm, ptr %i.dq, align 1, !tbaa !16
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !13
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dx = lshr i32 %i.dk, %i.cm
  %i.dy = add nsw i32 %i.cm, 32
  br label %put_bits_le.exit46.i

put_bits_le.exit46.i:                             ; preds = %bb.z, %bb.v
  %.020.i44.i = phi i32 [ %i.dx, %bb.z ], [ %i.dm, %bb.v ] ; 2 uses
  %.0.i45.i = phi i32 [ %i.dy, %bb.z ], [ %i.cm, %bb.v ]
  %i.dz = sub nsw i32 %.0.i45.i, %i.dj            ; 2 uses
  store i32 %.020.i44.i, ptr %i.l, align 8, !tbaa !15
  store i32 %i.dz, ptr %i.cl, align 4, !tbaa !9
  br label %encode_dc.exit

encode_dc.exit:                                   ; preds = %put_bits_le.exit.i, %put_bits_le.exit38.i, %put_bits_le.exit42.i, %put_bits_le.exit46.i
  %i.ea = phi i32 [ %i.bk, %put_bits_le.exit.i ], [ %i.ci, %put_bits_le.exit38.i ], [ %i.dg, %put_bits_le.exit42.i ], [ %i.dz, %put_bits_le.exit46.i ] ; 2 uses
  %i.eb = phi i32 [ %.020.i.i, %put_bits_le.exit.i ], [ %.020.i36.i, %put_bits_le.exit38.i ], [ %.020.i40.i, %put_bits_le.exit42.i ], [ %.020.i44.i, %put_bits_le.exit46.i ] ; 2 uses
  store i32 %i.f, ptr %i.i, align 4, !tbaa !81
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ed = sext i32 %2 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !81 ; 2 uses
  %.not57 = icmp slt i32 %i.ef, 1
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %encode_dc.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 6 uses
  %i.ek = add nuw i32 %i.ef, 1
  %wide.trip.count = zext i32 %i.ek to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.am
  %i.el = phi i32 [ %i.ea, %.lr.ph ], [ %i.gy, %bb.am ] ; 11 uses
  %i.em = phi i32 [ %i.eb, %.lr.ph ], [ %i.gz, %bb.am ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 3 uses
  %.04358 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.am ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !89 ; 2 uses
  %i.es = sext i16 %i.er to i32                   ; 3 uses
  %.not46 = icmp eq i16 %i.er, 0
  br i1 %.not46, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = xor i32 %.04358, -1
  %i.eu = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ev = add nsw i32 %i.eu, %i.et                ; 2 uses
  %i.ew = tail call i32 @llvm.abs.i32(i32 %i.es, i1 true) ; 2 uses
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr @speedhq_max_level, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !16
  %i.fa = zext i8 %i.ez to i32
  %.not47 = icmp samesign ugt i32 %i.ew, %i.fa
  br i1 %.not47, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = lshr i32 %i.es, 31
  %i.fc = getelementptr inbounds i8, ptr @speedhq_index_run, i64 %i.ex
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !16
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add nuw nsw i32 %i.ew, %i.fe
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr [4 x i8], ptr @ff_speedhq_vlc_table, i64 %i.fg ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4
  %i.fj = getelementptr i8, ptr %i.fh, i64 -2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !89
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = add nuw nsw i32 %i.fl, 1                ; 2 uses
  %i.fn = load i16, ptr %i.fi, align 4, !tbaa !89
  %i.fo = zext i16 %i.fn to i32
  %i.fp = shl nuw i32 %i.fb, %i.fl
  %i.fq = or i32 %i.fp, %i.fo                     ; 2 uses
  %i.fr = sub nsw i32 32, %i.el
  %i.fs = shl i32 %i.fq, %i.fr
  %i.ft = or i32 %i.fs, %i.em                     ; 2 uses
  %.not.i = icmp slt i32 %i.fm, %i.el
  br i1 %.not.i, label %put_bits_le.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = load ptr, ptr %i.ei, align 8, !tbaa !14
  %i.fv = load ptr, ptr %i.ej, align 8, !tbaa !13 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp ugt i64 %i.fy, 3
  br i1 %i.fz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ft, ptr %i.fv, align 1, !tbaa !16
  %i.ga = load ptr, ptr %i.ej, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store ptr %i.gb, ptr %i.ej, align 8, !tbaa !13
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gc = lshr i32 %i.fq, %i.el
  %i.gd = add nsw i32 %i.el, 32
  br label %put_bits_le.exit

put_bits_le.exit:                                 ; preds = %bb.ac, %bb.ag
  %.020.i = phi i32 [ %i.gc, %bb.ag ], [ %i.ft, %bb.ac ]
  %.0.i48 = phi i32 [ %i.gd, %bb.ag ], [ %i.el, %bb.ac ]
  %i.ge = sub nsw i32 %.0.i48, %i.fm
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ab
  %i.gf = shl i32 %i.ev, 6
  %i.gg = shl nsw i32 %i.es, 12
  %i.gh = add nsw i32 %i.gg, 8388608
  %i.gi = or i32 %i.gf, %i.gh
  %i.gj = or disjoint i32 %i.gi, 32               ; 2 uses
  %i.gk = sub nsw i32 32, %i.el
  %i.gl = shl i32 %i.gj, %i.gk
  %i.gm = or i32 %i.gl, %i.em                     ; 2 uses
  %.not.i49 = icmp sgt i32 %i.el, 24
  br i1 %.not.i49, label %put_bits_le.exit52, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = load ptr, ptr %i.ei, align 8, !tbaa !14
  %i.go = load ptr, ptr %i.ej, align 8, !tbaa !13 ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = icmp ugt i64 %i.gr, 3
  br i1 %i.gs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.gm, ptr %i.go, align 1, !tbaa !16
  %i.gt = load ptr, ptr %i.ej, align 8, !tbaa !13
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store ptr %i.gu, ptr %i.ej, align 8, !tbaa !13
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gv = lshr i32 %i.gj, %i.el
  %i.gw = add nsw i32 %i.el, 32
  br label %put_bits_le.exit52

put_bits_le.exit52:                               ; preds = %bb.ah, %bb.al
  %.020.i50 = phi i32 [ %i.gv, %bb.al ], [ %i.gm, %bb.ah ]
  %.0.i51 = phi i32 [ %i.gw, %bb.al ], [ %i.el, %bb.ah ]
  %i.gx = add nsw i32 %.0.i51, -24
  br label %.sink.split

.sink.split:                                      ; preds = %put_bits_le.exit52, %put_bits_le.exit
  %.020.i.sink = phi i32 [ %.020.i, %put_bits_le.exit ], [ %.020.i50, %put_bits_le.exit52 ] ; 2 uses
  %.sink = phi i32 [ %i.ge, %put_bits_le.exit ], [ %i.gx, %put_bits_le.exit52 ] ; 2 uses
  store i32 %.020.i.sink, ptr %i.l, align 8, !tbaa !15
  store i32 %.sink, ptr %i.eh, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.aa
  %i.gy = phi i32 [ %i.el, %bb.aa ], [ %.sink, %.sink.split ] ; 2 uses
  %i.gz = phi i32 [ %i.em, %bb.aa ], [ %.020.i.sink, %.sink.split ] ; 2 uses
  %.1 = phi i32 [ %.04358, %bb.aa ], [ %i.eu, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.am, %encode_dc.exit
  %i.ha = phi i32 [ %i.ea, %encode_dc.exit ], [ %i.gy, %bb.am ] ; 5 uses
  %i.hb = phi i32 [ %i.eb, %encode_dc.exit ], [ %i.gz, %bb.am ]
  %i.hc = sub nsw i32 32, %i.ha
  %i.hd = shl i32 6, %i.hc
  %i.he = or i32 %i.hd, %i.hb                     ; 2 uses
  %.not.i53 = icmp sgt i32 %i.ha, 4
  br i1 %.not.i53, label %put_bits_le.exit56, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !13 ; 2 uses
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = icmp ugt i64 %i.hl, 3
  br i1 %i.hm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.he, ptr %i.hi, align 1, !tbaa !16
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !13
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store ptr %i.ho, ptr %i.hh, align 8, !tbaa !13
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hp = lshr i32 6, %i.ha
  %i.hq = add nsw i32 %i.ha, 32
  br label %put_bits_le.exit56

put_bits_le.exit56:                               ; preds = %._crit_edge, %bb.aq
  %.020.i54 = phi i32 [ %i.hp, %bb.aq ], [ %i.he, %._crit_edge ]
  %.0.i55 = phi i32 [ %i.hq, %bb.aq ], [ %i.ha, %._crit_edge ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.hs = add nsw i32 %.0.i55, -4
  store i32 %.020.i54, ptr %i.l, align 8, !tbaa !15
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !9
  ret void
}

declare void @ff_rl_init_level_run(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_mpeg1_init_uni_ac_vlc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!9 = !{!10, !6, i64 4}
!10 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 16}
!14 = !{!10, !11, i64 24}
!15 = !{!10, !6, i64 0}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !11, i64 8}
!20 = !{!21, !6, i64 10992}
!21 = !{!"SpeedHQEncContext", !22, i64 0, !6, i64 10992}
!22 = !{!"MPVMainEncContext", !23, i64 0, !6, i64 9856, !6, i64 9860, !6, i64 9864, !6, i64 9868, !6, i64 9872, !6, i64 9876, !7, i64 9880, !7, i64 10016, !28, i64 10152, !28, i64 10160, !28, i64 10168, !7, i64 10176, !6, i64 10320, !6, i64 10324, !6, i64 10328, !6, i64 10332, !6, i64 10336, !56, i64 10340, !6, i64 10344, !6, i64 10348, !6, i64 10352, !6, i64 10356, !11, i64 10360, !6, i64 10368, !6, i64 10372, !6, i64 10376, !6, i64 10380, !12, i64 10384, !12, i64 10392, !28, i64 10400, !28, i64 10408, !6, i64 10416, !6, i64 10420, !6, i64 10424, !6, i64 10428, !6, i64 10432, !7, i64 10436, !6, i64 10456, !6, i64 10460, !57, i64 10464, !6, i64 10944, !6, i64 10948, !28, i64 10952, !28, i64 10960, !11, i64 10968, !11, i64 10976, !34, i64 10984}
!23 = !{!"MPVEncContext", !24, i64 0, !10, i64 4384, !6, i64 4416, !6, i64 4420, !33, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !46, i64 4464, !49, i64 4472, !50, i64 4480, !51, i64 4496, !52, i64 4576, !53, i64 4608, !6, i64 5896, !6, i64 5900, !34, i64 5904, !34, i64 5912, !34, i64 5920, !34, i64 5928, !34, i64 5936, !34, i64 5944, !7, i64 5952, !7, i64 6016, !7, i64 6032, !34, i64 6064, !34, i64 6072, !34, i64 6080, !11, i64 6088, !7, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !11, i64 6144, !11, i64 6152, !11, i64 6160, !11, i64 6168, !11, i64 6176, !11, i64 6184, !11, i64 6192, !7, i64 6200, !34, i64 6248, !33, i64 6256, !33, i64 6264, !33, i64 6272, !34, i64 6280, !34, i64 6288, !34, i64 6296, !33, i64 6304, !7, i64 6312, !34, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !7, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !11, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !55, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !10, i64 6456, !10, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !11, i64 6544, !12, i64 6552, !12, i64 6560, !7, i64 6568, !7, i64 6584, !7, i64 6600, !7, i64 6616, !12, i64 6632, !6, i64 6640, !7, i64 6644, !7, i64 6708, !7, i64 6784}
!24 = !{!"MpegEncContext", !25, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !26, i64 72, !26, i64 208, !27, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !28, i64 416, !28, i64 424, !29, i64 432, !30, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !31, i64 768, !31, i64 888, !31, i64 1008, !34, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !34, i64 1176, !34, i64 1184, !34, i64 1192, !6, i64 1200, !11, i64 1208, !11, i64 1216, !11, i64 1224, !11, i64 1232, !35, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !36, i64 1288, !37, i64 1320, !38, i64 1384, !39, i64 1768, !40, i64 1888, !41, i64 2656, !42, i64 2672, !34, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !33, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !28, i64 3744, !28, i64 3752, !43, i64 3760, !43, i64 3762, !43, i64 3764, !43, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !44, i64 3912}
!25 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!26 = !{!"ScanTable", !11, i64 0, !7, i64 8, !7, i64 72}
!27 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!30 = !{!"BufferPoolContext", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!31 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !32, i64 48, !11, i64 56, !7, i64 64, !33, i64 80, !11, i64 88, !7, i64 96, !6, i64 112}
!32 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!33 = !{!"p1 int", !12, i64 0}
!34 = !{!"p1 short", !12, i64 0}
!35 = !{!"ScratchpadContext", !11, i64 0, !11, i64 8, !7, i64 16, !6, i64 24}
!36 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!37 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!38 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!39 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!40 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!41 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!42 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!43 = !{!"short", !7, i64 0}
!44 = !{!"ERContext", !27, i64 0, !12, i64 8, !33, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !28, i64 40, !28, i64 48, !7, i64 56, !6, i64 60, !11, i64 64, !11, i64 72, !7, i64 80, !11, i64 104, !11, i64 112, !7, i64 120, !45, i64 184, !45, i64 256, !45, i64 328, !7, i64 400, !7, i64 416, !43, i64 432, !43, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!45 = !{!"ERPicture", !46, i64 0, !47, i64 8, !48, i64 16, !7, i64 24, !7, i64 40, !33, i64 56, !6, i64 64}
!46 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!47 = !{!"p1 _ZTS11ThreadFrame", !12, i64 0}
!48 = !{!"p1 _ZTS14ThreadProgress", !12, i64 0}
!49 = !{!"p1 _ZTS17MPVMainEncContext", !12, i64 0}
!50 = !{!"FDCTDSPContext", !12, i64 0, !12, i64 8}
!51 = !{!"MpegvideoEncDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !12, i64 72}
!52 = !{!"PixblockDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!53 = !{!"MotionEstContext", !27, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 48, !11, i64 80, !11, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 168, !7, i64 296, !6, i64 424, !6, i64 428, !28, i64 432, !28, i64 440, !6, i64 448, !7, i64 456, !7, i64 504, !7, i64 552, !7, i64 600, !7, i64 648, !12, i64 712, !54, i64 720, !54, i64 728, !54, i64 736, !54, i64 744, !11, i64 752, !11, i64 760, !12, i64 768, !7, i64 776, !7, i64 1032}
!54 = !{!"any p2 pointer", !12, i64 0}
!55 = !{!"p1 _ZTS12MJpegContext", !12, i64 0}
!56 = !{!"float", !7, i64 0}
!57 = !{!"RateControlContext", !6, i64 0, !58, i64 8, !59, i64 16, !7, i64 24, !59, i64 144, !59, i64 152, !59, i64 160, !59, i64 168, !59, i64 176, !7, i64 184, !28, i64 224, !28, i64 232, !7, i64 240, !7, i64 280, !7, i64 320, !7, i64 360, !7, i64 400, !6, i64 420, !56, i64 424, !56, i64 428, !6, i64 432, !56, i64 436, !56, i64 440, !11, i64 448, !60, i64 456, !61, i64 464, !61, i64 472}
!58 = !{!"p1 _ZTS16RateControlEntry", !12, i64 0}
!59 = !{!"double", !7, i64 0}
!60 = !{!"p1 _ZTS6AVExpr", !12, i64 0}
!61 = !{!"p1 float", !12, i64 0}
!62 = !{!23, !11, i64 4392}
!63 = !{!64, !12, i64 32}
!64 = !{!"AVCodecContext", !25, i64 0, !6, i64 8, !6, i64 12, !65, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !66, i64 40, !12, i64 48, !28, i64 56, !6, i64 64, !6, i64 68, !11, i64 72, !6, i64 80, !67, i64 84, !67, i64 92, !67, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !67, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !34, i64 288, !34, i64 296, !34, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !68, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !56, i64 428, !56, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !69, i64 456, !28, i64 464, !28, i64 472, !56, i64 480, !56, i64 484, !6, i64 488, !6, i64 492, !11, i64 496, !11, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !70, i64 536, !12, i64 544, !71, i64 552, !71, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !72, i64 728, !11, i64 736, !6, i64 744, !6, i64 748, !11, i64 752, !11, i64 760, !11, i64 768, !73, i64 776, !6, i64 784, !6, i64 788, !28, i64 792, !6, i64 800, !6, i64 804, !28, i64 808, !12, i64 816, !28, i64 824, !33, i64 832, !6, i64 840, !74, i64 848, !6, i64 856, !6, i64 860}
!65 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!66 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!67 = !{!"AVRational", !6, i64 0, !6, i64 4}
!68 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!69 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!70 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!71 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!72 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!73 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!74 = !{!"p2 _ZTS15AVFrameSideData", !54, i64 0}
!75 = !{!64, !6, i64 112}
!76 = !{!64, !6, i64 116}
!77 = !{!64, !6, i64 136}
!78 = !{!64, !6, i64 28}
!79 = !{!22, !12, i64 10392}
!80 = !{!23, !12, i64 6552}
!81 = !{!6, !6, i64 0}
!82 = !{!11, !11, i64 0}
!83 = !{!23, !11, i64 1144}
!84 = !{!23, !11, i64 1136}
!85 = !{!23, !6, i64 1272}
!86 = !{!23, !6, i64 3856}
!87 = !{!23, !6, i64 6352}
!88 = !{!23, !6, i64 6336}
!89 = !{!43, !43, i64 0}
!90 = distinct !{!90, !18}
!91 = distinct !{!91, !18}
end_hunk_0
