Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rka?download=true
inline.NumInlined: 48
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.FiltCoeffs = type { [257 x i32], i32 }

@.str = private unnamed_addr constant [4 x i8] c"rka\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RKA (RK Audio)\00", align 1
@ff_rka_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86118, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 2166552, ptr null, ptr null, ptr null, ptr @rka_decode_init, %union.anon { ptr @rka_decode_frame }, ptr @rka_decode_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"qfactor: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@vrq_qfactors = internal unnamed_addr constant [8 x i8] c"\03\03\02\02\01\01\01\01", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @rka_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = icmp slt i32 %i.d, 16
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2164384
  store i32 %i.j, ptr %i.l, align 8, !tbaa !35
  switch i8 %i.i, label %bb.h [
    i8 8, label %bb.d
    i8 16, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 6, %bb.c ], [ 5, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 %.sink, ptr %i.m, align 4, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.n) #11
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !72   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29    ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %i.r, ptr %i.s, align 4, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2164392
  store i32 %i.r, ptr %i.t, align 8, !tbaa !37
  %i.u = add i8 %i.q, -3
  %or.cond = icmp ult i8 %i.u, -2
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.k, align 4, !tbaa !73
  %i.w = ashr i32 %i.v, 3
  %i.x = mul nsw i32 %i.w, %i.r                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2164388
  store i32 %i.x, ptr %i.y, align 4, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !29
  %i.ab = udiv i32 %i.aa, %i.x                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2164408
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 2164412
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !77
  %i.ae = sdiv i32 131072, %i.x                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2164400
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !38
  %i.ag = urem i32 %i.ab, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 2164404
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = and i8 %i.aj, 1
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 2164396
  store i32 %i.al, ptr %i.am, align 4, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = and i8 %i.ao, 15
  %i.aq = zext nneg i8 %i.ap to i32               ; 2 uses
  %i.ar = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.as = and i8 %i.ar, 4
  %.not = icmp eq i8 %i.as, 0
  %i.at = sub nsw i32 0, %i.aq
  %spec.select = select i1 %.not, i32 %i.aq, i32 %i.at ; 4 uses
  %i.au = icmp slt i32 %spec.select, 0            ; 2 uses
  %i.av = select i1 %i.au, i32 2, i32 %spec.select ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1082216
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !43
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !43
  %i.ay = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 0)
  %i.az = sub nsw i32 0, %i.ay                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1082220 ; 2 uses
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !44
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %..i50 = tail call i32 @llvm.umin.i32(i32 %i.az, i32 8) ; 2 uses
  store i32 %..i50, ptr %i.ba, align 4, !tbaa !44
  store i32 %..i50, ptr %i.bb, align 4, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.2, i32 noundef %spec.select) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.g
  %.048 = phi i32 [ 0, %bb.g ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %bb.d ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal i32 @rka_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 152 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101  ; 3 uses
  %i.h = icmp ne ptr %i.e, null
  %i.i = icmp sgt i32 %i.g, -1
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 141) #11
  tail call void @abort() #12
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.j, align 8, !tbaa !102
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 -1, ptr %i.o, align 4, !tbaa !47
  %i.p = icmp samesign ult i32 %i.g, 4
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bytestream2_init.exit
  store ptr %i.l, ptr %i.c, align 8, !tbaa !48
  br label %init_acoder.exit

bb.d:                                             ; preds = %bytestream2_init.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.q, ptr %i.c, align 8, !tbaa !49
  %i.r = load i32, ptr %i.e, align 1, !tbaa !29
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  br label %init_acoder.exit

init_acoder.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ 0, %bb.c ], [ %i.s, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %.0.i.i, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2164392 ; 5 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !37
  %.not216 = icmp sgt i32 %i.v, 0
  br i1 %.not216, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %init_acoder.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, <2 x i64> <i64 2166472, i64 2166512>
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2164416
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, <2 x i64> <i64 2164416, i64 2165444>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2165444
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2165460
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 2164432
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2165476
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2165492
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 2164448
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 2164464
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 2165508
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 2165524
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 2164480
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2164496
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 2165540
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 2165556
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2164512
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 2164528
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 2165572
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 2165588
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 2164544
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 2164560
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 2165604
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 2165620
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 2164576
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 2164592
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 2165636
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 2165652
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 2164608
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 2164624
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 2165668
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2165684
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 2164640
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 2164656
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 2165700
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 2165716
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 2164672
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2164688
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 2165732
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 2165748
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 2164704
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 2164720
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 2165764
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 2165780
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 2164736
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 2164752
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 2165796
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 2165812
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 2164768
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 2164784
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 2165828
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 2165844
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 2164800
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 2164816
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 2165860
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 2165876
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 2164832
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 2164848
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 2165892
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 2165908
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 2164864
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 2164880
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 2165924
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 2165940
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 2164896
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 2164912
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 2165956
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 2165972
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 2164928
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 2164944
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 2165988
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 2166004
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 2164960
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 2164976
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 2166020
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 2166036
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 2164992
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 2165008
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 2166052
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 2166068
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 2165024
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 2165040
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 2166084
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 2166100
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 2165056
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 2165072
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 2166116
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 2166132
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 2165088
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 2165104
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 2166148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 2166164
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 2165120
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 2165136
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 2166180
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 2166196
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 2165152
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 2165168
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 2166212
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 2166228
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 2165184
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 2165200
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 2166244
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 2166260
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 2165216
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 2165232
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 2166276
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 2166292
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 2165248
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 2165264
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 2166308
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 2166324
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 2165280
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 2165296
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 2166340
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 2166356
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 2165312
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 2165328
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 2166372
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 2166388
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 2165344
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 2165360
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 2166404
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 2166420
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 2165376
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 2165392
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 2166436
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 2166452
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 2165408
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 2165424
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 2166468
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 2165440
  br label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [1082168 x i8], ptr %i.w, i64 %indvars.iv ; 32 uses
  %i.fb = load i32, ptr %i.x, align 8, !tbaa !103
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 13112
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1069056) %i.fc, i8 0, i64 1069056, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store <2 x ptr> %i.y, ptr %i.fd, align 8, !tbaa !104
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store <2 x ptr> %i.aa, ptr %i.ff, align 8, !tbaa !51
  %i.fg = sext i32 %i.fb to i64
  %i.fh = shl nsw i64 %i.fg, 11
  %i.fi = sdiv i64 %i.fh, 11025
