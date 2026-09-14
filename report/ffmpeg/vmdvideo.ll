Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vmdvideo?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"vmdvideo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Sierra VMD video\00", align 1
@ff_vmdvideo_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 52, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 1080, ptr null, ptr null, ptr null, ptr @vmdvideo_decode_init, %union.anon { ptr @vmdvideo_decode_frame }, ptr @vmdvideo_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"expected extradata size of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid horizontal range %d-%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid vertical range %d-%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Incomplete palette\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Trying to unpack LZ-compressed frame with no LZ buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"offset > width (%d > %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @vmdvideo_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.not = icmp eq i32 %i.e, 816
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef 816) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 800
  %i.i = load i32, ptr %i.h, align 1, !tbaa !33   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  store i32 %i.i, ptr %i.j, align 8, !tbaa !34
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %i.i to i64
  %i.l = tail call noalias ptr @av_malloc(i64 noundef %i.k) #8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1056
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %.not38 = icmp eq ptr %i.l, null
  br i1 %.not38, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv42 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next43, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %i.r = shl i8 %i.q, 2
  %i.s = getelementptr i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33
  %i.u = shl i8 %i.t, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33
  %i.x = shl i8 %i.w, 2
  %i.y = zext i8 %i.r to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = zext i8 %i.u to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.ab, %i.z
  %i.ad = zext i8 %i.x to i32
  %i.ae = or disjoint i32 %i.ac, %i.ad            ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv42
  %i.ag = lshr i32 %i.ae, 6
  %i.ah = and i32 %i.ag, 197379
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = or disjoint i32 %i.ai, -16777216
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !36
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next43, 256
  br i1 %exitcond.not, label %bb.g, label %bb.f, !llvm.loop !39

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call ptr @av_frame_alloc() #8      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !38
  %.not39 = icmp eq ptr %i.ak, null
  %. = select i1 %.not39, i32 -12, i32 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  %.035 = phi i32 [ -1094995529, %bb.b ], [ -12, %bb.d ], [ %., %bb.g ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal range(i32 16, 0) i32 @vmdvideo_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 %i.d, ptr %i.h, align 8, !tbaa !61
  %i.i = icmp slt i32 %i.d, 16
  br i1 %i.i, label %vmd_decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #8 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %vmd_decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !60   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.n = load i16, ptr %i.m, align 1, !tbaa !33   ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i16, ptr %i.p, align 1, !tbaa !33   ; 3 uses
  %i.r = zext i16 %i.q to i32                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.t = load i16, ptr %i.s, align 1, !tbaa !33
  %i.u = zext i16 %i.t to i32
  %i.v = sub nsw i32 %i.u, %i.o                   ; 8 uses
  %i.w = add nsw i32 %i.v, 1                      ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.y = load i16, ptr %i.x, align 1, !tbaa !33   ; 2 uses
  %i.z = zext i16 %i.y to i32
  %i.aa = sub nsw i32 %i.z, %i.r                  ; 9 uses
  %i.ab = add nsw i32 %i.aa, 1                    ; 6 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !32  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !62 ; 4 uses
  %i.af = icmp eq i32 %i.w, %i.ae                 ; 2 uses
  br i1 %i.af, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.ai = icmp eq i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp ne i16 %i.n, 0
  %i.ak = icmp ne i16 %i.q, 0
  %or.cond.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 1068
  store i32 %i.o, ptr %i.al, align 4, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 1072
  store i32 %i.r, ptr %i.am, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 1068
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64 ; 2 uses
  %i.ap = sub nsw i32 %i.o, %i.ao                 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 1072
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !65 ; 2 uses
  %i.as = sub nsw i32 %i.r, %i.ar                 ; 6 uses
  %i.at = icmp slt i32 %i.ap, 0
  %i.au = icmp slt i32 %i.v, -1
  %or.cond3.i = or i1 %i.au, %i.at
  br i1 %or.cond3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp sge i32 %i.ap, %i.ae
  %.not226.i = icmp sge i32 %i.v, %i.ae
  %or.cond247.not332.i = or i1 %.not226.i, %.not.i
  %i.av = add nuw nsw i32 %i.ap, %i.w
  %i.aw = icmp sgt i32 %i.av, %i.ae
  %or.cond249.i = select i1 %or.cond247.not332.i, i1 true, i1 %i.aw
  br i1 %or.cond249.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ac, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.ap, i32 noundef %i.w) #8
  br label %vmd_decode.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ax = icmp slt i32 %i.as, 0
  %i.ay = icmp slt i32 %i.aa, -1
  %or.cond5.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63 ; 5 uses
  %.not227.i = icmp sge i32 %i.as, %i.ba
  %.not228.i = icmp sge i32 %i.aa, %i.ba
  %or.cond250.not333.i = select i1 %.not227.i, i1 true, i1 %.not228.i
  %i.bb = add nuw nsw i32 %i.as, %i.ab
  %i.bc = icmp sgt i32 %i.bb, %i.ba
  %or.cond252.i = select i1 %or.cond250.not333.i, i1 true, i1 %i.bc
  br i1 %or.cond252.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ac, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.as, i32 noundef %i.ab) #8
  br label %vmd_decode.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66 ; 2 uses
  %.not229.i = icmp eq ptr %i.bf, null
  br i1 %.not229.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = icmp eq i32 %i.ao, %i.o
  %i.bh = icmp eq i32 %i.ar, %i.r
  %or.cond7.not336.i = select i1 %i.bg, i1 %i.bh, i1 false
  %or.cond253.i = and i1 %i.af, %or.cond7.not336.i
  %.not231.i = icmp eq i32 %i.ab, %i.ba
  %or.cond254.i = select i1 %or.cond253.i, i1 %.not231.i, i1 false
  br i1 %or.cond254.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %1, align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !36
  %i.bl = mul nsw i32 %i.bk, %i.ba
  %i.bm = sext i32 %i.bl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %i.bf, i64 %i.bm, i1 false)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bn = phi ptr [ %i.l, %bb.n ], [ %.pre.i, %bb.o ], [ %i.l, %bb.m ] ; 5 uses
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !61  ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 15
  br i1 %i.bp, label %bytestream2_init.exit256.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit256.i:                       ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bn, i64 %i.br  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !33
  %i.bv = and i8 %i.bu, 2
  %.not232.i = icmp eq i8 %i.bv, 0
  br i1 %.not232.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bytestream2_init.exit256.i
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.br, i64 18) ; 3 uses
  %i.bx = getelementptr i8, ptr %i.f, i64 28      ; 3 uses
  %i.by = trunc nuw nsw i64 %i.bw to i32
  %i.bz = sub nuw nsw i32 %i.bo, %i.by
  %i.ca = icmp samesign ugt i32 %i.bz, 767
  br i1 %i.ca, label %.preheader346.preheader.i, label %bb.s

