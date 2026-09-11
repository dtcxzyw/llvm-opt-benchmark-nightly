Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mss2?download=true
inline.NumInlined: 51
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.GetBitContext = type { ptr, i32, i32, i32 }
%struct.GetByteContext = type { ptr, ptr, ptr }
%struct.ArithCoder = type { i32, i32, i32, i32, %union.anon.5, ptr, ptr }
%union.anon.5 = type { ptr }
%struct.Rectangle = type { i32, i32, i32, i32, i32 }
%struct.Rectangle2 = type { i32, i32, i32, i32 }
%struct.VLC = type { i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mss2\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"MS Windows Media Video V9 Screen\00", align 1
@ff_mss2_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 165, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 347696, ptr null, ptr null, ptr null, ptr @mss2_decode_init, %union.anon { ptr @mss2_decode_frame }, ptr @mss2_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@ff_wmv2_scantableA = external constant [64 x i8], align 16
@ff_wmv2_scantableB = external constant [64 x i8], align 16
@.str.2 = private unnamed_addr constant [33 x i8] c"implicit_rect && used_rects > 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unexpected grandchildren\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"frame->linesize[0] == ctx->last_pic->linesize[0]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"libavcodec/mss2.c\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Missing keyframe\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"buffer not fully consumed\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"repeat overflow\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"header error\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"expected I-frame\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"ff_mpv_frame_start error\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"disabling error correction due to block count mismatch %dx%d != %dx%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Asymmetric WMV9 rectangle subsampling\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"f->linesize[1] == f->linesize[2]\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @mss2_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11008 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12168
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 179928
  %i.f = tail call i32 @ff_mss12_decode_init(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @av_frame_alloc() #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 11000 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12072
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12056 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !63
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.j, %i.n
  %i.p = tail call noalias ptr @av_mallocz(i64 noundef %i.o) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12040 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !64
  %i.r = load i64, ptr %i.k, align 8, !tbaa !62
  %i.s = load i32, ptr %i.l, align 4, !tbaa !63
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.r, %i.t
  %i.v = tail call noalias ptr @av_mallocz(i64 noundef %i.u) #11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12048
  store ptr %i.v, ptr %i.w, align 8, !tbaa !94
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not27 = icmp eq ptr %i.x, null
  %.not28 = icmp eq ptr %i.v, null
  %or.cond = select i1 %.not27, i1 true, i1 %.not28
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !61
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc i32 @wmv9_init(ptr noundef nonnull %0) #12 ; 2 uses
  %.not30 = icmp eq i32 %i.z, 0
  br i1 %.not30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12136
  tail call void @ff_mss2dsp_init(ptr noundef nonnull %i.aa) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !65
  %i.ad = icmp eq i32 %i.ac, 127
  %i.ae = select i1 %i.ad, i32 39, i32 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ %i.f, %bb.a ], [ -12, %bb.b ], [ 0, %bb.e ], [ -12, %bb.c ], [ %i.z, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @mss2_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.GetBitContext, align 8      ; 9 uses
  %5 = alloca %struct.GetByteContext, align 8     ; 18 uses
  %6 = alloca %struct.ArithCoder, align 8         ; 42 uses
  %7 = alloca [20 x %struct.Rectangle], align 16  ; 9 uses
  %8 = alloca %struct.Rectangle2, align 4         ; 8 uses
  %9 = alloca %struct.Rectangle2, align 4         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %or.cond.i394 = icmp ugt i32 %i.d, 268435455
  %i.g = shl nuw nsw i32 %i.d, 3
  %i.h = select i1 %or.cond.i394, i32 -8, i32 %i.g ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.h, 2147483135    ; 2 uses
  %i.i = icmp ne ptr %i.b, null
  %or.cond3.i.i = and i1 %i.i, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.b, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.h, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %4, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %.013.i.i, ptr %i.j, align 4, !tbaa !68
  %i.k = add nuw nsw i32 %.013.i.i, 8             ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  br i1 %or.cond3.i.i, label %bb.b, label %decode_pal_v2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.b, align 1, !tbaa !70    ; 2 uses
  %i.o = lshr i8 %i.n, 7
  %i.p = zext nneg i8 %i.o to i32                 ; 4 uses
  %.not = icmp sgt i8 %i.n, -1                    ; 5 uses
  %spec.select = select i1 %.not, i32 1, i32 8    ; 4 uses
  %i.q = lshr i32 %spec.select, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !70
  %i.u = icmp samesign ult i32 %spec.select, %i.k
  %i.v = zext i1 %i.u to i32
  %spec.select.i395 = add nuw nsw i32 %spec.select, %i.v ; 5 uses
  %i.w = zext i8 %i.t to i32
  %i.x = and i32 %spec.select, 1
  %i.y = shl nuw nsw i32 %i.w, %i.x               ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i32 %spec.select.i395, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !70
  %i.ad = icmp samesign ult i32 %spec.select.i395, %i.k
  %i.ae = zext i1 %i.ad to i32
  %spec.select.i396 = add nuw nsw i32 %spec.select.i395, %i.ae
  %i.af = zext i8 %i.ac to i32
  %i.ag = and i32 %spec.select.i395, 3
  %i.ah = lshr exact i32 128, %i.ag
  %i.ai = and i32 %i.ah, %i.af
  %i.aj = icmp ne i32 %i.ai, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ak = phi i32 [ %spec.select.i396, %bb.c ], [ %spec.select.i395, %bb.b ] ; 4 uses
  %i.al = phi i1 [ %i.aj, %bb.c ], [ false, %bb.b ] ; 2 uses
  %i.am = lshr i32 %i.ak, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !70
  %i.aq = icmp samesign ult i32 %i.ak, %i.k
  %i.ar = zext i1 %i.aq to i32
  %spec.select.i397 = add nuw nsw i32 %i.ak, %i.ar ; 6 uses
  %i.as = zext i8 %i.ap to i32
  %i.at = and i32 %i.ak, 7
  store i32 %spec.select.i397, ptr %i.m, align 8, !tbaa !71
  %i.au = lshr exact i32 128, %i.at
  %i.av = and i32 %i.au, %i.as
  %.not343 = icmp eq i32 %i.av, 0                 ; 2 uses
  br i1 %.not343, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = lshr i32 %spec.select.i397, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !70
  %i.ba = icmp samesign ult i32 %spec.select.i397, %i.k
  %i.bb = zext i1 %i.ba to i32
  %spec.select.i398 = add nuw nsw i32 %spec.select.i397, %i.bb ; 2 uses
  %i.bc = zext i8 %i.az to i32
  %i.bd = and i32 %spec.select.i397, 7
  store i32 %spec.select.i398, ptr %i.m, align 8, !tbaa !71
  %i.be = lshr exact i32 128, %i.bd
  %i.bf = and i32 %i.be, %i.bc
  %i.bg = icmp ne i32 %i.bf, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bh = phi i32 [ %spec.select.i397, %bb.d ], [ %spec.select.i398, %bb.e ] ; 6 uses
  %i.bi = phi i1 [ false, %bb.d ], [ %i.bg, %bb.e ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 12124 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !105 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 10992
  store i32 %i.bk, ptr %i.bm, align 16, !tbaa !106
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.bn = icmp slt i32 %i.bk, 0
  br i1 %i.bn, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bo = lshr i32 %i.bh, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !70
  %i.bs = icmp samesign ult i32 %i.bh, %i.k
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i399 = add nuw nsw i32 %i.bh, %i.bt ; 7 uses
  %i.bu = zext i8 %i.br to i32
  %i.bv = and i32 %i.bh, 7
  store i32 %spec.select.i399, ptr %i.m, align 8, !tbaa !71
  %i.bw = lshr exact i32 128, %i.bv
  %i.bx = and i32 %i.bw, %i.bu
  %.not344 = icmp eq i32 %i.bx, 0
  br i1 %.not344, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = lshr i32 %spec.select.i399, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !70
  %i.cc = icmp samesign ult i32 %spec.select.i399, %i.k
  %i.cd = zext i1 %i.cc to i32
  %spec.select.i400 = add nuw nsw i32 %spec.select.i399, %i.cd ; 6 uses
  %i.ce = zext i8 %i.cb to i32
  %i.cf = and i32 %spec.select.i399, 7
  %i.cg = lshr exact i32 128, %i.cf
  %i.ch = and i32 %i.cg, %i.ce
  %.not345 = icmp eq i32 %i.ch, 0
  %i.ci = lshr i32 %spec.select.i400, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj ; 2 uses
  br i1 %.not345, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !70
  %i.cm = icmp samesign ult i32 %spec.select.i400, %i.k
  %i.cn = zext i1 %i.cm to i32
  %spec.select.i401 = add nuw nsw i32 %spec.select.i400, %i.cn ; 4 uses
  %i.co = zext i8 %i.cl to i32
  %i.cp = and i32 %spec.select.i400, 7
  %i.cq = lshr exact i32 128, %i.cp
  %i.cr = and i32 %i.cq, %i.co
  %.not346 = icmp eq i32 %i.cr, 0
  %i.cs = lshr i32 %spec.select.i401, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !70
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = and i32 %spec.select.i401, 7
  %i.cy = shl i32 %i.cw, %i.cx                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 10992 ; 2 uses
  br i1 %.not346, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = lshr i32 %i.cy, 16                      ; 2 uses
  %i.db = add nuw nsw i32 %spec.select.i401, 16
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.db) ; 2 uses
  store i32 %i.dc, ptr %i.m, align 8, !tbaa !71
  store i32 %i.da, ptr %i.cz, align 16, !tbaa !106
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.dd = lshr i32 %i.cy, 20                      ; 2 uses
  %i.de = add nuw nsw i32 %spec.select.i401, 12
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.de) ; 2 uses
  store i32 %i.df, ptr %i.m, align 8, !tbaa !71
  store i32 %i.dd, ptr %i.cz, align 16, !tbaa !106
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.dg = load i32, ptr %i.ck, align 1, !tbaa !70
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  %i.di = and i32 %spec.select.i400, 7
  %i.dj = shl i32 %i.dh, %i.di
  %i.dk = add nuw nsw i32 %spec.select.i400, 8
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.dk) ; 2 uses
  store i32 %i.dl, ptr %i.m, align 8, !tbaa !71
  %i.dm = lshr i32 %i.dj, 20
  %i.dn = and i32 %i.dm, 4080                     ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 10992
  store i32 %i.dn, ptr %i.do, align 16, !tbaa !106
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  br i1 %.not, label %._crit_edge515, label %bb.p

