Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pcx?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.GetByteContext = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"pcx\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PC Paintbrush PCX image\00", align 1
@ff_pcx_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 109, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @pcx_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Packet too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"this is not PCX encoded data\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid image dimensions\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"PCX data is corrupted\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"invalid PCX file\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"File is too short\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"image data possibly corrupted\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"expected palette after image data\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @pcx_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.GetByteContext, align 8     ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp slt i32 %i.b, 128
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #9
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 16 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bytestream2_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !14
  %i.k = load i8, ptr %i.e, align 1, !tbaa !15
  %.not = icmp eq i8 %i.k, 10
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.l = load i8, ptr %i.j, align 1, !tbaa !15
  %i.m = icmp ugt i8 %i.l, 5
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bytestream2_init.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %bb.at

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.p = load i8, ptr %i.n, align 1, !tbaa !15    ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.s = load i8, ptr %i.o, align 1, !tbaa !15    ; 3 uses
  %i.t = zext i8 %i.s to i32                      ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.v = load i16, ptr %i.r, align 1, !tbaa !15   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load i16, ptr %i.u, align 1, !tbaa !15   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.z = load i16, ptr %i.w, align 1, !tbaa !15   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ab = load i16, ptr %i.y, align 1, !tbaa !15  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.ad = load i16, ptr %i.aa, align 1, !tbaa !15
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !48
  %i.ag = load i16, ptr %i.ac, align 1, !tbaa !15
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !49
  %i.aj = icmp ult i16 %i.z, %i.v
  %i.ak = icmp ult i16 %i.ab, %i.x
  %or.cond207 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond207, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  br label %bb.at

