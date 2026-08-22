Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movtextdec?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.anon.2 = type { i64 }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }

@.str = private unnamed_addr constant [9 x i8] c"mov_text\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"3GPP Timed Text subtitle\00", align 1
@ff_movtext_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 3, i32 94213, i32 0, i8 0, [3 x i8] zeroinitializer, ptr @mov_text_decoder_class, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 33, i32 104, ptr null, ptr null, ptr null, ptr @mov_text_init, %union.anon { ptr @mov_text_decode_frame }, ptr @mov_text_decode_close, ptr @mov_text_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"MOV text decoder\00", align 1
@mov_text_decoder_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Frame width, usually video width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Frame height, usually video height\00", align 1
@options = internal constant [3 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 92, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 34, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 96, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 34, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"tsmb_size invalid\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"{\\q1}\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"{\\q2}\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"{\\r}\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"{\\b%d}\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"{\\i%d}\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"{\\u%d}\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"{\\fs%d}\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"{\\fn%s}\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"{\\1c&H%X&}\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"{\\1a&H%02X&}\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"{\\2c&H%02x%02x%02x&}\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"{\\1c&H000000&}{\\2c&HFFFFFF&}\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"{\\2c&H%X&}\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"{\\1c&H%X&}{\\2c&H%X&}\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"invalid UTF-8 byte in subtitle\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@switch.table.mov_text_init = private unnamed_addr constant [3 x i8] c"\01\07\04", align 4
@switch.table.mov_text_init.2 = private unnamed_addr constant [3 x i8] c"\02\08\05", align 4
@switch.table.mov_text_init.3 = private unnamed_addr constant [3 x i8] c"\03\09\06", align 4

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @mov_text_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 17 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !tbaa !29  ; 13 uses
  %i.d = getelementptr i8, ptr %0, i64 80
  %.val28 = load i32, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %i.e = add nsw i32 %.val28, -40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 7 uses
  store i16 0, ptr %i.f, align 4, !tbaa !31
  %i.g = icmp slt i32 %.val28, 40
  br i1 %i.g, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.j = load i8, ptr %i.h, align 1, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %i.l = load i8, ptr %i.i, align 1, !tbaa !38    ; 3 uses
  switch i8 %i.j, label %bb.f [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i8 %i.l, 1               ; 2 uses
  %i.m = icmp ult i8 %switch.tableidx, 3
  br i1 %i.m, label %.sink.split.i, label %bb.f

bb.d:                                             ; preds = %bb.b
  %switch.tableidx44 = add i8 %i.l, 1             ; 2 uses
  %i.n = icmp ult i8 %switch.tableidx44, 3
  br i1 %i.n, label %.sink.split.i, label %bb.f

bb.e:                                             ; preds = %bb.b
  %switch.tableidx49 = add i8 %i.l, 1             ; 2 uses
  %i.o = icmp ult i8 %switch.tableidx49, 3
  br i1 %i.o, label %.sink.split.i, label %bb.f

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %switch.tableidx49.sink = phi i8 [ %switch.tableidx44, %bb.d ], [ %switch.tableidx, %bb.c ], [ %switch.tableidx49, %bb.e ]
  %switch.table.mov_text_init.3.sink = phi ptr [ @switch.table.mov_text_init.2, %bb.d ], [ @switch.table.mov_text_init, %bb.c ], [ @switch.table.mov_text_init.3, %bb.e ]
  %i.p = zext nneg i8 %switch.tableidx49.sink to i64
  %switch.gep51 = getelementptr inbounds nuw i8, ptr %switch.table.mov_text_init.3.sink, i64 %i.p
  %switch.load52 = load i8, ptr %switch.gep51, align 1
  %switch.ext53 = zext i8 %switch.load52 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %switch.ext53, ptr %i.q, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.sink.split.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.s = load i8, ptr %i.k, align 1, !tbaa !38
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 7
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.z = or disjoint i32 %i.x, %i.t
  store i32 %i.z, ptr %i.y, align 8, !tbaa !40
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 4, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ae = load i16, ptr %i.ac, align 1, !tbaa !38
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 54 ; 2 uses
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 25
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !38  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !43
  %i.ak = and i8 %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 45 ; 2 uses
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !44
  %i.am = lshr i8 %i.ai, 1
  %i.an = and i8 %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 46 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 2, !tbaa !45
  %i.ap = lshr i8 %i.ai, 2
  %.lobit.i.i = and i8 %i.ap, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 47 ; 2 uses
  store i8 %.lobit.i.i, ptr %i.aq, align 1, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 26
  %i.as = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 53 ; 2 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 29
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !38
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 27
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bc = or disjoint i32 %i.ba, %i.aw
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !48
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i8 %i.bd, ptr %i.be, align 4, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr @.str.9, ptr %i.bg, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.bi = load i16, ptr %i.bf, align 1, !tbaa !38 ; 2 uses
  %i.bj = tail call i16 @llvm.bswap.i16(i16 %i.bi) ; 3 uses
  %.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i, label %mov_text_tx3g.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = zext i16 %i.bj to i32
  %.neg.i = mul nsw i32 %i.bk, -3
  %i.bl = add nsw i32 %i.e, %.neg.i               ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = zext i16 %i.bj to i64
  %i.bo = tail call noalias ptr @av_calloc(i64 noundef %i.bn, i64 noundef 16) #7 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 7 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !51
  %.not81.i = icmp eq ptr %i.bo, null
  br i1 %.not81.i, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.bj, ptr %i.f, align 4, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %.019.i = phi i32 [ %i.bl, %bb.i ], [ %i.cb, %bb.m ]
  %.07118.i = phi i32 [ -1, %bb.i ], [ %spec.select.i, %bb.m ]
  %.01316.i = phi ptr [ %i.bh, %bb.i ], [ %i.cx, %bb.m ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01316.i, i64 2
  %i.br = load i16, ptr %.01316.i, align 1, !tbaa !38
  %i.bs = tail call i16 @llvm.bswap.i16(i16 %i.br) ; 2 uses
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %indvars.iv.i
  store i16 %i.bs, ptr %i.bu, align 8, !tbaa !52
  %i.bv = load i16, ptr %i.ag, align 2, !tbaa !54
  %i.bw = icmp eq i16 %i.bs, %i.bv
  %i.bx = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.bw, i32 %i.bx, i32 %.07118.i ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01316.i, i64 3 ; 2 uses
  %i.bz = load i8, ptr %i.bq, align 1, !tbaa !38  ; 2 uses
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = sub nsw i32 %.019.i, %i.ca              ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i, label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.cf) #7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cg = load i16, ptr %i.f, align 4, !tbaa !31
  %i.ch = zext i16 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i, label %.sink.split, !llvm.loop !55

bb.k:                                             ; preds = %bb.j
  %i.cj = add nuw nsw i32 %i.ca, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = tail call noalias ptr @av_malloc(i64 noundef %i.ck) #7 ; 3 uses
  %i.cm = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !57
  %.not82.i = icmp eq ptr %i.cl, null
  br i1 %.not82.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = load i16, ptr %i.f, align 4, !tbaa !31
  %.not.i83.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i83.i, label %.sink.split, label %.lr.ph.i84.i

.lr.ph.i84.i:                                     ; preds = %bb.l, %.lr.ph.i84.i
  %indvars.iv.i85.i = phi i64 [ %indvars.iv.next.i86.i, %.lr.ph.i84.i ], [ 0, %bb.l ] ; 2 uses
  %i.cq = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv.i85.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.cs) #7
  %indvars.iv.next.i86.i = add nuw nsw i64 %indvars.iv.i85.i, 1 ; 2 uses
  %i.ct = load i16, ptr %i.f, align 4, !tbaa !31
  %i.cu = zext i16 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next.i86.i, %i.cu
  br i1 %i.cv, label %.lr.ph.i84.i, label %.sink.split, !llvm.loop !55

bb.m:                                             ; preds = %bb.k
  %i.cw = zext i8 %i.bz to i64                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 1 %i.by, i64 %i.cw, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cw
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.pr.i = load i16, ptr %i.f, align 4, !tbaa !31
  %i.da = zext i16 %.pr.i to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next.i, %i.da
  br i1 %i.db, label %bb.j, label %bb.n, !llvm.loop !58

bb.n:                                             ; preds = %bb.m
  %i.dc = icmp sgt i32 %spec.select.i, -1
  br i1 %i.dc, label %bb.o, label %mov_text_tx3g.exit

bb.o:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.de = zext nneg i32 %spec.select.i to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57
  store ptr %i.dh, ptr %i.bg, align 8, !tbaa !50
  br label %mov_text_tx3g.exit

mov_text_tx3g.exit:                               ; preds = %bb.o, %bb.n, %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59 ; 2 uses
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mov_text_tx3g.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !60 ; 2 uses
  %.not27 = icmp eq i32 %i.dl, 0
  br i1 %.not27, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %mov_text_tx3g.exit
  store <2 x i32> <i32 384, i32 288>, ptr %i.di, align 4, !tbaa !61
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dm = phi i32 [ 288, %bb.q ], [ %i.dl, %bb.p ]
  %i.dn = phi i32 [ 384, %bb.q ], [ %i.dj, %bb.p ]
  %i.do = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.dp = load i8, ptr %i.at, align 1, !tbaa !47
  %i.dq = zext i8 %i.dp to i32
  %i.dr = load i8, ptr %i.be, align 4, !tbaa !49
  %i.ds = xor i8 %i.dr, -1
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = load i32, ptr %i.bb, align 8, !tbaa !48
  %i.dw = or i32 %i.du, %i.dv                     ; 2 uses
  %i.dx = load i8, ptr %i.ab, align 4, !tbaa !41
  %i.dy = xor i8 %i.dx, -1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw i32 %i.dz, 24
  %i.eb = load i32, ptr %i.y, align 8, !tbaa !40
  %i.ec = or i32 %i.ea, %i.eb                     ; 2 uses
  %i.ed = load i8, ptr %i.al, align 1, !tbaa !44
  %i.ee = zext i8 %i.ed to i32
  %i.ef = load i8, ptr %i.ao, align 2, !tbaa !45
  %i.eg = zext i8 %i.ef to i32
  %i.eh = load i8, ptr %i.aq, align 1, !tbaa !46
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !39
  %i.el = tail call i32 @ff_ass_subtitle_header_full(ptr noundef %0, i32 noundef %i.dn, i32 noundef %i.dm, ptr noundef %i.do, i32 noundef %i.dq, i32 noundef %i.dw, i32 noundef %i.dw, i32 noundef %i.ec, i32 noundef %i.ec, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef %i.ei, i32 noundef 1, i32 noundef %i.ek) #7
  br label %bb.t

.sink.split:                                      ; preds = %.lr.ph.i84.i, %.lr.ph.i.i, %bb.l
  tail call void @av_freep(ptr noundef nonnull %i.bp) #7
  store i16 0, ptr %i.f, align 4, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a, %bb.h, %bb.g
  %i.em = tail call i32 @ff_ass_subtitle_header_default(ptr noundef %0) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i32 [ %i.el, %bb.r ], [ %i.em, %bb.s ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @mov_text_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.AVBPrint, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %i.g = icmp slt i32 %i.f, 2
  br i1 %i.g, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 2
  %i.i = load i16, ptr %i.d, align 1, !tbaa !38   ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i16 %i.i, 0
  %i.k = select i1 %i.j, i32 0, i32 -1094995529
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i16 @llvm.bswap.i16(i16 %i.i)
  %i.m = zext i16 %i.l to i32
  %i.n = add nuw nsw i32 %i.m, 2                  ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.f)
  %i.o = zext nneg i32 %. to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !65
  %i.t = and i8 %i.s, 1
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %mov_text_cleanup.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.u) #7
  br label %mov_text_cleanup.exit