._crit_edge515:                                   ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 10992
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !106
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !63
  %i.dr = sdiv i32 %i.dq, 2                       ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 10992
  store i32 %i.dr, ptr %i.ds, align 16, !tbaa !106
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !63 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 10992
  store i32 %i.du, ptr %i.dv, align 16, !tbaa !106
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge515, %bb.p, %bb.n, %bb.m, %bb.l, %bb.g
  %.val.i517 = phi i32 [ %spec.select.i399, %._crit_edge515 ], [ %spec.select.i399, %bb.p ], [ %i.dl, %bb.n ], [ %i.df, %bb.m ], [ %i.dc, %bb.l ], [ %i.bh, %bb.g ]
  %i.dw = phi i32 [ %.pre, %._crit_edge515 ], [ %i.dr, %bb.p ], [ %i.dn, %bb.n ], [ %i.dd, %bb.m ], [ %i.da, %bb.l ], [ %i.bk, %bb.g ] ; 3 uses
  %not. = xor i1 %i.bi, true
  %i.dx = zext i1 %not. to i32
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %decode_pal_v2.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !63
  %.not348 = icmp slt i32 %i.dw, %i.ea
  br i1 %.not348, label %bb.t, label %decode_pal_v2.exit.thread
end_hunk_0
begin_hunk_1_@mss2_decode_frame:bb.a
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !70
  %i.pl = zext i8 %i.pk to i32
  %i.pm = shl nuw nsw i32 %i.pl, 8
  %i.pn = or disjoint i32 %i.pm, %i.pi
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 2
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !70
  %i.pq = zext i8 %i.pp to i32
  %i.pr = or disjoint i32 %i.pn, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store i32 %i.pr, ptr %.024.i, align 4, !tbaa !82
  %i.pt = mul nuw i64 %indvars.iv.i, 3
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.pt ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !70
  %i.px = zext i8 %i.pw to i32
  %i.py = shl nuw nsw i32 %i.px, 16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !70
  %i.qb = zext i8 %i.qa to i32
  %i.qc = shl nuw nsw i32 %i.qb, 8
  %i.qd = or disjoint i32 %i.qc, %i.py
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pu, i64 5
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !70
  %i.qg = zext i8 %i.qf to i32
  %i.qh = or disjoint i32 %i.qd, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  store i32 %i.qh, ptr %i.ps, align 4, !tbaa !82
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !97

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.024.i.epil.init = phi ptr [ %i.ov, %.lr.ph.preheader.i ], [ %i.qi, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod588 = trunc i8 %i.ox to i1
  call void @llvm.assume(i1 %lcmp.mod588)
  %i.qj = mul nuw nsw i64 %indvars.iv.i.epil.init, 3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.qj ; 3 uses
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !70
  %i.qm = zext i8 %i.ql to i32
  %i.qn = shl nuw nsw i32 %i.qm, 16
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !70
  %i.qq = zext i8 %i.qp to i32
  %i.qr = shl nuw nsw i32 %i.qq, 8
  %i.qs = or disjoint i32 %i.qr, %i.qn
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !70
  %i.qv = zext i8 %i.qu to i32
  %i.qw = or disjoint i32 %i.qs, %i.qv
  store i32 %i.qw, ptr %.024.i.epil.init, align 4, !tbaa !82
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pr.pre.pre.pre = load i32, ptr %i.op, align 8, !tbaa !123
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.pr.pre.pre = phi i32 [ %.pr.pre.pre.pre, %._crit_edge.i.loopexit ], [ 0, %.preheader.i ]
  %i.qx = add nuw nsw i32 %i.pa, 1
  br label %decode_pal_v2.exit

decode_pal_v2.exit:                               ; preds = %._crit_edge.i, %bb.bl
  %.pr.pre = phi i32 [ 0, %bb.bl ], [ %.pr.pre.pre, %._crit_edge.i ]
  %.020.i = phi i32 [ 0, %bb.bl ], [ %i.qx, %._crit_edge.i ] ; 2 uses
  %i.qy = zext nneg i32 %.020.i to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %.0311, i64 %i.qy
  %i.ra = sub nsw i32 %.0306, %.020.i
  br label %bb.br

bb.bo:                                            ; preds = %bb.bk
  br i1 %i.al, label %bb.bp, label %.thread445.thread

bb.bp:                                            ; preds = %bb.bo
  %i.rb = icmp samesign ult i32 %.0306, 5
  br i1 %i.rb, label %decode_pal_v2.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rc = add nsw i32 %.0306, -4
  %i.rd = getelementptr inbounds nuw i8, ptr %.0311, i64 4
  %i.re = load i16, ptr %.0311, align 1, !tbaa !70
  %i.rf = call i16 @llvm.bswap.i16(i16 %i.re)
  %i.rg = zext i16 %i.rf to i32
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !115
  %i.rj = sub nsw i32 %i.rg, %i.ri                ; 2 uses
  store i32 %i.rj, ptr %i.op, align 8, !tbaa !123
  %i.rk = getelementptr inbounds nuw i8, ptr %.0311, i64 2
  %i.rl = load i16, ptr %i.rk, align 1, !tbaa !70
  %i.rm = call i16 @llvm.bswap.i16(i16 %i.rl)
  %i.rn = zext i16 %i.rm to i32
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !63
  %i.rq = sub nsw i32 %i.rn, %i.rp
  store i32 %i.rq, ptr %i.oo, align 4, !tbaa !122
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %decode_pal_v2.exit
  %.pr = phi i32 [ %.pr.pre, %decode_pal_v2.exit ], [ %i.rj, %bb.bq ]
  %.1312.ph = phi ptr [ %i.qz, %decode_pal_v2.exit ], [ %i.rd, %bb.bq ] ; 2 uses
  %.1307.ph = phi i32 [ %i.ra, %decode_pal_v2.exit ], [ %i.rc, %bb.bq ] ; 2 uses
  %i.rr = icmp slt i32 %.pr, 0
  br i1 %i.rr, label %bb.bs, label %.thread445

.thread445:                                       ; preds = %bb.br
  %.pr465 = load i32, ptr %i.oo, align 4, !tbaa !122
  %i.rs = icmp slt i32 %.pr465, 0
  br i1 %i.rs, label %bb.bs, label %.thread445.thread

bb.bs:                                            ; preds = %bb.br, %.thread445
  %i.rt = getelementptr inbounds nuw i8, ptr %i.f, i64 12040 ; 2 uses
  %i.ru = load <2 x ptr>, ptr %i.rt, align 8, !tbaa !78
  %i.rv = shufflevector <2 x ptr> %i.ru, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.rv, ptr %i.rt, align 8, !tbaa !78
  %i.rw = call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 1) #11 ; 2 uses
  %i.rx = icmp slt i32 %i.rw, 0
  br i1 %i.rx, label %decode_pal_v2.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ry = load ptr, ptr %i.ep, align 8, !tbaa !61 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !78 ; 2 uses
  %.not355 = icmp eq ptr %i.rz, null
  br i1 %.not355, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !82 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !82
  %i.se = icmp eq i32 %i.sb, %i.sd
  br i1 %i.se, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 644) #11
  call void @abort() #13
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !63 ; 2 uses
  %i.sh = add nsw i32 %i.sg, -1
  %i.si = mul nsw i32 %i.sh, %i.sb
  %i.sj = sext i32 %i.si to i64                   ; 2 uses
  %i.sk = getelementptr inbounds i8, ptr %i.rz, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.f, i64 12088
  store ptr %i.sk, ptr %i.sl, align 8, !tbaa !124
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #11
  br label %decode_pal_v2.exit.thread

