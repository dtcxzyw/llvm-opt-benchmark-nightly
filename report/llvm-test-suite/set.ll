Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/set?download=true
inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
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
define dso_local i32 @set_ord(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i32 %i.a, 1023
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.013 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7    ; 5 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = lshr i32 %i.f, 8
  %i.l = and i32 %i.k, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = lshr i32 %i.f, 16
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = lshr i32 %i.f, 24
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = add i32 %i.j, %.013
  %i.z = add i32 %i.y, %i.o
  %i.aa = add i32 %i.z, %i.t
  %i.ab = add i32 %i.aa, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.ab, %bb.b ], [ %.013, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ac = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @set_dist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = and i32 %i.a, 1023
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.015 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = and i32 %i.h, %i.f                       ; 5 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = lshr i32 %i.i, 8
  %i.o = and i32 %i.n, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = lshr i32 %i.i, 16
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = lshr i32 %i.i, 24
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = add i32 %i.m, %.015
  %i.ac = add i32 %i.ab, %i.r
  %i.ad = add i32 %i.ac, %i.w
  %i.ae = add i32 %i.ad, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.ae, %bb.b ], [ %.015, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.af = icmp sgt i64 %indvars.iv, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @set_clear(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 33
  %i.b = add nsw i32 %1, -1
  %i.c = lshr i32 %i.b, 5
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = select i1 %i.a, i32 1, i32 %i.d          ; 3 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !7
  %i.f = shl nuw nsw i32 %i.e, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nsw i32 %i.e, -1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = sub nsw i64 %i.g, %i.j
  %scevgep = getelementptr i8, ptr %0, i64 %i.k
  %i.l = add nuw nsw i64 %i.j, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !7
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @set_fill(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 33
  %i.b = add nsw i32 %1, -1
  %i.c = lshr i32 %i.b, 5
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = select i1 %i.a, i32 1, i32 %i.d          ; 5 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !7
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = shl nsw i32 %i.e, 5
  %i.i = sub nsw i32 %i.h, %1
  %i.j = lshr i32 -1, %i.i
  store i32 %i.j, ptr %i.g, align 4, !tbaa !7
  %i.k = icmp samesign ugt i32 %i.e, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = add nsw i32 %i.e, -1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %scevgep = getelementptr i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.n, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_copy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !7
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 4 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.b, 7
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.g, -32
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
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %wide.load7 = load <4 x i32>, ptr %i.l, align 4, !tbaa !7
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -12
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -28
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !7
  store <4 x i32> %wide.load7, ptr %i.o, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !26

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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.s, ptr %i.t, align 4, !tbaa !7
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !27

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.u, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !7
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !28

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_and(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.b = and i32 %i.a, 1023
  %i.c = load i32, ptr %0, align 4, !tbaa !7
  %i.d = and i32 %i.c, -1024
  %i.e = or disjoint i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 4, !tbaa !7
  %i.f = and i32 %i.a, 1023                       ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 5 uses
  %i.h = icmp ne i32 %i.f, 0
  %.neg = sext i1 %i.h to i64
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = add nsw i64 %i.i, %.neg                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.m
  %diff.check12 = icmp ugt i64 %i.o, -32
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
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !7
  %wide.load13 = load <4 x i32>, ptr %i.t, align 4, !tbaa !7
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load14 = load <4 x i32>, ptr %i.v, align 4, !tbaa !7
  %wide.load15 = load <4 x i32>, ptr %i.w, align 4, !tbaa !7
  %i.x = and <4 x i32> %wide.load14, %wide.load
  %i.y = and <4 x i32> %wide.load15, %wide.load13
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -28
  store <4 x i32> %i.x, ptr %i.aa, align 4, !tbaa !7
  store <4 x i32> %i.y, ptr %i.ab, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @set_or(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.b = and i32 %i.a, 1023
end_hunk_0
begin_hunk_1_@setp_disjoint:bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
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
define dso_local range(i32 0, 2) i32 @setp_implies(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = and i32 %i.a, 1023
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
  %i.c = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
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
define dso_local noalias noundef ptr @sf_or(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = icmp slt i32 %i.b, 33
  %i.d = add nsw i32 %i.b, -1
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 536870908
  %i.g = add nuw nsw i32 %i.f, 8
  %narrow = select i1 %i.c, i32 8, i32 %i.g
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 6 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = select i1 %i.k, i32 1, i32 %i.n          ; 3 uses
  store i32 %i.o, ptr %i.i, align 4, !tbaa !7
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add nsw i32 %i.o, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = sub nsw i64 %i.q, %i.t
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.u
  %i.v = add nuw nsw i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.v, i1 false), !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %.idx = shl nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %.idx
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = sext i32 %i.aa to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02224 = phi ptr [ %i.x, %.lr.ph ], [ %i.bd, %.loopexit ] ; 3 uses
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !7
  %i.ah = and i32 %i.ag, 1023                     ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.aj = icmp ne i32 %i.ah, 0
  %.neg = sext i1 %i.aj to i64
  %i.ak = add nuw nsw i64 %i.ai, 1
  %i.al = add nsw i64 %i.ak, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.am = sub nsw i64 %i.ai, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 %i.ai, %index                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -12 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !7
  %wide.load26 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -12
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -28
  %wide.load27 = load <4 x i32>, ptr %i.as, align 4, !tbaa !7
  %wide.load28 = load <4 x i32>, ptr %i.at, align 4, !tbaa !7
  %i.au = or <4 x i32> %wide.load27, %wide.load
  %i.av = or <4 x i32> %wide.load28, %wide.load26
  store <4 x i32> %i.au, ptr %i.ap, align 4, !tbaa !7
  store <4 x i32> %i.av, ptr %i.aq, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ai, %bb.b ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.02224, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bc = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bc, label %scalar.ph, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bd = getelementptr inbounds [4 x i8], ptr %.02224, i64 %i.af ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.ad
  br i1 %i.be, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_and(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = icmp slt i32 %i.b, 33
  %i.d = add nsw i32 %i.b, -1
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 536870908
  %i.g = add nuw nsw i32 %i.f, 8
  %narrow = select i1 %i.c, i32 8, i32 %i.g
  %i.h = zext nneg i32 %narrow to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 8 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !15   ; 3 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = select i1 %i.k, i32 1, i32 %i.n          ; 6 uses
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add nsw i32 %i.o, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.u = sub nsw i64 %i.q, %i.t
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.u
  %i.v = add nuw nsw i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.v, i1 false), !tbaa !7
  store i32 %i.o, ptr %i.i, align 4, !tbaa !7
  %i.w = zext nneg i32 %i.o to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.w
  %i.y = shl nsw i32 %i.o, 5
  %i.z = sub nsw i32 %i.y, %i.j
  %i.aa = lshr i32 -1, %i.z
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !7
  %i.ab = icmp samesign ugt i32 %i.o, 1
  br i1 %i.ab, label %.lr.ph.preheader.i, label %set_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %scevgep.i25 = getelementptr i8, ptr %i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i25, i8 -1, i64 %i.t, i1 false), !tbaa !7
  br label %set_fill.exit

set_fill.exit:                                    ; preds = %bb.a, %.lr.ph.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ag = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx = shl nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %set_fill.exit
  %i.al = sext i32 %i.ag to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02326 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bj, %.loopexit ] ; 3 uses
  %i.am = load i32, ptr %i.i, align 4, !tbaa !7
  %i.an = and i32 %i.am, 1023                     ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ap = icmp ne i32 %i.an, 0
  %.neg = sext i1 %i.ap to i64
  %i.aq = add nuw nsw i64 %i.ao, 1
  %i.ar = add nsw i64 %i.aq, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.ar, -8                      ; 3 uses
  %i.as = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = sub i64 %i.ao, %index                   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -12 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !7
  %wide.load28 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !7
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -12
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -28
  %wide.load29 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !7
  %wide.load30 = load <4 x i32>, ptr %i.az, align 4, !tbaa !7
  %i.ba = and <4 x i32> %wide.load29, %wide.load
  %i.bb = and <4 x i32> %wide.load30, %wide.load28
  store <4 x i32> %i.ba, ptr %i.av, align 4, !tbaa !7
  store <4 x i32> %i.bb, ptr %i.aw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ao, %bb.b ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.02326, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = and i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bi = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bi, label %scalar.ph, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bj = getelementptr inbounds [4 x i8], ptr %.02326, i64 %i.al ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.aj
  br i1 %i.bk, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %set_fill.exit
  ret ptr %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_active(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !18
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %.012, align 4, !tbaa !7
  %i.k = or i32 %i.j, 8192
  store i32 %i.k, ptr %.012, align 4, !tbaa !7
  %i.l = load i32, ptr %0, align 8, !tbaa !18
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.012, i64 %i.m ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.c, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !19
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sf_inactive(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
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
  %i.k = load i32, ptr %.02225, align 4, !tbaa !7 ; 2 uses
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
  %i.p = sub i64 %.0212731, %.0222530
  %diff.check = icmp ugt i64 %i.p, -32
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
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !7
  %wide.load32 = load <4 x i32>, ptr %i.u, align 4, !tbaa !7
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.02127, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -12
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -28
  store <4 x i32> %wide.load, ptr %i.w, align 4, !tbaa !7
  store <4 x i32> %wide.load32, ptr %i.x, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %bb.c ], [ %i.q, %middle.block ] ; 4 uses
end_hunk_1
begin_hunk_2_@sf_delset:bb.a
  br i1 %i.ag, label %set_copy.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !7
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not.i.3, label %set_copy.exit, label %scalar.ph, !llvm.loop !70

set_copy.exit:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_print(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ps1.exit
  %.09 = phi i32 [ %i.bl, %ps1.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi ptr [ %i.bk, %ps1.exit ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i32, ptr %.078, align 4, !tbaa !7
  %i.h = shl i32 %i.g, 5
  %i.i = and i32 %i.h, 32736                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 91, ptr @s1, align 16, !tbaa !23
  %.not37.i = icmp eq i32 %i.i, 0
  br i1 %.not37.i, label %ps1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.g
  %.036.i = phi i32 [ %.1.i, %bb.g ], [ 1, %.lr.ph ] ; 2 uses
  %.02235.i = phi i32 [ %.3.i, %bb.g ], [ 1, %.lr.ph ] ; 4 uses
  %.02734.i = phi i32 [ %i.bd, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %i.j = lshr i32 %.02734.i, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.078, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = and i32 %.02734.i, 31
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %i.n
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not30.i = icmp eq i32 %.036.i, 0
  br i1 %.not30.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %.02235.i, 1
  %i.s = sext i32 %.02235.i to i64
  %i.t = getelementptr inbounds i8, ptr @s1, i64 %i.s
  store i8 44, ptr %i.t, align 1, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123.i = phi i32 [ %.02235.i, %bb.b ], [ %i.r, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40.i = phi i32 [ %indvars.iv.next41.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.026.i = phi i32 [ %i.y, %bb.e ], [ %.02734.i, %bb.d ] ; 3 uses
  %i.u = urem i32 %.026.i, 10
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !23
  %i.y = udiv i32 %.026.i, 10
  %.not31.i = icmp samesign ult i32 %.026.i, 10
  %indvars.iv.next41.i = add i32 %indvars.iv40.i, 1
  br i1 %.not31.i, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %i.z = sext i32 %indvars.iv40.i to i64          ; 6 uses
  %i.aa = sext i32 %.123.i to i64                 ; 5 uses
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp slt i32 %indvars.iv40.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 2147483616              ; 5 uses
  %i.ad = add nsw i64 %n.vec, %i.aa               ; 3 uses
  %i.ae = sub nsw i64 %i.z, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.z
  %invariant.gep29 = getelementptr i8, ptr @s1, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.af ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !23
  %wide.load13 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !23
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse14 = shufflevector <16 x i8> %wide.load13, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep30 = getelementptr i8, ptr %invariant.gep29, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep30, i64 16
  store <16 x i8> %reverse, ptr %gep30, align 1, !tbaa !23
  store <16 x i8> %reverse14, ptr %i.ai, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.ad, -1
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ab, 2147483640            ; 4 uses
  %i.ak = add nsw i64 %n.vec16, %i.aa             ; 3 uses
  %i.al = sub nsw i64 %i.z, %n.vec16
  %invariant.gep31 = getelementptr i8, ptr %i.a, i64 %i.z
  %invariant.gep33 = getelementptr i8, ptr @s1, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %i.am = xor i64 %index17, -1
  %gep32 = getelementptr i8, ptr %invariant.gep31, i64 %i.am
  %i.an = getelementptr inbounds i8, ptr %gep32, i64 -7
  %wide.load18 = load <8 x i8>, ptr %i.an, align 1, !tbaa !23
  %reverse19 = shufflevector <8 x i8> %wide.load18, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep34 = getelementptr i8, ptr %invariant.gep33, i64 %index17
  store <8 x i8> %reverse19, ptr %gep34, align 1, !tbaa !23
  %index.next20 = add nuw i64 %index17, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape21 = add nsw i64 %i.ak, -1
  %cmp.n22 = icmp eq i64 %i.ab, %n.vec16
  br i1 %cmp.n22, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %indvars.iv42.i.ph = phi i64 [ %i.z, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %.preheader.i ], [ %indvars.iv44.i.ph, %.preheader.i.preheader ] ; 3 uses
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.preheader.i ], [ %indvars.iv42.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next43.i = add nsw i64 %indvars.iv42.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %i.as = icmp sgt i64 %indvars.iv42.i, 1
  br i1 %i.as, label %.preheader.i, label %.loopexit, !llvm.loop !73

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.i.lcssa = phi i64 [ %ind.escape21, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44.i, %.preheader.i ] ; 3 uses
  %indvars.iv.next45.i.lcssa = phi i64 [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %indvars.iv.next45.i, %.preheader.i ] ; 2 uses
  %i.at = trunc nsw i64 %indvars.iv.next45.i.lcssa to i32
  %i.au = icmp sgt i64 %indvars.iv44.i.lcssa, 104
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.av = trunc nsw i64 %indvars.iv44.i.lcssa to i32
  %i.aw = and i64 %indvars.iv.next45.i.lcssa, 4294967295
  %i.ax = getelementptr inbounds nuw i8, ptr @s1, i64 %i.aw
  store i8 46, ptr %i.ax, align 1, !tbaa !23
  %i.ay = and i64 %indvars.iv44.i.lcssa, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr @s1, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 46, ptr %i.ba, align 1, !tbaa !23
  %i.bb = add nuw nsw i32 %i.av, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 46, ptr %i.bc, align 1, !tbaa !23
  br label %ps1.exit

bb.g:                                             ; preds = %.loopexit, %.lr.ph.i
  %.3.i = phi i32 [ %i.at, %.loopexit ], [ %.02235.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %.loopexit ], [ %.036.i, %.lr.ph.i ]
  %i.bd = add nuw nsw i32 %.02734.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bd, %i.i
  br i1 %exitcond.not.i, label %ps1.exit, label %.lr.ph.i

ps1.exit:                                         ; preds = %bb.g, %.lr.ph, %bb.f
  %.4.i = phi i32 [ %i.bb, %bb.f ], [ 1, %.lr.ph ], [ %.3.i, %bb.g ]
  %i.be = sext i32 %.4.i to i64
  %i.bf = getelementptr inbounds i8, ptr @s1, i64 %i.be ; 2 uses
  store i8 93, ptr %i.bf, align 1, !tbaa !23
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.09, ptr noundef nonnull @s1) ; 0 uses
  %i.bi = load i32, ptr %0, align 8, !tbaa !18
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.078, i64 %i.bj
  %i.bl = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %ps1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_bm_print(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %pbv1.exit
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %pbv1.exit ] ; 2 uses
  %.089 = phi ptr [ %i.e, %.lr.ph ], [ %i.av, %pbv1.exit ] ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 5 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %pbv1.exit

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
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = and i32 %i.j, 30
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, %i.o
  %.not.i = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i, i8 48, i8 49
  %i.t = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i
  store i8 %i.s, ptr %i.t, align 2, !tbaa !23
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.v = lshr i64 %indvars.iv.i, 5
  %i.w = and i64 %i.v, 134217727
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = and i32 %i.u, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not.i.1 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i.1, i8 48, i8 49
  %i.ae = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.next.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !23
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = and i32 %i.af, 31
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %i.ak
  %.not.i.epil = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not.i.epil, i8 48, i8 49
  %i.ap = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i.epil.init
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !23
  br label %pbv1.exit

pbv1.exit:                                        ; preds = %.lr.ph.i.epil.preheader, %pbv1.exit.loopexit.unr-lcssa, %bb.b
  %i.aq = sext i32 %i.g to i64
  %i.ar = getelementptr inbounds i8, ptr @s1, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !23
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.010, ptr noundef nonnull @s1) ; 0 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !18
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.089, i64 %i.au
  %i.aw = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %pbv1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.d) #25 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !17
  %i.i = load i32, ptr %1, align 8, !tbaa !18
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %set_write.exit.peel.next
  %.014 = phi ptr [ %i.ac, %set_write.exit.peel.next ], [ %i.g, %bb.a ] ; 4 uses
  %i.n = load i32, ptr %.014, align 4, !tbaa !7   ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.s) #25 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.u = and i64 %indvars.iv.next.i, 7
  %.not15 = icmp eq i64 %i.u, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %set_write.exit.peel.begin.loopexit, label %bb.b, !llvm.loop !74

set_write.exit.peel.begin.loopexit:               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.next.i
end_hunk_2
