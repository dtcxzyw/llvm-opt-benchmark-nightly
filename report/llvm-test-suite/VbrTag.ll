Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/VbrTag?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SizeOfEmptyFrame = dso_local local_unnamed_addr global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 16
@pVbrFrames = dso_local local_unnamed_addr global ptr null, align 8
@nVbrNumFrames = dso_local local_unnamed_addr global i32 0, align 4
@nVbrFrameBufferSize = dso_local local_unnamed_addr global i32 0, align 4
@GetVbrTag.sr_table = internal unnamed_addr constant [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 16
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 16
@nZeroStreamSize = internal unnamed_addr global i32 0, align 4
@InitVbrTag.framesize = internal unnamed_addr constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @AddVbrFrame(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @pVbrFrames, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load i32, ptr @nVbrFrameBufferSize, align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 100, ptr @nVbrFrameBufferSize, align 4, !tbaa !4
  %i.e = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #15 ; 2 uses
  store ptr %i.e, ptr @pVbrFrames, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = phi i32 [ %i.c, %bb.a ], [ 100, %bb.b ]  ; 2 uses
  %i.h = load i32, ptr @nVbrNumFrames, align 4, !tbaa !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.j, ptr @nVbrFrameBufferSize, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.l) #16 ; 2 uses
  store ptr %i.m, ptr @pVbrFrames, align 8, !tbaa !8
  %.pre2 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre2, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.c ]
  %i.p = add nsw i32 %i.n, 1
  store i32 %i.p, ptr @nVbrNumFrames, align 4, !tbaa !4
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  store i32 %0, ptr %i.r, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CreateI4(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i32 %1, 24
  %i.b = trunc nuw i32 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !11
  %i.c = lshr i32 %1, 16
  %i.d = trunc i32 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !11
  %i.f = lshr i32 %1, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = trunc i32 %1 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @CheckVbrTag(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = and i8 %i.b, 8
  %.not = icmp eq i8 %i.e, 0
  %.not15 = icmp ugt i8 %i.d, -65                 ; 2 uses
  %.22 = select i1 %.not15, i64 13, i64 21
  %.21 = select i1 %.not15, i64 21, i64 36
  %.sink = select i1 %.not, i64 %.22, i64 %.21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %.not17 = icmp eq i8 %i.g, 88
  br i1 %.not17, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %.not18 = icmp eq i8 %i.i, 105
  br i1 %.not18, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %.not19 = icmp eq i8 %i.k, 110
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
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
define dso_local range(i32 0, 2) i32 @GetVbrTag(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = lshr i8 %i.d, 3
  %i.f = and i8 %i.e, 1                           ; 3 uses
  %i.g = zext nneg i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = lshr i8 %i.i, 2
  %i.k = and i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %.not = icmp eq i8 %i.f, 0
  %.not49 = icmp ugt i8 %i.m, -65                 ; 2 uses
  %.61 = select i1 %.not49, i64 13, i64 21
  %. = select i1 %.not49, i64 21, i64 36
  %.sink = select i1 %.not, i64 %.61, i64 %.
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 13 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %.not51 = icmp eq i8 %i.o, 88
  br i1 %.not51, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %.not52 = icmp eq i8 %i.q, 105
  br i1 %.not52, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %.not53 = icmp eq i8 %i.s, 110
  br i1 %.not53, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %.not54 = icmp eq i8 %i.u, 103
  br i1 %.not54, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.g, ptr %0, align 4, !tbaa !14
  %i.w = zext nneg i8 %i.k to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @GetVbrTag.sr_table, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = xor i8 %i.f, 1
  %i.ab = zext nneg i8 %i.aa to i32
  %spec.select = ashr i32 %i.y, %i.ab
  store i32 %spec.select, ptr %i.z, align 4, !tbaa !15
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !11
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ad, 16
  %i.ai = shl nuw nsw i32 %i.ag, 8
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am
  %i.ao = shl nuw i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i32                    ; 5 uses
  %i.as = or disjoint i32 %i.ao, %i.ar
  store i32 %i.as, ptr %i.b, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.au = and i32 %i.ar, 1
  %.not55 = icmp eq i32 %i.au, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i8, ptr %i.at, align 1, !tbaa !11
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.aw, 16
  %i.bb = shl nuw nsw i32 %i.az, 8
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = shl nuw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  br label %bb.g
end_hunk_0