.thread445.thread:                                ; preds = %bb.bo, %.thread445
  %.1312449469 = phi ptr [ %.1312.ph, %.thread445 ], [ %.0311, %bb.bo ]
  %.1307452468 = phi i32 [ %.1307.ph, %.thread445 ], [ %.0306, %bb.bo ]
  %i.sm = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.sn = call i32 @ff_reget_buffer(ptr noundef %0, ptr noundef %i.sm, i32 noundef 0) #11 ; 2 uses
  %i.so = icmp slt i32 %i.sn, 0
  br i1 %i.so, label %decode_pal_v2.exit.thread, label %bb.by

bb.by:                                            ; preds = %.thread445.thread
  %i.sp = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.sq = call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.sp) #11 ; 2 uses
  %i.sr = icmp slt i32 %i.sq, 0
  br i1 %i.sr, label %decode_pal_v2.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ss = getelementptr inbounds nuw i8, ptr %i.f, i64 12088
  store ptr null, ptr %i.ss, align 8, !tbaa !124
  %.phi.trans.insert523 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre524 = load i32, ptr %.phi.trans.insert523, align 8, !tbaa !82 ; 2 uses
  %.phi.trans.insert525 = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.pre526 = load i32, ptr %.phi.trans.insert525, align 4, !tbaa !63 ; 2 uses
  %.pre535 = add nsw i32 %.pre526, -1
  %.pre536 = mul nsw i32 %.pre535, %.pre524
  %.pre538 = sext i32 %.pre536 to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  %.pre-phi539 = phi i64 [ %.pre538, %bb.bz ], [ %i.sj, %bb.bw ]
  %i.st = phi i32 [ %.pre526, %bb.bz ], [ %i.sg, %bb.bw ]
  %i.su = phi i32 [ %.pre524, %bb.bz ], [ %i.sb, %bb.bw ]
  %.1307451 = phi i32 [ %.1307452468, %bb.bz ], [ %.1307.ph, %bb.bw ] ; 12 uses
  %.1312448 = phi ptr [ %.1312449469, %bb.bz ], [ %.1312.ph, %bb.bw ] ; 15 uses
  %i.sv = load ptr, ptr %1, align 8, !tbaa !78
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.sx = getelementptr inbounds i8, ptr %i.sv, i64 %.pre-phi539 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.f, i64 12080 ; 4 uses
  store ptr %i.sx, ptr %i.sy, align 8, !tbaa !83
  %i.sz = sub nsw i32 0, %i.su
  %i.ta = sext i32 %i.sz to i64                   ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.f, i64 12096 ; 13 uses
  store i64 %i.ta, ptr %i.tb, align 8, !tbaa !84
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 3 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !125 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  br i1 %.not, label %bb.cb, label %.thread454