end_hunk_0
begin_hunk_1_@rka_decode_frame:bb.a
  br i1 %.not19.i83.i, label %bb.p, label %.thread.i84.i

bb.p:                                             ; preds = %bb.o
  %i.lm = tail call ptr @av_malloc_array(i64 noundef 21, i64 noundef 2) #11 ; 2 uses
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !60
  %.pre.i88.i = load ptr, ptr %i.lg, align 8, !tbaa !60 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  %.not20.i89.i = icmp eq ptr %.pre.i88.i, null
  %brmerge.i90.i = select i1 %.not20.i89.i, i1 true, i1 %i.ln
  br i1 %brmerge.i90.i, label %.thread175, label %bb.q

.thread.i84.i:                                    ; preds = %bb.o
  %.not2026.i85.i = icmp eq ptr %i.lj, null
  br i1 %.not2026.i85.i, label %.thread175, label %bb.q

bb.q:                                             ; preds = %.thread.i84.i, %bb.p
  %i.lo = phi ptr [ %.pre.i88.i, %bb.p ], [ %i.lj, %.thread.i84.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(42) %i.lo, i8 0, i64 42, i1 false)
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(42) %i.lp, i8 0, i64 42, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  store i32 16, ptr %i.lq, align 8, !tbaa !55
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fa, i64 68
  store i16 2000, ptr %i.lr, align 4, !tbaa !56
  %i.ls = getelementptr inbounds nuw i8, ptr %i.fa, i64 70
  store i16 0, ptr %i.ls, align 2, !tbaa !57
  %i.lt = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  store i16 0, ptr %i.lt, align 8, !tbaa !58
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fa, i64 60
  store i32 0, ptr %i.lu, align 4, !tbaa !59
  %i.lv = getelementptr inbounds nuw i8, ptr %i.fa, i64 80 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !60 ; 2 uses
  %.not.i92.i = icmp eq ptr %i.lw, null
  br i1 %.not.i92.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.lx = tail call ptr @av_malloc_array(i64 noundef 21, i64 noundef 2) #11 ; 2 uses
  store ptr %i.lx, ptr %i.lv, align 8, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ly = phi ptr [ %i.lx, %bb.r ], [ %i.lw, %bb.q ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.fa, i64 88 ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !60
  %.not19.i93.i = icmp eq ptr %i.ma, null
  br i1 %.not19.i93.i, label %bb.t, label %.thread.i94.i

bb.t:                                             ; preds = %bb.s
  %i.mb = tail call ptr @av_malloc_array(i64 noundef 21, i64 noundef 2) #11 ; 2 uses
  store ptr %i.mb, ptr %i.lz, align 8, !tbaa !60
  %.pre.i98.i = load ptr, ptr %i.lv, align 8, !tbaa !60 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  %.not20.i99.i = icmp eq ptr %.pre.i98.i, null
  %brmerge.i100.i = select i1 %.not20.i99.i, i1 true, i1 %i.mc
  br i1 %brmerge.i100.i, label %.thread175, label %bb.u

.thread.i94.i:                                    ; preds = %bb.s
  %.not2026.i95.i = icmp eq ptr %i.ly, null
  br i1 %.not2026.i95.i, label %.thread175, label %bb.u

bb.u:                                             ; preds = %.thread.i94.i, %bb.t
  %i.md = phi ptr [ %.pre.i98.i, %bb.t ], [ %i.ly, %.thread.i94.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(42) %i.md, i8 0, i64 42, i1 false)
  %i.me = load ptr, ptr %i.lz, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(42) %i.me, i8 0, i64 42, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  store i32 8, ptr %i.mf, align 8, !tbaa !55
  %i.mg = getelementptr inbounds nuw i8, ptr %i.fa, i64 148
  store i16 2000, ptr %i.mg, align 4, !tbaa !56
  %i.mh = getelementptr inbounds nuw i8, ptr %i.fa, i64 150
  store i16 0, ptr %i.mh, align 2, !tbaa !57
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  store i16 0, ptr %i.mi, align 8, !tbaa !58
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fa, i64 140
  store i32 0, ptr %i.mj, align 4, !tbaa !59
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fa, i64 160 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !60 ; 2 uses
  %.not.i102.i = icmp eq ptr %i.ml, null
  br i1 %.not.i102.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.mm = tail call ptr @av_malloc_array(i64 noundef 13, i64 noundef 2) #11 ; 2 uses
  store ptr %i.mm, ptr %i.mk, align 8, !tbaa !60
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.mn = phi ptr [ %i.mm, %bb.v ], [ %i.ml, %bb.u ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fa, i64 168 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !60
  %.not19.i103.i = icmp eq ptr %i.mp, null
  br i1 %.not19.i103.i, label %bb.x, label %.thread.i104.i

bb.x:                                             ; preds = %bb.w
  %i.mq = tail call ptr @av_malloc_array(i64 noundef 13, i64 noundef 2) #11 ; 2 uses
  store ptr %i.mq, ptr %i.mo, align 8, !tbaa !60
  %.pre.i108.i = load ptr, ptr %i.mk, align 8, !tbaa !60 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, null
  %.not20.i109.i = icmp eq ptr %.pre.i108.i, null
  %brmerge.i110.i = select i1 %.not20.i109.i, i1 true, i1 %i.mr
  br i1 %brmerge.i110.i, label %.thread175, label %bb.y

.thread.i104.i:                                   ; preds = %bb.w
  %.not2026.i105.i = icmp eq ptr %i.mn, null
  br i1 %.not2026.i105.i, label %.thread175, label %bb.y

bb.y:                                             ; preds = %.thread.i104.i, %bb.x
  %i.ms = phi ptr [ %.pre.i108.i, %bb.x ], [ %i.mn, %.thread.i104.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.ms, i8 0, i64 26, i1 false)
  %i.mt = load ptr, ptr %i.mo, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.mt, i8 0, i64 26, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fa, i64 104
  store i32 32, ptr %i.mu, align 8, !tbaa !55
  %i.mv = getelementptr inbounds nuw i8, ptr %i.fa, i64 108
  store i16 2000, ptr %i.mv, align 4, !tbaa !56
  %i.mw = getelementptr inbounds nuw i8, ptr %i.fa, i64 110
  store i16 0, ptr %i.mw, align 2, !tbaa !57
  %i.mx = getelementptr inbounds nuw i8, ptr %i.fa, i64 112
  store i16 0, ptr %i.mx, align 8, !tbaa !58
  %i.my = getelementptr inbounds nuw i8, ptr %i.fa, i64 100
  store i32 0, ptr %i.my, align 4, !tbaa !59
  %i.mz = getelementptr inbounds nuw i8, ptr %i.fa, i64 120 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !60 ; 2 uses
  %.not.i112.i = icmp eq ptr %i.na, null
  br i1 %.not.i112.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.nb = tail call ptr @av_malloc_array(i64 noundef 37, i64 noundef 2) #11 ; 2 uses
  store ptr %i.nb, ptr %i.mz, align 8, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.nc = phi ptr [ %i.nb, %bb.z ], [ %i.na, %bb.y ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.fa, i64 128 ; 3 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !60
  %.not19.i113.i = icmp eq ptr %i.ne, null
  br i1 %.not19.i113.i, label %bb.ab, label %.thread.i114.i

bb.ab:                                            ; preds = %bb.aa
  %i.nf = tail call ptr @av_malloc_array(i64 noundef 37, i64 noundef 2) #11 ; 2 uses
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !60
  %.pre.i118.i = load ptr, ptr %i.mz, align 8, !tbaa !60 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  %.not20.i119.i = icmp eq ptr %.pre.i118.i, null
  %brmerge.i120.i = select i1 %.not20.i119.i, i1 true, i1 %i.ng
  br i1 %brmerge.i120.i, label %.thread175, label %bb.ac

.thread.i114.i:                                   ; preds = %bb.aa
  %.not2026.i115.i = icmp eq ptr %i.nc, null
  br i1 %.not2026.i115.i, label %.thread175, label %bb.ac

bb.ac:                                            ; preds = %.thread.i114.i, %bb.ab
  %i.nh = phi ptr [ %.pre.i118.i, %bb.ab ], [ %i.nc, %.thread.i114.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(74) %i.nh, i8 0, i64 74, i1 false)
  %i.ni = load ptr, ptr %i.nd, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(74) %i.ni, i8 0, i64 74, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nj = load i32, ptr %i.u, align 8, !tbaa !37
  %i.nk = sext i32 %i.nj to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.nk
  br i1 %.not, label %vector.ph344, label %.thread, !llvm.loop !79

.thread:                                          ; preds = %bb.ac, %init_acoder.exit
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 2164400 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !38
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 12 uses
  store i32 %i.nm, ptr %i.nn, align 8, !tbaa !109
  %i.no = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #11 ; 3 uses
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %.thread175, label %bb.ad

bb.ad:                                            ; preds = %.thread
  %i.nq = load i32, ptr %i.u, align 8, !tbaa !37  ; 2 uses
  %i.nr = icmp eq i32 %i.nq, 2
  br i1 %i.nr, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 2164396
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !40
  %.not170 = icmp eq i32 %i.nt, 0
  br i1 %.not170, label %.thread298, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !110 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !49 ; 7 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !49 ; 7 uses
  %i.nz = load i32, ptr %i.nn, align 8, !tbaa !109 ; 2 uses
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph223, label %.thread195

.lr.ph223:                                        ; preds = %bb.af
  %i.ob = ptrtoaddr ptr %i.ny to i64
  %i.oc = ptrtoaddr ptr %i.nw to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.oe = getelementptr inbounds nuw i8, ptr %i.b, i64 1082216
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.og = getelementptr inbounds nuw i8, ptr %i.b, i64 13160 ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 1095328 ; 4 uses
  %scevgep360 = getelementptr i8, ptr %i.b, i64 23400 ; 2 uses
  %i.oi = sub i64 %i.oc, %i.ob
  %diff.check = icmp ugt i64 %i.oi, -8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph223, %.loopexit202
  %.0160222 = phi i32 [ 0, %.lr.ph223 ], [ %i.os, %.loopexit202 ] ; 6 uses
  %i.oj = tail call fastcc i32 @decode_ch_samples(ptr noundef %0, ptr noundef nonnull %i.od) ; 3 uses
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %.thread195.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ol = icmp slt i32 %i.oj, 0
  br i1 %i.ol, label %.thread175, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.om = add nuw nsw i32 %i.oj, %.0160222
  %i.on = load i32, ptr %i.nn, align 8, !tbaa !109
  %i.oo = icmp sgt i32 %i.om, %i.on
  br i1 %i.oo, label %.thread175, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.op = tail call fastcc i32 @decode_ch_samples(ptr noundef %0, ptr noundef nonnull %i.oe) ; 7 uses
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %.thread195.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.or = icmp slt i32 %i.op, 0
  br i1 %i.or, label %.thread175, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.os = add nuw nsw i32 %i.op, %.0160222        ; 3 uses
  %i.ot = load i32, ptr %i.nn, align 8, !tbaa !109 ; 3 uses
  %i.ou = icmp sgt i32 %i.os, %i.ot
  br i1 %i.ou, label %.thread175, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ov = load i32, ptr %i.of, align 4, !tbaa !36
  switch i32 %i.ov, label %.thread175 [
    i32 6, label %.lr.ph221.preheader
    i32 5, label %.lr.ph219.preheader
  ]

.lr.ph219.preheader:                              ; preds = %bb.am
  %i.ow = zext nneg i32 %.0160222 to i64          ; 5 uses
  %wide.trip.count = zext nneg i32 %i.op to i64   ; 5 uses
  %min.iters.check371 = icmp ult i32 %i.op, 4
  br i1 %min.iters.check371, label %.lr.ph219.preheader421, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph219.preheader
  %scevgep = getelementptr i8, ptr %i.nw, i64 %i.ow ; 2 uses
  %i.ox = add nuw nsw i64 %wide.trip.count, %i.ow ; 2 uses
  %scevgep357 = getelementptr i8, ptr %i.nw, i64 %i.ox ; 2 uses
  %scevgep358 = getelementptr i8, ptr %i.ny, i64 %i.ow ; 2 uses
  %scevgep359 = getelementptr i8, ptr %i.ny, i64 %i.ox ; 2 uses
  %i.oy = shl nuw nsw i64 %wide.trip.count, 2
  %4 = getelementptr i8, ptr %i.b, i64 %i.oy
  %scevgep362 = getelementptr i8, ptr %4, i64 1105568 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep359
  %bound1 = icmp ult ptr %scevgep358, %scevgep357
  %found.conflict = and i1 %bound0, %bound1
  %bound0363 = icmp ult ptr %scevgep, %scevgep362
  %bound1364 = icmp ult ptr %scevgep360, %scevgep357
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx = or i1 %found.conflict, %found.conflict365
  %bound0366 = icmp ult ptr %scevgep358, %scevgep362
  %bound1367 = icmp ult ptr %scevgep360, %scevgep359
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx, %found.conflict368
  br i1 %conflict.rdx369, label %.lr.ph219.preheader421, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck356
  %n.vec373 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next378, %vector.body374 ] ; 3 uses
  %i.oz = add nuw nsw i64 %index375, 2560         ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oz
  %wide.load376 = load <4 x i32>, ptr %i.pa, align 4, !tbaa !54, !alias.scope !111
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.oz
  %wide.load377 = load <4 x i32>, ptr %i.pb, align 4, !tbaa !54, !alias.scope !111 ; 2 uses
  %i.pc = shl nsw <4 x i32> %wide.load376, splat (i32 1) ; 2 uses
  %i.pd = add <4 x i32> %wide.load377, splat (i32 1)
  %i.pe = add <4 x i32> %i.pd, %i.pc
  %i.pf = lshr <4 x i32> %i.pe, splat (i32 1)
  %i.pg = trunc <4 x i32> %i.pf to <4 x i8>
  %i.ph = add <4 x i8> %i.pg, splat (i8 127)
  %i.pi = add nuw nsw i64 %index375, %i.ow        ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.pi
  store <4 x i8> %i.ph, ptr %i.pj, align 1, !tbaa !29, !alias.scope !112, !noalias !113
  %i.pk = sub <4 x i32> %i.pc, %wide.load377
  %i.pl = add <4 x i32> %i.pk, splat (i32 1)
  %i.pm = lshr <4 x i32> %i.pl, splat (i32 1)
  %i.pn = trunc <4 x i32> %i.pm to <4 x i8>
  %i.po = add <4 x i8> %i.pn, splat (i8 127)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.pi
  store <4 x i8> %i.po, ptr %i.pp, align 1, !tbaa !29, !alias.scope !114, !noalias !111
  %index.next378 = add nuw i64 %index375, 4       ; 2 uses
  %i.pq = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.pq, label %middle.block379, label %vector.body374, !llvm.loop !84

middle.block379:                                  ; preds = %vector.body374
  %cmp.n380 = icmp eq i64 %n.vec373, %wide.trip.count
  br i1 %cmp.n380, label %.loopexit202.loopexit237, label %.lr.ph219.preheader421

.lr.ph219.preheader421:                           ; preds = %vector.memcheck356, %.lr.ph219.preheader, %middle.block379
  %indvars.iv248.ph = phi i64 [ 0, %vector.memcheck356 ], [ 0, %.lr.ph219.preheader ], [ %n.vec373, %middle.block379 ]
  br label %.lr.ph219

.lr.ph221.preheader:                              ; preds = %bb.am
  %i.pr = zext nneg i32 %.0160222 to i64          ; 2 uses
  %wide.trip.count254 = zext nneg i32 %i.op to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.op, 4
  %or.cond414 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond414, label %.lr.ph221.preheader420, label %vector.ph350

vector.ph350:                                     ; preds = %.lr.ph221.preheader
  %n.vec = and i64 %wide.trip.count254, 2147483644 ; 3 uses
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph350
  %index352 = phi i64 [ 0, %vector.ph350 ], [ %index.next354, %vector.body351 ] ; 3 uses
  %i.ps = add nuw nsw i64 %index352, 2560         ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ps
  %wide.load = load <4 x i32>, ptr %i.pt, align 4, !tbaa !54
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.ps
  %wide.load353 = load <4 x i32>, ptr %i.pu, align 4, !tbaa !54 ; 2 uses
  %i.pv = shl nsw <4 x i32> %wide.load, splat (i32 1) ; 2 uses
  %i.pw = add <4 x i32> %wide.load353, splat (i32 1)
  %i.px = add <4 x i32> %i.pw, %i.pv
  %i.py = lshr <4 x i32> %i.px, splat (i32 1)
  %i.pz = trunc <4 x i32> %i.py to <4 x i16>
  %i.qa = add nuw nsw i64 %index352, %i.pr        ; 2 uses
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.qa
  store <4 x i16> %i.pz, ptr %i.qb, align 2, !tbaa !64
  %i.qc = sub <4 x i32> %i.pv, %wide.load353
  %i.qd = add <4 x i32> %i.qc, splat (i32 1)
  %i.qe = lshr <4 x i32> %i.qd, splat (i32 1)
  %i.qf = trunc <4 x i32> %i.qe to <4 x i16>
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.qa
  store <4 x i16> %i.qf, ptr %i.qg, align 2, !tbaa !64
  %index.next354 = add nuw i64 %index352, 4       ; 2 uses
  %i.qh = icmp eq i64 %index.next354, %n.vec
  br i1 %i.qh, label %middle.block355, label %vector.body351, !llvm.loop !85

middle.block355:                                  ; preds = %vector.body351
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count254
  br i1 %cmp.n, label %.loopexit202, label %.lr.ph221.preheader420

.lr.ph221.preheader420:                           ; preds = %.lr.ph221.preheader, %middle.block355
  %indvars.iv251.ph = phi i64 [ 0, %.lr.ph221.preheader ], [ %n.vec, %middle.block355 ]
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader420, %.lr.ph221
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.lr.ph221 ], [ %indvars.iv251.ph, %.lr.ph221.preheader420 ] ; 3 uses
  %i.qi = add nuw nsw i64 %indvars.iv251, 2560    ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !54
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.qi
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !54 ; 2 uses
  %i.qn = shl nsw i32 %i.qk, 1                    ; 2 uses
  %i.qo = add i32 %i.qm, 1
  %i.qp = add i32 %i.qo, %i.qn
  %i.qq = lshr i32 %i.qp, 1
  %i.qr = trunc i32 %i.qq to i16
  %i.qs = add nuw nsw i64 %indvars.iv251, %i.pr   ; 2 uses
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.qs
  store i16 %i.qr, ptr %i.qt, align 2, !tbaa !64
  %reass.sub234 = sub i32 %i.qn, %i.qm
  %i.qu = add i32 %reass.sub234, 1
  %i.qv = lshr i32 %i.qu, 1
  %i.qw = trunc i32 %i.qv to i16
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.qs
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !64
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %.loopexit202, label %.lr.ph221, !llvm.loop !86

.lr.ph219:                                        ; preds = %.lr.ph219.preheader421, %.lr.ph219
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph219 ], [ %indvars.iv248.ph, %.lr.ph219.preheader421 ] ; 3 uses
  %i.qy = add nuw nsw i64 %indvars.iv248, 2560    ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !54
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.qy
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !54 ; 2 uses
  %i.rd = shl nsw i32 %i.ra, 1                    ; 2 uses
  %i.re = add i32 %i.rc, 1
  %i.rf = add i32 %i.re, %i.rd
  %i.rg = lshr i32 %i.rf, 1
  %i.rh = trunc i32 %i.rg to i8
  %i.ri = add i8 %i.rh, 127
  %i.rj = add nuw nsw i64 %indvars.iv248, %i.ow   ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.rj
  store i8 %i.ri, ptr %i.rk, align 1, !tbaa !29
  %reass.sub = sub i32 %i.rd, %i.rc
  %i.rl = add i32 %reass.sub, 1
  %i.rm = lshr i32 %i.rl, 1
  %i.rn = trunc i32 %i.rm to i8
  %i.ro = add i8 %i.rn, 127
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.rj
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !29
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit202.loopexit237, label %.lr.ph219, !llvm.loop !87

