Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_iop_roi_t = type { i32, i32, i32, i32, float }

@.str = private unnamed_addr constant [63 x i8] c"[dwt_denoise] unable to alloc working memory, skipping denoise\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"[dwt] unable to alloc working memory, skipping wavelet decomposition\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @dt_dwt_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #14 ; 11 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %3, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %4, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %5, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %6, ptr %i.g, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %7, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %8, ptr %i.i, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @dt_dwt_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @dwt_get_max_scale(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load float, ptr %i.b, align 8, !tbaa !22 ; 4 uses
  %i.d = load <2 x i32>, ptr %i.a, align 4, !tbaa !23
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = insertelement <2 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fdiv reassoc nsz arcp contract afn <2 x float> %i.e, %i.g ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fptosi float %i.i to i32
  %i.k = extractelement <2 x float> %i.h, i64 1
  %i.l = fptosi float %i.k to i32
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.l) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.020.i = phi i32 [ 0, %bb.a ], [ %i.o, %bb.b ] ; 9 uses
  %.019.in.i = phi i32 [ %i.m, %bb.a ], [ %.019.i, %bb.b ]
  %.019.i = lshr i32 %.019.in.i, 1                ; 2 uses
  %.pn.i = uitofp nneg i32 %.019.i to float
  %.0.i = fmul reassoc nsz arcp contract afn float %i.c, %.pn.i
  %i.n = fcmp reassoc nsz arcp contract afn ogt float %.0.i, 0.000000e+00
  %i.o = add nuw i32 %.020.i, 1
  br i1 %i.n, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not.i = icmp eq i32 %.020.i, 0
  br i1 %.not.i, label %_get_max_scale.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.p = uitofp reassoc nsz arcp contract afn i32 %i.m to float ; 2 uses
  %min.iters.check = icmp ult i32 %.020.i, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i32 %.020.i, -32                   ; 2 uses
  %i.q = and i32 %.020.i, 31
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <32 x float> poison, float %i.c, i64 0
  %broadcast.splat6 = shufflevector <32 x float> %broadcast.splatinsert5, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <32 x i32> poison, i32 %.020.i, i64 0
  %broadcast.splat8 = shufflevector <32 x i32> %broadcast.splatinsert7, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.r = add nsw <32 x i32> %broadcast.splat8, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15, i32 -16, i32 -17, i32 -18, i32 -19, i32 -20, i32 -21, i32 -22, i32 -23, i32 -24, i32 -25, i32 -26, i32 -27, i32 -28, i32 -29, i32 -30, i32 -31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %i.r, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.s = shl nuw <32 x i32> splat (i32 1), %vec.ind
  %i.t = sitofp reassoc nsz arcp contract afn <32 x i32> %i.s to <32 x float>
  %i.u = fmul reassoc nsz arcp contract afn <32 x float> %broadcast.splat6, %i.t
  %i.v = fcmp reassoc nsz arcp contract afn ult <32 x float> %i.u, %broadcast.splat
  %i.w = freeze <32 x i1> %i.v                    ; 2 uses
  %i.x = bitcast <32 x i1> %i.w to i32
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 -32)
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %.020.i, %n.vec
  br i1 %cmp.n, label %_get_max_scale.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.121.i.ph = phi i32 [ %.020.i, %.lr.ph.i ], [ %i.q, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.z = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.w, i1 false)
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %index, %i.aa
  %i.ac = sub i32 %.020.i, %i.ab
  br label %_get_max_scale.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.121.i = phi i32 [ %i.ah, %bb.c ], [ %.121.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ad = shl nuw i32 1, %.121.i
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  %i.af = fmul reassoc nsz arcp contract afn float %i.c, %i.ae
  %i.ag = fcmp reassoc nsz arcp contract afn ult float %i.af, %i.p
  br i1 %i.ag, label %_get_max_scale.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ah = add nsw i32 %.121.i, -1
  %i.ai = icmp sgt i32 %.121.i, 1
  br i1 %i.ai, label %scalar.ph, label %_get_max_scale.exit, !llvm.loop !29

_get_max_scale.exit:                              ; preds = %scalar.ph, %bb.c, %middle.block, %vector.early.exit, %.preheader.i
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ 0, %middle.block ], [ %i.ac, %vector.early.exit ], [ 0, %bb.c ], [ %.121.i, %scalar.ph ]
  ret i32 %.1.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @dt_dwt_first_scale_visible(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load float, ptr %i.c, align 8, !tbaa !22 ; 2 uses
  %exitcond.not.i2 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i2, label %_first_scale_visible.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.b, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.b, -32                      ; 3 uses
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.e = shl nuw <32 x i32> splat (i32 1), %vec.ind
  %i.f = sitofp reassoc nsz arcp contract afn <32 x i32> %i.e to <32 x float>
  %i.g = fmul reassoc nsz arcp contract afn <32 x float> %broadcast.splat, %i.f
  %i.h = fptosi <32 x float> %i.g to <32 x i32>
  %.fr = freeze <32 x i32> %i.h
  %i.i = icmp sgt <32 x i32> %.fr, zeroinitializer ; 2 uses
  %i.j = bitcast <32 x i1> %i.i to i32
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, splat (i32 32)
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.k = icmp eq i32 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.b, %n.vec
  br i1 %cmp.n, label %_first_scale_visible.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.09.i3.ph = phi i32 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.i, i1 false)
  %1 = extractelement <32 x i32> %vec.ind, i64 %first.active.lane
  %i.l = add i32 %1, 1
  br label %_first_scale_visible.exit

