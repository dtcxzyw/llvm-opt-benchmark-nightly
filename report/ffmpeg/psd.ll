Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/psd?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"psd\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Photoshop PSD file\00", align 1
@ff_psd_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 215, i32 4098, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1136, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Invalid bitmap file (channel_depth %d, channel_count %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Invalid indexed file (channel_depth %d, channel_count %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"channel depth %d for cmyk\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Invalid cmyk file (channel_count %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"channel depth %d for rgb\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Invalid rgb file (channel_count %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ignoring unknown duotone specification.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"channel depth %d for grayscale\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Invalid grayscale file (channel_count %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"color mode %d\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Not enough data for raw image data section.\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Header too short to parse.\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Wrong signature %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Wrong version %d.\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Invalid channel count %d.\0A\00", align 1
@.str.20 = private unnamed_addr constant [92 x i8] c"Height > 30000 is experimental, add '-strict %d' if you want to try to decode the picture.\0A\00", align 1
@.str.21 = private unnamed_addr constant [91 x i8] c"Width > 30000 is experimental, add '-strict %d' if you want to try to decode the picture.\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Unknown color mode %d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Incomplete file.\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"File without image data section.\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"ZIP without predictor compression\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"ZIP with predictor compression\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Unknown compression %d.\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Not enough data for rle scanline table.\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Not enough data for rle scanline.\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Invalid rle char.\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 50397186, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 16 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 58 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 13 uses
  store i64 0, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 5 uses
  store i16 0, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 51 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.h, i8 0, i64 14, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !57   ; 3 uses
  %i.p = icmp ne ptr %i.m, null
  %i.q = icmp sgt i32 %i.o, -1
  %or.cond.i = and i1 %i.p, %i.q
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.m, ptr %i.k, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.m, ptr %i.r, align 8, !tbaa !59
  %i.s = zext nneg i32 %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !60
  %i.v = icmp samesign ult i32 %i.o, 30
  br i1 %i.v, label %bb.c, label %bytestream2_get_le32.exit.i

bb.c:                                             ; preds = %bytestream2_init.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16) #7
  br label %decode_header.exit.thread

bytestream2_get_le32.exit.i:                      ; preds = %bytestream2_init.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.k, align 8, !tbaa !61
  %i.x = load i32, ptr %i.m, align 1, !tbaa !62   ; 2 uses
  %.not.i = icmp eq i32 %i.x, 1397768760
  br i1 %.not.i, label %bytestream2_get_be16.exit125.i, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_le32.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %i.x) #7
  br label %decode_header.exit.thread

bytestream2_get_be16.exit125.i:                   ; preds = %bytestream2_get_le32.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store ptr %i.y, ptr %i.k, align 8, !tbaa !61
  %i.z = load i16, ptr %i.w, align 1, !tbaa !62   ; 2 uses
  %.not112.i = icmp eq i16 %i.z, 256
  br i1 %.not112.i, label %bytestream2_get_be16.exit123.i, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_be16.exit125.i
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.ab) #7
  br label %decode_header.exit.thread

bytestream2_get_be16.exit123.i:                   ; preds = %bytestream2_get_be16.exit125.i
  %i.ac = getelementptr i8, ptr %i.m, i64 12
  %i.ad = getelementptr i8, ptr %i.m, i64 14      ; 2 uses
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !61
  %i.ae = load i16, ptr %i.ac, align 1, !tbaa !62 ; 2 uses
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 3 uses
  store i16 %i.af, ptr %i.e, align 8, !tbaa !63
  %i.ag = icmp eq i16 %i.ae, 0
  %i.ah = icmp ugt i16 %i.af, 56
  %or.cond.i311 = or i1 %i.ag, %i.ah
  br i1 %or.cond.i311, label %bb.f, label %bytestream2_get_be32.exit138.i

bb.f:                                             ; preds = %bytestream2_get_be16.exit123.i
  %i.ai = zext i16 %i.af to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.ai) #7
  br label %decode_header.exit.thread

bytestream2_get_be32.exit138.i:                   ; preds = %bytestream2_get_be16.exit123.i
  %i.aj = getelementptr i8, ptr %i.m, i64 18      ; 2 uses
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !61
  %i.ak = load i32, ptr %i.ad, align 1, !tbaa !62
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak) ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 %i.al, ptr %i.am, align 4, !tbaa !64
  %i.an = icmp sgt i32 %i.al, 30000
  br i1 %i.an, label %bb.g, label %bytestream2_get_be32.exit136.i

bb.g:                                             ; preds = %bytestream2_get_be32.exit138.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !65
  %i.aq = icmp sgt i32 %i.ap, -2
  br i1 %i.aq, label %bb.h, label %bytestream2_get_be32.exit136.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef -2) #7
  br label %decode_header.exit.thread

bytestream2_get_be32.exit136.i:                   ; preds = %bytestream2_get_be32.exit138.i, %bb.g
  %i.ar = getelementptr i8, ptr %i.m, i64 22
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !61
  %i.as = load i32, ptr %i.aj, align 1, !tbaa !62
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.at, ptr %i.au, align 8, !tbaa !66
  %i.av = icmp sgt i32 %i.at, 30000
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bytestream2_get_be32.exit136.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !65
  %i.ay = icmp sgt i32 %i.ax, -2
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef -2) #7
  br label %decode_header.exit.thread

bb.k:                                             ; preds = %bb.i, %bytestream2_get_be32.exit136.i
  %i.az = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %i.al) #7 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %decode_header.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !60  ; 8 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 7 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp slt i64 %i.bf, 2
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_be16.exit121.i

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 3 uses
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !61
  %i.bi = load i16, ptr %i.bc, align 1, !tbaa !62
  %i.bj = tail call i16 @llvm.bswap.i16(i16 %i.bi)
  %.pre176.i = ptrtoint ptr %i.bh to i64
  br label %bytestream2_get_be16.exit121.i

bytestream2_get_be16.exit121.i:                   ; preds = %bb.n, %bb.m
  %.pre-phi.i = phi i64 [ %i.bd, %bb.m ], [ %.pre176.i, %bb.n ]
  %i.bk = phi ptr [ %i.bb, %bb.m ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bl = phi i16 [ 0, %bb.m ], [ %i.bj, %bb.n ]  ; 14 uses
  store i16 %i.bl, ptr %i.f, align 2, !tbaa !67
  %i.bm = sub i64 %i.bd, %.pre-phi.i
  %i.bn = icmp slt i64 %i.bm, 2
  br i1 %i.bn, label %bytestream2_get_be16.exit119.thread.i, label %bytestream2_get_be16.exit119.i

bytestream2_get_be16.exit119.thread.i:            ; preds = %bytestream2_get_be16.exit121.i
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !58
  br label %bb.w

bytestream2_get_be16.exit119.i:                   ; preds = %bytestream2_get_be16.exit121.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 9 uses
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !61
  %i.bp = load i16, ptr %i.bk, align 1, !tbaa !62
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %i.bp) ; 2 uses
  switch i16 %i.bq, label %bb.v [
    i16 0, label %bb.w
    i16 1, label %bb.o
    i16 2, label %bb.p
    i16 3, label %bb.q
    i16 4, label %bb.r
    i16 7, label %bb.s
    i16 8, label %bb.t
    i16 9, label %bb.u
  ]

bb.o:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.p:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.q:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.r:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.s:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.t:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.u:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.v:                                             ; preds = %bytestream2_get_be16.exit119.i
  %i.br = zext i16 %i.bq to i32
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bs, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %i.br) #7
  br label %decode_header.exit.thread

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bytestream2_get_be16.exit119.i, %bytestream2_get_be16.exit119.thread.i
  %.sink.i = phi i32 [ 7, %bb.u ], [ 6, %bb.t ], [ 5, %bb.s ], [ 4, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bytestream2_get_be16.exit119.thread.i ], [ 0, %bytestream2_get_be16.exit119.i ]
  %i.bt = phi ptr [ %i.bo, %bb.u ], [ %i.bo, %bb.t ], [ %i.bo, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %bb.q ], [ %i.bo, %bb.p ], [ %i.bo, %bb.o ], [ %i.bb, %bytestream2_get_be16.exit119.thread.i ], [ %i.bo, %bytestream2_get_be16.exit119.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  store i32 %.sink.i, ptr %i.bu, align 8, !tbaa !68
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bd, %i.bv
  %i.bx = icmp slt i64 %i.bw, 4
  br i1 %i.bx, label %bytestream2_get_be32.exit134.thread.i, label %bytestream2_get_be32.exit134.i

bytestream2_get_be32.exit134.i:                   ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 6 uses
  store ptr %i.by, ptr %i.k, align 8, !tbaa !61
  %i.bz = load i32, ptr %i.bt, align 1, !tbaa !62 ; 2 uses
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz) ; 4 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.bd, %i.cc                    ; 3 uses
  %i.ce = shl i64 %i.cd, 32
  %i.cf = ashr exact i64 %i.ce, 32
  %i.cg = add nuw nsw i64 %i.cb, 4
  %i.ch = icmp sgt i64 %i.cg, %i.cf
  br i1 %i.ch, label %bb.x, label %bb.y

