Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/targa?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Truevision Targa image\00", align 1
@ff_targa_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 93, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 24, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"File without colormap has colormap information set.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Not enough data to read header\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Bit depth %i is not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Incorrect palette: %i colors with offset %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Not enough data available for image\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Palette entry size %i bits is not supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Not enough data to read palette\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Ran ouf of data before end-of-image\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Packet went out of bounds\0A\00", align 1
@switch.table.decode_frame = private unnamed_addr constant [18 x i8] [i8 2, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4], align 4

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 39 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp sgt i32 %i.f, -1
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 141) #6
  tail call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.i, align 8, !tbaa !32
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = icmp eq i32 %i.f, 0
  br i1 %i.m, label %bytestream2_get_byte.exit264, label %bb.c

bb.c:                                             ; preds = %bytestream2_init.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !35
  %i.o = load i8, ptr %i.d, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i32
  br label %bytestream2_get_byte.exit264

bytestream2_get_byte.exit264:                     ; preds = %bytestream2_init.exit, %bb.c
  %i.q = phi ptr [ %i.n, %bb.c ], [ %i.k, %bytestream2_init.exit ] ; 3 uses
  %.0.i263 = phi i32 [ %i.p, %bb.c ], [ 0, %bytestream2_init.exit ] ; 2 uses
  %i.r = ptrtoint ptr %i.k to i64                 ; 20 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp slt i64 %i.t, 1
  br i1 %i.u, label %bytestream2_get_byte.exit262, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_byte.exit264
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !35
  %i.w = load i8, ptr %i.q, align 1, !tbaa !36
  %i.x = icmp eq i8 %i.w, 0
  %.pre335 = ptrtoint ptr %i.v to i64
  br label %bytestream2_get_byte.exit262

bytestream2_get_byte.exit262:                     ; preds = %bytestream2_get_byte.exit264, %bb.d
  %.pre-phi = phi i64 [ %.pre335, %bb.d ], [ %i.r, %bytestream2_get_byte.exit264 ]
  %i.y = phi ptr [ %i.v, %bb.d ], [ %i.k, %bytestream2_get_byte.exit264 ] ; 2 uses
  %.0.i261 = phi i1 [ %i.x, %bb.d ], [ true, %bytestream2_get_byte.exit264 ]
  %i.z = sub i64 %i.r, %.pre-phi
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %bytestream2_get_byte.exit260, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_byte.exit262
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !35
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !36
  %i.ad = zext i8 %i.ac to i32
  %.pre336 = ptrtoint ptr %i.ab to i64
  br label %bytestream2_get_byte.exit260

bytestream2_get_byte.exit260:                     ; preds = %bytestream2_get_byte.exit262, %bb.e
  %.pre-phi337 = phi i64 [ %.pre336, %bb.e ], [ %i.r, %bytestream2_get_byte.exit262 ]
  %i.ae = phi ptr [ %i.ab, %bb.e ], [ %i.k, %bytestream2_get_byte.exit262 ] ; 2 uses
  %.0.i259 = phi i32 [ %i.ad, %bb.e ], [ 0, %bytestream2_get_byte.exit262 ] ; 3 uses
  %i.af = sub i64 %i.r, %.pre-phi337
  %i.ag = icmp slt i64 %i.af, 2
  br i1 %i.ag, label %bytestream2_get_le16.exit271, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_byte.exit260
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 3 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !35
  %i.ai = load i16, ptr %i.ae, align 1, !tbaa !36
  %i.aj = zext i16 %i.ai to i32
  %.pre338 = ptrtoint ptr %i.ah to i64
  br label %bytestream2_get_le16.exit271

bytestream2_get_le16.exit271:                     ; preds = %bytestream2_get_byte.exit260, %bb.f
  %.pre-phi339 = phi i64 [ %.pre338, %bb.f ], [ %i.r, %bytestream2_get_byte.exit260 ]
  %i.ak = phi ptr [ %i.ah, %bb.f ], [ %i.k, %bytestream2_get_byte.exit260 ] ; 2 uses
  %.0.i270 = phi i32 [ %i.aj, %bb.f ], [ 0, %bytestream2_get_byte.exit260 ] ; 2 uses
  %i.al = sub i64 %i.r, %.pre-phi339
  %i.am = icmp slt i64 %i.al, 2
  br i1 %i.am, label %bytestream2_get_le16.exit269, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_le16.exit271
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 3 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !35
  %i.ao = load i16, ptr %i.ak, align 1, !tbaa !36
  %i.ap = zext i16 %i.ao to i32
  %.pre340 = ptrtoint ptr %i.an to i64
  br label %bytestream2_get_le16.exit269