.preheader346.preheader.i:                        ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %i.bn, i64 %i.bw  ; 7 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 1052
  %i.cc = getelementptr i8, ptr %i.bn, i64 %i.bw
  %scevgep141 = getelementptr i8, ptr %i.cc, i64 768
  %bound0 = icmp ult ptr %i.bx, %scevgep141
  %bound1 = icmp ult ptr %i.cb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader346.i, label %vector.ph

vector.ph:                                        ; preds = %.preheader346.preheader.i
  %i.cd = getelementptr i8, ptr %i.cb, i64 768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.ce ; 3 uses
  %i.cf = getelementptr i8, ptr %i.cb, i64 %i.ce  ; 3 uses
  %next.gep142.a = getelementptr i8, ptr %i.cf, i64 3
  %i.cg = getelementptr i8, ptr %i.cb, i64 %i.ce  ; 3 uses
  %next.gep143.a = getelementptr i8, ptr %i.cg, i64 6
  %i.ch = getelementptr i8, ptr %i.cb, i64 %i.ce  ; 3 uses
  %next.gep144 = getelementptr i8, ptr %i.ch, i64 9
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cj = getelementptr i8, ptr %i.cf, i64 4
  %i.ck = getelementptr i8, ptr %i.cg, i64 7
  %i.cl = getelementptr i8, ptr %i.ch, i64 10
  %i.cm = load i8, ptr %next.gep, align 1, !tbaa !33, !alias.scope !67
  %i.cn = load i8, ptr %next.gep142.a, align 1, !tbaa !33, !alias.scope !67
  %i.co = load i8, ptr %next.gep143.a, align 1, !tbaa !33, !alias.scope !67
  %i.cp = load i8, ptr %next.gep144, align 1, !tbaa !33, !alias.scope !67
  %i.cq = insertelement <4 x i8> poison, i8 %i.cm, i64 0
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 1
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 2
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 3
  %i.cu = zext <4 x i8> %i.ct to <4 x i32>
  %i.cv = shl nuw nsw <4 x i32> %i.cu, splat (i32 18)
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cx = getelementptr i8, ptr %i.cf, i64 5
  %i.cy = getelementptr i8, ptr %i.cg, i64 8
  %i.cz = getelementptr i8, ptr %i.ch, i64 11
  %i.da = load i8, ptr %i.ci, align 1, !tbaa !33, !alias.scope !67
  %i.db = load i8, ptr %i.cj, align 1, !tbaa !33, !alias.scope !67
  %i.dc = load i8, ptr %i.ck, align 1, !tbaa !33, !alias.scope !67
  %i.dd = load i8, ptr %i.cl, align 1, !tbaa !33, !alias.scope !67
  %i.de = insertelement <4 x i8> poison, i8 %i.da, i64 0
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 1
  %i.dg = insertelement <4 x i8> %i.df, i8 %i.dc, i64 2
  %i.dh = insertelement <4 x i8> %i.dg, i8 %i.dd, i64 3
  %i.di = zext <4 x i8> %i.dh to <4 x i32>
  %i.dj = shl nuw nsw <4 x i32> %i.di, splat (i32 10)
  %i.dk = load i8, ptr %i.cw, align 1, !tbaa !33, !alias.scope !67
  %i.dl = load i8, ptr %i.cx, align 1, !tbaa !33, !alias.scope !67
  %i.dm = load i8, ptr %i.cy, align 1, !tbaa !33, !alias.scope !67
  %i.dn = load i8, ptr %i.cz, align 1, !tbaa !33, !alias.scope !67
  %i.do = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %i.dp = insertelement <4 x i8> %i.do, i8 %i.dl, i64 1
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dm, i64 2
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 3
  %i.ds = zext <4 x i8> %i.dr to <4 x i32>
  %i.dt = shl nuw nsw <4 x i32> %i.ds, splat (i32 2)
  %i.du = and <4 x i32> %i.dj, splat (i32 64512)
  %i.dv = or disjoint <4 x i32> %i.du, %i.cv
  %i.dw = and <4 x i32> %i.dt, splat (i32 252)
  %i.dx = or disjoint <4 x i32> %i.dv, %i.dw      ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index
  %i.dz = lshr <4 x i32> %i.dx, splat (i32 6)
  %i.ea = and <4 x i32> %i.dz, splat (i32 197379)
  %i.eb = or disjoint <4 x i32> %i.dx, %i.ea
  %i.ec = or <4 x i32> %i.eb, splat (i32 -16777216)
  store <4 x i32> %i.ec, ptr %i.dy, align 4, !tbaa !36, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, 256
  br i1 %i.ed, label %.thread.i, label %vector.body, !llvm.loop !46

.preheader346.i:                                  ; preds = %.preheader346.preheader.i, %.preheader346.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader346.i ], [ 0, %.preheader346.preheader.i ] ; 2 uses
  %.sroa.0.0358.i = phi ptr [ %i.em, %.preheader346.i ], [ %i.cb, %.preheader346.preheader.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0358.i, i64 1
  %i.ef = load i8, ptr %.sroa.0.0358.i, align 1, !tbaa !33
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 18
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0358.i, i64 2
  %i.ej = load i8, ptr %i.ee, align 1, !tbaa !33
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 10
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0358.i, i64 3 ; 2 uses
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !33
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %i.eq = and i32 %i.el, 64512
  %i.er = or disjoint i32 %i.eq, %i.eh
  %i.es = and i32 %i.ep, 252
  %i.et = or disjoint i32 %i.er, %i.es            ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ev = lshr i32 %i.et, 6
  %i.ew = and i32 %i.ev, 197379
  %i.ex = or disjoint i32 %i.et, %i.ew
  %i.ey = or i32 %i.ex, -16777216
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.thread.i, label %.preheader346.i, !llvm.loop !47

bb.s:                                             ; preds = %bb.r
  %i.ez = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ez, i32 noundef 16, ptr noundef nonnull @.str.5) #8
  br label %vmd_decode.exit.thread