bytestream2_get_be32.exit134.thread.i:            ; preds = %bb.w
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !58
  br label %bb.x

bb.x:                                             ; preds = %bytestream2_get_be32.exit134.thread.i, %bytestream2_get_be32.exit134.i
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ci, i32 noundef 16, ptr noundef nonnull @.str.24) #7
  br label %decode_header.exit.thread

bb.y:                                             ; preds = %bytestream2_get_be32.exit134.i
  %.not113.i = icmp eq i32 %i.bz, 0
  br i1 %.not113.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cj, i8 -1, i64 1024, i1 false)
  %i.ck = icmp ult i32 %i.ca, 768
  %i.cl = udiv i32 %i.ca, 3
  %narrow.i = select i1 %i.ck, i32 %i.cl, i32 256 ; 6 uses
  %i.cm = zext nneg i32 %narrow.i to i64          ; 7 uses
  %.not165.i = icmp eq i32 %narrow.i, 0
  br i1 %.not165.i, label %.split164.us.i, label %.preheader.us.preheader.i.preheader

.preheader.us.preheader.i.preheader:              ; preds = %bb.z
  %i.cn = add nsw i64 %i.cm, -1                   ; 2 uses
  %xtraiter = and i64 %i.cm, 3                    ; 3 uses
  %i.co = icmp samesign ult i32 %narrow.i, 4
  br i1 %i.co, label %.preheader.us.preheader.i.epil.preheader, label %.preheader.us.preheader.i.preheader.new

.preheader.us.preheader.i.preheader.new:          ; preds = %.preheader.us.preheader.i.preheader
  %unroll_iter = and i64 %i.cm, 2147483644
  br label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.us.preheader.i, %.preheader.us.preheader.i.preheader.new
  %i.cp = phi ptr [ %i.by, %.preheader.us.preheader.i.preheader.new ], [ %i.dg, %.preheader.us.preheader.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.preheader.new ], [ %indvars.iv.next.i.3, %.preheader.us.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.us.preheader.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  store ptr %i.cq, ptr %i.k, align 8, !tbaa !61
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !62
  %i.cs = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ct = and i64 %i.cs, 4294967280
  %i.cu = getelementptr i8, ptr %i.cj, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  store i8 %i.cr, ptr %i.cv, align 1, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 2 ; 2 uses
  store ptr %i.cw, ptr %i.k, align 8, !tbaa !61
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !62
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 2
  %i.cy = and i64 %indvars.iv.next.i, 4294967280
  %i.cz = getelementptr i8, ptr %i.cj, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 6
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 3 ; 2 uses
  store ptr %i.db, ptr %i.k, align 8, !tbaa !61
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !62
  %indvars.iv.next.i.1 = shl i64 %indvars.iv.i, 2
  %i.dd = and i64 %indvars.iv.next.i.1, 4294967280
  %i.de = getelementptr i8, ptr %i.cj, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 10
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.in, align 8, !tbaa !74
  br label %bb.cc

bb.av:                                            ; preds = %decode_header.exit
  %i.io = load i16, ptr %i.j, align 8, !tbaa !54
  %i.ip = icmp slt i16 %i.io, 0
  %i.iq = load i16, ptr %i.e, align 8, !tbaa !63  ; 5 uses
  %i.ir = icmp ugt i16 %i.iq, 4
  %or.cond543 = select i1 %i.ip, i1 %i.ir, i1 false
  br i1 %or.cond543, label %bb.aw, label %thread-pre-split

bb.aw:                                            ; preds = %bb.av
  switch i16 %i.bl, label %bb.ay [
    i16 8, label %bb.az
    i16 16, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.is = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.is) #7
  br label %decode_header.exit.thread

bb.az:                                            ; preds = %bb.aw, %bb.ax
  %.sink = phi i32 [ 112, %bb.ax ], [ 111, %bb.aw ]
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.it, align 8, !tbaa !74
  store i16 5, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

thread-pre-split:                                 ; preds = %bb.av
  %i.iu = icmp ugt i16 %i.iq, 3
  br i1 %i.iu, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %thread-pre-split
  switch i16 %i.bl, label %bb.bc [
    i16 8, label %bb.bd
    i16 16, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.iv = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.iv) #7
  br label %decode_header.exit.thread

bb.bd:                                            ; preds = %bb.ba, %bb.bb
  %.sink528 = phi i32 [ 76, %bb.bb ], [ 71, %bb.ba ]
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink528, ptr %i.iw, align 8, !tbaa !74
  store i16 4, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

bb.be:                                            ; preds = %thread-pre-split
  %i.ix = zext nneg i16 %i.iq to i32
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.iy, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.ix) #7
  br label %decode_header.exit.thread

bb.bf:                                            ; preds = %decode_header.exit
  %i.iz = load i16, ptr %i.j, align 8, !tbaa !54
  %i.ja = icmp slt i16 %i.iz, 0
  %i.jb = load i16, ptr %i.e, align 8, !tbaa !63  ; 5 uses
  %i.jc = icmp ugt i16 %i.jb, 3
  %or.cond544 = select i1 %i.ja, i1 %i.jc, i1 false
  br i1 %or.cond544, label %bb.bg, label %thread-pre-split318

bb.bg:                                            ; preds = %bb.bf
  switch i16 %i.bl, label %bb.bi [
    i16 8, label %bb.bj
    i16 16, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.jd = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.jd) #7
  br label %decode_header.exit.thread

bb.bj:                                            ; preds = %bb.bg, %bb.bh
  %.sink530 = phi i32 [ 112, %bb.bh ], [ 111, %bb.bg ]
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink530, ptr %i.je, align 8, !tbaa !74
  store i16 4, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

thread-pre-split318:                              ; preds = %bb.bf
  %i.jf = icmp ugt i16 %i.jb, 2
  br i1 %i.jf, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %thread-pre-split318
  switch i16 %i.bl, label %bb.bm [
    i16 8, label %bb.bn
    i16 16, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.jg = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.jg) #7
  br label %decode_header.exit.thread

bb.bn:                                            ; preds = %bb.bk, %bb.bl
  %.sink532 = phi i32 [ 76, %bb.bl ], [ 71, %bb.bk ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink532, ptr %i.jh, align 8, !tbaa !74
  store i16 3, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

bb.bo:                                            ; preds = %thread-pre-split318
  %i.ji = zext nneg i16 %i.jb to i32
  %i.jj = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jj, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.ji) #7
  br label %decode_header.exit.thread

bb.bp:                                            ; preds = %decode_header.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #7
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %decode_header.exit
  %i.jk = load i16, ptr %i.j, align 8, !tbaa !54
  %i.jl = icmp slt i16 %i.jk, 0
  %i.jm = load i16, ptr %i.e, align 8, !tbaa !63  ; 4 uses
  %i.jn = icmp ugt i16 %i.jm, 1
  %or.cond545 = select i1 %i.jl, i1 %i.jn, i1 false
  br i1 %or.cond545, label %bb.br, label %thread-pre-split320

bb.br:                                            ; preds = %bb.bq
  %i.jo = load i16, ptr %i.f, align 2, !tbaa !67  ; 2 uses
  switch i16 %i.jo, label %bb.bt [
    i16 8, label %bb.bu
    i16 16, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.jp = zext i16 %i.jo to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.jp) #7
  br label %decode_header.exit.thread

bb.bu:                                            ; preds = %bb.br, %bb.bs
  %.sink534 = phi i32 [ 109, %bb.bs ], [ 56, %bb.br ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink534, ptr %i.jq, align 8, !tbaa !74
  store i16 2, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

thread-pre-split320:                              ; preds = %bb.bq
  %.not = icmp eq i16 %i.jm, 0
  br i1 %.not, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %thread-pre-split320
  %i.jr = load i16, ptr %i.f, align 2, !tbaa !67  ; 2 uses
  switch i16 %i.jr, label %bb.by [
    i16 8, label %bb.bz
    i16 16, label %bb.bw
    i16 32, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv
  %i.js = zext i16 %i.jr to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.js) #7
  br label %decode_header.exit.thread

bb.bz:                                            ; preds = %bb.bv, %bb.bw, %bb.bx
  %.sink536 = phi i32 [ 29, %bb.bw ], [ 182, %bb.bx ], [ 8, %bb.bv ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink536, ptr %i.jt, align 8, !tbaa !74
  store i16 1, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

bb.ca:                                            ; preds = %thread-pre-split320
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ju, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0) #7
  br label %decode_header.exit.thread

bb.cb:                                            ; preds = %decode_header.exit
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.ia) #7
  br label %decode_header.exit.thread