mov_text_cleanup.exit:                            ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 82 ; 2 uses
  store i16 0, ptr %i.v, align 2, !tbaa !66
  store i8 0, ptr %i.r, align 8, !tbaa !65
  call void @av_bprint_init(ptr noundef nonnull %4, i32 noundef 0, i32 noundef -1) #7
  %i.w = load i32, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.x = icmp slt i32 %i.n, %i.w
  br i1 %i.x, label %bb.g, label %bb.u

bb.g:                                             ; preds = %mov_text_cleanup.exit
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ad, 7
  br i1 %i.ae, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g, %.loopexit
  %.07989 = phi ptr [ %i.bh, %.loopexit ], [ %i.p, %bb.g ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.07989, i64 4
  %i.ag = load i32, ptr %.07989, align 1, !tbaa !38 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.07989, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.af, align 1, !tbaa !38 ; 4 uses
  %i.aj = icmp eq i32 %i.ag, 16777216
  br i1 %i.aj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.ab, %i.ak
  %i.am = icmp slt i64 %i.al, 8
  br i1 %i.am, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.07989, i64 16
  %i.ao = load i64, ptr %i.ah, align 1, !tbaa !38
  %i.ap = call noundef i64 @llvm.bswap.i64(i64 %i.ao)
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.aq = call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ar = zext i32 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.180 = phi ptr [ %i.an, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %.058 = phi i64 [ %i.ap, %bb.i ], [ %i.ar, %bb.j ] ; 3 uses
  %.0 = phi i64 [ 16, %bb.i ], [ 8, %bb.j ]       ; 3 uses
  %i.as = icmp ult i64 %.058, %.0
  br i1 %i.as, label %mov_text_cleanup.exit71, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = sub nuw i64 %.058, %.0                  ; 9 uses
  %i.au = ptrtoint ptr %.180 to i64
  %i.av = sub i64 %i.ab, %i.au
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %.thread, label %.preheader.peel

.preheader.peel:                                  ; preds = %bb.l
  switch i32 %i.ai, label %.preheader.preheader.peel.newph [
    i32 1819898995, label %bb.m
    i32 1953066088, label %bb.o
    i32 1919705960, label %bb.q
  ]

bb.m:                                             ; preds = %.preheader.peel
  %i.ax = icmp ult i64 %i.at, 2
  br i1 %i.ax, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @decode_styl(ptr noundef nonnull %.180, ptr noundef %i.b, i64 noundef %i.at) #7
  %.not112 = icmp eq i32 %i.ay, -1
  br i1 %.not112, label %.loopexit, label %.preheader.peel100

.preheader.peel100:                               ; preds = %bb.n
  switch i32 %i.ai, label %.preheader.preheader.peel.newph [
    i32 1953066088, label %bb.o
    i32 1919705960, label %bb.q
  ]

bb.o:                                             ; preds = %.preheader.peel100, %.preheader.peel
  %i.az = icmp ult i64 %i.at, 4
  br i1 %i.az, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call i32 @decode_hlit(ptr noundef nonnull %.180, ptr noundef %i.b, i64 noundef %i.at) #7
  %.not113 = icmp eq i32 %i.ba, -1
  br i1 %.not113, label %.loopexit, label %.preheader.peel106

.preheader.peel106:                               ; preds = %bb.p
  %i.bb = icmp eq i32 %i.ai, 1919705960
  br i1 %i.bb, label %bb.q, label %.preheader.preheader.peel.newph

bb.q:                                             ; preds = %.preheader.peel100, %.preheader.peel, %.preheader.peel106
  %i.bc = icmp ult i64 %i.at, 4
  br i1 %i.bc, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call i32 @decode_hclr(ptr noundef nonnull %.180, ptr noundef %i.b, i64 noundef %i.at) #7
  %.not114 = icmp eq i32 %i.bd, -1
  br i1 %.not114, label %.loopexit, label %.preheader.preheader.peel.newph

.preheader.preheader.peel.newph:                  ; preds = %bb.r, %.preheader.peel100, %.preheader.peel, %.preheader.peel106
  %i.be = icmp eq i32 %i.ai, 1886549876
  %i.bf = icmp eq i64 %.058, %.0
  %.not115 = xor i1 %i.be, true
  %brmerge = or i1 %.not115, %i.bf
  br i1 %brmerge, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.preheader.preheader.peel.newph
  %i.bg = call i32 @decode_twrp(ptr noundef nonnull %.180, ptr noundef %i.b, i64 noundef %i.at) #7 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader.peel.newph, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.180, i64 %i.at ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.ab, %i.bi
  %i.bk = icmp sgt i64 %i.bj, 7
  br i1 %i.bk, label %.lr.ph, label %.thread

.thread:                                          ; preds = %.loopexit, %bb.h, %bb.l, %bb.g
  call fastcc void @text_to_ass(ptr noundef %4, ptr noundef %i.q, ptr noundef %i.p, ptr noundef %0)
  %i.bl = load i8, ptr %i.r, align 8, !tbaa !65
  %i.bm = and i8 %i.bl, 1
  %.not.i70 = icmp eq i8 %i.bm, 0
  br i1 %.not.i70, label %mov_text_cleanup.exit71.thread, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @av_freep(ptr noundef nonnull %i.bn) #7
  store i16 0, ptr %i.v, align 2, !tbaa !66
  br label %mov_text_cleanup.exit71.thread

mov_text_cleanup.exit71:                          ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10) #7
  br label %bb.w

bb.u:                                             ; preds = %mov_text_cleanup.exit
  call fastcc void @text_to_ass(ptr noundef %4, ptr noundef %i.q, ptr noundef %i.p, ptr noundef nonnull %0)
  br label %mov_text_cleanup.exit71.thread

mov_text_cleanup.exit71.thread:                   ; preds = %bb.t, %.thread, %bb.u
  %i.bo = load ptr, ptr %4, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !69 ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !69
  %i.bs = call i32 @ff_ass_add_rect(ptr noundef %1, ptr noundef %i.bo, i32 noundef %i.bq, i32 noundef 0, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.bt = call i32 @av_bprint_finalize(ptr noundef nonnull %4, ptr noundef null) #7 ; 0 uses
  %i.bu = icmp slt i32 %i.bs, 0
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %mov_text_cleanup.exit71.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !70
  %i.bx = icmp ne i32 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  store i32 %i.by, ptr %2, align 4, !tbaa !61
  %i.bz = load i32, ptr %i.e, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %mov_text_cleanup.exit71, %mov_text_cleanup.exit71.thread, %bb.a, %bb.b, %bb.v, %bb.d
  %.4 = phi i32 [ -1094995529, %mov_text_cleanup.exit71 ], [ %i.k, %bb.d ], [ -1094995529, %bb.a ], [ %i.bz, %bb.v ], [ -1094995529, %bb.b ], [ %i.bs, %mov_text_cleanup.exit71.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.4
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mov_text_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  tail call fastcc void @mov_text_cleanup_ftab(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %mov_text_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  store i16 0, ptr %i.g, align 2, !tbaa !66
  br label %mov_text_cleanup.exit

mov_text_cleanup.exit:                            ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mov_text_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = and i32 %i.b, 1073741824
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @ff_ass_subtitle_header_full(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @ff_ass_subtitle_header_default(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_text_cleanup_ftab(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !31
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #7
  store i16 0, ptr %i.a, align 4, !tbaa !31
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.g) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 4, !tbaa !31
  %i.i = zext i16 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !55
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @text_to_ass(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readnone captures(address) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48
  %i.e = icmp ult ptr %1, %2
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = load i8, ptr %i.f, align 8, !tbaa !65
  %i.h = and i8 %i.g, 8
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.lr.ph127, label %.lr.ph127.sink.split

.lr.ph127.sink.split:                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !74
  %i.k = icmp eq i8 %i.j, 1
  %.str.11..str.12 = select i1 %i.k, ptr @.str.11, ptr @.str.12
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull %.str.11..str.12) #7
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.sink.split, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 82 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 45
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph127, %bb.aj
  %.091126 = phi i32 [ %i.d, %.lr.ph127 ], [ %.4, %bb.aj ] ; 3 uses
  %.092125 = phi i32 [ 0, %.lr.ph127 ], [ %.294, %bb.aj ] ; 6 uses
  %.095124 = phi i32 [ 0, %.lr.ph127 ], [ %i.dx, %bb.aj ] ; 5 uses
  %.097121 = phi ptr [ %1, %.lr.ph127 ], [ %i.dw, %bb.aj ] ; 6 uses
  %i.ab = load i8, ptr %i.l, align 8, !tbaa !65
  %i.ac = and i8 %i.ab, 1
  %.not103 = icmp eq i8 %i.ac, 0
  br i1 %.not103, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i16, ptr %i.m, align 2, !tbaa !66
  %i.ae = zext i16 %i.ad to i32
  %i.af = icmp slt i32 %.092125, %i.ae
  br i1 %i.af, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ah = sext i32 %.092125 to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !76
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp eq i32 %.095124, %i.al
  br i1 %i.am, label %bb.f, label %.thread147

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #7
  %i.an = load i32, ptr %i.c, align 8, !tbaa !48  ; 2 uses
  %i.ao = add nsw i32 %.092125, 1                 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.pre = load i16, ptr %i.m, align 2, !tbaa !66
  %.pre133 = zext i16 %.pre to i32
  %i.aq = icmp slt i32 %i.ao, %.pre133
  br i1 %i.aq, label %.thread147, label %bb.u

.thread147:                                       ; preds = %bb.e, %bb.f
  %.0154 = phi ptr [ %i.ap, %bb.f ], [ %i.ai, %bb.e ] ; 8 uses
  %.1153 = phi i32 [ %i.an, %bb.f ], [ %.091126, %bb.e ] ; 2 uses
  %.193152 = phi i32 [ %i.ao, %bb.f ], [ %.092125, %bb.e ] ; 3 uses
  %i.ar = load i16, ptr %.0154, align 4, !tbaa !77
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp eq i32 %.095124, %i.as
  br i1 %i.at, label %bb.g, label %bb.u

bb.g:                                             ; preds = %.thread147
  %i.au = getelementptr inbounds nuw i8, ptr %.0154, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !44  ; 2 uses
  %i.aw = load i8, ptr %i.o, align 1, !tbaa !44
  %.not104 = icmp eq i8 %i.av, %i.aw
  br i1 %.not104, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = zext i8 %i.av to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %i.ax) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.0154, i64 6
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !45  ; 2 uses
  %i.ba = load i8, ptr %i.p, align 2, !tbaa !45
  %.not105 = icmp eq i8 %i.az, %i.ba
  br i1 %.not105, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = zext i8 %i.az to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef %i.bb) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0154, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !46  ; 2 uses
  %i.be = load i8, ptr %i.q, align 1, !tbaa !46
  %.not106 = icmp eq i8 %i.bd, %i.be
  br i1 %.not106, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = zext i8 %i.bd to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %i.bf) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.0154, i64 13
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !47  ; 2 uses
  %i.bi = load i8, ptr %i.r, align 1, !tbaa !47
  %.not107 = icmp eq i8 %i.bh, %i.bi
  br i1 %.not107, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = zext i8 %i.bh to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %i.bj) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.0154, i64 14 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !42
  %i.bm = load i16, ptr %i.s, align 2, !tbaa !42
  %.not108 = icmp eq i16 %i.bl, %i.bm
  br i1 %.not108, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bn = load i16, ptr %i.t, align 4, !tbaa !31  ; 2 uses
  %.not128 = icmp eq i16 %i.bn, 0
  br i1 %.not128, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %i.bo = phi i16 [ %i.bw, %bb.q ], [ %i.bn, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load i16, ptr %i.bk, align 2, !tbaa !42
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !52
  %i.bt = icmp eq i16 %i.bp, %i.bs
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef %i.bv) #7
  %.pre131 = load i16, ptr %i.t, align 4, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %i.bw = phi i16 [ %i.bo, %.lr.ph ], [ %.pre131, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = zext i16 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.o
  %i.bz = load i32, ptr %i.c, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %.0154, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 3 uses
  %.not109 = icmp eq i32 %i.bz, %i.cb
  br i1 %.not109, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i32 noundef %i.cb) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.2 = phi i32 [ %i.cb, %bb.r ], [ %.1153, %.loopexit ] ; 2 uses
  %i.cc = load i8, ptr %i.v, align 4, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %.0154, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !49  ; 2 uses
  %.not110 = icmp eq i8 %i.cc, %i.ce
  br i1 %.not110, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = xor i8 %i.ce, -1
  %i.cg = zext i8 %i.cf to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %i.cg) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %.thread147, %bb.t, %bb.s, %bb.d, %bb.c
  %.294 = phi i32 [ %.092125, %bb.c ], [ %.092125, %bb.d ], [ %.193152, %bb.s ], [ %.193152, %bb.t ], [ %.193152, %.thread147 ], [ %i.ao, %bb.f ]
  %.4 = phi i32 [ %.091126, %bb.c ], [ %.091126, %bb.d ], [ %.2, %bb.s ], [ %.2, %bb.t ], [ %.1153, %.thread147 ], [ %i.an, %bb.f ] ; 2 uses
  %i.ch = load i8, ptr %i.l, align 8, !tbaa !65
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = and i32 %i.ci, 2
  %.not111 = icmp eq i32 %i.cj, 0
  br i1 %.not111, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load i16, ptr %i.w, align 8, !tbaa !79
  %i.cl = zext i16 %i.ck to i32
  %i.cm = icmp eq i32 %.095124, %i.cl
  br i1 %i.cm, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cn = and i32 %i.ci, 4
  %.not112 = icmp eq i32 %i.cn, 0
  br i1 %.not112, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load i8, ptr %i.y, align 2, !tbaa !38
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i8, ptr %i.z, align 1, !tbaa !38
  %i.cr = zext i8 %i.cq to i32
  %i.cs = load i8, ptr %i.x, align 4, !tbaa !38
  %i.ct = zext i8 %i.cs to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.ct) #7
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  %i.cu = load i16, ptr %i.aa, align 2, !tbaa !80
  %i.cv = zext i16 %i.cu to i32
  %i.cw = icmp eq i32 %.095124, %i.cv
  br i1 %i.cw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cx = load i8, ptr %i.l, align 8, !tbaa !65
  %i.cy = and i8 %i.cx, 4
  %.not113 = icmp eq i8 %i.cy, 0
  %i.cz = load i32, ptr %i.c, align 8, !tbaa !48  ; 2 uses
  br i1 %.not113, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i32 noundef %i.cz) #7
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i32 noundef %.4, i32 noundef %i.cz) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %bb.ab, %bb.u
  %i.da = load i8, ptr %.097121, align 1, !tbaa !38 ; 3 uses
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  %i.dc = and i32 %i.db, 192
  %i.dd = icmp eq i32 %i.dc, 128
  %i.de = icmp ugt i8 %i.da, -3
  %or.cond.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i, label %get_utf8_length_at.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ad
  %i.df = lshr i32 %i.db, 1
  %i.dg = and i32 %i.df, 64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %.preheader.preheader.i
  %.132.i.pn = phi ptr [ %.132.i, %bb.af ], [ %.097121, %.preheader.preheader.i ]
  %.026.i = phi i32 [ %i.dn, %bb.af ], [ %i.db, %.preheader.preheader.i ] ; 2 uses
  %.024.i = phi i32 [ %i.do, %bb.af ], [ %i.dg, %.preheader.preheader.i ] ; 2 uses
  %.132.i = getelementptr inbounds nuw i8, ptr %.132.i.pn, i64 1 ; 4 uses
  %i.dh = and i32 %.024.i, %.026.i
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %get_utf8_length_at.exit, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i
  %i.di = icmp ult ptr %.132.i, %2
  br i1 %i.di, label %bb.af, label %get_utf8_length_at.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dj = load i8, ptr %.132.i, align 1, !tbaa !38
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -128                 ; 2 uses
  %.not38.i = icmp ult i32 %i.dl, 64
  %i.dm = shl i32 %.026.i, 6
  %i.dn = add nuw nsw i32 %i.dl, %i.dm
  %i.do = shl i32 %.024.i, 5
  br i1 %.not38.i, label %.preheader.i, label %get_utf8_length_at.exit.thread, !llvm.loop !81

