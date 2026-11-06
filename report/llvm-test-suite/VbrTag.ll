Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/VbrTag?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SizeOfEmptyFrame = dso_local local_unnamed_addr global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 16, !guid !8
@pVbrFrames = dso_local local_unnamed_addr global ptr null, align 8, !guid !9
@nVbrNumFrames = dso_local local_unnamed_addr global i32 0, align 4, !guid !10
@nVbrFrameBufferSize = dso_local local_unnamed_addr global i32 0, align 4, !guid !11
@GetVbrTag.sr_table = internal unnamed_addr constant [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 16, !guid !12
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 16, !guid !13
@nZeroStreamSize = internal unnamed_addr global i32 0, align 4, !guid !14
@InitVbrTag.framesize = internal unnamed_addr constant [3 x i32] [i32 208, i32 192, i32 288], align 4, !guid !15
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1, !guid !16
@TotalFrameSize = internal unnamed_addr global i32 0, align 4, !guid !17
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1, !guid !18
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1, !guid !19
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1, !guid !20

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @AddVbrFrame(i32 noundef %0) local_unnamed_addr #0 !guid !27 {
bb.a:
  %i.a = load ptr, ptr @pVbrFrames, align 8, !tbaa !23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load i32, ptr @nVbrFrameBufferSize, align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 100, ptr @nVbrFrameBufferSize, align 4, !tbaa !7
  %i.e = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #15 ; 2 uses
  store ptr %i.e, ptr @pVbrFrames, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = phi i32 [ %i.c, %bb.a ], [ 100, %bb.b ]  ; 2 uses
  %i.h = load i32, ptr @nVbrNumFrames, align 4, !tbaa !7 ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.j, ptr @nVbrFrameBufferSize, align 4, !tbaa !7
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.l) #16 ; 2 uses
  store ptr %i.m, ptr @pVbrFrames, align 8, !tbaa !23
  %.pre = load i32, ptr @nVbrNumFrames, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.c ]
  %i.p = add nsw i32 %i.n, 1
  store i32 %i.p, ptr @nVbrNumFrames, align 4, !tbaa !7
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  store i32 %0, ptr %i.r, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CreateI4(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 !guid !28 {
bb.a:
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %0, align 1, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @CheckVbrTag(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 !guid !29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = and i8 %i.b, 8
  %.not = icmp eq i8 %i.e, 0
  %.not15 = icmp ugt i8 %i.d, -65                 ; 2 uses
  %.22 = select i1 %.not15, i64 13, i64 21
  %.21 = select i1 %.not15, i64 21, i64 36
  %.sink = select i1 %.not, i64 %.22, i64 %.21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %.not17 = icmp eq i8 %i.g, 88
  br i1 %.not17, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %.not18 = icmp eq i8 %i.i, 105
  br i1 %.not18, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
  %.not19 = icmp eq i8 %i.k, 110
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %.not20 = icmp eq i8 %i.m, 103
  %. = zext i1 %.not20 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.d ]
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @GetVbrTag(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 !guid !31 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = lshr i8 %i.d, 3
  %i.f = and i8 %i.e, 1                           ; 3 uses
  %i.g = zext nneg i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = lshr i8 %i.i, 2
  %i.k = and i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %.not = icmp eq i8 %i.f, 0
  %.not49 = icmp ugt i8 %i.m, -65                 ; 2 uses
  %.61 = select i1 %.not49, i64 13, i64 21
  %. = select i1 %.not49, i64 21, i64 36
  %.sink = select i1 %.not, i64 %.61, i64 %.
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 13 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %.not51 = icmp eq i8 %i.o, 88
  br i1 %.not51, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %.not52 = icmp eq i8 %i.q, 105
  br i1 %.not52, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %.not53 = icmp eq i8 %i.s, 110
  br i1 %.not53, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %.not54 = icmp eq i8 %i.u, 103
  br i1 %.not54, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.g, ptr %0, align 4, !tbaa !34
  %i.w = zext nneg i8 %i.k to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @GetVbrTag.sr_table, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = xor i8 %i.f, 1
  %i.ab = zext nneg i8 %i.aa to i32
  %spec.select = ashr i32 %i.y, %i.ab
  store i32 %spec.select, ptr %i.z, align 4, !tbaa !35
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !24
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !24
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ad, 16
  %i.ai = shl nuw nsw i32 %i.ag, 8
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am
  %i.ao = shl nuw i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = zext i8 %i.aq to i32                    ; 5 uses
  %i.as = or disjoint i32 %i.ao, %i.ar
  store i32 %i.as, ptr %i.b, align 4, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.au = and i32 %i.ar, 1
  %.not55 = icmp eq i32 %i.au, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i8, ptr %i.at, align 1, !tbaa !24
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.aw, 16
  %i.bb = shl nuw nsw i32 %i.az, 8
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = shl nuw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !24
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.bn, %bb.f ], [ %i.at, %bb.e ] ; 6 uses
  %i.bo = and i32 %i.ar, 2
  %.not56 = icmp eq i32 %i.bo, 0
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = load i8, ptr %.1, align 1, !tbaa !24
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bq, 16
  %i.bv = shl nuw nsw i32 %i.bt, 8
  %i.bw = or disjoint i32 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !24
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz
  %i.cb = shl nuw i32 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !24
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi ptr [ %i.ch, %bb.h ], [ %.1, %bb.g ]  ; 15 uses
  %i.ci = and i32 %i.ar, 4
  %.not57 = icmp eq i32 %i.ci, 0
  br i1 %.not57, label %bb.j, label %iter.check

iter.check:                                       ; preds = %bb.i
  %.263 = ptrtoaddr ptr %.2 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ck = sub i64 %i.a, %.263
  %i.cl = add i64 %i.ck, 23
  %diff.check = icmp ult i64 %i.cl, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph, label %vector.body

vector.body:                                      ; preds = %iter.check
  %i.cm = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %wide.load = load <16 x i8>, ptr %.2, align 1, !tbaa !24
  %wide.load64 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <16 x i8> %wide.load, ptr %i.cj, align 4, !tbaa !24
  store <16 x i8> %wide.load64, ptr %i.cn, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.co, align 1, !tbaa !24
  %wide.load64.1 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <16 x i8> %wide.load.1, ptr %i.cq, align 4, !tbaa !24
  store <16 x i8> %wide.load64.1, ptr %i.cr, align 4, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %.2, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.2, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !24
  %wide.load64.2 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <16 x i8> %wide.load.2, ptr %i.cu, align 4, !tbaa !24
  store <16 x i8> %wide.load64.2, ptr %i.cv, align 4, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %.2, i64 96
  %wide.load66 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !24
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <4 x i8> %wide.load66, ptr %i.cx, align 4, !tbaa !24
  br label %vec.epilog.middle.block

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.4, %vec.epilog.scalar.ph ], [ 0, %iter.check ] ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv.next
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv.next
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv.next.1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv.next.1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !24
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv.next.2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv.next.2
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv.next.3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv.next.3
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !24
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 100
  br i1 %exitcond.not.4, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.scalar.ph, %vector.body
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 100
  br label %bb.j

bb.j:                                             ; preds = %vec.epilog.middle.block, %bb.i
  %.3 = phi ptr [ %i.dn, %vec.epilog.middle.block ], [ %.2, %bb.i ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 -1, ptr %i.do, align 4, !tbaa !38
  %i.dp = and i32 %i.ar, 8
  %.not58 = icmp eq i32 %i.dp, 0
  br i1 %.not58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = load i8, ptr %.3, align 1, !tbaa !24
  %i.dr = zext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !24
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.dr, 16
  %i.dw = shl nuw nsw i32 %i.du, 8
  %i.dx = or disjoint i32 %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !24
  %i.ea = zext i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dx, %i.ea
  %i.ec = shl nuw i32 %i.eb, 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !24
  %i.ef = zext i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ec, %i.ef
  store i32 %i.eg, ptr %i.do, align 4, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.d, %bb.c, %bb.b, %bb.a
  %.048 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.k ], [ 1, %bb.j ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InitVbrTag(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 !guid !40 {
bb.a:
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !23
  store i32 0, ptr @nVbrNumFrames, align 4, !tbaa !7
  store i32 0, ptr @nVbrFrameBufferSize, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %i.a = icmp eq i32 %2, 3
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @SizeOfEmptyFrame, i64 %i.b
  %storemerge.in.in.idx = select i1 %i.a, i64 4, i64 0
  %storemerge.in.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %storemerge.in.in.idx
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4, !tbaa !7 ; 2 uses
  %storemerge = add nsw i32 %storemerge.in, 4
  store i32 %storemerge, ptr @nZeroStreamSize, align 4, !tbaa !7
  %i.d = icmp sgt i32 %3, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !42
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %i.e) #17 ; 0 uses
  tail call void @exit(i32 noundef -1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @InitVbrTag.framesize, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7    ; 2 uses
  store i32 %i.h, ptr @TotalFrameSize, align 4, !tbaa !7
  %i.i = add nsw i32 %storemerge.in, 144
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !42
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 33, i64 1, ptr %i.k) #17 ; 0 uses
  tail call void @exit(i32 noundef -1) #18
  unreachable

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.114 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.c ]
  tail call void @putbits(ptr noundef %0, i32 noundef 0, i32 noundef 8) #19
  %i.l = add nuw nsw i32 %.114, 1                 ; 2 uses
  %i.m = load i32, ptr @TotalFrameSize, align 4, !tbaa !7
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PutVbrTag(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !guid !44 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 8 uses
  %i.b = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = load i32, ptr @nVbrNumFrames, align 4, !tbaa !7
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load ptr, ptr @pVbrFrames, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2) ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %i.i = tail call i32 @fseek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.j = tail call i64 @ftell(ptr noundef nonnull %i.g) ; 6 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %i.l = load i32, ptr @TotalFrameSize, align 4, !tbaa !7
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i32 @fseek(ptr noundef nonnull %i.g, i64 noundef %i.m, i32 noundef 0) ; 0 uses
  %i.o = tail call i64 @fread(ptr noundef nonnull @pbtStreamBuffer, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.g) ; 0 uses
  store i8 -1, ptr @pbtStreamBuffer, align 16, !tbaa !24
  %i.p = icmp eq i32 %2, 0                        ; 2 uses
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @pbtStreamBuffer, i64 2), align 2, !tbaa !24
  %i.r = and i8 %i.q, 12
  %. = select i1 %i.p, i8 80, i8 -128
  %.48 = select i1 %i.p, i8 -5, i8 -13
  %i.s = or disjoint i8 %i.r, %.
  store i8 %.48, ptr getelementptr inbounds nuw (i8, ptr @pbtStreamBuffer, i64 1), align 1, !tbaa !24
  store i8 %i.s, ptr getelementptr inbounds nuw (i8, ptr @pbtStreamBuffer, i64 2), align 2, !tbaa !24
  %i.t = tail call i32 @fseek(ptr noundef nonnull %i.g, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  %i.u = load i32, ptr @nVbrNumFrames, align 4, !tbaa !7 ; 2 uses
  %i.v = sitofp i32 %i.u to double                ; 7 uses
  %i.w = load ptr, ptr @pVbrFrames, align 8, !tbaa !23 ; 7 uses
  %i.x = sitofp i64 %i.j to float                 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.x, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = or disjoint i64 %index, 1                ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = or disjoint i32 %i.z, 2
  %i.ac = add i32 %i.z, 3
  %i.ad = uitofp nneg i32 %i.z to double
  %i.ae = uitofp nneg i32 %i.aa to double
  %i.af = uitofp nneg i32 %i.ab to double
  %i.ag = uitofp nneg i32 %i.ac to double
  %i.ah = fmul nnan double %i.ad, 1.000000e-02
  %i.ai = fmul nnan double %i.ae, 1.000000e-02
  %i.aj = fmul nnan double %i.af, 1.000000e-02
  %i.ak = fmul nnan double %i.ag, 1.000000e-02
  %i.al = fmul double %i.ah, %i.v
  %i.am = fmul double %i.ai, %i.v
  %i.an = fmul double %i.aj, %i.v
  %i.ao = fmul double %i.ak, %i.v
  %i.ap = tail call double @llvm.floor.f64(double %i.al)
  %i.aq = tail call double @llvm.floor.f64(double %i.am)
  %i.ar = tail call double @llvm.floor.f64(double %i.an)
  %i.as = tail call double @llvm.floor.f64(double %i.ao)
  %i.at = fptosi double %i.ap to i32
  %i.au = fptosi double %i.aq to i32
  %i.av = fptosi double %i.ar to i32
  %i.aw = fptosi double %i.as to i32
  %i.ax = sext i32 %i.at to i64
  %i.ay = sext i32 %i.au to i64
  %i.az = sext i32 %i.av to i64
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ax
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ay
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.az
  %i.be = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ba
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bj = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bg, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 3
  %i.bn = sitofp <4 x i32> %i.bm to <4 x float>
  %i.bo = fmul nnan <4 x float> %i.bn, splat (float 2.560000e+02)
  %i.bp = fdiv <4 x float> %i.bo, %broadcast.splat ; 2 uses
  %i.bq = fcmp ogt <4 x float> %i.bp, splat (float 2.550000e+02)
  %i.br = select <4 x i1> %i.bq, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bp
  %i.bs = fptoui <4 x float> %i.br to <4 x i8>
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store <4 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, 96
  br i1 %i.bu, label %scalar.ph, label %vector.body, !llvm.loop !43

scalar.ph:                                        ; preds = %vector.body
  %i.bv = fmul nnan double %i.v, f0x3FEF0A3D70A3D70A
  %i.bw = tail call double @llvm.floor.f64(double %i.bv)
  %i.bx = fptosi double %i.bw to i32
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fmul nnan float %i.cb, 2.560000e+02
  %i.cd = fdiv float %i.cc, %i.x                  ; 2 uses
  %i.ce = fcmp ogt float %i.cd, 2.550000e+02
  %spec.store.select = select i1 %i.ce, float 2.550000e+02, float %i.cd
  %i.cf = fptoui float %spec.store.select to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !24
  %i.ch = fmul nnan double %i.v, f0x3FEF5C28F5C28F5C
  %i.ci = tail call double @llvm.floor.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fmul nnan float %i.cn, 2.560000e+02
  %i.cp = fdiv float %i.co, %i.x                  ; 2 uses
  %i.cq = fcmp ogt float %i.cp, 2.550000e+02
  %spec.store.select.1 = select i1 %i.cq, float 2.550000e+02, float %i.cp
  %i.cr = fptoui float %spec.store.select.1 to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i8 %i.cr, ptr %i.cs, align 2, !tbaa !24
  %i.ct = fmul nnan double %i.v, f0x3FEFAE147AE147AE
  %i.cu = tail call double @llvm.floor.f64(double %i.ct)
  %i.cv = fptosi double %i.cu to i32
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = sitofp i32 %i.cy to float
  %i.da = fmul nnan float %i.cz, 2.560000e+02
  %i.db = fdiv float %i.da, %i.x                  ; 2 uses
  %i.dc = fcmp ogt float %i.db, 2.550000e+02
  %spec.store.select.2 = select i1 %i.dc, float 2.550000e+02, float %i.db
  %i.dd = fptoui float %spec.store.select.2 to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 99
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !24
  %i.df = load i32, ptr @nZeroStreamSize, align 4, !tbaa !7 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr @pbtStreamBuffer, i64 %i.dg ; 7 uses
  store <8 x i8> <i8 88, i8 105, i8 110, i8 103, i8 0, i8 0, i8 0, i8 15>, ptr %i.dh, align 1, !tbaa !24
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %3, ptr %i.di, align 1, !tbaa !24
  %i.dj = getelementptr i8, ptr %i.dh, i64 12
  %i.dk = lshr i64 %i.j, 24
  %i.dl = trunc i64 %i.dk to i8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !24
  %i.dm = lshr i64 %i.j, 16
  %i.dn = trunc i64 %i.dm to i8
  %i.do = getelementptr i8, ptr %i.dh, i64 13
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !24
  %i.dp = lshr i64 %i.j, 8
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = getelementptr i8, ptr %i.dh, i64 14
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !24
  %i.ds = trunc i64 %i.j to i8
  %i.dt = getelementptr i8, ptr %i.dh, i64 15
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !24
  %i.du = getelementptr i8, ptr %i.dh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.du, ptr noundef nonnull align 16 dereferenceable(100) %i.a, i64 100, i1 false)
  %i.dv = add i32 %i.df, 116
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr @pbtStreamBuffer, i64 %i.dw
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %4, ptr %i.dx, align 1, !tbaa !24
  %i.dy = add i32 %i.df, 120
  %i.dz = tail call ptr @get_lame_version() #19
  %i.ea = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.dz) #19 ; 0 uses
  %i.eb = sext i32 %i.dy to i64
  %i.ec = getelementptr inbounds i8, ptr @pbtStreamBuffer, i64 %i.eb
  %i.ed = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 20) #19 ; 0 uses
  %i.ee = load i32, ptr @TotalFrameSize, align 4, !tbaa !7
  %i.ef = sext i32 %i.ee to i64
  %i.eg = tail call i64 @fwrite(ptr noundef nonnull @pbtStreamBuffer, i64 noundef %i.ef, i64 noundef 1, ptr noundef nonnull %i.g)
  %.not = icmp eq i64 %i.eg, 1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %scalar.ph
  %i.eh = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  %i.ei = load ptr, ptr @pVbrFrames, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.ei) #19
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %scalar.ph, %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %scalar.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare ptr @get_lame_version() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SeekPoint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #4 !guid !46 {
bb.a:
  %i.a = fcmp olt float %2, 0.000000e+00
  %spec.store.select = select i1 %i.a, float 0.000000e+00, float %2 ; 2 uses
  %i.b = fcmp ogt float %spec.store.select, 1.000000e+02
  %spec.store.select2 = select i1 %i.b, float 1.000000e+02, float %spec.store.select ; 2 uses
  %i.c = fptosi float %spec.store.select2 to i32  ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 99) ; 2 uses
  %i.d = zext nneg i32 %spec.store.select1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24
  %i.g = icmp samesign ult i32 %i.c, 99
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = uitofp i8 %i.i to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.j, %bb.b ], [ 2.560000e+02, %bb.a ]
  %i.k = uitofp i8 %i.f to float                  ; 2 uses
  %i.l = fsub nnan float %.0, %i.k
  %i.m = uitofp nneg i32 %spec.store.select1 to float
  %i.n = fsub float %spec.store.select2, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.n, float %i.k)
  %i.p = fmul float %i.o, 3.906250e-03
  %i.q = sitofp i32 %1 to float
  %i.r = fmul float %i.p, %i.q
  %i.s = fptosi float %i.r to i32
  ret i32 %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -5696271655810503584}