bb.cc:                                            ; preds = %bb.bu, %bb.bz, %bb.bj, %bb.bn, %bb.az, %bb.bd, %bb.au, %bb.ar
  %i.jv = phi i16 [ %i.jm, %bb.bu ], [ %i.jm, %bb.bz ], [ %i.jb, %bb.bj ], [ %i.jb, %bb.bn ], [ %i.iq, %bb.az ], [ %i.iq, %bb.bd ], [ %.pre, %bb.au ], [ %.pre438, %bb.ar ]
  %i.jw = load i64, ptr %i.i, align 8, !tbaa !53
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 12 uses
  %i.jx = load i32, ptr %4, align 4, !tbaa !64
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul i64 %i.jw, %i.jy
  %i.ka = zext i16 %i.jv to i64
  %i.kb = mul i64 %i.jz, %i.ka                    ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !75
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !71
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.kg = tail call noalias ptr @av_malloc(i64 noundef %i.kb) #7 ; 4 uses
  store ptr %i.kg, ptr %i.h, align 8, !tbaa !76
  %.not310 = icmp eq ptr %i.kg, null
  br i1 %.not310, label %decode_header.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kh = load i32, ptr %4, align 4, !tbaa !64
  %i.ki = load i16, ptr %i.e, align 8, !tbaa !63
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nsw i32 %i.kh, %i.kj                ; 3 uses
  %i.kl = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.km = load ptr, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 2 uses
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = shl i32 %i.kk, 1                        ; 2 uses
  %i.ks = icmp ugt i32 %i.kr, %i.kq
  br i1 %i.ks, label %.loopexit335, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kt = zext i32 %i.kr to i64
  %..i.i312 = tail call i64 @llvm.smin.i64(i64 %i.kp, i64 %i.kt)
  %i.ku = getelementptr inbounds i8, ptr %i.km, i64 %..i.i312
  store ptr %i.ku, ptr %i.k, align 8, !tbaa !58
  %.not79.i = icmp eq i32 %i.kk, 0
  br i1 %.not79.i, label %decode_rle.exit.thread, label %.preheader66.lr.ph.i

.preheader66.lr.ph.i:                             ; preds = %bb.cf
  %i.kv = load i64, ptr %i.i, align 8, !tbaa !53
  %.not80.i = icmp eq i64 %i.kv, 0
  br i1 %.not80.i, label %decode_rle.exit.thread, label %.preheader66.i

.preheader66.i:                                   ; preds = %.preheader66.lr.ph.i, %._crit_edge.i
  %i.kw = phi i64 [ %i.no, %._crit_edge.i ], [ 1, %.preheader66.lr.ph.i ]
  %.04678.i = phi i64 [ %.147.lcssa.i, %._crit_edge.i ], [ 0, %.preheader66.lr.ph.i ] ; 2 uses
  %.05077.i = phi i32 [ %i.np, %._crit_edge.i ], [ 0, %.preheader66.lr.ph.i ]
  %.not81.i = icmp eq i64 %i.kw, 0
  br i1 %.not81.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader66.i, %bb.cp
  %.14776.i = phi i64 [ %.4.i, %bb.cp ], [ %.04678.i, %.preheader66.i ] ; 7 uses
  %.04875.i = phi i32 [ %.149.i, %bb.cp ], [ 0, %.preheader66.i ] ; 2 uses
  %i.kx = load ptr, ptr %i.u, align 8, !tbaa !60  ; 4 uses
  %i.ky = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %i.kz = ptrtoint ptr %i.kx to i64               ; 4 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = icmp slt i64 %i.lb, 1
  br i1 %i.lc, label %bytestream2_get_byte.exit63.thread.i, label %bytestream2_get_byte.exit63.i

bytestream2_get_byte.exit63.thread.i:             ; preds = %.lr.ph.i
  store ptr %i.kx, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_byte.exit63._crit_edge.i

bytestream2_get_byte.exit63.i:                    ; preds = %.lr.ph.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 1 ; 3 uses
  store ptr %i.ld, ptr %i.k, align 8, !tbaa !61
  %i.le = load i8, ptr %i.ky, align 1, !tbaa !62  ; 3 uses
  %i.lf = zext nneg i8 %i.le to i64
  %i.lg = sext i8 %i.le to i32                    ; 4 uses
  %i.lh = icmp slt i8 %i.le, 1
  %.pre.i313 = ptrtoint ptr %i.ld to i64          ; 2 uses
  br i1 %i.lh, label %bytestream2_get_byte.exit63._crit_edge.i, label %bb.ck

bytestream2_get_byte.exit63._crit_edge.i:         ; preds = %bytestream2_get_byte.exit63.i, %bytestream2_get_byte.exit63.thread.i
  %.pre-phi.i316 = phi i64 [ %i.kz, %bytestream2_get_byte.exit63.thread.i ], [ %.pre.i313, %bytestream2_get_byte.exit63.i ]
  %i.li = phi ptr [ %i.kx, %bytestream2_get_byte.exit63.thread.i ], [ %i.ld, %bytestream2_get_byte.exit63.i ] ; 2 uses
  %i.lj = phi i32 [ 0, %bytestream2_get_byte.exit63.thread.i ], [ %i.lg, %bytestream2_get_byte.exit63.i ] ; 5 uses
  %i.lk = sub i64 %i.kz, %.pre-phi.i316           ; 2 uses
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = icmp slt i32 %i.ll, 1
  br i1 %i.lm, label %.loopexit335, label %bb.cg

bb.cg:                                            ; preds = %bytestream2_get_byte.exit63._crit_edge.i
  %i.ln = sub nsw i32 0, %i.lj
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = add i64 %.14776.i, %i.lo
  %i.lq = load i64, ptr %i.kc, align 8, !tbaa !75
  %.not58.i = icmp ult i64 %i.lp, %i.lq
  br i1 %.not58.i, label %bb.ch, label %.loopexit335

bb.ch:                                            ; preds = %bb.cg
  %i.lr = icmp slt i64 %i.lk, 1
  br i1 %i.lr, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.kx, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_byte.exit61.i

bb.cj:                                            ; preds = %bb.ch
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  store ptr %i.ls, ptr %i.k, align 8, !tbaa !61
  %i.lt = load i8, ptr %i.li, align 1, !tbaa !62
  br label %bytestream2_get_byte.exit61.i

bytestream2_get_byte.exit61.i:                    ; preds = %bb.cj, %bb.ci
  %.0.i60.i = phi i8 [ 0, %bb.ci ], [ %i.lt, %bb.cj ] ; 5 uses
  %i.lu = trunc i64 %.14776.i to i32
  %i.lv = add i32 %i.lu, 1
  %i.lw = sub i32 %i.lv, %i.lj
  %i.lx = sub nsw i32 1, %i.lj
  %xtraiter599 = and i32 %i.lx, 3                 ; 2 uses
  %lcmp.mod600.not = icmp eq i32 %xtraiter599, 0
  br i1 %lcmp.mod600.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bytestream2_get_byte.exit61.i, %.prol.preheader
  %.273.i.prol = phi i64 [ %i.lz, %.prol.preheader ], [ %.14776.i, %bytestream2_get_byte.exit61.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bytestream2_get_byte.exit61.i ]
  %i.ly = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.lz = add i64 %.273.i.prol, 1                 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.273.i.prol
  store i8 %.0.i60.i, ptr %i.ma, align 1, !tbaa !62
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter599
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %bytestream2_get_byte.exit61.i
  %.lcssa584.unr = phi i64 [ poison, %bytestream2_get_byte.exit61.i ], [ %i.lz, %.prol.preheader ]
  %.273.i.unr = phi i64 [ %.14776.i, %bytestream2_get_byte.exit61.i ], [ %i.lz, %.prol.preheader ]
  %i.mb = add nsw i32 %i.lj, 2
  %i.mc = icmp ult i32 %i.mb, 3
  br i1 %i.mc, label %.unr-lcssa, label %bytestream2_get_byte.exit61.i.new

bytestream2_get_byte.exit61.i.new:                ; preds = %.prol.loopexit, %bytestream2_get_byte.exit61.i.new
  %.273.i = phi i64 [ %i.mm, %bytestream2_get_byte.exit61.i.new ], [ %.273.i.unr, %.prol.loopexit ] ; 5 uses
  %i.md = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %.273.i
  store i8 %.0.i60.i, ptr %i.me, align 1, !tbaa !62
  %i.mf = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.mg = getelementptr i8, ptr %i.mf, i64 %.273.i
  %i.mh = getelementptr i8, ptr %i.mg, i64 1
  store i8 %.0.i60.i, ptr %i.mh, align 1, !tbaa !62
  %i.mi = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.mj = getelementptr i8, ptr %i.mi, i64 %.273.i
  %i.mk = getelementptr i8, ptr %i.mj, i64 2
  store i8 %.0.i60.i, ptr %i.mk, align 1, !tbaa !62
  %i.ml = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.mm = add i64 %.273.i, 4                      ; 3 uses
  %i.mn = getelementptr i8, ptr %i.ml, i64 %.273.i
  %i.mo = getelementptr i8, ptr %i.mn, i64 3
  store i8 %.0.i60.i, ptr %i.mo, align 1, !tbaa !62
  %lftr.wideiv411.3 = trunc i64 %i.mm to i32
  %exitcond412.3 = icmp eq i32 %i.lw, %lftr.wideiv411.3
  br i1 %exitcond412.3, label %.unr-lcssa, label %bytestream2_get_byte.exit61.i.new, !llvm.loop !12

.unr-lcssa:                                       ; preds = %bytestream2_get_byte.exit61.i.new, %.prol.loopexit
  %.lcssa584 = phi i64 [ %.lcssa584.unr, %.prol.loopexit ], [ %i.mm, %bytestream2_get_byte.exit61.i.new ]
  %reass.sub.i = add i32 %.04875.i, 1
  %i.mp = sub i32 %reass.sub.i, %i.lj
  br label %bb.cp

