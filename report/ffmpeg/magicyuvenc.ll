Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/magicyuvenc?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.PackageMergerList = type { i32, [515 x i32], [514 x i32], [4112 x i32] }
%struct.PTable = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"magicyuv\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MagicYUV video\00", align 1
@.compoundliteral = internal constant [8 x i32] [i32 71, i32 111, i32 4, i32 0, i32 5, i32 79, i32 8, i32 -1], align 4
@ff_magicyuv_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 212, i32 1060866, i8 0, [3 x i8] zeroinitializer, ptr @magicyuv_class, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 98, i32 8312, ptr null, ptr null, ptr null, ptr @magy_encode_init, %union.anon { ptr @magy_encode_frame }, ptr @magy_encode_close, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@magicyuv_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Prediction method\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"median\00", align 1
@options = internal constant [5 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.3, ptr @.str.4, i32 8, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double 3.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr null, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 17, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"s->buf_ptr < s->buf_end\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"libavcodec/put_bits.h\00", align 1
@switch.table.magy_encode_init = private unnamed_addr constant [3 x ptr] [ptr @left_predict, ptr @gradient_predict, ptr @median_predict], align 8

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @magy_encode_init(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  switch i32 %i.d, label %bb.i [
    i32 71, label %bb.b
    i32 111, label %bb.c
    i32 0, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 79, label %bb.g
    i32 8, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1196570701, ptr %i.e, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 1, ptr %i.f, align 4, !tbaa !31
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1095907405, ptr %i.g, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 1, ptr %i.h, align 4, !tbaa !31
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 811153485, ptr %i.i, align 4, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store <2 x i32> splat (i32 1), ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store <2 x i32> splat (i32 1), ptr %i.k, align 4, !tbaa !35
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 844707917, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store <2 x i32> splat (i32 1), ptr %i.m, align 4, !tbaa !35
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 878262349, ptr %i.n, align 4, !tbaa !30
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1096366157, ptr %i.o, align 4, !tbaa !30
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 809973837, ptr %i.p, align 4, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink = phi i8 [ 107, %bb.h ], [ 106, %bb.g ], [ 103, %bb.f ], [ 104, %bb.e ], [ 105, %bb.d ], [ 102, %bb.c ], [ 101, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %.sink, ptr %i.q, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8280
  tail call void @ff_llvidencdsp_init(ptr noundef nonnull %i.r) #9
  %i.s = load i32, ptr %i.c, align 8, !tbaa !29
  %i.t = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.s) #9 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aa = phi i32 [ %i.z, %bb.j ], [ %i.w, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !35 ; 2 uses
  %i.ah = ashr i32 %i.ad, %i.ag
  %. = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ah)
  %i.ai = tail call i32 @llvm.smax.i32(i32 %., i32 1) ; 2 uses
  %i.aj = add i32 %i.ad, -1                       ; 2 uses
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai
  %i.am = shl nuw i32 1, %i.ag                    ; 2 uses
  %i.an = add i32 %i.am, -1
  %i.ao = add i32 %i.an, %i.al
  %i.ap = sub i32 0, %i.am
  %i.aq = and i32 %i.ao, %i.ap                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 5 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !41
  %i.as = add i32 %i.aj, %i.aq
  %i.at = sdiv i32 %i.as, %i.aq
  %i.au = udiv i32 256, %i.t
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.at) ; 2 uses
  store i32 %i.av, ptr %i.ab, align 8, !tbaa !42
  %i.aw = mul nsw i32 %i.av, %i.t
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call noalias ptr @av_calloc(i64 noundef %i.ax, i64 noundef 2088) #9 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !43
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %.not153 = icmp eq i32 %i.bb, 0
  br i1 %.not153, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !42
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call i64 @av_cpu_max_align() #9    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.bf = sext i32 %i.be to i64
  %i.bg = add i64 %i.bc, -1
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = sub i64 0, %i.bc
  %i.bj = and i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = load i32, ptr %i.ab, align 8, !tbaa !42
  %i.bl = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.bm = shl i32 %i.bk, 1
  %i.bn = mul i32 %i.bm, %i.bl
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @av_calloc(i64 noundef %i.bo, i64 noundef %i.bj) #9 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !45
  %.not154.not = icmp eq ptr %i.bp, null
  br i1 %.not154.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.bs = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.bt = mul nsw i32 %i.bs, %i.br
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bj, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %i.by = phi i32 [ %.pre, %._crit_edge ], [ %i.br, %bb.n ] ; 2 uses
  %.not157192 = icmp sgt i32 %i.by, 0
  br i1 %.not157192, label %.preheader.lr.ph, label %.critedge162

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre195 = load i32, ptr %i.u, align 4, !tbaa !37
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge160
  %i.cb = phi i32 [ %i.by, %.preheader.lr.ph ], [ %i.do, %.critedge160 ]
  %i.cc = phi i32 [ %.pre195, %.preheader.lr.ph ], [ %i.dp, %.critedge160 ] ; 3 uses
  %.0138193 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dq, %.critedge160 ] ; 4 uses
  %.not156190 = icmp sgt i32 %i.cc, 0
  br i1 %.not156190, label %.lr.ph, label %.critedge160

