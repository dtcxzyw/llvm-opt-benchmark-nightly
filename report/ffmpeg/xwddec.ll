Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xwddec?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"xwd\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"XWD (X Window Dump) image\00", align 1
@ff_xwd_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 156, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 8, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @xwd_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"unsupported version\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid header size\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"pixformat %u, pixdepth %u, bunit %u, bitorder %u, bpad %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"vclass %u, ncolors %u, bpp %u, be %u, lsize %u, xoffset %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"red %0x, green %0x, blue %0x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid pixmap format\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid pixmap depth\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"xoffset %u\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"invalid byte order\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"invalid bitmap bit order\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"invalid bitmap unit\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"invalid bitmap scan-line pad\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"invalid bits per pixel\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"invalid number of entries in colormap\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"invalid bytes per scan-line\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"input buffer too small\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Pixmap format %u\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"invalid visual class\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Unknown file: bpp %u, pixdepth %u, vclass %u\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @xwd_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = icmp slt i32 %i.b, 100
  br i1 %i.c, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 20 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bytestream2_init.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 141) #6
  tail call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.e, align 1, !tbaa !20
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.f, align 1, !tbaa !20
  %.not = icmp eq i32 %i.j, 117440512
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bytestream2_init.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.bo

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.k = icmp ult i32 %i.b, %i.h
  %i.l = icmp ult i32 %i.h, 100
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #6
  br label %bb.bo

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.n = load i32, ptr %i.i, align 1, !tbaa !20   ; 2 uses
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i32, ptr %i.m, align 1, !tbaa !20   ; 5 uses
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.t = load i32, ptr %i.p, align 1, !tbaa !20
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = load i32, ptr %i.s, align 1, !tbaa !20
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.z = load i32, ptr %i.v, align 1, !tbaa !20   ; 2 uses
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = load i32, ptr %i.y, align 1, !tbaa !20  ; 9 uses
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.af = load i32, ptr %i.ab, align 1, !tbaa !20
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ai = load i32, ptr %i.ae, align 1, !tbaa !20
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.al = load i32, ptr %i.ah, align 1, !tbaa !20
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al) ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ao = load i32, ptr %i.ak, align 1, !tbaa !20 ; 6 uses
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao) ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ar = load i32, ptr %i.an, align 1, !tbaa !20
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.au = load i32, ptr %i.aq, align 1, !tbaa !20
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.ax = load i32, ptr %i.at, align 1, !tbaa !20 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.az = load i32, ptr %i.aw, align 1, !tbaa !20 ; 5 uses
  %i.ba = load i32, ptr %i.ay, align 1, !tbaa !20 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !20 ; 3 uses
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc) ; 5 uses
  %i.be = zext nneg i32 %i.h to i64
  %i.bf = getelementptr i8, ptr %i.e, i64 %i.be   ; 4 uses
  %i.bg = tail call i32 @ff_set_dimensions(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.x) #6 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.bo, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.az)
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.am) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %i.av, i32 noundef %i.bd, i32 noundef %i.ap, i32 noundef %i.ad, i32 noundef %i.as, i32 noundef %i.aa) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bi) #6
  %i.bl = icmp ugt i32 %i.o, 2
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #6
  br label %bb.bo

bb.j:                                             ; preds = %bb.h
  %i.bm = add i32 %i.r, -33
  %or.cond3 = icmp ult i32 %i.bm, -32
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8) #6
  br label %bb.bo

bb.l:                                             ; preds = %bb.j
  %.not256 = icmp eq i32 %i.z, 0
  br i1 %.not256, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.aa) #6
  br label %bb.bo

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp ugt i32 %i.ad, 1
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10) #6
  br label %bb.bo

bb.p:                                             ; preds = %bb.n
  %i.bo = icmp ugt i32 %i.aj, 1
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.11) #6
  br label %bb.bo

bb.r:                                             ; preds = %bb.p
  switch i32 %i.ag, label %bb.s [
    i32 32, label %bb.t
    i32 16, label %bb.t
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.12) #6
  br label %bb.bo

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.r
  switch i32 %i.am, label %bb.u [
    i32 32, label %bb.v
    i32 16, label %bb.v
    i32 8, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13) #6
  br label %bb.bo

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.t
  %i.bp = add i32 %i.ap, -33
  %or.cond13 = icmp ult i32 %i.bp, -32
  br i1 %or.cond13, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.14) #6
  br label %bb.bo

bb.x:                                             ; preds = %bb.v
  %i.bq = icmp ugt i32 %i.bd, 256
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.15) #6
  br label %bb.bo