.thread.i:                                        ; preds = %vector.body, %.preheader346.i, %bytestream2_init.exit256.i
  %.sroa.0.1311.i = phi ptr [ %i.bq, %bytestream2_init.exit256.i ], [ %i.em, %.preheader346.i ], [ %i.cd, %vector.body ] ; 3 uses
  %i.fa = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.fb = ptrtoint ptr %.sroa.0.1311.i to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp slt i32 %i.fd, 1
  br i1 %i.fe, label %vmd_decode.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.1311.i, i64 1 ; 3 uses
  %i.fg = load i8, ptr %.sroa.0.1311.i, align 1, !tbaa !33 ; 3 uses
  %.not234.i = icmp sgt i8 %i.fg, -1
  br i1 %.not234.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !34 ; 2 uses
  %.not235.i = icmp eq i32 %i.fi, 0
  br i1 %.not235.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fj, i32 noundef 16, ptr noundef nonnull @.str.6) #8
  br label %vmd_decode.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.fk = ptrtoint ptr %i.ff to i64
  %i.fl = sub i64 %i.fa, %i.fk
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 1056 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !35
  %i.fp = tail call fastcc i32 @lz_unpack(ptr noundef nonnull %i.ff, i32 noundef %i.fm, ptr noundef %i.fo, i32 noundef %i.fi) ; 3 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %vmd_decode.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !35 ; 3 uses
  %.not337.i = icmp eq ptr %i.fr, null
  br i1 %.not337.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fs = and i8 %i.fg, 127
  %i.ft = zext nneg i32 %i.fp to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.sroa.51.1.i = phi ptr [ %i.bs, %bb.t ], [ %i.fu, %bb.z ] ; 5 uses
  %.sroa.0.3.i = phi ptr [ %i.ff, %bb.t ], [ %i.fr, %bb.z ] ; 4 uses
  %.1208.i = phi i8 [ %i.fg, %bb.t ], [ %i.fs, %bb.z ]
  %i.fv = load ptr, ptr %1, align 8, !tbaa !66
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !36
  %i.fy = mul nsw i32 %i.fx, %i.as
  %i.fz = add nsw i32 %i.fy, %i.ap
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %i.ga ; 4 uses
  %i.gc = load ptr, ptr %i.bd, align 8, !tbaa !38 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !66 ; 2 uses
  %.not236.i = icmp eq ptr %i.gd, null
  br i1 %.not236.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !36 ; 2 uses
  %i.gg = mul nsw i32 %i.gf, %i.as
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %i.gd, i64 %i.gh
  %i.gj = zext nneg i32 %i.ap to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj
  %i.gl = sext i32 %i.gf to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0201.i = phi ptr [ %i.gk, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %.0198.i = phi i64 [ %i.gl, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  switch i8 %.1208.i, label %vmd_decode.exit [
    i8 1, label %.preheader338.i
    i8 2, label %.preheader340.i
    i8 3, label %.preheader344.i
  ]

.preheader344.i:                                  ; preds = %bb.ac
  %.not237360.i = icmp slt i32 %i.aa, 0
  br i1 %.not237360.i, label %vmd_decode.exit, label %.preheader342.lr.ph.i

.preheader342.lr.ph.i:                            ; preds = %.preheader344.i
  %i.gm = ptrtoint ptr %.sroa.51.1.i to i64       ; 3 uses
  br label %.preheader342.i

.preheader340.i:                                  ; preds = %bb.ac
  %.not240365.i = icmp slt i32 %i.aa, 0
  br i1 %.not240365.i, label %vmd_decode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader340.i
  %i.gn = ptrtoint ptr %.sroa.51.1.i to i64       ; 3 uses
  %i.go = zext nneg i32 %i.w to i64               ; 3 uses
  %i.gp = icmp eq i16 %i.y, %i.q
  br i1 %i.gp, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.ab, 2147483646
  br label %bb.al

.preheader338.i:                                  ; preds = %bb.ac
  %.not241370.i = icmp slt i32 %i.aa, 0
  br i1 %.not241370.i, label %vmd_decode.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader338.i
  %i.gq = ptrtoint ptr %.sroa.51.1.i to i64       ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %.preheader.lr.ph.i
  %.1202374.i = phi ptr [ %.0201.i, %.preheader.lr.ph.i ], [ %i.il, %bb.ak ]
  %.0204373.i = phi ptr [ %i.gb, %.preheader.lr.ph.i ], [ %i.ik, %bb.ak ] ; 4 uses
  %.1210372.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.im, %bb.ak ] ; 2 uses
  %.sroa.0.4371.i = phi ptr [ %.sroa.0.3.i, %.preheader.lr.ph.i ], [ %.us-phi.i, %bb.ak ] ; 2 uses
  %.1202374.fr.i = freeze ptr %.1202374.i         ; 3 uses
  %.not375.i = icmp eq ptr %.1202374.fr.i, null
  br i1 %.not375.i, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %bb.ae
  %.sroa.0.5.us.i = phi ptr [ %i.hh, %bb.ae ], [ %.sroa.0.4371.i, %.preheader.i ] ; 3 uses
  %.0199.us.i = phi i32 [ %i.gz, %bb.ae ], [ 0, %.preheader.i ] ; 2 uses
  %i.gr = ptrtoint ptr %.sroa.0.5.us.i to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp slt i64 %i.gs, 1
  br i1 %i.gt, label %vmd_decode.exit.thread, label %bytestream2_get_byte.exit261.us.i

bytestream2_get_byte.exit261.us.i:                ; preds = %.preheader.split.us.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.5.us.i, i64 1 ; 3 uses
  %i.gv = load i8, ptr %.sroa.0.5.us.i, align 1, !tbaa !33 ; 2 uses
  %.not242.us.i = icmp sgt i8 %i.gv, -1
  br i1 %.not242.us.i, label %vmd_decode.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_byte.exit261.us.i
  %i.gw = and i8 %i.gv, 127
  %i.gx = zext nneg i8 %i.gw to i32               ; 2 uses
  %i.gy = add nuw nsw i32 %i.gx, 1                ; 2 uses
  %i.gz = add nuw nsw i32 %i.gy, %.0199.us.i      ; 4 uses
  %i.ha = icmp sle i32 %i.gz, %i.w
  %i.hb = ptrtoint ptr %i.gu to i64
  %i.hc = sub i64 %i.gq, %i.hb
  %i.hd = trunc i64 %i.hc to i32
  %.not243.us.i = icmp slt i32 %i.gx, %i.hd
  %or.cond331.us.i = select i1 %i.ha, i1 %.not243.us.i, i1 false
  br i1 %or.cond331.us.i, label %bb.ae, label %vmd_decode.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.he = zext nneg i32 %.0199.us.i to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.0204373.i, i64 %i.he
  %i.hg = zext nneg i32 %i.gy to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hf, ptr noundef nonnull align 1 dereferenceable(1) %i.gu, i64 %i.hg, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hg ; 2 uses
  %.not244.us.i = icmp sgt i32 %i.gz, %i.v
  br i1 %.not244.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !48

.preheader.split.i:                               ; preds = %.preheader.i, %bb.ai
  %.sroa.0.5.i = phi ptr [ %.sroa.0.6.i, %bb.ai ], [ %.sroa.0.4371.i, %.preheader.i ] ; 3 uses
  %.0199.i = phi i32 [ %.1200.i, %bb.ai ], [ 0, %.preheader.i ] ; 5 uses
  %i.hi = ptrtoint ptr %.sroa.0.5.i to i64
  %i.hj = sub i64 %i.gq, %i.hi
  %i.hk = icmp slt i64 %i.hj, 1
  br i1 %i.hk, label %bytestream2_get_byte.exit261.thread.i, label %bytestream2_get_byte.exit261.i

bytestream2_get_byte.exit261.i:                   ; preds = %.preheader.split.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.5.i, i64 1 ; 4 uses
  %i.hm = load i8, ptr %.sroa.0.5.i, align 1, !tbaa !33 ; 2 uses
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %.not242.i = icmp sgt i8 %i.hm, -1
  br i1 %.not242.i, label %bytestream2_get_byte.exit261.thread.i, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_byte.exit261.i
  %i.ho = and i32 %i.hn, 127                      ; 2 uses
  %i.hp = add nuw nsw i32 %i.ho, 1                ; 2 uses
  %i.hq = add nsw i32 %i.hp, %.0199.i             ; 2 uses
  %i.hr = icmp sle i32 %i.hq, %i.w
  %i.hs = ptrtoint ptr %i.hl to i64
  %i.ht = sub i64 %i.gq, %i.hs
  %i.hu = trunc i64 %i.ht to i32
  %.not243.i = icmp slt i32 %i.ho, %i.hu
  %or.cond331.i = select i1 %i.hr, i1 %.not243.i, i1 false
  br i1 %or.cond331.i, label %bb.ag, label %vmd_decode.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.hv = sext i32 %.0199.i to i64
  %i.hw = getelementptr inbounds i8, ptr %.0204373.i, i64 %i.hv
  %i.hx = zext nneg i32 %i.hp to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hw, ptr noundef nonnull align 1 dereferenceable(1) %i.hl, i64 %i.hx, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hx
  br label %bb.ai

bytestream2_get_byte.exit261.thread.i:            ; preds = %bytestream2_get_byte.exit261.i, %.preheader.split.i
  %.0.i260322.i = phi i32 [ %i.hn, %bytestream2_get_byte.exit261.i ], [ 0, %.preheader.split.i ] ; 2 uses
  %.sroa.0.13321.i = phi ptr [ %i.hl, %bytestream2_get_byte.exit261.i ], [ %.sroa.51.1.i, %.preheader.split.i ]
  %i.hz = add nsw i32 %.0.i260322.i, %.0199.i
  %.not376.i = icmp sgt i32 %i.hz, %i.v
  br i1 %.not376.i, label %vmd_decode.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bytestream2_get_byte.exit261.thread.i
  %i.ia = sext i32 %.0199.i to i64                ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.0204373.i, i64 %i.ia
  %i.ic = getelementptr inbounds i8, ptr %.1202374.fr.i, i64 %i.ia
  %i.id = add nuw nsw i32 %.0.i260322.i, 1        ; 2 uses
  %i.ie = zext nneg i32 %i.id to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ib, ptr noundef nonnull align 1 dereferenceable(1) %i.ic, i64 %i.ie, i1 false)
  %i.if = add nsw i32 %i.id, %.0199.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0.6.i = phi ptr [ %.sroa.0.13321.i, %bb.ah ], [ %i.hy, %bb.ag ] ; 2 uses
  %.1200.i = phi i32 [ %i.if, %bb.ah ], [ %i.hq, %bb.ag ] ; 3 uses
  %.not244.i = icmp sgt i32 %.1200.i, %i.v
  br i1 %.not244.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !48

