Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRGluePFC?download=true
inline.NumInlined: 75
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gray8_RGB24:bb.a
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1                     ; 3 uses
  %i.j = mul i32 %i.i, 3
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = zext i32 %i.i to i64                     ; 3 uses
  %i.m = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.027, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.027, i64 %i.k ; 3 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !18
  %i.q = getelementptr i8, ptr %i.p, i64 1
  store i8 %i.o, ptr %i.q, align 1, !tbaa !18
  %i.r = getelementptr i8, ptr %i.p, i64 2
  store i8 %i.o, ptr %i.r, align 1, !tbaa !18
  %indvars.iv.next32.prol = add nsw i64 %i.l, -1
  %indvars.iv.next.prol = add nsw i64 %i.k, -3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv31.unr = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next32.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = icmp eq i32 %i.i, 0
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.1, %.lr.ph ], [ %indvars.iv31.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.027, i64 %indvars.iv31
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.027, i64 %indvars.iv ; 3 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr i8, ptr %i.v, i64 1
  store i8 %i.u, ptr %i.w, align 1, !tbaa !18
  %i.x = getelementptr i8, ptr %i.v, i64 2
  store i8 %i.u, ptr %i.x, align 1, !tbaa !18
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, -1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.027, i64 %indvars.iv.next32
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18    ; 3 uses
  %i.aa = getelementptr i8, ptr %.027, i64 %indvars.iv ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -3
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr i8, ptr %i.aa, i64 -2
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !18
  %i.ad = getelementptr i8, ptr %i.aa, i64 -1
  store i8 %i.z, ptr %i.ad, align 1, !tbaa !18
  %indvars.iv.next32.1 = add nsw i64 %indvars.iv31, -2
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -6
  %.not.1 = icmp eq i64 %indvars.iv.next32, 0
  br i1 %.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ae = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.027, i64 %i.e
  %i.ag = add nuw nsw i32 %.02326, 1              ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %bb.b, label %._crit_edge30, !llvm.loop !53

._crit_edge30:                                    ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @Gray8_BGR24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph29.i, label %Gray8_RGB24.exit

.lr.ph29.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = zext i32 %3 to i64
  %i.f = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph29.i.split, label %Gray8_RGB24.exit

.lr.ph29.i.splitthread-pre-split:                 ; preds = %._crit_edge.i
  %i.h = getelementptr inbounds nuw i8, ptr %.027.i, i64 %i.e
  %.pr = load i32, ptr %i.d, align 4, !tbaa !17
  br label %.lr.ph29.i.split

.lr.ph29.i.split:                                 ; preds = %.lr.ph29.i, %.lr.ph29.i.splitthread-pre-split
  %i.i = phi i32 [ %.pr, %.lr.ph29.i.splitthread-pre-split ], [ %i.f, %.lr.ph29.i ] ; 3 uses
  %i.j = phi i32 [ %i.ah, %.lr.ph29.i.splitthread-pre-split ], [ %i.b, %.lr.ph29.i ]
  %.027.i = phi ptr [ %i.h, %.lr.ph29.i.splitthread-pre-split ], [ %2, %.lr.ph29.i ] ; 7 uses
  %.02326.i = phi i32 [ %i.ai, %.lr.ph29.i.splitthread-pre-split ], [ 0, %.lr.ph29.i ]
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph29.i.split
  %i.l = add nsw i32 %i.i, -1                     ; 3 uses
  %i.m = mul i32 %i.l, 3
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = zext i32 %i.l to i64                     ; 3 uses
  %i.p = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %i.p, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.027.i, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18    ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.027.i, i64 %i.n ; 3 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !18
  %i.t = getelementptr i8, ptr %i.s, i64 1
  store i8 %i.r, ptr %i.t, align 1, !tbaa !18
  %i.u = getelementptr i8, ptr %i.s, i64 2
  store i8 %i.r, ptr %i.u, align 1, !tbaa !18
  %indvars.iv.next32.i.prol = add nsw i64 %i.o, -1
  %indvars.iv.next.i.prol = add nsw i64 %i.n, -3
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv31.i.unr = phi i64 [ %i.o, %.lr.ph.preheader.i ], [ %indvars.iv.next32.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.v = icmp eq i32 %i.l, 0
  br i1 %i.v, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.1, %.lr.ph.i ], [ %indvars.iv31.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.027.i, i64 %indvars.iv31.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18    ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.027.i, i64 %indvars.iv.i ; 3 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %i.x, ptr %i.z, align 1, !tbaa !18
  %i.aa = getelementptr i8, ptr %i.y, i64 2
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !18
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, -1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.027.i, i64 %indvars.iv.next32.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18  ; 3 uses
  %i.ad = getelementptr i8, ptr %.027.i, i64 %indvars.iv.i ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -3
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !18
  %i.af = getelementptr i8, ptr %i.ad, i64 -2
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !18
  %i.ag = getelementptr i8, ptr %i.ad, i64 -1
  store i8 %i.ac, ptr %i.ag, align 1, !tbaa !18
  %indvars.iv.next32.i.1 = add nsw i64 %indvars.iv31.i, -2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -6
  %.not.i.1 = icmp eq i64 %indvars.iv.next32.i, 0
  br i1 %.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph29.i.split
  %i.ah = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.j, %.lr.ph29.i.split ] ; 2 uses
  %i.ai = add nuw nsw i32 %.02326.i, 1            ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.lr.ph29.i.splitthread-pre-split, label %Gray8_RGB24.exit, !llvm.loop !54

Gray8_RGB24.exit:                                 ; preds = %._crit_edge.i, %.lr.ph29.i, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGBA128Fixed_RGBA128Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = shl i32 %i.d, 2                          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !21
  %wide.load28 = load <4 x i32>, ptr %i.m, align 4, !tbaa !21
  %i.n = sitofp <4 x i32> %wide.load to <4 x float>
  %i.o = sitofp <4 x i32> %wide.load28 to <4 x float>
  %i.p = fmul nnan <4 x float> %i.n, splat (float f0x33800000)
  %i.q = fmul nnan <4 x float> %i.o, splat (float f0x33800000)
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %i.p, ptr %i.l, align 4, !tbaa !23
  store <4 x float> %i.q, ptr %4, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul nnan float %i.u, f0x33800000
  store float %i.v, ptr %i.s, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !57

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGBA128Float_RGBA128Fixed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = shl i32 %i.d, 2                          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x float>, ptr %i.l, align 4, !tbaa !23
  %wide.load28 = load <4 x float>, ptr %i.m, align 4, !tbaa !23
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load28, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = fptosi <4 x float> %i.o to <4 x i32>
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %i.p, ptr %i.l, align 4, !tbaa !21
  store <4 x i32> %i.q, ptr %4, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float f0x4B800000, float 5.000000e-01)
  %i.v = fptosi float %i.u to i32
  store i32 %i.v, ptr %i.s, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !60

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB96Fixed_RGB96Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = mul i32 %i.d, 3                          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !21
  %wide.load28 = load <4 x i32>, ptr %i.m, align 4, !tbaa !21
  %i.n = sitofp <4 x i32> %wide.load to <4 x float>
  %i.o = sitofp <4 x i32> %wide.load28 to <4 x float>
  %i.p = fmul nnan <4 x float> %i.n, splat (float f0x33800000)
  %i.q = fmul nnan <4 x float> %i.o, splat (float f0x33800000)
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %i.p, ptr %i.l, align 4, !tbaa !23
  store <4 x float> %i.q, ptr %4, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul nnan float %i.u, f0x33800000
  store float %i.v, ptr %i.s, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !63

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB128Fixed_RGB96Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge29.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count34 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 5
  %i.g = and i64 %wide.trip.count, 3              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub nsw i64 %wide.trip.count, %i.i     ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %._crit_edge ] ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.k = mul i32 %3, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.n = shl nuw nsw i64 %index, 4
  %i.o = shl i64 %index, 4
  %i.p = shl i64 %index, 4
  %i.q = shl i64 %index, 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i32, ptr %i.r, align 4, !tbaa !21
  %i.z = load i32, ptr %i.t, align 4, !tbaa !21
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !21
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !21
  %i.ac = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 2
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 3
  %i.ag = mul nuw nsw i64 %index, 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !21
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !21
  %i.aq = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ay = load i32, ptr %i.au, align 4, !tbaa !21
  %i.az = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !21
  %i.bc = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 1
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 2
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 3
  %i.bg = sitofp <4 x i32> %i.bf to <4 x float>
  %i.bh = fmul nnan <4 x float> %i.bg, splat (float f0x33800000)
  %i.bi = shufflevector <4 x i32> %i.af, <4 x i32> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = sitofp <8 x i32> %i.bi to <8 x float>
  %i.bk = fmul nnan <8 x float> %i.bj, splat (float f0x33800000)
  %i.bl = shufflevector <4 x float> %i.bh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bk, <8 x float> %i.bl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ah, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !64

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  %.idx37 = mul nuw nsw i64 %indvars.iv, 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx37 ; 2 uses
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !21
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = fmul nnan <2 x float> %i.bq, splat (float f0x33800000)
  store <2 x float> %i.br, ptr %i.bo, align 4, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x33800000
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %i.bv, ptr %i.bw, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge29.split, label %.lr.ph, !llvm.loop !66