bb.p:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load i32, ptr %i.u, align 4, !tbaa !37  ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %.not156 = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %.not156, label %.lr.ph, label %.critedge160.loopexit, !llvm.loop !46

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 4 uses
  %i.cf = phi i32 [ %i.cd, %bb.p ], [ %i.cc, %.preheader ]
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.ch = mul nsw i32 %i.cf, %.0138193
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  %i.cj = add nsw i32 %i.ch, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2088 x i8], ptr %i.cg, i64 %i.ck ; 3 uses
  %i.cm = load i32, ptr %i.ab, align 8, !tbaa !42
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = icmp eq i32 %.0138193, %i.cn
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.cp = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.cq = load i32, ptr %i.ar, align 4, !tbaa !41 ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %.0138193
  %i.cs = sub nsw i32 %i.cp, %i.cr
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.ct = load i32, ptr %i.ar, align 4, !tbaa !41 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cu = phi i32 [ %i.cq, %bb.q ], [ %i.ct, %bb.r ]
  %i.cv = phi i32 [ %i.cs, %bb.q ], [ %i.ct, %bb.r ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !48
  %i.cx = sub nsw i32 0, %i.cv
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !35
  %i.da = ashr i32 %i.cx, %i.cz
  %i.db = sub nsw i32 0, %i.da
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !48
  %i.dc = load i32, ptr %i.ca, align 8, !tbaa !44 ; 2 uses
  %i.dd = sub nsw i32 0, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35
  %i.dg = ashr i32 %i.dd, %i.df
  %i.dh = sub nsw i32 0, %i.dg
  store i32 %i.dh, ptr %i.cl, align 8, !tbaa !50
  %i.di = add nsw i32 %i.cu, 2
  %i.dj = mul nsw i32 %i.di, %i.dc
  %i.dk = add nsw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %i.dm = tail call noalias ptr @av_malloc(i64 noundef %i.dl) #9 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !51
  %.not155.not = icmp eq ptr %i.dm, null
  br i1 %.not155.not, label %.critedge, label %bb.p

.critedge160.loopexit:                            ; preds = %bb.p
  %.pre196 = load i32, ptr %i.ab, align 8, !tbaa !42
  br label %.critedge160

.critedge160:                                     ; preds = %.critedge160.loopexit, %.preheader
  %i.do = phi i32 [ %.pre196, %.critedge160.loopexit ], [ %i.cb, %.preheader ] ; 2 uses
  %i.dp = phi i32 [ %i.cd, %.critedge160.loopexit ], [ %i.cc, %.preheader ]
  %i.dq = add nuw nsw i32 %.0138193, 1            ; 2 uses
  %.not157 = icmp slt i32 %i.dq, %i.do
  br i1 %.not157, label %.preheader, label %.critedge162, !llvm.loop !52

.critedge162:                                     ; preds = %.critedge160, %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !53
  %switch.tableidx = add i32 %i.ds, -1            ; 2 uses
  %i.dt = icmp ult i32 %switch.tableidx, 3
  br i1 %i.dt, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %.critedge162
  %i.du = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.magy_encode_init, i64 %i.du
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8304
  store ptr %switch.load, ptr %i.dv, align 8, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %.critedge162, %switch.lookup
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 32, ptr %i.dw, align 8, !tbaa !55
  %i.dx = tail call noalias ptr @av_mallocz(i64 noundef 96) #9 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !56
  %.not158 = icmp eq ptr %i.dx, null
  br i1 %.not158, label %.critedge, label %bytestream2_init_writer.exit

bytestream2_init_writer.exit:                     ; preds = %bb.t
  store <2 x i32> <i32 1497841997, i32 32>, ptr %i.dx, align 1, !tbaa !57
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 7, ptr %i.dz, align 1, !tbaa !57
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !36
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !57
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  store <4 x i8> <i8 12, i8 0, i8 0, i8 0>, ptr %i.ed, align 1, !tbaa !57
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 14
  store i8 32, ptr %i.ee, align 1, !tbaa !57
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 15
  store i8 0, ptr %i.ef, align 1, !tbaa !57
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ei = load <2 x i32>, ptr %i.eh, align 8, !tbaa !35
  %i.ej = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.ej, ptr %i.eg, align 1, !tbaa !57
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.m, %bb.t, %bb.k, %bytestream2_init_writer.exit
  %.7 = phi i32 [ 0, %bytestream2_init_writer.exit ], [ -12, %bb.t ], [ -12, %bb.k ], [ -12, %bb.m ], [ -12, %bb.s ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @magy_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.PackageMergerList, align 4  ; 5 uses
  %5 = alloca %struct.PackageMergerList, align 4  ; 5 uses
  %i.a = alloca [257 x i32], align 16             ; 6 uses
  %i.b = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %6 = alloca %struct.PTable, align 8             ; 4 uses
  %7 = alloca %struct.PTable, align 8             ; 4 uses
  %8 = alloca %struct.PTable, align 8             ; 4 uses
  %9 = alloca %struct.PTable, align 8             ; 4 uses
  %10 = alloca %struct.PTable, align 8            ; 4 uses
  %11 = alloca %struct.PTable, align 8            ; 4 uses
  %12 = alloca %struct.PTable, align 8            ; 4 uses
  %13 = alloca %struct.PTable, align 8            ; 4 uses
  %14 = alloca [256 x %struct.PTable], align 16   ; 13 uses
  %i.c = alloca [33 x i16], align 16              ; 39 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = mul i32 %i.g, 5
  %i.k = mul i32 %i.j, %i.i
  %i.l = shl nsw i32 %i.g, 8
  %i.m = or disjoint i32 %i.l, 37
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = tail call i32 %i.q(ptr noundef %0, ptr noundef nonnull @predict_slice, ptr noundef %2, ptr noundef null, i32 noundef %i.i) #9 ; 0 uses
  %i.s = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.preheader153

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 4080
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 62 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 54 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 50 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 46 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 38 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 30 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 22 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.e

.preheader153:                                    ; preds = %generate_codes.exit, %bb.a
  %.lcssa162 = phi i32 [ %i.s, %bb.a ], [ %i.tx, %generate_codes.exit ] ; 2 uses
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.preheader152.lr.ph, label %._crit_edge172

.preheader152.lr.ph:                              ; preds = %.preheader153
  %i.bh = icmp sgt i32 %.lcssa162, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  br i1 %i.bh, label %.preheader152.lr.ph.split.us, label %._crit_edge172

.preheader152.lr.ph.split.us:                     ; preds = %.preheader152.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bl = zext nneg i32 %.lcssa162 to i64         ; 2 uses
  %wide.trip.count222 = zext nneg i32 %i.bf to i64
  br label %.preheader152.us

.preheader152.us:                                 ; preds = %._crit_edge.us, %.preheader152.lr.ph.split.us
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %._crit_edge.us ], [ 0, %.preheader152.lr.ph.split.us ] ; 2 uses
  %.0104170.us = phi i64 [ %i.dm, %._crit_edge.us ], [ %i.o, %.preheader152.lr.ph.split.us ]
  %i.bm = mul nuw nsw i64 %indvars.iv219, %i.bl
  %invariant.gep = getelementptr inbounds nuw [2088 x i8], ptr %i.bk, i64 %i.bm
  br label %bb.b

bb.b:                                             ; preds = %.preheader152.us, %bb.d
  %indvars.iv215 = phi i64 [ 0, %.preheader152.us ], [ %indvars.iv.next216, %bb.d ] ; 3 uses
  %.1105166.us = phi i64 [ %.0104170.us, %.preheader152.us ], [ %i.dm, %bb.d ] ; 2 uses
  %gep = getelementptr inbounds nuw [2088 x i8], ptr %invariant.gep, i64 %indvars.iv215 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 40 ; 4 uses
  %i.bo = getelementptr inbounds nuw [2048 x i8], ptr %i.bi, i64 %indvars.iv215 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.099165.us = phi i64 [ 0, %bb.b ], [ %i.cu, %bb.c ] ; 6 uses
  %.0100164.us = phi i64 [ 0, %bb.b ], [ %i.ct, %bb.c ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.099165.us
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !59
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.099165.us
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !60
  %i.bt = zext i8 %i.bs to i64
  %i.bu = mul nsw i64 %i.bq, %i.bt
  %i.bv = add nsw i64 %i.bu, %.0100164.us
  %i.bw = or disjoint i64 %.099165.us, 1          ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !60
  %i.cb = zext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.by, %i.cb
  %i.cd = add nsw i64 %i.cc, %i.bv
  %i.ce = or disjoint i64 %.099165.us, 2          ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !59
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.ce
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !60
  %i.cj = zext i8 %i.ci to i64
  %i.ck = mul nsw i64 %i.cg, %i.cj
  %i.cl = add nsw i64 %i.ck, %i.cd
  %i.cm = or disjoint i64 %.099165.us, 3          ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !59
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !60
  %i.cr = zext i8 %i.cq to i64
  %i.cs = mul nsw i64 %i.co, %i.cr
  %i.ct = add nsw i64 %i.cs, %i.cl                ; 2 uses
  %i.cu = add nuw nsw i64 %.099165.us, 4          ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cu, 256
  br i1 %exitcond.not.3, label %bb.d, label %bb.c, !llvm.loop !62

bb.d:                                             ; preds = %bb.c
  %i.cv = add nsw i64 %i.ct, 7
  %i.cw = ashr i64 %i.cv, 3                       ; 2 uses
  %i.cx = load i32, ptr %gep, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !48
  %i.da = mul nsw i32 %i.cz, %i.cx
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = icmp sge i64 %i.cw, %i.db
  %i.dd = zext i1 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %gep, i64 8
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !63
  %spec.select149.us = call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.db)
  %i.df = trunc i64 %spec.select149.us to i32
  %i.dg = add i32 %i.df, 5
  %i.dh = and i32 %i.dg, -4                       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !64
  %i.dj = trunc i64 %.1105166.us to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !65
  %i.dl = zext i32 %i.dh to i64
  %i.dm = add nsw i64 %.1105166.us, %i.dl         ; 3 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, %i.bl
  br i1 %exitcond218.not, label %._crit_edge.us, label %bb.b, !llvm.loop !66

._crit_edge.us:                                   ; preds = %bb.d
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
end_hunk_0