bytestream2_get_le16.exit269:                     ; preds = %bytestream2_get_le16.exit271, %bb.g
  %.pre-phi341 = phi i64 [ %.pre340, %bb.g ], [ %i.r, %bytestream2_get_le16.exit271 ]
  %i.aq = phi ptr [ %i.an, %bb.g ], [ %i.k, %bytestream2_get_le16.exit271 ] ; 2 uses
  %.0.i268 = phi i32 [ %i.ap, %bb.g ], [ 0, %bytestream2_get_le16.exit271 ] ; 2 uses
  %i.ar = sub i64 %i.r, %.pre-phi341
  %i.as = icmp slt i64 %i.ar, 1
  br i1 %i.as, label %bytestream2_get_byte.exit258, label %bb.h

bb.h:                                             ; preds = %bytestream2_get_le16.exit269
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !35
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.av = zext i8 %i.au to i32
  %.pre342 = ptrtoint ptr %i.at to i64
  br label %bytestream2_get_byte.exit258

bytestream2_get_byte.exit258:                     ; preds = %bytestream2_get_le16.exit269, %bb.h
  %.pre-phi343 = phi i64 [ %.pre342, %bb.h ], [ %i.r, %bytestream2_get_le16.exit269 ]
  %i.aw = phi ptr [ %i.at, %bb.h ], [ %i.k, %bytestream2_get_le16.exit269 ]
  %.0.i257 = phi i32 [ %i.av, %bb.h ], [ 0, %bytestream2_get_le16.exit269 ] ; 2 uses
  %i.ax = sub i64 %i.r, %.pre-phi343
  %..i273 = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 4)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %..i273 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.r, %i.az
  %i.bb = icmp slt i64 %i.ba, 2
  br i1 %i.bb, label %bytestream2_get_le16.exit267, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_byte.exit258
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 3 uses
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !35
  %i.bd = load i16, ptr %i.ay, align 1, !tbaa !36
  %i.be = zext i16 %i.bd to i32
  %.pre344 = ptrtoint ptr %i.bc to i64
  br label %bytestream2_get_le16.exit267

bytestream2_get_le16.exit267:                     ; preds = %bytestream2_get_byte.exit258, %bb.i
  %.pre-phi345 = phi i64 [ %.pre344, %bb.i ], [ %i.r, %bytestream2_get_byte.exit258 ]
  %i.bf = phi ptr [ %i.bc, %bb.i ], [ %i.k, %bytestream2_get_byte.exit258 ] ; 2 uses
  %.0.i266 = phi i32 [ %i.be, %bb.i ], [ 0, %bytestream2_get_byte.exit258 ] ; 5 uses
  %i.bg = sub i64 %i.r, %.pre-phi345
  %i.bh = icmp slt i64 %i.bg, 2
  br i1 %i.bh, label %bytestream2_get_le16.exit, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_le16.exit267
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 3 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !35
  %i.bj = load i16, ptr %i.bf, align 1, !tbaa !36
  %i.bk = zext i16 %i.bj to i32
  %.pre346 = ptrtoint ptr %i.bi to i64
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bytestream2_get_le16.exit267, %bb.j
  %.pre-phi347 = phi i64 [ %.pre346, %bb.j ], [ %i.r, %bytestream2_get_le16.exit267 ]
  %i.bl = phi ptr [ %i.bi, %bb.j ], [ %i.k, %bytestream2_get_le16.exit267 ] ; 2 uses
  %.0.i265 = phi i32 [ %i.bk, %bb.j ], [ 0, %bytestream2_get_le16.exit267 ] ; 9 uses
  %i.bm = sub i64 %i.r, %.pre-phi347
  %i.bn = icmp slt i64 %i.bm, 1
  br i1 %i.bn, label %bytestream2_get_byte.exit256, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_le16.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !35
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !36
  %i.bq = zext i8 %i.bp to i32
  %.pre348 = ptrtoint ptr %i.bo to i64
  br label %bytestream2_get_byte.exit256

bytestream2_get_byte.exit256:                     ; preds = %bytestream2_get_le16.exit, %bb.k
  %.pre-phi349 = phi i64 [ %.pre348, %bb.k ], [ %i.r, %bytestream2_get_le16.exit ]
  %i.br = phi ptr [ %i.bo, %bb.k ], [ %i.k, %bytestream2_get_le16.exit ] ; 2 uses
  %.0.i255 = phi i32 [ %i.bq, %bb.k ], [ 0, %bytestream2_get_le16.exit ] ; 4 uses
  %i.bs = sub i64 %i.r, %.pre-phi349
  %i.bt = icmp slt i64 %i.bs, 1
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bytestream2_get_byte.exit256
  store ptr %i.k, ptr %i.b, align 8, !tbaa !37
  br label %bytestream2_get_byte.exit