bb.i:                                             ; preds = %bb.g
  %narrow = sub nuw i16 %i.z, %i.v                ; 2 uses
  %i.al = zext i16 %narrow to i32
  %i.am = add nuw nsw i32 %i.al, 1                ; 8 uses
  %narrow225 = sub nuw i16 %i.ab, %i.x
  %i.an = zext i16 %narrow225 to i32              ; 6 uses
  %i.ao = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 66
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !15
  %.fr256 = freeze i8 %i.ar                       ; 7 uses
  %i.as = zext i8 %.fr256 to i32                  ; 3 uses
  %i.at = load i16, ptr %i.aq, align 1, !tbaa !15 ; 4 uses
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = mul nuw nsw i32 %i.au, %i.as            ; 12 uses
  %i.aw = mul nuw nsw i32 %i.as, %i.t             ; 2 uses
  %i.ax = mul nuw i32 %i.aw, %i.am
  %i.ay = add nuw i32 %i.ax, 7
  %i.az = lshr i32 %i.ay, 3
  %i.ba = icmp samesign ult i32 %i.av, %i.az
  br i1 %i.ba, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not197 = icmp eq i8 %i.p, 0                   ; 2 uses
  br i1 %.not197, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %gepdiff = add nsw i32 %i.b, -68
  %i.bb = udiv i32 %gepdiff, %i.ao
  %i.bc = icmp samesign ugt i32 %i.av, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #9
  br label %bb.at

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bd = shl nuw nsw i32 %i.as, 8
  %i.be = or disjoint i32 %i.bd, %i.t
  %trunc = trunc nuw i32 %i.be to i16
  switch i16 %trunc, label %bb.o [
    i16 776, label %bb.p
    i16 264, label %bb.n
    i16 260, label %bb.n
    i16 258, label %bb.n
    i16 257, label %bb.n
    i16 1025, label %bb.n
    i16 769, label %bb.n
    i16 513, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.at

bb.p:                                             ; preds = %bb.m, %bb.n
  %.sink = phi i32 [ 11, %bb.n ], [ 2, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.bf, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store ptr %i.bg, ptr %4, align 8, !tbaa !16
  %i.bh = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %i.ao) #9 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.at, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.at, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.bl, align 8, !tbaa !55
  %i.bm = load ptr, ptr %1, align 8, !tbaa !14    ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !17
  %i.bp = sext i32 %i.bo to i64                   ; 5 uses
  %i.bq = add nuw nsw i32 %i.av, 64
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = tail call noalias ptr @av_malloc(i64 noundef %i.br) #9 ; 18 uses
  %.not198 = icmp eq ptr %i.bs, null
  br i1 %.not198, label %bb.at, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp eq i8 %.fr256, 3
  %i.bu = icmp eq i8 %i.s, 8                      ; 3 uses
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond, label %.preheader.a, label %bb.z

.preheader.a:                                     ; preds = %bb.s
  %5 = ptrtoint ptr %i.h to i64                   ; 3 uses
  %.not37.i = icmp eq i16 %i.at, 0
  %6 = zext nneg i32 %i.av to i64                 ; 2 uses
  %7 = shl nuw nsw i32 %i.au, 1
  %8 = zext i16 %i.at to i64
  %9 = zext nneg i32 %7 to i64
  %wide.trip.count291 = zext nneg i32 %i.am to i64 ; 2 uses
  %invariant.gep332 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %8 ; 3 uses
  %invariant.gep334 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %9 ; 3 uses
  %xtraiter377 = and i64 %wide.trip.count291, 1
  %10 = icmp eq i16 %i.z, %i.v
  %unroll_iter380 = and i64 %wide.trip.count291, 131070
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  %lcmp.mod379 = trunc i32 %i.am to i1
  br label %bb.t

bb.t:                                             ; preds = %.preheader.a, %bb.y
  %.0163255 = phi ptr [ %i.bm, %.preheader.a ], [ %i.ef, %bb.y ] ; 4 uses
  %.0169254 = phi i32 [ 0, %.preheader.a ], [ %i.eg, %bb.y ] ; 2 uses
  %i.bv = phi ptr [ %i.bg, %.preheader.a ], [ %i.dg, %bb.y ] ; 5 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %5, %i.bw                       ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = icmp slt i32 %i.by, 1
  br i1 %i.bz, label %pcx_rle_decode.exit.thread, label %11

11:                                               ; preds = %bb.t
  br i1 %.not197, label %12, label %.critedge2.preheader.i

.critedge2.preheader.i:                           ; preds = %11
  br i1 %.not37.i, label %pcx_rle_decode.exit, label %.lr.ph36.i

.critedge2.loopexit.i:                            ; preds = %bytestream2_get_byte.exit.i, %.lr.ph.preheader.i
  %.123.lcssa.i = phi i32 [ %.02235.i, %bytestream2_get_byte.exit.i ], [ %i.df, %.lr.ph.preheader.i ] ; 2 uses
  %i.ca = icmp ult i32 %.123.lcssa.i, %i.av
  br i1 %i.ca, label %.lr.ph36.i, label %pcx_rle_decode.exit.sink.split, !llvm.loop !0

.lr.ph36.i:                                       ; preds = %.critedge2.preheader.i, %.critedge2.loopexit.i
  %i.cb = phi ptr [ %i.cs, %.critedge2.loopexit.i ], [ %i.bv, %.critedge2.preheader.i ] ; 5 uses
  %.02235.i = phi i32 [ %.123.lcssa.i, %.critedge2.loopexit.i ], [ 0, %.critedge2.preheader.i ] ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %5, %i.cc                       ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.u, label %pcx_rle_decode.exit.sink.split

bb.u:                                             ; preds = %.lr.ph36.i
  %i.cg = icmp slt i64 %i.cd, 1
  br i1 %i.cg, label %bytestream2_get_byte.exit.i, label %bytestream2_get_byte.exit29.i

bytestream2_get_byte.exit29.i:                    ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 4 uses
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !15  ; 4 uses
  %i.cj = icmp ugt i8 %i.ci, -65
  br i1 %i.cj, label %bb.v, label %bytestream2_get_byte.exit.i

bb.v:                                             ; preds = %bytestream2_get_byte.exit29.i
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %5, %i.ck                       ; 2 uses
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %bytestream2_get_byte.exit.i

bb.w:                                             ; preds = %bb.v
  %i.co = and i8 %i.ci, 63                        ; 2 uses
  %i.cp = icmp slt i64 %i.cl, 1
  br i1 %i.cp, label %bytestream2_get_byte.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cr = load i8, ptr %i.ch, align 1, !tbaa !15
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.w, %bb.u, %bb.x, %bb.v, %bytestream2_get_byte.exit29.i
  %i.cs = phi ptr [ %i.cq, %bb.x ], [ %i.ch, %bb.v ], [ %i.ch, %bytestream2_get_byte.exit29.i ], [ %i.h, %bb.u ], [ %i.h, %bb.w ] ; 2 uses
  %.021.i = phi i8 [ %i.co, %bb.x ], [ 1, %bb.v ], [ 1, %bytestream2_get_byte.exit29.i ], [ 1, %bb.u ], [ %i.co, %bb.w ] ; 2 uses
  %.0.in.shrunk.i = phi i8 [ %i.cr, %bb.x ], [ %i.ci, %bb.v ], [ %i.ci, %bytestream2_get_byte.exit29.i ], [ 0, %bb.u ], [ 0, %bb.w ]
  %i.ct = icmp uge i32 %.02235.i, %i.av
  %.not2731.i = icmp eq i8 %.021.i, 0
  %or.cond32.i = or i1 %i.ct, %.not2731.i
  br i1 %or.cond32.i, label %.critedge2.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bytestream2_get_byte.exit.i
  %i.cu = zext nneg i32 %.02235.i to i64          ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.bs, i64 %i.cu
  %i.cv = xor i32 %.02235.i, -1
  %i.cw = add nsw i32 %i.av, %i.cv
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nsw i8 %.021.i, -1
  %i.cz = zext nneg i8 %i.cy to i64               ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cz)
  %i.da = add nuw nsw i64 %umin.i, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 %.0.in.shrunk.i, i64 range(i64 0, 64) %i.da, i1 false), !tbaa !15
  %i.db = xor i64 %i.cu, -1
  %i.dc = add nsw i64 %i.db, %6
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cz)
  %i.dd = trunc nuw nsw i64 %umin to i32
  %i.de = add nuw nsw i32 %i.dd, 1
  %i.df = add i32 %i.de, %.02235.i
  br label %.critedge2.loopexit.i