get_utf8_length_at.exit:                          ; preds = %.preheader.i
  %i.dp = ptrtoint ptr %.132.i to i64
  %i.dq = ptrtoint ptr %.097121 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = trunc i64 %i.dr to i32                  ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %get_utf8_length_at.exit.thread, label %bb.ag

get_utf8_length_at.exit.thread:                   ; preds = %bb.af, %bb.ae, %bb.ad, %get_utf8_length_at.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.25) #7
  %.pre132 = load i8, ptr %.097121, align 1, !tbaa !38
  br label %bb.ag

bb.ag:                                            ; preds = %get_utf8_length_at.exit.thread, %get_utf8_length_at.exit
  %i.du = phi i8 [ %.pre132, %get_utf8_length_at.exit.thread ], [ %i.da, %get_utf8_length_at.exit ]
  %.090 = phi i32 [ 1, %get_utf8_length_at.exit.thread ], [ %i.ds, %get_utf8_length_at.exit ] ; 2 uses
  switch i8 %i.du, label %bb.ai [
    i8 13, label %bb.aj
    i8 10, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @av_bprint_append_data(ptr noundef nonnull %0, ptr noundef nonnull %.097121, i32 noundef %.090) #7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.dv = zext nneg i32 %.090 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.097121, i64 %i.dv ; 2 uses
  %i.dx = add nuw nsw i32 %.095124, 1
  %i.dy = icmp ult ptr %i.dw, %2
  br i1 %i.dy, label %bb.c, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.aj, %bb.a
  ret void
}

