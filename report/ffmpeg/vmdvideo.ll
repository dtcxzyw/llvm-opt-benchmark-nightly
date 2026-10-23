Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vmdvideo?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 %i.d, ptr %i.h, align 8, !tbaa !60
  %i.i = icmp slt i32 %i.d, 16
  br i1 %i.i, label %vmd_decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #8 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %vmd_decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !59   ; 6 uses
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61 ; 4 uses
  %i.af = icmp eq i32 %i.w, %i.ae                 ; 2 uses
  br i1 %i.af, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !62
  %i.ai = icmp eq i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp ne i16 %i.n, 0
  %i.ak = icmp ne i16 %i.q, 0
  %or.cond.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 1068
  store i32 %i.o, ptr %i.al, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 1072
  store i32 %i.r, ptr %i.am, align 8, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 1068
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63 ; 2 uses
  %i.ap = sub nsw i32 %i.o, %i.ao                 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 1072
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
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
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !62 ; 5 uses
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
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65 ; 2 uses
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
  %i.bi = load ptr, ptr %1, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !36
  %i.bl = mul nsw i32 %i.bk, %i.ba
  %i.bm = sext i32 %i.bl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %i.bf, i64 %i.bm, i1 false)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !59
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bn = phi ptr [ %i.l, %bb.n ], [ %.pre.i, %bb.o ], [ %i.l, %bb.m ] ; 5 uses
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !60  ; 3 uses
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
  %i.cc = getelementptr i8, ptr %i.f, i64 1052
  %i.cd = getelementptr i8, ptr %i.bn, i64 %i.bw
  %i.ce = getelementptr i8, ptr %i.cd, i64 768
  %bound0 = icmp ult ptr %i.bx, %i.ce
  %bound1 = icmp ult ptr %i.cb, %i.cc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader346.i, label %vector.ph

vector.ph:                                        ; preds = %.preheader346.preheader.i
  %i.cf = getelementptr i8, ptr %i.cb, i64 768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cg ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cb, i64 %i.cg  ; 3 uses
  %next.gep141 = getelementptr i8, ptr %i.ch, i64 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.cg  ; 3 uses
  %next.gep142 = getelementptr i8, ptr %i.ci, i64 6
  %i.cj = getelementptr i8, ptr %i.cb, i64 %i.cg  ; 3 uses
  %next.gep143 = getelementptr i8, ptr %i.cj, i64 9
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cl = getelementptr i8, ptr %i.ch, i64 4
  %i.cm = getelementptr i8, ptr %i.ci, i64 7
  %i.cn = getelementptr i8, ptr %i.cj, i64 10
  %i.co = load i8, ptr %next.gep, align 1, !tbaa !33, !alias.scope !66
  %i.cp = load i8, ptr %next.gep141, align 1, !tbaa !33, !alias.scope !66
  %i.cq = load i8, ptr %next.gep142, align 1, !tbaa !33, !alias.scope !66
  %i.cr = load i8, ptr %next.gep143, align 1, !tbaa !33, !alias.scope !66
  %i.cs = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 1
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 2
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cr, i64 3
  %i.cw = zext <4 x i8> %i.cv to <4 x i32>
  %i.cx = shl nuw nsw <4 x i32> %i.cw, splat (i32 18)
  %i.cy = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cz = getelementptr i8, ptr %i.ch, i64 5
  %i.da = getelementptr i8, ptr %i.ci, i64 8
  %i.db = getelementptr i8, ptr %i.cj, i64 11
  %i.dc = load i8, ptr %i.ck, align 1, !tbaa !33, !alias.scope !66
  %i.dd = load i8, ptr %i.cl, align 1, !tbaa !33, !alias.scope !66
  %i.de = load i8, ptr %i.cm, align 1, !tbaa !33, !alias.scope !66
  %i.df = load i8, ptr %i.cn, align 1, !tbaa !33, !alias.scope !66
  %i.dg = insertelement <4 x i8> poison, i8 %i.dc, i64 0
  %i.dh = insertelement <4 x i8> %i.dg, i8 %i.dd, i64 1
  %i.di = insertelement <4 x i8> %i.dh, i8 %i.de, i64 2
  %i.dj = insertelement <4 x i8> %i.di, i8 %i.df, i64 3
  %i.dk = zext <4 x i8> %i.dj to <4 x i32>
  %i.dl = shl nuw nsw <4 x i32> %i.dk, splat (i32 10)
  %i.dm = load i8, ptr %i.cy, align 1, !tbaa !33, !alias.scope !66
  %i.dn = load i8, ptr %i.cz, align 1, !tbaa !33, !alias.scope !66
  %i.do = load i8, ptr %i.da, align 1, !tbaa !33, !alias.scope !66
  %i.dp = load i8, ptr %i.db, align 1, !tbaa !33, !alias.scope !66
  %i.dq = insertelement <4 x i8> poison, i8 %i.dm, i64 0
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 1
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.do, i64 2
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 3
  %i.du = zext <4 x i8> %i.dt to <4 x i32>
  %i.dv = shl nuw nsw <4 x i32> %i.du, splat (i32 2)
  %i.dw = and <4 x i32> %i.dl, splat (i32 64512)
  %i.dx = or disjoint <4 x i32> %i.dw, %i.cx
  %i.dy = and <4 x i32> %i.dv, splat (i32 252)
  %i.dz = or disjoint <4 x i32> %i.dx, %i.dy      ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index
  %i.eb = lshr <4 x i32> %i.dz, splat (i32 6)
  %i.ec = and <4 x i32> %i.eb, splat (i32 197379)
  %i.ed = or disjoint <4 x i32> %i.dz, %i.ec
  %i.ee = or <4 x i32> %i.ed, splat (i32 -16777216)
  store <4 x i32> %i.ee, ptr %i.ea, align 4, !tbaa !36, !alias.scope !67, !noalias !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, 256
  br i1 %i.ef, label %.thread.i, label %vector.body, !llvm.loop !46

.preheader346.i:                                  ; preds = %.preheader346.preheader.i, %.preheader346.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader346.i ], [ 0, %.preheader346.preheader.i ] ; 2 uses
  %.sroa.0.0358.i = phi ptr [ %i.eo, %.preheader346.i ], [ %i.cb, %.preheader346.preheader.i ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0358.i, i64 1
  %i.eh = load i8, ptr %.sroa.0.0358.i, align 1, !tbaa !33
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 18
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0358.i, i64 2
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !33
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 10
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0358.i, i64 3 ; 2 uses
  %i.ep = load i8, ptr %i.ek, align 1, !tbaa !33
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 2
  %i.es = and i32 %i.en, 64512
  %i.et = or disjoint i32 %i.es, %i.ej
  %i.eu = and i32 %i.er, 252
  %i.ev = or disjoint i32 %i.et, %i.eu            ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ex = lshr i32 %i.ev, 6
  %i.ey = and i32 %i.ex, 197379
  %i.ez = or disjoint i32 %i.ev, %i.ey
  %i.fa = or i32 %i.ez, -16777216
  store i32 %i.fa, ptr %i.ew, align 4, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.thread.i, label %.preheader346.i, !llvm.loop !47

bb.s:                                             ; preds = %bb.r
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fb, i32 noundef 16, ptr noundef nonnull @.str.5) #8
  br label %vmd_decode.exit.thread