!9 = !{i64 1475790445022508172}
!10 = !{i64 1662973738703752140}
!11 = !{i64 -896140274504916882}
!12 = !{i64 -7569271549141554172}
!13 = !{i64 -6335243017062304809}
!14 = !{i64 7169889579708299629}
!15 = !{i64 -3003199867240460472}
!16 = !{i64 864028800658884952}
!17 = !{i64 -7598920588875280437}
!18 = !{i64 5928819167154613613}
!19 = !{i64 5018897264286669350}
!20 = !{i64 -1635969103058819434}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"p1 int", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{i64 8636806278436187627}
!28 = !{i64 -9167823296331939907}
!29 = !{i64 9022916287836470088}
!30 = distinct !{!30, !25, !26}
!31 = !{i64 3734957933799467875}
!32 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24}
!33 = !{!32, !6, i64 8}
!34 = !{!32, !6, i64 0}
!35 = !{!32, !6, i64 4}
!36 = !{!32, !6, i64 12}
!37 = !{!32, !6, i64 16}
!38 = !{!32, !6, i64 20}
!39 = distinct !{!39, !25}
!40 = !{i64 8982550591864006816}
!41 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!42 = !{!41, !41, i64 0}
!43 = distinct !{!43, !25, !26, !45}
!44 = !{i64 -3649870894347648025}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{i64 -373949355607780741}
end_hunk_0