12:                                               ; preds = %11
  %13 = tail call i64 @llvm.smin.i64(i64 %i.bx, i64 %6)
  %14 = and i64 %13, 2147483647                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.bv, i64 %14, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %14
  br label %pcx_rle_decode.exit.sink.split

pcx_rle_decode.exit.sink.split:                   ; preds = %.critedge2.loopexit.i, %.lr.ph36.i, %12
  %.sink337 = phi ptr [ %15, %12 ], [ %i.cb, %.lr.ph36.i ], [ %i.cs, %.critedge2.loopexit.i ] ; 2 uses
  store ptr %.sink337, ptr %4, align 8
  br label %pcx_rle_decode.exit

pcx_rle_decode.exit:                              ; preds = %pcx_rle_decode.exit.sink.split, %.critedge2.preheader.i
  %i.dg = phi ptr [ %i.bv, %.critedge2.preheader.i ], [ %.sink337, %pcx_rle_decode.exit.sink.split ]
  br i1 %10, label %.epil.preheader376, label %pcx_rle_decode.exit.new

pcx_rle_decode.exit.new:                          ; preds = %pcx_rle_decode.exit, %pcx_rle_decode.exit.new
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.1, %pcx_rle_decode.exit.new ], [ 0, %pcx_rle_decode.exit ] ; 6 uses
  %niter381 = phi i64 [ %niter381.next.1, %pcx_rle_decode.exit.new ], [ 0, %pcx_rle_decode.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv288
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = mul nuw nsw i64 %indvars.iv288, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.dj ; 3 uses
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !15
  %gep333 = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv288
  %i.dl = load i8, ptr %gep333, align 1, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !15
  %gep335 = getelementptr inbounds nuw i8, ptr %invariant.gep334, i64 %indvars.iv288
  %i.dn = load i8, ptr %gep335, align 1, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !15
  %indvars.iv.next289 = or disjoint i64 %indvars.iv288, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.next289
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = mul nuw nsw i64 %indvars.iv.next289, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.dr ; 3 uses
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !15
  %gep333.1 = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv.next289
  %i.dt = load i8, ptr %gep333.1, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !15
  %gep335.1 = getelementptr inbounds nuw i8, ptr %invariant.gep334, i64 %indvars.iv.next289
  %i.dv = load i8, ptr %gep335.1, align 1, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !15
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %niter381.next.1 = add i64 %niter381, 2         ; 2 uses
  %niter381.ncmp.1 = icmp eq i64 %niter381.next.1, %unroll_iter380
  br i1 %niter381.ncmp.1, label %.unr-lcssa375, label %pcx_rle_decode.exit.new, !llvm.loop !19

.unr-lcssa375:                                    ; preds = %pcx_rle_decode.exit.new
  br i1 %lcmp.mod378.not, label %bb.y, label %.epil.preheader376

.epil.preheader376:                               ; preds = %.unr-lcssa375, %pcx_rle_decode.exit
  %indvars.iv288.epil.init = phi i64 [ 0, %pcx_rle_decode.exit ], [ %indvars.iv.next289.1, %.unr-lcssa375 ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv288.epil.init
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.dz = mul nuw nsw i64 %indvars.iv288.epil.init, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %.0163255, i64 %i.dz ; 3 uses
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !15
  %gep333.epil = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv288.epil.init
  %i.eb = load i8, ptr %gep333.epil, align 1, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !15
  %gep335.epil = getelementptr inbounds nuw i8, ptr %invariant.gep334, i64 %indvars.iv288.epil.init
  %i.ed = load i8, ptr %gep335.epil, align 1, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa375, %.epil.preheader376
  %i.ef = getelementptr inbounds i8, ptr %.0163255, i64 %i.bp
  %i.eg = add nuw nsw i32 %.0169254, 1
  %exitcond293.not = icmp eq i32 %.0169254, %i.an
  br i1 %exitcond293.not, label %.thread219, label %bb.t, !llvm.loop !20

bb.z:                                             ; preds = %bb.s
  %i.eh = icmp eq i8 %.fr256, 1                   ; 2 uses
  %or.cond3 = select i1 %i.eh, i1 %i.bu, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ej = add nsw i32 %i.ei, -769                 ; 2 uses
  %i.ek = icmp slt i32 %i.ei, 769
  br i1 %i.ek, label %bb.ab, label %.preheader229

.preheader229:                                    ; preds = %bb.aa
  %i.el = zext nneg i32 %i.am to i64
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #9
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.en = load i32, ptr %i.em, align 8, !tbaa !56
  %i.eo = and i32 %i.en, 8
  %.not205 = icmp eq i32 %i.eo, 0
  br i1 %.not205, label %bb.ac, label %pcx_rle_decode.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ep = load i32, ptr %i.a, align 8, !tbaa !32
  br label %pcx_rle_decode.exit.thread

bb.ad:                                            ; preds = %.preheader229, %bb.ae
  %.1164251 = phi ptr [ %i.bm, %.preheader229 ], [ %i.et, %bb.ae ] ; 2 uses
  %.1170250 = phi i32 [ 0, %.preheader229 ], [ %i.es, %bb.ae ] ; 2 uses
  %i.eq = call fastcc i32 @pcx_rle_decode(ptr noundef %4, ptr noundef %i.bs, i32 noundef %i.av, i32 noundef %i.q) ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %pcx_rle_decode.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1164251, ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i64 %i.el, i1 false)
  %i.es = add nuw nsw i32 %.1170250, 1
  %i.et = getelementptr inbounds i8, ptr %.1164251, i64 %i.bp
  %exitcond287.not = icmp eq i32 %.1170250, %i.an
  br i1 %exitcond287.not, label %bb.af, label %bb.ad, !llvm.loop !21

bb.af:                                            ; preds = %bb.ae
  %i.eu = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ev = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  %.not202 = icmp eq i32 %i.ej, %i.ez
  br i1 %.not202, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.af
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  %.pre294 = ptrtoint ptr %.pre to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #9
  %i.fa = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.fb = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fc = sub i64 %i.fb, %i.ex
  %i.fd = trunc i64 %i.fc to i32
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.fd)
  %i.fe = sext i32 %..i to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ev, i64 %i.fe ; 2 uses
  %.pre295 = ptrtoint ptr %i.ff to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.ag
  %.pre-phi296 = phi i64 [ %i.ew, %._crit_edge ], [ %.pre295, %bb.ag ]
  %.pre-phi = phi i64 [ %.pre294, %._crit_edge ], [ %i.fb, %bb.ag ]
  %i.fg = phi ptr [ %i.eu, %._crit_edge ], [ %i.ff, %bb.ag ] ; 2 uses
  %i.fh = sub i64 %.pre-phi, %.pre-phi296
  %i.fi = icmp slt i64 %i.fh, 1
  br i1 %i.fi, label %bytestream2_get_byte.exit.thread, label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fj, ptr %4, align 8, !tbaa !14
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !15
  %.not203 = icmp eq i8 %i.fk, 12
  br i1 %.not203, label %.thread219, label %bytestream2_get_byte.exit.thread

