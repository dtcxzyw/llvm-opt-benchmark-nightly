Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/picture_rescale_enc?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WebPPicture = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, [2 x i32], ptr, i32, [3 x i32], ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [3 x i32], ptr, ptr, [8 x i32], ptr, ptr, [2 x ptr] }
%struct.WebPRescaler = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPPictureCopy(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull readonly align 8 dereferenceable(256) %0, i64 256, i1 false), !tbaa.struct !19
  tail call void @WebPPictureResetBuffers(ptr noundef nonnull %1) #4
  %i.d = tail call i32 @WebPPictureAlloc(ptr noundef nonnull %1) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 8, !tbaa !21
  %.not43 = icmp eq i32 %i.e, 0
  br i1 %.not43, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  tail call void @WebPCopyPlane(ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q) #4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  %i.z = load i32, ptr %i.n, align 8, !tbaa !24
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = ashr i32 %i.aa, 1
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !25
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = ashr i32 %i.ad, 1
  tail call void @WebPCopyPlane(ptr noundef %i.s, i32 noundef %i.u, ptr noundef %i.w, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ae) #4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !27
  %i.al = load i32, ptr %i.n, align 8, !tbaa !24
  %i.am = add nsw i32 %i.al, 1
  %i.an = ashr i32 %i.am, 1
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !25
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = ashr i32 %i.ap, 1
  tail call void @WebPCopyPlane(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq) #4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %.not44 = icmp eq ptr %i.as, null
  br i1 %.not44, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !30
  %i.az = load i32, ptr %i.n, align 8, !tbaa !24
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !25
  tail call void @WebPCopyPlane(ptr noundef %i.au, i32 noundef %i.aw, ptr noundef nonnull %i.as, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !32
  %i.bf = shl nsw i32 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = shl nsw i32 %i.bj, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !24
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !25
  tail call void @WebPCopyPlane(ptr noundef %i.bc, i32 noundef %i.bf, ptr noundef %i.bh, i32 noundef %i.bk, i32 noundef %i.bn, i32 noundef %i.bp) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

declare i32 @WebPPictureAlloc(ptr noundef) local_unnamed_addr #1

declare void @WebPCopyPlane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @WebPPictureIsView(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !21
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i64 224, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0.shrunk = phi i32 [ 0, %bb.a ], [ %i.f, %.sink.split ]
  ret i32 %.0.shrunk
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPPictureView(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %5, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %AdjustAndCheckRectangle.exit.thread, label %SnapTopLeftPosition.exit.i

SnapTopLeftPosition.exit.i:                       ; preds = %bb.a
  %.val.i = load i32, ptr %0, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %.val.i, 0              ; 2 uses
  %i.c = and i32 %1, -2
  %i.d = and i32 %2, -2
  %.059 = select i1 %.not.i.i, i32 %i.c, i32 %1   ; 4 uses
  %.058 = select i1 %.not.i.i, i32 %i.d, i32 %2   ; 6 uses
  %i.e = or i32 %.059, %.058
  %or.cond62.not = icmp sgt i32 %i.e, -1
  br i1 %or.cond62.not, label %bb.b, label %AdjustAndCheckRectangle.exit.thread

bb.b:                                             ; preds = %SnapTopLeftPosition.exit.i
  %i.f = icmp slt i32 %3, 1
  %i.g = icmp slt i32 %4, 1
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %AdjustAndCheckRectangle.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = icmp sgt i32 %3, %i.i
  %i.k = sub nsw i32 %i.i, %.059
  %i.l = icmp sgt i32 %3, %i.k
  %or.cond25.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond25.i, label %AdjustAndCheckRectangle.exit.thread, label %AdjustAndCheckRectangle.exit

AdjustAndCheckRectangle.exit:                     ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25   ; 2 uses
  %i.o = icmp sgt i32 %4, %i.n
  %i.p = sub nsw i32 %i.n, %.058
  %i.q = icmp sgt i32 %4, %i.p
  %or.cond27.not.i.not = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond27.not.i.not, label %AdjustAndCheckRectangle.exit.thread, label %bb.d

bb.d:                                             ; preds = %AdjustAndCheckRectangle.exit
  %.not42 = icmp eq ptr %0, %5
  br i1 %.not42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef nonnull readonly align 8 dereferenceable(256) %0, i64 256, i1 false), !tbaa.struct !19
  tail call void @WebPPictureResetBuffers(ptr noundef nonnull %5) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = zext nneg i32 %3 to i64
  %8 = zext nneg i32 %4 to i64
  %9 = shl nuw nsw i64 %8, 32
  %10 = or disjoint i64 %9, %7
  store i64 %10, ptr %6, align 8
  %11 = load i32, ptr %0, align 8, !tbaa !21
  %.not43 = icmp eq i32 %11, 0
  %i.r = zext nneg i32 %.059 to i64               ; 3 uses
  br i1 %.not43, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = mul nsw i32 %i.v, %.058
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = lshr i32 %.058, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.ag = mul nsw i32 %i.af, %i.ad
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 %i.ah
  %i.aj = lshr i32 %.059, 1
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.v, ptr %i.as, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.af, ptr %i.at, align 4, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %.not44 = icmp eq ptr %i.av, null
  br i1 %.not44, label %AdjustAndCheckRectangle.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %.058
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.r
  br label %AdjustAndCheckRectangle.exit.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %.058
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.r
  br label %AdjustAndCheckRectangle.exit.thread.sink.split

AdjustAndCheckRectangle.exit.thread.sink.split:   ; preds = %bb.h, %bb.i
  %.sink74 = phi i64 [ 72, %bb.i ], [ 48, %bb.h ]
  %.sink72 = phi ptr [ %i.bj, %bb.i ], [ %i.bb, %bb.h ]
  %.sink71 = phi i64 [ 80, %bb.i ], [ 56, %bb.h ]
  %.sink = phi i32 [ %i.bf, %bb.i ], [ %i.ax, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 %.sink74
  store ptr %.sink72, ptr %i.bk, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 %.sink71
  store i32 %.sink, ptr %i.bl, align 8, !tbaa !9
  br label %AdjustAndCheckRectangle.exit.thread

AdjustAndCheckRectangle.exit.thread:              ; preds = %AdjustAndCheckRectangle.exit.thread.sink.split, %bb.c, %bb.b, %SnapTopLeftPosition.exit.i, %bb.g, %AdjustAndCheckRectangle.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %AdjustAndCheckRectangle.exit ], [ 1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %SnapTopLeftPosition.exit.i ], [ 1, %AdjustAndCheckRectangle.exit.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureCrop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WebPPicture, align 8        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %AdjustAndCheckRectangle.exit.thread, label %SnapTopLeftPosition.exit.i

SnapTopLeftPosition.exit.i:                       ; preds = %bb.a
  %.val.i = load i32, ptr %0, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %.val.i, 0              ; 2 uses
  %i.b = and i32 %1, -2
  %i.c = and i32 %2, -2
  %.055 = select i1 %.not.i.i, i32 %i.b, i32 %1   ; 6 uses
  %.054 = select i1 %.not.i.i, i32 %i.c, i32 %2   ; 6 uses
  %i.d = or i32 %.055, %.054
  %or.cond.not = icmp sgt i32 %i.d, -1
  br i1 %or.cond.not, label %bb.b, label %AdjustAndCheckRectangle.exit.thread

bb.b:                                             ; preds = %SnapTopLeftPosition.exit.i
  %i.e = icmp slt i32 %3, 1
  %i.f = icmp slt i32 %4, 1
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %AdjustAndCheckRectangle.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp sgt i32 %3, %i.h
  %i.j = sub nsw i32 %i.h, %.055
  %i.k = icmp sgt i32 %3, %i.j
  %or.cond25.i = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond25.i, label %AdjustAndCheckRectangle.exit.thread, label %AdjustAndCheckRectangle.exit

AdjustAndCheckRectangle.exit:                     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25   ; 2 uses
  %i.n = icmp sgt i32 %4, %i.m
  %i.o = sub nsw i32 %i.m, %.054
  %i.p = icmp sgt i32 %4, %i.o
  %or.cond27.not.i.not = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond27.not.i.not, label %AdjustAndCheckRectangle.exit.thread, label %bb.d

bb.d:                                             ; preds = %AdjustAndCheckRectangle.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef nonnull readonly align 8 dereferenceable(256) %0, i64 256, i1 false), !tbaa.struct !19
  call void @WebPPictureResetBuffers(ptr noundef nonnull %5) #4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %6 = zext nneg i32 %3 to i64
  %7 = zext nneg i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %i.q, align 8
  %i.r = call i32 @WebPPictureAlloc(ptr noundef nonnull %5) #4
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %i.u = call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef %i.t) #4
  br label %AdjustAndCheckRectangle.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.v = load i32, ptr %0, align 8, !tbaa !21
  %.not43 = icmp eq i32 %i.v, 0
  br i1 %.not43, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = mul nsw i32 %i.x, %.054
  %i.z = add nsw i32 %i.y, %.055
  %i.aa = lshr i32 %.054, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = mul nsw i32 %i.ac, %i.aa
  %i.ae = lshr i32 %.055, 1
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = sext i32 %i.z to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !23
  call void @WebPCopyPlane(ptr noundef %i.aj, i32 noundef %i.x, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %3, i32 noundef %4) #4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26
  %i.aq = sext i32 %i.af to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27
  %i.ax = add nuw nsw i32 %3, 1
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = add nuw nsw i32 %4, 1
  %i.ba = lshr i32 %i.az, 1                       ; 2 uses
  call void @WebPCopyPlane(ptr noundef %i.ar, i32 noundef %i.as, ptr noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba) #4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.aq
  %i.be = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !27
  call void @WebPCopyPlane(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.ay, i32 noundef %i.ba) #4
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  %.not44 = icmp eq ptr %i.bj, null
  br i1 %.not44, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %.054
  %i.bn = add nsw i32 %i.bm, %.055
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !29
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !30
  call void @WebPCopyPlane(ptr noundef %i.br, i32 noundef %i.bl, ptr noundef nonnull %i.bj, i32 noundef %i.bt, i32 noundef %3, i32 noundef %4) #4
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !32 ; 2 uses
  %i.by = mul nsw i32 %i.bx, %.054
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = zext nneg i32 %.055 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = shl nsw i32 %i.bx, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !32
  %i.ci = shl nsw i32 %i.ch, 2
  %i.cj = shl nuw nsw i32 %3, 2
  call void @WebPCopyPlane(ptr noundef %i.cc, i32 noundef %i.cd, ptr noundef %i.cf, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %4) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  call void @WebPPictureFree(ptr noundef nonnull %0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %5, i64 256, i1 false), !tbaa.struct !19
  br label %AdjustAndCheckRectangle.exit.thread

AdjustAndCheckRectangle.exit.thread:              ; preds = %bb.c, %bb.b, %SnapTopLeftPosition.exit.i, %AdjustAndCheckRectangle.exit, %bb.a, %bb.j, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ %i.u, %bb.e ], [ 0, %AdjustAndCheckRectangle.exit ], [ 0, %SnapTopLeftPosition.exit.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @WebPPictureFree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i32 @WebPPictureRescale(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.WebPRescaler, align 8       ; 6 uses
  %4 = alloca %struct.WebPRescaler, align 8       ; 6 uses
  %5 = alloca %struct.WebPRescaler, align 8       ; 6 uses
  %6 = alloca %struct.WebPRescaler, align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %7 = alloca %struct.WebPPicture, align 8        ; 21 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !9
  store i32 %2, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25   ; 14 uses
  %i.h = call i32 @WebPRescalerGetScaledDimensions(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef 5) #4
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %7, ptr noundef nonnull readonly align 8 dereferenceable(256) %0, i64 256, i1 false), !tbaa.struct !19
  call void @WebPPictureResetBuffers(ptr noundef nonnull %7) #4
  %i.j = load i32, ptr %i.a, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = load i32, ptr %i.b, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !25
  %i.n = call i32 @WebPPictureAlloc(ptr noundef nonnull %7) #4
  %.not51 = icmp eq i32 %i.n, 0
  br i1 %.not51, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = call i32 @WebPEncodingSetError(ptr noundef nonnull %0, i32 noundef %i.p) #4
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !21
  %.not52 = icmp eq i32 %i.r, 0
  %i.s = load i32, ptr %i.a, align 4, !tbaa !9
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  br i1 %.not52, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.u = shl nsw i64 %i.t, 1
  %i.v = call ptr @WebPSafeMalloc(i64 noundef %i.u, i64 noundef 4) #4 ; 11 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %.not53 = icmp eq ptr %i.y, null
  br i1 %.not53, label %AlphaMultiplyY.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @WebPInitAlphaProcessing() #4
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !9
  %i.af = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.ai = call i32 @WebPRescalerInit(ptr noundef nonnull %6, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef 1, ptr noundef nonnull %i.v) #4
end_hunk_0