bb.cb:                                            ; preds = %bb.ca
  %i.tf = and i32 %i.td, -3
  store i32 %i.tf, ptr %i.tc, align 4, !tbaa !125
  store i32 2, ptr %i.te, align 8, !tbaa !126
  br i1 %i.bi, label %bb.cc, label %bb.cg

.thread454:                                       ; preds = %bb.ca
  %i.tg = or i32 %i.td, 2
  store i32 %i.tg, ptr %i.tc, align 4, !tbaa !125
  store i32 1, ptr %i.te, align 8, !tbaa !126
  br i1 %i.bi, label %bb.cc, label %.thread455

bb.cc:                                            ; preds = %.thread454, %bb.cb
  %i.th = icmp sgt i32 %.1307451, -1
  br i1 %i.th, label %bytestream2_init.exit386, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #11
  call void @abort() #13
  unreachable

bytestream2_init.exit386:                         ; preds = %bb.cc
  store ptr %.1312448, ptr %5, align 8, !tbaa !80
  %i.ti = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.1312448, ptr %i.ti, align 8, !tbaa !73
  %i.tj = zext nneg i32 %.1307451 to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %.1312448, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !74
  %i.tm = ashr i64 %i.ta, 1
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !115
  %i.tp = call fastcc i32 @decode_555(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %i.sx, i64 noundef %i.tm, i32 noundef %i.p, i32 noundef %i.to, i32 noundef %i.st)
  %.not368 = icmp eq i32 %i.tp, 0
  br i1 %.not368, label %bb.ce, label %decode_pal_v2.exit.thread