bb.m:                                             ; preds = %bytestream2_get_byte.exit256
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !35
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bw = zext i8 %i.bv to i32
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.l, %bb.m
  %i.bx = phi ptr [ %i.k, %bb.l ], [ %i.bu, %bb.m ] ; 2 uses
  %.0.i = phi i32 [ 0, %bb.l ], [ %i.bw, %bb.m ]  ; 4 uses
  br i1 %.0.i261, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bytestream2_get_byte.exit
  %i.by = icmp ne i32 %.0.i270, 0
  %i.bz = icmp ne i32 %.0.i268, 0
  %or.cond = select i1 %i.by, i1 true, i1 %i.bz
  %i.ca = icmp ne i32 %.0.i257, 0
  %or.cond6 = select i1 %or.cond, i1 true, i1 %i.ca
  br i1 %or.cond6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.2) #6
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !34
  %.pre334 = load ptr, ptr %i.b, align 8, !tbaa !37
  %.pre350 = ptrtoint ptr %.pre to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bytestream2_get_byte.exit
  %.pre-phi351 = phi i64 [ %i.r, %bb.n ], [ %.pre350, %bb.o ], [ %i.r, %bytestream2_get_byte.exit ]
  %i.cb = phi ptr [ %i.bx, %bb.n ], [ %.pre334, %bb.o ], [ %i.bx, %bytestream2_get_byte.exit ] ; 2 uses
  %.0235 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ %.0.i270, %bytestream2_get_byte.exit ] ; 3 uses
  %.0234 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ %.0.i268, %bytestream2_get_byte.exit ] ; 19 uses
  %.0233 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ %.0.i257, %bytestream2_get_byte.exit ] ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %.pre-phi351, %i.cc             ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %.0234, 1
  %i.cg = add nuw nsw i32 %i.cf, %.0.i263
  %i.ch = icmp sgt i32 %i.cg, %i.ce
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #6
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ci = zext nneg i32 %.0.i263 to i64
  %..i272 = tail call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.ci)
  %i.cj = getelementptr inbounds i8, ptr %i.cb, i64 %..i272
  store ptr %i.cj, ptr %i.b, align 8, !tbaa !37
  %trunc = trunc nuw i32 %.0.i255 to i8           ; 2 uses
  switch i8 %trunc, label %bb.v [
    i8 8, label %bb.s
    i8 15, label %bb.w
    i8 16, label %bb.w
    i8 24, label %bb.t
    i8 32, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ck = and i32 %.0.i259, 247
  %i.cl = icmp eq i32 %i.ck, 3
  %i.cm = select i1 %i.cl, i32 8, i32 11
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %.0.i255) #6
  br label %.critedge

bb.w:                                             ; preds = %bb.r, %bb.r, %bb.u, %bb.t, %bb.s
  %.sink = phi i32 [ 28, %bb.u ], [ 3, %bb.t ], [ %i.cm, %bb.s ], [ 39, %bb.r ], [ 39, %bb.r ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.cn, align 8, !tbaa !38
  %.not241 = icmp ne i32 %.0234, 0                ; 2 uses
  %i.co = add nuw nsw i32 %.0234, %.0235
  %i.cp = icmp samesign ugt i32 %i.co, 256
  %or.cond254 = select i1 %.not241, i1 %i.cp, i1 false
  br i1 %or.cond254, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.0234, i32 noundef %.0235) #6
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.cq = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %.0.i266, i32 noundef %.0.i265) #6 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = and i32 %.0.i259, 247
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = load i32, ptr %i.e, align 8, !tbaa !31
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.cv = and i32 %.0.i259, 8
  %.not242 = icmp eq i32 %i.cv, 0                 ; 2 uses
  br i1 %.not242, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nuw nsw i32 %.0.i255, 1
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = mul nuw nsw i32 %i.cx, %.0.i266
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %sext = shl i64 %i.de, 32
  %i.df = ashr exact i64 %sext, 32
  %i.dg = zext nneg i32 %.0.i265 to i64
  %i.dh = mul nuw nsw i64 %i.cz, %i.dg
  %i.di = icmp ugt i64 %i.dh, %i.df
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #6
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %.0232 = phi i64 [ undef, %bb.ab ], [ %i.cz, %bb.ac ] ; 3 uses
  %i.dj = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.dl, align 8, !tbaa !39
  %i.dm = and i32 %.0.i, 32
  %.not243 = icmp eq i32 %i.dm, 0                 ; 2 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !44 ; 3 uses
  %i.dq = add nsw i32 %.0.i265, -1
  %i.dr = mul nsw i32 %i.dp, %i.dq
  %i.ds = sub nsw i32 0, %i.dp
  %.0217 = select i1 %.not243, i32 %i.ds, i32 %i.dp ; 3 uses
  %narrow = select i1 %.not243, i32 %i.dr, i32 0
  %.0216.idx = sext i32 %narrow to i64
  %.0216 = getelementptr inbounds i8, ptr %i.dn, i64 %.0216.idx ; 3 uses
  %i.dt = and i32 %.0.i, 64
  %.not244 = icmp eq i32 %i.dt, 0                 ; 2 uses
  %.not245 = icmp samesign ult i32 %.0.i, 128     ; 2 uses
  %i.du = select i1 %.not245, i32 1, i32 4
  %i.dv = select i1 %.not244, i32 %i.du, i32 2    ; 3 uses
  br i1 %.not241, label %bb.ag, label %.loopexit283