.loopexit202.loopexit237:                         ; preds = %.lr.ph219, %middle.block379
  %.pre = load i32, ptr %i.nn, align 8, !tbaa !109
  br label %.loopexit202

.loopexit202:                                     ; preds = %.lr.ph221, %middle.block355, %.loopexit202.loopexit237
  %i.rq = phi i32 [ %.pre, %.loopexit202.loopexit237 ], [ %i.ot, %middle.block355 ], [ %i.ot, %.lr.ph221 ] ; 2 uses
  %i.rr = icmp slt i32 %i.os, %i.rq
  br i1 %i.rr, label %bb.ag, label %.thread195, !llvm.loop !88

bb.an:                                            ; preds = %bb.ad
  %i.rs = load i32, ptr %i.nn, align 8, !tbaa !109 ; 3 uses
  %.not171230 = icmp sgt i32 %i.rs, 0
  %i.rt = icmp sgt i32 %i.nq, 0
  %or.cond = and i1 %.not171230, %i.rt
  br i1 %or.cond, label %.preheader200.preheader, label %.thread195

.thread298:                                       ; preds = %bb.ae
  %i.ru = load i32, ptr %i.nn, align 8, !tbaa !109 ; 3 uses
  %.not171230299 = icmp sgt i32 %i.ru, 0
  br i1 %.not171230299, label %.preheader200.preheader, label %.thread195