bb.ce:                                            ; preds = %bytestream2_init.exit386
  %i.tq = load ptr, ptr %5, align 8, !tbaa !80
  %i.tr = load ptr, ptr %i.ti, align 8, !tbaa !73
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64
  %.neg = sub i64 %i.tt, %i.ts
  %.neg475 = trunc i64 %.neg to i32
  %i.tu = add i32 %.1307451, %.neg475
  br label %bb.dg

.thread455:                                       ; preds = %.thread454
  %i.tv = getelementptr inbounds nuw i8, ptr %i.f, i64 12120
  store i32 0, ptr %i.tv, align 8, !tbaa !127
  %i.tw = getelementptr inbounds nuw i8, ptr %i.f, i64 12168
  call void @ff_mss12_slicecontext_reset(ptr noundef nonnull %i.tw) #11
  %i.tx = load i32, ptr %i.bj, align 4, !tbaa !105
  %.not356 = icmp eq i32 %i.tx, 0
  br i1 %.not356, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.thread455
  %i.ty = getelementptr inbounds nuw i8, ptr %i.f, i64 179928
  call void @ff_mss12_slicecontext_reset(ptr noundef nonnull %i.ty) #11
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cb, %.thread455, %bb.cf
  br i1 %.not343, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %or.cond.i422 = icmp ugt i32 %.1307451, 268435455
  %i.tz = shl nuw nsw i32 %.1307451, 3
  %i.ua = select i1 %or.cond.i422, i32 -8, i32 %i.tz ; 2 uses
  %or.cond.i.i423 = icmp ult i32 %i.ua, 2147483135 ; 3 uses
  %.014.i.i425 = select i1 %or.cond.i.i423, ptr %.1312448, ptr null
  %.013.i.i426 = select i1 %or.cond.i.i423, i32 %i.ua, i32 0 ; 2 uses
  store ptr %.014.i.i425, ptr %4, align 8, !tbaa !67
  store i32 %.013.i.i426, ptr %i.j, align 4, !tbaa !68
  %i.ub = add nuw nsw i32 %.013.i.i426, 8
  store i32 %i.ub, ptr %i.l, align 8, !tbaa !69
  store i32 0, ptr %i.m, align 8, !tbaa !71
  br i1 %or.cond.i.i423, label %bb.ci, label %decode_pal_v2.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.uc = getelementptr inbounds nuw i8, ptr %i.f, i64 12040 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.f, i64 12056 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !62
  %i.ug = load ptr, ptr %i.sy, align 8, !tbaa !83
  %i.uh = load i64, ptr %i.tb, align 8, !tbaa !84
  %i.ui = getelementptr inbounds nuw i8, ptr %i.f, i64 11016 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.f, i64 10992 ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 16, !tbaa !106
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !115
  %i.un = load i32, ptr %i.sw, align 4, !tbaa !63
  %i.uo = call fastcc i32 @decode_rle(ptr noundef %4, ptr noundef %i.ud, i64 noundef %i.uf, ptr noundef %i.ug, i64 noundef %i.uh, ptr noundef nonnull %i.ui, i32 noundef %i.p, i32 noundef %i.uk, i32 noundef 0, i32 noundef %i.um, i32 noundef %i.un) ; 2 uses
  %.not365 = icmp eq i32 %i.uo, 0
  br i1 %.not365, label %bb.cj, label %decode_pal_v2.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %.val.i428 = load i32, ptr %i.m, align 8, !tbaa !71 ; 3 uses
  %i.up = sub nsw i32 0, %.val.i428
  %i.uq = and i32 %i.up, 7                        ; 2 uses
  %.not.i429 = icmp eq i32 %i.uq, 0
  br i1 %.not.i429, label %align_get_bits.exit430, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ur = load i32, ptr %i.l, align 8, !tbaa !69
  %i.us = add i32 %i.uq, %.val.i428
  %i.ut = call i32 @llvm.umin.i32(i32 %i.ur, i32 %i.us) ; 2 uses
  store i32 %i.ut, ptr %i.m, align 8, !tbaa !71
  br label %align_get_bits.exit430