.thread.i:                                        ; preds = %vector.body, %.preheader346.i, %bytestream2_init.exit256.i
  %.sroa.0.1311.i = phi ptr [ %i.bq, %bytestream2_init.exit256.i ], [ %i.eo, %.preheader346.i ], [ %i.cf, %vector.body ] ; 3 uses
  %i.fc = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.fd = ptrtoint ptr %.sroa.0.1311.i to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = icmp slt i32 %i.ff, 1
  br i1 %i.fg, label %vmd_decode.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.1311.i, i64 1 ; 3 uses
  %i.fi = load i8, ptr %.sroa.0.1311.i, align 1, !tbaa !33 ; 3 uses
  %.not234.i = icmp sgt i8 %i.fi, -1
  br i1 %.not234.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !34 ; 2 uses
  %.not235.i = icmp eq i32 %i.fk, 0
  br i1 %.not235.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fl, i32 noundef 16, ptr noundef nonnull @.str.6) #8
  br label %vmd_decode.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = sub i64 %i.fc, %i.fm
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 1056 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !35
  %i.fr = tail call fastcc i32 @lz_unpack(ptr noundef nonnull %i.fh, i32 noundef %i.fo, ptr noundef %i.fq, i32 noundef %i.fk) ; 3 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %vmd_decode.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !35 ; 3 uses
  %.not337.i = icmp eq ptr %i.ft, null
  br i1 %.not337.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fu = and i8 %i.fi, 127
  %i.fv = zext nneg i32 %i.fr to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fv
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.sroa.51.1.i = phi ptr [ %i.bs, %bb.t ], [ %i.fw, %bb.z ] ; 5 uses
  %.sroa.0.3.i = phi ptr [ %i.fh, %bb.t ], [ %i.ft, %bb.z ] ; 4 uses
  %.1208.i = phi i8 [ %i.fi, %bb.t ], [ %i.fu, %bb.z ]
  %i.fx = load ptr, ptr %1, align 8, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !36
  %i.ga = mul nsw i32 %i.fz, %i.as
  %i.gb = add nsw i32 %i.ga, %i.ap
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %i.fx, i64 %i.gc ; 4 uses
  %i.ge = load ptr, ptr %i.bd, align 8, !tbaa !38 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65 ; 2 uses
  %.not236.i = icmp eq ptr %i.gf, null
  br i1 %.not236.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !36 ; 2 uses
  %i.gi = mul nsw i32 %i.gh, %i.as
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.gf, i64 %i.gj
  %i.gl = zext nneg i32 %i.ap to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  %i.gn = sext i32 %i.gh to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0201.i = phi ptr [ %i.gm, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %.0198.i = phi i64 [ %i.gn, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  switch i8 %.1208.i, label %vmd_decode.exit [
    i8 1, label %.preheader338.i
    i8 2, label %.preheader340.i
    i8 3, label %.preheader344.i
  ]

.preheader344.i:                                  ; preds = %bb.ac
  %.not237360.i = icmp slt i32 %i.aa, 0
  br i1 %.not237360.i, label %vmd_decode.exit, label %.preheader342.lr.ph.i

.preheader342.lr.ph.i:                            ; preds = %.preheader344.i
  %i.go = ptrtoint ptr %.sroa.51.1.i to i64       ; 3 uses
  br label %.preheader342.i

.preheader340.i:                                  ; preds = %bb.ac
  %.not240365.i = icmp slt i32 %i.aa, 0
  br i1 %.not240365.i, label %vmd_decode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader340.i
  %i.gp = ptrtoint ptr %.sroa.51.1.i to i64       ; 3 uses
  %i.gq = zext nneg i32 %i.w to i64               ; 3 uses
  %i.gr = icmp eq i16 %i.y, %i.q
  br i1 %i.gr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.ab, 2147483646
  br label %bb.al

.preheader338.i:                                  ; preds = %bb.ac
  %.not241370.i = icmp slt i32 %i.aa, 0
  br i1 %.not241370.i, label %vmd_decode.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader338.i
  %i.gs = ptrtoint ptr %.sroa.51.1.i to i64       ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %.preheader.lr.ph.i
  %.1202374.i = phi ptr [ %.0201.i, %.preheader.lr.ph.i ], [ %i.in, %bb.ak ]
  %.0204373.i = phi ptr [ %i.gd, %.preheader.lr.ph.i ], [ %i.im, %bb.ak ] ; 4 uses
  %.1210372.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.io, %bb.ak ] ; 2 uses
  %.sroa.0.4371.i = phi ptr [ %.sroa.0.3.i, %.preheader.lr.ph.i ], [ %.us-phi.i, %bb.ak ] ; 2 uses
  %.1202374.fr.i = freeze ptr %.1202374.i         ; 3 uses
  %.not375.i = icmp eq ptr %.1202374.fr.i, null
  br i1 %.not375.i, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %bb.ae
  %.sroa.0.5.us.i = phi ptr [ %i.hj, %bb.ae ], [ %.sroa.0.4371.i, %.preheader.i ] ; 3 uses
  %.0199.us.i = phi i32 [ %i.hb, %bb.ae ], [ 0, %.preheader.i ] ; 2 uses
  %i.gt = ptrtoint ptr %.sroa.0.5.us.i to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = icmp slt i64 %i.gu, 1
  br i1 %i.gv, label %vmd_decode.exit.thread, label %bytestream2_get_byte.exit261.us.i

bytestream2_get_byte.exit261.us.i:                ; preds = %.preheader.split.us.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.5.us.i, i64 1 ; 3 uses
  %i.gx = load i8, ptr %.sroa.0.5.us.i, align 1, !tbaa !33 ; 2 uses
  %.not242.us.i = icmp sgt i8 %i.gx, -1
  br i1 %.not242.us.i, label %vmd_decode.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_byte.exit261.us.i
  %i.gy = and i8 %i.gx, 127
  %i.gz = zext nneg i8 %i.gy to i32               ; 2 uses
  %i.ha = add nuw nsw i32 %i.gz, 1                ; 2 uses
  %i.hb = add nuw nsw i32 %i.ha, %.0199.us.i      ; 4 uses
  %i.hc = icmp sle i32 %i.hb, %i.w
  %i.hd = ptrtoint ptr %i.gw to i64
  %i.he = sub i64 %i.gs, %i.hd
  %i.hf = trunc i64 %i.he to i32
  %.not243.us.i = icmp slt i32 %i.gz, %i.hf
  %or.cond331.us.i = select i1 %i.hc, i1 %.not243.us.i, i1 false
  br i1 %or.cond331.us.i, label %bb.ae, label %vmd_decode.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.hg = zext nneg i32 %.0199.us.i to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.0204373.i, i64 %i.hg
  %i.hi = zext nneg i32 %i.ha to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hh, ptr noundef nonnull align 1 dereferenceable(1) %i.gw, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hi ; 2 uses
  %.not244.us.i = icmp sgt i32 %i.hb, %i.v
  br i1 %.not244.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !48

.preheader.split.i:                               ; preds = %.preheader.i, %bb.ai
  %.sroa.0.5.i = phi ptr [ %.sroa.0.6.i, %bb.ai ], [ %.sroa.0.4371.i, %.preheader.i ] ; 3 uses
  %.0199.i = phi i32 [ %.1200.i, %bb.ai ], [ 0, %.preheader.i ] ; 5 uses
  %i.hk = ptrtoint ptr %.sroa.0.5.i to i64
  %i.hl = sub i64 %i.gs, %i.hk
  %i.hm = icmp slt i64 %i.hl, 1
  br i1 %i.hm, label %bytestream2_get_byte.exit261.thread.i, label %bytestream2_get_byte.exit261.i

bytestream2_get_byte.exit261.i:                   ; preds = %.preheader.split.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.5.i, i64 1 ; 4 uses
  %i.ho = load i8, ptr %.sroa.0.5.i, align 1, !tbaa !33 ; 2 uses
  %i.hp = zext i8 %i.ho to i32                    ; 2 uses
  %.not242.i = icmp sgt i8 %i.ho, -1
  br i1 %.not242.i, label %bytestream2_get_byte.exit261.thread.i, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_byte.exit261.i
  %i.hq = and i32 %i.hp, 127                      ; 2 uses
  %i.hr = add nuw nsw i32 %i.hq, 1                ; 2 uses
  %i.hs = add nsw i32 %i.hr, %.0199.i             ; 2 uses
  %i.ht = icmp sle i32 %i.hs, %i.w
  %i.hu = ptrtoint ptr %i.hn to i64
  %i.hv = sub i64 %i.gs, %i.hu
  %i.hw = trunc i64 %i.hv to i32
  %.not243.i = icmp slt i32 %i.hq, %i.hw
  %or.cond331.i = select i1 %i.ht, i1 %.not243.i, i1 false
  br i1 %or.cond331.i, label %bb.ag, label %vmd_decode.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.hx = sext i32 %.0199.i to i64
  %i.hy = getelementptr inbounds i8, ptr %.0204373.i, i64 %i.hx
  %i.hz = zext nneg i32 %i.hr to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hy, ptr noundef nonnull align 1 dereferenceable(1) %i.hn, i64 %i.hz, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hz
  br label %bb.ai

bytestream2_get_byte.exit261.thread.i:            ; preds = %bytestream2_get_byte.exit261.i, %.preheader.split.i
  %.0.i260322.i = phi i32 [ %i.hp, %bytestream2_get_byte.exit261.i ], [ 0, %.preheader.split.i ] ; 2 uses
  %.sroa.0.13321.i = phi ptr [ %i.hn, %bytestream2_get_byte.exit261.i ], [ %.sroa.51.1.i, %.preheader.split.i ]
  %i.ib = add nsw i32 %.0.i260322.i, %.0199.i
  %.not376.i = icmp sgt i32 %i.ib, %i.v
  br i1 %.not376.i, label %vmd_decode.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bytestream2_get_byte.exit261.thread.i
  %i.ic = sext i32 %.0199.i to i64                ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.0204373.i, i64 %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.1202374.fr.i, i64 %i.ic
  %i.if = add nuw nsw i32 %.0.i260322.i, 1        ; 2 uses
  %i.ig = zext nneg i32 %i.if to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.id, ptr noundef nonnull align 1 dereferenceable(1) %i.ie, i64 %i.ig, i1 false)
  %i.ih = add nsw i32 %i.if, %.0199.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0.6.i = phi ptr [ %.sroa.0.13321.i, %bb.ah ], [ %i.ia, %bb.ag ] ; 2 uses
  %.1200.i = phi i32 [ %i.ih, %bb.ah ], [ %i.hs, %bb.ag ] ; 3 uses
  %.not244.i = icmp sgt i32 %.1200.i, %i.v
  br i1 %.not244.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !48

