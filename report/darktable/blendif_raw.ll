inline.NumInlined: 31
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@switch.table.dt_develop_blendif_raw_blend = private unnamed_addr constant [24 x ptr] [ptr @_blend_lighten, ptr @_blend_darken, ptr @_blend_multiply, ptr @_blend_average, ptr @_blend_add, ptr @_blend_subtract, ptr @_blend_difference, ptr @_blend_screen, ptr @_blend_overlay, ptr @_blend_softlight, ptr @_blend_hardlight, ptr @_blend_vividlight, ptr @_blend_linearlight, ptr @_blend_pinlight, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_difference, ptr @_blend_normal_unbounded, ptr @_blend_normal_bounded], align 8

; Function Attrs: nounwind uwtable
define void @dt_develop_blendif_raw_make_mask(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readnone captures(none) %1, ptr noalias nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noalias noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %i.j = sext i32 %i.h to i64                     ; 2 uses
  %i.k = mul nsw i64 %i.j, %i.i                   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !33
  %6 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.m, float 0.000000e+00)
  %i.n = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %6, float 1.000000e+02)
  %7 = fmul reassoc nnan nsz arcp contract afn float %i.n, f0x3C23D70A ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = and i32 %i.p, 1
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.s, align 4, !tbaa !36
  %wide.load23 = load <8 x float>, ptr %i.t, align 4, !tbaa !36
  %wide.load24 = load <8 x float>, ptr %i.u, align 4, !tbaa !36
  %wide.load25 = load <8 x float>, ptr %i.v, align 4, !tbaa !36
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load23
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load24
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load25
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.w, %broadcast.splat
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %broadcast.splat
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.y, %broadcast.splat
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %broadcast.splat
  store <8 x float> %i.aa, ptr %i.s, align 4, !tbaa !36
  store <8 x float> %i.ab, ptr %i.t, align 4, !tbaa !36
  store <8 x float> %i.ac, ptr %i.u, align 4, !tbaa !36
  store <8 x float> %i.ad, ptr %i.v, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.k, -4                     ; 3 uses
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat28 = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index29 ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.af, align 4, !tbaa !36
  %i.ag = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %wide.load30
  %i.ah = fmul reassoc nsz arcp contract afn <4 x float> %i.ag, %broadcast.splat28
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !36
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.k, %n.vec26
  br i1 %cmp.n32, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.020 = phi i64 [ %i.an, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.020 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !36
  %i.al = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %7
  store float %i.am, ptr %i.aj, align 4, !tbaa !36
  %i.an = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.k
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !42

bb.c:                                             ; preds = %bb.b
  tail call void @dt_iop_image_mul_const(ptr noundef %5, float noundef %7, i64 noundef %i.i, i64 noundef %i.j, i64 noundef 1) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #1

declare void @dt_iop_image_mul_const(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_develop_blendif_raw_blend(ptr nofree noundef readonly captures(none) %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noalias noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !43
  %i.f = load i32, ptr %3, align 4, !tbaa !43
  %i.g = sub nsw i32 %i.e, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !44
  %i.l = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32   ; 3 uses
  %i.s = and i32 %6, 1020
  %.not62 = icmp eq i32 %i.s, 0
  br i1 %.not62, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sext i32 %i.p to i64
  %i.u = sext i32 %i.r to i64
  tail call void @dt_iop_image_fill(ptr noundef %2, float noundef 0.000000e+00, i64 noundef %i.t, i64 noundef %i.u, i64 noundef 1) #6
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %trunc.i = trunc i32 %i.w to i8
  %switch.tableidx = add i8 %trunc.i, -2          ; 2 uses
  %i.x = icmp ult i8 %switch.tableidx, 24
  br i1 %i.x, label %switch.lookup, label %_choose_blend_func.exit

switch.lookup:                                    ; preds = %bb.d
  %i.y = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_develop_blendif_raw_blend, i64 %i.y
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_choose_blend_func.exit

_choose_blend_func.exit:                          ; preds = %bb.d, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @_blend_normal_unbounded, %bb.d ] ; 2 uses
  %i.z = sext i32 %i.p to i64                     ; 5 uses
  %i.aa = sext i32 %i.r to i64                    ; 3 uses
  %i.ab = mul nsw i64 %i.aa, %i.z                 ; 2 uses
  %i.ac = shl i64 %i.ab, 2
  %i.ad = tail call ptr @dt_alloc_aligned(i64 noundef %i.ac) #6 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  %.not63 = icmp eq ptr %i.ad, null
  br i1 %.not63, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_choose_blend_func.exit
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.ad, ptr noundef %2, i64 noundef %i.ab) #6
  %i.ae = load i32, ptr %i.v, align 4, !tbaa !45
  %.not64 = icmp sgt i32 %i.ae, -1
  %.not73 = icmp eq i32 %i.r, 0                   ; 2 uses
  br i1 %.not64, label %.preheader, label %.preheader65

.preheader65:                                     ; preds = %bb.e
  br i1 %.not73, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.af = sext i32 %i.l to i64
  %i.ag = sext i32 %i.n to i64
  %i.ah = sext i32 %i.g to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ah
  br label %bb.f

.preheader:                                       ; preds = %bb.e
  br i1 %.not73, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.ai = sext i32 %i.l to i64
  %i.aj = sext i32 %i.n to i64
  %i.ak = sext i32 %i.g to i64
  %invariant.gep70 = getelementptr [4 x i8], ptr %1, i64 %i.ak
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
end_hunk_0