.preheader200.preheader:                          ; preds = %.thread298, %bb.an
  %i.rv = phi i32 [ %i.rs, %bb.an ], [ %i.ru, %.thread298 ]
  %i.rw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %.thread183
  %i.ry = phi i32 [ %i.un, %.thread183 ], [ %i.rv, %.preheader200.preheader ]
  %.0148232 = phi i32 [ %i.uo, %.thread183 ], [ 0, %.preheader200.preheader ] ; 5 uses
  %.0149231 = phi i32 [ %.2151188, %.thread183 ], [ %i.no, %.preheader200.preheader ]
  %i.rz = load i32, ptr %i.u, align 8, !tbaa !37
  %i.sa = icmp sgt i32 %i.rz, 0
  br i1 %i.sa, label %.lr.ph229.preheader, label %.thread183

.lr.ph229.preheader:                              ; preds = %.preheader200
  %i.sb = zext i32 %.0148232 to i64               ; 3 uses
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.loopexit
  %indvars.iv266 = phi i64 [ 0, %.lr.ph229.preheader ], [ %indvars.iv.next267, %.loopexit ] ; 4 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv266
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !49 ; 3 uses
  %i.se = getelementptr inbounds nuw [1082168 x i8], ptr %i.rw, i64 %indvars.iv266 ; 9 uses
  %i.sf = tail call fastcc i32 @decode_ch_samples(ptr noundef %0, ptr noundef nonnull %i.se) ; 8 uses
  %i.sg = icmp eq i32 %i.sf, 0
  br i1 %i.sg, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph229
  %i.sh = icmp slt i32 %i.sf, 0
  br i1 %i.sh, label %.thread175, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.si = add nuw nsw i32 %i.sf, %.0148232
  %i.sj = load i32, ptr %i.nn, align 8, !tbaa !109
  %i.sk = icmp sgt i32 %i.si, %i.sj
  br i1 %i.sk, label %.thread175, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.sl = load i32, ptr %i.rx, align 4, !tbaa !36
  switch i32 %i.sl, label %.thread175 [
    i32 6, label %.lr.ph227.preheader
    i32 5, label %.lr.ph225.preheader
  ]