.split.us.i:                                      ; preds = %bb.ai, %bb.ae
  %.us-phi.i = phi ptr [ %i.hj, %bb.ae ], [ %.sroa.0.6.i, %bb.ai ]
  %.us-phi369.i = phi i32 [ %i.hb, %bb.ae ], [ %.1200.i, %bb.ai ] ; 2 uses
  %i.ii = icmp sgt i32 %.us-phi369.i, %i.w
  br i1 %i.ii, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split.us.i
  %i.ij = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ij, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %.us-phi369.i, i32 noundef %i.w) #8
  br label %vmd_decode.exit.thread

bb.ak:                                            ; preds = %.split.us.i
  %i.ik = load i32, ptr %i.fy, align 8, !tbaa !36
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %.0204373.i, i64 %i.il
  %i.in = getelementptr inbounds i8, ptr %.1202374.fr.i, i64 %.0198.i
  %i.io = add nuw nsw i32 %.1210372.i, 1
  %exitcond402.not.i = icmp eq i32 %.1210372.i, %i.aa
  br i1 %exitcond402.not.i, label %vmd_decode.exit, label %.preheader.i, !llvm.loop !49

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.new
  %.1205368.i = phi ptr [ %i.gd, %.lr.ph.i.new ], [ %i.je, %bb.al ] ; 2 uses
  %.sroa.0.7366.i = phi ptr [ %.sroa.0.3.i, %.lr.ph.i.new ], [ %i.jb, %bb.al ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.al ]
  %i.ip = ptrtoint ptr %.sroa.0.7366.i to i64
  %i.iq = sub i64 %i.gp, %i.ip
  %i.ir = tail call i64 @llvm.smin.i64(i64 %i.iq, i64 %i.gq)
  %i.is = and i64 %i.ir, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1205368.i, ptr align 1 %.sroa.0.7366.i, i64 %i.is, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.7366.i, i64 %i.is ; 3 uses
  %i.iu = load i32, ptr %i.fy, align 8, !tbaa !36
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %.1205368.i, i64 %i.iv ; 2 uses
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.gp, %i.ix
  %i.iz = tail call i64 @llvm.smin.i64(i64 %i.iy, i64 %i.gq)
  %i.ja = and i64 %i.iz, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iw, ptr align 1 %i.it, i64 %i.ja, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ja ; 2 uses
  %i.jc = load i32, ptr %i.fy, align 8, !tbaa !36
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %i.iw, i64 %i.jd ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vmd_decode.exit.loopexit166.unr-lcssa, label %bb.al, !llvm.loop !50

.preheader342.i:                                  ; preds = %bb.bh, %.preheader342.lr.ph.i
  %.2203364.i = phi ptr [ %.0201.i, %.preheader342.lr.ph.i ], [ %i.nm, %bb.bh ] ; 3 uses
  %.2206363.i = phi ptr [ %i.gd, %.preheader342.lr.ph.i ], [ %i.nl, %bb.bh ] ; 4 uses
  %.3212362.i = phi i32 [ 0, %.preheader342.lr.ph.i ], [ %i.nn, %bb.bh ] ; 2 uses
  %.sroa.0.8361.i = phi ptr [ %.sroa.0.3.i, %.preheader342.lr.ph.i ], [ %.sroa.0.10.i, %bb.bh ]
  %i.jf = icmp ne ptr %.2203364.i, null
  br label %bb.am