bb.ck:                                            ; preds = %bytestream2_get_byte.exit63.i
  %i.mq = sub i64 %i.kz, %.pre.i313
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = icmp slt i32 %i.mr, %i.lg
  br i1 %i.ms, label %.loopexit335, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mt = add i64 %.14776.i, %i.lf
  %i.mu = load i64, ptr %i.kc, align 8, !tbaa !75
  %.not.i314 = icmp ult i64 %i.mt, %i.mu
  br i1 %.not.i314, label %.preheader.preheader.i, label %.loopexit335

.preheader.preheader.i:                           ; preds = %bb.cl
  %i.mv = trunc i64 %.14776.i to i32
  %i.mw = add i32 %i.mv, 1
  %i.mx = add i32 %i.mw, %i.lg
  br label %.preheader.i

.preheader.i:                                     ; preds = %bytestream2_get_byte.exit.i, %.preheader.preheader.i
  %.371.i = phi i64 [ %i.nh, %bytestream2_get_byte.exit.i ], [ %.14776.i, %.preheader.preheader.i ] ; 2 uses
  %i.my = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %i.mz = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = icmp slt i64 %i.nc, 1
  br i1 %i.nd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.preheader.i
  store ptr %i.my, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_byte.exit.i

bb.cn:                                            ; preds = %.preheader.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  store ptr %i.ne, ptr %i.k, align 8, !tbaa !61
  %i.nf = load i8, ptr %i.mz, align 1, !tbaa !62
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.cn, %bb.cm
  %.0.i.i = phi i8 [ 0, %bb.cm ], [ %i.nf, %bb.cn ]
  %i.ng = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.nh = add i64 %.371.i, 1                      ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.371.i
  store i8 %.0.i.i, ptr %i.ni, align 1, !tbaa !62
  %lftr.wideiv = trunc i64 %i.nh to i32
  %exitcond = icmp eq i32 %i.mx, %lftr.wideiv
  br i1 %exitcond, label %bb.co, label %.preheader.i, !llvm.loop !13

bb.co:                                            ; preds = %bytestream2_get_byte.exit.i
  %i.nj = add i32 %.04875.i, 1
  %i.nk = add i32 %i.nj, %i.lg
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.unr-lcssa
  %.149.i = phi i32 [ %i.mp, %.unr-lcssa ], [ %i.nk, %bb.co ] ; 2 uses
  %.4.i = phi i64 [ %.lcssa584, %.unr-lcssa ], [ %i.nh, %bb.co ] ; 2 uses
  %i.nl = zext i32 %.149.i to i64
  %i.nm = load i64, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, %i.nl
  br i1 %i.nn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.cp, %.preheader66.i
  %i.no = phi i64 [ 0, %.preheader66.i ], [ %i.nm, %bb.cp ]
  %.147.lcssa.i = phi i64 [ %.04678.i, %.preheader66.i ], [ %.4.i, %bb.cp ]
  %i.np = add nuw i32 %.05077.i, 1                ; 2 uses
  %exitcond86.not.i = icmp eq i32 %i.np, %i.kk
  br i1 %exitcond86.not.i, label %decode_rle.exit.thread.loopexit, label %.preheader66.i, !llvm.loop !15

.loopexit335:                                     ; preds = %bb.cl, %bb.ck, %bb.cg, %bytestream2_get_byte.exit63._crit_edge.i, %bb.ce
  %.str.33.sink.i = phi ptr [ @.str.31, %bb.ce ], [ @.str.33, %bb.cl ], [ @.str.32, %bytestream2_get_byte.exit63._crit_edge.i ], [ @.str.33, %bb.cg ], [ @.str.32, %bb.ck ]
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nq, i32 noundef 16, ptr noundef nonnull %.str.33.sink.i) #7
  tail call void @av_freep(ptr noundef nonnull %i.h) #7
  br label %decode_header.exit.thread

bb.cq:                                            ; preds = %bb.cc
  %i.nr = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.ns = load ptr, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = shl i64 %i.nv, 32
  %i.nx = ashr exact i64 %i.nw, 32
  %i.ny = icmp ugt i64 %i.kb, %i.nx
  br i1 %i.ny, label %bb.cr, label %decode_rle.exit.thread

bb.cr:                                            ; preds = %bb.cq
  %i.nz = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nz, i32 noundef 16, ptr noundef nonnull @.str.12) #7
  br label %decode_header.exit.thread

decode_rle.exit.thread.loopexit:                  ; preds = %._crit_edge.i
  %.0282.pre = load ptr, ptr %i.h, align 8, !tbaa !61
  br label %decode_rle.exit.thread

decode_rle.exit.thread:                           ; preds = %decode_rle.exit.thread.loopexit, %bb.cf, %.preheader66.lr.ph.i, %bb.cq
  %.0282 = phi ptr [ %i.ns, %bb.cq ], [ %i.kg, %.preheader66.lr.ph.i ], [ %i.kg, %bb.cf ], [ %.0282.pre, %decode_rle.exit.thread.loopexit ] ; 5 uses
  %i.oa = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.ob = icmp slt i32 %i.oa, 0
  br i1 %i.ob, label %decode_header.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %decode_rle.exit.thread
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !74
  switch i32 %i.od, label %bb.cw [
    i32 56, label %bb.ct
    i32 109, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.oe = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.og = load i32, ptr %4, align 4, !tbaa !64    ; 2 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.preheader332.lr.ph, label %.loopexit

.preheader332.lr.ph:                              ; preds = %bb.ct
  %i.oi = load i32, ptr %i.hw, align 8, !tbaa !66 ; 3 uses
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.preheader332, label %.loopexit

.preheader332:                                    ; preds = %.preheader332.lr.ph, %._crit_edge343
  %i.ok = phi i32 [ %i.pi, %._crit_edge343 ], [ %i.og, %.preheader332.lr.ph ] ; 2 uses
  %i.ol = phi i32 [ %i.pj, %._crit_edge343 ], [ %i.oi, %.preheader332.lr.ph ] ; 3 uses
  %i.om = phi i32 [ %i.pk, %._crit_edge343 ], [ %i.oi, %.preheader332.lr.ph ] ; 3 uses
  %.2347 = phi ptr [ %.3.lcssa, %._crit_edge343 ], [ %.0282, %.preheader332.lr.ph ] ; 3 uses
  %.0285345 = phi i32 [ %i.pl, %._crit_edge343 ], [ 0, %.preheader332.lr.ph ] ; 2 uses
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %.preheader332
  %i.oo = load i32, ptr %i.hv, align 8, !tbaa !72 ; 2 uses
  %.not397.a = icmp eq i32 %i.oo, 0
  br i1 %.not397.a, label %._crit_edge343, label %.lr.ph342.split

.lr.ph342.split:                                  ; preds = %.lr.ph342, %._crit_edge
  %i.op = phi i32 [ %i.pd, %._crit_edge ], [ %i.ol, %.lr.ph342 ]
  %i.oq = phi i32 [ %i.pe, %._crit_edge ], [ %i.oo, %.lr.ph342 ] ; 2 uses
  %i.or = phi i32 [ %i.pf, %._crit_edge ], [ 1, %.lr.ph342 ]
  %.3341 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %.2347, %.lr.ph342 ] ; 2 uses
  %.0291340 = phi i32 [ %i.pg, %._crit_edge ], [ 0, %.lr.ph342 ] ; 2 uses
  %.not398 = icmp eq i32 %i.or, 0
  br i1 %.not398, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph342.split
  %i.os = shl nuw i32 %.0291340, 1
  %i.ot = load i32, ptr %i.of, align 8, !tbaa !78
  %i.ou = mul nsw i32 %i.ot, %.0285345
  %reass.mul = mul i32 %i.os, %i.oq
  %invariant.op = add i32 %i.ou, %reass.mul
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph, %bb.cu
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cu ] ; 2 uses
  %.4339 = phi ptr [ %.3341, %.lr.ph ], [ %i.oz, %bb.cu ] ; 2 uses
  %i.ov = load i8, ptr %.4339, align 1, !tbaa !62
  %i.ow = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.ow
  %i.ox = sext i32 %.reass to i64
  %i.oy = getelementptr inbounds i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ov, ptr %i.oy, align 1, !tbaa !62
  %i.oz = getelementptr inbounds nuw i8, ptr %.4339, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pa = load i32, ptr %i.hv, align 8, !tbaa !72 ; 3 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = icmp samesign ult i64 %indvars.iv.next, %i.pb
  br i1 %i.pc, label %bb.cu, label %._crit_edge.loopexit, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.cu
  %.pre424.a = load i32, ptr %i.hw, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph342.split
  %i.pd = phi i32 [ %i.op, %.lr.ph342.split ], [ %.pre424.a, %._crit_edge.loopexit ] ; 4 uses
  %i.pe = phi i32 [ %i.oq, %.lr.ph342.split ], [ %i.pa, %._crit_edge.loopexit ]
  %i.pf = phi i32 [ 0, %.lr.ph342.split ], [ %i.pa, %._crit_edge.loopexit ]
  %.4.lcssa = phi ptr [ %.3341, %.lr.ph342.split ], [ %i.oz, %._crit_edge.loopexit ] ; 2 uses
  %i.pg = add nuw nsw i32 %.0291340, 1            ; 2 uses
  %i.ph = icmp slt i32 %i.pg, %i.pd
  br i1 %i.ph, label %.lr.ph342.split, label %._crit_edge343.loopexit403, !llvm.loop !17