declare i32 @ff_ass_add_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_styl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %0, align 1, !tbaa !38     ; 2 uses
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.b)  ; 3 uses
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = mul nuw nsw i64 %i.d, 12
  %i.f = or disjoint i64 %i.e, 2
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %mov_text_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = tail call ptr @av_realloc_array(ptr noundef %i.i, i64 noundef %i.d, i64 noundef 16) #7 ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %mov_text_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 3 uses
  store i16 %i.c, ptr %i.k, align 2, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !65
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !tbaa !65
  %.not69 = icmp eq i16 %i.b, 0
  br i1 %.not69, label %mov_text_cleanup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 54
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %styles_equivalent.exit51.thread
  %.04368 = phi i32 [ 0, %.lr.ph ], [ %i.cz, %styles_equivalent.exit51.thread ] ; 11 uses
  %.05667 = phi ptr [ %i.a, %.lr.ph ], [ %.157.ph, %styles_equivalent.exit51.thread ] ; 9 uses
  %i.v = phi i16 [ %i.c, %.lr.ph ], [ %i.cy, %styles_equivalent.exit51.thread ] ; 10 uses
  %i.w = sext i32 %.04368 to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.w ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05667, i64 2
  %i.z = load i16, ptr %.05667, align 1, !tbaa !38 ; 2 uses
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.z) ; 4 uses
  store i16 %i.aa, ptr %i.x, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %.05667, i64 4
  %i.ac = load i16, ptr %i.y, align 1, !tbaa !38  ; 2 uses
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %i.ac) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !76
  %i.af = icmp ult i16 %i.ad, %i.aa
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not48 = icmp eq i32 %.04368, 0                ; 2 uses
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.x, i64 -14
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !76
  %i.ai = icmp ult i16 %i.aa, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.f
  tail call void @av_freep(ptr noundef nonnull %i.h) #7
  store i16 0, ptr %i.k, align 2, !tbaa !66
  br label %mov_text_cleanup.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aj = icmp eq i16 %i.z, %i.ac
  br i1 %i.aj, label %styles_equivalent.exit51.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.05667, i64 6
  %i.al = load i16, ptr %i.ab, align 1, !tbaa !38
  %i.am = tail call i16 @llvm.bswap.i16(i16 %i.al) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  store i16 %i.am, ptr %i.an, align 2, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %.05667, i64 7
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !38  ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i8 %i.ap, ptr %i.aq, align 4, !tbaa !43
  %i.ar = and i8 %i.ap, 1                         ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !44
  %i.at = lshr i8 %i.ap, 1
  %i.au = and i8 %i.at, 1                         ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  store i8 %i.au, ptr %i.av, align 2, !tbaa !45
  %i.aw = lshr i8 %i.ap, 2
  %.lobit.i = and i8 %i.aw, 1                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  store i8 %.lobit.i, ptr %i.ax, align 1, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %.05667, i64 8
  %i.az = load i8, ptr %i.ao, align 1, !tbaa !38  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %.05667, i64 11
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !38
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %.05667, i64 9
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = zext i16 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bj = or disjoint i32 %i.bh, %i.bd            ; 3 uses
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !48
  %i.bk = load i8, ptr %i.bb, align 1, !tbaa !38  ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 %i.bk, ptr %i.bl, align 4, !tbaa !49
  %i.bm = load i8, ptr %i.o, align 1, !tbaa !44
  %i.bn = icmp eq i8 %i.ar, %i.bm
  br i1 %i.bn, label %bb.j, label %styles_equivalent.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bo = load i8, ptr %i.p, align 2, !tbaa !45
  %i.bp = icmp eq i8 %i.au, %i.bo
  br i1 %i.bp, label %bb.k, label %styles_equivalent.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bq = load i8, ptr %i.q, align 1, !tbaa !46
  %i.br = icmp eq i8 %.lobit.i, %i.bq
  br i1 %i.br, label %bb.l, label %styles_equivalent.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.r, align 8, !tbaa !48
  %i.bt = icmp eq i32 %i.bj, %i.bs
  br i1 %i.bt, label %bb.m, label %styles_equivalent.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %i.s, align 4, !tbaa !49
  %i.bv = icmp eq i8 %i.bk, %i.bu
  br i1 %i.bv, label %bb.n, label %styles_equivalent.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i8, ptr %i.t, align 1, !tbaa !47
  %i.bx = icmp eq i8 %i.az, %i.bw
  br i1 %i.bx, label %styles_equivalent.exit, label %styles_equivalent.exit.thread