bb.am:                                            ; preds = %bb.be, %.preheader342.i
  %.sroa.0.9.i = phi ptr [ %.sroa.0.10.i, %bb.be ], [ %.sroa.0.8361.i, %.preheader342.i ] ; 5 uses
  %.2.i = phi i32 [ %.3.i, %bb.be ], [ 0, %.preheader342.i ] ; 8 uses
  %i.jg = ptrtoint ptr %.sroa.0.9.i to i64
  %i.jh = sub i64 %i.go, %i.jg
  %i.ji = icmp slt i64 %i.jh, 1
  br i1 %i.ji, label %bytestream2_get_byte.exit259.thread.i, label %bytestream2_get_byte.exit259.i

bytestream2_get_byte.exit259.i:                   ; preds = %bb.am
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.9.i, i64 1 ; 5 uses
  %i.jk = load i8, ptr %.sroa.0.9.i, align 1, !tbaa !33 ; 3 uses
  %i.jl = zext nneg i8 %i.jk to i32
  %.not238.i = icmp sgt i8 %i.jk, -1
  br i1 %.not238.i, label %bytestream2_get_byte.exit259.thread.i, label %bb.an

bb.an:                                            ; preds = %bytestream2_get_byte.exit259.i
  %i.jm = and i8 %i.jk, 127
  %i.jn = add nuw i8 %i.jm, 1                     ; 3 uses
  %i.jo = ptrtoint ptr %i.jj to i64
  %i.jp = sub i64 %i.go, %i.jo                    ; 3 uses
  %i.jq = icmp slt i64 %i.jp, 1
  br i1 %i.jq, label %bytestream2_peek_byte.exit.thread.i, label %bytestream2_peek_byte.exit.i

bytestream2_peek_byte.exit.i:                     ; preds = %bb.an
  %i.jr = load i8, ptr %i.jj, align 1, !tbaa !33
  %i.js = icmp eq i8 %i.jr, -1
  br i1 %i.js, label %bytestream2_get_byte.exit.i, label %bytestream2_peek_byte.exit.thread.i

bytestream2_get_byte.exit.i:                      ; preds = %bytestream2_peek_byte.exit.i
  %i.jt = zext i8 %i.jn to i32                    ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.9.i, i64 2 ; 5 uses
  %i.jv = sext i32 %.2.i to i64
  %i.jw = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.jv ; 4 uses
  %i.jx = ptrtoint ptr %i.ju to i64               ; 4 uses
  %i.jy = sub i64 %i.go, %i.jx                    ; 3 uses
  %i.jz = trunc i64 %i.jy to i32                  ; 2 uses
  %i.ka = sub nsw i32 %i.w, %.2.i
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %i.jw, i64 %i.kb
  %i.kd = icmp sgt i32 %i.jz, -1
  br i1 %i.kd, label %bytestream2_init.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bytestream2_get_byte.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit.i.i:                        ; preds = %bytestream2_get_byte.exit.i
  %i.ke = and i64 %i.jy, 2147483647
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ke ; 2 uses
  %i.kg = and i32 %i.jt, 1
  %.not.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bytestream2_init.exit.i.i
  %i.kh = icmp eq i32 %i.jz, 0
  br i1 %i.kh, label %rle_unpack.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.9.i, i64 3
  %i.kj = load i8, ptr %i.ju, align 1, !tbaa !33
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 %i.kj, ptr %i.jw, align 1, !tbaa !33
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bytestream2_init.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ju, %bytestream2_init.exit.i.i ], [ %i.ki, %bb.aq ]
  %.034.i.i = phi ptr [ %i.jw, %bytestream2_init.exit.i.i ], [ %i.kk, %bb.aq ]
  %.0.i263.i = phi i32 [ 0, %bytestream2_init.exit.i.i ], [ 1, %bb.aq ]
  %i.kl = ptrtoint ptr %i.kf to i64               ; 3 uses
  %i.km = ptrtoint ptr %i.kc to i64               ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i.i, %bb.ar
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.ar ], [ %.sroa.0.2.i.i, %.loopexit.i.i ] ; 4 uses
  %.135.i.i = phi ptr [ %.034.i.i, %bb.ar ], [ %.3.i.i, %.loopexit.i.i ] ; 23 uses
  %.1.i.i = phi i32 [ %.0.i263.i, %bb.ar ], [ %i.mh, %.loopexit.i.i ]
  %i.kn = ptrtoint ptr %.sroa.0.1.i.i to i64      ; 2 uses
  %i.ko = sub i64 %i.kl, %i.kn
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = icmp slt i32 %i.kp, 1
  br i1 %i.kq, label %split68.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 5 uses
  %i.ks = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !33 ; 6 uses
  %i.kt = zext i8 %i.ks to i32                    ; 3 uses
  %.not40.i.i = icmp sgt i8 %i.ks, -1
  br i1 %.not40.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ku = shl nuw nsw i32 %i.kt, 1
  %i.kv = and i32 %i.ku, 254                      ; 3 uses
  %i.kw = ptrtoint ptr %.135.i.i to i64
  %i.kx = sub i64 %i.km, %i.kw
  %i.ky = zext nneg i32 %i.kv to i64              ; 4 uses
  %i.kz = icmp slt i64 %i.kx, %i.ky
  %i.la = ptrtoint ptr %i.kr to i64               ; 2 uses
  %i.lb = sub i64 %i.kl, %i.la
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = icmp sgt i32 %i.kv, %i.lc
  %or.cond.i264.i = select i1 %i.kz, i1 true, i1 %i.ld
  br i1 %or.cond.i264.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.le = sub i64 %i.la, %i.jx
  br label %rle_unpack.exit.i

bb.aw:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.135.i.i, ptr nonnull align 1 %i.kr, i64 %i.ky, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ky
  %i.lg = getelementptr inbounds nuw i8, ptr %.135.i.i, i64 %i.ky
  br label %.loopexit.i.i

bb.ax:                                            ; preds = %bb.at
  %i.lh = ptrtoint ptr %.135.i.i to i64
  %i.li = sub i64 %i.km, %i.lh
  %i.lj = shl nuw nsw i32 %i.kt, 1                ; 5 uses
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = icmp slt i64 %i.li, %i.lk
  %.pre69.i.i = ptrtoint ptr %i.kr to i64         ; 2 uses
  br i1 %i.ll, label %split.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lm = sub i64 %i.kl, %.pre69.i.i              ; 2 uses
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = icmp slt i32 %i.ln, 2
  br i1 %i.lo, label %split.i.i, label %bb.az