.split.us.i:                                      ; preds = %bb.ai, %bb.ae
  %.us-phi.i = phi ptr [ %i.hh, %bb.ae ], [ %.sroa.0.6.i, %bb.ai ]
  %.us-phi369.i = phi i32 [ %i.gz, %bb.ae ], [ %.1200.i, %bb.ai ] ; 2 uses
  %i.ig = icmp sgt i32 %.us-phi369.i, %i.w
  br i1 %i.ig, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split.us.i
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ih, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %.us-phi369.i, i32 noundef %i.w) #8
  br label %vmd_decode.exit.thread

bb.ak:                                            ; preds = %.split.us.i
  %i.ii = load i32, ptr %i.fw, align 8, !tbaa !36
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %.0204373.i, i64 %i.ij
  %i.il = getelementptr inbounds i8, ptr %.1202374.fr.i, i64 %.0198.i
  %i.im = add nuw nsw i32 %.1210372.i, 1
  %exitcond402.not.i = icmp eq i32 %.1210372.i, %i.aa
  br i1 %exitcond402.not.i, label %vmd_decode.exit, label %.preheader.i, !llvm.loop !49

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.new
  %.1205368.i = phi ptr [ %i.gb, %.lr.ph.i.new ], [ %i.jc, %bb.al ] ; 2 uses
  %.sroa.0.7366.i = phi ptr [ %.sroa.0.3.i, %.lr.ph.i.new ], [ %i.iz, %bb.al ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.al ]
  %i.in = ptrtoint ptr %.sroa.0.7366.i to i64
  %i.io = sub i64 %i.gn, %i.in
  %i.ip = tail call i64 @llvm.smin.i64(i64 %i.io, i64 %i.go)
  %i.iq = and i64 %i.ip, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1205368.i, ptr align 1 %.sroa.0.7366.i, i64 %i.iq, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.7366.i, i64 %i.iq ; 3 uses
  %i.is = load i32, ptr %i.fw, align 8, !tbaa !36
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %.1205368.i, i64 %i.it ; 2 uses
  %i.iv = ptrtoint ptr %i.ir to i64
  %i.iw = sub i64 %i.gn, %i.iv
  %i.ix = tail call i64 @llvm.smin.i64(i64 %i.iw, i64 %i.go)
  %i.iy = and i64 %i.ix, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iu, ptr align 1 %i.ir, i64 %i.iy, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.fw, align 8, !tbaa !36
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds i8, ptr %i.iu, i64 %i.jb ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vmd_decode.exit.loopexit167.unr-lcssa, label %bb.al, !llvm.loop !50