._crit_edge29.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB96Float_RGB96Fixed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = mul i32 %i.d, 3                          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x float>, ptr %i.l, align 4, !tbaa !23
  %wide.load28 = load <4 x float>, ptr %i.m, align 4, !tbaa !23
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load28, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = fptosi <4 x float> %i.o to <4 x i32>
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %i.p, ptr %i.l, align 4, !tbaa !21
  store <4 x i32> %i.q, ptr %4, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float f0x4B800000, float 5.000000e-01)
  %i.v = fptosi float %i.u to i32
  store i32 %i.v, ptr %i.s, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !69

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB96Float_RGB128Fixed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64                ; 5 uses
  %i.h = zext nneg i32 %i.b to i64
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %i.g, 2147483644               ; 2 uses
  %i.i = and i64 %i.g, 3
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %i.j = icmp samesign ugt i64 %indvars.iv32, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge.split, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv32 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next33, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next33 to i32
  %i.l = mul i32 %3, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = sub i64 %i.g, %index                     ; 4 uses
  %i.p = add nsw i64 %i.o, -1                     ; 2 uses
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = mul i64 %i.o, 12
  %i.s = mul i64 %i.o, 12
  %i.t = mul i64 %i.o, 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q ; 3 uses
  %i.v = getelementptr i8, ptr %i.n, i64 %i.r     ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = getelementptr i8, ptr %i.n, i64 %i.s     ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -36
  %i.z = getelementptr i8, ptr %i.n, i64 %i.t     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -48
  %i.ab = load float, ptr %i.u, align 4, !tbaa !23
  %i.ac = load float, ptr %i.w, align 4, !tbaa !23
  %i.ad = load float, ptr %i.y, align 4, !tbaa !23
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !23
  %i.af = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 1
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 3
  %i.aj = shl nuw nsw i64 %i.p, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.am = getelementptr i8, ptr %i.v, i64 -20
  %i.an = getelementptr i8, ptr %i.x, i64 -32
  %i.ao = getelementptr i8, ptr %i.z, i64 -44
  %i.ap = load float, ptr %i.al, align 4, !tbaa !23
  %i.aq = load float, ptr %i.am, align 4, !tbaa !23
  %i.ar = load float, ptr %i.an, align 4, !tbaa !23
  %i.as = load float, ptr %i.ao, align 4, !tbaa !23
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ay = getelementptr i8, ptr %i.v, i64 -16
  %i.az = getelementptr i8, ptr %i.x, i64 -28
  %i.ba = getelementptr i8, ptr %i.z, i64 -40
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !23
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !23
  %i.bd = load float, ptr %i.az, align 4, !tbaa !23
  %i.be = load float, ptr %i.ba, align 4, !tbaa !23
  %i.bf = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bd, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bc, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.bb, i64 3
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -48
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %reverse38 = fptosi <4 x float> %i.bk to <4 x i32>
  %i.bl = shufflevector <4 x float> %i.ai, <4 x float> %i.aw, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.bm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bl, <8 x float> splat (float f0x4B800000), <8 x float> splat (float 5.000000e-01))
  %i.bn = fptosi <8 x float> %i.bm to <8 x i32>
  %i.bo = shufflevector <4 x i32> %reverse38, <4 x i32> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i32> %i.bn, <8 x i32> %i.bo, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.bj, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv.next, 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %.idx36 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx36 ; 3 uses
  %i.bs = load <2 x float>, ptr %i.bq, align 4, !tbaa !23
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> splat (float f0x4B800000), <2 x float> splat (float 5.000000e-01))
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>
  store <2 x i32> %i.bu, ptr %i.br, align 4, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !23
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float f0x4B800000, float 5.000000e-01)
  %i.by = fptosi float %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !21
  %i.cb = icmp sgt i64 %indvars.iv, 1
  br i1 %i.cb, label %scalar.ph, label %..loopexit_crit_edge, !llvm.loop !72

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB96Float_RGB128Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64                ; 3 uses
  %i.h = zext nneg i32 %i.b to i64
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %indvars.iv.next.prol = add nsw i64 %i.g, -1    ; 3 uses
  %.idx.prol = mul nuw nsw i64 %indvars.iv.next.prol, 12
  %.idx36.prol = shl nuw nsw i64 %indvars.iv.next.prol, 4
  %i.i = icmp eq i32 %i.d, 1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %i.j = icmp samesign ugt i64 %indvars.iv32, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge.split, !llvm.loop !73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv32 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next33, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next33 to i32
  %i.l = mul i32 %3, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m ; 6 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.prol ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx36.prol ; 3 uses