split.i.i:                                        ; preds = %bb.ay, %bb.ax
  %i.lp = sub i64 %.pre69.i.i, %i.jx
  br label %rle_unpack.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.lq = icmp slt i64 %i.lm, 2
  br i1 %i.lq, label %bytestream2_get_le16.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 3
  %i.ls = load i16, ptr %i.kr, align 1, !tbaa !33
  br label %bytestream2_get_le16.exit.i.i

bytestream2_get_le16.exit.i.i:                    ; preds = %bb.ba, %bb.az
  %.sroa.0.4.i.i = phi ptr [ %i.lr, %bb.ba ], [ %i.kf, %bb.az ] ; 4 uses
  %.0.i.i.i = phi i16 [ %i.ls, %bb.ba ], [ 0, %bb.az ] ; 3 uses
  %.not65.i.i = icmp eq i8 %i.ks, 0
  br i1 %.not65.i.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bytestream2_get_le16.exit.i.i
  %i.lt = zext nneg i8 %i.ks to i64               ; 5 uses
  %min.iters.check = icmp ult i8 %i.ks, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check145 = icmp ult i8 %i.ks, 16
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check
  %i.lu = and i64 %i.lt, 12
  %n.vec = and i64 %i.lt, 112                     ; 10 uses
  %i.lv = trunc nuw nsw i64 %n.vec to i32
  %i.lw = shl nuw nsw i64 %n.vec, 1
  %i.lx = getelementptr i8, ptr %.135.i.i, i64 %i.lw ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 14 uses
  %4 = getelementptr i8, ptr %.135.i.i, i64 16
  store <8 x i16> %broadcast.splat, ptr %.135.i.i, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %4, align 1, !tbaa !33
  %5 = icmp eq i64 %n.vec, 16
  br i1 %5, label %middle.block151, label %vector.body147.1

vector.body147.1:                                 ; preds = %vector.ph146
  %next.gep149.1 = getelementptr i8, ptr %.135.i.i, i64 32
  %6 = getelementptr i8, ptr %.135.i.i, i64 48
  store <8 x i16> %broadcast.splat, ptr %next.gep149.1, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %6, align 1, !tbaa !33
  %7 = icmp eq i64 %n.vec, 32
  br i1 %7, label %middle.block151, label %vector.body147.2

vector.body147.2:                                 ; preds = %vector.body147.1
  %next.gep149.2 = getelementptr i8, ptr %.135.i.i, i64 64
  %8 = getelementptr i8, ptr %.135.i.i, i64 80
  store <8 x i16> %broadcast.splat, ptr %next.gep149.2, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %8, align 1, !tbaa !33
  %9 = icmp eq i64 %n.vec, 48
  br i1 %9, label %middle.block151, label %vector.body147.3

vector.body147.3:                                 ; preds = %vector.body147.2
  %next.gep149.3 = getelementptr i8, ptr %.135.i.i, i64 96
  %10 = getelementptr i8, ptr %.135.i.i, i64 112
  store <8 x i16> %broadcast.splat, ptr %next.gep149.3, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %10, align 1, !tbaa !33
  %11 = icmp eq i64 %n.vec, 64
  br i1 %11, label %middle.block151, label %vector.body147.4

vector.body147.4:                                 ; preds = %vector.body147.3
  %next.gep149.4 = getelementptr i8, ptr %.135.i.i, i64 128
  %12 = getelementptr i8, ptr %.135.i.i, i64 144
  store <8 x i16> %broadcast.splat, ptr %next.gep149.4, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %12, align 1, !tbaa !33
  %13 = icmp eq i64 %n.vec, 80
  br i1 %13, label %middle.block151, label %vector.body147

vector.body147:                                   ; preds = %vector.body147.4
  %next.gep149 = getelementptr i8, ptr %.135.i.i, i64 160
  %i.ly = getelementptr i8, ptr %.135.i.i, i64 176
  store <8 x i16> %broadcast.splat, ptr %next.gep149, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.ly, align 1, !tbaa !33
  %i.lz = icmp eq i64 %n.vec, 96
  br i1 %i.lz, label %middle.block151, label %vector.body147.6

vector.body147.6:                                 ; preds = %vector.body147
  %next.gep149.6 = getelementptr i8, ptr %.135.i.i, i64 192
  %14 = getelementptr i8, ptr %.135.i.i, i64 208
  store <8 x i16> %broadcast.splat, ptr %next.gep149.6, align 1, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %14, align 1, !tbaa !33
  br label %middle.block151

middle.block151:                                  ; preds = %vector.body147.6, %vector.body147, %vector.body147.4, %vector.body147.3, %vector.body147.2, %vector.body147.1, %vector.ph146
  %cmp.n = icmp eq i64 %n.vec, %i.lt
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block151
  %min.epilog.iters.check = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.lt, 124                  ; 4 uses
  %i.ma = trunc nuw nsw i64 %n.vec153 to i32
  %i.mb = shl nuw nsw i64 %n.vec153, 1
  %i.mc = getelementptr i8, ptr %.135.i.i, i64 %i.mb ; 2 uses
  %broadcast.splatinsert154 = insertelement <4 x i16> poison, i16 %.0.i.i.i, i64 0
  %broadcast.splat155 = shufflevector <4 x i16> %broadcast.splatinsert154, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 2 uses
  %i.md = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %.135.i.i, i64 %i.md
  store <4 x i16> %broadcast.splat155, ptr %next.gep157, align 1, !tbaa !33
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.me, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %n.vec153, %i.lt
  br i1 %cmp.n159, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03364.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.lv, %vec.epilog.iter.check ], [ %i.ma, %vec.epilog.middle.block ]
  %.263.i.i.ph = phi ptr [ %.135.i.i, %iter.check ], [ %i.lx, %vec.epilog.iter.check ], [ %i.mc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.03364.i.i = phi i32 [ %i.mg, %.lr.ph.i.i ], [ %.03364.i.i.ph, %.lr.ph.i.i.preheader ]
  %.263.i.i = phi ptr [ %i.mf, %.lr.ph.i.i ], [ %.263.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i16 %.0.i.i.i, ptr %.263.i.i, align 1, !tbaa !33
  %i.mf = getelementptr inbounds nuw i8, ptr %.263.i.i, i64 2 ; 2 uses
  %i.mg = add nuw nsw i32 %.03364.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.mg, %i.kt
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !52

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %middle.block151, %vec.epilog.middle.block, %bytestream2_get_le16.exit.i.i, %bb.aw
  %.sroa.0.2.i.i = phi ptr [ %i.lf, %bb.aw ], [ %.sroa.0.4.i.i, %bytestream2_get_le16.exit.i.i ], [ %.sroa.0.4.i.i, %middle.block151 ], [ %.sroa.0.4.i.i, %vec.epilog.middle.block ], [ %.sroa.0.4.i.i, %.lr.ph.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.lg, %bb.aw ], [ %.135.i.i, %bytestream2_get_le16.exit.i.i ], [ %i.lx, %middle.block151 ], [ %i.mc, %vec.epilog.middle.block ], [ %i.mf, %.lr.ph.i.i ]
  %.032.i.i = phi i32 [ %i.kv, %bb.aw ], [ %i.lj, %bytestream2_get_le16.exit.i.i ], [ %i.lj, %middle.block151 ], [ %i.lj, %vec.epilog.middle.block ], [ %i.lj, %.lr.ph.i.i ]
  %i.mh = add nuw nsw i32 %.032.i.i, %.1.i.i      ; 2 uses
  %i.mi = icmp samesign ult i32 %i.mh, %i.jt
  br i1 %i.mi, label %bb.as, label %.loopexit._crit_edge.i.i, !llvm.loop !53

.loopexit._crit_edge.i.i:                         ; preds = %.loopexit.i.i
  %.pre.i.i = ptrtoint ptr %.sroa.0.2.i.i to i64
  br label %split68.i.i, !llvm.loop !53

split68.i.i:                                      ; preds = %bb.as, %.loopexit._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.loopexit._crit_edge.i.i ], [ %i.kn, %bb.as ]
  %i.mj = sub i64 %.pre-phi.i.i, %i.jx
  br label %rle_unpack.exit.i

rle_unpack.exit.i:                                ; preds = %split68.i.i, %split.i.i, %bb.av, %bb.ap
  %.036.i.i = phi i64 [ %i.lp, %split.i.i ], [ %i.mj, %split68.i.i ], [ %i.le, %bb.av ], [ 0, %bb.ap ]
  %i.mk = add nsw i32 %.2.i, %i.jt
  %i.ml = and i64 %.036.i.i, 255
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.jy, i64 %i.ml)
  %i.mm = getelementptr inbounds i8, ptr %i.ju, i64 %..i.i
  br label %bb.be