bb.z:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.bv = tail call i32 @av_image_check_size(i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef 0, ptr noundef null) #6 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.bo, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !34
  %i.by = mul i32 %i.bx, %i.ap
  %i.bz = add nsw i32 %i.am, -1
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = sub nsw i32 0, %i.am
  %i.cc = and i32 %i.ca, %i.cb
  %i.cd = lshr exact i32 %i.cc, 3                 ; 3 uses
  %i.ce = icmp ult i32 %i.as, %i.cd
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16) #6
  br label %bb.bo

bb.ac:                                            ; preds = %bb.aa
  %gepdiff = sub nuw nsw i32 %i.b, %i.h
  %i.cf = zext nneg i32 %gepdiff to i64
  %i.cg = mul nuw nsw i32 %i.bd, 12
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.cj = sext i32 %i.ci to i64
  %i.ck = zext i32 %i.as to i64
  %i.cl = mul nsw i64 %i.cj, %i.ck
  %i.cm = add nsw i64 %i.cl, %i.ch
  %i.cn = icmp ugt i64 %i.cm, %i.cf
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #6
  br label %bb.bo

bb.ae:                                            ; preds = %bb.ac
  %.not257 = icmp eq i32 %i.n, 33554432
  br i1 %.not257, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %i.o) #6
  br label %bb.bo