.preheader342.i:                                  ; preds = %bb.bh, %.preheader342.lr.ph.i
  %.2203364.i = phi ptr [ %.0201.i, %.preheader342.lr.ph.i ], [ %i.nl, %bb.bh ] ; 3 uses
  %.2206363.i = phi ptr [ %i.gb, %.preheader342.lr.ph.i ], [ %i.nk, %bb.bh ] ; 4 uses
  %.3212362.i = phi i32 [ 0, %.preheader342.lr.ph.i ], [ %i.nm, %bb.bh ] ; 2 uses
  %.sroa.0.8361.i = phi ptr [ %.sroa.0.3.i, %.preheader342.lr.ph.i ], [ %.sroa.0.10.i, %bb.bh ]
  %i.jd = icmp ne ptr %.2203364.i, null
  br label %bb.am

bb.am:                                            ; preds = %bb.be, %.preheader342.i
  %.sroa.0.9.i = phi ptr [ %.sroa.0.10.i, %bb.be ], [ %.sroa.0.8361.i, %.preheader342.i ] ; 5 uses
  %.2.i = phi i32 [ %.3.i, %bb.be ], [ 0, %.preheader342.i ] ; 8 uses
  %i.je = ptrtoint ptr %.sroa.0.9.i to i64
  %i.jf = sub i64 %i.gm, %i.je
  %i.jg = icmp slt i64 %i.jf, 1
  br i1 %i.jg, label %bytestream2_get_byte.exit259.thread.i, label %bytestream2_get_byte.exit259.i

bytestream2_get_byte.exit259.i:                   ; preds = %bb.am
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.9.i, i64 1 ; 5 uses
  %i.ji = load i8, ptr %.sroa.0.9.i, align 1, !tbaa !33 ; 3 uses
  %i.jj = zext nneg i8 %i.ji to i32
  %.not238.i = icmp sgt i8 %i.ji, -1
  br i1 %.not238.i, label %bytestream2_get_byte.exit259.thread.i, label %bb.an

bb.an:                                            ; preds = %bytestream2_get_byte.exit259.i
  %i.jk = and i8 %i.ji, 127
  %i.jl = add nuw i8 %i.jk, 1                     ; 3 uses
  %i.jm = ptrtoint ptr %i.jh to i64
  %i.jn = sub i64 %i.gm, %i.jm                    ; 3 uses
  %i.jo = icmp slt i64 %i.jn, 1
  br i1 %i.jo, label %bytestream2_peek_byte.exit.thread.i, label %bytestream2_peek_byte.exit.i

bytestream2_peek_byte.exit.i:                     ; preds = %bb.an
  %i.jp = load i8, ptr %i.jh, align 1, !tbaa !33
  %i.jq = icmp eq i8 %i.jp, -1
  br i1 %i.jq, label %bytestream2_get_byte.exit.i, label %bytestream2_peek_byte.exit.thread.i

bytestream2_get_byte.exit.i:                      ; preds = %bytestream2_peek_byte.exit.i
  %i.jr = zext i8 %i.jl to i32                    ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.9.i, i64 2 ; 5 uses
  %i.jt = sext i32 %.2.i to i64
  %i.ju = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.jt ; 4 uses
  %i.jv = ptrtoint ptr %i.js to i64               ; 4 uses
  %i.jw = sub i64 %i.gm, %i.jv                    ; 3 uses
  %i.jx = trunc i64 %i.jw to i32                  ; 2 uses
  %i.jy = sub nsw i32 %i.w, %.2.i
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds i8, ptr %i.ju, i64 %i.jz
  %i.kb = icmp sgt i32 %i.jx, -1
  br i1 %i.kb, label %bytestream2_init.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bytestream2_get_byte.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit.i.i:                        ; preds = %bytestream2_get_byte.exit.i
  %i.kc = and i64 %i.jw, 2147483647
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.kc ; 2 uses
  %i.ke = and i32 %i.jr, 1
  %.not.i.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bytestream2_init.exit.i.i
  %i.kf = icmp eq i32 %i.jx, 0
  br i1 %i.kf, label %rle_unpack.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.9.i, i64 3
  %i.kh = load i8, ptr %i.js, align 1, !tbaa !33
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  store i8 %i.kh, ptr %i.ju, align 1, !tbaa !33
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bytestream2_init.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.js, %bytestream2_init.exit.i.i ], [ %i.kg, %bb.aq ]
  %.034.i.i = phi ptr [ %i.ju, %bytestream2_init.exit.i.i ], [ %i.ki, %bb.aq ]
  %.0.i263.i = phi i32 [ 0, %bytestream2_init.exit.i.i ], [ 1, %bb.aq ]
  %i.kj = ptrtoint ptr %i.kd to i64               ; 3 uses
  %i.kk = ptrtoint ptr %i.ka to i64               ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i.i, %bb.ar
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.ar ], [ %.sroa.0.2.i.i, %.loopexit.i.i ] ; 4 uses
  %.135.i.i = phi ptr [ %.034.i.i, %bb.ar ], [ %.3.i.i, %.loopexit.i.i ] ; 10 uses
  %.1.i.i = phi i32 [ %.0.i263.i, %bb.ar ], [ %i.mg, %.loopexit.i.i ]
  %i.kl = ptrtoint ptr %.sroa.0.1.i.i to i64      ; 2 uses
  %i.km = sub i64 %i.kj, %i.kl
  %i.kn = trunc i64 %i.km to i32
  %i.ko = icmp slt i32 %i.kn, 1
  br i1 %i.ko, label %split68.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 5 uses
  %i.kq = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !33 ; 6 uses
  %i.kr = zext i8 %i.kq to i32                    ; 3 uses
  %.not40.i.i = icmp sgt i8 %i.kq, -1
  br i1 %.not40.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ks = shl nuw nsw i32 %i.kr, 1
  %i.kt = and i32 %i.ks, 254                      ; 3 uses
  %i.ku = ptrtoint ptr %.135.i.i to i64
  %i.kv = sub i64 %i.kk, %i.ku
  %i.kw = zext nneg i32 %i.kt to i64              ; 4 uses
  %i.kx = icmp slt i64 %i.kv, %i.kw
  %i.ky = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.kz = sub i64 %i.kj, %i.ky
  %i.la = trunc i64 %i.kz to i32
  %i.lb = icmp sgt i32 %i.kt, %i.la
  %or.cond.i264.i = select i1 %i.kx, i1 true, i1 %i.lb
  br i1 %or.cond.i264.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lc = sub i64 %i.ky, %i.jv
  br label %rle_unpack.exit.i

bb.aw:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.135.i.i, ptr nonnull align 1 %i.kp, i64 %i.kw, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kw
  %i.le = getelementptr inbounds nuw i8, ptr %.135.i.i, i64 %i.kw
  br label %.loopexit.i.i