.lr.ph225.preheader:                              ; preds = %bb.aq
  %wide.trip.count259 = zext nneg i32 %i.sf to i64 ; 7 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb ; 7 uses
  %min.iters.check403 = icmp ult i32 %i.sf, 8
  br i1 %min.iters.check403, label %.lr.ph225.preheader416, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph225.preheader
  %5 = getelementptr i8, ptr %i.sd, i64 %wide.trip.count259
  %scevgep395 = getelementptr i8, ptr %5, i64 %i.sb
  %6 = mul nuw nsw i64 %indvars.iv266, 1082168
  %7 = add nuw i64 %6, 23400                      ; 2 uses
  %scevgep396 = getelementptr i8, ptr %i.b, i64 %7
  %i.sm = shl nuw nsw i64 %wide.trip.count259, 2
  %8 = getelementptr i8, ptr %i.b, i64 %7
  %scevgep398 = getelementptr i8, ptr %8, i64 %i.sm
  %bound0399 = icmp ult ptr %invariant.gep, %scevgep398
  %bound1400 = icmp ult ptr %scevgep396, %scevgep395
  %found.conflict401 = and i1 %bound0399, %bound1400
  br i1 %found.conflict401, label %.lr.ph225.preheader416, label %vector.ph404

vector.ph404:                                     ; preds = %vector.memcheck394
  %n.vec405 = and i64 %wide.trip.count259, 2147483640 ; 3 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next410, %vector.body406 ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %index407 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 23352
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 23368
  %wide.load408 = load <4 x i32>, ptr %i.so, align 4, !tbaa !54, !alias.scope !115
  %wide.load409 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !54, !alias.scope !115
  %i.sq = trunc <4 x i32> %wide.load408 to <4 x i8>
  %i.sr = trunc <4 x i32> %wide.load409 to <4 x i8>
  %i.ss = add <4 x i8> %i.sq, splat (i8 127)
  %i.st = add <4 x i8> %i.sr, splat (i8 127)
  %i.su = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index407 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store <4 x i8> %i.ss, ptr %i.su, align 1, !tbaa !29, !alias.scope !116, !noalias !115
  store <4 x i8> %i.st, ptr %i.sv, align 1, !tbaa !29, !alias.scope !116, !noalias !115
  %index.next410 = add nuw i64 %index407, 8       ; 2 uses
  %i.sw = icmp eq i64 %index.next410, %n.vec405
  br i1 %i.sw, label %middle.block411, label %vector.body406, !llvm.loop !92