bb.ag:                                            ; preds = %bb.af
  %trunc246 = trunc nuw i32 %.0233 to i8
  %switch.tableidx = add i8 %trunc246, -15        ; 3 uses
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %.0224294 = phi i32 [ %i.hg, %.preheader282 ], [ %.0224294.unr, %.preheader282.prol.loopexit ]
  %i.gt = phi ptr [ %i.hd, %.preheader282 ], [ %.unr431, %.preheader282.prol.loopexit ] ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !35
  %i.gv = load i32, ptr %i.gt, align 1, !tbaa !36
  %i.gw = getelementptr inbounds nuw i8, ptr %.0221295, i64 4
  store i32 %i.gv, ptr %.0221295, align 4, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !35
  %i.gy = load i32, ptr %i.gu, align 1, !tbaa !36
  %i.gz = getelementptr inbounds nuw i8, ptr %.0221295, i64 8
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 12 ; 2 uses
  store ptr %i.ha, ptr %i.b, align 8, !tbaa !35
  %i.hb = load i32, ptr %i.gx, align 1, !tbaa !36
  %i.hc = getelementptr inbounds nuw i8, ptr %.0221295, i64 12
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  store ptr %i.hd, ptr %i.b, align 8, !tbaa !35
  %i.he = load i32, ptr %i.ha, align 1, !tbaa !36
  %i.hf = getelementptr inbounds nuw i8, ptr %.0221295, i64 16
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !44
  %i.hg = add nuw nsw i32 %.0224294, 4            ; 2 uses
  %exitcond315.not.3 = icmp eq i32 %i.hg, %.0234
  br i1 %exitcond315.not.3, label %.loopexit283, label %.preheader282, !llvm.loop !68