end_hunk_0
begin_hunk_1_@BGR24_BGR32:bb.a
  %indvars.iv32 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next33, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.next33 to i32
  %i.n = mul i32 %3, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o ; 6 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.i ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j ; 4 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store i8 0, ptr %i.z, align 1, !tbaa !18
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.k, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.aa = mul nuw nsw i64 %indvars.iv.next, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.ad = shl nuw nsw i64 %indvars.iv.next, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ad ; 4 uses
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 0, ptr %i.al, align 1, !tbaa !18
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv.next.1, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.am ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = shl nuw nsw i64 %indvars.iv.next.1, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ap ; 4 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  %i.ay = icmp sgt i64 %indvars.iv, 2
  br i1 %i.ay, label %.lr.ph.new, label %..loopexit_crit_edge, !llvm.loop !82

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @BGR32_BGR24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 4 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge29.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count34 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod37 = trunc i32 %i.d to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 6 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.l = shl nuw nsw i64 %indvars.iv, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %i.o = mul nuw nsw i64 %indvars.iv, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 3 uses
  store i8 %i.n, ptr %i.p, align 1, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = shl nuw nsw i64 %indvars.iv.next, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = mul nuw nsw i64 %indvars.iv.next, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z ; 3 uses
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !83

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ah = shl nuw nsw i64 %indvars.iv.epil.init, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ah ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak ; 3 uses
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge29.split, label %.lr.ph, !llvm.loop !84

