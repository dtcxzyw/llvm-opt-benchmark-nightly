inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@Gminterm = internal unnamed_addr global ptr null, align 8
@Gcube = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [21 x i8] c"\0A\0AOutput space # %d\0A\00", align 1
@mapindex = internal unnamed_addr constant [16 x [16 x i32]] [[16 x i32] [i32 0, i32 1, i32 3, i32 2, i32 16, i32 17, i32 19, i32 18, i32 80, i32 81, i32 83, i32 82, i32 64, i32 65, i32 67, i32 66], [16 x i32] [i32 4, i32 5, i32 7, i32 6, i32 20, i32 21, i32 23, i32 22, i32 84, i32 85, i32 87, i32 86, i32 68, i32 69, i32 71, i32 70], [16 x i32] [i32 12, i32 13, i32 15, i32 14, i32 28, i32 29, i32 31, i32 30, i32 92, i32 93, i32 95, i32 94, i32 76, i32 77, i32 79, i32 78], [16 x i32] [i32 8, i32 9, i32 11, i32 10, i32 24, i32 25, i32 27, i32 26, i32 88, i32 89, i32 91, i32 90, i32 72, i32 73, i32 75, i32 74], [16 x i32] [i32 32, i32 33, i32 35, i32 34, i32 48, i32 49, i32 51, i32 50, i32 112, i32 113, i32 115, i32 114, i32 96, i32 97, i32 99, i32 98], [16 x i32] [i32 36, i32 37, i32 39, i32 38, i32 52, i32 53, i32 55, i32 54, i32 116, i32 117, i32 119, i32 118, i32 100, i32 101, i32 103, i32 102], [16 x i32] [i32 44, i32 45, i32 47, i32 46, i32 60, i32 61, i32 63, i32 62, i32 124, i32 125, i32 127, i32 126, i32 108, i32 109, i32 111, i32 110], [16 x i32] [i32 40, i32 41, i32 43, i32 42, i32 56, i32 57, i32 59, i32 58, i32 120, i32 121, i32 123, i32 122, i32 104, i32 105, i32 107, i32 106], [16 x i32] [i32 160, i32 161, i32 163, i32 162, i32 176, i32 177, i32 179, i32 178, i32 240, i32 241, i32 243, i32 242, i32 224, i32 225, i32 227, i32 226], [16 x i32] [i32 164, i32 165, i32 167, i32 166, i32 180, i32 181, i32 183, i32 182, i32 244, i32 245, i32 247, i32 246, i32 228, i32 229, i32 231, i32 230], [16 x i32] [i32 172, i32 173, i32 175, i32 174, i32 188, i32 189, i32 191, i32 190, i32 252, i32 253, i32 255, i32 254, i32 236, i32 237, i32 239, i32 238], [16 x i32] [i32 168, i32 169, i32 171, i32 170, i32 184, i32 185, i32 187, i32 186, i32 248, i32 249, i32 251, i32 250, i32 232, i32 233, i32 235, i32 234], [16 x i32] [i32 128, i32 129, i32 131, i32 130, i32 144, i32 145, i32 147, i32 146, i32 208, i32 209, i32 211, i32 210, i32 192, i32 193, i32 195, i32 194], [16 x i32] [i32 132, i32 133, i32 135, i32 134, i32 148, i32 149, i32 151, i32 150, i32 212, i32 213, i32 215, i32 214, i32 196, i32 197, i32 199, i32 198], [16 x i32] [i32 140, i32 141, i32 143, i32 142, i32 156, i32 157, i32 159, i32 158, i32 220, i32 221, i32 223, i32 222, i32 204, i32 205, i32 207, i32 206], [16 x i32] [i32 136, i32 137, i32 139, i32 138, i32 152, i32 153, i32 155, i32 154, i32 216, i32 217, i32 219, i32 218, i32 200, i32 201, i32 203, i32 202]], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @minterms(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !8 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !14 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %wide.load24 = load <4 x i32>, ptr %i.e, align 4, !tbaa !4
  %i.f = mul <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.g = mul <4 x i32> %wide.load24, %vec.phi23   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.013.ph = phi i32 [ 1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.013 = phi i32 [ %i.l, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = mul nsw i32 %i.k, %.013                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.i, %middle.block ], [ %i.l, %scalar.ph ] ; 3 uses
  %i.m = icmp slt i32 %.lcssa, 33
  %i.n = add nsw i32 %.lcssa, -1
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.o, 536870908
  %i.q = add nuw nsw i32 %i.p, 8
  %spec.select = select i1 %i.m, i32 8, i32 %i.q
  %i.r = zext nneg i32 %spec.select to i64
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %.0.lcssa21 = phi i32 [ %.lcssa, %._crit_edge ], [ 1, %bb.a ]
  %i.s = phi i64 [ %i.r, %._crit_edge ], [ 8, %bb.a ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #7
  %i.u = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.t, i32 noundef %.0.lcssa21) #8 ; 2 uses
  store ptr %i.u, ptr @Gminterm, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 3 uses
  store ptr %i.w, ptr @Gcube, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  %i.z = load i32, ptr %0, align 8, !tbaa !24
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx = shl nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %.idx
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge.thread, %.lr.ph15
  %i.ae = phi ptr [ %i.aj, %.lr.ph15 ], [ %i.w, %._crit_edge.thread ]
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, -1
  tail call void @explode(i32 noundef %i.ag, i32 noundef 0)
  %i.ah = load i32, ptr %0, align 8, !tbaa !24
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai ; 3 uses
  store ptr %i.aj, ptr @Gcube, align 8, !tbaa !19
  %i.ak = icmp ult ptr %i.aj, %i.ac
  br i1 %i.ak, label %.lr.ph15, label %._crit_edge16

._crit_edge16:                                    ; preds = %.lr.ph15, %._crit_edge.thread
  ret ptr %i.u
}

declare ptr @set_clear(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @explode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !25
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !26
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 3 uses
  %.not18 = icmp sgt i32 %i.g, %i.d
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !14
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.b
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = mul nsw i32 %i.j, %1                     ; 2 uses
  %i.l = load ptr, ptr @Gcube, align 8, !tbaa !19 ; 2 uses
  %i.m = icmp eq i32 %0, 0
  %i.n = add nsw i32 %0, -1
  %i.o = load ptr, ptr @Gminterm, align 8
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.020.us = phi i32 [ %i.ag, %bb.c ], [ %i.k, %.lr.ph ] ; 3 uses
  %.01519.us = phi i32 [ %i.af, %bb.c ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.p = ashr i32 %.01519.us, 5
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.l, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = and i32 %.01519.us, 31
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.t, %i.v
  %.not17.us = icmp eq i32 %i.w, 0
  br i1 %.not17.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.x = and i32 %.020.us, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = ashr i32 %.020.us, 5
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %i.o, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = or i32 %i.ad, %i.y
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.af = add i32 %.01519.us, 1
  %i.ag = add nsw i32 %.020.us, 1
  %exitcond22.not = icmp eq i32 %.01519.us, %i.d
  br i1 %exitcond22.not, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.020 = phi i32 [ %i.aq, %bb.e ], [ %i.k, %.lr.ph ] ; 2 uses
  %.01519 = phi i32 [ %i.ap, %bb.e ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.ah = ashr i32 %.01519, 5
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %i.l, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = and i32 %.01519, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.al, %i.an
  %.not17 = icmp eq i32 %i.ao, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  tail call void @explode(i32 noundef %i.n, i32 noundef %.020)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.d
  %i.ap = add i32 %.01519, 1
  %i.aq = add nsw i32 %.020, 1
  %exitcond.not = icmp eq i32 %.01519, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @map(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !8 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !14 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %wide.load64 = load <4 x i32>, ptr %i.e, align 4, !tbaa !4
  %i.f = mul <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.g = mul <4 x i32> %wide.load64, %vec.phi63   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.013.i.ph = phi i32 [ 1, %.lr.ph.i ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.013.i = phi i32 [ %i.l, %scalar.ph ], [ %.013.i.ph, %scalar.ph.preheader ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = mul nsw i32 %i.k, %.013.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !28

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.i, %middle.block ], [ %i.l, %scalar.ph ] ; 3 uses
  %i.m = icmp slt i32 %.lcssa, 33
  %i.n = add nsw i32 %.lcssa, -1
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.o, 536870908
  %i.q = add nuw nsw i32 %i.p, 8
  %spec.select.i = select i1 %i.m, i32 8, i32 %i.q
  %i.r = zext nneg i32 %spec.select.i to i64
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.0.lcssa21.i = phi i32 [ %.lcssa, %._crit_edge.i ], [ 1, %bb.a ]
  %i.s = phi i64 [ %i.r, %._crit_edge.i ], [ 8, %bb.a ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #7
  %i.u = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.t, i32 noundef %.0.lcssa21.i) #8 ; 4 uses
  store ptr %i.u, ptr @Gminterm, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 3 uses
  store ptr %i.w, ptr @Gcube, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  %i.z = load i32, ptr %0, align 8, !tbaa !24
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx.i = shl nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %.idx.i
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph15.i, label %minterms.exit

.lr.ph15.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph15.i
  %i.ae = phi ptr [ %i.aj, %.lr.ph15.i ], [ %i.w, %._crit_edge.thread.i ]
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, -1
  tail call void @explode(i32 noundef %i.ag, i32 noundef 0)
  %i.ah = load i32, ptr %0, align 8, !tbaa !24
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai ; 3 uses
  store ptr %i.aj, ptr @Gcube, align 8, !tbaa !19
  %i.ak = icmp ult ptr %i.aj, %i.ac
  br i1 %i.ak, label %.lr.ph15.i, label %minterms.exit

minterms.exit:                                    ; preds = %.lr.ph15.i, %._crit_edge.thread.i
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.am = shl nuw i32 1, %i.al                    ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !14
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge52

.lr.ph.preheader:                                 ; preds = %minterms.exit, %._crit_edge
  %.03750 = phi i32 [ %i.cn, %._crit_edge ], [ 0, %minterms.exit ] ; 3 uses
  %i.au = shl i32 %.03750, %i.al
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.03750) ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.03649 = phi i32 [ %i.cj, %bb.r ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.aw = shl nuw nsw i32 %.03649, 8
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.q
  %indvars.iv54 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next55, %bb.q ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr @mapindex, i64 %indvars.iv54
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.046 = phi i32 [ 0, %.preheader ], [ %.1, %bb.h ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = add nsw i32 %i.az, %i.aw                ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = add nsw i32 %i.ba, %i.au                ; 2 uses
  %i.bd = ashr i32 %i.bc, 5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %i.u, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = and i32 %i.bc, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = and i32 %i.bh, %i.bj
  %.not44 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not44, i32 46, i32 49
  %i.bm = load ptr, ptr @stdout, align 8, !tbaa !30
  %i.bn = tail call i32 @putc(i32 noundef %i.bl, ptr noundef %i.bm), !inline_history !32 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 1, %bb.c ], [ %.046, %bb.b ]    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.bp = and i32 %i.bo, 3
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !30
  %i.bs = tail call i32 @putc(i32 noundef 32, ptr noundef %i.br), !inline_history !32 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bt = and i32 %i.bo, 7
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  %.not41 = icmp eq i32 %.1, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !30
  %i.bx = tail call i32 @putc(i32 noundef 10, ptr noundef %i.bw), !inline_history !32 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 4 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next55 to i32 ; 2 uses
  %i.bz = and i32 %i.by, 3
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not42 = icmp eq i64 %indvars.iv54, 15
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr @mapindex, i64 %indvars.iv.next55
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !4
  %.not43 = icmp slt i32 %i.cc, %i.am
  br i1 %.not43, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !30
  %i.ce = tail call i32 @putc(i32 noundef 10, ptr noundef %i.cd), !inline_history !32 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.cf = and i32 %i.by, 7
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !30
  %i.ci = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ch), !inline_history !32 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 16
  br i1 %exitcond57.not, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q, %bb.m
  %i.cj = add nuw nsw i32 %.03649, 1
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 8)
  %i.cm = add nsw i32 %i.cl, -8
  %.not40.not = icmp samesign ult i32 %.03649, %i.cm
  br i1 %.not40.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %i.cn = add nuw nsw i32 %.03750, 1              ; 2 uses
  %exitcond58.not = icmp eq i32 %i.cn, %i.as
  br i1 %exitcond58.not, label %._crit_edge52, label %.lr.ph.preheader

._crit_edge52:                                    ; preds = %._crit_edge, %minterms.exit
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge52
  tail call void @free(ptr noundef nonnull %i.u) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge52
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
end_hunk_0