styles_equivalent.exit:                           ; preds = %bb.n
  %i.by = load i16, ptr %i.u, align 2, !tbaa !42
  %.not65 = icmp eq i16 %i.am, %i.by
  br i1 %.not65, label %styles_equivalent.exit51.thread.sink.split, label %styles_equivalent.exit.thread

styles_equivalent.exit.thread:                    ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %styles_equivalent.exit
  br i1 %.not48, label %styles_equivalent.exit51.thread, label %bb.o

bb.o:                                             ; preds = %styles_equivalent.exit.thread
  %i.bz = getelementptr inbounds i8, ptr %i.x, i64 -14 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !76
  %i.cb = icmp eq i16 %i.aa, %i.ca
  br i1 %i.cb, label %bb.p, label %styles_equivalent.exit51.thread

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds i8, ptr %i.x, i64 -11
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !44
  %i.ce = icmp eq i8 %i.ar, %i.cd
  br i1 %i.ce, label %bb.q, label %styles_equivalent.exit51.thread

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds i8, ptr %i.x, i64 -10
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !45
  %i.ch = icmp eq i8 %i.au, %i.cg
  br i1 %i.ch, label %bb.r, label %styles_equivalent.exit51.thread

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds i8, ptr %i.x, i64 -9
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !46
  %i.ck = icmp eq i8 %.lobit.i, %i.cj
  br i1 %i.ck, label %bb.s, label %styles_equivalent.exit51.thread

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = icmp eq i32 %i.bj, %i.cm
  br i1 %i.cn, label %bb.t, label %styles_equivalent.exit51.thread

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !49
  %i.cq = icmp eq i8 %i.bk, %i.cp
  br i1 %i.cq, label %bb.u, label %styles_equivalent.exit51.thread

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !47
  %i.ct = icmp eq i8 %i.az, %i.cs
  br i1 %i.ct, label %styles_equivalent.exit51, label %styles_equivalent.exit51.thread