bb.ax:                                            ; preds = %bb.at
  %i.lf = ptrtoint ptr %.135.i.i to i64
  %i.lg = sub i64 %i.kk, %i.lf
  %i.lh = shl nuw nsw i32 %i.kr, 1                ; 5 uses
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = icmp slt i64 %i.lg, %i.li
  %.pre69.i.i = ptrtoint ptr %i.kp to i64         ; 2 uses
  br i1 %i.lj, label %split.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lk = sub i64 %i.kj, %.pre69.i.i              ; 2 uses
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = icmp slt i32 %i.ll, 2
  br i1 %i.lm, label %split.i.i, label %bb.az

split.i.i:                                        ; preds = %bb.ay, %bb.ax
  %i.ln = sub i64 %.pre69.i.i, %i.jv
  br label %rle_unpack.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.lo = icmp slt i64 %i.lk, 2
  br i1 %i.lo, label %bytestream2_get_le16.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 3
  %i.lq = load i16, ptr %i.kp, align 1, !tbaa !33
  br label %bytestream2_get_le16.exit.i.i

bytestream2_get_le16.exit.i.i:                    ; preds = %bb.ba, %bb.az
  %.sroa.0.4.i.i = phi ptr [ %i.lp, %bb.ba ], [ %i.kd, %bb.az ] ; 4 uses
  %.0.i.i.i = phi i16 [ %i.lq, %bb.ba ], [ 0, %bb.az ] ; 3 uses
  %.not65.i.i = icmp eq i8 %i.kq, 0
  br i1 %.not65.i.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bytestream2_get_le16.exit.i.i
  %i.lr = zext nneg i8 %i.kq to i64               ; 5 uses
  %min.iters.check = icmp ult i8 %i.kq, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check146 = icmp ult i8 %i.kq, 16
  br i1 %min.iters.check146, label %vec.epilog.ph, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check
  %i.ls = and i64 %i.lr, 12
  %n.vec = and i64 %i.lr, 112                     ; 5 uses
  %i.lt = trunc nuw nsw i64 %n.vec to i32
  %i.lu = shl nuw nsw i64 %n.vec, 1
  %i.lv = getelementptr i8, ptr %.135.i.i, i64 %i.lu ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph147
  %index149 = phi i64 [ 0, %vector.ph147 ], [ %index.next151, %vector.body148 ] ; 2 uses
  %i.lw = shl i64 %index149, 1
  %next.gep150 = getelementptr i8, ptr %.135.i.i, i64 %i.lw ; 2 uses
  %i.lx = getelementptr i8, ptr %next.gep150, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep150, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.lx, align 1, !tbaa !33
  %index.next151 = add nuw i64 %index149, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next151, %n.vec
  br i1 %i.ly, label %middle.block152, label %vector.body148, !llvm.loop !51

middle.block152:                                  ; preds = %vector.body148
  %cmp.n = icmp eq i64 %n.vec, %i.lr
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block152
  %min.epilog.iters.check = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec154 = and i64 %i.lr, 124                  ; 4 uses
  %i.lz = trunc nuw nsw i64 %n.vec154 to i32
  %i.ma = shl nuw nsw i64 %n.vec154, 1
  %i.mb = getelementptr i8, ptr %.135.i.i, i64 %i.ma ; 2 uses
  %broadcast.splatinsert155 = insertelement <4 x i16> poison, i16 %.0.i.i.i, i64 0
  %broadcast.splat156 = shufflevector <4 x i16> %broadcast.splatinsert155, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index157 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %i.mc = shl i64 %index157, 1
  %next.gep158 = getelementptr i8, ptr %.135.i.i, i64 %i.mc
  store <4 x i16> %broadcast.splat156, ptr %next.gep158, align 1, !tbaa !33
  %index.next159 = add nuw i64 %index157, 4       ; 2 uses
  %i.md = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.md, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n160 = icmp eq i64 %n.vec154, %i.lr
  br i1 %cmp.n160, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03364.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.lt, %vec.epilog.iter.check ], [ %i.lz, %vec.epilog.middle.block ]
  %.263.i.i.ph = phi ptr [ %.135.i.i, %iter.check ], [ %i.lv, %vec.epilog.iter.check ], [ %i.mb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.03364.i.i = phi i32 [ %i.mf, %.lr.ph.i.i ], [ %.03364.i.i.ph, %.lr.ph.i.i.preheader ]
  %.263.i.i = phi ptr [ %i.me, %.lr.ph.i.i ], [ %.263.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i16 %.0.i.i.i, ptr %.263.i.i, align 1, !tbaa !33
  %i.me = getelementptr inbounds nuw i8, ptr %.263.i.i, i64 2 ; 2 uses
  %i.mf = add nuw nsw i32 %.03364.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.mf, %i.kr
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !53

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %middle.block152, %vec.epilog.middle.block, %bytestream2_get_le16.exit.i.i, %bb.aw
  %.sroa.0.2.i.i = phi ptr [ %i.ld, %bb.aw ], [ %.sroa.0.4.i.i, %bytestream2_get_le16.exit.i.i ], [ %.sroa.0.4.i.i, %middle.block152 ], [ %.sroa.0.4.i.i, %vec.epilog.middle.block ], [ %.sroa.0.4.i.i, %.lr.ph.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.le, %bb.aw ], [ %.135.i.i, %bytestream2_get_le16.exit.i.i ], [ %i.lv, %middle.block152 ], [ %i.mb, %vec.epilog.middle.block ], [ %i.me, %.lr.ph.i.i ]
  %.032.i.i = phi i32 [ %i.kt, %bb.aw ], [ %i.lh, %bytestream2_get_le16.exit.i.i ], [ %i.lh, %middle.block152 ], [ %i.lh, %vec.epilog.middle.block ], [ %i.lh, %.lr.ph.i.i ]
  %i.mg = add nuw nsw i32 %.032.i.i, %.1.i.i      ; 2 uses
  %i.mh = icmp samesign ult i32 %i.mg, %i.jr
  br i1 %i.mh, label %bb.as, label %.loopexit._crit_edge.i.i, !llvm.loop !54

.loopexit._crit_edge.i.i:                         ; preds = %.loopexit.i.i
  %.pre.i.i = ptrtoint ptr %.sroa.0.2.i.i to i64
  br label %split68.i.i, !llvm.loop !54

split68.i.i:                                      ; preds = %bb.as, %.loopexit._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.loopexit._crit_edge.i.i ], [ %i.kl, %bb.as ]
  %i.mi = sub i64 %.pre-phi.i.i, %i.jv
  br label %rle_unpack.exit.i

rle_unpack.exit.i:                                ; preds = %split68.i.i, %split.i.i, %bb.av, %bb.ap
  %.036.i.i = phi i64 [ %i.ln, %split.i.i ], [ %i.mi, %split68.i.i ], [ %i.lc, %bb.av ], [ 0, %bb.ap ]
  %i.mj = add nsw i32 %.2.i, %i.jr
  %i.mk = and i64 %.036.i.i, 255
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.jw, i64 %i.mk)
  %i.ml = getelementptr inbounds i8, ptr %i.js, i64 %..i.i
  br label %bb.be