middle.block411:                                  ; preds = %vector.body406
  %cmp.n412 = icmp eq i64 %n.vec405, %wide.trip.count259
  br i1 %cmp.n412, label %.loopexit, label %.lr.ph225.preheader416

.lr.ph225.preheader416:                           ; preds = %vector.memcheck394, %.lr.ph225.preheader, %middle.block411
  %indvars.iv256.ph = phi i64 [ 0, %vector.memcheck394 ], [ 0, %.lr.ph225.preheader ], [ %n.vec405, %middle.block411 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count259, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph225.prol.loopexit, label %.lr.ph225.prol

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader416, %.lr.ph225.prol
  %indvars.iv256.prol = phi i64 [ %indvars.iv.next257.prol, %.lr.ph225.prol ], [ %indvars.iv256.ph, %.lr.ph225.preheader416 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph225.prol ], [ 0, %.lr.ph225.preheader416 ]
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv256.prol
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 23352
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !54
  %i.ta = trunc i32 %i.sz to i8
  %i.tb = add i8 %i.ta, 127
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv256.prol
  store i8 %i.tb, ptr %gep.prol, align 1, !tbaa !29
  %indvars.iv.next257.prol = add nuw nsw i64 %indvars.iv256.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph225.prol.loopexit, label %.lr.ph225.prol, !llvm.loop !93

.lr.ph225.prol.loopexit:                          ; preds = %.lr.ph225.prol, %.lr.ph225.preheader416
  %indvars.iv256.unr = phi i64 [ %indvars.iv256.ph, %.lr.ph225.preheader416 ], [ %indvars.iv.next257.prol, %.lr.ph225.prol ]
  %i.tc = sub nsw i64 %indvars.iv256.ph, %wide.trip.count259
  %i.td = icmp ugt i64 %i.tc, -4
  br i1 %i.td, label %.loopexit, label %.lr.ph225

.lr.ph227.preheader:                              ; preds = %bb.aq
  %wide.trip.count264 = zext nneg i32 %i.sf to i64 ; 3 uses
  %invariant.gep311 = getelementptr inbounds nuw [2 x i8], ptr %i.sd, i64 %i.sb ; 2 uses
  %min.iters.check383 = icmp ult i32 %i.sf, 8
  br i1 %min.iters.check383, label %.lr.ph227.preheader415, label %vector.ph384

vector.ph384:                                     ; preds = %.lr.ph227.preheader
  %n.vec385 = and i64 %wide.trip.count264, 2147483640 ; 3 uses
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph384
  %index387 = phi i64 [ 0, %vector.ph384 ], [ %index.next390, %vector.body386 ] ; 3 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %index387 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 23352
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 23368
  %wide.load388 = load <4 x i32>, ptr %i.tf, align 4, !tbaa !54
  %wide.load389 = load <4 x i32>, ptr %i.tg, align 4, !tbaa !54
  %i.th = trunc <4 x i32> %wide.load388 to <4 x i16>
  %i.ti = trunc <4 x i32> %wide.load389 to <4 x i16>
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep311, i64 %index387 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store <4 x i16> %i.th, ptr %i.tj, align 2, !tbaa !64
  store <4 x i16> %i.ti, ptr %i.tk, align 2, !tbaa !64
  %index.next390 = add nuw i64 %index387, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next390, %n.vec385
  br i1 %i.tl, label %middle.block391, label %vector.body386, !llvm.loop !94

middle.block391:                                  ; preds = %vector.body386
  %cmp.n392 = icmp eq i64 %n.vec385, %wide.trip.count264
  br i1 %cmp.n392, label %.loopexit, label %.lr.ph227.preheader415

.lr.ph227.preheader415:                           ; preds = %.lr.ph227.preheader, %middle.block391
  %indvars.iv261.ph = phi i64 [ 0, %.lr.ph227.preheader ], [ %n.vec385, %middle.block391 ]
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader415, %.lr.ph227
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.lr.ph227 ], [ %indvars.iv261.ph, %.lr.ph227.preheader415 ] ; 3 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv261
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 23352
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !54
  %i.tp = trunc i32 %i.to to i16
  %gep312 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep311, i64 %indvars.iv261
  store i16 %i.tp, ptr %gep312, align 2, !tbaa !64
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit, label %.lr.ph227, !llvm.loop !95