._crit_edge343.loopexit403:                       ; preds = %._crit_edge
  %.pre425.a = load i32, ptr %4, align 4, !tbaa !64
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %.lr.ph342, %._crit_edge343.loopexit403, %.preheader332
  %i.pi = phi i32 [ %i.ok, %.preheader332 ], [ %.pre425.a, %._crit_edge343.loopexit403 ], [ %i.ok, %.lr.ph342 ] ; 4 uses
  %i.pj = phi i32 [ %i.ol, %.preheader332 ], [ %i.pd, %._crit_edge343.loopexit403 ], [ %i.ol, %.lr.ph342 ]
  %i.pk = phi i32 [ %i.om, %.preheader332 ], [ %i.pd, %._crit_edge343.loopexit403 ], [ %i.om, %.lr.ph342 ]
  %.3.lcssa = phi ptr [ %.2347, %.preheader332 ], [ %.4.lcssa, %._crit_edge343.loopexit403 ], [ %.2347, %.lr.ph342 ] ; 2 uses
  %i.pl = add nuw nsw i32 %.0285345, 1            ; 2 uses
  %i.pm = icmp slt i32 %i.pl, %i.pi
  br i1 %i.pm, label %.preheader332, label %._crit_edge348, !llvm.loop !18

._crit_edge348:                                   ; preds = %._crit_edge343
  %i.pn = icmp sgt i32 %i.pi, 0
  br i1 %i.pn, label %.preheader332.lr.ph.1, label %.loopexit

.preheader332.lr.ph.1:                            ; preds = %._crit_edge348
  %.pr503 = load i32, ptr %i.hw, align 8, !tbaa !66 ; 3 uses
  %i.po = icmp sgt i32 %.pr503, 0
  br i1 %i.po, label %.preheader332.1, label %.loopexit

.preheader332.1:                                  ; preds = %.preheader332.lr.ph.1, %._crit_edge343.1
  %i.pp = phi i32 [ %i.qn, %._crit_edge343.1 ], [ %i.pi, %.preheader332.lr.ph.1 ] ; 2 uses
  %i.pq = phi i32 [ %i.qo, %._crit_edge343.1 ], [ %.pr503, %.preheader332.lr.ph.1 ] ; 3 uses
  %i.pr = phi i32 [ %i.qp, %._crit_edge343.1 ], [ %.pr503, %.preheader332.lr.ph.1 ] ; 3 uses
  %.2347.1 = phi ptr [ %.3.lcssa.1, %._crit_edge343.1 ], [ %.3.lcssa, %.preheader332.lr.ph.1 ] ; 3 uses
  %.0285345.1 = phi i32 [ %i.qq, %._crit_edge343.1 ], [ 0, %.preheader332.lr.ph.1 ] ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %.lr.ph342.1, label %._crit_edge343.1

.lr.ph342.1:                                      ; preds = %.preheader332.1
  %i.pt = load i32, ptr %i.hv, align 8, !tbaa !72 ; 2 uses
  %.not397.1.a = icmp eq i32 %i.pt, 0
  br i1 %.not397.1.a, label %._crit_edge343.1, label %.lr.ph342.split.1

.lr.ph342.split.1:                                ; preds = %.lr.ph342.1, %._crit_edge.1
  %i.pu = phi i32 [ %i.qi, %._crit_edge.1 ], [ %i.pq, %.lr.ph342.1 ]
  %i.pv = phi i32 [ %i.qj, %._crit_edge.1 ], [ %i.pt, %.lr.ph342.1 ] ; 2 uses
  %i.pw = phi i32 [ %i.qk, %._crit_edge.1 ], [ 1, %.lr.ph342.1 ]
  %.3341.1 = phi ptr [ %.4.lcssa.1, %._crit_edge.1 ], [ %.2347.1, %.lr.ph342.1 ] ; 2 uses
  %.0291340.1 = phi i32 [ %i.ql, %._crit_edge.1 ], [ 0, %.lr.ph342.1 ] ; 2 uses
  %.not398.1 = icmp eq i32 %i.pw, 0
  br i1 %.not398.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph342.split.1
  %i.px = shl nuw i32 %.0291340.1, 1
  %i.py = load i32, ptr %i.of, align 8, !tbaa !78
  %i.pz = mul nsw i32 %i.py, %.0285345.1
  %reass.add.1 = or disjoint i32 %i.px, 1
  %reass.mul.1 = mul i32 %reass.add.1, %i.pv
  %invariant.op.1 = add i32 %i.pz, %reass.mul.1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.cv ] ; 2 uses
  %.4339.1 = phi ptr [ %.3341.1, %.lr.ph.1 ], [ %i.qe, %bb.cv ] ; 2 uses
  %i.qa = load i8, ptr %.4339.1, align 1, !tbaa !62
  %i.qb = trunc nuw nsw i64 %indvars.iv.1 to i32
  %.reass.1 = add i32 %invariant.op.1, %i.qb
  %i.qc = sext i32 %.reass.1 to i64
  %i.qd = getelementptr inbounds i8, ptr %i.oe, i64 %i.qc
  store i8 %i.qa, ptr %i.qd, align 1, !tbaa !62
  %i.qe = getelementptr inbounds nuw i8, ptr %.4339.1, i64 1 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.qf = load i32, ptr %i.hv, align 8, !tbaa !72 ; 3 uses
  %i.qg = zext i32 %i.qf to i64
  %i.qh = icmp samesign ult i64 %indvars.iv.next.1, %i.qg
  br i1 %i.qh, label %bb.cv, label %._crit_edge.loopexit.1, !llvm.loop !16

._crit_edge.loopexit.1:                           ; preds = %bb.cv
  %.pre426.a = load i32, ptr %i.hw, align 8, !tbaa !66
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %.lr.ph342.split.1
  %i.qi = phi i32 [ %i.pu, %.lr.ph342.split.1 ], [ %.pre426.a, %._crit_edge.loopexit.1 ] ; 4 uses
  %i.qj = phi i32 [ %i.pv, %.lr.ph342.split.1 ], [ %i.qf, %._crit_edge.loopexit.1 ]
  %i.qk = phi i32 [ 0, %.lr.ph342.split.1 ], [ %i.qf, %._crit_edge.loopexit.1 ]
  %.4.lcssa.1 = phi ptr [ %.3341.1, %.lr.ph342.split.1 ], [ %i.qe, %._crit_edge.loopexit.1 ] ; 2 uses
  %i.ql = add nuw nsw i32 %.0291340.1, 1          ; 2 uses
  %i.qm = icmp slt i32 %i.ql, %i.qi
  br i1 %i.qm, label %.lr.ph342.split.1, label %._crit_edge343.loopexit403.1, !llvm.loop !17

._crit_edge343.loopexit403.1:                     ; preds = %._crit_edge.1
  %.pre427.a = load i32, ptr %4, align 4, !tbaa !64
  br label %._crit_edge343.1

._crit_edge343.1:                                 ; preds = %.lr.ph342.1, %._crit_edge343.loopexit403.1, %.preheader332.1
  %i.qn = phi i32 [ %i.pp, %.preheader332.1 ], [ %.pre427.a, %._crit_edge343.loopexit403.1 ], [ %i.pp, %.lr.ph342.1 ] ; 2 uses
  %i.qo = phi i32 [ %i.pq, %.preheader332.1 ], [ %i.qi, %._crit_edge343.loopexit403.1 ], [ %i.pq, %.lr.ph342.1 ]
  %i.qp = phi i32 [ %i.pr, %.preheader332.1 ], [ %i.qi, %._crit_edge343.loopexit403.1 ], [ %i.pr, %.lr.ph342.1 ]
  %.3.lcssa.1 = phi ptr [ %.2347.1, %.preheader332.1 ], [ %.4.lcssa.1, %._crit_edge343.loopexit403.1 ], [ %.2347.1, %.lr.ph342.1 ]
  %i.qq = add nuw nsw i32 %.0285345.1, 1          ; 2 uses
  %i.qr = icmp slt i32 %i.qq, %i.qn
  br i1 %i.qr, label %.preheader332.1, label %.loopexit, !llvm.loop !18

bb.cw:                                            ; preds = %bb.cs
  %i.qs = load i32, ptr %i.bu, align 8, !tbaa !68
  %i.qt = icmp eq i32 %i.qs, 4
  br i1 %i.qt, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.qu = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !61 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !61 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !61 ; 2 uses
  %i.rb = load i64, ptr %i.i, align 8, !tbaa !53  ; 3 uses
  %i.rc = load i32, ptr %4, align 4, !tbaa !64    ; 4 uses
  %i.rd = sext i32 %i.rc to i64
  %i.re = mul i64 %i.rb, %i.rd                    ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0282, i64 %i.re ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.re ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.re ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.re ; 2 uses
  %i.rj = load i16, ptr %i.f, align 2, !tbaa !67
  %i.rk = icmp eq i16 %i.rj, 8
  %i.rl = icmp sgt i32 %i.rc, 0                   ; 2 uses
  br i1 %i.rk, label %.preheader326, label %.preheader330