bytestream2_peek_byte.exit.thread.i:              ; preds = %bytestream2_peek_byte.exit.i, %bb.an
  %i.mm = zext i8 %i.jl to i32                    ; 3 uses
  %i.mn = add nsw i32 %.2.i, %i.mm                ; 2 uses
  %i.mo = icmp sgt i32 %i.mn, %i.w
  br i1 %i.mo, label %vmd_decode.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bytestream2_peek_byte.exit.thread.i
  %i.mp = trunc i64 %i.jn to i32                  ; 2 uses
  %i.mq = icmp slt i32 %i.mp, %i.mm
  br i1 %i.mq, label %vmd_decode.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mr = sext i32 %.2.i to i64
  %i.ms = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.mr
  %i.mt = zext i8 %i.jl to i64
  %i.mu = icmp sgt i64 %i.jn, %i.mt
  %i.mv = select i1 %i.mu, i32 %i.mm, i32 %i.mp
  %i.mw = zext nneg i32 %i.mv to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr nonnull align 1 %i.jh, i64 %i.mw, i1 false)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.mw
  br label %bb.be

bytestream2_get_byte.exit259.thread.i:            ; preds = %bytestream2_get_byte.exit259.i, %bb.am
  %.0.i258327.i = phi i32 [ %i.jj, %bytestream2_get_byte.exit259.i ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.12326.i = phi ptr [ %i.jh, %bytestream2_get_byte.exit259.i ], [ %.sroa.51.1.i, %bb.am ]
  %i.my = add nsw i32 %.0.i258327.i, %.2.i
  %i.mz = icmp sle i32 %i.my, %i.v
  %or.cond11.i = select i1 %i.mz, i1 %i.jd, i1 false
  br i1 %or.cond11.i, label %bb.bd, label %vmd_decode.exit.thread

bb.bd:                                            ; preds = %bytestream2_get_byte.exit259.thread.i
  %i.na = sext i32 %.2.i to i64                   ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.na
  %i.nc = getelementptr inbounds i8, ptr %.2203364.i, i64 %i.na
  %i.nd = add nuw nsw i32 %.0.i258327.i, 1        ; 2 uses
  %i.ne = zext nneg i32 %i.nd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nb, ptr noundef nonnull align 1 dereferenceable(1) %i.nc, i64 %i.ne, i1 false)
  %i.nf = add nsw i32 %i.nd, %.2.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %rle_unpack.exit.i
  %.sroa.0.10.i = phi ptr [ %.sroa.0.12326.i, %bb.bd ], [ %i.ml, %rle_unpack.exit.i ], [ %i.mx, %bb.bc ] ; 2 uses
  %.3.i = phi i32 [ %i.nf, %bb.bd ], [ %i.mj, %rle_unpack.exit.i ], [ %i.mn, %bb.bc ] ; 4 uses
  %.not239.i = icmp sgt i32 %.3.i, %i.v
  br i1 %.not239.i, label %bb.bf, label %bb.am, !llvm.loop !55

bb.bf:                                            ; preds = %bb.be
  %i.ng = icmp sgt i32 %.3.i, %i.w
  br i1 %i.ng, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.nh = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nh, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %.3.i, i32 noundef %i.w) #8
  br label %vmd_decode.exit.thread

bb.bh:                                            ; preds = %bb.bf
  %i.ni = load i32, ptr %i.fw, align 8, !tbaa !36
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.nj
  %i.nl = getelementptr inbounds i8, ptr %.2203364.i, i64 %.0198.i
  %i.nm = add nuw nsw i32 %.3212362.i, 1
  %exitcond400.not.i = icmp eq i32 %.3212362.i, %i.aa
  br i1 %exitcond400.not.i, label %vmd_decode.exit, label %.preheader342.i, !llvm.loop !56

vmd_decode.exit.loopexit167.unr-lcssa:            ; preds = %bb.al
  %4 = and i32 %i.aa, 1
  %lcmp.mod.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod.not, label %.epil.preheader, label %vmd_decode.exit

.epil.preheader:                                  ; preds = %vmd_decode.exit.loopexit167.unr-lcssa, %.lr.ph.i
  %.1205368.i.epil.init = phi ptr [ %i.gb, %.lr.ph.i ], [ %i.jc, %vmd_decode.exit.loopexit167.unr-lcssa ]
  %.sroa.0.7366.i.epil.init = phi ptr [ %.sroa.0.3.i, %.lr.ph.i ], [ %i.iz, %vmd_decode.exit.loopexit167.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.nn = ptrtoint ptr %.sroa.0.7366.i.epil.init to i64
  %i.no = sub i64 %i.gn, %i.nn
  %i.np = tail call i64 @llvm.smin.i64(i64 %i.no, i64 %i.go)
  %i.nq = and i64 %i.np, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1205368.i.epil.init, ptr align 1 %.sroa.0.7366.i.epil.init, i64 %i.nq, i1 false)
  br label %vmd_decode.exit

vmd_decode.exit:                                  ; preds = %bb.bh, %.epil.preheader, %vmd_decode.exit.loopexit167.unr-lcssa, %bb.ak, %.preheader338.i, %.preheader340.i, %.preheader344.i, %bb.ac
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !66
  %i.nt = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.ns, ptr noundef nonnull align 4 dereferenceable(1024) %i.nt, i64 1024, i1 false)
  %i.nu = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.nv = tail call i32 @av_frame_replace(ptr noundef %i.nu, ptr noundef nonnull %1) #8 ; 2 uses
  %i.nw = icmp slt i32 %i.nv, 0
  br i1 %i.nw, label %vmd_decode.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %vmd_decode.exit
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %vmd_decode.exit.thread