bytestream2_peek_byte.exit.thread.i:              ; preds = %bytestream2_peek_byte.exit.i, %bb.an
  %i.mn = zext i8 %i.jn to i32                    ; 3 uses
  %i.mo = add nsw i32 %.2.i, %i.mn                ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, %i.w
  br i1 %i.mp, label %vmd_decode.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bytestream2_peek_byte.exit.thread.i
  %i.mq = trunc i64 %i.jp to i32                  ; 2 uses
  %i.mr = icmp slt i32 %i.mq, %i.mn
  br i1 %i.mr, label %vmd_decode.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ms = sext i32 %.2.i to i64
  %i.mt = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.ms
  %i.mu = zext i8 %i.jn to i64
  %i.mv = icmp sgt i64 %i.jp, %i.mu
  %i.mw = select i1 %i.mv, i32 %i.mn, i32 %i.mq
  %i.mx = zext nneg i32 %i.mw to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr nonnull align 1 %i.jj, i64 %i.mx, i1 false)
  %i.my = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.mx
  br label %bb.be

bytestream2_get_byte.exit259.thread.i:            ; preds = %bytestream2_get_byte.exit259.i, %bb.am
  %.0.i258327.i = phi i32 [ %i.jl, %bytestream2_get_byte.exit259.i ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.12326.i = phi ptr [ %i.jj, %bytestream2_get_byte.exit259.i ], [ %.sroa.51.1.i, %bb.am ]
  %i.mz = add nsw i32 %.0.i258327.i, %.2.i
  %i.na = icmp sle i32 %i.mz, %i.v
  %or.cond11.i = select i1 %i.na, i1 %i.jf, i1 false
  br i1 %or.cond11.i, label %bb.bd, label %vmd_decode.exit.thread

bb.bd:                                            ; preds = %bytestream2_get_byte.exit259.thread.i
  %i.nb = sext i32 %.2.i to i64                   ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.nb
  %i.nd = getelementptr inbounds i8, ptr %.2203364.i, i64 %i.nb
  %i.ne = add nuw nsw i32 %.0.i258327.i, 1        ; 2 uses
  %i.nf = zext nneg i32 %i.ne to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nc, ptr noundef nonnull align 1 dereferenceable(1) %i.nd, i64 %i.nf, i1 false)
  %i.ng = add nsw i32 %i.ne, %.2.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %rle_unpack.exit.i
  %.sroa.0.10.i = phi ptr [ %.sroa.0.12326.i, %bb.bd ], [ %i.mm, %rle_unpack.exit.i ], [ %i.my, %bb.bc ] ; 2 uses
  %.3.i = phi i32 [ %i.ng, %bb.bd ], [ %i.mk, %rle_unpack.exit.i ], [ %i.mo, %bb.bc ] ; 4 uses
  %.not239.i = icmp sgt i32 %.3.i, %i.v
  br i1 %.not239.i, label %bb.bf, label %bb.am, !llvm.loop !54

bb.bf:                                            ; preds = %bb.be
  %i.nh = icmp sgt i32 %.3.i, %i.w
  br i1 %i.nh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ni = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ni, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %.3.i, i32 noundef %i.w) #8
  br label %vmd_decode.exit.thread

bb.bh:                                            ; preds = %bb.bf
  %i.nj = load i32, ptr %i.fy, align 8, !tbaa !36
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds i8, ptr %.2206363.i, i64 %i.nk
  %i.nm = getelementptr inbounds i8, ptr %.2203364.i, i64 %.0198.i
  %i.nn = add nuw nsw i32 %.3212362.i, 1
  %exitcond400.not.i = icmp eq i32 %.3212362.i, %i.aa
  br i1 %exitcond400.not.i, label %vmd_decode.exit, label %.preheader342.i, !llvm.loop !55

vmd_decode.exit.loopexit166.unr-lcssa:            ; preds = %bb.al
  %i.no = and i32 %i.aa, 1
  %lcmp.mod.not.not = icmp eq i32 %i.no, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %vmd_decode.exit

.epil.preheader:                                  ; preds = %vmd_decode.exit.loopexit166.unr-lcssa, %.lr.ph.i
  %.1205368.i.epil.init = phi ptr [ %i.gd, %.lr.ph.i ], [ %i.je, %vmd_decode.exit.loopexit166.unr-lcssa ]
  %.sroa.0.7366.i.epil.init = phi ptr [ %.sroa.0.3.i, %.lr.ph.i ], [ %i.jb, %vmd_decode.exit.loopexit166.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.np = ptrtoint ptr %.sroa.0.7366.i.epil.init to i64
  %i.nq = sub i64 %i.gp, %i.np
  %i.nr = tail call i64 @llvm.smin.i64(i64 %i.nq, i64 %i.gq)
  %i.ns = and i64 %i.nr, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1205368.i.epil.init, ptr align 1 %.sroa.0.7366.i.epil.init, i64 %i.ns, i1 false)
  br label %vmd_decode.exit

vmd_decode.exit:                                  ; preds = %bb.bh, %.epil.preheader, %vmd_decode.exit.loopexit166.unr-lcssa, %bb.ak, %.preheader338.i, %.preheader340.i, %.preheader344.i, %bb.ac
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !65
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.nu, ptr noundef nonnull align 4 dereferenceable(1024) %i.nv, i64 1024, i1 false)
  %i.nw = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.nx = tail call i32 @av_frame_replace(ptr noundef %i.nw, ptr noundef nonnull %1) #8 ; 2 uses
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %vmd_decode.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %vmd_decode.exit
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %vmd_decode.exit.thread