.preheader330:                                    ; preds = %bb.cx
  br i1 %i.rl, label %.preheader329.lr.ph, label %.loopexit

.preheader329.lr.ph:                              ; preds = %.preheader330
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre430.a = load i32, ptr %i.hw, align 8, !tbaa !66
  br label %.preheader329

.preheader326:                                    ; preds = %bb.cx
  br i1 %i.rl, label %.preheader325.lr.ph, label %.loopexit

.preheader325.lr.ph:                              ; preds = %.preheader326
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre434.a = load i32, ptr %i.hw, align 8, !tbaa !66
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.lr.ph, %._crit_edge383
  %i.rs = phi i32 [ %i.rc, %.preheader325.lr.ph ], [ %i.sy, %._crit_edge383 ]
  %i.rt = phi i64 [ %i.rb, %.preheader325.lr.ph ], [ %i.sz, %._crit_edge383 ]
  %i.ru = phi i32 [ %.pre434.a, %.preheader325.lr.ph ], [ %i.ta, %._crit_edge383 ] ; 2 uses
  %.1286391 = phi i32 [ 0, %.preheader325.lr.ph ], [ %i.to, %._crit_edge383 ]
  %.sroa.27.0390 = phi ptr [ %i.rh, %.preheader325.lr.ph ], [ %i.tn, %._crit_edge383 ] ; 2 uses
  %.sroa.19.0389 = phi ptr [ %i.rg, %.preheader325.lr.ph ], [ %i.tm, %._crit_edge383 ] ; 2 uses
  %.sroa.11.0388 = phi ptr [ %i.rf, %.preheader325.lr.ph ], [ %i.tl, %._crit_edge383 ] ; 2 uses
  %.sroa.0.0387 = phi ptr [ %.0282, %.preheader325.lr.ph ], [ %i.tk, %._crit_edge383 ] ; 2 uses
  %.sroa.031.0386 = phi ptr [ %i.qu, %.preheader325.lr.ph ], [ %i.td, %._crit_edge383 ] ; 2 uses
  %.sroa.9.0385 = phi ptr [ %i.qw, %.preheader325.lr.ph ], [ %i.tg, %._crit_edge383 ] ; 2 uses
  %.sroa.16.0384 = phi ptr [ %i.qy, %.preheader325.lr.ph ], [ %i.tj, %._crit_edge383 ] ; 2 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.lr.ph382, label %._crit_edge383

.lr.ph382:                                        ; preds = %.preheader325, %.lr.ph382
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %.lr.ph382 ], [ 0, %.preheader325 ] ; 8 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.27.0390, i64 %indvars.iv420
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !62
  %i.ry = zext i8 %i.rx to i32
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0.0387, i64 %indvars.iv420
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !62
  %i.sb = zext i8 %i.sa to i32
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.11.0388, i64 %indvars.iv420
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !62
  %i.se = zext i8 %i.sd to i32
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.19.0389, i64 %indvars.iv420
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !62
  %i.sh = zext i8 %i.sg to i32
  %i.si = mul nuw nsw i32 %i.ry, 257              ; 3 uses
  %i.sj = mul nuw nsw i32 %i.si, %i.se
  %i.sk = lshr i32 %i.sj, 16
  %i.sl = trunc nuw i32 %i.sk to i8
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.031.0386, i64 %indvars.iv420
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !62
  %i.sn = mul nuw nsw i32 %i.si, %i.sh
  %i.so = lshr i32 %i.sn, 16
  %i.sp = trunc nuw i32 %i.so to i8
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.9.0385, i64 %indvars.iv420
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !62
  %i.sr = mul nuw nsw i32 %i.si, %i.sb
  %i.ss = lshr i32 %i.sr, 16
  %i.st = trunc nuw i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.16.0384, i64 %indvars.iv420
  store i8 %i.st, ptr %i.su, align 1, !tbaa !62
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %i.sv = load i32, ptr %i.hw, align 8, !tbaa !66 ; 2 uses
  %i.sw = sext i32 %i.sv to i64
  %i.sx = icmp slt i64 %indvars.iv.next421, %i.sw
  br i1 %i.sx, label %.lr.ph382, label %._crit_edge383.loopexit, !llvm.loop !19

._crit_edge383.loopexit:                          ; preds = %.lr.ph382
  %.pre435.a = load i64, ptr %i.i, align 8, !tbaa !53
  %.pre436.a = load i32, ptr %4, align 4, !tbaa !64
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.preheader325
  %i.sy = phi i32 [ %.pre436.a, %._crit_edge383.loopexit ], [ %i.rs, %.preheader325 ] ; 3 uses
  %i.sz = phi i64 [ %.pre435.a, %._crit_edge383.loopexit ], [ %i.rt, %.preheader325 ] ; 6 uses
  %i.ta = phi i32 [ %i.sv, %._crit_edge383.loopexit ], [ %i.ru, %.preheader325 ]
  %i.tb = load i32, ptr %i.rp, align 8, !tbaa !78
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds i8, ptr %.sroa.031.0386, i64 %i.tc
  %i.te = load i32, ptr %i.rq, align 4, !tbaa !78
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %.sroa.9.0385, i64 %i.tf
  %i.th = load i32, ptr %i.rr, align 8, !tbaa !78
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds i8, ptr %.sroa.16.0384, i64 %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.0387, i64 %i.sz
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.11.0388, i64 %i.sz
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.19.0389, i64 %i.sz
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.27.0390, i64 %i.sz
  %i.to = add nuw nsw i32 %.1286391, 1            ; 2 uses
  %i.tp = icmp slt i32 %i.to, %i.sy
  br i1 %i.tp, label %.preheader325, label %._crit_edge392, !llvm.loop !20

._crit_edge392:                                   ; preds = %._crit_edge383
  %.pre437 = load i32, ptr %i.oc, align 8, !tbaa !74
  %i.tq = icmp slt i32 %i.sy, 1
  %i.tr = icmp ne i32 %.pre437, 111
  %brmerge = or i1 %i.tr, %i.tq
  br i1 %brmerge, label %.loopexit, label %.lr.ph396

.lr.ph396:                                        ; preds = %._crit_edge392
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph396, %bb.cy
  %i.tt = phi i64 [ %i.sz, %.lr.ph396 ], [ %i.tu, %bb.cy ]
  %.2287395 = phi i32 [ 0, %.lr.ph396 ], [ %i.tz, %bb.cy ]
  %.sroa.35.0394 = phi ptr [ %i.ri, %.lr.ph396 ], [ %i.tv, %bb.cy ] ; 2 uses
  %.sroa.23.0393 = phi ptr [ %i.ra, %.lr.ph396 ], [ %i.ty, %bb.cy ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.23.0393, ptr align 1 %.sroa.35.0394, i64 %i.tt, i1 false)
  %i.tu = load i64, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.35.0394, i64 %i.tu
  %i.tw = load i32, ptr %i.ts, align 4, !tbaa !78
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds i8, ptr %.sroa.23.0393, i64 %i.tx
  %i.tz = add nuw nsw i32 %.2287395, 1            ; 2 uses
  %i.ua = load i32, ptr %4, align 4, !tbaa !64
  %i.ub = icmp slt i32 %i.tz, %i.ua
  br i1 %i.ub, label %bb.cy, label %.loopexit, !llvm.loop !21