bytestream2_get_byte.exit.thread:                 ; preds = %bb.ah, %bytestream2_get_byte.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !56
  %i.fn = and i32 %i.fm, 8
  %.not204 = icmp eq i32 %i.fn, 0
  br i1 %.not204, label %bb.ai, label %pcx_rle_decode.exit.thread

bb.ai:                                            ; preds = %bytestream2_get_byte.exit.thread
  %i.fo = load i32, ptr %i.a, align 8, !tbaa !32
  br label %pcx_rle_decode.exit.thread

bb.aj:                                            ; preds = %bb.z
  br i1 %i.eh, label %.preheader232, label %.preheader236

.preheader236:                                    ; preds = %bb.aj
  %.not257 = icmp eq i8 %.fr256, 0
  br i1 %.not257, label %.preheader236.split.preheader, label %.preheader236.split.us.preheader

.preheader236.split.us.preheader:                 ; preds = %.preheader236
  %i.fp = zext i8 %.fr256 to i64                  ; 3 uses
  %i.fq = zext i16 %i.at to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.am to i64
  %xtraiter = and i64 %i.fp, 1
  %unroll_iter = and i64 %i.fp, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod369 = trunc i8 %.fr256 to i1
  br label %.preheader236.split.us

.preheader236.split.preheader:                    ; preds = %.preheader236
  %i.fr = zext i16 %narrow to i64
  %i.fs = add nuw nsw i64 %i.fr, 1
  br label %.preheader236.split