vmd_decode.exit.thread:                           ; preds = %bytestream2_peek_byte.exit.thread.i, %bb.bb, %bytestream2_get_byte.exit259.thread.i, %bytestream2_get_byte.exit261.thread.i, %bb.af, %.preheader.split.us.i, %bytestream2_get_byte.exit261.us.i, %bb.ad, %bb.v, %bb.s, %bb.bg, %bb.aj, %.thread.i, %bb.w, %bb.l, %bb.i, %vmd_decode.exit, %bb.b, %bb.a, %bb.bi
  %.0 = phi i32 [ %i.d, %bb.bi ], [ -1094995529, %bb.a ], [ %i.j, %bb.b ], [ %i.nv, %vmd_decode.exit ], [ -1094995529, %bb.bg ], [ -1094995529, %bb.aj ], [ -1094995529, %.thread.i ], [ %i.fp, %bb.w ], [ -1094995529, %bb.l ], [ -1094995529, %bytestream2_get_byte.exit261.thread.i ], [ -1094995529, %bb.i ], [ -1094995529, %bb.v ], [ -1094995529, %bb.s ], [ -1094995529, %.preheader.split.us.i ], [ -1094995529, %bb.ad ], [ -1094995529, %bytestream2_get_byte.exit261.us.i ], [ -1094995529, %bb.af ], [ -1094995529, %bytestream2_get_byte.exit259.thread.i ], [ -1094995529, %bb.bb ], [ -1094995529, %bytestream2_peek_byte.exit.thread.i ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @vmdvideo_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1056
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  store i32 0, ptr %i.e, align 8, !tbaa !34
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lz_unpack(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp ne ptr %0, null
  %i.c = icmp sgt i32 %1, -1
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 5 uses
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = ptrtoint ptr %i.e to i64                 ; 10 uses
  %i.i = icmp samesign ult i32 %1, 4
  br i1 %i.i, label %bytestream2_get_le32.exit, label %bb.c

bb.c:                                             ; preds = %bytestream2_init.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %0, align 1, !tbaa !33
  %.pre = ptrtoint ptr %i.j to i64
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bytestream2_init.exit, %bb.c
  %.pre-phi = phi i64 [ %i.h, %bytestream2_init.exit ], [ %.pre, %bb.c ]
  %.sroa.0.10 = phi ptr [ %i.e, %bytestream2_init.exit ], [ %i.j, %bb.c ] ; 4 uses
  %.0.i73 = phi i32 [ 0, %bytestream2_init.exit ], [ %i.k, %bb.c ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 32, i64 4096, i1 false)
  %i.l = sub i64 %i.h, %.pre-phi                  ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp slt i32 %i.m, 4
  br i1 %i.n, label %.loopexit119, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_le32.exit
  %i.o = icmp slt i64 %i.l, 4
  br i1 %i.o, label %bytestream2_peek_le32.exit.thread, label %bytestream2_peek_le32.exit

bytestream2_peek_le32.exit:                       ; preds = %bb.d
  %i.p = load i32, ptr %.sroa.0.10, align 1, !tbaa !33
  %i.q = icmp eq i32 %i.p, 1450709556
  br i1 %i.q, label %bb.e, label %bytestream2_peek_le32.exit.thread

bb.e:                                             ; preds = %bytestream2_peek_le32.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 4 ; 2 uses
  %.pre153 = ptrtoint ptr %i.r to i64
  %.pre155 = sub i64 %i.h, %.pre153
  %.pre157 = trunc i64 %.pre155 to i32
  %i.s = icmp sgt i32 %.pre157, 0
  br label %bytestream2_peek_le32.exit.thread

bytestream2_peek_le32.exit.thread:                ; preds = %bb.d, %bytestream2_peek_le32.exit, %bb.e
  %.pre-phi158 = phi i1 [ true, %bb.d ], [ true, %bytestream2_peek_le32.exit ], [ %i.s, %bb.e ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.10, %bb.d ], [ %.sroa.0.10, %bytestream2_peek_le32.exit ], [ %i.r, %bb.e ]
  %.055 = phi i32 [ 4078, %bb.d ], [ 4078, %bytestream2_peek_le32.exit ], [ 273, %bb.e ]
  %.050 = phi i32 [ 100, %bb.d ], [ 100, %bytestream2_peek_le32.exit ], [ 18, %bb.e ]
  %.not141 = icmp ne i32 %.0.i73, 0
  %or.cond108142 = select i1 %.not141, i1 %.pre-phi158, i1 false
  br i1 %or.cond108142, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bytestream2_peek_le32.exit.thread
  %i.t = ptrtoint ptr %i.g to i64                 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit
  %.053146 = phi i32 [ %.0.i73, %.lr.ph ], [ %.3, %.loopexit ] ; 3 uses
  %.156145 = phi i32 [ %.055, %.lr.ph ], [ %.6, %.loopexit ] ; 10 uses
  %.059144 = phi ptr [ %2, %.lr.ph ], [ %.564, %.loopexit ] ; 11 uses
  %.sroa.0.1143 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.6, %.loopexit ] ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 1 ; 3 uses
  %i.v = load i8, ptr %.sroa.0.1143, align 1, !tbaa !33 ; 2 uses
  %i.w = icmp eq i8 %i.v, -1
  %i.x = icmp ugt i32 %.053146, 8
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.g, label %.preheader118.preheader

.preheader118.preheader:                          ; preds = %bb.f
  %i.y = zext i8 %i.v to i32
  br label %.preheader118

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %.059144 to i64
  %i.aa = sub i64 %i.t, %i.z
  %i.ab = icmp slt i64 %i.aa, 8
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = sub i64 %i.h, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp slt i32 %i.ae, 8
  %or.cond112 = select i1 %i.ab, i1 true, i1 %i.af
  br i1 %or.cond112, label %.loopexit119, label %.preheader117.preheader

.preheader117.preheader:                          ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 2
  %i.ah = load i8, ptr %i.u, align 1, !tbaa !33   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.059144, i64 1
  store i8 %i.ah, ptr %.059144, align 1, !tbaa !33
  %i.aj = add nuw nsw i32 %.156145, 1
  %i.ak = zext i32 %.156145 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  store i8 %i.ah, ptr %i.al, align 1, !tbaa !33
  %i.am = and i32 %i.aj, 4095
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 3
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !33  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.059144, i64 2
  store i8 %i.ao, ptr %i.ai, align 1, !tbaa !33
  %i.aq = add nsw i32 %.156145, 2
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !33
  %i.at = and i32 %i.aq, 4095
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 4
  %i.av = load i8, ptr %i.an, align 1, !tbaa !33  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.059144, i64 3
  store i8 %i.av, ptr %i.ap, align 1, !tbaa !33
  %i.ax = add nsw i32 %.156145, 3
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !33
  %i.ba = and i32 %i.ax, 4095
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 5
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !33  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.059144, i64 4
  store i8 %i.bc, ptr %i.aw, align 1, !tbaa !33
  %i.be = add nsw i32 %.156145, 4
  %i.bf = zext nneg i32 %i.ba to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  store i8 %i.bc, ptr %i.bg, align 1, !tbaa !33
  %i.bh = and i32 %i.be, 4095
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 6
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !33  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.059144, i64 5
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !33
  %i.bl = add nsw i32 %.156145, 5
  %i.bm = zext nneg i32 %i.bh to i64
end_hunk_0