styles_equivalent.exit51:                         ; preds = %bb.u
  %i.cu = getelementptr inbounds i8, ptr %i.x, i64 -2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !42
  %.not66 = icmp eq i16 %i.am, %i.cv
  br i1 %.not66, label %bb.v, label %styles_equivalent.exit51.thread

bb.v:                                             ; preds = %styles_equivalent.exit51
  store i16 %i.ad, ptr %i.bz, align 2, !tbaa !76
  br label %styles_equivalent.exit51.thread.sink.split

styles_equivalent.exit51.thread.sink.split:       ; preds = %styles_equivalent.exit, %bb.h, %bb.v
  %i.cw = add i16 %i.v, -1                        ; 2 uses
  store i16 %i.cw, ptr %i.k, align 2, !tbaa !66
  %i.cx = add nsw i32 %.04368, -1
  br label %styles_equivalent.exit51.thread

styles_equivalent.exit51.thread:                  ; preds = %styles_equivalent.exit51.thread.sink.split, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %styles_equivalent.exit51, %styles_equivalent.exit.thread, %bb.o
  %i.cy = phi i16 [ %i.v, %styles_equivalent.exit51 ], [ %i.v, %bb.o ], [ %i.v, %styles_equivalent.exit.thread ], [ %i.v, %bb.r ], [ %i.v, %bb.q ], [ %i.v, %bb.p ], [ %i.v, %bb.u ], [ %i.v, %bb.t ], [ %i.v, %bb.s ], [ %i.cw, %styles_equivalent.exit51.thread.sink.split ] ; 2 uses
  %.1.ph = phi i32 [ %.04368, %styles_equivalent.exit51 ], [ %.04368, %bb.o ], [ 0, %styles_equivalent.exit.thread ], [ %.04368, %bb.r ], [ %.04368, %bb.q ], [ %.04368, %bb.p ], [ %.04368, %bb.u ], [ %.04368, %bb.t ], [ %.04368, %bb.s ], [ %i.cx, %styles_equivalent.exit51.thread.sink.split ]
  %.157.ph = getelementptr inbounds nuw i8, ptr %.05667, i64 12
  %i.cz = add nsw i32 %.1.ph, 1                   ; 2 uses
  %i.da = zext i16 %i.cy to i32
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %bb.d, label %mov_text_cleanup.exit, !llvm.loop !83