.lr.ph225:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225
  %indvars.iv256 = phi i64 [ %indvars.iv.next257.3, %.lr.ph225 ], [ %indvars.iv256.unr, %.lr.ph225.prol.loopexit ] ; 6 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv256
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 23352
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !54
  %i.tt = trunc i32 %i.ts to i8
  %i.tu = add i8 %i.tt, 127
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv256
  store i8 %i.tu, ptr %gep, align 1, !tbaa !29
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next257
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 23352
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !54
  %i.ty = trunc i32 %i.tx to i8
  %i.tz = add i8 %i.ty, 127
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next257
  store i8 %i.tz, ptr %gep.1, align 1, !tbaa !29
  %indvars.iv.next257.1 = add nuw nsw i64 %indvars.iv256, 2 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next257.1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 23352
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !54
  %i.ud = trunc i32 %i.uc to i8
  %i.ue = add i8 %i.ud, 127
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next257.1
  store i8 %i.ue, ptr %gep.2, align 1, !tbaa !29
  %indvars.iv.next257.2 = add nuw nsw i64 %indvars.iv256, 3 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next257.2
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 23352
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !54
  %i.ui = trunc i32 %i.uh to i8
  %i.uj = add i8 %i.ui, 127
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next257.2
  store i8 %i.uj, ptr %gep.3, align 1, !tbaa !29
  %indvars.iv.next257.3 = add nuw nsw i64 %indvars.iv256, 4 ; 2 uses
  %exitcond260.not.3 = icmp eq i64 %indvars.iv.next257.3, %wide.trip.count259
  br i1 %exitcond260.not.3, label %.loopexit, label %.lr.ph225, !llvm.loop !96

