inline.NumInlined: 29
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@bit_count = external local_unnamed_addr global [256 x i32], align 16
@.str = private unnamed_addr constant [26 x i8] c"sf_join: sf_size mismatch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sf_append: sf_size mismatch\00", align 1
@set_family_garbage = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"A[%d] = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[%4d] %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Error reading set family\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Error reading set family (at end of line)\00", align 1
@s1 = internal global [120 x i8] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @bit_index(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = and i32 %0, 1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.010 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.preheader ]
  %.069 = phi i32 [ %i.d, %.lr.ph ], [ %0, %.preheader ] ; 2 uses
  %i.d = lshr exact i32 %.069, 1
  %i.e = add nuw nsw i32 %.010, 1                 ; 2 uses
  %i.f = and i32 %.069, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ %i.e, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @set_ord(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i32 %i.a, 1023
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.01012 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 5 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = lshr i32 %i.f, 8
  %i.l = and i32 %i.k, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = lshr i32 %i.f, 16
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = lshr i32 %i.f, 24
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add i32 %i.j, %.01012
  %i.z = add i32 %i.y, %i.o
  %i.aa = add i32 %i.z, %i.t
  %i.ab = add i32 %i.aa, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.ab, %bb.b ], [ %.01012, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ac = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.010.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @set_dist(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i32 %i.a, 1023
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.01214 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = and i32 %i.h, %i.f                       ; 5 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = lshr i32 %i.i, 8
  %i.o = and i32 %i.n, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = lshr i32 %i.i, 16
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = lshr i32 %i.i, 24
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add i32 %i.m, %.01214
  %i.ac = add i32 %i.ab, %i.r
  %i.ad = add i32 %i.ac, %i.w
  %i.ae = add i32 %i.ad, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.ae, %bb.b ], [ %.01214, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.af = icmp sgt i64 %indvars.iv, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.012.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @set_clear(ptr noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = lshr i32 %i.a, 5
  %i.c = add nuw nsw i32 %i.b, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp sgt i32 %1, 32
  %i.d = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow, i32 %i.c, i32 1 ; 3 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !4
  %i.e = shl nuw nsw i32 %i.d, 2
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nsw i32 %i.d, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %scevgep = getelementptr i8, ptr %0, i64 %i.j
  %i.k = add nuw nsw i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @set_fill(ptr noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = lshr i32 %i.a, 5
  %i.c = add nuw nsw i32 %i.b, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp sgt i32 %1, 32
  %i.d = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow, i32 %i.c, i32 1 ; 5 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = shl nsw i32 %i.d, 5
  %i.h = sub nsw i32 %i.g, %1
  %i.i = lshr i32 -1, %i.h
  store i32 %i.i, ptr %i.f, align 4, !tbaa !4
  %i.j = icmp samesign ugt i32 %i.d, 1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = add nsw i32 %i.d, -1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %scevgep = getelementptr i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.m, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_copy(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 4 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.b, 7
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.d, 2040                     ; 3 uses
  %i.h = sub nsw i64 %i.c, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = sub i64 %i.c, %index                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -12
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -28
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !4
  %wide.load7 = load <4 x i32>, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -12
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -28
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !4
  store <4 x i32> %wide.load7, ptr %i.o, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %bb.a ], [ %i.h, %middle.block ] ; 4 uses
  %i.q = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !11

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.u, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !13

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_and(ptr noundef returned captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = icmp ne i32 %i.f, 0
  %umin.neg = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.h, %umin.neg              ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.k, %i.l
  %diff.check = icmp ult i64 %i.n, 32
  %i.o = sub i64 %i.m, %i.l
  %diff.check12 = icmp ult i64 %i.o, 32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.p = sub nsw i64 %i.g, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.g, %index                     ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load15 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %wide.load16 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %i.x = and <4 x i32> %wide.load15, %wide.load
  %i.y = and <4 x i32> %wide.load16, %wide.load13
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
end_hunk_0
begin_hunk_1_@set_orp:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  %.0.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.ah, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.ao, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = or i32 %i.al, %i.aj                     ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = or i32 %i.am, %.0                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ap = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ah, %middle.block ], [ %i.ao, %scalar.ph ]
  %i.aq = icmp ne i32 %.lcssa, 0
  %i.ar = zext i1 %i.aq to i32
  ret i32 %i.ar
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_empty(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.f, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %.0, -1
  %i.g = icmp sgt i32 %.0, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.04 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.04
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_full(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 5
  %i.d = sub nsw i32 %i.c, %1
  %i.e = lshr i32 -1, %i.d
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %.not = icmp eq i32 %i.h, %i.e
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.i = and i32 %i.a, 1023                       ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.k = zext nneg i32 %i.i to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.l = icmp sgt i64 %indvars.iv14, 2
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv14 = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv14, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not12 = icmp eq i32 %i.n, -1
  br i1 %.not12, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.preheader.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.preheader ], [ 1, %.preheader ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_equal(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.0, -1
  %i.i = icmp sgt i32 %.0, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_disjoint(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = and i32 %i.g, %i.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0, -1
  %i.j = icmp sgt i32 %.0, 1
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @setp_implies(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, %i.h
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.0, -1
  %i.k = icmp sgt i32 %.0, 1
  br i1 %i.k, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_or(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp slt i32 %i.b, 33
  %i.d = add nsw i32 %i.b, -1
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 536870908
  %i.g = add nuw nsw i32 %i.f, 8
  %narrow = select i1 %i.c, i32 8, i32 %i.g
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 6 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.k = add i32 %i.j, -1
  %i.l = lshr i32 %i.k, 5
  %i.m = add nuw nsw i32 %i.l, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.j, 32
  %i.n = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.m, i32 1 ; 3 uses
  store i32 %i.n, ptr %i.i, align 4, !tbaa !4
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nsw i32 %i.n, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  %i.t = sub nsw i64 %i.p, %i.s
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.t
  %i.u = add nuw nsw i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.u, i1 false), !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34
  %i.z = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx = shl nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %.idx
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ae = sext i32 %i.z to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02224 = phi ptr [ %i.w, %.lr.ph ], [ %i.bc, %.loopexit ] ; 3 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !4
  %i.ag = and i32 %i.af, 1023                     ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = icmp ne i32 %i.ag, 0
  %umin.neg = sext i1 %i.aj to i64
  %i.ak = add nsw i64 %i.ai, %umin.neg            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.ak, -8                      ; 3 uses
  %i.al = sub nsw i64 %i.ah, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = sub i64 %i.ah, %index                   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -12 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %i.am ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -12
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -28
  %wide.load28 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = or <4 x i32> %wide.load28, %wide.load
  %i.au = or <4 x i32> %wide.load29, %wide.load26
  store <4 x i32> %i.at, ptr %i.ao, align 4, !tbaa !4
  store <4 x i32> %i.au, ptr %i.ap, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ah, %bb.b ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bb = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bb, label %scalar.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bc = getelementptr inbounds [4 x i8], ptr %.02224, i64 %i.ae ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.ac
  br i1 %i.bd, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_and(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp slt i32 %i.b, 33
  %i.d = add nsw i32 %i.b, -1
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 536870908
  %i.g = add nuw nsw i32 %i.f, 8
  %narrow = select i1 %i.c, i32 8, i32 %i.g
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 8 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %i.k = add i32 %i.j, -1
  %i.l = lshr i32 %i.k, 5
  %i.m = add nuw nsw i32 %i.l, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.j, 32
  %i.n = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.m, i32 1 ; 6 uses
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nsw i32 %i.n, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = sub nsw i64 %i.p, %i.s
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.t
  %i.u = add nuw nsw i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.u, i1 false), !tbaa !4
  store i32 %i.n, ptr %i.i, align 4, !tbaa !4
  %i.v = zext nneg i32 %i.n to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v
  %i.x = shl nsw i32 %i.n, 5
  %i.y = sub nsw i32 %i.x, %i.j
  %i.z = lshr i32 -1, %i.y
  store i32 %i.z, ptr %i.w, align 4, !tbaa !4
  %i.aa = icmp samesign ugt i32 %i.n, 1
  br i1 %i.aa, label %.lr.ph.preheader.i, label %set_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %scevgep.i25 = getelementptr i8, ptr %i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i25, i8 -1, i64 %i.s, i1 false), !tbaa !4
  br label %set_fill.exit

set_fill.exit:                                    ; preds = %bb.a, %.lr.ph.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ag = mul nsw i32 %i.af, %i.ae                ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %.idx = shl nsw i64 %i.ah, 2
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 %.idx
  %i.aj = icmp sgt i32 %i.ag, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %set_fill.exit
  %i.ak = sext i32 %i.af to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02326 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bi, %.loopexit ] ; 3 uses
  %i.al = load i32, ptr %i.i, align 4, !tbaa !4
  %i.am = and i32 %i.al, 1023                     ; 2 uses
  %i.an = zext nneg i32 %i.am to i64              ; 4 uses
  %i.ao = add nuw nsw i64 %i.an, 1
  %i.ap = icmp ne i32 %i.am, 0
  %umin.neg = sext i1 %i.ap to i64
  %i.aq = add nsw i64 %i.ao, %umin.neg            ; 3 uses
  %min.iters.check = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.aq, -8                      ; 3 uses
  %i.ar = sub nsw i64 %i.an, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = sub i64 %i.an, %index                   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %i.as ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load30 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !4
  %wide.load31 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %i.az = and <4 x i32> %wide.load30, %wide.load
  %i.ba = and <4 x i32> %wide.load31, %wide.load28
  store <4 x i32> %i.az, ptr %i.au, align 4, !tbaa !4
  store <4 x i32> %i.ba, ptr %i.av, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.an, %bb.b ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = and i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bh = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bh, label %scalar.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bi = getelementptr inbounds [4 x i8], ptr %.02326, i64 %i.ak ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.ai
  br i1 %i.bj, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %set_fill.exit
  ret ptr %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_active(ptr noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !35
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %.012, align 4, !tbaa !4
  %i.k = or i32 %i.j, 8192
  store i32 %i.k, ptr %.012, align 4, !tbaa !4
  %i.l = load i32, ptr %0, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.012, i64 %i.m ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.c, align 4, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !40
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_inactive(ptr noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34
  %i.e = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.j = phi i32 [ %i.av, %bb.e ], [ %i.e, %bb.a ] ; 3 uses
  %.02127 = phi ptr [ %.1, %bb.e ], [ %i.b, %bb.a ] ; 10 uses
  %.02225 = phi ptr [ %i.aw, %bb.e ], [ %i.b, %bb.a ] ; 10 uses
  %.0222530 = ptrtoaddr ptr %.02225 to i64
  %.0212731 = ptrtoaddr ptr %.02127 to i64
  %i.k = load i32, ptr %.02225, align 4, !tbaa !4 ; 2 uses
  %i.l = and i32 %i.k, 8192
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not23 = icmp eq ptr %.02127, %.02225
  br i1 %.not23, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 1023                       ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.m, 7
  %i.p = sub i64 %.0222530, %.0212731
  %diff.check = icmp ult i64 %i.p, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.o, 2040                     ; 3 uses
  %i.q = sub nsw i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = sub i64 %i.n, %index                     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.02225, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %wide.load32 = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -12
end_hunk_1
begin_hunk_2_@sf_inactive:bb.a

bb.d:                                             ; preds = %.lr.ph
  %i.at = load i32, ptr %i.c, align 4, !tbaa !34
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.c, align 4, !tbaa !34
  %.pre29 = sext i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.pre-phi = phi i64 [ %i.ar, %.loopexit ], [ %.pre29, %bb.d ]
  %i.av = phi i32 [ %i.aq, %.loopexit ], [ %i.j, %bb.d ]
  %.1 = phi ptr [ %i.as, %.loopexit ], [ %.02127, %bb.d ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %.02225, i64 %.pre-phi ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.h
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_copy(ptr noundef returned captures(ret: address, provenance) initializes((0, 8), (12, 20)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 8, !tbaa !4
  %i.b = load i32, ptr %1, align 8, !tbaa !35
  store <2 x i32> %i.a, ptr %0, align 8, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  %i.f = load i32, ptr %i.c, align 4, !tbaa !34
  store <2 x i32> %i.e, ptr %i.d, align 4, !tbaa !4
  %i.g = sext i32 %i.b to i64
  %i.h = sext i32 %i.f to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 7 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %diff.check = icmp ult i64 %i.q, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.i, 9223372036854775800      ; 4 uses
  %i.r = shl i64 %n.vec, 2                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %i.l, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.l, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !4
  %wide.load14 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load14, ptr %i.w, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.t, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader19, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader19 ]
  %.058.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader19 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader19 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader19 ]
  %i.y = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.z = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.z, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !45

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader19
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader19 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader19 ], [ %i.aa, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader19 ], [ %i.y, %.lr.ph.i.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.ph, %i.i
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.ae = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.ae, ptr %.058.i, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.an, ptr %i.al, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.az = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.i
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !46

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_join(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %.not = icmp eq i32 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str) #25
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  %.pre29 = load i32, ptr %i.d, align 4, !tbaa !34
  %.pre30 = load i32, ptr %i.g, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %.pre30, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.l = phi i32 [ %.pre29, %bb.b ], [ %i.e, %bb.a ]
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.n = mul i32 %i.f, %i.e                       ; 4 uses
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = mul i32 %i.c, %i.b                       ; 4 uses
  %i.q = sext i32 %i.p to i64                     ; 7 uses
  %i.r = add nsw i32 %i.l, %i.m                   ; 2 uses
  %i.s = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  store ptr %i.w, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.u, %bb.d ], [ %i.s, %bb.e ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.k, ptr %i.x, align 4, !tbaa !28
  %i.y = add i32 %i.k, -1
  %i.z = lshr i32 %i.y, 5
  %i.aa = add nuw nsw i32 %i.z, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.k, 32
  %i.ab = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.aa, i32 2 ; 2 uses
  store i32 %i.ab, ptr %.0.i, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.r, ptr %i.ac, align 8, !tbaa !49
  %i.ad = sext i32 %i.r to i64
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = shl nsw i64 %i.ad, 2
  %i.ag = mul nsw i64 %i.af, %i.ae
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #24 ; 6 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !40
  %i.am = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.an = load <2 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.ao = add nsw <2 x i32> %i.an, %i.am
  store <2 x i32> %i.ao, ptr %i.ak, align 4, !tbaa !4
  %i.ap = icmp sgt i32 %i.p, 0
  br i1 %i.ap, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %sf_new.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 4 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = sub i64 %i.ai, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.q, 2147483640               ; 4 uses
  %i.au = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.av = getelementptr i8, ptr %i.ah, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ar, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ar, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !4
  %wide.load33 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load33, ptr %i.az, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.ah, %.lr.ph.i.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.ar, %.lr.ph.i.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.q, 7
  %i.bb = and i32 %i.p, 7
  %lcmp.mod.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader57, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ]
  %.058.i.prol = phi ptr [ %i.be, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.bc, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader57 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.bd = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.bd, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader57
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader57 ], [ %i.be, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader57 ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.ph, %i.q
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.ce, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.bi = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.bi, ptr %.058.i, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.q
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !52

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %sf_new.exit
  %i.cf = icmp sgt i32 %i.n, 0
  br i1 %i.cf, label %.lr.ph.i22.preheader, label %intcpy.exit28

.lr.ph.i22.preheader:                             ; preds = %intcpy.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 5 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.q ; 4 uses
  %min.iters.check39 = icmp ult i32 %i.n, 12
  br i1 %min.iters.check39, label %.lr.ph.i22.preheader56, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i22.preheader
  %i.cj = ptrtoaddr ptr %i.ch to i64
  %i.ck = shl nsw i64 %i.q, 2
  %i.cl = add i64 %i.ck, %i.ai
  %i.cm = sub i64 %i.cl, %i.cj
  %diff.check37 = icmp ult i64 %i.cm, 32
  br i1 %diff.check37, label %.lr.ph.i22.preheader56, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck36
  %n.vec42 = and i64 %i.o, 2147483640             ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec42, 2             ; 2 uses
  %i.co = getelementptr i8, ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.ch, i64 %i.cn
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.cq = shl i64 %index44, 2                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ci, i64 %i.cq ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ch, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !4
  %wide.load48 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %wide.load47, ptr %next.gep45, align 4, !tbaa !4
  store <4 x i32> %wide.load48, ptr %i.cs, align 4, !tbaa !4
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ct, label %middle.block50, label %vector.body43, !llvm.loop !53

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %n.vec42, %i.o
  br i1 %cmp.n51, label %intcpy.exit28, label %.lr.ph.i22.preheader56

.lr.ph.i22.preheader56:                           ; preds = %vector.memcheck36, %.lr.ph.i22.preheader, %middle.block50
  %indvars.iv.i23.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.i22.preheader ], [ %n.vec42, %middle.block50 ] ; 3 uses
  %.058.i24.ph = phi ptr [ %i.ci, %vector.memcheck36 ], [ %i.ci, %.lr.ph.i22.preheader ], [ %i.co, %middle.block50 ] ; 2 uses
  %.067.i25.ph = phi ptr [ %i.ch, %vector.memcheck36 ], [ %i.ch, %.lr.ph.i22.preheader ], [ %i.cp, %middle.block50 ] ; 2 uses
  %xtraiter58 = and i64 %i.o, 7
  %i.cu = and i32 %i.n, 7
  %lcmp.mod59.not = icmp eq i32 %i.cu, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader56, %.lr.ph.i22.prol
  %indvars.iv.i23.prol = phi i64 [ %indvars.iv.next.i26.prol, %.lr.ph.i22.prol ], [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader56 ]
  %.058.i24.prol = phi ptr [ %i.cx, %.lr.ph.i22.prol ], [ %.058.i24.ph, %.lr.ph.i22.preheader56 ] ; 2 uses
  %.067.i25.prol = phi ptr [ %i.cv, %.lr.ph.i22.prol ], [ %.067.i25.ph, %.lr.ph.i22.preheader56 ] ; 2 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i22.prol ], [ 0, %.lr.ph.i22.preheader56 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.067.i25.prol, i64 4 ; 2 uses
  %i.cw = load i32, ptr %.067.i25.prol, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %.058.i24.prol, i64 4 ; 2 uses
  store i32 %i.cw, ptr %.058.i24.prol, align 4, !tbaa !4
  %indvars.iv.next.i26.prol = add nuw nsw i64 %indvars.iv.i23.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !54

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader56
  %indvars.iv.i23.unr = phi i64 [ %indvars.iv.i23.ph, %.lr.ph.i22.preheader56 ], [ %indvars.iv.next.i26.prol, %.lr.ph.i22.prol ]
  %.058.i24.unr = phi ptr [ %.058.i24.ph, %.lr.ph.i22.preheader56 ], [ %i.cx, %.lr.ph.i22.prol ]
end_hunk_2
begin_hunk_3_@sf_append:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.1) #25
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %.pre26, %bb.b ], [ %i.e, %bb.a ]
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.m = add nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  %i.q = sext i32 %i.m to i64
  %i.r = load i32, ptr %0, align 8, !tbaa !35
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.q, 2
  %i.u = mul i64 %i.t, %i.s                       ; 2 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.u) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = mul nsw i32 %i.f, %i.e                   ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 5 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 7 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = icmp sgt i32 %i.z, 0
  br i1 %i.ae, label %.lr.ph.i.preheader, label %intcpy.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.af = mul i32 %i.c, %i.b
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ag ; 4 uses
  %min.iters.check = icmp ult i32 %i.z, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ai = shl nsw i64 %i.ag, 2
  %i.aj = add i64 %i.ai, %i.y
  %i.ak = sub i64 %i.aj, %i.ad
  %diff.check = icmp ult i64 %i.ak, 32
  br i1 %diff.check, label %.lr.ph.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2147483640              ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load29, ptr %i.aq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %intcpy.exit, label %.lr.ph.i.preheader32

.lr.ph.i.preheader32:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %.067.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.preheader ], [ %i.an, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.aa, 7
  %i.as = and i32 %i.z, 7
  %lcmp.mod.not = icmp eq i32 %i.as, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader32, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader32 ]
  %.058.i.prol = phi ptr [ %i.av, %.lr.ph.i.prol ], [ %.058.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %.067.i.prol = phi ptr [ %i.at, %.lr.ph.i.prol ], [ %.067.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader32 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.067.i.prol, i64 4 ; 2 uses
  %i.au = load i32, ptr %.067.i.prol, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.058.i.prol, i64 4 ; 2 uses
  store i32 %i.au, ptr %.058.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !57

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader32
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader32 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.058.i.unr = phi ptr [ %.058.i.ph, %.lr.ph.i.preheader32 ], [ %i.av, %.lr.ph.i.prol ]
  %.067.i.unr = phi ptr [ %.067.i.ph, %.lr.ph.i.preheader32 ], [ %i.at, %.lr.ph.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.ph, %i.aa
  %i.ax = icmp ugt i64 %i.aw, -8
  br i1 %i.ax, label %intcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ]
  %.058.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %.058.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.067.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.067.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.067.i, i64 4
  %i.az = load i32, ptr %.067.i, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i32 %i.az, ptr %.058.i, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %.058.i, i64 8
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.067.i, i64 12
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.058.i, i64 12
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.058.i, i64 16
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.067.i, i64 20
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i, i64 20
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.058.i, i64 24
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.067.i, i64 28
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.058.i, i64 28
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.067.i, i64 32
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.058.i, i64 32
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.aa
  br i1 %exitcond.not.i.7, label %intcpy.exit, label %.lr.ph.i, !llvm.loop !58

intcpy.exit:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.f
  %i.bw = load <2 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.bx = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.by = add nsw <2 x i32> %i.bx, %i.bw
  store <2 x i32> %i.by, ptr %i.a, align 4, !tbaa !4
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %intcpy.exit
  tail call void @free(ptr noundef nonnull %i.ac) #25
  store ptr null, ptr %i.ab, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %intcpy.exit, %bb.g
  %i.bz = load ptr, ptr @set_family_garbage, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !48
  store ptr %1, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_new(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  store ptr %i.e, ptr @set_family_garbage, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.c ]  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %1, ptr %i.f, align 4, !tbaa !28
  %i.g = add i32 %1, -1
  %i.h = lshr i32 %i.g, 5
  %i.i = add nuw nsw i32 %i.h, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp sgt i32 %1, 32
  %i.j = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow, i32 %i.i, i32 2 ; 2 uses
  store i32 %i.j, ptr %.0, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %0, ptr %i.k, align 8, !tbaa !49
  %i.l = sext i32 %0 to i64
  %i.m = zext nneg i32 %i.j to i64
  %i.n = shl nsw i64 %i.l, 2
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #24
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !40
  ret ptr %.0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_save(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 3 uses
  %i.e = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  store ptr %i.i, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.c ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.d, ptr %i.j, align 4, !tbaa !28
  %i.k = add i32 %i.d, -1
  %i.l = lshr i32 %i.k, 5
  %i.m = add nuw nsw i32 %i.l, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.d, 32
  %i.n = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.m, i32 2 ; 2 uses
  store i32 %i.n, ptr %.0.i, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !49
  %i.p = sext i32 %i.b to i64
  %i.q = zext nneg i32 %i.n to i64
  %i.r = shl nsw i64 %i.p, 2
  %i.s = mul nsw i64 %i.r, %i.q
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !40
  %i.x = load <2 x i32>, ptr %0, align 8, !tbaa !4
  %i.y = load i32, ptr %0, align 8, !tbaa !35
  store <2 x i32> %i.x, ptr %.0.i, align 8, !tbaa !4
  %i.z = load <2 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !34
  store <2 x i32> %i.z, ptr %i.v, align 4, !tbaa !4
  %i.ab = sext i32 %i.y to i64
  %i.ac = sext i32 %i.aa to i64
  %i.ad = mul nsw i64 %i.ac, %i.ab                ; 7 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.preheader.i, label %sf_copy.exit

.lr.ph.i.preheader.i:                             ; preds = %sf_new.exit
  %i.af = ptrtoaddr ptr %i.t to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 4 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = sub i64 %i.af, %i.ai
  %diff.check = icmp ult i64 %i.aj, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 4 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.t, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.an ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.ah, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep4, align 4, !tbaa !4
  %wide.load5 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load5, ptr %i.ap, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %sf_copy.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.058.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.preheader.i ], [ %i.al, %middle.block ] ; 2 uses
  %.067.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.preheader.i ], [ %i.am, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ]
  %.058.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.prol ], [ %.058.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.prol ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.067.i.i.prol, i64 4 ; 2 uses
  %i.as = load i32, ptr %.067.i.i.prol, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %.058.i.i.prol, i64 4 ; 2 uses
  store i32 %i.as, ptr %.058.i.i.prol, align 4, !tbaa !4
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !60

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.058.i.i.unr = phi ptr [ %.058.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.at, %.lr.ph.i.i.prol ]
  %.067.i.i.unr = phi ptr [ %.067.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.prol ]
  %i.au = sub nsw i64 %indvars.iv.i.i.ph, %i.ad
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %sf_copy.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.058.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.058.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.067.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.067.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 4
  %i.ax = load i32, ptr %.067.i.i, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 4
  store i32 %i.ax, ptr %.058.i.i, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 8
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 8
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 12
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 12
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 16
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 20
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 20
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 24
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 24
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 28
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 28
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 32
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 32
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.ad
  br i1 %exitcond.not.i.i.7, label %sf_copy.exit, label %.lr.ph.i.i, !llvm.loop !61

sf_copy.exit:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %sf_new.exit
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @sf_free(ptr noundef initializes((32, 40)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #25
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @sf_cleanup() local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  tail call void @free(ptr noundef nonnull %.06) #25
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr @set_family_garbage, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_addset(ptr noundef returned captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i32 %i.e, 2
  %i.g = add i32 %i.e, 1
end_hunk_3
begin_hunk_4_@sf_bm_print:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.k = lshr i64 %indvars.iv.i, 5
  %i.l = and i64 %i.k, 134217727
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = and i32 %i.j, 30
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, %i.o
  %.not.i = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i, i8 48, i8 49
  %i.t = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i
  store i8 %i.s, ptr %i.t, align 2, !tbaa !68
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.v = lshr i64 %indvars.iv.i, 5
  %i.w = and i64 %i.v, 134217727
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = and i32 %i.u, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not.i.1 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i.1, i8 48, i8 49
  %i.ae = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.next.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pbv1.exit.loopexit.unr-lcssa, label %.lr.ph.i

pbv1.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pbv1.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %pbv1.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %pbv1.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod12 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.af = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ag = lshr i64 %indvars.iv.i.epil.init, 5
  %i.ah = and i64 %i.ag, 134217727
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.af, 31
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %i.ak
  %.not.i.epil = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not.i.epil, i8 48, i8 49
  %i.ap = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i.epil.init
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !68
  br label %pbv1.exit

pbv1.exit:                                        ; preds = %.lr.ph.i.epil.preheader, %pbv1.exit.loopexit.unr-lcssa, %bb.b
  %i.aq = sext i32 %i.g to i64
  %i.ar = getelementptr inbounds i8, ptr @s1, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !68
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.010, ptr noundef nonnull @s1) ; 0 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !35
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.089, i64 %i.au
  %i.aw = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !34
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %pbv1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_write(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.d) #25 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !34
  %i.i = load i32, ptr %1, align 8, !tbaa !35
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %set_write.exit.peel.next
  %.014 = phi ptr [ %i.ae, %set_write.exit.peel.next ], [ %i.g, %bb.a ] ; 4 uses
  %i.n = load i32, ptr %.014, align 4, !tbaa !4   ; 2 uses
  %i.o = and i32 %i.n, 1023                       ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %set_write.exit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.q = zext nneg i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.s) #25 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.u = and i64 %indvars.iv.next.i, 7
  %.not15 = icmp eq i64 %i.u, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %set_write.exit.peel.begin.loopexit, label %bb.b, !llvm.loop !73

set_write.exit.peel.begin.loopexit:               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.next.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %set_write.exit.peel.begin

set_write.exit.peel.begin:                        ; preds = %set_write.exit.peel.begin.loopexit, %.lr.ph
  %i.w = phi i32 [ %i.n, %.lr.ph ], [ %.pre, %set_write.exit.peel.begin.loopexit ]
  %i.x = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i, %set_write.exit.peel.begin.loopexit ] ; 2 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.w) #25 ; 0 uses
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 7
  %.not12.i.peel = icmp eq i64 %i.x, %i.p
  %or.cond.i.peel = or i1 %.not12.i.peel, %i.aa
  br i1 %or.cond.i.peel, label %set_write.exit.peel.next, label %bb.e

bb.e:                                             ; preds = %set_write.exit.peel.begin
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %set_write.exit.peel.next

set_write.exit.peel.next:                         ; preds = %bb.e, %set_write.exit.peel.begin
  %fputc.i = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.ac = load i32, ptr %1, align 8, !tbaa !35
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.014, i64 %i.ad ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.l
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %set_write.exit.peel.next, %bb.a
  %i.ag = tail call i32 @fflush(ptr noundef %0)   ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_read(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %i.f = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  store ptr %i.j, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.e, ptr %i.k, align 4, !tbaa !28
  %i.l = add i32 %i.e, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.e, 32
  %i.o = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.n, i32 2 ; 2 uses
  store i32 %i.o, ptr %.0.i, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.d, ptr %i.p, align 8, !tbaa !49
  %i.q = sext i32 %i.d to i64
  %i.r = zext nneg i32 %i.o to i64
  %i.s = shl nsw i64 %i.q, 2
  %i.t = mul nsw i64 %i.s, %i.r
  %i.u = call noalias ptr @malloc(i64 noundef %i.t) #24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !40
  %i.y = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !34
  %i.z = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx = shl nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 %.idx
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %sf_new.exit, %._crit_edge
  %.019 = phi ptr [ %i.aq, %._crit_edge ], [ %i.u, %sf_new.exit ] ; 5 uses
  %i.ae = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %.019) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !4
  %i.af = load i32, ptr %.019, align 4, !tbaa !4
  %i.ag = and i32 %i.af, 1023
  %.not17 = icmp eq i32 %i.ag, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20, %.lr.ph
  %storemerge18 = phi i32 [ %i.al, %.lr.ph ], [ 1, %.lr.ph20 ]
  %i.ah = zext nneg i32 %storemerge18 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.019, i64 %i.ah
  %i.aj = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ai) #25 ; 0 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !4
  %i.al = add nsw i32 %i.ak, 1                    ; 3 uses
  store i32 %i.al, ptr %i.b, align 4, !tbaa !4
  %i.am = load i32, ptr %.019, align 4, !tbaa !4
  %i.an = and i32 %i.am, 1023
  %.not = icmp ugt i32 %i.al, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph20
  %i.ao = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.019, i64 %i.ap ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.ac
  br i1 %i.ar, label %.lr.ph20, label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge, %sf_new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0.i
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @set_write(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1023                       ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.peel.begin, label %.split

.split:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.split, %bb.d
  %indvars.iv = phi i64 [ 0, %.split ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.f) #25 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.h = and i64 %indvars.iv.next, 7
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.peel.begin, label %bb.b, !llvm.loop !75

.peel.begin:                                      ; preds = %bb.a, %bb.d
  %i.j = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.l) #25 ; 0 uses
  %indvars.iv.next.peel = add nuw nsw i64 %i.j, 1
  %i.n = and i64 %indvars.iv.next.peel, 7
  %i.o = icmp ne i64 %i.n, 0
  %.not12.peel = icmp eq i64 %i.j, %i.c
  %or.cond.peel = or i1 %.not12.peel, %i.o
  br i1 %or.cond.peel, label %.peel.next15, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %.peel.next15

.peel.next15:                                     ; preds = %.peel.begin, %bb.e
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_bm_read(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %i.f = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  store ptr %i.j, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.e, ptr %i.k, align 4, !tbaa !28
  %i.l = add i32 %i.e, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.e, 32
  %i.o = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.n, i32 2 ; 2 uses
  store i32 %i.o, ptr %.0.i, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.d, ptr %i.p, align 8, !tbaa !49
  %i.q = sext i32 %i.d to i64
  %i.r = zext nneg i32 %i.o to i64
  %i.s = shl nsw i64 %i.q, 2
  %i.t = mul nsw i64 %i.s, %i.r
  %i.u = call noalias ptr @malloc(i64 noundef %i.t) #24
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 3 uses
  store i32 0, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !40
  %i.y = load i32, ptr %i.a, align 4, !tbaa !4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %sf_new.exit, %bb.h
  %.017 = phi i32 [ %i.bi, %bb.h ], [ 0, %sf_new.exit ]
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ab = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !34  ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.w, align 4, !tbaa !34
  %i.ae = mul nsw i32 %i.ac, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %i.ai = add i32 %i.ah, -1
  %i.aj = lshr i32 %i.ai, 5
  %i.ak = add nuw nsw i32 %i.aj, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.ah, 32
  %i.al = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.ak, i32 1 ; 3 uses
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !4
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i32 %i.al, -1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.ar = sub nsw i64 %i.an, %i.aq
  %scevgep.i = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.as = add nuw nsw i64 %i.aq, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.as, i1 false), !tbaa !4
  %i.at = load i32, ptr %i.b, align 4, !tbaa !4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph18, %bb.f
  %.01516 = phi i32 [ %i.be, %bb.f ], [ 0, %.lr.ph18 ] ; 3 uses
  %i.av = call i32 @getc(ptr noundef %0)
  switch i32 %i.av, label %bb.e [
    i32 48, label %bb.f
    i32 49, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.aw = and i32 %.01516, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = lshr i32 %.01516, 5
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = or i32 %i.bc, %i.ax
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9) #25
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.d, %bb.e
  %i.be = add nuw nsw i32 %.01516, 1              ; 2 uses
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph18
  %i.bh = call i32 @getc(ptr noundef %0)
  %.not = icmp eq i32 %i.bh, 10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.10) #25
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.bi = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph18, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.h, %sf_new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @ps1(ptr noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !4
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 32736                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 91, ptr @s1, align 16, !tbaa !68
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.036 = phi i32 [ %.1, %bb.g ], [ 1, %bb.a ]    ; 2 uses
  %.02235 = phi i32 [ %i.ax, %bb.g ], [ 0, %bb.a ] ; 4 uses
  %.02334 = phi i32 [ %.3, %bb.g ], [ 1, %bb.a ]  ; 4 uses
  %i.e = lshr i32 %.02235, 5
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = and i32 %.02235, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not30 = icmp eq i32 %.036, 0
  br i1 %.not30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.02334, 1
  %i.n = sext i32 %.02334 to i64
  %i.o = getelementptr inbounds i8, ptr @s1, i64 %i.n
  store i8 44, ptr %i.o, align 1, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.124 = phi i32 [ %.02334, %bb.b ], [ %i.m, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.027 = phi i32 [ %i.t, %bb.e ], [ %.02235, %bb.d ] ; 3 uses
  %i.p = urem i32 %.027, 10
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !68
  %i.t = udiv i32 %.027, 10
  %.not31 = icmp samesign ult i32 %.027, 10
  %indvars.iv.next41 = add i32 %indvars.iv40, 1
  br i1 %.not31, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %i.u = sext i32 %indvars.iv40 to i64            ; 6 uses
  %i.v = sext i32 %.124 to i64                    ; 5 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.u, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp slt i32 %indvars.iv40, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.w, 24
  %n.vec = and i64 %i.w, 2147483616               ; 5 uses
  %i.x = add nsw i64 %n.vec, %i.v                 ; 3 uses
  %i.y = sub nsw i64 %i.u, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.u
  %invariant.gep70 = getelementptr i8, ptr @s1, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.z ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.ab = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !tbaa !68
  %wide.load52 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !68
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse53 = shufflevector <16 x i8> %wide.load52, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %gep71, i64 16
  store <16 x i8> %reverse, ptr %gep71, align 1, !tbaa !68
  store <16 x i8> %reverse53, ptr %i.ac, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.x, -1
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit65, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.w, 2147483640             ; 4 uses
  %i.ae = add nsw i64 %n.vec56, %i.v              ; 3 uses
  %i.af = sub nsw i64 %i.u, %n.vec56
  %invariant.gep72 = getelementptr i8, ptr %i.a, i64 %i.u
  %invariant.gep74 = getelementptr i8, ptr @s1, i64 %i.v
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = xor i64 %index57, -1
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %i.ag
  %i.ah = getelementptr inbounds i8, ptr %gep73, i64 -7
  %wide.load58 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !68
  %reverse59 = shufflevector <8 x i8> %wide.load58, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %index57
  store <8 x i8> %reverse59, ptr %gep75, align 1, !tbaa !68
  %index.next60 = add nuw i64 %index57, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next60, %n.vec56
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape61 = add nsw i64 %i.ae, -1
  %cmp.n62 = icmp eq i64 %i.w, %n.vec56
  br i1 %cmp.n62, label %.loopexit65, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_4
begin_hunk_5_@sf_count_restricted:bb.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %i.i, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34
  %i.n = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.o = mul nsw i32 %i.n, %i.m                   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx = shl nsw i64 %i.p, 2
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %._crit_edge
  %i.s = sext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %._crit_edge41
  %.042 = phi ptr [ %i.k, %.lr.ph44 ], [ %i.bm, %._crit_edge41 ] ; 4 uses
  %i.t = load i32, ptr %.042, align 4, !tbaa !4   ; 2 uses
  %i.u = and i32 %i.t, 1023                       ; 3 uses
  %.not14.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i, label %._crit_edge41, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.v = zext nneg i32 %i.u to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.v, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01012.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.042, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 5 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = lshr i32 %i.x, 8
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = lshr i32 %i.x, 16
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = lshr i32 %i.x, 24
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = add i32 %i.ab, %.01012.i
  %i.ar = add i32 %i.aq, %i.ag
  %i.as = add i32 %i.ar, %i.al
  %i.at = add i32 %i.as, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.1.i = phi i32 [ %i.at, %bb.c ], [ %.01012.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.au = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.au, label %.lr.ph.i, label %set_ord.exit

set_ord.exit:                                     ; preds = %bb.d
  %i.av = add nsw i32 %.1.i, -1
  %i.aw = sdiv i32 1024, %i.av
  %i.ax = shl nuw nsw i32 %i.u, 5
  %i.ay = and i32 %i.t, 1023
  %i.az = zext nneg i32 %i.ay to i64
  br label %.lr.ph40

.loopexit:                                        ; preds = %bb.f, %.lr.ph40
  %i.ba = icmp sgt i64 %indvars.iv51, 1
  br i1 %i.ba, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %set_ord.exit, %.loopexit
  %indvars.iv51 = phi i64 [ %i.az, %set_ord.exit ], [ %indvars.iv.next52, %.loopexit ] ; 4 uses
  %indvars.iv.in = phi i32 [ %i.ax, %set_ord.exit ], [ %indvars.iv, %.loopexit ]
  %indvars.iv = add nsw i32 %indvars.iv.in, -32   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.042, i64 %indvars.iv51
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv51
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = and i32 %i.be, %i.bc                    ; 2 uses
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, -1
  %.not34 = icmp eq i32 %i.bf, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.lr.ph40
  %i.bg = zext i32 %indvars.iv to i64
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %bb.f
  %indvars.iv48 = phi i64 [ %i.bg, %.lr.ph38.preheader ], [ %indvars.iv.next49, %bb.f ] ; 2 uses
  %.03036 = phi i32 [ %i.bf, %.lr.ph38.preheader ], [ %i.bl, %bb.f ] ; 2 uses
  %i.bh = and i32 %.03036, 1
  %.not32 = icmp eq i32 %i.bh, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = add nsw i32 %i.bj, %i.aw
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph38, %bb.e
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %i.bl = lshr i32 %.03036, 1                     ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %.loopexit, label %.lr.ph38

._crit_edge41:                                    ; preds = %.loopexit, %bb.b
  %i.bm = getelementptr inbounds [4 x i8], ptr %.042, i64 %i.s ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.q
  br i1 %i.bn, label %bb.b, label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge41, %._crit_edge
  ret ptr %i.e
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_delc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %reass.sub = sub i32 %2, %1
  %i.a = add i32 %reass.sub, 1
  %i.b = tail call ptr @sf_delcol(ptr noundef %0, i32 noundef %1, i32 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_addcol(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, -1
  %i.e = and i32 %i.d, -32
  %i.f = add i32 %i.e, 32
  %.inv = icmp sgt i32 %1, 32
  %i.g = select i1 %.inv, i32 %i.f, i32 32
  %i.h = add nsw i32 %1, %2                       ; 2 uses
  %.not = icmp sgt i32 %i.h, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.h, ptr %i.a, align 4, !tbaa !28
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = sub nsw i32 0, %2
  %i.j = tail call ptr @sf_delcol(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %0, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_delcol(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = sub nsw i32 %i.d, %2                     ; 3 uses
  %i.f = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  store ptr %i.j, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ]
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.e, ptr %i.l, align 4, !tbaa !28
  %i.m = add i32 %i.e, -1
  %i.n = lshr i32 %i.m, 5
  %i.o = add nuw nsw i32 %i.n, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.e, 32
  %i.p = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.o, i32 2 ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.q, align 8, !tbaa !49
  %i.r = sext i32 %i.b to i64
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul nsw i64 %i.t, %i.s
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #24 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 5 uses
  store i32 0, ptr %i.x, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 7 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !34
  %i.ac = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %i.ab                ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %.idx = shl nsw i64 %i.ae, 2
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %.idx ; 4 uses
  %i.ag = icmp sgt i32 %i.ad, 0
  br i1 %i.ag, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %sf_new.exit
  %i.ah = icmp sgt i32 %1, 0                      ; 2 uses
  %i.ai = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.aj = add nsw i32 %i.ai, %1                   ; 3 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !28  ; 3 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  %i.am = sext i32 %i.ac to i64                   ; 4 uses
  %.pre85 = load i32, ptr %.0.i, align 8, !tbaa !35 ; 4 uses
  %.pre86 = load i32, ptr %i.l, align 4, !tbaa !28 ; 2 uses
  %i.an = add i32 %.pre86, -1
  %i.ao = lshr i32 %i.an, 5
  %i.ap = add nuw nsw i32 %i.ao, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.us.us = icmp sgt i32 %.pre86, 32
  %i.aq = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.us.us, i32 %i.ap, i32 1 ; 6 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nsw i32 %i.aq, -1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  %invariant.op105 = sub nsw i64 %i.as, %i.av     ; 4 uses
  %i.aw = add nuw nsw i64 %i.av, 4                ; 4 uses
  br i1 %i.al, label %.lr.ph57.split.us, label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57
  br i1 %i.ah, label %.lr.ph57.split.us.split.us.preheader, label %.lr.ph57.split.us.split.preheader

.lr.ph57.split.us.split.preheader:                ; preds = %.lr.ph57.split.us
  %invariant.gep115 = getelementptr i8, ptr %i.v, i64 %invariant.op105
  br label %.lr.ph57.split.us.split

.lr.ph57.split.us.split.us.preheader:             ; preds = %.lr.ph57.split.us
  %invariant.gep117 = getelementptr i8, ptr %i.v, i64 %invariant.op105
  br label %.lr.ph57.split.us.split.us

.lr.ph57.split.us.split.us:                       ; preds = %.lr.ph57.split.us.split.us.preheader, %._crit_edge55.us.us
  %i.ax = phi i32 [ %i.ay, %._crit_edge55.us.us ], [ 0, %.lr.ph57.split.us.split.us.preheader ] ; 2 uses
  %.04656.us.us = phi ptr [ %i.ci, %._crit_edge55.us.us ], [ %i.aa, %.lr.ph57.split.us.split.us.preheader ] ; 3 uses
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  store i32 %i.ay, ptr %i.x, align 4, !tbaa !34
  %i.az = mul nsw i32 %i.ax, %.pre85
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ba ; 3 uses
  store i32 %i.aq, ptr %i.bb, align 4, !tbaa !4
  %i.bc = shl nsw i64 %i.ba, 2
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %i.bc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep118, i8 0, i64 %i.aw, i1 false), !tbaa !4
  br label %.preheader.us.us

._crit_edge.us.us:                                ; preds = %bb.g, %bb.e
  %.152.us.us = phi i32 [ %i.bu, %bb.e ], [ %i.aj, %bb.g ] ; 4 uses
  %i.bd = lshr i32 %.152.us.us, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %.04656.us.us, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = and i32 %.152.us.us, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = and i32 %i.bh, %i.bj
  %.not.us.us = icmp eq i32 %i.bk, 0
  br i1 %.not.us.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.us
  %i.bl = sub nsw i32 %.152.us.us, %2             ; 2 uses
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = ashr i32 %i.bl, 5
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bb, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 4      ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = or i32 %i.bs, %i.bn
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.us.us
  %i.bu = add nuw nsw i32 %.152.us.us, 1          ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.ak
  br i1 %i.bv, label %._crit_edge.us.us, label %._crit_edge55.us.us

.preheader.us.us:                                 ; preds = %.lr.ph57.split.us.split.us, %bb.g
  %.04751.us.us = phi i32 [ %i.ch, %bb.g ], [ 0, %.lr.ph57.split.us.split.us ] ; 3 uses
  %i.bw = lshr i32 %.04751.us.us, 5
  %i.bx = add nuw nsw i32 %i.bw, 1
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.04656.us.us, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = and i32 %.04751.us.us, 31
  %i.cc = shl nuw i32 1, %i.cb                    ; 2 uses
  %i.cd = and i32 %i.ca, %i.cc
  %.not50.us.us = icmp eq i32 %i.cd, 0
  br i1 %.not50.us.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.us.us
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.by ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = or i32 %i.cf, %i.cc
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.us.us
  %i.ch = add nuw nsw i32 %.04751.us.us, 1        ; 2 uses
  %exitcond79.not = icmp eq i32 %i.ch, %1
  br i1 %exitcond79.not, label %._crit_edge.us.us, label %.preheader.us.us

._crit_edge55.us.us:                              ; preds = %bb.e
  %i.ci = getelementptr inbounds [4 x i8], ptr %.04656.us.us, i64 %i.am ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %i.af
  br i1 %i.cj, label %.lr.ph57.split.us.split.us, label %._crit_edge58

.lr.ph57.split.us.split:                          ; preds = %.lr.ph57.split.us.split.preheader, %._crit_edge55.us
  %i.ck = phi i32 [ %i.cl, %._crit_edge55.us ], [ 0, %.lr.ph57.split.us.split.preheader ] ; 2 uses
  %.04656.us = phi ptr [ %i.dj, %._crit_edge55.us ], [ %i.aa, %.lr.ph57.split.us.split.preheader ] ; 2 uses
  %i.cl = add nuw nsw i32 %i.ck, 1                ; 2 uses
  store i32 %i.cl, ptr %i.x, align 4, !tbaa !34
  %i.cm = mul nsw i32 %i.ck, %.pre85
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cn ; 2 uses
  store i32 %i.aq, ptr %i.co, align 4, !tbaa !4
  %i.cp = shl nsw i64 %i.cn, 2
  %gep116 = getelementptr i8, ptr %invariant.gep115, i64 %i.cp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep116, i8 0, i64 %i.aw, i1 false), !tbaa !4
  br label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph57.split.us.split, %bb.i
  %.152.us = phi i32 [ %i.dh, %bb.i ], [ %i.aj, %.lr.ph57.split.us.split ] ; 4 uses
  %i.cq = ashr i32 %.152.us, 5
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %.04656.us, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = and i32 %.152.us, 31
  %i.cw = shl nuw i32 1, %i.cv
  %i.cx = and i32 %i.cu, %i.cw
  %.not.us = icmp eq i32 %i.cx, 0
  br i1 %.not.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.us
  %i.cy = sub nsw i32 %.152.us, %2                ; 2 uses
  %i.cz = and i32 %i.cy, 31
  %i.da = shl nuw i32 1, %i.cz
  %i.db = ashr i32 %i.cy, 5
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.co, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 4      ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = or i32 %i.df, %i.da
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.us
  %i.dh = add nsw i32 %.152.us, 1                 ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.ak
  br i1 %i.di, label %.preheader.us, label %._crit_edge55.us

._crit_edge55.us:                                 ; preds = %bb.i
  %i.dj = getelementptr inbounds [4 x i8], ptr %.04656.us, i64 %i.am ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.af
  br i1 %i.dk, label %.lr.ph57.split.us.split, label %._crit_edge58

.lr.ph57.split:                                   ; preds = %.lr.ph57
  br i1 %i.ah, label %.lr.ph57.split.split.us.preheader, label %.lr.ph57.split.split.preheader

.lr.ph57.split.split.preheader:                   ; preds = %.lr.ph57.split
  %invariant.gep = getelementptr i8, ptr %i.v, i64 %invariant.op105
  br label %.lr.ph57.split.split

.lr.ph57.split.split.us.preheader:                ; preds = %.lr.ph57.split
  %invariant.gep113 = getelementptr i8, ptr %i.v, i64 %invariant.op105
  br label %.lr.ph57.split.split.us

.lr.ph57.split.split.us:                          ; preds = %.lr.ph57.split.split.us.preheader, %._crit_edge.us65
  %i.dl = phi i32 [ %i.dm, %._crit_edge.us65 ], [ 0, %.lr.ph57.split.split.us.preheader ] ; 2 uses
  %.04656.us59 = phi ptr [ %i.ed, %._crit_edge.us65 ], [ %i.aa, %.lr.ph57.split.split.us.preheader ] ; 2 uses
  %i.dm = add nuw nsw i32 %i.dl, 1                ; 2 uses
  store i32 %i.dm, ptr %i.x, align 4, !tbaa !34
  %i.dn = mul nsw i32 %i.dl, %.pre85
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.do ; 2 uses
  store i32 %i.aq, ptr %i.dp, align 4, !tbaa !4
  %i.dq = shl nsw i64 %i.do, 2
  %gep114 = getelementptr i8, ptr %invariant.gep113, i64 %i.dq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep114, i8 0, i64 %i.aw, i1 false), !tbaa !4
  br label %.preheader.us63

.preheader.us63:                                  ; preds = %.lr.ph57.split.split.us, %bb.k
  %.04751.us61 = phi i32 [ %i.ec, %bb.k ], [ 0, %.lr.ph57.split.split.us ] ; 3 uses
  %i.dr = lshr i32 %.04751.us61, 5
  %i.ds = add nuw nsw i32 %i.dr, 1
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.04656.us59, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = and i32 %.04751.us61, 31
  %i.dx = shl nuw i32 1, %i.dw                    ; 2 uses
  %i.dy = and i32 %i.dv, %i.dx
  %.not50.us62 = icmp eq i32 %i.dy, 0
  br i1 %.not50.us62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.us63
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dt ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = or i32 %i.ea, %i.dx
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.us63
  %i.ec = add nuw nsw i32 %.04751.us61, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.ec, %1
  br i1 %exitcond.not, label %._crit_edge.us65, label %.preheader.us63

._crit_edge.us65:                                 ; preds = %bb.k
  %i.ed = getelementptr inbounds [4 x i8], ptr %.04656.us59, i64 %i.am ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.af
  br i1 %i.ee, label %.lr.ph57.split.split.us, label %._crit_edge58

.lr.ph57.split.split:                             ; preds = %.lr.ph57.split.split.preheader, %.lr.ph57.split.split
  %i.ef = phi i32 [ %i.eg, %.lr.ph57.split.split ], [ 0, %.lr.ph57.split.split.preheader ] ; 2 uses
  %.04656 = phi ptr [ %i.el, %.lr.ph57.split.split ], [ %i.aa, %.lr.ph57.split.split.preheader ]
  %i.eg = add nuw nsw i32 %i.ef, 1                ; 2 uses
  store i32 %i.eg, ptr %i.x, align 4, !tbaa !34
  %i.eh = mul nsw i32 %i.ef, %.pre85
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ei
  store i32 %i.aq, ptr %i.ej, align 4, !tbaa !4
  %i.ek = shl nsw i64 %i.ei, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ek
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep, i8 0, i64 %i.aw, i1 false), !tbaa !4
  %i.el = getelementptr inbounds [4 x i8], ptr %.04656, i64 %i.am ; 2 uses
  %i.em = icmp ult ptr %i.el, %i.af
  br i1 %i.em, label %.lr.ph57.split.split, label %._crit_edge58

._crit_edge58:                                    ; preds = %.lr.ph57.split.split, %._crit_edge.us65, %._crit_edge55.us, %._crit_edge55.us.us, %sf_new.exit
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %sf_free.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge58
  tail call void @free(ptr noundef nonnull %i.aa) #25
  store ptr null, ptr %i.z, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge58, %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.en, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_copy_col(ptr noundef readonly returned captures(ret: address, provenance) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = and i32 %3, 31
  %i.b = shl nuw i32 1, %i.a
  %i.c = and i32 %1, 31
  %i.d = shl nuw i32 1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = load i32, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = ashr i32 %1, 5
  %i.q = ashr i32 %3, 5
  %i.r = sext i32 %i.q to i64
  %i.s = sext i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.t = phi i32 [ %i.i, %.lr.ph ], [ %i.ac, %bb.d ]
  %.023 = phi ptr [ %i.f, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  %.02122 = phi ptr [ %i.o, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %.023, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = and i32 %i.w, %i.b
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr [4 x i8], ptr %.02122, i64 %i.s
  %i.z = getelementptr i8, ptr %i.y, i64 4        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = or i32 %i.aa, %i.d
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !4
  %.pre = load i32, ptr %2, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi i32 [ %.pre, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !35
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.02122, i64 %i.ae
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.ag ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.l
  br i1 %i.ai, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_compress(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !4
  %i.d = and i32 %i.c, 1023                       ; 2 uses
  %.not14.i = icmp eq i32 %i.d, 0
  br i1 %.not14.i, label %set_ord.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.01012.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = and i32 %i.g, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = lshr i32 %i.g, 8
  %i.m = and i32 %i.l, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = lshr i32 %i.g, 16
  %i.r = and i32 %i.q, 255
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = lshr i32 %i.g, 24
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = add i32 %i.k, %.01012.i
  %i.aa = add i32 %i.z, %i.p
  %i.ab = add i32 %i.aa, %i.u
  %i.ac = add i32 %i.ab, %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.ac, %bb.b ], [ %.01012.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ad = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ad, label %.lr.ph.i, label %set_ord.exit

set_ord.exit:                                     ; preds = %bb.c, %bb.a
  %.010.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %i.ae = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %set_ord.exit
  %i.ag = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.e:                                             ; preds = %set_ord.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  store ptr %i.ai, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.d, %bb.e
  %i.aj = phi ptr [ null, %bb.d ], [ %i.ai, %bb.e ]
  %.0.i = phi ptr [ %i.ag, %bb.d ], [ %i.ae, %bb.e ] ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %.010.lcssa.i, ptr %i.ak, align 4, !tbaa !28
  %i.al = add i32 %.010.lcssa.i, -1
  %i.am = lshr i32 %i.al, 5
  %i.an = add nuw nsw i32 %i.am, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %.010.lcssa.i, 32
  %i.ao = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.an, i32 2 ; 2 uses
  store i32 %i.ao, ptr %.0.i, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.ap, align 8, !tbaa !49
  %i.aq = sext i32 %i.b to i64
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = shl nsw i64 %i.aq, 2
  %i.at = mul nsw i64 %i.as, %i.ar
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #24 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.ax, align 8, !tbaa !40
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %sf_new.exit
  %.pre = load i32, ptr %.0.i, align 8, !tbaa !35
  %.pre38 = load i32, ptr %i.ak, align 4, !tbaa !28 ; 2 uses
  %i.ba = add i32 %.pre38, -1
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = add nuw nsw i32 %i.bb, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp sgt i32 %.pre38, 32
  %i.bd = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow, i32 %i.bc, i32 1 ; 3 uses
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add nsw i32 %i.bd, -1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  %invariant.op = sub nsw i64 %i.bf, %i.bi
  %i.bj = add nuw nsw i64 %i.bi, 4
  %invariant.gep = getelementptr i8, ptr %i.au, i64 %invariant.op
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %sf_new.exit
  %i.bk = phi i32 [ %i.ay, %sf_new.exit ], [ %i.bw, %.lr.ph ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !28 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph36, label %._crit_edge

.lr.ph36:                                         ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.bq, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02633 = phi i32 [ %i.bv, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bq = add nuw nsw i32 %i.bp, 1                ; 2 uses
  store i32 %i.bq, ptr %i.aw, align 4, !tbaa !34
  %i.br = mul nsw i32 %i.bp, %.pre
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bs
  store i32 %i.bd, ptr %i.bt, align 4, !tbaa !4
  %i.bu = shl nsw i64 %i.bs, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep, i8 0, i64 %i.bj, i1 false), !tbaa !4
  %i.bv = add nuw nsw i32 %.02633, 1              ; 2 uses
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph, label %.preheader

bb.f:                                             ; preds = %.lr.ph36, %sf_copy_col.exit
  %.135 = phi i32 [ 0, %.lr.ph36 ], [ %i.df, %sf_copy_col.exit ] ; 3 uses
  %.02734 = phi i32 [ 0, %.lr.ph36 ], [ %.128, %sf_copy_col.exit ] ; 4 uses
  %i.by = lshr i32 %.135, 5
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = and i32 %.135, 31
  %i.ce = shl nuw i32 1, %i.cd                    ; 2 uses
  %i.cf = and i32 %i.cc, %i.ce
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %sf_copy_col.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = add nsw i32 %.02734, 1                  ; 2 uses
  %i.ch = and i32 %.02734, 31
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = load ptr, ptr %i.bo, align 8, !tbaa !33 ; 2 uses
  %i.ck = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.cl = mul nsw i32 %i.ck, %i.bk                ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %.idx.i = shl nsw i64 %i.cm, 2
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i
  %i.co = icmp sgt i32 %i.cl, 0
  br i1 %i.co, label %.lr.ph.i30, label %sf_copy_col.exit

.lr.ph.i30:                                       ; preds = %bb.g
  %i.cp = ashr i32 %.02734, 5
  %i.cq = sext i32 %i.cp to i64
  %i.cr = sext i32 %i.ck to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i30
  %.023.i = phi ptr [ %i.cj, %.lr.ph.i30 ], [ %i.dd, %bb.j ] ; 2 uses
  %.02122.i = phi ptr [ %i.au, %.lr.ph.i30 ], [ %i.dc, %bb.j ] ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %.023.i, i64 %i.bz
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = and i32 %i.cu, %i.ce
  %.not.i31 = icmp eq i32 %i.cv, 0
  br i1 %.not.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr [4 x i8], ptr %.02122.i, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = or i32 %i.cy, %i.ci
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.da = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.02122.i, i64 %i.db
  %i.dd = getelementptr inbounds [4 x i8], ptr %.023.i, i64 %i.cr ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.cn
  br i1 %i.de, label %bb.h, label %sf_copy_col.exit

sf_copy_col.exit:                                 ; preds = %bb.j, %bb.g, %bb.f
  %.128 = phi i32 [ %.02734, %bb.f ], [ %i.cg, %bb.g ], [ %i.cg, %bb.j ]
  %i.df = add nuw nsw i32 %.135, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.bm
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %sf_copy_col.exit, %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %.not.i32 = icmp eq ptr %i.dh, null
  br i1 %.not.i32, label %sf_free.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.dh) #25
  store ptr null, ptr %i.dg, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge, %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.di, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_transpose(ptr noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34   ; 3 uses
  %i.e = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  store ptr %i.i, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ null, %bb.b ], [ %i.i, %bb.c ]
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.c ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.k, align 4, !tbaa !28
  %i.l = add i32 %i.d, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %i.d, 32
  %i.o = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.n, i32 2 ; 2 uses
  store i32 %i.o, ptr %.0.i, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.p, align 8, !tbaa !49
  %i.q = sext i32 %i.b to i64
  %i.r = zext nneg i32 %i.o to i64
  %i.s = shl nsw i64 %i.q, 2
  %i.t = mul nsw i64 %i.s, %i.r
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !40
  %i.y = load i32, ptr %i.a, align 4, !tbaa !28   ; 6 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !34
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %sf_new.exit
  %.pre = load i32, ptr %i.k, align 4, !tbaa !28  ; 2 uses
  %.pre51 = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.aa = add i32 %.pre, -1
  %i.ab = lshr i32 %i.aa, 5
  %i.ac = add nuw nsw i32 %i.ab, 1
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp sgt i32 %.pre, 32
  %i.ad = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow, i32 %i.ac, i32 1 ; 11 uses
  %i.ae = shl nuw nsw i32 %i.ad, 2
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nsw i32 %i.ad, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.aj = sub nsw i64 %i.af, %i.ai                ; 9 uses
  %i.ak = add nuw nsw i64 %i.ai, 4                ; 9 uses
  %i.al = sext i32 %.pre51 to i64                 ; 9 uses
  %xtraiter = and i32 %i.y, 7                     ; 3 uses
  %i.am = icmp ult i32 %i.y, 8
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.y, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03740 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i32 %i.ad, ptr %.03740, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.03740, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %.03740, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.an, align 4, !tbaa !4
  %scevgep.1 = getelementptr i8, ptr %i.an, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.1, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.ao, align 4, !tbaa !4
  %scevgep.2 = getelementptr i8, ptr %i.ao, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.2, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.ap, align 4, !tbaa !4
  %scevgep.3 = getelementptr i8, ptr %i.ap, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.3, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.aq, align 4, !tbaa !4
  %scevgep.4 = getelementptr i8, ptr %i.aq, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.4, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.ar, align 4, !tbaa !4
  %scevgep.5 = getelementptr i8, ptr %i.ar, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.5, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.as, align 4, !tbaa !4
  %scevgep.6 = getelementptr i8, ptr %i.as, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.6, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.al ; 3 uses
  store i32 %i.ad, ptr %i.at, align 4, !tbaa !4
  %scevgep.7 = getelementptr i8, ptr %i.at, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.7, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.al ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03740.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.au, %._crit_edge.unr-lcssa ]
  %lcmp.mod57 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03740.epil = phi ptr [ %i.av, %.lr.ph.epil ], [ %.03740.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i32 %i.ad, ptr %.03740.epil, align 4, !tbaa !4
  %scevgep.epil = getelementptr i8, ptr %.03740.epil, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.av = getelementptr inbounds [4 x i8], ptr %.03740.epil, i64 %i.al
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 3 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !34  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.lr.ph, label %._crit_edge47

._crit_edge.thread:                               ; preds = %sf_new.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33
  br label %._crit_edge47

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.bc = load i32, ptr %0, align 8, !tbaa !35
  %i.bd = sext i32 %i.bc to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge44.us
  %.146.us = phi i32 [ %i.by, %._crit_edge44.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.13845.us = phi ptr [ %i.bx, %._crit_edge44.us ], [ %i.ax, %.preheader.lr.ph ] ; 2 uses
  %i.be = and i32 %.146.us, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i32 %.146.us, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.u, i64 %i.bh
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.f
  %.03542.us = phi i32 [ 0, %.preheader.us ], [ %i.bw, %bb.f ] ; 4 uses
  %i.bi = lshr i32 %.03542.us, 5
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.13845.us, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = and i32 %.03542.us, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bm, %i.bo
  %.not.us = icmp eq i32 %i.bp, 0
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load i32, ptr %.0.i, align 8, !tbaa !35
  %i.br = mul nsw i32 %i.bq, %.03542.us
  %i.bs = sext i32 %i.br to i64
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bs
  %i.bt = getelementptr inbounds nuw i8, ptr %gep.us, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = or i32 %i.bu, %i.bf
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = add nuw nsw i32 %.03542.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.y
  br i1 %exitcond.not, label %._crit_edge44.us, label %bb.d

._crit_edge44.us:                                 ; preds = %bb.f
  %i.bx = getelementptr inbounds [4 x i8], ptr %.13845.us, i64 %i.bd
  %i.by = add nuw nsw i32 %.146.us, 1             ; 2 uses
  %exitcond50.not = icmp eq i32 %i.by, %i.ay
  br i1 %exitcond50.not, label %._crit_edge47, label %.preheader.us

._crit_edge47:                                    ; preds = %._crit_edge44.us, %._crit_edge.thread, %._crit_edge
  %i.bz = phi ptr [ %i.bb, %._crit_edge.thread ], [ %i.ax, %._crit_edge ], [ %i.ax, %._crit_edge44.us ] ; 2 uses
  %i.ca = phi ptr [ %i.ba, %._crit_edge.thread ], [ %i.aw, %._crit_edge ], [ %i.aw, %._crit_edge44.us ]
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47
  tail call void @free(ptr noundef nonnull %i.bz) #25
  store ptr null, ptr %i.ca, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge47, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.cb, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_permute(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !47 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store ptr %i.g, ptr @set_family_garbage, align 8, !tbaa !47
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !28
  %i.j = add i32 %2, -1
  %i.k = lshr i32 %i.j, 5                         ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 2
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i = icmp sgt i32 %2, 32 ; 2 uses
  %i.m = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.l, i32 2 ; 2 uses
  store i32 %i.m, ptr %.0.i, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.n, align 8, !tbaa !49
  %i.o = sext i32 %i.b to i64
  %i.p = shl nuw nsw i32 %i.m, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, %i.o
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !40
  %i.w = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !34
  %i.x = load i32, ptr %.0.i, align 8, !tbaa !35  ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.w                   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %.idx = shl nsw i64 %i.z, 2
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %i.ab = icmp sgt i32 %i.y, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sf_new.exit
  %i.ac = add nuw nsw i32 %i.k, 1
  %i.ad = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.inv.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.i, i32 %i.ac, i32 1 ; 3 uses
  %i.ae = shl nuw nsw i32 %i.ad, 2
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nsw i32 %i.ad, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.aj = sub nsw i64 %i.af, %i.ai
  %i.ak = add nuw nsw i64 %i.ai, 4
  %i.al = sext i32 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04445 = phi ptr [ %i.s, %.lr.ph ], [ %i.am, %bb.d ] ; 3 uses
  store i32 %i.ad, ptr %.04445, align 4, !tbaa !4
  %scevgep = getelementptr i8, ptr %.04445, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ak, i1 false), !tbaa !4
  %i.am = getelementptr inbounds [4 x i8], ptr %.04445, i64 %i.al ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.aa
  br i1 %i.an, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %sf_new.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 5 uses
  %i.aq = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.w                 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %.idx52 = shl nsw i64 %i.as, 2
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %.idx52 ; 2 uses
  %i.au = icmp sgt i32 %i.ar, 0
  br i1 %i.au, label %.preheader.lr.ph, label %._crit_edge51

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.av = icmp sgt i32 %2, 0
  %i.aw = sext i32 %i.aq to i64                   ; 2 uses
  br i1 %i.av, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ax = sext i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge48.us
  %.04350.us = phi ptr [ %i.br, %._crit_edge48.us ], [ %i.s, %.preheader.us.preheader ] ; 2 uses
  %.149.us = phi ptr [ %i.bs, %._crit_edge48.us ], [ %i.ap, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = ashr i32 %i.az, 5
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.149.us, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = and i32 %i.az, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = and i32 %i.bg, %i.be
  %.not.us = icmp eq i32 %i.bh, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = and i32 %i.bi, 31
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = lshr i64 %indvars.iv, 5
  %i.bm = and i64 %i.bl, 134217727
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.04350.us, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = or i32 %i.bp, %i.bk
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48.us, label %bb.e

._crit_edge48.us:                                 ; preds = %bb.g
  %i.br = getelementptr inbounds [4 x i8], ptr %.04350.us, i64 %i.ax
  %i.bs = getelementptr inbounds [4 x i8], ptr %.149.us, i64 %i.aw ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.at
  br i1 %i.bt, label %.preheader.us, label %._crit_edge51

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.149 = phi ptr [ %i.bu, %.preheader ], [ %i.ap, %.preheader.lr.ph ]
  %i.bu = getelementptr inbounds [4 x i8], ptr %.149, i64 %i.aw ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.at
  br i1 %i.bv, label %.preheader, label %._crit_edge51

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.us, %._crit_edge
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %sf_free.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge51
  tail call void @free(ptr noundef nonnull %i.ap) #25
  store ptr null, ptr %i.ao, align 8, !tbaa !33
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge51, %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.bw, align 8, !tbaa !48
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !47
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(1) }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9}
!28 = !{!29, !5, i64 4}
!29 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !30, i64 24, !32, i64 32}
!30 = !{!"p1 int", !31, i64 0}
!31 = !{!"any pointer", !6, i64 0}
!32 = !{!"p1 _ZTS10set_family", !31, i64 0}
!33 = !{!29, !30, i64 24}
!34 = !{!29, !5, i64 12}
!35 = !{!29, !5, i64 0}
!36 = distinct !{!36, !9, !10}
!37 = distinct !{!37, !10, !9}
!38 = distinct !{!38, !9, !10}
!39 = distinct !{!39, !10, !9}
!40 = !{!29, !5, i64 16}
end_hunk_5