align_get_bits.exit430:                           ; preds = %bb.cj, %bb.ck
  %.val.i431529 = phi i32 [ %.val.i428, %bb.cj ], [ %i.ut, %bb.ck ]
  %i.uu = load i32, ptr %i.bj, align 4, !tbaa !105
  %.not366 = icmp eq i32 %i.uu, 0
  br i1 %.not366, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %align_get_bits.exit430
  %i.uv = load ptr, ptr %i.uc, align 8, !tbaa !64
  %i.uw = load i64, ptr %i.ue, align 8, !tbaa !62
  %i.ux = load ptr, ptr %i.sy, align 16, !tbaa !83
  %i.uy = load i64, ptr %i.tb, align 16, !tbaa !84
  %i.uz = load i32, ptr %i.uj, align 16, !tbaa !106
  %i.va = load i32, ptr %i.ul, align 8, !tbaa !115
  %i.vb = load i32, ptr %i.sw, align 4, !tbaa !63
  %i.vc = call fastcc i32 @decode_rle(ptr noundef %4, ptr noundef %i.uv, i64 noundef %i.uw, ptr noundef %i.ux, i64 noundef %i.uy, ptr noundef nonnull %i.ui, i32 noundef %i.p, i32 noundef %i.uz, i32 noundef 1, i32 noundef %i.va, i32 noundef %i.vb) ; 2 uses
  %.not367 = icmp eq i32 %i.vc, 0
  br i1 %.not367, label %._crit_edge527, label %decode_pal_v2.exit.thread