.preheader236.split.us:                           ; preds = %.preheader236.split.us.preheader, %.split.us.us
  %.3245.us = phi ptr [ %i.gx, %.split.us.us ], [ %i.bm, %.preheader236.split.us.preheader ] ; 2 uses
  %.3172244.us = phi i32 [ %i.gy, %.split.us.us ], [ 0, %.preheader236.split.us.preheader ] ; 2 uses
  %i.ft = call fastcc i32 @pcx_rle_decode(ptr noundef %4, ptr noundef %i.bs, i32 noundef %i.av, i32 noundef %i.q) ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %pcx_rle_decode.exit.thread, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.preheader236.split.us, %._crit_edge.us.us
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %._crit_edge.us.us ], [ 0, %.preheader236.split.us ] ; 4 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv273 to i32
  %i.fw = and i32 %i.fv, 7
  %i.fx = lshr exact i32 128, %i.fw               ; 3 uses
  %i.fy = lshr i64 %indvars.iv273, 3
  %i.fz = and i64 %i.fy, 536870911
  %invariant.gep = getelementptr i8, ptr %i.bs, i64 %i.fz ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %i.fp, %.lr.ph.us.us ], [ %indvars.iv.next.1, %bb.ak ] ; 2 uses
  %.0242.us.us = phi i8 [ 0, %.lr.ph.us.us ], [ %i.gn, %bb.ak ]
  %niter = phi i64 [ 0, %.lr.ph.us.us ], [ %niter.next.1, %bb.ak ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ga = mul nuw nsw i64 %indvars.iv.next, %i.fq
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ga
  %i.gb = load i8, ptr %gep, align 1, !tbaa !15
  %i.gc = zext i8 %i.gb to i32
  %i.gd = and i32 %i.fx, %i.gc
  %.not382 = icmp eq i32 %i.gd, 0
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.ge = shl i8 %.0242.us.us, 2
  %i.gf = select i1 %.not382, i8 0, i8 2
  %i.gg = or disjoint i8 %i.ge, %i.gf
  %i.gh = mul nuw nsw i64 %indvars.iv.next.1, %i.fq
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gh
  %i.gi = load i8, ptr %gep.1, align 1, !tbaa !15
  %i.gj = zext i8 %i.gi to i32
  %i.gk = and i32 %i.fx, %i.gj
  %i.gl = icmp ne i32 %i.gk, 0
  %i.gm = zext i1 %i.gl to i8
  %i.gn = or disjoint i8 %i.gg, %i.gm             ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.us.us.unr-lcssa, label %bb.ak, !llvm.loop !22

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.ak
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod369)
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.next.1, -1
  %i.go = shl i8 %i.gn, 1
  %i.gp = mul nuw nsw i64 %indvars.iv.next.epil, %i.fq
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.gp
  %i.gq = load i8, ptr %gep.epil, align 1, !tbaa !15
  %i.gr = zext i8 %i.gq to i32
  %i.gs = and i32 %i.fx, %i.gr
  %i.gt = icmp ne i32 %i.gs, 0
  %i.gu = zext i1 %i.gt to i8
  %i.gv = or disjoint i8 %i.go, %i.gu
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %.lcssa365 = phi i8 [ %i.gn, %._crit_edge.us.us.unr-lcssa ], [ %i.gv, %.epil.preheader ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.3245.us, i64 %indvars.iv273
  store i8 %.lcssa365, ptr %i.gw, align 1, !tbaa !15
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count
  br i1 %exitcond.not, label %.split.us.us, label %.lr.ph.us.us, !llvm.loop !23

.split.us.us:                                     ; preds = %._crit_edge.us.us
  %i.gx = getelementptr inbounds i8, ptr %.3245.us, i64 %i.bp
  %i.gy = add nuw nsw i32 %.3172244.us, 1
  %exitcond276.not = icmp eq i32 %.3172244.us, %i.an
  br i1 %exitcond276.not, label %.thread219, label %.preheader236.split.us, !llvm.loop !24

.preheader232:                                    ; preds = %bb.aj
  %i.gz = shl nuw nsw i32 %i.av, 3
  %i.ha = add nuw nsw i32 %i.gz, 8                ; 2 uses
  %i.hb = sub nsw i32 32, %i.t                    ; 3 uses
  %wide.trip.count284 = zext nneg i32 %i.am to i64 ; 2 uses
  %xtraiter370 = and i64 %wide.trip.count284, 1
  %i.hc = icmp eq i16 %i.z, %i.v
  %unroll_iter373 = and i64 %wide.trip.count284, 131070
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  %lcmp.mod372 = trunc i32 %i.am to i1
  br label %bb.al

bb.al:                                            ; preds = %.preheader232, %bb.am
  %.2165249 = phi ptr [ %i.bm, %.preheader232 ], [ %i.io, %bb.am ] ; 4 uses
  %.2171248 = phi i32 [ 0, %.preheader232 ], [ %i.ip, %bb.am ] ; 2 uses
  %i.hd = call fastcc i32 @pcx_rle_decode(ptr noundef %4, ptr noundef %i.bs, i32 noundef %i.av, i32 noundef %i.q) ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %pcx_rle_decode.exit.thread, label %.preheader231.preheader

.preheader231.preheader:                          ; preds = %bb.al
  br i1 %i.hc, label %.preheader231.epil.preheader, label %.preheader231

.preheader231:                                    ; preds = %.preheader231.preheader, %.preheader231
  %indvars.iv281 = phi i64 [ %indvars.iv.next282.1, %.preheader231 ], [ 0, %.preheader231.preheader ] ; 3 uses
  %.sroa.4.0246 = phi i32 [ %i.ia, %.preheader231 ], [ 0, %.preheader231.preheader ] ; 3 uses
  %niter374 = phi i64 [ %niter374.next.1, %.preheader231 ], [ 0, %.preheader231.preheader ]
  %i.hf = lshr i32 %.sroa.4.0246, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 1, !tbaa !15
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = and i32 %.sroa.4.0246, 7
  %i.hl = shl i32 %i.hj, %i.hk
  %i.hm = lshr i32 %i.hl, %i.hb
  %i.hn = add nsw i32 %.sroa.4.0246, %i.t
  %i.ho = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.hn) ; 3 uses
  %i.hp = trunc i32 %i.hm to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.2165249, i64 %indvars.iv281
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !15
  %i.hr = lshr i32 %i.ho, 3
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 1, !tbaa !15
  %i.hv = tail call i32 @llvm.bswap.i32(i32 %i.hu)
  %i.hw = and i32 %i.ho, 7
  %i.hx = shl i32 %i.hv, %i.hw
  %i.hy = lshr i32 %i.hx, %i.hb
  %i.hz = add nuw nsw i32 %i.ho, %i.t
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.hz) ; 2 uses
  %i.ib = trunc i32 %i.hy to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %.2165249, i64 %indvars.iv281
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  store i8 %i.ib, ptr %i.id, align 1, !tbaa !15
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %niter374.next.1 = add i64 %niter374, 2         ; 2 uses
  %niter374.ncmp.1 = icmp eq i64 %niter374.next.1, %unroll_iter373
  br i1 %niter374.ncmp.1, label %.unr-lcssa, label %.preheader231, !llvm.loop !25