._crit_edge29.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @Gray32Fixed_Gray32Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !21
  %wide.load29 = load <4 x i32>, ptr %i.l, align 4, !tbaa !21
  %i.m = sitofp <4 x i32> %wide.load to <4 x float>
  %i.n = sitofp <4 x i32> %wide.load29 to <4 x float>
  %i.o = fmul nnan <4 x float> %i.m, splat (float f0x33800000)
  %i.p = fmul nnan <4 x float> %i.n, splat (float f0x33800000)
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> %i.o, ptr %i.k, align 4, !tbaa !23
  store <4 x float> %i.p, ptr %4, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  %i.t = sitofp i32 %i.s to float
  %i.u = fmul nnan float %i.t, f0x33800000
  store float %i.u, ptr %i.r, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !87

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @Gray32Float_Gray32Fixed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x float>, ptr %i.k, align 4, !tbaa !23
  %wide.load29 = load <4 x float>, ptr %i.l, align 4, !tbaa !23
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load29, <4 x float> splat (float f0x4B800000), <4 x float> splat (float 5.000000e-01))
  %i.o = fptosi <4 x float> %i.m to <4 x i32>
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %i.o, ptr %i.k, align 4, !tbaa !21
  store <4 x i32> %i.p, ptr %4, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !23
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float f0x4B800000, float 5.000000e-01)
  %i.u = fptosi float %i.t to i32
  store i32 %i.u, ptr %i.r, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !90

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @Gray16Fixed_Gray32Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64                ; 5 uses
  %i.h = zext nneg i32 %i.b to i64
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %i.g, 2147483640               ; 2 uses
  %i.i = and i64 %i.g, 7
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %i.j = icmp samesign ugt i64 %indvars.iv22, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge.split, !llvm.loop !91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv22 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next23, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1 ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next23 to i32
  %i.l = mul i32 %3, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = xor i64 %index, -1
  %i.p = add i64 %i.o, %i.g                       ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -6
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -14
  %wide.load = load <4 x i16>, ptr %i.r, align 2, !tbaa !27
  %wide.load26 = load <4 x i16>, ptr %i.s, align 2, !tbaa !27
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -28
  %i.w = sitofp <4 x i16> %wide.load to <4 x float>
  %reverse28 = fmul nnan <4 x float> %i.w, splat (float f0x39000000)
  %i.x = sitofp <4 x i16> %wide.load26 to <4 x float>
  %reverse29 = fmul nnan <4 x float> %i.x, splat (float f0x39000000)
  store <4 x float> %reverse28, ptr %i.u, align 4, !tbaa !23
  store <4 x float> %reverse29, ptr %i.v, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = sitofp i16 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x39000000
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  store float %i.ac, ptr %i.ad, align 4, !tbaa !23
  %i.ae = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ae, label %scalar.ph, label %..loopexit_crit_edge, !llvm.loop !93

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @Gray32Float_Gray16Fixed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x float>, ptr %i.k, align 4, !tbaa !23
  %wide.load29 = load <4 x float>, ptr %i.l, align 4, !tbaa !23
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 8.192000e+03), <4 x float> splat (float 5.000000e-01))
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load29, <4 x float> splat (float 8.192000e+03), <4 x float> splat (float 5.000000e-01))
  %i.o = fptosi <4 x float> %i.m to <4 x i16>
  %i.p = fptosi <4 x float> %i.n to <4 x i16>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <4 x i16> %i.o, ptr %i.q, align 2, !tbaa !27
  store <4 x i16> %i.p, ptr %i.r, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.u = load float, ptr %i.t, align 4, !tbaa !23
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 8.192000e+03, float 5.000000e-01)
  %i.w = fptosi float %i.v to i16
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  store i16 %i.w, ptr %i.x, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !96

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB48Fixed_RGB96Float(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = mul i32 %i.d, 3                          ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = zext nneg i32 %i.b to i64
end_hunk_1