mov_text_cleanup.exit:                            ; preds = %styles_equivalent.exit51.thread, %bb.c, %bb.g, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ -12, %bb.b ], [ -1094995529, %bb.g ], [ 0, %styles_equivalent.exit51.thread ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @decode_hlit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((16, 20)) %1, i64 %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65
  %i.c = or i8 %i.b, 2
  store i8 %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %0, align 1, !tbaa !38
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.f, ptr %i.g, align 8, !tbaa !79
  %i.h = load i16, ptr %i.d, align 1, !tbaa !38
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.i, ptr %i.j, align 2, !tbaa !80
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @decode_hclr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((20, 24)) %1, i64 %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65
  %i.c = or i8 %i.b, 4
  store i8 %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %0, align 1
  store i32 %i.e, ptr %i.d, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @decode_twrp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((32, 33)) %1, i64 %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65
  %i.c = or i8 %i.b, 8
  store i8 %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = load i8, ptr %0, align 1, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.d, ptr %i.e, align 8, !tbaa !74
  ret i32 0
}

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_bprint_append_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!29 = !{!10, !16, i64 72}
!30 = !{!10, !6, i64 80}
!31 = !{!32, !34, i64 84}
!32 = !{!"", !11, i64 0, !12, i64 8, !33, i64 16, !35, i64 20, !12, i64 24, !35, i64 32, !36, i64 40, !7, i64 80, !34, i64 82, !34, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!33 = !{!"", !34, i64 0, !34, i64 2}
!34 = !{!"short", !7, i64 0}
!35 = !{!"", !7, i64 0}
!36 = !{!"", !37, i64 0, !16, i64 16, !6, i64 24, !7, i64 28, !6, i64 32}
!37 = !{!"", !34, i64 0, !34, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !6, i64 8, !7, i64 12, !7, i64 13, !34, i64 14}
!38 = !{!7, !7, i64 0}
!39 = !{!32, !6, i64 72}
!40 = !{!32, !6, i64 64}
!41 = !{!32, !7, i64 68}
!42 = !{!37, !34, i64 14}
!43 = !{!37, !7, i64 4}
!44 = !{!37, !7, i64 5}
!45 = !{!37, !7, i64 6}
!46 = !{!37, !7, i64 7}
!47 = !{!37, !7, i64 13}
!48 = !{!37, !6, i64 8}
!49 = !{!37, !7, i64 12}
!50 = !{!32, !16, i64 56}
!51 = !{!32, !12, i64 24}
!52 = !{!53, !34, i64 0}
!53 = !{!"", !34, i64 0, !16, i64 8}
!54 = !{!32, !34, i64 54}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!53, !16, i64 8}
!58 = distinct !{!58, !56}
!59 = !{!32, !6, i64 92}
!60 = !{!32, !6, i64 96}
!61 = !{!6, !6, i64 0}
!62 = !{!63, !16, i64 24}
!63 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!64 = !{!63, !6, i64 32}
!65 = !{!32, !7, i64 80}
!66 = !{!32, !34, i64 82}
!67 = !{!68, !16, i64 0}
!68 = !{!"AVBPrint", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21}
!69 = !{!32, !6, i64 88}
!70 = !{!71, !6, i64 12}
!71 = !{!"AVSubtitle", !34, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !72, i64 16, !15, i64 24}
!72 = !{!"p2 _ZTS14AVSubtitleRect", !28, i64 0}
!73 = !{!10, !6, i64 68}
!74 = !{!32, !7, i64 32}
!75 = !{!32, !12, i64 8}
!76 = !{!37, !34, i64 2}
!77 = !{!37, !34, i64 0}
!78 = distinct !{!78, !56}
!79 = !{!32, !34, i64 16}
!80 = !{!32, !34, i64 18}
!81 = distinct !{!81, !56}
!82 = distinct !{!82, !56}
!83 = distinct !{!83, !56}
end_hunk_0