.unr-lcssa:                                       ; preds = %.preheader231
  br i1 %lcmp.mod371.not, label %bb.am, label %.preheader231.epil.preheader

.preheader231.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader231.preheader
  %indvars.iv281.epil.init = phi i64 [ 0, %.preheader231.preheader ], [ %indvars.iv.next282.1, %.unr-lcssa ]
  %.sroa.4.0246.epil.init = phi i32 [ 0, %.preheader231.preheader ], [ %i.ia, %.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %i.ie = lshr i32 %.sroa.4.0246.epil.init, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 1, !tbaa !15
  %i.ii = tail call i32 @llvm.bswap.i32(i32 %i.ih)
  %i.ij = and i32 %.sroa.4.0246.epil.init, 7
  %i.ik = shl i32 %i.ii, %i.ij
  %i.il = lshr i32 %i.ik, %i.hb
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %.2165249, i64 %indvars.iv281.epil.init
  store i8 %i.im, ptr %i.in, align 1, !tbaa !15
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.preheader231.epil.preheader
  %i.io = getelementptr inbounds i8, ptr %.2165249, i64 %i.bp
  %i.ip = add nuw nsw i32 %.2171248, 1
  %exitcond286.not = icmp eq i32 %.2171248, %i.an
  br i1 %exitcond286.not, label %.thread219, label %bb.al, !llvm.loop !26

.preheader236.split:                              ; preds = %.preheader236.split.preheader, %.preheader235.preheader
  %.3245 = phi ptr [ %i.is, %.preheader235.preheader ], [ %i.bm, %.preheader236.split.preheader ] ; 2 uses
  %.3172244 = phi i32 [ %i.it, %.preheader235.preheader ], [ 0, %.preheader236.split.preheader ] ; 2 uses
  %i.iq = call fastcc i32 @pcx_rle_decode(ptr noundef %4, ptr noundef %i.bs, i32 noundef %i.av, i32 noundef %i.q) ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %pcx_rle_decode.exit.thread, label %.preheader235.preheader

.preheader235.preheader:                          ; preds = %.preheader236.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.3245, i8 0, i64 range(i64 0, 65537) %i.fs, i1 false), !tbaa !15
  %i.is = getelementptr i8, ptr %.3245, i64 %i.bp
  %i.it = add nuw nsw i32 %.3172244, 1
  %exitcond280.not = icmp eq i32 %.3172244, %i.an
  br i1 %exitcond280.not, label %.thread219, label %.preheader236.split, !llvm.loop !24