bb.b:                                             ; preds = %scalar.ph
  %exitcond.not.i = icmp eq i32 %i.r, %i.b
  br i1 %exitcond.not.i, label %_first_scale_visible.exit, label %scalar.ph, !llvm.loop !31

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %.09.i3 = phi i32 [ %i.r, %bb.b ], [ %.09.i3.ph, %scalar.ph.preheader ] ; 2 uses
  %i.m = shl nuw i32 1, %.09.i3
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  %i.o = fmul reassoc nsz arcp contract afn float %i.d, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = icmp slt i32 %i.p, 1
  %i.r = add i32 %.09.i3, 1                       ; 3 uses
  br i1 %i.q, label %bb.b, label %_first_scale_visible.exit

_first_scale_visible.exit:                        ; preds = %scalar.ph, %bb.b, %vector.early.exit, %middle.block, %bb.a
  %.2.i = phi i32 [ 0, %middle.block ], [ 0, %bb.a ], [ %i.l, %vector.early.exit ], [ %i.r, %scalar.ph ], [ 0, %bb.b ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define void @dwt_decompose(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca [2 x ptr], align 16               ; 10 uses
  %2 = alloca %struct.dt_iop_roi_t, align 4       ; 8 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ugt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi float [ 1.000000e+00, %bb.b ], [ %i.g, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19   ; 4 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = icmp sgt i32 %i.k, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.n, ptr %i.j, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !23
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = insertelement <2 x float> poison, float %i.i, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fdiv reassoc nsz arcp contract afn <2 x float> %i.t, %i.v ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fptosi float %i.x to i32
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fptosi float %i.z to i32
  %i.ab = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.aa) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.020.i.i = phi i32 [ 0, %bb.e ], [ %i.ad, %bb.f ] ; 9 uses
  %.019.in.i.i = phi i32 [ %i.ab, %bb.e ], [ %.019.i.i, %bb.f ]
  %.019.i.i = lshr i32 %.019.in.i.i, 1            ; 2 uses
  %.pn.i.i = uitofp nneg i32 %.019.i.i to float
  %.0.i.i = fmul reassoc nsz arcp contract afn float %i.i, %.pn.i.i
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %.0.i.i, 0.000000e+00
  %i.ad = add nuw i32 %.020.i.i, 1
  br i1 %i.ac, label %bb.f, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.020.i.i, 0
  br i1 %.not.i.i, label %dwt_get_max_scale.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ae = uitofp reassoc nsz arcp contract afn i32 %i.ab to float ; 2 uses
  %min.iters.check = icmp ult i32 %.020.i.i, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i32 %.020.i.i, -32                 ; 2 uses
  %i.af = and i32 %.020.i.i, 31
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <32 x float> poison, float %i.i, i64 0
  %broadcast.splat92 = shufflevector <32 x float> %broadcast.splatinsert91, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <32 x i32> poison, i32 %.020.i.i, i64 0
  %broadcast.splat94 = shufflevector <32 x i32> %broadcast.splatinsert93, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ag = add nsw <32 x i32> %broadcast.splat94, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15, i32 -16, i32 -17, i32 -18, i32 -19, i32 -20, i32 -21, i32 -22, i32 -23, i32 -24, i32 -25, i32 -26, i32 -27, i32 -28, i32 -29, i32 -30, i32 -31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %i.ag, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ah = shl nuw <32 x i32> splat (i32 1), %vec.ind
  %i.ai = sitofp reassoc nsz arcp contract afn <32 x i32> %i.ah to <32 x float>
  %i.aj = fmul reassoc nsz arcp contract afn <32 x float> %broadcast.splat92, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn ult <32 x float> %i.aj, %broadcast.splat
  %i.al = freeze <32 x i1> %i.ak                  ; 2 uses
  %i.am = bitcast <32 x i1> %i.al to i32
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 -32)
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.an = icmp eq i32 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %.020.i.i, %n.vec
  br i1 %cmp.n, label %dwt_get_max_scale.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.121.i.i.ph = phi i32 [ %.020.i.i, %.lr.ph.i.i ], [ %i.af, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.ao = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.al, i1 false)
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %index, %i.ap
  %i.ar = sub i32 %.020.i.i, %i.aq
  br label %dwt_get_max_scale.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %.121.i.i = phi i32 [ %i.aw, %bb.g ], [ %.121.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.as = shl nuw i32 1, %.121.i.i
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.au = fmul reassoc nsz arcp contract afn float %i.i, %i.at
  %i.av = fcmp reassoc nsz arcp contract afn ult float %i.au, %i.ae
  br i1 %i.av, label %dwt_get_max_scale.exit, label %bb.g

bb.g:                                             ; preds = %scalar.ph
  %i.aw = add nsw i32 %.121.i.i, -1
  %i.ax = icmp sgt i32 %.121.i.i, 1
  br i1 %i.ax, label %scalar.ph, label %dwt_get_max_scale.exit, !llvm.loop !33

dwt_get_max_scale.exit:                           ; preds = %scalar.ph, %bb.g, %middle.block, %vector.early.exit, %.preheader.i.i
  %.1.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ 0, %middle.block ], [ %i.ar, %vector.early.exit ], [ %.121.i.i, %scalar.ph ], [ 0, %bb.g ] ; 6 uses
  %i.ay = icmp sgt i32 %i.m, %.1.lcssa.i.i
  br i1 %i.ay, label %bb.h, label %bb.l

bb.h:                                             ; preds = %dwt_get_max_scale.exit
  %i.az = icmp sgt i32 %i.p, %i.m
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %.1.lcssa.i.i, 1
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp sgt i32 %i.p, %.1.lcssa.i.i
  br i1 %i.bb, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.1.lcssa.i.i.sink = phi i32 [ %i.ba, %bb.i ], [ %.1.lcssa.i.i, %bb.j ]
  store i32 %.1.lcssa.i.i.sink, ptr %i.j, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  store i32 %.1.lcssa.i.i, ptr %i.l, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %dwt_get_max_scale.exit
  %i.bc = phi i32 [ %.1.lcssa.i.i, %bb.k ], [ %i.m, %dwt_get_max_scale.exit ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.not.i = icmp eq ptr %1, null                  ; 5 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %1(ptr noundef %i.bd, ptr noundef nonnull %0, i32 noundef 0) #15, !inline_history !34
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi i32 [ %.pre, %bb.m ], [ %i.bc, %bb.l ]
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %dwt_wavelet_decompose.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bd, ptr %i.d, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !59
end_hunk_0