._crit_edge527:                                   ; preds = %bb.cl
  %.val.i431.pre = load i32, ptr %i.m, align 8, !tbaa !71
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge527, %align_get_bits.exit430
  %.val.i431 = phi i32 [ %.val.i431.pre, %._crit_edge527 ], [ %.val.i431529, %align_get_bits.exit430 ] ; 3 uses
  %i.vd = sub nsw i32 0, %.val.i431
  %i.ve = and i32 %i.vd, 7                        ; 2 uses
  %.not.i432 = icmp eq i32 %i.ve, 0
  br i1 %.not.i432, label %align_get_bits.exit433, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vf = load i32, ptr %i.l, align 8, !tbaa !69
  %i.vg = add i32 %i.ve, %.val.i431
  %i.vh = call i32 @llvm.umin.i32(i32 %i.vf, i32 %i.vg) ; 2 uses
  store i32 %i.vh, ptr %i.m, align 8, !tbaa !71
  br label %align_get_bits.exit433

align_get_bits.exit433:                           ; preds = %bb.cm, %bb.cn
  %.val389 = phi i32 [ %.val.i431, %bb.cm ], [ %i.vh, %bb.cn ]
  %i.vi = ashr i32 %.val389, 3                    ; 2 uses
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds i8, ptr %.1312448, i64 %i.vj
  %i.vl = sub nsw i32 %.1307451, %i.vi
  br label %bb.dg

