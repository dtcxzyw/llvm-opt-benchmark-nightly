Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pafaudio?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"paf_audio\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Amazing Studio Packed Animation File Audio\00", align 1
@ff_paf_audio_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86080, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @paf_audio_init, %union.anon { ptr @paf_audio_decode }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid number of channels\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @paf_audio_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #4
  store i32 2, ptr %i.a, align 4, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @paf_audio_decode(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 45 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = sdiv i32 %i.f, 4922                      ; 2 uses
  %i.h = icmp slt i32 %i.f, 4922
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i32 %i.g, 2205
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d, %.preheader.preheader
  %.038 = phi i32 [ %i.ea, %bb.d ], [ 0, %.preheader.preheader ]
  %.02537 = phi ptr [ %i.dt, %bb.d ], [ %i.d, %.preheader.preheader ] ; 38 uses
  %.02736 = phi ptr [ %i.dy, %bb.d ], [ %i.m, %.preheader.preheader ]
  %.0253746 = ptrtoaddr ptr %.02537 to i64
  %i.as = sub i64 %.0253746, %i.b
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.at = getelementptr inbounds nuw i8, ptr %.02537, i64 16
  %wide.load = load <8 x i16>, ptr %.02537, align 1, !tbaa !30
  %wide.load47 = load <8 x i16>, ptr %i.at, align 1, !tbaa !30
  store <8 x i16> %wide.load, ptr %i.a, align 16, !tbaa !41
  store <8 x i16> %wide.load47, ptr %i.n, align 16, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %.02537, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.02537, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.au, align 1, !tbaa !30
  %wide.load47.1 = load <8 x i16>, ptr %i.av, align 1, !tbaa !30
  store <8 x i16> %wide.load.1, ptr %i.o, align 16, !tbaa !41
  store <8 x i16> %wide.load47.1, ptr %i.p, align 16, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.02537, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %.02537, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.aw, align 1, !tbaa !30
  %wide.load47.2 = load <8 x i16>, ptr %i.ax, align 1, !tbaa !30
  store <8 x i16> %wide.load.2, ptr %i.q, align 16, !tbaa !41
  store <8 x i16> %wide.load47.2, ptr %i.r, align 16, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %.02537, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.02537, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.ay, align 1, !tbaa !30
  %wide.load47.3 = load <8 x i16>, ptr %i.az, align 1, !tbaa !30
  store <8 x i16> %wide.load.3, ptr %i.s, align 16, !tbaa !41
  store <8 x i16> %wide.load47.3, ptr %i.t, align 16, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %.02537, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %.02537, i64 144
  %wide.load.4 = load <8 x i16>, ptr %i.ba, align 1, !tbaa !30
  %wide.load47.4 = load <8 x i16>, ptr %i.bb, align 1, !tbaa !30
  store <8 x i16> %wide.load.4, ptr %i.u, align 16, !tbaa !41
  store <8 x i16> %wide.load47.4, ptr %i.v, align 16, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %.02537, i64 160
  %i.bd = getelementptr inbounds nuw i8, ptr %.02537, i64 176
  %wide.load.5 = load <8 x i16>, ptr %i.bc, align 1, !tbaa !30
  %wide.load47.5 = load <8 x i16>, ptr %i.bd, align 1, !tbaa !30
  store <8 x i16> %wide.load.5, ptr %i.w, align 16, !tbaa !41
  store <8 x i16> %wide.load47.5, ptr %i.x, align 16, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %.02537, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %.02537, i64 208
  %wide.load.6 = load <8 x i16>, ptr %i.be, align 1, !tbaa !30
  %wide.load47.6 = load <8 x i16>, ptr %i.bf, align 1, !tbaa !30
  store <8 x i16> %wide.load.6, ptr %i.y, align 16, !tbaa !41
  store <8 x i16> %wide.load47.6, ptr %i.z, align 16, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %.02537, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %.02537, i64 240
  %wide.load.7 = load <8 x i16>, ptr %i.bg, align 1, !tbaa !30
  %wide.load47.7 = load <8 x i16>, ptr %i.bh, align 1, !tbaa !30
  store <8 x i16> %wide.load.7, ptr %i.aa, align 16, !tbaa !41
  store <8 x i16> %wide.load47.7, ptr %i.ab, align 16, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.02537, i64 256
  %i.bj = getelementptr inbounds nuw i8, ptr %.02537, i64 272
  %wide.load.8 = load <8 x i16>, ptr %i.bi, align 1, !tbaa !30
  %wide.load47.8 = load <8 x i16>, ptr %i.bj, align 1, !tbaa !30
  store <8 x i16> %wide.load.8, ptr %i.ac, align 16, !tbaa !41
  store <8 x i16> %wide.load47.8, ptr %i.ad, align 16, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %.02537, i64 288
  %i.bl = getelementptr inbounds nuw i8, ptr %.02537, i64 304
  %wide.load.9 = load <8 x i16>, ptr %i.bk, align 1, !tbaa !30
  %wide.load47.9 = load <8 x i16>, ptr %i.bl, align 1, !tbaa !30
  store <8 x i16> %wide.load.9, ptr %i.ae, align 16, !tbaa !41
  store <8 x i16> %wide.load47.9, ptr %i.af, align 16, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.02537, i64 320
  %i.bn = getelementptr inbounds nuw i8, ptr %.02537, i64 336
  %wide.load.10 = load <8 x i16>, ptr %i.bm, align 1, !tbaa !30
  %wide.load47.10 = load <8 x i16>, ptr %i.bn, align 1, !tbaa !30
  store <8 x i16> %wide.load.10, ptr %i.ag, align 16, !tbaa !41
  store <8 x i16> %wide.load47.10, ptr %i.ah, align 16, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %.02537, i64 352
  %i.bp = getelementptr inbounds nuw i8, ptr %.02537, i64 368
  %wide.load.11 = load <8 x i16>, ptr %i.bo, align 1, !tbaa !30
  %wide.load47.11 = load <8 x i16>, ptr %i.bp, align 1, !tbaa !30
  store <8 x i16> %wide.load.11, ptr %i.ai, align 16, !tbaa !41
  store <8 x i16> %wide.load47.11, ptr %i.aj, align 16, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %.02537, i64 384
  %i.br = getelementptr inbounds nuw i8, ptr %.02537, i64 400
  %wide.load.12 = load <8 x i16>, ptr %i.bq, align 1, !tbaa !30
  %wide.load47.12 = load <8 x i16>, ptr %i.br, align 1, !tbaa !30
  store <8 x i16> %wide.load.12, ptr %i.ak, align 16, !tbaa !41
  store <8 x i16> %wide.load47.12, ptr %i.al, align 16, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.02537, i64 416
  %i.bt = getelementptr inbounds nuw i8, ptr %.02537, i64 432
  %wide.load.13 = load <8 x i16>, ptr %i.bs, align 1, !tbaa !30
  %wide.load47.13 = load <8 x i16>, ptr %i.bt, align 1, !tbaa !30
  store <8 x i16> %wide.load.13, ptr %i.am, align 16, !tbaa !41
  store <8 x i16> %wide.load47.13, ptr %i.an, align 16, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %.02537, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %.02537, i64 464
  %wide.load.14 = load <8 x i16>, ptr %i.bu, align 1, !tbaa !30
  %wide.load47.14 = load <8 x i16>, ptr %i.bv, align 1, !tbaa !30
  store <8 x i16> %wide.load.14, ptr %i.ao, align 16, !tbaa !41
  store <8 x i16> %wide.load47.14, ptr %i.ap, align 16, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.02537, i64 480
  %i.bx = getelementptr inbounds nuw i8, ptr %.02537, i64 496
  %wide.load.15 = load <8 x i16>, ptr %i.bw, align 1, !tbaa !30
  %wide.load47.15 = load <8 x i16>, ptr %i.bx, align 1, !tbaa !30
  store <8 x i16> %wide.load.15, ptr %i.aq, align 16, !tbaa !41
  store <8 x i16> %wide.load47.15, ptr %i.ar, align 16, !tbaa !41
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.by = shl nuw nsw i64 %indvars.iv, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.02537, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !30
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.ca, ptr %i.cb, align 8, !tbaa !41
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = shl nuw nsw i64 %indvars.iv.next, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.02537, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 1, !tbaa !30
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !41
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cg = shl nuw nsw i64 %indvars.iv.next.1, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.02537, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 1, !tbaa !30
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i16 %i.ci, ptr %i.cj, align 4, !tbaa !41
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ck = shl nuw nsw i64 %indvars.iv.next.2, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.02537, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 1, !tbaa !30
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %middle.block, label %scalar.ph, !llvm.loop !43

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.co = getelementptr inbounds nuw i8, ptr %.02537, i64 512
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %middle.block
  %.135 = phi i32 [ 0, %middle.block ], [ %i.dz, %bb.c ]
  %.12634 = phi ptr [ %i.co, %middle.block ], [ %i.dt, %bb.c ] ; 7 uses
  %.12833 = phi ptr [ %.02736, %middle.block ], [ %i.dy, %bb.c ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.12634, i64 1
  %i.cq = load i8, ptr %.12634, align 1, !tbaa !30
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %.12833, i64 2
  store i16 %i.ct, ptr %.12833, align 2, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %.12634, i64 2
  %i.cw = load i8, ptr %i.cp, align 1, !tbaa !30
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %.12833, i64 4
  store i16 %i.cz, ptr %i.cu, align 2, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %.12634, i64 3
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.12833, i64 6
  store i16 %i.df, ptr %i.da, align 2, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %.12634, i64 4
  %i.di = load i8, ptr %i.db, align 1, !tbaa !30
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.12833, i64 8
  store i16 %i.dl, ptr %i.dg, align 2, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.12634, i64 5
  %i.do = load i8, ptr %i.dh, align 1, !tbaa !30
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %.12833, i64 10
  store i16 %i.dr, ptr %i.dm, align 2, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %.12634, i64 6 ; 2 uses
  %i.du = load i8, ptr %i.dn, align 1, !tbaa !30
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %.12833, i64 12 ; 2 uses
  store i16 %i.dx, ptr %i.ds, align 2, !tbaa !41
  %i.dz = add nuw nsw i32 %.135, 6                ; 2 uses
  %exitcond41.not.5 = icmp eq i32 %i.dz, 4410
  br i1 %exitcond41.not.5, label %bb.d, label %bb.c, !llvm.loop !46

bb.d:                                             ; preds = %bb.c
  %i.ea = add nuw nsw i32 %.038, 1                ; 2 uses
  %exitcond42.not = icmp eq i32 %i.ea, %i.g
  br i1 %exitcond42.not, label %._crit_edge, label %vector.memcheck, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !29
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.029 = phi i32 [ %i.eb, %._crit_edge ], [ -1094995529, %bb.a ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.029
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!9 = !{!10, !6, i64 356}
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
!29 = !{!6, !6, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!33, !16, i64 24}
!33 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!34 = !{!33, !6, i64 32}
!35 = !{!36, !6, i64 112}
!36 = !{!"AVFrame", !7, i64 0, !7, i64 64, !37, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !38, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !39, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!37 = !{!"p2 omnipotent char", !28, i64 0}
!38 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!39 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!40 = !{!16, !16, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !7, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
end_hunk_0