.preheader329:                                    ; preds = %.preheader329.lr.ph, %._crit_edge367
  %i.uc = phi i32 [ %i.rc, %.preheader329.lr.ph ], [ %i.vq, %._crit_edge367 ]
  %i.ud = phi i64 [ %i.rb, %.preheader329.lr.ph ], [ %i.vr, %._crit_edge367 ]
  %i.ue = phi i32 [ %.pre430.a, %.preheader329.lr.ph ], [ %i.vs, %._crit_edge367 ] ; 2 uses
  %.3288375 = phi i32 [ 0, %.preheader329.lr.ph ], [ %i.wg, %._crit_edge367 ]
  %.sroa.27.1374 = phi ptr [ %i.rh, %.preheader329.lr.ph ], [ %i.wf, %._crit_edge367 ] ; 2 uses
  %.sroa.19.1373 = phi ptr [ %i.rg, %.preheader329.lr.ph ], [ %i.we, %._crit_edge367 ] ; 2 uses
  %.sroa.11.1372 = phi ptr [ %i.rf, %.preheader329.lr.ph ], [ %i.wd, %._crit_edge367 ] ; 2 uses
  %.sroa.0.1371 = phi ptr [ %.0282, %.preheader329.lr.ph ], [ %i.wc, %._crit_edge367 ] ; 2 uses
  %.sroa.031.1370 = phi ptr [ %i.qu, %.preheader329.lr.ph ], [ %i.vv, %._crit_edge367 ] ; 2 uses
  %.sroa.9.1369 = phi ptr [ %i.qw, %.preheader329.lr.ph ], [ %i.vy, %._crit_edge367 ] ; 2 uses
  %.sroa.16.1368 = phi ptr [ %i.qy, %.preheader329.lr.ph ], [ %i.wb, %._crit_edge367 ] ; 2 uses
  %i.uf = icmp sgt i32 %i.ue, 0
  br i1 %i.uf, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %.preheader329, %.lr.ph366
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %.lr.ph366 ], [ 0, %.preheader329 ] ; 2 uses
  %i.ug = shl nuw nsw i64 %indvars.iv417, 1       ; 7 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.27.1374, i64 %i.ug
  %i.ui = load i16, ptr %i.uh, align 1, !tbaa !62
  %i.uj = tail call i16 @llvm.bswap.i16(i16 %i.ui)
  %i.uk = zext i16 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0.1371, i64 %i.ug
  %i.um = load i16, ptr %i.ul, align 1, !tbaa !62
  %i.un = tail call i16 @llvm.bswap.i16(i16 %i.um)
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.11.1372, i64 %i.ug
  %i.uq = load i16, ptr %i.up, align 1, !tbaa !62
  %i.ur = tail call i16 @llvm.bswap.i16(i16 %i.uq)
  %i.us = zext i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.19.1373, i64 %i.ug
  %i.uu = load i16, ptr %i.ut, align 1, !tbaa !62
  %i.uv = tail call i16 @llvm.bswap.i16(i16 %i.uu)
  %i.uw = zext i16 %i.uv to i64
  %i.ux = mul nuw nsw i64 %i.uk, 65537            ; 3 uses
  %i.uy = mul nuw nsw i64 %i.ux, %i.us
  %i.uz = lshr i64 %i.uy, 32
  %i.va = trunc nuw i64 %i.uz to i16
  %i.vb = tail call i16 @llvm.bswap.i16(i16 %i.va)
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.031.1370, i64 %i.ug
  store i16 %i.vb, ptr %i.vc, align 1, !tbaa !62
  %i.vd = mul nuw nsw i64 %i.ux, %i.uw
  %i.ve = lshr i64 %i.vd, 32
  %i.vf = trunc nuw i64 %i.ve to i16
  %i.vg = tail call i16 @llvm.bswap.i16(i16 %i.vf)
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.9.1369, i64 %i.ug
  store i16 %i.vg, ptr %i.vh, align 1, !tbaa !62
  %i.vi = mul nuw nsw i64 %i.ux, %i.uo
  %i.vj = lshr i64 %i.vi, 32
  %i.vk = trunc nuw i64 %i.vj to i16
  %i.vl = tail call i16 @llvm.bswap.i16(i16 %i.vk)
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.16.1368, i64 %i.ug
  store i16 %i.vl, ptr %i.vm, align 1, !tbaa !62
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %i.vn = load i32, ptr %i.hw, align 8, !tbaa !66 ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next418, %i.vo
  br i1 %i.vp, label %.lr.ph366, label %._crit_edge367.loopexit, !llvm.loop !22

._crit_edge367.loopexit:                          ; preds = %.lr.ph366
  %.pre431.a = load i64, ptr %i.i, align 8, !tbaa !53
  %.pre432.a = load i32, ptr %4, align 4, !tbaa !64
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %._crit_edge367.loopexit, %.preheader329
  %i.vq = phi i32 [ %.pre432.a, %._crit_edge367.loopexit ], [ %i.uc, %.preheader329 ] ; 3 uses
  %i.vr = phi i64 [ %.pre431.a, %._crit_edge367.loopexit ], [ %i.ud, %.preheader329 ] ; 6 uses
  %i.vs = phi i32 [ %i.vn, %._crit_edge367.loopexit ], [ %i.ue, %.preheader329 ]
  %i.vt = load i32, ptr %i.rm, align 8, !tbaa !78
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %.sroa.031.1370, i64 %i.vu
  %i.vw = load i32, ptr %i.rn, align 4, !tbaa !78
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds i8, ptr %.sroa.9.1369, i64 %i.vx
  %i.vz = load i32, ptr %i.ro, align 8, !tbaa !78
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds i8, ptr %.sroa.16.1368, i64 %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0.1371, i64 %i.vr
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.11.1372, i64 %i.vr
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.19.1373, i64 %i.vr
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.27.1374, i64 %i.vr
  %i.wg = add nuw nsw i32 %.3288375, 1            ; 2 uses
  %i.wh = icmp slt i32 %i.wg, %i.vq
  br i1 %i.wh, label %.preheader329, label %._crit_edge376, !llvm.loop !23

._crit_edge376:                                   ; preds = %._crit_edge367
  %.pre433 = load i32, ptr %i.oc, align 8, !tbaa !74
  %i.wi = icmp slt i32 %i.vq, 1
  %i.wj = icmp ne i32 %.pre433, 112
  %brmerge542 = or i1 %i.wj, %i.wi
  br i1 %brmerge542, label %.loopexit, label %.lr.ph380

.lr.ph380:                                        ; preds = %._crit_edge376
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph380, %bb.cz
  %i.wl = phi i64 [ %i.vr, %.lr.ph380 ], [ %i.wm, %bb.cz ]
  %.4289379 = phi i32 [ 0, %.lr.ph380 ], [ %i.wr, %bb.cz ]
  %.sroa.35.1378 = phi ptr [ %i.ri, %.lr.ph380 ], [ %i.wn, %bb.cz ] ; 2 uses
  %.sroa.23.1377 = phi ptr [ %i.ra, %.lr.ph380 ], [ %i.wq, %bb.cz ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.23.1377, ptr align 1 %.sroa.35.1378, i64 %i.wl, i1 false)
  %i.wm = load i64, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.35.1378, i64 %i.wm
  %i.wo = load i32, ptr %i.wk, align 4, !tbaa !78
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds i8, ptr %.sroa.23.1377, i64 %i.wp
  %i.wr = add nuw nsw i32 %.4289379, 1            ; 2 uses
  %i.ws = load i32, ptr %4, align 4, !tbaa !64
  %i.wt = icmp slt i32 %i.wr, %i.ws
  br i1 %i.wt, label %bb.cz, label %.loopexit, !llvm.loop !24

bb.da:                                            ; preds = %bb.cw
  %i.wu = load i16, ptr %i.g, align 4, !tbaa !73  ; 2 uses
  switch i16 %i.wu, label %.lr.ph364 [
    i16 1, label %.thread
    i16 0, label %.loopexit
  ]

.thread:                                          ; preds = %bb.da
  store i8 0, ptr %i.a, align 4, !tbaa !62
  br label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.da, %.thread
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ww = load i32, ptr %4, align 4, !tbaa !64    ; 2 uses
  %i.wx = icmp sgt i32 %i.ww, 0
  br i1 %i.wx, label %.lr.ph364.split, label %.loopexit

.lr.ph364.split:                                  ; preds = %.lr.ph364, %._crit_edge359
  %i.wy = phi i16 [ %i.xq, %._crit_edge359 ], [ %i.wu, %.lr.ph364 ]
  %i.wz = phi i32 [ %i.xr, %._crit_edge359 ], [ %i.ww, %.lr.ph364 ] ; 2 uses
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %._crit_edge359 ], [ 0, %.lr.ph364 ] ; 2 uses
  %.5362 = phi ptr [ %.6.lcssa, %._crit_edge359 ], [ %.0282, %.lr.ph364 ] ; 2 uses
  %i.xa = icmp sgt i32 %i.wz, 0
  br i1 %i.xa, label %.lr.ph358, label %._crit_edge359

.lr.ph358:                                        ; preds = %.lr.ph364.split
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv414
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !62
  %i.xd = zext i8 %i.xc to i64                    ; 2 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.xd
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !61
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.xd
  %.pre428.a = load i64, ptr %i.i, align 8, !tbaa !53
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph358, %bb.db
  %i.xh = phi i64 [ %.pre428.a, %.lr.ph358 ], [ %i.xl, %bb.db ]
  %.0281356 = phi ptr [ %i.xf, %.lr.ph358 ], [ %i.xk, %bb.db ] ; 2 uses
  %.6355 = phi ptr [ %.5362, %.lr.ph358 ], [ %i.xm, %bb.db ] ; 2 uses
  %.5290354 = phi i32 [ 0, %.lr.ph358 ], [ %i.xn, %bb.db ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0281356, ptr align 1 %.6355, i64 %i.xh, i1 false)
  %i.xi = load i32, ptr %i.xg, align 4, !tbaa !78
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %.0281356, i64 %i.xj
  %i.xl = load i64, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.6355, i64 %i.xl ; 2 uses
  %i.xn = add nuw nsw i32 %.5290354, 1            ; 2 uses
  %i.xo = load i32, ptr %4, align 4, !tbaa !64    ; 2 uses
  %i.xp = icmp slt i32 %i.xn, %i.xo
  br i1 %i.xp, label %bb.db, label %._crit_edge359.loopexit, !llvm.loop !25