bb.co:                                            ; preds = %bb.cg
  %i.vm = icmp ne i32 %.2298, -1
  %or.cond8 = select i1 %.0299, i1 true, i1 %i.vm
  br i1 %or.cond8, label %bb.cp, label %bb.df

bb.cp:                                            ; preds = %bb.co
  %i.vn = getelementptr inbounds nuw i8, ptr %i.f, i64 12120 ; 4 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !127
  %.not357 = icmp eq i32 %i.vo, 0
  br i1 %.not357, label %bb.cq, label %decode_pal_v2.exit.thread

bb.cq:                                            ; preds = %bb.cp
  %i.vp = icmp sgt i32 %.1307451, -3
  br i1 %i.vp, label %bytestream2_init.exit384, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #11
  call void @abort() #13
  unreachable

bytestream2_init.exit384:                         ; preds = %bb.cq
  %i.vq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.1312448, ptr %i.vq, align 8, !tbaa !73
  %i.vr = sext i32 %.1307451 to i64
  %i.vs = getelementptr i8, ptr %.1312448, i64 %i.vr
  %i.vt = getelementptr i8, ptr %i.vs, i64 2      ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.vt, ptr %i.vu, align 8, !tbaa !74
  store i32 0, ptr %6, align 8, !tbaa !76
  %i.vv = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 16777215, ptr %i.vv, align 4, !tbaa !77
  %i.vw = icmp slt i32 %.1307451, 1
  br i1 %i.vw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bytestream2_init.exit384
  store ptr %i.vt, ptr %5, align 8, !tbaa !80
  br label %arith2_init.exit435

bb.ct:                                            ; preds = %bytestream2_init.exit384
  %i.vx = getelementptr inbounds nuw i8, ptr %.1312448, i64 3
  store ptr %i.vx, ptr %5, align 8, !tbaa !78
  %i.vy = load i8, ptr %.1312448, align 1, !tbaa !70
  %i.vz = zext i8 %i.vy to i32
  %i.wa = shl nuw nsw i32 %i.vz, 16
  %i.wb = getelementptr inbounds nuw i8, ptr %.1312448, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !70
  %i.wd = zext i8 %i.wc to i32
  %i.we = shl nuw nsw i32 %i.wd, 8
  %i.wf = or disjoint i32 %i.we, %i.wa
  %i.wg = getelementptr inbounds nuw i8, ptr %.1312448, i64 2
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !70
  %i.wi = zext i8 %i.wh to i32
  %i.wj = or disjoint i32 %i.wf, %i.wi
  br label %arith2_init.exit435

arith2_init.exit435:                              ; preds = %bb.cs, %bb.ct
  %.0.i.i434 = phi i32 [ 0, %bb.cs ], [ %i.wj, %bb.ct ]
  %i.wk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
end_hunk_1