.thread219:                                       ; preds = %.split.us.us, %.preheader235.preheader, %bb.am, %bb.y, %bytestream2_get_byte.exit
  %i.iu = load ptr, ptr %4, align 8, !tbaa !16
  %i.iv = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = trunc i64 %i.iy to i32                  ; 4 uses
  %i.ja = icmp eq i8 %.fr256, 1
  %or.cond5 = select i1 %i.ja, i1 %i.bu, i1 false
  br i1 %or.cond5, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread219
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !14
  call fastcc void @pcx_palette(ptr noundef %4, ptr noundef %i.jc, i32 noundef 256)
  %i.jd = add nsw i32 %i.iz, 768
  br label %bb.as

bb.ao:                                            ; preds = %.thread219
  %i.je = icmp eq i32 %i.aw, 1
  br i1 %i.je, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !14
  store i32 -16777216, ptr %i.jg, align 4, !tbaa !15
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !14
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store i32 -1, ptr %i.ji, align 4, !tbaa !15
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.jj = icmp ult i8 %i.s, 8
  br i1 %i.jj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jk = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = sub i64 %i.jl, %i.ix
  %i.jn = trunc i64 %i.jm to i32
  %..i211 = tail call i32 @llvm.smin.i32(i32 %i.jn, i32 16)
  %i.jo = sext i32 %..i211 to i64
  %i.jp = getelementptr inbounds i8, ptr %i.iv, i64 %i.jo
  store ptr %i.jp, ptr %4, align 8, !tbaa !16
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !14
  call fastcc void @pcx_palette(ptr noundef %4, ptr noundef %i.jr, i32 noundef 16)
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq, %bb.an
  %.6 = phi i32 [ %i.jd, %bb.an ], [ %i.iz, %bb.ap ], [ %i.iz, %bb.ar ], [ %i.iz, %bb.aq ]
  store i32 1, ptr %2, align 4, !tbaa !17
  br label %pcx_rle_decode.exit.thread

pcx_rle_decode.exit.thread:                       ; preds = %.preheader236.split.us, %.preheader236.split, %bb.al, %bb.ad, %bb.t, %bytestream2_get_byte.exit.thread, %bb.ab, %bb.ac, %bb.ai, %bb.as
  %.7 = phi i32 [ %i.eq, %bb.ad ], [ %.6, %bb.as ], [ -1094995529, %bytestream2_get_byte.exit.thread ], [ %i.iq, %.preheader236.split ], [ %i.fo, %bb.ai ], [ %i.ep, %bb.ac ], [ %i.hd, %bb.al ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.t ], [ %i.ft, %.preheader236.split.us ]
  tail call void @av_free(ptr noundef nonnull %i.bs) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.r, %bb.q, %bb.p, %pcx_rle_decode.exit.thread, %bb.o, %bb.l, %bb.h, %bb.f, %bb.b
  %.0177 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.f ], [ -1094995529, %bb.h ], [ -1094995529, %bb.l ], [ -1094995529, %bb.o ], [ %i.bj, %bb.q ], [ %i.bh, %bb.p ], [ %.7, %pcx_rle_decode.exit.thread ], [ -12, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.0177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @pcx_rle_decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 16711426) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %bb.b
  %.not37 = icmp eq i32 %2, 0
  br i1 %.not37, label %.critedge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %.critedge2.preheader
  %i.i = zext nneg i32 %2 to i64
  br label %.lr.ph36