vmd_decode.exit.thread:                           ; preds = %bytestream2_peek_byte.exit.thread.i, %bb.bb, %bytestream2_get_byte.exit259.thread.i, %bytestream2_get_byte.exit261.thread.i, %bb.af, %.preheader.split.us.i, %bytestream2_get_byte.exit261.us.i, %bb.ad, %bb.v, %bb.s, %bb.bg, %bb.aj, %.thread.i, %bb.w, %bb.l, %bb.i, %vmd_decode.exit, %bb.b, %bb.a, %bb.bi
  %.0 = phi i32 [ %i.d, %bb.bi ], [ -1094995529, %bb.a ], [ %i.j, %bb.b ], [ %i.nx, %vmd_decode.exit ], [ -1094995529, %bb.bg ], [ -1094995529, %bb.aj ], [ -1094995529, %.thread.i ], [ %i.fr, %bb.w ], [ -1094995529, %bb.l ], [ -1094995529, %bytestream2_get_byte.exit261.thread.i ], [ -1094995529, %bb.i ], [ -1094995529, %bb.v ], [ -1094995529, %bb.s ], [ -1094995529, %.preheader.split.us.i ], [ -1094995529, %bb.ad ], [ -1094995529, %bytestream2_get_byte.exit261.us.i ], [ -1094995529, %bb.af ], [ -1094995529, %bytestream2_get_byte.exit259.thread.i ], [ -1094995529, %bb.bb ], [ -1094995529, %bytestream2_peek_byte.exit.thread.i ]
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
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !33
  %i.bo = and i32 %i.bl, 4095
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 7
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !33  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.059144, i64 6
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !33
  %i.bs = add nsw i32 %.156145, 6
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !33
  %i.bv = and i32 %i.bs, 4095
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 8
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !33  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.059144, i64 7
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !33
  %i.bz = add nsw i32 %.156145, 7
  %i.ca = zext nneg i32 %i.bv to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  store i8 %i.bx, ptr %i.cb, align 1, !tbaa !33
  %i.cc = and i32 %i.bz, 4095
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1143, i64 9
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !33  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.059144, i64 8
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !33
  %i.cg = add nsw i32 %.156145, 8
  %i.ch = zext nneg i32 %i.cc to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  store i8 %i.ce, ptr %i.ci, align 1, !tbaa !33
  %i.cj = and i32 %i.cg, 4095
  %i.ck = add i32 %.053146, -8
  br label %.loopexit

.preheader118:                                    ; preds = %.preheader118.preheader, %bb.o
  %.1136 = phi i32 [ %i.fj, %bb.o ], [ 0, %.preheader118.preheader ] ; 2 uses
  %.049.in135 = phi i32 [ %i.fi, %bb.o ], [ %i.y, %.preheader118.preheader ] ; 2 uses
  %.154134 = phi i32 [ %.2, %bb.o ], [ %.053146, %.preheader118.preheader ] ; 2 uses
  %.358133 = phi i32 [ %.5, %bb.o ], [ %.156145, %.preheader118.preheader ] ; 3 uses
  %.261132 = phi ptr [ %.463, %bb.o ], [ %.059144, %.preheader118.preheader ] ; 5 uses
  %.sroa.0.3131 = phi ptr [ %.sroa.0.5, %bb.o ], [ %i.u, %.preheader118.preheader ] ; 6 uses
  %i.cl = and i32 %.049.in135, 1
  %.not67 = icmp eq i32 %i.cl, 0
  br i1 %.not67, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.preheader118
  %i.cm = ptrtoint ptr %.261132 to i64
  %i.cn = sub i64 %i.t, %i.cm
  %i.co = icmp slt i64 %i.cn, 1
  %i.cp = ptrtoint ptr %.sroa.0.3131 to i64
  %i.cq = sub i64 %i.h, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = icmp slt i32 %i.cr, 1
  %or.cond116 = select i1 %i.co, i1 true, i1 %i.cs
  br i1 %or.cond116, label %.loopexit119, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.3131, i64 1
  %i.cu = load i8, ptr %.sroa.0.3131, align 1, !tbaa !33 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.261132, i64 1
  store i8 %i.cu, ptr %.261132, align 1, !tbaa !33
  %i.cw = add nuw nsw i32 %.358133, 1
  %i.cx = zext i32 %.358133 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx
  store i8 %i.cu, ptr %i.cy, align 1, !tbaa !33
  %i.cz = and i32 %i.cw, 4095
  %i.da = add i32 %.154134, -1
  br label %bb.o

bb.j:                                             ; preds = %.preheader118
  %i.db = ptrtoint ptr %.sroa.0.3131 to i64
  %i.dc = sub i64 %i.h, %i.db
  %i.dd = icmp slt i64 %i.dc, 1
  br i1 %i.dd, label %bytestream2_get_byte.exit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.3131, i64 1 ; 2 uses
  %i.df = load i8, ptr %.sroa.0.3131, align 1, !tbaa !33
  %i.dg = zext i8 %i.df to i32
  %.pre159 = ptrtoint ptr %i.de to i64
  br label %bytestream2_get_byte.exit71

bytestream2_get_byte.exit71:                      ; preds = %bb.j, %bb.k
  %.pre-phi160 = phi i64 [ %i.h, %bb.j ], [ %.pre159, %bb.k ]
  %.sroa.0.9 = phi ptr [ %i.e, %bb.j ], [ %i.de, %bb.k ] ; 3 uses
  %.0.i70 = phi i32 [ 0, %bb.j ], [ %i.dg, %bb.k ] ; 2 uses
  %i.dh = sub i64 %i.h, %.pre-phi160
  %i.di = icmp slt i64 %i.dh, 1
  br i1 %i.di, label %bytestream2_get_byte.exit, label %bytestream2_get_byte.exit69

bytestream2_get_byte.exit69:                      ; preds = %bytestream2_get_byte.exit71
  %i.dj = load i8, ptr %.sroa.0.9, align 1, !tbaa !33 ; 2 uses
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 4
  %i.dm = and i32 %i.dl, 3840
  %i.dn = or disjoint i32 %i.dm, %.0.i70          ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.9, i64 1 ; 3 uses
  %i.dp = and i8 %i.dj, 15
  %narrow = add nuw nsw i8 %i.dp, 3
  %i.dq = zext nneg i8 %narrow to i32             ; 2 uses
  %i.dr = icmp eq i32 %.050, %i.dq
  br i1 %i.dr, label %bb.l, label %bytestream2_get_byte.exit