bb.ag:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  store i32 -1, ptr %i.co, align 8, !tbaa !36
  switch i32 %i.av, label %bb.bi [
    i32 0, label %bb.ah
    i32 1, label %bb.ah
    i32 2, label %bb.am
    i32 3, label %bb.am
    i32 4, label %bb.ao
    i32 5, label %bb.ao
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  switch i32 %i.ap, label %bb.bo [
    i32 8, label %bb.ai
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.cp = icmp eq i32 %i.ao, 16777216
  %i.cq = icmp eq i32 %i.q, 16777216
  %or.cond17 = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond17, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 9, ptr %i.co, align 8, !tbaa !36
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.cr = icmp eq i32 %i.ao, 134217728
  %i.cs = icmp eq i32 %i.q, 134217728
  %or.cond19 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond19, label %bb.al, label %.thread318

bb.al:                                            ; preds = %bb.ak
  store i32 8, ptr %i.co, align 8, !tbaa !36
  br label %.thread

bb.am:                                            ; preds = %bb.ag, %bb.ag
  %i.ct = icmp eq i32 %i.ao, 134217728
  br i1 %i.ct, label %bb.an, label %.thread318

bb.an:                                            ; preds = %bb.am
  store i32 11, ptr %i.co, align 8, !tbaa !36
  br label %.thread

bb.ao:                                            ; preds = %bb.ag, %bb.ag
  %i.cu = and i32 %i.ap, 55
  %or.cond21 = icmp ne i32 %i.cu, 16
  %i.cv = icmp ne i32 %i.ao, 536870912
  %or.cond23 = and i1 %i.cv, %or.cond21
  br i1 %or.cond23, label %bb.bo, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = icmp eq i32 %i.ao, 268435456            ; 2 uses
  %i.cx = icmp eq i32 %i.q, 251658240
  %or.cond25 = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond25, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.cy = icmp eq i32 %i.ax, 8126464
  %i.cz = icmp eq i32 %i.az, -536674304           ; 2 uses
  %or.cond28 = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = icmp eq i32 %i.ba, 520093696
  %or.cond31 = select i1 %or.cond28, i1 %i.da, i1 false
  br i1 %or.cond31, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.not265 = icmp eq i32 %i.ac, 0
  %4 = select i1 %.not265, i32 39, i32 38
  br label %.thread322

bb.as:                                            ; preds = %bb.aq
  %i.db = icmp eq i32 %i.ax, 520093696
  %or.cond34 = select i1 %i.db, i1 %i.cz, i1 false
  %i.dc = icmp eq i32 %i.ba, 8126464
  %or.cond37 = select i1 %or.cond34, i1 %i.dc, i1 false
  br i1 %or.cond37, label %bb.at, label %.thread318

bb.at:                                            ; preds = %bb.as
  %.not264 = icmp eq i32 %i.ac, 0
  %5 = select i1 %.not264, i32 43, i32 42
  br label %.thread322

bb.au:                                            ; preds = %bb.ap
  %i.dd = icmp eq i32 %i.q, 268435456
  %or.cond39 = select i1 %i.cw, i1 %i.dd, i1 false
  br i1 %or.cond39, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.de = icmp eq i32 %i.ax, 16252928
  %i.df = icmp eq i32 %i.az, -536412160           ; 2 uses
  %or.cond42 = select i1 %i.de, i1 %i.df, i1 false
  %i.dg = icmp eq i32 %i.ba, 520093696
  %or.cond45 = select i1 %or.cond42, i1 %i.dg, i1 false
  br i1 %or.cond45, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.not263 = icmp eq i32 %i.ac, 0
  %6 = select i1 %.not263, i32 37, i32 36
  br label %.thread322

bb.ax:                                            ; preds = %bb.av
  %i.dh = icmp eq i32 %i.ax, 520093696
  %or.cond48 = select i1 %i.dh, i1 %i.df, i1 false
  %i.di = icmp eq i32 %i.ba, 16252928
  %or.cond51 = select i1 %or.cond48, i1 %i.di, i1 false
  br i1 %or.cond51, label %bb.ay, label %.thread318

bb.ay:                                            ; preds = %bb.ax
  %.not262 = icmp eq i32 %i.ac, 0
  %7 = select i1 %.not262, i32 41, i32 40
  br label %.thread322

bb.az:                                            ; preds = %bb.au
  switch i32 %i.ap, label %.thread318 [
    i32 24, label %bb.ba
    i32 32, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az
  %i.dj = icmp eq i32 %i.ax, 65280
  %i.dk = icmp eq i32 %i.az, 16711680             ; 2 uses
  %or.cond54 = select i1 %i.dj, i1 %i.dk, i1 false
  %i.dl = icmp eq i32 %i.ba, -16777216
  %or.cond57 = select i1 %or.cond54, i1 %i.dl, i1 false
  br i1 %or.cond57, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.not261 = icmp eq i32 %i.ac, 0
  %8 = select i1 %.not261, i32 3, i32 2
  br label %.thread322

bb.bc:                                            ; preds = %bb.ba
  %i.dm = icmp eq i32 %i.ax, -16777216
  %or.cond60 = select i1 %i.dm, i1 %i.dk, i1 false
  %i.dn = icmp eq i32 %i.ba, 65280
  %or.cond63 = select i1 %or.cond60, i1 %i.dn, i1 false
  br i1 %or.cond63, label %bb.bd, label %.thread318

bb.bd:                                            ; preds = %bb.bc
  %.not260 = icmp eq i32 %i.ac, 0
  %9 = select i1 %.not260, i32 2, i32 3
  br label %.thread322

bb.be:                                            ; preds = %bb.az
  %i.do = icmp eq i32 %i.ax, 65280
  %i.dp = icmp eq i32 %i.az, 16711680             ; 2 uses
  %or.cond66 = select i1 %i.do, i1 %i.dp, i1 false
  %i.dq = icmp eq i32 %i.ba, -16777216
  %or.cond69 = select i1 %or.cond66, i1 %i.dq, i1 false
  br i1 %or.cond69, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %.not259 = icmp eq i32 %i.ac, 0
  %i.dr = select i1 %.not259, i32 28, i32 25
  br label %.thread322

bb.bg:                                            ; preds = %bb.be
  %i.ds = icmp eq i32 %i.ax, -16777216
  %or.cond72 = select i1 %i.ds, i1 %i.dp, i1 false
  %i.dt = icmp eq i32 %i.ba, 65280
  %or.cond75 = select i1 %or.cond72, i1 %i.dt, i1 false
  br i1 %or.cond75, label %bb.bh, label %.thread318

bb.bh:                                            ; preds = %bb.bg
  %.not258 = icmp eq i32 %i.ac, 0
  %10 = select i1 %.not258, i32 26, i32 27
  br label %.thread322

bb.bi:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19) #6
  br label %bb.bo

.thread322:                                       ; preds = %bb.ay, %bb.aw, %bb.bh, %bb.bf, %bb.bb, %bb.bd, %bb.ar, %bb.at
  %.sink = phi i32 [ %7, %bb.ay ], [ %6, %bb.aw ], [ %10, %bb.bh ], [ %i.dr, %bb.bf ], [ %8, %bb.bb ], [ %9, %bb.bd ], [ %4, %bb.ar ], [ %5, %bb.at ]
  store i32 %.sink, ptr %i.co, align 8, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ch
  br label %.thread

.thread318:                                       ; preds = %bb.az, %bb.ax, %bb.bg, %bb.bc, %bb.as, %bb.ak, %bb.am
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %i.ap, i32 noundef %i.r, i32 noundef %i.av) #6
  br label %bb.bo

.thread:                                          ; preds = %.thread322, %bb.al, %bb.aj, %bb.an
  %.sroa.0.0298 = phi ptr [ %i.du, %.thread322 ], [ %i.bf, %bb.an ], [ %i.bf, %bb.aj ], [ %i.bf, %bb.al ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !37
  %i.dx = icmp sgt i32 %i.dw, 47
  br i1 %i.dx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !18
  br label %bb.bo

bb.bk:                                            ; preds = %.thread
  %i.dz = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eb = load i32, ptr %i.co, align 8, !tbaa !36
  %i.ec = icmp eq i32 %i.eb, 11
  br i1 %i.ec, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !38 ; 3 uses
  %.not305 = icmp eq i32 %i.bc, 0
  br i1 %.not305, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bm
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ef = icmp eq i32 %i.bc, 16777216
  br i1 %i.ef, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.sroa.0.1299 = phi ptr [ %.sroa.0.0298, %.lr.ph.preheader.new ], [ %i.fe, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 4
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 6
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !20
  %i.el = zext i8 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 8
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.ei, 16
  %i.eq = shl nuw nsw i32 %i.el, 8
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = or disjoint i32 %i.er, %i.eo
  %i.et = or disjoint i32 %i.es, -16777216
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !39
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 16
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !20
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 18
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !20
  %i.fa = zext i8 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 20
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !20
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.1299, i64 24 ; 3 uses
  %i.ff = shl nuw nsw i32 %i.ex, 16
  %i.fg = shl nuw nsw i32 %i.fa, 8
  %i.fh = or disjoint i32 %i.ff, %i.fg
  %i.fi = or disjoint i32 %i.fh, %i.fd
  %i.fj = or disjoint i32 %i.fi, -16777216
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.0.1299.epil.init = phi ptr [ %.sroa.0.0298, %.lr.ph.preheader ], [ %i.fe, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod325 = trunc i32 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod325)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.1299.epil.init, i64 4
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !20
  %i.fo = zext i8 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.1299.epil.init, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !20
  %i.fr = zext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.1299.epil.init, i64 8
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !20
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.1299.epil.init, i64 12
  %i.fw = shl nuw nsw i32 %i.fo, 16
  %i.fx = shl nuw nsw i32 %i.fr, 8
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = or disjoint i32 %i.fy, %i.fu
  %i.ga = or disjoint i32 %i.fz, -16777216
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.epil.init
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.bm, %bb.bl
  %.sroa.0.2 = phi ptr [ %.sroa.0.0298, %bb.bl ], [ %.sroa.0.0298, %bb.bm ], [ %i.fe, %.loopexit.loopexit.unr-lcssa ], [ %i.fv, %.lr.ph.epil.preheader ]
  %i.gc = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph304, label %._crit_edge

.lr.ph304:                                        ; preds = %.loopexit
  %i.ge = load ptr, ptr %1, align 8, !tbaa !38
  %i.gf = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.gg = sub nuw i32 %i.as, %i.cd
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.bn

._crit_edge:                                      ; preds = %bb.bn, %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !39
  %i.gj = load i32, ptr %i.a, align 8, !tbaa !18
  br label %bb.bo

bb.bn:                                            ; preds = %.lr.ph304, %bb.bn
  %.0303 = phi i32 [ 0, %.lr.ph304 ], [ %i.gp, %bb.bn ]
  %.0241302 = phi ptr [ %i.ge, %.lr.ph304 ], [ %i.go, %bb.bn ] ; 2 uses
  %.sroa.0.3301 = phi ptr [ %.sroa.0.2, %.lr.ph304 ], [ %i.gl, %bb.bn ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0241302, ptr align 1 %.sroa.0.3301, i64 %i.gf, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.3301, i64 %i.gf
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gh
  %i.gm = load i32, ptr %i.gi, align 8, !tbaa !39
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %.0241302, i64 %i.gn
  %i.gp = add nuw nsw i32 %.0303, 1               ; 2 uses
  %i.gq = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.gr = icmp slt i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.bn, label %._crit_edge, !llvm.loop !10

bb.bo:                                            ; preds = %bb.bk, %bb.ao, %bb.ah, %bb.z, %bb.g, %bb.a, %._crit_edge, %bb.bj, %.thread318, %bb.bi, %bb.af, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.f, %bb.d
  %.0242 = phi i32 [ -1094995529, %bb.ah ], [ -1094995529, %bb.d ], [ -1094995529, %bb.f ], [ -1094995529, %bb.a ], [ -1094995529, %bb.i ], [ -1094995529, %bb.k ], [ -1163346256, %bb.m ], [ -1094995529, %bb.o ], [ -1094995529, %bb.q ], [ -1094995529, %bb.s ], [ -1094995529, %bb.u ], [ -1094995529, %bb.w ], [ -1094995529, %bb.y ], [ %i.bg, %bb.g ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.ad ], [ -1163346256, %bb.af ], [ -1094995529, %bb.bi ], [ %i.bv, %bb.z ], [ -1163346256, %.thread318 ], [ %i.dy, %bb.bj ], [ -1094995529, %bb.ao ], [ %i.gj, %._crit_edge ], [ %i.dz, %bb.bk ]
  ret i32 %.0242
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

end_hunk_0
