Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dsp?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_jpeg2000_f_ict_params = local_unnamed_addr constant [4 x float] [float 1.402000e+00, float 3.441300e-01, float f0x3F36D1E1, float 1.772000e+00], align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_jpeg2000dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @ict_float, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @rct_int, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @ict_int, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ict_float(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = add nsw i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  %scevgep25 = getelementptr i8, ptr %1, i64 %i.f ; 2 uses
  %scevgep26 = getelementptr i8, ptr %2, i64 %i.f ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep25
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %0, %scevgep26
  %bound128 = icmp ult ptr %2, %scevgep
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  %bound030 = icmp ult ptr %1, %scevgep26
  %bound131 = icmp ult ptr %2, %scevgep25
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx, %found.conflict32
  br i1 %conflict.rdx33, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483644               ; 4 uses
  %i.g = trunc nuw nsw i64 %n.vec to i32
  %i.h = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.l  ; 2 uses
  %next.gep34 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %next.gep35 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep35, align 4, !tbaa !22, !alias.scope !23, !noalias !24 ; 3 uses
  %wide.load36 = load <4 x float>, ptr %next.gep, align 4, !tbaa !22, !alias.scope !25 ; 2 uses
  %i.m = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load36, <4 x float> splat (float 1.402000e+00), <4 x float> %wide.load)
  %wide.load37 = load <4 x float>, ptr %next.gep34, align 4, !tbaa !22, !alias.scope !26, !noalias !25 ; 2 uses
  %i.n = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load37, <4 x float> splat (float -3.441300e-01), <4 x float> %wide.load)
  %i.o = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load36, <4 x float> splat (float f0xBF36D1E1), <4 x float> %i.n)
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load37, <4 x float> splat (float 1.772000e+00), <4 x float> %wide.load)
  store <4 x float> %i.m, ptr %next.gep35, align 4, !tbaa !22, !alias.scope !23, !noalias !24
  store <4 x float> %i.o, ptr %next.gep34, align 4, !tbaa !22, !alias.scope !26, !noalias !25
  store <4 x float> %i.p, ptr %next.gep, align 4, !tbaa !22, !alias.scope !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.01823.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01922.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.02021.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader41, %.lr.ph
  %.024 = phi i32 [ %i.x, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader41 ]
  %.01823 = phi ptr [ %i.w, %.lr.ph ], [ %.01823.ph, %.lr.ph.preheader41 ] ; 3 uses
  %.01922 = phi ptr [ %i.v, %.lr.ph ], [ %.01922.ph, %.lr.ph.preheader41 ] ; 3 uses
  %.02021 = phi ptr [ %i.u, %.lr.ph ], [ %.02021.ph, %.lr.ph.preheader41 ] ; 3 uses
  %4 = load float, ptr %.01823, align 4, !tbaa !22 ; 2 uses
  %i.r = load float, ptr %.01922, align 4, !tbaa !22 ; 2 uses
  %i.s = load float, ptr %.02021, align 4, !tbaa !22 ; 3 uses
  %5 = tail call nsz float @llvm.fmuladd.f32(float %4, float 1.402000e+00, float %i.s)
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %i.r, float -3.441300e-01, float %i.s)
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = insertelement <2 x float> %6, float %i.r, i64 1
  %8 = insertelement <2 x float> poison, float %i.t, i64 0
  %9 = insertelement <2 x float> %8, float %i.s, i64 1
  %10 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> <float f0xBF36D1E1, float 1.772000e+00>, <2 x float> %9) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02021, i64 4
  store float %5, ptr %.02021, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %.01922, i64 4
  %11 = extractelement <2 x float> %10, i64 0
  store float %11, ptr %.01922, align 4, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %.01823, i64 4
  %12 = extractelement <2 x float> %10, i64 1
  store float %12, ptr %.01823, align 4, !tbaa !22
  %i.x = add nuw nsw i32 %.024, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rct_int(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = add nsw i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  %scevgep25 = getelementptr i8, ptr %1, i64 %i.f ; 2 uses
  %scevgep26 = getelementptr i8, ptr %2, i64 %i.f ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep25
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %0, %scevgep26
  %bound128 = icmp ult ptr %2, %scevgep
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  %bound030 = icmp ult ptr %1, %scevgep26
  %bound131 = icmp ult ptr %2, %scevgep25
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx, %found.conflict32
  br i1 %conflict.rdx33, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483644               ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = getelementptr i8, ptr %2, i64 %i.g
  %i.k = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.l  ; 2 uses
  %next.gep34 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.l ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !33, !noalias !34
  %wide.load36 = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !12, !alias.scope !35 ; 2 uses
  %wide.load37 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !12, !alias.scope !36, !noalias !35 ; 2 uses
  %i.m = add <4 x i32> %wide.load37, %wide.load36
  %i.n = ashr <4 x i32> %i.m, splat (i32 2)
  %i.o = sub <4 x i32> %wide.load, %i.n           ; 3 uses
  %i.p = add <4 x i32> %i.o, %wide.load36
  %i.q = add <4 x i32> %i.o, %wide.load37
  store <4 x i32> %i.p, ptr %next.gep, align 4, !tbaa !12, !alias.scope !33, !noalias !34
  store <4 x i32> %i.o, ptr %next.gep34, align 4, !tbaa !12, !alias.scope !36, !noalias !35
  store <4 x i32> %i.q, ptr %next.gep35, align 4, !tbaa !12, !alias.scope !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 4 uses
  %.01823.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 4 uses
  %.01922.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %.02021.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ] ; 4 uses
  %i.s = sub i32 %3, %.02021.ph
  %.neg = add i32 %.02021.ph, 1
  %xtraiter = and i32 %i.s, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader41
  %i.t = load i32, ptr %.024.ph, align 4, !tbaa !12
  %i.u = load i32, ptr %.01922.ph, align 4, !tbaa !12 ; 2 uses
  %i.v = load i32, ptr %.01823.ph, align 4, !tbaa !12 ; 2 uses
  %i.w = add i32 %i.v, %i.u
  %i.x = ashr i32 %i.w, 2
  %i.y = sub i32 %i.t, %i.x                       ; 3 uses
  %i.z = add i32 %i.y, %i.u
  %i.aa = add i32 %i.y, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %.024.ph, i64 4
  store i32 %i.z, ptr %.024.ph, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.01823.ph, i64 4
  store i32 %i.y, ptr %.01823.ph, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.01922.ph, i64 4
  store i32 %i.aa, ptr %.01922.ph, align 4, !tbaa !12
  %i.ae = add nuw nsw i32 %.02021.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader41
  %.024.unr = phi ptr [ %.024.ph, %.lr.ph.preheader41 ], [ %i.ab, %.lr.ph.prol ]
  %.01823.unr = phi ptr [ %.01823.ph, %.lr.ph.preheader41 ], [ %i.ac, %.lr.ph.prol ]
  %.01922.unr = phi ptr [ %.01922.ph, %.lr.ph.preheader41 ], [ %i.ad, %.lr.ph.prol ]
  %.02021.unr = phi i32 [ %.02021.ph, %.lr.ph.preheader41 ], [ %i.ae, %.lr.ph.prol ]
  %i.af = icmp eq i32 %3, %.neg
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.024 = phi ptr [ %i.az, %.lr.ph ], [ %.024.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01823 = phi ptr [ %i.ba, %.lr.ph ], [ %.01823.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01922 = phi ptr [ %i.bb, %.lr.ph ], [ %.01922.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02021 = phi i32 [ %i.bc, %.lr.ph ], [ %.02021.unr, %.lr.ph.prol.loopexit ]
  %i.ag = load i32, ptr %.024, align 4, !tbaa !12
  %i.ah = load i32, ptr %.01922, align 4, !tbaa !12 ; 2 uses
  %i.ai = load i32, ptr %.01823, align 4, !tbaa !12 ; 2 uses
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = ashr i32 %i.aj, 2
  %i.al = sub i32 %i.ag, %i.ak                    ; 3 uses
  %i.am = add i32 %i.al, %i.ah
  %i.an = add i32 %i.al, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  store i32 %i.am, ptr %.024, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.01823, i64 4 ; 2 uses
  store i32 %i.al, ptr %.01823, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.01922, i64 4 ; 2 uses
  store i32 %i.an, ptr %.01922, align 4, !tbaa !12
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !12 ; 2 uses
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.au = add i32 %i.at, %i.as
  %i.av = ashr i32 %i.au, 2
  %i.aw = sub i32 %i.ar, %i.av                    ; 3 uses
  %i.ax = add i32 %i.aw, %i.as
  %i.ay = add i32 %i.aw, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %.024, i64 8
  store i32 %i.ax, ptr %i.ao, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.01823, i64 8
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.01922, i64 8
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !12
  %i.bc = add nuw nsw i32 %.02021, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bc, %3
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ict_int(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = add nsw i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  %scevgep29 = getelementptr i8, ptr %1, i64 %i.f ; 2 uses
  %scevgep30 = getelementptr i8, ptr %2, i64 %i.f ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep29
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %0, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %1, %scevgep30
  %bound135 = icmp ult ptr %2, %scevgep29
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483644               ; 4 uses
  %i.g = trunc nuw nsw i64 %n.vec to i32
  %i.h = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.l  ; 2 uses
  %next.gep38 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %next.gep39 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !12, !alias.scope !43, !noalias !44 ; 3 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !45 ; 3 uses
  %i.m = add nsw <4 x i32> %wide.load40, %wide.load
  %i.n = mul <4 x i32> %wide.load40, splat (i32 26345)
  %i.o = add <4 x i32> %i.n, splat (i32 32768)
  %i.p = ashr <4 x i32> %i.o, splat (i32 16)
  %i.q = add nsw <4 x i32> %i.m, %i.p
  %wide.load41 = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !12, !alias.scope !46, !noalias !45 ; 3 uses
  %i.r = mul <4 x i32> %wide.load41, splat (i32 22553)
  %i.s = add <4 x i32> %i.r, splat (i32 32768)
  %i.t = ashr <4 x i32> %i.s, splat (i32 16)
  %i.u = mul <4 x i32> %wide.load40, splat (i32 46802)
  %i.v = add <4 x i32> %i.u, splat (i32 32768)
  %i.w = ashr <4 x i32> %i.v, splat (i32 16)
  %i.x = add nsw <4 x i32> %i.w, %i.t
  %i.y = sub <4 x i32> %wide.load, %i.x
  %i.z = shl nsw <4 x i32> %wide.load41, splat (i32 1)
  %i.aa = add nsw <4 x i32> %i.z, %wide.load
  %i.ab = mul <4 x i32> %wide.load41, splat (i32 -14942)
  %i.ac = add <4 x i32> %i.ab, splat (i32 32768)
  %i.ad = ashr <4 x i32> %i.ac, splat (i32 16)
  %i.ae = add nsw <4 x i32> %i.aa, %i.ad
  store <4 x i32> %i.q, ptr %next.gep39, align 4, !tbaa !12, !alias.scope !43, !noalias !44
  store <4 x i32> %i.y, ptr %next.gep38, align 4, !tbaa !12, !alias.scope !46, !noalias !45
  store <4 x i32> %i.ae, ptr %next.gep, align 4, !tbaa !12, !alias.scope !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.028.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.02027.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02126.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.02225.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.028 = phi i32 [ %i.bf, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader45 ]
  %.02027 = phi ptr [ %i.be, %.lr.ph ], [ %.02027.ph, %.lr.ph.preheader45 ] ; 3 uses
  %.02126 = phi ptr [ %i.bd, %.lr.ph ], [ %.02126.ph, %.lr.ph.preheader45 ] ; 3 uses
  %.02225 = phi ptr [ %i.bc, %.lr.ph ], [ %.02225.ph, %.lr.ph.preheader45 ] ; 3 uses
  %i.ag = load i32, ptr %.02225, align 4, !tbaa !12 ; 3 uses
  %i.ah = load i32, ptr %.02027, align 4, !tbaa !12 ; 3 uses
  %i.ai = add nsw i32 %i.ah, %i.ag
  %i.aj = mul i32 %i.ah, 26345
  %i.ak = add i32 %i.aj, 32768
  %i.al = ashr i32 %i.ak, 16
  %i.am = add nsw i32 %i.ai, %i.al
  %i.an = load i32, ptr %.02126, align 4, !tbaa !12 ; 3 uses
  %i.ao = mul i32 %i.an, 22553
  %i.ap = add i32 %i.ao, 32768
  %i.aq = ashr i32 %i.ap, 16
  %i.ar = mul i32 %i.ah, 46802
  %i.as = add i32 %i.ar, 32768
  %i.at = ashr i32 %i.as, 16
  %i.au = add nsw i32 %i.at, %i.aq
  %i.av = sub i32 %i.ag, %i.au
  %i.aw = shl nsw i32 %i.an, 1
  %i.ax = add nsw i32 %i.aw, %i.ag
  %i.ay = mul i32 %i.an, -14942
  %i.az = add i32 %i.ay, 32768
  %i.ba = ashr i32 %i.az, 16
  %i.bb = add nsw i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.02225, i64 4
  store i32 %i.am, ptr %.02225, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.02126, i64 4
  store i32 %i.av, ptr %.02126, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.02027, i64 4
  store i32 %i.bb, ptr %.02027, align 4, !tbaa !12
  %i.bf = add nuw nsw i32 %.028, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!6, !6, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !9, !10, !11}
!20 = distinct !{!20, !9, !10}
!21 = !{!"float", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!16}
!24 = !{!18, !17}
!25 = !{!17}
!26 = !{!18}
!27 = distinct !{!27, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !9, !10, !11}
!32 = distinct !{!32, !9, !10}
!33 = !{!28}
!34 = !{!30, !29}
!35 = !{!29}
!36 = !{!30}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !9, !10, !11}
!42 = distinct !{!42, !9, !10}
!43 = !{!38}
!44 = !{!40, !39}
!45 = !{!39}
!46 = !{!40}
end_hunk_0