bb.l:                                             ; preds = %bytestream2_get_byte.exit69
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.h, %i.ds
  %i.du = icmp slt i64 %i.dt, 1
  br i1 %i.du, label %bytestream2_get_byte.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.9, i64 2
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !33
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dx, 18
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bytestream2_get_byte.exit71, %bb.m, %bb.l, %bytestream2_get_byte.exit69
  %i.dz = phi i32 [ %i.dn, %bytestream2_get_byte.exit69 ], [ %i.dn, %bb.m ], [ %i.dn, %bb.l ], [ %.0.i70, %bytestream2_get_byte.exit71 ]
  %.sroa.0.4 = phi ptr [ %i.do, %bytestream2_get_byte.exit69 ], [ %i.dv, %bb.m ], [ %i.e, %bb.l ], [ %i.e, %bytestream2_get_byte.exit71 ]
  %.051 = phi i32 [ %i.dq, %bytestream2_get_byte.exit69 ], [ %i.dy, %bb.m ], [ 18, %bb.l ], [ 3, %bytestream2_get_byte.exit71 ] ; 5 uses
  %i.ea = ptrtoint ptr %.261132 to i64
  %i.eb = sub i64 %i.t, %i.ea
  %i.ec = zext nneg i32 %.051 to i64
  %i.ed = icmp slt i64 %i.eb, %i.ec
  br i1 %i.ed, label %.loopexit119, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bytestream2_get_byte.exit
  %xtraiter = and i32 %.051, 1
  %unroll_iter = and i32 %.051, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.052129 = phi i32 [ %i.dz, %.preheader.preheader ], [ %i.eo, %.preheader ] ; 3 uses
  %.4128 = phi i32 [ %.358133, %.preheader.preheader ], [ %i.ex, %.preheader ] ; 3 uses
  %.362127 = phi ptr [ %.261132, %.preheader.preheader ], [ %i.et, %.preheader ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader.preheader ], [ %niter.next.1, %.preheader ]
  %i.ee = add i32 %.052129, 1
  %i.ef = and i32 %.052129, 4095
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !33  ; 2 uses
  store i8 %i.ei, ptr %.362127, align 1, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %.362127, i64 1
  %i.ek = add nuw nsw i32 %.4128, 1
  %i.el = zext i32 %.4128 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  store i8 %i.ei, ptr %i.em, align 1, !tbaa !33
  %i.en = and i32 %i.ek, 4095
  %i.eo = add i32 %.052129, 2                     ; 2 uses
  %i.ep = and i32 %i.ee, 4095
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !33  ; 2 uses
  store i8 %i.es, ptr %i.ej, align 1, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %.362127, i64 2 ; 4 uses
  %i.eu = add i32 %.4128, 2
  %i.ev = zext nneg i32 %i.en to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ev
  store i8 %i.es, ptr %i.ew, align 1, !tbaa !33
  %i.ex = and i32 %i.eu, 4095                     ; 4 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !71

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.n, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa
  %lcmp.mod174 = trunc i32 %.051 to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.ey = and i32 %i.eo, 4095
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !33  ; 2 uses
  store i8 %i.fb, ptr %i.et, align 1, !tbaa !33
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.fd = add nuw nsw i32 %i.ex, 1
  %i.fe = zext i32 %i.ex to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fe
  store i8 %i.fb, ptr %i.ff, align 1, !tbaa !33
  %i.fg = and i32 %i.fd, 4095
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa171 = phi ptr [ %i.et, %.unr-lcssa ], [ %i.fc, %.preheader.epil.preheader ]
  %.lcssa = phi i32 [ %i.ex, %.unr-lcssa ], [ %i.fg, %.preheader.epil.preheader ]
  %i.fh = sub i32 %.154134, %.051
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %bb.n ], [ %i.ct, %bb.i ] ; 2 uses
  %.463 = phi ptr [ %.lcssa171, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.5 = phi i32 [ %.lcssa, %bb.n ], [ %i.cz, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %i.fh, %bb.n ], [ %i.da, %bb.i ] ; 3 uses
  %i.fi = lshr i32 %.049.in135, 1
  %i.fj = add nuw nsw i32 %.1136, 1
  %i.fk = icmp samesign ugt i32 %.1136, 6
  %i.fl = icmp eq i32 %.2, 0
  %or.cond3 = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond3, label %.loopexit, label %.preheader118, !llvm.loop !72

.loopexit:                                        ; preds = %bb.o, %.preheader117.preheader
  %.sroa.0.6 = phi ptr [ %i.cd, %.preheader117.preheader ], [ %.sroa.0.5, %bb.o ] ; 2 uses
  %.564 = phi ptr [ %i.cf, %.preheader117.preheader ], [ %.463, %bb.o ] ; 2 uses
  %.6 = phi i32 [ %i.cj, %.preheader117.preheader ], [ %.5, %bb.o ]
  %.3 = phi i32 [ %i.ck, %.preheader117.preheader ], [ %.2, %bb.o ] ; 2 uses
  %.not = icmp ne i32 %.3, 0
  %i.fm = ptrtoint ptr %.sroa.0.6 to i64
  %i.fn = sub i64 %i.h, %i.fm
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp sgt i32 %i.fo, 0
  %or.cond108 = select i1 %.not, i1 %i.fp, i1 false
  br i1 %or.cond108, label %bb.f, label %.critedge, !llvm.loop !73

.critedge:                                        ; preds = %.loopexit, %bytestream2_peek_le32.exit.thread
  %.059.lcssa = phi ptr [ %2, %bytestream2_peek_le32.exit.thread ], [ %.564, %.loopexit ]
  %i.fq = ptrtoint ptr %.059.lcssa to i64
  %i.fr = ptrtoint ptr %2 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = trunc i64 %i.fs to i32
  br label %.loopexit119

.loopexit119:                                     ; preds = %bb.g, %bytestream2_get_byte.exit, %bb.h, %bytestream2_get_le32.exit, %.critedge
  %.065 = phi i32 [ %i.ft, %.critedge ], [ -1094995529, %bytestream2_get_le32.exit ], [ -1094995529, %bytestream2_get_byte.exit ], [ -1094995529, %bb.h ], [ -1094995529, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.065
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"VmdVideoContext", !29, i64 0, !30, i64 8, !14, i64 16, !6, i64 24, !5, i64 28, !14, i64 1056, !6, i64 1064, !6, i64 1068, !6, i64 1072}
!32 = !{!31, !29, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!31, !6, i64 1064}
!35 = !{!31, !14, i64 1056}
!36 = !{!6, !6, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!31, !30, i64 8}
!39 = distinct !{!39, !37}
!40 = !{!27, !6, i64 136}
!41 = !{!27, !6, i64 80}
!42 = !{!27, !14, i64 72}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !37, !68, !69}
!47 = distinct !{!47, !37, !68}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37, !68, !69}
!52 = distinct !{!52, !37, !69, !68}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!57 = !{!56, !14, i64 24}
!58 = !{!56, !6, i64 32}
!59 = !{!31, !14, i64 16}
!60 = !{!31, !6, i64 24}
!61 = !{!27, !6, i64 112}
!62 = !{!27, !6, i64 116}
!63 = !{!31, !6, i64 1068}
!64 = !{!31, !6, i64 1072}
!65 = !{!14, !14, i64 0}
!66 = !{!44}
!67 = !{!45}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 12}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = distinct !{!73, !37}
end_hunk_0