.critedge2.loopexit.loopexit:                     ; preds = %.lr.ph
  %i.j = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexit.loopexit, %bytestream2_get_byte.exit
  %.123.lcssa = phi i32 [ %.02235, %bytestream2_get_byte.exit ], [ %i.j, %.critedge2.loopexit.loopexit ] ; 2 uses
  %i.k = icmp ult i32 %.123.lcssa, %2
  br i1 %i.k, label %.lr.ph36, label %.critedge, !llvm.loop !0

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %.critedge2.loopexit
  %.02235 = phi i32 [ %.123.lcssa, %.critedge2.loopexit ], [ 0, %.lr.ph36.preheader ] ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph36
  %i.s = icmp slt i64 %i.p, 1
  br i1 %i.s, label %bytestream2_get_byte.exit29.thread, label %bytestream2_get_byte.exit29

bytestream2_get_byte.exit29.thread:               ; preds = %bb.c
  store ptr %i.l, ptr %0, align 8, !tbaa !16
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit29:                      ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !14
  %i.u = load i8, ptr %i.m, align 1, !tbaa !15    ; 4 uses
  %i.v = icmp ugt i8 %i.u, -65
  br i1 %i.v, label %bb.d, label %bytestream2_get_byte.exit

bb.d:                                             ; preds = %bytestream2_get_byte.exit29
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.n, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bytestream2_get_byte.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = and i8 %i.u, 63                         ; 2 uses
  %i.ab = icmp slt i64 %i.x, 1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !16
  br label %bytestream2_get_byte.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.ac, ptr %0, align 8, !tbaa !14
  %i.ad = load i8, ptr %i.t, align 1, !tbaa !15
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.g, %bb.f, %bytestream2_get_byte.exit29.thread, %bb.d, %bytestream2_get_byte.exit29
  %.021 = phi i8 [ 1, %bytestream2_get_byte.exit29.thread ], [ 1, %bb.d ], [ 1, %bytestream2_get_byte.exit29 ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ] ; 3 uses
  %.0.in.shrunk = phi i8 [ 0, %bytestream2_get_byte.exit29.thread ], [ %i.u, %bb.d ], [ %i.u, %bytestream2_get_byte.exit29 ], [ 0, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = icmp uge i32 %.02235, %2
  %.not2731 = icmp eq i8 %.021, 0
  %or.cond32 = or i1 %i.ae, %.not2731
  br i1 %or.cond32, label %.critedge2.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bytestream2_get_byte.exit
  %i.af = zext nneg i32 %.02235 to i64            ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.af
  %i.ag = xor i32 %.02235, -1
  %i.ah = add i32 %2, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nsw i8 %.021, -1
  %i.ak = zext nneg i8 %i.aj to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ak)
  %i.al = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %.0.in.shrunk, i64 range(i64 0, 64) %i.al, i1 false), !tbaa !15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.134 = phi i8 [ %.021, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.am = add nsw i8 %.134, -1                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.an = icmp samesign uge i64 %indvars.iv.next, %i.i
  %.not27 = icmp eq i8 %i.am, 0
  %or.cond = select i1 %i.an, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge2.loopexit.loopexit, label %.lr.ph, !llvm.loop !57

bb.h:                                             ; preds = %bb.b
  %i.ao = zext nneg i32 %2 to i64
  %i.ap = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.ao)
  %i.aq = and i64 %i.ap, 2147483647               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.c, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store ptr %i.as, ptr %0, align 8, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph36, %.critedge2.loopexit, %.critedge2.preheader, %bb.h, %bb.a
  %.024 = phi i32 [ -1094995529, %bb.a ], [ 0, %bb.h ], [ 0, %.critedge2.preheader ], [ 0, %.critedge2.loopexit ], [ 0, %.lr.ph36 ]
  ret i32 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pcx_palette(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 16, 257) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = sdiv i32 %i.g, 3
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.h) ; 3 uses
  %i.i = icmp sgt i32 %i.g, 2
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 1) ; 3 uses
  %xtraiter = and i32 %smax, 1
  %i.j = icmp slt i32 %i.g, 6
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %smax, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.k = phi ptr [ %i.c, %.lr.ph.new ], [ %i.aa, %bb.b ] ; 7 uses
  %.01114 = phi ptr [ %1, %.lr.ph.new ], [ %i.ao, %bb.b ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !14
  %i.m = load i8, ptr %i.k, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.o, %i.s
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = or disjoint i32 %i.x, -16777216
  %i.z = getelementptr inbounds nuw i8, ptr %.01114, i64 4
  store i32 %i.y, ptr %.01114, align 4, !tbaa !17
end_hunk_0
