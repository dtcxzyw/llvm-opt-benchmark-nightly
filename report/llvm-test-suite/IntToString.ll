inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_Z21ConvertUInt64ToStringyPcj(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 6 uses
  %i.b = add i32 %2, -37
  %or.cond = icmp ult i32 %i.b, -35
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = zext nneg i32 %2 to i64                  ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv25 = phi i32 [ %indvars.iv.next26, %bb.d ], [ 1, %bb.c ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0 = phi i64 [ %i.k, %bb.d ], [ %0, %bb.c ]    ; 3 uses
  %i.d = urem i64 %.0, %i.c                       ; 2 uses
  %i.e = trunc nuw nsw i64 %i.d to i8             ; 2 uses
  %i.f = icmp samesign ult i64 %i.d, 10
  %i.g = or disjoint i8 %i.e, 48
  %i.h = add nuw nsw i8 %i.e, 87
  %i.i = select i1 %i.f, i8 %i.g, i8 %i.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1, !tbaa !8
  %i.k = udiv i64 %.0, %i.c
  %.not = icmp ult i64 %.0, %i.c
  %indvars.iv.next26 = add i32 %indvars.iv25, 1
  br i1 %.not, label %iter.check, label %bb.d, !llvm.loop !9

iter.check:                                       ; preds = %bb.d
  %i.l = sext i32 %indvars.iv25 to i64            ; 6 uses
  %i.m = tail call i64 @llvm.smax.i64(i64 %i.l, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv25, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp slt i32 %indvars.iv25, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 24
  %n.vec = and i64 %i.m, 2147483616               ; 5 uses
  %i.n = sub nsw i64 %i.l, %n.vec
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.p = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.r = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.q, align 1, !tbaa !8
  %wide.load31 = load <16 x i8>, ptr %i.r, align 1, !tbaa !8
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse32 = shufflevector <16 x i8> %wide.load31, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %reverse32, ptr %i.s, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.m, 2147483640             ; 4 uses
  %i.u = sub nsw i64 %i.l, %n.vec35
  %i.v = getelementptr i8, ptr %1, i64 %n.vec35   ; 2 uses
  %invariant.gep46 = getelementptr i8, ptr %i.a, i64 %i.l
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %next.gep37 = getelementptr i8, ptr %1, i64 %index36
  %i.w = xor i64 %index36, -1
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %i.w
  %i.x = getelementptr inbounds i8, ptr %gep47, i64 -7
  %wide.load38 = load <8 x i8>, ptr %i.x, align 1, !tbaa !8
  %reverse39 = shufflevector <8 x i8> %wide.load38, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse39, ptr %next.gep37, align 1, !tbaa !8
  %index.next40 = add nuw i64 %index36, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.m, %n.vec35
  br i1 %cmp.n41, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.ph = phi i64 [ %i.l, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.017.ph = phi ptr [ %1, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.preheader ], [ %indvars.iv27.ph, %.preheader.preheader ] ; 2 uses
  %.017 = phi ptr [ %i.ab, %.preheader ], [ %.017.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, -1 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next28
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.017, align 1, !tbaa !8
  %i.ac = icmp sgt i64 %indvars.iv27, 1
  br i1 %i.ac, label %.preheader, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.v, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.ab, %.preheader ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_Z21ConvertUInt64ToStringyPw(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv12 = phi i32 [ %indvars.iv.next13, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.08 = phi i64 [ %i.f, %bb.b ], [ %0, %bb.a ]   ; 3 uses
  %i.b = urem i64 %.08, 10
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = or disjoint i32 %i.c, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.d, ptr %i.e, align 4, !tbaa !17
  %i.f = udiv i64 %.08, 10
  %.not = icmp ult i64 %.08, 10
  %indvars.iv.next13 = add i32 %indvars.iv12, 1
  br i1 %.not, label %.preheader.preheader, label %bb.b, !llvm.loop !19

.preheader.preheader:                             ; preds = %bb.b
  %i.g = sext i32 %indvars.iv12 to i64            ; 4 uses
  %i.h = tail call i64 @llvm.smax.i64(i64 %i.g, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %indvars.iv12, 8
  br i1 %min.iters.check, label %.preheader.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.h, 2147483640               ; 4 uses
  %i.i = sub nsw i64 %i.g, %n.vec
  %i.j = shl nuw nsw i64 %n.vec, 2
  %i.k = getelementptr i8, ptr %1, i64 %i.j       ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.l  ; 2 uses
  %i.m = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.m ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !17
  %wide.load17 = load <4 x i32>, ptr %i.o, align 4, !tbaa !17
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse18 = shufflevector <4 x i32> %wide.load17, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %reverse, ptr %next.gep, align 4, !tbaa !17
  store <4 x i32> %reverse18, ptr %i.p, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader20

.preheader.preheader20:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv14.ph = phi i64 [ %i.g, %.preheader.preheader ], [ %i.i, %middle.block ]
  %.07.ph = phi ptr [ %1, %.preheader.preheader ], [ %i.k, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader20, %.preheader
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %.preheader ], [ %indvars.iv14.ph, %.preheader.preheader20 ] ; 2 uses
  %.07 = phi ptr [ %i.t, %.preheader ], [ %.07.ph, %.preheader.preheader20 ] ; 2 uses
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, -1 ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next15
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.07, i64 4 ; 2 uses
  store i32 %i.s, ptr %.07, align 4, !tbaa !17
  %i.u = icmp sgt i64 %indvars.iv14, 1
  br i1 %i.u, label %.preheader, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %.preheader, %middle.block
  %.lcssa = phi ptr [ %i.k, %middle.block ], [ %i.t, %.preheader ]
  store i32 0, ptr %.lcssa, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_Z21ConvertUInt32ToStringjPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 6 uses
  %i.b = zext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv25.i = phi i32 [ %indvars.iv.next26.i, %bb.b ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = urem i64 %.0.i, 10
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = or disjoint i8 %i.d, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.e, ptr %i.f, align 1, !tbaa !8
  %i.g = udiv i64 %.0.i, 10
  %.not.i = icmp samesign ult i64 %.0.i, 10
  %indvars.iv.next26.i = add i32 %indvars.iv25.i, 1
  br i1 %.not.i, label %iter.check, label %bb.b, !llvm.loop !9

iter.check:                                       ; preds = %bb.b
  %i.h = sext i32 %indvars.iv25.i to i64          ; 6 uses
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv25.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp slt i32 %indvars.iv25.i, 32
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 2147483616               ; 5 uses
  %i.j = sub nsw i64 %i.h, %n.vec
  %i.k = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.l = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.n = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !8
  %wide.load2 = load <16 x i8>, ptr %i.n, align 1, !tbaa !8
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse3 = shufflevector <16 x i8> %wide.load2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %reverse3, ptr %i.o, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_Z21ConvertUInt64ToStringyPcj.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.i, 2147483640              ; 4 uses
  %i.q = sub nsw i64 %i.h, %n.vec6
  %i.r = getelementptr i8, ptr %1, i64 %n.vec6    ; 2 uses
  %invariant.gep17 = getelementptr i8, ptr %i.a, i64 %i.h
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %next.gep8 = getelementptr i8, ptr %1, i64 %index7
  %i.s = xor i64 %index7, -1
  %gep18 = getelementptr i8, ptr %invariant.gep17, i64 %i.s
  %i.t = getelementptr inbounds i8, ptr %gep18, i64 -7
  %wide.load9 = load <8 x i8>, ptr %i.t, align 1, !tbaa !8
  %reverse10 = shufflevector <8 x i8> %wide.load9, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse10, ptr %next.gep8, align 1, !tbaa !8
  %index.next11 = add nuw i64 %index7, 8          ; 2 uses
  %i.u = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.i, %n.vec6
  br i1 %cmp.n12, label %_Z21ConvertUInt64ToStringyPcj.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %i.h, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  %.017.i.ph = phi ptr [ %1, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.preheader.i ], [ %indvars.iv27.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.017.i = phi ptr [ %i.x, %.preheader.i ], [ %.017.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next28.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %.017.i, i64 1 ; 2 uses
  store i8 %i.w, ptr %.017.i, align 1, !tbaa !8
  %i.y = icmp sgt i64 %indvars.iv27.i, 1
  br i1 %i.y, label %.preheader.i, label %_Z21ConvertUInt64ToStringyPcj.exit, !llvm.loop !24

_Z21ConvertUInt64ToStringyPcj.exit:               ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.x, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_Z21ConvertUInt32ToStringjPw(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = zext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv12.i = phi i32 [ %indvars.iv.next13.i, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = urem i64 %.08.i, 10
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = or disjoint i32 %i.d, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.e, ptr %i.f, align 4, !tbaa !17
  %i.g = udiv i64 %.08.i, 10
  %.not.i = icmp samesign ult i64 %.08.i, 10
  %indvars.iv.next13.i = add i32 %indvars.iv12.i, 1
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.b, !llvm.loop !19

.preheader.preheader.i:                           ; preds = %bb.b
  %i.h = sext i32 %indvars.iv12.i to i64          ; 4 uses
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %indvars.iv12.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %i.i, 2147483640               ; 4 uses
  %i.j = sub nsw i64 %i.h, %n.vec
  %i.k = shl nuw nsw i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %1, i64 %i.k       ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %i.n = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.p = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !17
  %wide.load1 = load <4 x i32>, ptr %i.p, align 4, !tbaa !17
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse2 = shufflevector <4 x i32> %wide.load1, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %reverse, ptr %next.gep, align 4, !tbaa !17
  store <4 x i32> %reverse2, ptr %i.q, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_Z21ConvertUInt64ToStringyPw.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv14.i.ph = phi i64 [ %i.h, %.preheader.preheader.i ], [ %i.j, %middle.block ]
  %.07.i.ph = phi ptr [ %1, %.preheader.preheader.i ], [ %i.l, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %.preheader.i ], [ %indvars.iv14.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.07.i = phi ptr [ %i.u, %.preheader.i ], [ %.07.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, -1 ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next15.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 2 uses
  store i32 %i.t, ptr %.07.i, align 4, !tbaa !17
  %i.v = icmp sgt i64 %indvars.iv14.i, 1
  br i1 %i.v, label %.preheader.i, label %_Z21ConvertUInt64ToStringyPw.exit, !llvm.loop !26

_Z21ConvertUInt64ToStringyPw.exit:                ; preds = %.preheader.i, %middle.block
  %.lcssa = phi ptr [ %i.l, %middle.block ], [ %i.u, %.preheader.i ]
  store i32 0, ptr %.lcssa, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_Z20ConvertInt64ToStringxPc(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 6 uses
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !8
  %i.d = sub nsw i64 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i64 [ %i.d, %bb.b ], [ %0, %bb.a ]
  %.0 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv25.i = phi i32 [ %indvars.iv.next26.i, %bb.d ], [ 1, %bb.c ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %.04, %bb.c ] ; 3 uses
  %i.e = urem i64 %.0.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !8
  %i.i = udiv i64 %.0.i, 10
  %.not.i = icmp samesign ult i64 %.0.i, 10
  %indvars.iv.next26.i = add i32 %indvars.iv25.i, 1
  br i1 %.not.i, label %iter.check, label %bb.d, !llvm.loop !9

iter.check:                                       ; preds = %bb.d
  %i.j = sext i32 %indvars.iv25.i to i64          ; 6 uses
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv25.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp slt i32 %indvars.iv25.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.k, 24
  %n.vec = and i64 %i.k, 2147483616               ; 5 uses
  %i.l = sub nsw i64 %i.j, %n.vec
  %i.m = getelementptr i8, ptr %.0, i64 %n.vec    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0, i64 %index ; 2 uses
  %i.n = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.p = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !tbaa !8
  %wide.load8 = load <16 x i8>, ptr %i.p, align 1, !tbaa !8
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse9 = shufflevector <16 x i8> %wide.load8, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %reverse9, ptr %i.q, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_Z21ConvertUInt64ToStringyPcj.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.k, 2147483640             ; 4 uses
  %i.s = sub nsw i64 %i.j, %n.vec12
  %i.t = getelementptr i8, ptr %.0, i64 %n.vec12  ; 2 uses
  %invariant.gep23 = getelementptr i8, ptr %i.a, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %next.gep14 = getelementptr i8, ptr %.0, i64 %index13
  %i.u = xor i64 %index13, -1
  %gep24 = getelementptr i8, ptr %invariant.gep23, i64 %i.u
  %i.v = getelementptr inbounds i8, ptr %gep24, i64 -7
  %wide.load15 = load <8 x i8>, ptr %i.v, align 1, !tbaa !8
  %reverse16 = shufflevector <8 x i8> %wide.load15, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse16, ptr %next.gep14, align 1, !tbaa !8
  %index.next17 = add nuw i64 %index13, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.k, %n.vec12
  br i1 %cmp.n18, label %_Z21ConvertUInt64ToStringyPcj.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv27.i.ph = phi i64 [ %i.j, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.017.i.ph = phi ptr [ %.0, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.preheader.i ], [ %indvars.iv27.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.017.i = phi ptr [ %i.z, %.preheader.i ], [ %.017.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next28.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.017.i, i64 1 ; 2 uses
  store i8 %i.y, ptr %.017.i, align 1, !tbaa !8
  %i.aa = icmp sgt i64 %indvars.iv27.i, 1
  br i1 %i.aa, label %.preheader.i, label %_Z21ConvertUInt64ToStringyPcj.exit, !llvm.loop !29

_Z21ConvertUInt64ToStringyPcj.exit:               ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.t, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %i.z, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_Z20ConvertInt64ToStringxPw(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 45, ptr %1, align 4, !tbaa !17
  %i.d = sub nsw i64 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i64 [ %i.d, %bb.b ], [ %0, %bb.a ]
  %.0 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv12.i = phi i32 [ %indvars.iv.next13.i, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.08.i = phi i64 [ %i.i, %bb.d ], [ %.04, %bb.c ] ; 3 uses
  %i.e = urem i64 %.08.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = or disjoint i32 %i.f, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.g, ptr %i.h, align 4, !tbaa !17
  %i.i = udiv i64 %.08.i, 10
  %.not.i = icmp samesign ult i64 %.08.i, 10
  %indvars.iv.next13.i = add i32 %indvars.iv12.i, 1
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.d, !llvm.loop !19

.preheader.preheader.i:                           ; preds = %bb.d
  %i.j = sext i32 %indvars.iv12.i to i64          ; 4 uses
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %indvars.iv12.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %i.k, 2147483640               ; 4 uses
  %i.l = sub nsw i64 %i.j, %n.vec
  %i.m = shl nuw nsw i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %.0, i64 %i.m      ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0, i64 %i.o ; 2 uses
  %i.p = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.r = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !17
  %wide.load7 = load <4 x i32>, ptr %i.r, align 4, !tbaa !17
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse8 = shufflevector <4 x i32> %wide.load7, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %reverse, ptr %next.gep, align 4, !tbaa !17
  store <4 x i32> %reverse8, ptr %i.s, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_Z21ConvertUInt64ToStringyPw.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv14.i.ph = phi i64 [ %i.j, %.preheader.preheader.i ], [ %i.l, %middle.block ]
  %.07.i.ph = phi ptr [ %.0, %.preheader.preheader.i ], [ %i.n, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %.preheader.i ], [ %indvars.iv14.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.07.i = phi ptr [ %i.w, %.preheader.i ], [ %.07.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, -1 ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next15.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 2 uses
  store i32 %i.v, ptr %.07.i, align 4, !tbaa !17
  %i.x = icmp sgt i64 %indvars.iv14.i, 1
  br i1 %i.x, label %.preheader.i, label %_Z21ConvertUInt64ToStringyPw.exit, !llvm.loop !31

_Z21ConvertUInt64ToStringyPw.exit:                ; preds = %.preheader.i, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.preheader.i ]
  store i32 0, ptr %.lcssa, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z27ConvertUInt32ToHexWithZerosjPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 9)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 15                           ; 3 uses
  %i.b = lshr i32 %0, 4
  %i.c = icmp samesign ult i32 %i.a, 10
  %i.d = or disjoint i32 %i.a, 48
  %i.e = add nuw nsw i32 %i.a, 55
  %i.f = select i1 %i.c, i32 %i.d, i32 %i.e
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.g, ptr %i.h, align 1, !tbaa !8
  %i.i = and i32 %i.b, 15                         ; 3 uses
  %i.j = lshr i32 %0, 8
  %i.k = icmp samesign ult i32 %i.i, 10
  %i.l = or disjoint i32 %i.i, 48
  %i.m = add nuw nsw i32 %i.i, 55
  %i.n = select i1 %i.k, i32 %i.l, i32 %i.m
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = and i32 %i.j, 15                         ; 3 uses
  %i.r = lshr i32 %0, 12
  %i.s = icmp samesign ult i32 %i.q, 10
  %i.t = or disjoint i32 %i.q, 48
  %i.u = add nuw nsw i32 %i.q, 55
  %i.v = select i1 %i.s, i32 %i.t, i32 %i.u
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.w, ptr %i.x, align 1, !tbaa !8
  %i.y = lshr i32 %0, 16
  %i.z = lshr i32 %0, 20
  %i.aa = lshr i32 %0, 24
  %i.ab = lshr i32 %0, 28                         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.z, i64 1
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.y, i64 2
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.r, i64 3
  %i.ah = and <4 x i32> %i.ag, splat (i32 15)     ; 3 uses
  %i.ai = icmp samesign ult <4 x i32> %i.ah, splat (i32 10)
  %i.aj = or disjoint <4 x i32> %i.ah, splat (i32 48)
  %i.ak = add nuw nsw <4 x i32> %i.ah, splat (i32 55)
  %i.al = select <4 x i1> %i.ai, <4 x i32> %i.aj, <4 x i32> %i.ak
  %i.am = trunc nuw nsw <4 x i32> %i.al to <4 x i8>
  store <4 x i8> %i.am, ptr %i.ac, align 1, !tbaa !8
  %i.an = icmp ult i32 %0, -1610612736
  %i.ao = or disjoint i32 %i.ab, 48
  %i.ap = add nuw nsw i32 %i.ab, 55
  %i.aq = select i1 %i.an, i32 %i.ao, i32 %i.ap
  %i.ar = trunc nuw nsw i32 %i.aq to i8
  store i8 %i.ar, ptr %1, align 1, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.as, align 1, !tbaa !8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 8, i32 24}
!15 = distinct !{!15, !10, !12, !13}
!16 = distinct !{!16, !10, !13, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"wchar_t", !6, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !12, !13}
!21 = distinct !{!21, !10, !13, !12}
!22 = distinct !{!22, !10, !12, !13}
!23 = distinct !{!23, !10, !12, !13}
!24 = distinct !{!24, !10, !13, !12}
!25 = distinct !{!25, !10, !12, !13}
!26 = distinct !{!26, !10, !13, !12}
!27 = distinct !{!27, !10, !12, !13}
!28 = distinct !{!28, !10, !12, !13}
!29 = distinct !{!29, !10, !13, !12}
!30 = distinct !{!30, !10, !12, !13}
!31 = distinct !{!31, !10, !13, !12}
end_hunk_0
