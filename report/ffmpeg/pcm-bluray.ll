Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pcm-bluray?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.AVChannelLayout = type { i32, i32, %union.anon.2, ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"pcm_bluray\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"PCM signed 16|20|24-bit big-endian for Blu-ray media\00", align 1
@ff_pcm_bluray_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 65560, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @pcm_bluray_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"PCM packet too small\0A\00", align 1
@pcm_bluray_parse_header.bits_per_samples = internal unnamed_addr constant [4 x i8] c"\00\10\14\18", align 1
@pcm_bluray_parse_header.channel_layouts = internal unnamed_addr constant [16 x %struct.AVChannelLayout] [%struct.AVChannelLayout zeroinitializer, %struct.AVChannelLayout { i32 1, i32 1, %union.anon.2 { i64 4 }, ptr null }, %struct.AVChannelLayout zeroinitializer, %struct.AVChannelLayout { i32 1, i32 2, %union.anon.2 { i64 3 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 3, %union.anon.2 { i64 7 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 3, %union.anon.2 { i64 259 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 4, %union.anon.2 { i64 263 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 4, %union.anon.2 { i64 1539 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 5, %union.anon.2 { i64 1543 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 6, %union.anon.2 { i64 1551 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 7, %union.anon.2 { i64 1591 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 8, %union.anon.2 { i64 1599 }, ptr null }, %struct.AVChannelLayout zeroinitializer, %struct.AVChannelLayout zeroinitializer, %struct.AVChannelLayout zeroinitializer, %struct.AVChannelLayout zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"unsupported sample depth (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"reserved sample rate (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"reserved channel configuration (%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @pcm_bluray_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = icmp slt i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #4
  br label %pcm_bluray_parse_header.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !36
  %i.i = lshr i8 %i.h, 4                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36
  %i.l = lshr i8 %i.k, 6                          ; 3 uses
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @pcm_bluray_parse_header.bits_per_samples, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !50
  switch i8 %i.l, label %bb.d [
    i8 1, label %bb.e
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.p) #4
  br label %pcm_bluray_parse_header.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.c
  %.not.i = icmp eq i8 %i.l, 1                    ; 2 uses
  %i.r = select i1 %.not.i, i32 1, i32 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 7 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !51
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.p, ptr %i.t, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = load i8, ptr %i.g, align 1, !tbaa !36
  %i.v = and i8 %i.u, 15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  switch i8 %i.v, label %bb.j [
    i8 1, label %bb.k
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  store i32 0, ptr %i.w, align 8, !tbaa !53
  %i.x = load i8, ptr %i.g, align 1, !tbaa !36
  %i.y = and i8 %i.x, 15
  %i.z = zext nneg i8 %i.y to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.z) #4
  br label %pcm_bluray_parse_header.exit.thread

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sink.i = phi i32 [ 192000, %bb.i ], [ 96000, %bb.h ], [ 48000, %bb.g ]
  store i32 %.sink.i, ptr %i.w, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.aa) #4
  %i.ab = zext nneg i8 %i.i to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr @pcm_bluray_parse_header.channel_layouts, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !57 ; 2 uses
  %.not33.i = icmp eq i32 %i.ae, 0
  br i1 %.not33.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = zext nneg i8 %i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.af) #4
  br label %pcm_bluray_parse_header.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.ae, 1
  %i.ah = and i32 %i.ag, -2                       ; 3 uses
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !53
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !50
  %i.al = mul nsw i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.am, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 19 uses
  %i.ap = add nsw i32 %i.e, -4                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.s, align 4, !tbaa !51
  %i.at = icmp eq i32 %i.as, 1
  %i.au = select i1 %i.at, i32 16, i32 24
  %i.av = mul nsw i32 %i.au, %i.ah
  %i.aw = ashr exact i32 %i.av, 3
  %i.ax = sdiv i32 %i.ap, %i.aw                   ; 11 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !63
  %i.az = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %pcm_bluray_parse_header.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %1, align 8, !tbaa !64    ; 16 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %.not122 = icmp eq i32 %i.ax, 0
  br i1 %.not122, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  switch i64 %i.be, label %.loopexit [
    i64 3, label %bb.p
    i64 263, label %bb.p
    i64 1539, label %bb.p
    i64 4, label %bb.q
    i64 7, label %bb.q
    i64 259, label %bb.q
    i64 1543, label %bb.q
    i64 1551, label %bb.r
    i64 1591, label %bb.s
    i64 1599, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.bf = mul i32 %i.ax, %i.ah                    ; 6 uses
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !51
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %iter.check334, label %.preheader197

iter.check334:                                    ; preds = %bb.p
  %i.bi = add i32 %i.bf, -2                       ; 3 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 2                ; 5 uses
  %min.iters.check318 = icmp eq i32 %i.bi, 0
  br i1 %min.iters.check318, label %.preheader.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %iter.check334
  %i.bl = sub i64 %i.bc, %i.c
  %i.bm = add i64 %i.bl, -5
  %diff.check320 = icmp ult i64 %i.bm, 31
  br i1 %diff.check320, label %.preheader.preheader, label %vector.main.loop.iter.check321

vector.main.loop.iter.check321:                   ; preds = %vector.memcheck319
  %min.iters.check322 = icmp ult i32 %i.bi, 14
  br i1 %min.iters.check322, label %vec.epilog.ph338, label %vector.ph323

vector.ph323:                                     ; preds = %vector.main.loop.iter.check321
  %i.bn = and i64 %i.bk, 12
  %n.vec324 = and i64 %i.bk, 8589934576           ; 5 uses
  %i.bo = shl nuw nsw i64 %n.vec324, 1            ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ao, i64 %i.bo  ; 2 uses
  %i.bq = trunc i64 %n.vec324 to i32
  %i.br = sub i32 %i.bf, %i.bq
  %i.bs = getelementptr i8, ptr %i.bb, i64 %i.bo
  br label %vector.body325

vector.body325:                                   ; preds = %vector.ph323, %vector.body325
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %i.bt = shl i64 %index326, 1                    ; 2 uses
  %next.gep327 = getelementptr i8, ptr %i.ao, i64 %i.bt ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep327, i64 16
  %wide.load329 = load <8 x i16>, ptr %next.gep327, align 1, !tbaa !36
  %wide.load330 = load <8 x i16>, ptr %i.bu, align 1, !tbaa !36
  %i.bv = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load329)
  %i.bw = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load330)
  %i.bx = getelementptr i8, ptr %next.gep328, i64 16
  store <8 x i16> %i.bv, ptr %next.gep328, align 2, !tbaa !66
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !66
  %index.next331 = add nuw i64 %index326, 16      ; 2 uses
  %i.by = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.by, label %middle.block332, label %vector.body325, !llvm.loop !9

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.bk, %n.vec324
  br i1 %cmp.n333, label %.loopexit, label %vec.epilog.iter.check335

vec.epilog.iter.check335:                         ; preds = %middle.block332
  %min.epilog.iters.check337.not.not = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check337.not.not, label %.preheader.preheader, label %vec.epilog.ph338, !prof !70

vec.epilog.ph338:                                 ; preds = %vector.main.loop.iter.check321, %vec.epilog.iter.check335
  %vec.epilog.resume.val339 = phi i64 [ %n.vec324, %vec.epilog.iter.check335 ], [ 0, %vector.main.loop.iter.check321 ]
  %n.vec340 = and i64 %i.bk, 8589934588           ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec340, 1            ; 2 uses
  %i.ca = getelementptr i8, ptr %i.ao, i64 %i.bz  ; 2 uses
  %i.cb = trunc i64 %n.vec340 to i32
  %i.cc = sub i32 %i.bf, %i.cb
  %i.cd = getelementptr i8, ptr %i.bb, i64 %i.bz
  br label %vec.epilog.vector.body341

vec.epilog.vector.body341:                        ; preds = %vec.epilog.vector.body341, %vec.epilog.ph338
  %index342 = phi i64 [ %vec.epilog.resume.val339, %vec.epilog.ph338 ], [ %index.next346, %vec.epilog.vector.body341 ] ; 2 uses
  %i.ce = shl i64 %index342, 1                    ; 2 uses
  %next.gep343 = getelementptr i8, ptr %i.ao, i64 %i.ce
  %next.gep344 = getelementptr i8, ptr %i.bb, i64 %i.ce
  %wide.load345 = load <4 x i16>, ptr %next.gep343, align 1, !tbaa !36
  %4 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load345)
  store <4 x i16> %4, ptr %next.gep344, align 2, !tbaa !66
  %index.next346 = add nuw i64 %index342, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next346, %n.vec340
  br i1 %i.cf, label %vec.epilog.middle.block347, label %vec.epilog.vector.body341, !llvm.loop !10

vec.epilog.middle.block347:                       ; preds = %vec.epilog.vector.body341
  %cmp.n348 = icmp eq i64 %i.bk, %n.vec340
  br i1 %cmp.n348, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check334, %vector.memcheck319, %vec.epilog.iter.check335, %vec.epilog.middle.block347
  %.sroa.0.0.ph = phi ptr [ %i.ao, %iter.check334 ], [ %i.ao, %vector.memcheck319 ], [ %i.bp, %vec.epilog.iter.check335 ], [ %i.ca, %vec.epilog.middle.block347 ] ; 2 uses
  %.0107.ph = phi i32 [ %i.bf, %iter.check334 ], [ %i.bf, %vector.memcheck319 ], [ %i.br, %vec.epilog.iter.check335 ], [ %i.cc, %vec.epilog.middle.block347 ] ; 4 uses
  %.0101.ph = phi ptr [ %i.bb, %iter.check334 ], [ %i.bb, %vector.memcheck319 ], [ %i.bs, %vec.epilog.iter.check335 ], [ %i.cd, %vec.epilog.middle.block347 ] ; 2 uses
  %i.cg = add nsw i32 %.0107.ph, -1
  %xtraiter377 = and i32 %.0107.ph, 3             ; 2 uses
  %lcmp.mod378.not = icmp eq i32 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.sroa.0.0.prol = phi ptr [ %i.ch, %.preheader.prol ], [ %.sroa.0.0.ph, %.preheader.preheader ] ; 2 uses
  %.0107.prol = phi i32 [ %i.cl, %.preheader.prol ], [ %.0107.ph, %.preheader.preheader ]
  %.0101.prol = phi ptr [ %i.ck, %.preheader.prol ], [ %.0101.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter379 = phi i32 [ %prol.iter379.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.prol, i64 2 ; 3 uses
  %i.ci = load i16, ptr %.sroa.0.0.prol, align 1, !tbaa !36
  %i.cj = tail call i16 @llvm.bswap.i16(i16 %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0101.prol, i64 2 ; 2 uses
  store i16 %i.cj, ptr %.0101.prol, align 2, !tbaa !66
  %i.cl = add nsw i32 %.0107.prol, -1             ; 2 uses
  %prol.iter379.next = add i32 %prol.iter379, 1   ; 2 uses
  %prol.iter379.cmp.not = icmp eq i32 %prol.iter379.next, %xtraiter377
  br i1 %prol.iter379.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !11

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.ch, %.preheader.prol ]
  %.sroa.0.0.unr = phi ptr [ %.sroa.0.0.ph, %.preheader.preheader ], [ %i.ch, %.preheader.prol ]
  %.0107.unr = phi i32 [ %.0107.ph, %.preheader.preheader ], [ %i.cl, %.preheader.prol ]
  %.0101.unr = phi ptr [ %.0101.ph, %.preheader.preheader ], [ %i.ck, %.preheader.prol ]
  %i.cm = icmp ult i32 %i.cg, 3
  br i1 %i.cm, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.sroa.0.0 = phi ptr [ %i.cz, %.preheader ], [ %.sroa.0.0.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.0107 = phi i32 [ %i.dd, %.preheader ], [ %.0107.unr, %.preheader.prol.loopexit ]
  %.0101 = phi ptr [ %i.dc, %.preheader ], [ %.0101.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2
  %i.co = load i16, ptr %.sroa.0.0, align 1, !tbaa !36
  %i.cp = tail call i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0101, i64 2
  store i16 %i.cp, ptr %.0101, align 2, !tbaa !66
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.cs = load i16, ptr %i.cn, align 1, !tbaa !36
  %i.ct = tail call i16 @llvm.bswap.i16(i16 %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %.0101, i64 4
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 6
  %i.cw = load i16, ptr %i.cr, align 1, !tbaa !36
  %i.cx = tail call i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0101, i64 6
  store i16 %i.cx, ptr %i.cu, align 2, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.da = load i16, ptr %i.cv, align 1, !tbaa !36
  %i.db = tail call i16 @llvm.bswap.i16(i16 %i.da)
  %i.dc = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  store i16 %i.db, ptr %i.cy, align 2, !tbaa !66
  %i.dd = add nsw i32 %.0107, -4                  ; 2 uses
  %.not134.3 = icmp eq i32 %i.dd, 0
  br i1 %.not134.3, label %.loopexit, label %.preheader, !llvm.loop !12

.preheader197:                                    ; preds = %bb.p, %.preheader197
  %.sroa.0.1 = phi ptr [ %i.dt, %.preheader197 ], [ %i.ao, %bb.p ] ; 7 uses
  %.1108 = phi i32 [ %i.ei, %.preheader197 ], [ %i.bf, %bb.p ]
  %.0 = phi ptr [ %i.eh, %.preheader197 ], [ %i.bb, %bb.p ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  %i.df = load i8, ptr %.sroa.0.1, align 1, !tbaa !36
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !36
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = or disjoint i32 %i.dl, %i.dh
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !36
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp
  %i.dr = shl nuw i32 %i.dq, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.dr, ptr %.0, align 4, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 6 ; 2 uses
  %i.du = load i8, ptr %i.de, align 1, !tbaa !36
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !36
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !36
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.eb, %i.ee
  %i.eg = shl nuw i32 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.eg, ptr %i.ds, align 4, !tbaa !54
  %i.ei = add nsw i32 %.1108, -2                  ; 2 uses
  %.not133.1 = icmp eq i32 %i.ei, 0
  br i1 %.not133.1, label %.loopexit, label %.preheader197, !llvm.loop !13

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.ej = load i32, ptr %i.s, align 4, !tbaa !51
  %i.ek = icmp eq i32 %i.ej, 1
  %i.el = ptrtoint ptr %i.ar to i64               ; 2 uses
  br i1 %i.ek, label %.preheader199, label %.preheader201

.preheader199:                                    ; preds = %bb.q
  %i.em = load i32, ptr %i.ad, align 4, !tbaa !57 ; 4 uses
  %i.en = add i32 %i.em, -1                       ; 3 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.en, 3
  %min.iters.check304 = icmp ult i32 %i.en, 15
  %i.eq = and i64 %i.ep, 12
  %n.vec = and i64 %i.ep, 8589934576              ; 5 uses
  %i.er = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.es = trunc i64 %n.vec to i32
  %i.et = sub i32 %i.em, %i.es
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %i.eq, 0
  %n.vec307 = and i64 %i.ep, 8589934588           ; 4 uses
  %i.eu = shl nuw nsw i64 %n.vec307, 1            ; 2 uses
  %i.ev = trunc i64 %n.vec307 to i32
  %i.ew = sub i32 %i.em, %i.ev
  %cmp.n313 = icmp eq i64 %i.ep, %n.vec307
  br label %iter.check

iter.check:                                       ; preds = %.preheader199, %.loopexit352
  %.sroa.0.2 = phi ptr [ %i.gk, %.loopexit352 ], [ %i.ao, %.preheader199 ] ; 6 uses
  %.2109 = phi i32 [ %i.gl, %.loopexit352 ], [ %i.ax, %.preheader199 ]
  %.1102 = phi ptr [ %.lcssa288, %.loopexit352 ], [ %i.bb, %.preheader199 ] ; 6 uses
  %.1102303 = ptrtoaddr ptr %.1102 to i64
  %.sroa.0.2302 = ptrtoaddr ptr %.sroa.0.2 to i64
  %i.ex = sub i64 %.sroa.0.2302, %.1102303
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check304, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ey = getelementptr i8, ptr %.sroa.0.2, i64 %i.er ; 2 uses
  %i.ez = getelementptr i8, ptr %.1102, i64 %i.er ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.0.2, i64 %i.fa ; 2 uses
  %next.gep305 = getelementptr i8, ptr %.1102, i64 %i.fa ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1, !tbaa !36
  %wide.load306 = load <8 x i16>, ptr %i.fb, align 1, !tbaa !36
  %i.fc = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.fd = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load306)
  %i.fe = getelementptr i8, ptr %next.gep305, i64 16
  store <8 x i16> %i.fc, ptr %next.gep305, align 2, !tbaa !66
  store <8 x i16> %i.fd, ptr %i.fe, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit352, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fg = getelementptr i8, ptr %.sroa.0.2, i64 %i.eu ; 2 uses
  %i.fh = getelementptr i8, ptr %.1102, i64 %i.eu ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index308 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next312, %vec.epilog.vector.body ] ; 2 uses
  %i.fi = shl i64 %index308, 1                    ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.sroa.0.2, i64 %i.fi
  %next.gep310 = getelementptr i8, ptr %.1102, i64 %i.fi
  %wide.load311 = load <4 x i16>, ptr %next.gep309, align 1, !tbaa !36
  %5 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load311)
  store <4 x i16> %5, ptr %next.gep310, align 2, !tbaa !66
  %index.next312 = add nuw i64 %index308, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n313, label %.loopexit352, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.2, %iter.check ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fg, %vec.epilog.middle.block ] ; 2 uses
  %.0113.ph = phi i32 [ %i.em, %iter.check ], [ %i.et, %vec.epilog.iter.check ], [ %i.ew, %vec.epilog.middle.block ] ; 4 uses
  %.2103.ph = phi ptr [ %.1102, %iter.check ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ] ; 2 uses
  %i.fk = add nsw i32 %.0113.ph, -1
  %xtraiter375 = and i32 %.0113.ph, 3             ; 2 uses
  %lcmp.mod376.not = icmp eq i32 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.0.3.prol = phi ptr [ %i.fl, %vec.epilog.scalar.ph.prol ], [ %.sroa.0.3.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0113.prol = phi i32 [ %i.fp, %vec.epilog.scalar.ph.prol ], [ %.0113.ph, %vec.epilog.scalar.ph.preheader ]
  %.2103.prol = phi ptr [ %i.fo, %vec.epilog.scalar.ph.prol ], [ %.2103.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.3.prol, i64 2 ; 3 uses
  %i.fm = load i16, ptr %.sroa.0.3.prol, align 1, !tbaa !36
  %i.fn = tail call i16 @llvm.bswap.i16(i16 %i.fm)
  %i.fo = getelementptr inbounds nuw i8, ptr %.2103.prol, i64 2 ; 3 uses
  store i16 %i.fn, ptr %.2103.prol, align 2, !tbaa !66
  %i.fp = add nsw i32 %.0113.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter375
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !16

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa357.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fl, %vec.epilog.scalar.ph.prol ]
  %.lcssa356.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fo, %vec.epilog.scalar.ph.prol ]
  %.sroa.0.3.unr = phi ptr [ %.sroa.0.3.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fl, %vec.epilog.scalar.ph.prol ]
  %.0113.unr = phi i32 [ %.0113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fp, %vec.epilog.scalar.ph.prol ]
  %.2103.unr = phi ptr [ %.2103.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fo, %vec.epilog.scalar.ph.prol ]
  %i.fq = icmp ult i32 %i.fk, 3
  br i1 %i.fq, label %.loopexit352, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.0.3 = phi ptr [ %i.gd, %vec.epilog.scalar.ph ], [ %.sroa.0.3.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0113 = phi i32 [ %i.gh, %vec.epilog.scalar.ph ], [ %.0113.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2103 = phi ptr [ %i.gg, %vec.epilog.scalar.ph ], [ %.2103.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 2
  %i.fs = load i16, ptr %.sroa.0.3, align 1, !tbaa !36
  %i.ft = tail call i16 @llvm.bswap.i16(i16 %i.fs)
  %i.fu = getelementptr inbounds nuw i8, ptr %.2103, i64 2
  store i16 %i.ft, ptr %.2103, align 2, !tbaa !66
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 4
  %i.fw = load i16, ptr %i.fr, align 1, !tbaa !36
  %i.fx = tail call i16 @llvm.bswap.i16(i16 %i.fw)
  %i.fy = getelementptr inbounds nuw i8, ptr %.2103, i64 4
  store i16 %i.fx, ptr %i.fu, align 2, !tbaa !66
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 6
  %i.ga = load i16, ptr %i.fv, align 1, !tbaa !36
  %i.gb = tail call i16 @llvm.bswap.i16(i16 %i.ga)
  %i.gc = getelementptr inbounds nuw i8, ptr %.2103, i64 6
  store i16 %i.gb, ptr %i.fy, align 2, !tbaa !66
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 8 ; 2 uses
  %i.ge = load i16, ptr %i.fz, align 1, !tbaa !36
  %i.gf = tail call i16 @llvm.bswap.i16(i16 %i.ge)
  %i.gg = getelementptr inbounds nuw i8, ptr %.2103, i64 8 ; 2 uses
  store i16 %i.gf, ptr %i.gc, align 2, !tbaa !66
  %i.gh = add nsw i32 %.0113, -4                  ; 2 uses
  %.not131.3 = icmp eq i32 %i.gh, 0
  br i1 %.not131.3, label %.loopexit352, label %vec.epilog.scalar.ph, !llvm.loop !17

.loopexit352:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa289 = phi ptr [ %i.fg, %vec.epilog.middle.block ], [ %i.ey, %middle.block ], [ %.lcssa357.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gd, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa288 = phi ptr [ %i.fh, %vec.epilog.middle.block ], [ %i.ez, %middle.block ], [ %.lcssa356.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gg, %vec.epilog.scalar.ph ]
  %i.gi = ptrtoint ptr %.lcssa289 to i64
  %i.gj = sub i64 %i.el, %i.gi
  %..i137 = tail call i64 @llvm.smin.i64(i64 %i.gj, i64 2)
  %i.gk = getelementptr inbounds i8, ptr %.lcssa289, i64 %..i137 ; 2 uses
  %i.gl = add nsw i32 %.2109, -1                  ; 2 uses
  %.not132 = icmp eq i32 %i.gl, 0
  br i1 %.not132, label %.loopexit, label %iter.check, !llvm.loop !18

.preheader201:                                    ; preds = %bb.q, %.unr-lcssa
  %.sroa.0.4 = phi ptr [ %i.il, %.unr-lcssa ], [ %i.ao, %bb.q ] ; 5 uses
  %.3110 = phi i32 [ %i.im, %.unr-lcssa ], [ %i.ax, %bb.q ]
  %.1 = phi ptr [ %.lcssa360, %.unr-lcssa ], [ %i.bb, %bb.q ] ; 3 uses
  %i.gm = load i32, ptr %i.ad, align 4, !tbaa !57 ; 4 uses
  %xtraiter = and i32 %i.gm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader201
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 3 ; 2 uses
  %i.go = load i8, ptr %.sroa.0.4, align 1, !tbaa !36
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl nuw nsw i32 %i.gp, 16
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !36
  %i.gt = zext i8 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 8
  %i.gv = or disjoint i32 %i.gu, %i.gq
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !36
  %i.gy = zext i8 %i.gx to i32
  %i.gz = or disjoint i32 %i.gv, %i.gy
  %i.ha = shl nuw i32 %i.gz, 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.ha, ptr %.1, align 4, !tbaa !54
  %i.hc = add nsw i32 %i.gm, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader201
  %.lcssa361.unr = phi ptr [ poison, %.preheader201 ], [ %i.gn, %.prol.loopexit.unr-lcssa ]
  %.lcssa360.unr = phi ptr [ poison, %.preheader201 ], [ %i.hb, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.5.unr = phi ptr [ %.sroa.0.4, %.preheader201 ], [ %i.gn, %.prol.loopexit.unr-lcssa ]
  %.1114.unr = phi i32 [ %i.gm, %.preheader201 ], [ %i.hc, %.prol.loopexit.unr-lcssa ]
  %.2.unr = phi ptr [ %.1, %.preheader201 ], [ %i.hb, %.prol.loopexit.unr-lcssa ]
  %i.hd = icmp eq i32 %i.gm, 1
  br i1 %i.hd, label %.unr-lcssa, label %.preheader201.new

.preheader201.new:                                ; preds = %.prol.loopexit, %.preheader201.new
  %.sroa.0.5 = phi ptr [ %i.ht, %.preheader201.new ], [ %.sroa.0.5.unr, %.prol.loopexit ] ; 7 uses
  %.1114 = phi i32 [ %i.ii, %.preheader201.new ], [ %.1114.unr, %.prol.loopexit ]
  %.2 = phi ptr [ %i.ih, %.preheader201.new ], [ %.2.unr, %.prol.loopexit ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 3
  %i.hf = load i8, ptr %.sroa.0.5, align 1, !tbaa !36
  %i.hg = zext i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 16
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !36
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 8
  %i.hm = or disjoint i32 %i.hl, %i.hh
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !36
  %i.hp = zext i8 %i.ho to i32
  %i.hq = or disjoint i32 %i.hm, %i.hp
  %i.hr = shl nuw i32 %i.hq, 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.hr, ptr %.2, align 4, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 6 ; 2 uses
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !36
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 16
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 4
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !36
  %i.hz = zext i8 %i.hy to i32
  %i.ia = shl nuw nsw i32 %i.hz, 8
  %i.ib = or disjoint i32 %i.ia, %i.hw
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 5
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !36
  %i.ie = zext i8 %i.id to i32
  %i.if = or disjoint i32 %i.ib, %i.ie
  %i.ig = shl nuw i32 %i.if, 8
  %i.ih = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  store i32 %i.ig, ptr %i.hs, align 4, !tbaa !54
  %i.ii = add nsw i32 %.1114, -2                  ; 2 uses
  %.not129.1 = icmp eq i32 %i.ii, 0
  br i1 %.not129.1, label %.unr-lcssa, label %.preheader201.new, !llvm.loop !19

.unr-lcssa:                                       ; preds = %.preheader201.new, %.prol.loopexit
  %.lcssa361 = phi ptr [ %.lcssa361.unr, %.prol.loopexit ], [ %i.ht, %.preheader201.new ] ; 2 uses
  %.lcssa360 = phi ptr [ %.lcssa360.unr, %.prol.loopexit ], [ %i.ih, %.preheader201.new ]
  %i.ij = ptrtoint ptr %.lcssa361 to i64
  %i.ik = sub i64 %i.el, %i.ij
  %..i136 = tail call i64 @llvm.smin.i64(i64 %i.ik, i64 3)
  %i.il = getelementptr inbounds i8, ptr %.lcssa361, i64 %..i136 ; 2 uses
  %i.im = add nsw i32 %.3110, -1                  ; 2 uses
  %.not130 = icmp eq i32 %i.im, 0
  br i1 %.not130, label %.loopexit, label %.preheader201, !llvm.loop !20

bb.r:                                             ; preds = %bb.o
  %i.in = load i32, ptr %i.s, align 4, !tbaa !51
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %.preheader203, label %.preheader205

.preheader203:                                    ; preds = %bb.r, %.preheader203
  %.sroa.0.6 = phi ptr [ %i.ji, %.preheader203 ], [ %i.ao, %bb.r ] ; 7 uses
  %.4111 = phi i32 [ %i.jn, %.preheader203 ], [ %i.ax, %bb.r ]
  %.3104 = phi ptr [ %i.jm, %.preheader203 ], [ %i.bb, %bb.r ] ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 2
  %i.iq = load i16, ptr %.sroa.0.6, align 1, !tbaa !36
  %i.ir = tail call i16 @llvm.bswap.i16(i16 %i.iq)
  store i16 %i.ir, ptr %.3104, align 2, !tbaa !66
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 4
  %i.it = load i16, ptr %i.ip, align 1, !tbaa !36
  %i.iu = tail call i16 @llvm.bswap.i16(i16 %i.it)
  %i.iv = getelementptr inbounds nuw i8, ptr %.3104, i64 2
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !66
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 6
  %i.ix = load i16, ptr %i.is, align 1, !tbaa !36
  %i.iy = tail call i16 @llvm.bswap.i16(i16 %i.ix)
  %i.iz = getelementptr inbounds nuw i8, ptr %.3104, i64 4
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !66
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.jb = load i16, ptr %i.iw, align 1, !tbaa !36
  %i.jc = tail call i16 @llvm.bswap.i16(i16 %i.jb)
  %i.jd = getelementptr inbounds nuw i8, ptr %.3104, i64 8
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 10
  %i.jf = load i16, ptr %i.ja, align 1, !tbaa !36
  %i.jg = tail call i16 @llvm.bswap.i16(i16 %i.jf)
  %i.jh = getelementptr inbounds nuw i8, ptr %.3104, i64 10
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !66
end_hunk_0
begin_hunk_1_@pcm_bluray_decode_frame:bb.a
  store i16 %i.ta, ptr %i.tb, align 2, !tbaa !66
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 8
  %i.td = load i16, ptr %i.sy, align 1, !tbaa !36
  %i.te = tail call i16 @llvm.bswap.i16(i16 %i.td)
  %i.tf = getelementptr inbounds nuw i8, ptr %.5106, i64 12
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !66
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 10
  %i.th = load i16, ptr %i.tc, align 1, !tbaa !36
  %i.ti = tail call i16 @llvm.bswap.i16(i16 %i.th)
  %i.tj = getelementptr inbounds nuw i8, ptr %.5106, i64 8
  store i16 %i.ti, ptr %i.tj, align 2, !tbaa !66
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 12
  %i.tl = load i16, ptr %i.tg, align 1, !tbaa !36
  %i.tm = tail call i16 @llvm.bswap.i16(i16 %i.tl)
  %i.tn = getelementptr inbounds nuw i8, ptr %.5106, i64 10
  store i16 %i.tm, ptr %i.tn, align 2, !tbaa !66
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 14
  %i.tp = load i16, ptr %i.tk, align 1, !tbaa !36
  %i.tq = tail call i16 @llvm.bswap.i16(i16 %i.tp)
  %i.tr = getelementptr inbounds nuw i8, ptr %.5106, i64 14
  store i16 %i.tq, ptr %i.tr, align 2, !tbaa !66
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 16 ; 2 uses
  %i.tt = load i16, ptr %i.to, align 1, !tbaa !36
  %i.tu = tail call i16 @llvm.bswap.i16(i16 %i.tt)
  %i.tv = getelementptr inbounds nuw i8, ptr %.5106, i64 6
  store i16 %i.tu, ptr %i.tv, align 2, !tbaa !66
  %i.tw = getelementptr inbounds nuw i8, ptr %.5106, i64 16
  %i.tx = add nsw i32 %.8, -1                     ; 2 uses
  %.not124 = icmp eq i32 %i.tx, 0
  br i1 %.not124, label %.loopexit, label %.preheader211, !llvm.loop !25

.preheader213:                                    ; preds = %bb.t, %.preheader213
  %.sroa.0.11 = phi ptr [ %i.xy, %.preheader213 ], [ %i.ao, %bb.t ] ; 25 uses
  %.9 = phi i32 [ %i.yo, %.preheader213 ], [ %i.ax, %bb.t ]
  %.5 = phi ptr [ %i.yn, %.preheader213 ], [ %i.bb, %bb.t ] ; 9 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 3
  %i.tz = load i8, ptr %.sroa.0.11, align 1, !tbaa !36
  %i.ua = zext i8 %i.tz to i32
  %i.ub = shl nuw nsw i32 %i.ua, 16
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 1
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !36
  %i.ue = zext i8 %i.ud to i32
  %i.uf = shl nuw nsw i32 %i.ue, 8
  %i.ug = or disjoint i32 %i.uf, %i.ub
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 2
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !36
  %i.uj = zext i8 %i.ui to i32
  %i.uk = or disjoint i32 %i.ug, %i.uj
  %i.ul = shl nuw i32 %i.uk, 8
  store i32 %i.ul, ptr %.5, align 4, !tbaa !54
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 6
  %i.un = load i8, ptr %i.ty, align 1, !tbaa !36
  %i.uo = zext i8 %i.un to i32
  %i.up = shl nuw nsw i32 %i.uo, 16
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 4
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !36
  %i.us = zext i8 %i.ur to i32
  %i.ut = shl nuw nsw i32 %i.us, 8
  %i.uu = or disjoint i32 %i.ut, %i.up
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 5
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !36
  %i.ux = zext i8 %i.uw to i32
  %i.uy = or disjoint i32 %i.uu, %i.ux
  %i.uz = shl nuw i32 %i.uy, 8
  %i.va = getelementptr inbounds nuw i8, ptr %.5, i64 4
  store i32 %i.uz, ptr %i.va, align 4, !tbaa !54
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 9
  %i.vc = load i8, ptr %i.um, align 1, !tbaa !36
  %i.vd = zext i8 %i.vc to i32
  %i.ve = shl nuw nsw i32 %i.vd, 16
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 7
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !36
  %i.vh = zext i8 %i.vg to i32
  %i.vi = shl nuw nsw i32 %i.vh, 8
  %i.vj = or disjoint i32 %i.vi, %i.ve
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !36
  %i.vm = zext i8 %i.vl to i32
  %i.vn = or disjoint i32 %i.vj, %i.vm
  %i.vo = shl nuw i32 %i.vn, 8
  %i.vp = getelementptr inbounds nuw i8, ptr %.5, i64 8
  store i32 %i.vo, ptr %i.vp, align 4, !tbaa !54
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 12
  %i.vr = load i8, ptr %i.vb, align 1, !tbaa !36
  %i.vs = zext i8 %i.vr to i32
  %i.vt = shl nuw nsw i32 %i.vs, 16
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 10
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !36
  %i.vw = zext i8 %i.vv to i32
  %i.vx = shl nuw nsw i32 %i.vw, 8
  %i.vy = or disjoint i32 %i.vx, %i.vt
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 11
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !36
  %i.wb = zext i8 %i.wa to i32
  %i.wc = or disjoint i32 %i.vy, %i.wb
  %i.wd = shl nuw i32 %i.wc, 8
  %i.we = getelementptr inbounds nuw i8, ptr %.5, i64 24
  store i32 %i.wd, ptr %i.we, align 4, !tbaa !54
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 15
  %i.wg = load i8, ptr %i.vq, align 1, !tbaa !36
  %i.wh = zext i8 %i.wg to i32
  %i.wi = shl nuw nsw i32 %i.wh, 16
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 13
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !36
  %i.wl = zext i8 %i.wk to i32
  %i.wm = shl nuw nsw i32 %i.wl, 8
  %i.wn = or disjoint i32 %i.wm, %i.wi
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 14
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !36
  %i.wq = zext i8 %i.wp to i32
  %i.wr = or disjoint i32 %i.wn, %i.wq
  %i.ws = shl nuw i32 %i.wr, 8
  %i.wt = getelementptr inbounds nuw i8, ptr %.5, i64 16
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !54
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 18
  %i.wv = load i8, ptr %i.wf, align 1, !tbaa !36
  %i.ww = zext i8 %i.wv to i32
  %i.wx = shl nuw nsw i32 %i.ww, 16
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 16
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !36
  %i.xa = zext i8 %i.wz to i32
  %i.xb = shl nuw nsw i32 %i.xa, 8
  %i.xc = or disjoint i32 %i.xb, %i.wx
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 17
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !36
  %i.xf = zext i8 %i.xe to i32
  %i.xg = or disjoint i32 %i.xc, %i.xf
  %i.xh = shl nuw i32 %i.xg, 8
  %i.xi = getelementptr inbounds nuw i8, ptr %.5, i64 20
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !54
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 21
  %i.xk = load i8, ptr %i.wu, align 1, !tbaa !36
  %i.xl = zext i8 %i.xk to i32
  %i.xm = shl nuw nsw i32 %i.xl, 16
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 19
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !36
  %i.xp = zext i8 %i.xo to i32
  %i.xq = shl nuw nsw i32 %i.xp, 8
  %i.xr = or disjoint i32 %i.xq, %i.xm
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 20
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !36
  %i.xu = zext i8 %i.xt to i32
  %i.xv = or disjoint i32 %i.xr, %i.xu
  %i.xw = shl nuw i32 %i.xv, 8
  %i.xx = getelementptr inbounds nuw i8, ptr %.5, i64 28
  store i32 %i.xw, ptr %i.xx, align 4, !tbaa !54
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 24 ; 2 uses
  %i.xz = load i8, ptr %i.xj, align 1, !tbaa !36
  %i.ya = zext i8 %i.xz to i32
  %i.yb = shl nuw nsw i32 %i.ya, 16
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 22
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !36
  %i.ye = zext i8 %i.yd to i32
  %i.yf = shl nuw nsw i32 %i.ye, 8
  %i.yg = or disjoint i32 %i.yf, %i.yb
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 23
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !36
  %i.yj = zext i8 %i.yi to i32
  %i.yk = or disjoint i32 %i.yg, %i.yj
  %i.yl = shl nuw i32 %i.yk, 8
  %i.ym = getelementptr inbounds nuw i8, ptr %.5, i64 12
  store i32 %i.yl, ptr %i.ym, align 4, !tbaa !54
  %i.yn = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.yo = add nsw i32 %.9, -1                     ; 2 uses
  %.not123 = icmp eq i32 %i.yo, 0
  br i1 %.not123, label %.loopexit, label %.preheader213, !llvm.loop !26

.loopexit:                                        ; preds = %.preheader213, %.preheader211, %.preheader209, %.preheader207, %.preheader205, %.preheader203, %.unr-lcssa, %.loopexit352, %.preheader197, %.preheader.prol.loopexit, %.preheader, %middle.block332, %vec.epilog.middle.block347, %bb.o, %bb.n
  %.sroa.0.12 = phi ptr [ %i.ao, %bb.n ], [ %i.ao, %bb.o ], [ %i.ts, %.preheader211 ], [ %i.cz, %.preheader ], [ %i.dt, %.preheader197 ], [ %i.gk, %.loopexit352 ], [ %i.il, %.unr-lcssa ], [ %i.ji, %.preheader203 ], [ %i.mk, %.preheader205 ], [ %i.oi, %.preheader207 ], [ %i.sn, %.preheader209 ], [ %i.ca, %vec.epilog.middle.block347 ], [ %i.bp, %middle.block332 ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.xy, %.preheader213 ]
  store i32 1, ptr %2, align 4, !tbaa !54
  %i.yp = ptrtoint ptr %.sroa.0.12 to i64
  %i.yq = ptrtoint ptr %i.ao to i64
  %i.yr = sub i64 %i.yp, %i.yq
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = add nsw i32 %i.ys, 4
  br label %pcm_bluray_parse_header.exit.thread

pcm_bluray_parse_header.exit.thread:              ; preds = %bb.d, %bb.l, %bb.j, %bb.m, %.loopexit, %bb.b
  %.0115 = phi i32 [ -1094995529, %bb.b ], [ %i.yt, %.loopexit ], [ %i.az, %bb.m ], [ -1094995529, %bb.j ], [ -1094995529, %bb.l ], [ -1094995529, %bb.d ]
  ret i32 %.0115
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !67, !68, !69}
!10 = distinct !{!10, !67, !68, !69}
!11 = distinct !{!11, !71}
!12 = distinct !{!12, !67, !68}
!13 = distinct !{!13, !67}
!14 = distinct !{!14, !67, !68, !69}
!15 = distinct !{!15, !67, !68, !69}
!16 = distinct !{!16, !71}
!17 = distinct !{!17, !67, !68}
!18 = distinct !{!18, !67}
!19 = distinct !{!19, !67}
!20 = distinct !{!20, !67}
!21 = distinct !{!21, !67}
!22 = distinct !{!22, !67}
!23 = distinct !{!23, !67}
!24 = distinct !{!24, !67}
!25 = distinct !{!25, !67}
!26 = distinct !{!26, !67}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!"p1 _ZTS11AVBufferRef", !27, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!"p1 omnipotent char", !27, i64 0}
!31 = !{!"p1 _ZTS16AVPacketSideData", !27, i64 0}
!32 = !{!"AVRational", !6, i64 0, !6, i64 4}
!33 = !{!"AVPacket", !28, i64 0, !29, i64 8, !29, i64 16, !30, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !31, i64 48, !6, i64 56, !29, i64 64, !29, i64 72, !27, i64 80, !28, i64 88, !32, i64 96}
!34 = !{!33, !30, i64 24}
!35 = !{!33, !6, i64 32}
!36 = !{!5, !5, i64 0}
!37 = !{!"p1 _ZTS7AVClass", !27, i64 0}
!38 = !{!"p1 _ZTS7AVCodec", !27, i64 0}
!39 = !{!"p1 _ZTS15AVCodecInternal", !27, i64 0}
!40 = !{!"float", !5, i64 0}
!41 = !{!"p1 short", !27, i64 0}
!42 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !27, i64 16}
!43 = !{!"p1 _ZTS10RcOverride", !27, i64 0}
!44 = !{!"p1 _ZTS9AVHWAccel", !27, i64 0}
!45 = !{!"p1 _ZTS17AVCodecDescriptor", !27, i64 0}
!46 = !{!"p1 int", !27, i64 0}
!47 = !{!"any p2 pointer", !27, i64 0}
!48 = !{!"p2 _ZTS15AVFrameSideData", !47, i64 0}
!49 = !{!"AVCodecContext", !37, i64 0, !6, i64 8, !6, i64 12, !38, i64 16, !6, i64 24, !6, i64 28, !27, i64 32, !39, i64 40, !27, i64 48, !29, i64 56, !6, i64 64, !6, i64 68, !30, i64 72, !6, i64 80, !32, i64 84, !32, i64 92, !32, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !32, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !27, i64 184, !27, i64 192, !6, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !41, i64 288, !41, i64 296, !41, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !42, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !27, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !40, i64 428, !40, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !43, i64 456, !29, i64 464, !29, i64 472, !40, i64 480, !40, i64 484, !6, i64 488, !6, i64 492, !30, i64 496, !30, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !44, i64 536, !27, i64 544, !28, i64 552, !28, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !27, i64 672, !27, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !45, i64 728, !30, i64 736, !6, i64 744, !6, i64 748, !30, i64 752, !30, i64 760, !30, i64 768, !31, i64 776, !6, i64 784, !6, i64 788, !29, i64 792, !6, i64 800, !6, i64 804, !29, i64 808, !27, i64 816, !29, i64 824, !46, i64 832, !6, i64 840, !48, i64 848, !6, i64 856, !6, i64 860}
!50 = !{!49, !6, i64 648}
!51 = !{!49, !6, i64 348}
!52 = !{!49, !6, i64 652}
!53 = !{!49, !6, i64 344}
!54 = !{!6, !6, i64 0}
!55 = !{!27, !27, i64 0}
!56 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 8, !36, i64 16, i64 8, !55}
!57 = !{!49, !6, i64 356}
!58 = !{!49, !29, i64 56}
!59 = !{!"p2 omnipotent char", !47, i64 0}
!60 = !{!"p2 _ZTS11AVBufferRef", !47, i64 0}
!61 = !{!"p1 _ZTS12AVDictionary", !27, i64 0}
!62 = !{!"AVFrame", !5, i64 0, !5, i64 64, !59, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !32, i64 124, !29, i64 136, !29, i64 144, !32, i64 152, !6, i64 160, !27, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !60, i64 248, !6, i64 256, !48, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !29, i64 304, !61, i64 312, !6, i64 320, !28, i64 328, !28, i64 336, !29, i64 344, !29, i64 352, !29, i64 360, !29, i64 368, !27, i64 376, !42, i64 384, !29, i64 408, !6, i64 416}
!63 = !{!62, !6, i64 112}
!64 = !{!30, !30, i64 0}
!65 = !{!"short", !5, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 12}
!71 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