.preheader284:                                    ; preds = %.preheader284, %.preheader284.preheader.new
  %.1222292 = phi ptr [ %i.em, %.preheader284.preheader.new ], [ %i.ib, %.preheader284 ] ; 3 uses
  %i.hh = phi ptr [ %i.ec, %.preheader284.preheader.new ], [ %i.hs, %.preheader284 ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader284.preheader.new ], [ %niter.next.1, %.preheader284 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 3 ; 2 uses
  store ptr %i.hi, ptr %i.b, align 8, !tbaa !35
  %i.hj = getelementptr i8, ptr %i.hh, i64 1
  %i.hk = load i16, ptr %i.hj, align 1
  %i.hl = zext i16 %i.hk to i32
  %i.hm = shl nuw nsw i32 %i.hl, 8
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !36
  %i.ho = zext i8 %i.hn to i32
  %i.hp = or disjoint i32 %i.hm, %i.ho
  %i.hq = or disjoint i32 %i.hp, -16777216
  %i.hr = getelementptr inbounds nuw i8, ptr %.1222292, i64 4
  store i32 %i.hq, ptr %.1222292, align 4, !tbaa !44
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 6 ; 3 uses
  store ptr %i.hs, ptr %i.b, align 8, !tbaa !35
  %i.ht = getelementptr i8, ptr %i.hh, i64 4
  %i.hu = load i16, ptr %i.ht, align 1
  %i.hv = zext i16 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = load i8, ptr %i.hi, align 1, !tbaa !36
  %i.hy = zext i8 %i.hx to i32
  %i.hz = or disjoint i32 %i.hw, %i.hy
  %i.ia = or disjoint i32 %i.hz, -16777216
  %i.ib = getelementptr inbounds nuw i8, ptr %.1222292, i64 8 ; 2 uses
  store i32 %i.ia, ptr %i.hr, align 4, !tbaa !44
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit283.loopexit423.unr-lcssa, label %.preheader284, !llvm.loop !69

.preheader286:                                    ; preds = %.preheader286.preheader424, %.preheader286
  %.2223289 = phi ptr [ %i.is, %.preheader286 ], [ %.2223289.ph, %.preheader286.preheader424 ] ; 2 uses
  %.2226288 = phi i32 [ %i.it, %.preheader286 ], [ %.2226288.ph, %.preheader286.preheader424 ]
  %i.ic = phi ptr [ %i.id, %.preheader286 ], [ %.ph425, %.preheader286.preheader424 ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2 ; 2 uses
  store ptr %i.id, ptr %i.b, align 8, !tbaa !35
  %i.ie = load i16, ptr %i.ic, align 1, !tbaa !36
  %i.if = zext i16 %i.ie to i32                   ; 3 uses
  %i.ig = shl nuw nsw i32 %i.if, 9
  %i.ih = and i32 %i.ig, 16252928
  %i.ii = shl nuw nsw i32 %i.if, 6
  %i.ij = and i32 %i.ii, 63488
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = shl nuw nsw i32 %i.if, 3
  %i.im = and i32 %i.il, 248
  %i.in = or disjoint i32 %i.ik, %i.im            ; 2 uses
  %i.io = lshr i32 %i.in, 5
  %i.ip = and i32 %i.io, 460551
  %i.iq = or disjoint i32 %i.in, %i.ip
  %i.ir = or disjoint i32 %i.iq, -16777216
  %i.is = getelementptr inbounds nuw i8, ptr %.2223289, i64 4
  store i32 %i.ir, ptr %.2223289, align 4, !tbaa !44
  %i.it = add nuw nsw i32 %.2226288, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.it, %.0234
  br i1 %exitcond.not, label %.loopexit283, label %.preheader286, !llvm.loop !70

default.unreachable362:                           ; preds = %bb.ak
  unreachable

.loopexit283.loopexit423.unr-lcssa:               ; preds = %.preheader284
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit283, label %.preheader284.epil.preheader

.preheader284.epil.preheader:                     ; preds = %.loopexit283.loopexit423.unr-lcssa, %.preheader284.preheader
  %.1222292.epil.init = phi ptr [ %i.em, %.preheader284.preheader ], [ %i.ib, %.loopexit283.loopexit423.unr-lcssa ]
  %.epil.init = phi ptr [ %i.ec, %.preheader284.preheader ], [ %i.hs, %.loopexit283.loopexit423.unr-lcssa ] ; 3 uses
  %lcmp.mod428 = trunc i32 %.0234 to i1
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.iu = getelementptr inbounds nuw i8, ptr %.epil.init, i64 3
  store ptr %i.iu, ptr %i.b, align 8, !tbaa !35
  %i.iv = getelementptr i8, ptr %.epil.init, i64 1
  %i.iw = load i16, ptr %i.iv, align 1
  %i.ix = zext i16 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 8
  %i.iz = load i8, ptr %.epil.init, align 1, !tbaa !36
  %i.ja = zext i8 %i.iz to i32
  %i.jb = or disjoint i32 %i.iy, %i.ja
  %i.jc = or disjoint i32 %i.jb, -16777216
  store i32 %i.jc, ptr %.1222292.epil.init, align 4, !tbaa !44
  br label %.loopexit283

.loopexit283:                                     ; preds = %.preheader286, %.preheader284.epil.preheader, %.loopexit283.loopexit423.unr-lcssa, %.preheader282.prol.loopexit, %.preheader282, %middle.block, %middle.block414, %bb.ai, %bb.af
  br i1 %.not242, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.loopexit283
  %i.jd = tail call fastcc i32 @targa_decode_rle(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %.0216, i32 noundef %.0.i266, i32 noundef %.0.i265, i32 noundef %.0217, i32 noundef %.0.i255, i32 noundef %i.dv) ; 2 uses
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %advance_line.exit.thread, label %.critedge

bb.am:                                            ; preds = %.loopexit283
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %sext280 = shl i64 %i.jj, 32
  %i.jk = ashr exact i64 %sext280, 32
  %i.jl = zext nneg i32 %.0.i265 to i64
  %i.jm = mul i64 %.0232, %i.jl
  %.not250 = icmp ugt i64 %i.jm, %i.jk
  br i1 %.not250, label %.thread279, label %.preheader281

.preheader281:                                    ; preds = %bb.am
  %i.jn = and i64 %.0232, 4294967295
  %i.jo = add nsw i32 %i.dv, -1
  %i.jp = select i1 %.not245, i32 0, i32 2
  %i.jq = select i1 %.not244, i32 %i.jp, i32 1
  %i.jr = shl i32 %.0217, %i.jq
  %i.js = sext i32 %i.jr to i64
  br label %bb.an

.thread279:                                       ; preds = %bb.am
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #6
  br label %.critedge

bb.an:                                            ; preds = %.preheader281, %advance_line.exit
  %i.jt = phi ptr [ %i.kb, %advance_line.exit ], [ %i.jg, %.preheader281 ] ; 2 uses
  %.0 = phi i32 [ %.1, %advance_line.exit ], [ 0, %.preheader281 ]
  %.0220 = phi ptr [ %.0.i275, %advance_line.exit ], [ %.0216, %.preheader281 ] ; 2 uses
  %i.ju = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 2 uses
  %i.jy = icmp sgt i64 %i.jx, %i.jn
  %.v = select i1 %i.jy, i64 %.0232, i64 %i.jx
  %i.jz = and i64 %.v, 4294967295                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0220, ptr align 1 %i.jt, i64 %i.jz, i1 false)
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jz ; 2 uses
  store ptr %i.kb, ptr %i.b, align 8, !tbaa !37
  %i.kc = add nsw i32 %.0, %i.dv                  ; 3 uses
  %i.kd = icmp slt i32 %i.kc, %.0.i265
  br i1 %i.kd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ke = getelementptr inbounds i8, ptr %.0220, i64 %i.js
  br label %advance_line.exit

bb.ap:                                            ; preds = %bb.an
  %i.kf = add nuw nsw i32 %i.kc, 1
  %i.kg = and i32 %i.kf, %i.jo                    ; 4 uses
  %.not.i = icmp ne i32 %i.kg, 0
  %i.kh = icmp samesign ult i32 %i.kg, %.0.i265
  %or.cond.i274 = and i1 %.not.i, %i.kh
  br i1 %or.cond.i274, label %bb.aq, label %advance_line.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ki = mul nsw i32 %i.kg, %.0217
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %.0216, i64 %i.kj
  br label %advance_line.exit

advance_line.exit:                                ; preds = %bb.ao, %bb.aq
  %.1 = phi i32 [ %i.kc, %bb.ao ], [ %i.kg, %bb.aq ]
  %.0.i275 = phi ptr [ %i.ke, %bb.ao ], [ %i.kk, %bb.aq ] ; 2 uses
  %.not249 = icmp eq ptr %.0.i275, null
  br i1 %.not249, label %advance_line.exit.thread, label %bb.an, !llvm.loop !71

advance_line.exit.thread:                         ; preds = %advance_line.exit, %bb.ap, %bb.al
  %i.kl = and i32 %.0.i, 16
  %.not251 = icmp ne i32 %i.kl, 0
  %i.km = icmp ne i32 %.0.i265, 0
  %or.cond305 = select i1 %.not251, i1 %i.km, i1 false
  br i1 %or.cond305, label %.lr.ph304, label %.loopexit

.lr.ph304:                                        ; preds = %advance_line.exit.thread
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ko = lshr i32 %.0.i266, 1                    ; 6 uses
  %.not = icmp eq i32 %i.ko, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph304
  %i.kp = zext nneg i32 %.0.i266 to i64           ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ko to i64   ; 7 uses
  %wide.trip.count326 = zext nneg i32 %i.ko to i64
  %i.kq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter432 = and i64 %wide.trip.count, 1
  %i.kr = icmp eq i64 %i.kq, 0
  %unroll_iter435 = and i64 %wide.trip.count, 32766
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  %lcmp.mod434 = trunc i32 %i.ko to i1
  %xtraiter437 = and i64 %wide.trip.count, 1
  %i.ks = icmp eq i64 %i.kq, 0
  %unroll_iter440 = and i64 %wide.trip.count, 32766
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  %lcmp.mod439 = trunc i32 %i.ko to i1
  %xtraiter442 = and i64 %wide.trip.count, 1
  %i.kt = icmp eq i64 %i.kq, 0
  %unroll_iter445 = and i64 %wide.trip.count, 32766
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  %lcmp.mod444 = trunc i32 %i.ko to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0219303 = phi i32 [ %i.no, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ku = load ptr, ptr %1, align 8, !tbaa !35
  %i.kv = load i32, ptr %i.kn, align 8, !tbaa !44
  %i.kw = mul nsw i32 %i.kv, %.0219303
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr %i.ku, i64 %i.kx ; 14 uses
  switch i8 %trunc, label %._crit_edge [
    i8 32, label %.lr.ph.split.us.preheader
    i8 24, label %.lr.ph.split.us297
    i8 16, label %.lr.ph.split.us299.preheader
    i8 8, label %.lr.ph.split.us301.preheader
  ]

.lr.ph.split.us301.preheader:                     ; preds = %.lr.ph
  %i.kz = getelementptr i8, ptr %i.ky, i64 %i.kp  ; 3 uses
  br i1 %i.kr, label %.lr.ph.split.us301.epil.preheader, label %.lr.ph.split.us301

.lr.ph.split.us299.preheader:                     ; preds = %.lr.ph
  %i.la = getelementptr [2 x i8], ptr %i.ky, i64 %i.kp ; 3 uses
  br i1 %i.ks, label %.lr.ph.split.us299.epil.preheader, label %.lr.ph.split.us299

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.lb = getelementptr [4 x i8], ptr %i.ky, i64 %i.kp ; 3 uses
  br i1 %i.kt, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv328 = phi i64 [ %indvars.iv.next329.1, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 5 uses
  %niter446 = phi i64 [ %niter446.next.1, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ]
  %i.lc = xor i64 %indvars.iv328, -1
  %i.ld = getelementptr [4 x i8], ptr %i.lb, i64 %i.lc ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !44
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv328 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !44
  store i32 %i.lg, ptr %i.ld, align 4, !tbaa !44
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !44
  %i.lh = xor i64 %indvars.iv328, -2
  %i.li = getelementptr [4 x i8], ptr %i.lb, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !44
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv328
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !44
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !44
  store i32 %i.lj, ptr %i.ll, align 4, !tbaa !44
  %indvars.iv.next329.1 = add nuw nsw i64 %indvars.iv328, 2 ; 2 uses
  %niter446.next.1 = add i64 %niter446, 2         ; 2 uses
  %niter446.ncmp.1 = icmp eq i64 %niter446.next.1, %unroll_iter445
  br i1 %niter446.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !72

.lr.ph.split.us297:                               ; preds = %.lr.ph, %.lr.ph.split.us297
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %.lr.ph.split.us297 ], [ 0, %.lr.ph ] ; 3 uses
  %i.ln = mul nuw nsw i64 %indvars.iv323, 3
  %i.lo = sub nsw i64 %i.kp, %indvars.iv323
  %i.lp = mul nsw i64 %i.lo, 3
  %i.lq = getelementptr i8, ptr %i.ky, i64 %i.lp  ; 3 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 -3     ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !36
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ln ; 4 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !36
  store i8 %i.lu, ptr %i.lr, align 1, !tbaa !36
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !36
  %i.lv = getelementptr i8, ptr %i.lq, i64 -2     ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !36
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !36
  store i8 %i.ly, ptr %i.lv, align 1, !tbaa !36
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !36
  %i.lz = getelementptr i8, ptr %i.lq, i64 -1     ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !36
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 2 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !36
  store i8 %i.mc, ptr %i.lz, align 1, !tbaa !36
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !36
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge, label %.lr.ph.split.us297, !llvm.loop !72

.lr.ph.split.us299:                               ; preds = %.lr.ph.split.us299.preheader, %.lr.ph.split.us299
  %indvars.iv318 = phi i64 [ %indvars.iv.next319.1, %.lr.ph.split.us299 ], [ 0, %.lr.ph.split.us299.preheader ] ; 5 uses
  %niter441 = phi i64 [ %niter441.next.1, %.lr.ph.split.us299 ], [ 0, %.lr.ph.split.us299.preheader ]
  %i.md = xor i64 %indvars.iv318, -1
  %i.me = getelementptr [2 x i8], ptr %i.la, i64 %i.md ; 2 uses
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !73
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %indvars.iv318 ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !73
  store i16 %i.mh, ptr %i.me, align 2, !tbaa !73
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !73
  %i.mi = xor i64 %indvars.iv318, -2
  %i.mj = getelementptr [2 x i8], ptr %i.la, i64 %i.mi ; 2 uses
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !73
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %indvars.iv318
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2 ; 2 uses
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !73
  store i16 %i.mn, ptr %i.mj, align 2, !tbaa !73
  store i16 %i.mk, ptr %i.mm, align 2, !tbaa !73
  %indvars.iv.next319.1 = add nuw nsw i64 %indvars.iv318, 2 ; 2 uses
  %niter441.next.1 = add i64 %niter441, 2         ; 2 uses
  %niter441.ncmp.1 = icmp eq i64 %niter441.next.1, %unroll_iter440
  br i1 %niter441.ncmp.1, label %._crit_edge.loopexit420.unr-lcssa, label %.lr.ph.split.us299, !llvm.loop !72

.lr.ph.split.us301:                               ; preds = %.lr.ph.split.us301.preheader, %.lr.ph.split.us301
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.us301 ], [ 0, %.lr.ph.split.us301.preheader ] ; 5 uses
  %niter436 = phi i64 [ %niter436.next.1, %.lr.ph.split.us301 ], [ 0, %.lr.ph.split.us301.preheader ]
  %i.mo = xor i64 %indvars.iv, -1
  %i.mp = getelementptr i8, ptr %i.kz, i64 %i.mo  ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !36
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !36
  store i8 %i.ms, ptr %i.mp, align 1, !tbaa !36
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !36
  %i.mt = xor i64 %indvars.iv, -2
  %i.mu = getelementptr i8, ptr %i.kz, i64 %i.mt  ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !36
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !36
  store i8 %i.my, ptr %i.mu, align 1, !tbaa !36
  store i8 %i.mv, ptr %i.mx, align 1, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %._crit_edge.loopexit421.unr-lcssa, label %.lr.ph.split.us301, !llvm.loop !72

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  br i1 %lcmp.mod443.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv328.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next329.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod444)
  %i.mz = xor i64 %indvars.iv328.epil.init, -1
  %i.na = getelementptr [4 x i8], ptr %i.lb, i64 %i.mz ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !44
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv328.epil.init ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !44
  store i32 %i.nd, ptr %i.na, align 4, !tbaa !44
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !44
  br label %._crit_edge