.loopexit:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225, %.lr.ph227, %middle.block411, %middle.block391
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.uk = load i32, ptr %i.u, align 8, !tbaa !37
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next267, %i.ul
  br i1 %i.um, label %.lr.ph229, label %.thread183.loopexit, !llvm.loop !97

bb.ar:                                            ; preds = %.lr.ph229
  store i32 %.0148232, ptr %i.nn, align 8, !tbaa !109
  br label %.thread183

.thread183.loopexit:                              ; preds = %.loopexit
  %.pre269 = load i32, ptr %i.nn, align 8, !tbaa !109
  br label %.thread183

.thread183:                                       ; preds = %.thread183.loopexit, %.preheader200, %bb.ar
  %i.un = phi i32 [ %.0148232, %bb.ar ], [ %i.ry, %.preheader200 ], [ %.pre269, %.thread183.loopexit ] ; 3 uses
  %.2151188 = phi i32 [ 0, %bb.ar ], [ %.0149231, %.preheader200 ], [ %i.sf, %.thread183.loopexit ] ; 2 uses
  %i.uo = add nuw nsw i32 %.2151188, %.0148232    ; 2 uses
  %.not171 = icmp slt i32 %i.uo, %i.un
  br i1 %.not171, label %.preheader200, label %.thread195, !llvm.loop !98

.thread195.sink.split:                            ; preds = %bb.aj, %bb.ag
  store i32 %.0160222, ptr %i.nn, align 8, !tbaa !109
  br label %.thread195

.thread195:                                       ; preds = %.loopexit202, %.thread183, %.thread195.sink.split, %.thread298, %bb.af, %bb.an
  %i.up = phi i32 [ %i.un, %.thread183 ], [ %i.ru, %.thread298 ], [ %.0160222, %.thread195.sink.split ], [ %i.nz, %bb.af ], [ %i.rs, %bb.an ], [ %i.rq, %.loopexit202 ] ; 2 uses
  %i.uq = load i32, ptr %i.nl, align 8, !tbaa !38
  %i.ur = icmp slt i32 %i.up, %i.uq
  br i1 %i.ur, label %bb.as, label %bb.au

bb.as:                                            ; preds = %.thread195
  %i.us = getelementptr inbounds nuw i8, ptr %i.b, i64 2164404
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !39 ; 2 uses
  %i.uu = icmp sgt i32 %i.up, %i.ut
  br i1 %i.uu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.ut, ptr %i.nn, align 8, !tbaa !109
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.thread195
  store i32 1, ptr %2, align 4, !tbaa !54
  %i.uv = load i32, ptr %i.f, align 8, !tbaa !101
  br label %.thread175

.thread175:                                       ; preds = %.thread.i94.i, %.thread.i84.i, %.thread.i74.i, %.thread.i114.i, %bb.x, %.thread.i104.i, %bb.p, %bb.l, %bb.ab, %bb.t, %bb.h, %.thread.i.i, %bb.am, %bb.al, %bb.ai, %bb.ak, %bb.ah, %bb.aq, %bb.ao, %bb.ap, %.thread, %bb.au
  %.7 = phi i32 [ -1094995529, %bb.aq ], [ %i.uv, %bb.au ], [ %i.no, %.thread ], [ -1094995529, %bb.am ], [ -12, %bb.h ], [ -1094995529, %bb.ap ], [ -1094995529, %bb.ao ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ak ], [ -1094995529, %bb.ai ], [ -1094995529, %bb.al ], [ -12, %.thread.i.i ], [ -12, %bb.t ], [ -12, %bb.ab ], [ -12, %bb.l ], [ -12, %bb.p ], [ -12, %.thread.i104.i ], [ -12, %bb.x ], [ -12, %.thread.i114.i ], [ -12, %.thread.i74.i ], [ -12, %.thread.i84.i ], [ -12, %.thread.i94.i ]
  ret i32 %.7
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @rka_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.c
end_hunk_1