._crit_edge359.loopexit:                          ; preds = %bb.db
  %.pre429 = load i16, ptr %i.g, align 4, !tbaa !73
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %._crit_edge359.loopexit, %.lr.ph364.split
  %i.xq = phi i16 [ %i.wy, %.lr.ph364.split ], [ %.pre429, %._crit_edge359.loopexit ] ; 2 uses
  %i.xr = phi i32 [ %i.wz, %.lr.ph364.split ], [ %i.xo, %._crit_edge359.loopexit ]
  %.6.lcssa = phi ptr [ %.5362, %.lr.ph364.split ], [ %i.xm, %._crit_edge359.loopexit ]
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.xs = zext i16 %i.xq to i64
  %i.xt = icmp samesign ult i64 %indvars.iv.next415, %i.xs
  br i1 %i.xt, label %.lr.ph364.split, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %._crit_edge343.1, %._crit_edge359, %bb.cz, %bb.cy, %bb.da, %._crit_edge376, %.preheader330, %._crit_edge392, %.preheader326, %.preheader332.lr.ph, %.lr.ph364, %._crit_edge348, %.preheader332.lr.ph.1, %bb.ct
  %i.xu = load i32, ptr %i.bu, align 8, !tbaa !68
  %i.xv = icmp eq i32 %i.xu, 2
  br i1 %i.xv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.loopexit
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !61
  %i.xy = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.xx, ptr noundef nonnull align 4 dereferenceable(1024) %i.xy, i64 1024, i1 false)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.loopexit
  tail call void @av_freep(ptr noundef nonnull %i.h) #7
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.xz, align 8, !tbaa !83
  store i32 1, ptr %2, align 4, !tbaa !78
  %i.ya = load i32, ptr %i.n, align 8, !tbaa !57
  br label %decode_header.exit.thread

decode_header.exit.thread:                        ; preds = %bb.ak, %bb.ai, %bb.k, %bb.ac, %bb.am, %bb.x, %bb.an, %bb.v, %bb.ao, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %decode_rle.exit.thread, %bb.cd, %bb.dd, %bb.cr, %.loopexit335, %bb.cb, %bb.ca, %bb.by, %bb.bt, %bb.bo, %bb.bm, %bb.bi, %bb.be, %bb.bc, %bb.ay, %bb.at, %bb.aq
  %.0 = phi i32 [ -1094995529, %bb.ca ], [ -1163346256, %bb.cb ], [ -1094995529, %bb.aq ], [ -1094995529, %.loopexit335 ], [ -12, %bb.cd ], [ %i.ya, %bb.dd ], [ %i.oa, %decode_rle.exit.thread ], [ -1094995529, %bb.cr ], [ -1094995529, %bb.at ], [ -1163346256, %bb.ay ], [ -1163346256, %bb.bc ], [ -1094995529, %bb.be ], [ -1163346256, %bb.bi ], [ -1163346256, %bb.bm ], [ -1094995529, %bb.bo ], [ -1163346256, %bb.bt ], [ -1163346256, %bb.by ], [ -1094995529, %bb.ak ], [ -1094995529, %bb.ai ], [ %i.az, %bb.k ], [ -1094995529, %bb.ac ], [ -1163346256, %bb.am ], [ -1094995529, %bb.x ], [ -1163346256, %bb.an ], [ -1094995529, %bb.v ], [ -1094995529, %bb.ao ], [ -733130664, %bb.j ], [ -733130664, %bb.h ], [ -1094995529, %bb.f ], [ -1094995529, %bb.e ], [ -1094995529, %bb.d ], [ -1094995529, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !69}
!10 = distinct !{!10, !70}
!11 = distinct !{!11, !70}
!12 = distinct !{!12, !69}
!13 = distinct !{!13, !69}
!14 = distinct !{!14, !69}
!15 = distinct !{!15, !69, !77}
!16 = distinct !{!16, !69}
!17 = distinct !{!17, !69, !77}
!18 = distinct !{!18, !69, !77}
!19 = distinct !{!19, !69}
!20 = distinct !{!20, !69}
!21 = distinct !{!21, !69}
!22 = distinct !{!22, !69}
!23 = distinct !{!23, !69}
!24 = distinct !{!24, !69}
!25 = distinct !{!25, !69}
!26 = distinct !{!26, !69, !77}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!"p1 _ZTS7AVClass", !27, i64 0}
!29 = !{!"p1 _ZTS7AVCodec", !27, i64 0}
!30 = !{!"p1 _ZTS15AVCodecInternal", !27, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!"p1 omnipotent char", !27, i64 0}
!33 = !{!"AVRational", !6, i64 0, !6, i64 4}
!34 = !{!"float", !5, i64 0}
!35 = !{!"p1 short", !27, i64 0}
!36 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !27, i64 16}
!37 = !{!"p1 _ZTS10RcOverride", !27, i64 0}
!38 = !{!"p1 _ZTS9AVHWAccel", !27, i64 0}
!39 = !{!"p1 _ZTS11AVBufferRef", !27, i64 0}
!40 = !{!"p1 _ZTS17AVCodecDescriptor", !27, i64 0}
!41 = !{!"p1 _ZTS16AVPacketSideData", !27, i64 0}
!42 = !{!"p1 int", !27, i64 0}
!43 = !{!"any p2 pointer", !27, i64 0}
!44 = !{!"p2 _ZTS15AVFrameSideData", !43, i64 0}
!45 = !{!"AVCodecContext", !28, i64 0, !6, i64 8, !6, i64 12, !29, i64 16, !6, i64 24, !6, i64 28, !27, i64 32, !30, i64 40, !27, i64 48, !31, i64 56, !6, i64 64, !6, i64 68, !32, i64 72, !6, i64 80, !33, i64 84, !33, i64 92, !33, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !33, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !27, i64 184, !27, i64 192, !6, i64 200, !34, i64 204, !34, i64 208, !34, i64 212, !34, i64 216, !34, i64 220, !34, i64 224, !34, i64 228, !34, i64 232, !34, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !35, i64 288, !35, i64 296, !35, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !36, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !27, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !34, i64 428, !34, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !37, i64 456, !31, i64 464, !31, i64 472, !34, i64 480, !34, i64 484, !6, i64 488, !6, i64 492, !32, i64 496, !32, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !38, i64 536, !27, i64 544, !39, i64 552, !39, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !27, i64 672, !27, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !40, i64 728, !32, i64 736, !6, i64 744, !6, i64 748, !32, i64 752, !32, i64 760, !32, i64 768, !41, i64 776, !6, i64 784, !6, i64 788, !31, i64 792, !6, i64 800, !6, i64 804, !31, i64 808, !27, i64 816, !31, i64 824, !42, i64 832, !6, i64 840, !44, i64 848, !6, i64 856, !6, i64 860}
!46 = !{!45, !27, i64 32}
!47 = !{!"p1 _ZTS7AVFrame", !27, i64 0}
!48 = !{!"p1 _ZTS14AVCodecContext", !27, i64 0}
!49 = !{!"GetByteContext", !32, i64 0, !32, i64 8, !32, i64 16}
!50 = !{!"short", !5, i64 0}
!51 = !{!"PSDContext", !28, i64 0, !47, i64 8, !48, i64 16, !49, i64 24, !32, i64 48, !50, i64 56, !50, i64 58, !50, i64 60, !31, i64 64, !6, i64 72, !31, i64 80, !6, i64 88, !6, i64 92, !50, i64 96, !6, i64 100, !6, i64 104, !5, i64 108}
!52 = !{!51, !48, i64 16}
!53 = !{!51, !31, i64 80}
!54 = !{!51, !50, i64 96}
!55 = !{!"AVPacket", !39, i64 0, !31, i64 8, !31, i64 16, !32, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !41, i64 48, !6, i64 56, !31, i64 64, !31, i64 72, !27, i64 80, !39, i64 88, !33, i64 96}
!56 = !{!55, !32, i64 24}
!57 = !{!55, !6, i64 32}
!58 = !{!49, !32, i64 0}
!59 = !{!49, !32, i64 16}
!60 = !{!49, !32, i64 8}
!61 = !{!32, !32, i64 0}
!62 = !{!5, !5, i64 0}
!63 = !{!51, !50, i64 56}
!64 = !{!51, !6, i64 92}
!65 = !{!45, !6, i64 516}
!66 = !{!51, !6, i64 88}
!67 = !{!51, !50, i64 58}
!68 = !{!51, !6, i64 104}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!51, !6, i64 100}
!72 = !{!51, !6, i64 72}
!73 = !{!51, !50, i64 60}
!74 = !{!45, !6, i64 136}
!75 = !{!51, !31, i64 64}
!76 = !{!51, !32, i64 48}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
!78 = !{!6, !6, i64 0}
!79 = !{!"p2 omnipotent char", !43, i64 0}
!80 = !{!"p2 _ZTS11AVBufferRef", !43, i64 0}
!81 = !{!"p1 _ZTS12AVDictionary", !27, i64 0}
!82 = !{!"AVFrame", !5, i64 0, !5, i64 64, !79, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !33, i64 124, !31, i64 136, !31, i64 144, !33, i64 152, !6, i64 160, !27, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !80, i64 248, !6, i64 256, !44, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !31, i64 304, !81, i64 312, !6, i64 320, !39, i64 328, !39, i64 336, !31, i64 344, !31, i64 352, !31, i64 360, !31, i64 368, !27, i64 376, !36, i64 384, !31, i64 408, !6, i64 416}
!83 = !{!82, !6, i64 120}
end_hunk_1