._crit_edge.loopexit420.unr-lcssa:                ; preds = %.lr.ph.split.us299
  br i1 %lcmp.mod438.not, label %._crit_edge, label %.lr.ph.split.us299.epil.preheader

.lr.ph.split.us299.epil.preheader:                ; preds = %._crit_edge.loopexit420.unr-lcssa, %.lr.ph.split.us299.preheader
  %indvars.iv318.epil.init = phi i64 [ 0, %.lr.ph.split.us299.preheader ], [ %indvars.iv.next319.1, %._crit_edge.loopexit420.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod439)
  %i.ne = xor i64 %indvars.iv318.epil.init, -1
  %i.nf = getelementptr [2 x i8], ptr %i.la, i64 %i.ne ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !73
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %indvars.iv318.epil.init ; 2 uses
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !73
  store i16 %i.ni, ptr %i.nf, align 2, !tbaa !73
  store i16 %i.ng, ptr %i.nh, align 2, !tbaa !73
  br label %._crit_edge

._crit_edge.loopexit421.unr-lcssa:                ; preds = %.lr.ph.split.us301
  br i1 %lcmp.mod433.not, label %._crit_edge, label %.lr.ph.split.us301.epil.preheader

.lr.ph.split.us301.epil.preheader:                ; preds = %._crit_edge.loopexit421.unr-lcssa, %.lr.ph.split.us301.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us301.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit421.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.nj = xor i64 %indvars.iv.epil.init, -1
  %i.nk = getelementptr i8, ptr %i.kz, i64 %i.nj  ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !36
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.epil.init ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !36
  store i8 %i.nn, ptr %i.nk, align 1, !tbaa !36
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.us301.epil.preheader, %._crit_edge.loopexit421.unr-lcssa, %.lr.ph.split.us299.epil.preheader, %._crit_edge.loopexit420.unr-lcssa, %.lr.ph.split.us297, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %i.no = add nuw nsw i32 %.0219303, 1            ; 2 uses
  %exitcond333.not = icmp eq i32 %i.no, %.0.i265
  br i1 %exitcond333.not, label %.loopexit, label %.lr.ph, !llvm.loop !75

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph304, %advance_line.exit.thread
  store i32 1, ptr %2, align 4, !tbaa !44
  %i.np = load i32, ptr %i.e, align 8, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %.thread279, %.thread, %bb.ah, %bb.ae, %bb.y, %bb.al, %.loopexit, %bb.ad, %bb.aa, %bb.x, %bb.v, %bb.q
  %.6 = phi i32 [ -1094995529, %bb.q ], [ -1094995529, %bb.v ], [ -1094995529, %bb.x ], [ -1094995529, %bb.ad ], [ %i.cu, %bb.aa ], [ %i.cq, %bb.y ], [ %i.np, %.loopexit ], [ %i.jd, %bb.al ], [ -1094995529, %.thread279 ], [ %i.dj, %bb.ae ], [ -1094995529, %.thread ], [ -1094995529, %bb.ah ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @targa_decode_rle(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef range(i32 0, 65536) %3, i32 noundef range(i32 0, 65536) %4, i32 noundef %5, i32 noundef range(i32 0, 256) %6, i32 noundef range(i32 1, 5) %7) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 8 uses
  %i.a = add nuw nsw i32 %6, 1
  %i.b = lshr i32 %i.a, 3                         ; 2 uses
  %.not116 = icmp eq ptr %2, null
  br i1 %.not116, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = zext nneg i32 %i.b to i64                ; 11 uses
  %i.e = add nsw i32 %7, -1                       ; 2 uses
  %i.f = mul nsw i32 %7, %5
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %advance_line.exit.thread
  %.064120 = phi ptr [ %2, %.lr.ph ], [ %.6, %advance_line.exit.thread ] ; 2 uses
  %.065119 = phi ptr [ %2, %.lr.ph ], [ %.570, %advance_line.exit.thread ] ; 2 uses
  %.075118 = phi i32 [ 0, %.lr.ph ], [ %.580, %advance_line.exit.thread ] ; 2 uses
  %.094117 = phi i32 [ 0, %.lr.ph ], [ %.599, %advance_line.exit.thread ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.i = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %._crit_edge.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 5 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !35
  %i.p = load i8, ptr %i.i, align 1, !tbaa !36    ; 2 uses
  %i.q = and i8 %i.p, 127
  %narrow = add nuw i8 %i.q, 1
  %i.r = zext i8 %narrow to i32                   ; 2 uses
  %.not87 = icmp sgt i8 %i.p, -1
  br i1 %.not87, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.c, %advance_line.exit
  %i.s = phi ptr [ %i.ae, %advance_line.exit ], [ %i.o, %bb.c ] ; 2 uses
  %.195 = phi i32 [ %.296, %advance_line.exit ], [ %.094117, %bb.c ] ; 2 uses
  %.176 = phi i32 [ %.277, %advance_line.exit ], [ %.075118, %bb.c ] ; 2 uses
  %.172 = phi i32 [ %i.af, %advance_line.exit ], [ %i.r, %bb.c ] ; 2 uses
  %.166 = phi ptr [ %.267, %advance_line.exit ], [ %.065119, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %.2, %advance_line.exit ], [ %.064120, %bb.c ] ; 2 uses
  %i.t = sub nsw i32 %3, %.176
  %i.u = tail call i32 @llvm.smin.i32(i32 %.172, i32 %i.t) ; 3 uses
  %i.v = mul nsw i32 %i.u, %i.b                   ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = zext i32 %i.v to i64
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.aa)
  %i.ac = and i64 %i.ab, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1, ptr align 1 %i.s, i64 %i.ac, i1 false)
end_hunk_1
