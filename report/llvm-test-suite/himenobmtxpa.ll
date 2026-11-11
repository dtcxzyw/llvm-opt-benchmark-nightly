Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/himenobmtxpa?download=true
inline.NumInlined: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@newMat:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.d, align 4, !tbaa !35
  %i.e = mul nsw i32 %2, %1
  %i.f = mul nsw i32 %i.e, %3
  %i.g = mul nsw i32 %i.f, %4
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #15 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !29
  %.not = icmp ne ptr %i.j, null
  %i.k = zext i1 %.not to i32
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mat_set_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 !guid !43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader25.lr.ph, label %._crit_edge30.split

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = add nsw i32 %i.b, -1                     ; 2 uses
  %i.h = mul nuw nsw i32 %i.g, %i.g
  %i.i = uitofp nneg i32 %i.h to float
  br i1 %i.f, label %.preheader25.lr.ph.split, label %._crit_edge30.split

.preheader25.lr.ph.split:                         ; preds = %.preheader25.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35   ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader25.lr.ph.split.split, label %._crit_edge30.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph.split
  %i.m = load ptr, ptr %0, align 8, !tbaa !29
  %i.n = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count41 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge28
  %indvars.iv38 = phi i64 [ 0, %.preheader25.lr.ph.split.split ], [ %indvars.iv.next39, %._crit_edge28 ] ; 4 uses
  %i.o = mul nuw nsw i64 %indvars.iv38, %indvars.iv38
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fdiv float %i.q, %i.i                    ; 2 uses
  %i.s = mul nuw nsw i64 %indvars.iv38, %i.n
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvars.iv33 = phi i64 [ 0, %.preheader25 ], [ %indvars.iv.next34, %._crit_edge ] ; 2 uses
  %i.t = add nuw nsw i64 %i.s, %indvars.iv33
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = mul i32 %i.k, %i.u
  %i.w = sext i32 %i.v to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.w ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store <4 x float> %broadcast.splat, ptr %i.x, align 4, !tbaa !31
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.r, ptr %gep, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %i.n
  br i1 %exitcond37.not, label %._crit_edge28, label %.preheader, !llvm.loop !0

._crit_edge28:                                    ; preds = %._crit_edge
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge30.split, label %.preheader25, !llvm.loop !1

._crit_edge30.split:                              ; preds = %._crit_edge28, %.preheader25.lr.ph, %.preheader25.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mat_set(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #4 !guid !46 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader23.lr.ph, label %._crit_edge28.split

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = mul nsw i32 %i.b, %1
  br i1 %i.f, label %.preheader23.lr.ph.split, label %._crit_edge28.split

.preheader23.lr.ph.split:                         ; preds = %.preheader23.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader23.lr.ph.split.split, label %._crit_edge28.split

.preheader23.lr.ph.split.split:                   ; preds = %.preheader23.lr.ph.split
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %wide.trip.count34 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph.split.split, %._crit_edge26
  %.02127 = phi i32 [ 0, %.preheader23.lr.ph.split.split ], [ %i.u, %._crit_edge26 ] ; 2 uses
  %i.l = add i32 %i.g, %.02127
  %i.m = mul i32 %i.e, %i.l
  br label %.preheader

.preheader:                                       ; preds = %.preheader23, %._crit_edge
  %indvars.iv31 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next32, %._crit_edge ] ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.o = add i32 %i.m, %i.n
  %i.p = mul i32 %i.i, %i.o
  %i.q = sext i32 %i.p to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.q ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store <4 x float> %broadcast.splat, ptr %i.r, align 4, !tbaa !31
  store <4 x float> %broadcast.splat, ptr %i.s, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %2, ptr %gep, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge26, label %.preheader, !llvm.loop !2

._crit_edge26:                                    ; preds = %._crit_edge
  %i.u = add nuw nsw i32 %.02127, 1               ; 2 uses
  %exitcond36.not = icmp eq i32 %i.u, %i.b
  br i1 %exitcond36.not, label %._crit_edge28.split, label %.preheader23, !llvm.loop !3

._crit_edge28.split:                              ; preds = %._crit_edge26, %.preheader23.lr.ph, %.preheader23.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @jacobi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 !guid !56 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.fr = freeze i32 %i.b                          ; 3 uses
  %i.c = add i32 %.fr, -1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %.fr528 = freeze i32 %i.e                       ; 5 uses
  %i.f = add i32 %.fr528, -1
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %.fr527 = freeze i32 %i.h                       ; 6 uses
  %i.i = add i32 %.fr527, -1
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %.preheader391.lr.ph, label %._crit_edge416

.preheader391.lr.ph:                              ; preds = %bb.a
  %i.k = icmp sgt i32 %.fr, 2
  %factor.op.mul394 = mul i32 %.fr527, %.fr528    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %8 = icmp slt i32 %.fr, 3
  %9 = icmp slt i32 %.fr528, 3
  %10 = icmp slt i32 %.fr527, 3
  %i.aa = icmp sgt i32 %.fr528, 2
  %or.cond = and i1 %i.k, %i.aa
  br i1 %or.cond, label %.preheader391.us.us.preheader, label %._crit_edge416

.preheader391.us.us.preheader:                    ; preds = %.preheader391.lr.ph
  %11 = icmp sgt i32 %.fr527, 2
  %i.ab = sext i32 %.fr527 to i64                 ; 3 uses
  %wide.trip.count493 = zext nneg i32 %.fr528 to i64
  br i1 %11, label %.preheader389.lr.ph.split.us.split.us.us.us, label %._crit_edge416

.preheader389.lr.ph.split.us.split.us.us.us:      ; preds = %.preheader391.us.us.preheader
  %i.ac = load ptr, ptr %1, align 8, !tbaa !29    ; 4 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !33  ; 3 uses
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !34  ; 4 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !35  ; 4 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !29    ; 19 uses
  %i.ah = shl nsw i32 %i.ad, 1
  %i.ai = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.aj = load i32, ptr %i.o, align 4, !tbaa !33  ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !34  ; 3 uses
  %i.al = load i32, ptr %i.q, align 4, !tbaa !35  ; 3 uses
  %i.am = shl nsw i32 %i.aj, 1
  %i.an = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.ao = load i32, ptr %i.r, align 4, !tbaa !33  ; 2 uses
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !34  ; 3 uses
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !35  ; 3 uses
  %i.ar = shl nsw i32 %i.ao, 1
  %i.as = load ptr, ptr %6, align 8, !tbaa !29
  %i.at = load i32, ptr %i.u, align 8, !tbaa !34
  %i.au = load i32, ptr %i.v, align 4, !tbaa !35
  %i.av = mul nsw i32 %i.ad, 3
  %i.aw = load ptr, ptr %5, align 8, !tbaa !29
  %i.ax = load i32, ptr %i.w, align 8, !tbaa !34
  %i.ay = load i32, ptr %i.x, align 4, !tbaa !35
  %i.az = load ptr, ptr %7, align 8, !tbaa !29
  %i.ba = load i32, ptr %i.y, align 8, !tbaa !34
  %i.bb = load i32, ptr %i.z, align 4, !tbaa !35
  %wide.trip.count485.us = zext i32 %i.c to i64   ; 2 uses
  %wide.trip.count480.us = zext i32 %i.f to i64   ; 2 uses
  %wide.trip.count475.us = zext i32 %i.i to i64   ; 5 uses
  %brmerge.us = or i1 %8, %9
  %brmerge451.us = or i1 %brmerge.us, %10
  %12 = add nsw i64 %wide.trip.count475.us, -1    ; 3 uses
  %min.iters.check = icmp ult i64 %12, 8
  %n.vec = and i64 %12, -8                        ; 3 uses
  %13 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %.preheader391.us.us.us

.preheader391.us.us.us:                           ; preds = %._crit_edge413.split.us.us, %.preheader389.lr.ph.split.us.split.us.us.us
  %.0379415.us.us.us = phi i32 [ %i.hz, %._crit_edge413.split.us.us ], [ 0, %.preheader389.lr.ph.split.us.split.us.us.us ]
  br label %.preheader389.us.us.us.us

.preheader389.us.us.us.us:                        ; preds = %._crit_edge397.split.us.us.us.us.us, %.preheader391.us.us.us
  %indvars.iv482 = phi i64 [ %indvars.iv.next483, %._crit_edge397.split.us.us.us.us.us ], [ 1, %.preheader391.us.us.us ] ; 9 uses
  %.1401.us.us.us.us = phi float [ %i.go, %._crit_edge397.split.us.us.us.us.us ], [ 0.000000e+00, %.preheader391.us.us.us ]
  %i.bc = trunc nuw nsw i64 %indvars.iv482 to i32 ; 8 uses
  %factor.op.mul.reass.us.us.us.us = mul i32 %factor.op.mul394, %i.bc
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next483 to i32
  %i.be = mul i32 %factor.op.mul394, %i.bd
  %i.bf = trunc i64 %indvars.iv482 to i32
  %i.bg = add i32 %i.bf, -1
  %i.bh = mul i32 %factor.op.mul394, %i.bg
  %i.bi = add i32 %i.ad, %i.bc
  %i.bj = mul i32 %i.bi, %i.ae
  %i.bk = add i32 %i.ah, %i.bc
  %i.bl = mul i32 %i.bk, %i.ae
  %i.bm = add i32 %i.aj, %i.bc
  %i.bn = mul i32 %i.bm, %i.ak
  %i.bo = add i32 %i.am, %i.bc
  %i.bp = mul i32 %i.bo, %i.ak
  %i.bq = add i32 %i.ao, %i.bc
  %i.br = mul i32 %i.bq, %i.ap
  %i.bs = add i32 %i.ar, %i.bc
  %i.bt = mul i32 %i.bs, %i.ap
  %i.bu = add i32 %i.av, %i.bc
  %i.bv = mul i32 %i.bu, %i.ae
  %i.bw = sext i32 %i.be to i64                   ; 3 uses
  %i.bx = sext i32 %factor.op.mul.reass.us.us.us.us to i64 ; 3 uses
  %i.by = sext i32 %i.bh to i64                   ; 3 uses
  %i.bz = trunc i64 %indvars.iv482 to i32
  %i.ca = mul i32 %i.ae, %i.bz
  %i.cb = trunc i64 %indvars.iv482 to i32
  %i.cc = mul i32 %i.ak, %i.cb
  %i.cd = trunc i64 %indvars.iv482 to i32
  %i.ce = mul i32 %i.ap, %i.cd
  %i.cf = trunc i64 %indvars.iv482 to i32
  %i.cg = mul i32 %i.at, %i.cf
  %i.ch = trunc i64 %indvars.iv482 to i32
  %i.ci = mul i32 %i.ax, %i.ch
  %i.cj = trunc i64 %indvars.iv482 to i32
  %i.ck = mul i32 %i.ba, %i.cj
  %invariant.gep569.a = getelementptr [4 x i8], ptr %i.ag, i64 %i.bw
  %invariant.gep571.a = getelementptr [4 x i8], ptr %i.ag, i64 %i.bw
  %invariant.gep573.a = getelementptr [4 x i8], ptr %i.ag, i64 %i.by
  %invariant.gep575.a = getelementptr [4 x i8], ptr %i.ag, i64 %i.by
  br label %.preheader387.us.us.us.us.us

.preheader387.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us, %.preheader389.us.us.us.us
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %._crit_edge.us.us.us.us.us ], [ 1, %.preheader389.us.us.us.us ] ; 4 uses
  %.2396.us.us.us.us.us = phi float [ %i.go, %._crit_edge.us.us.us.us.us ], [ %.1401.us.us.us.us, %.preheader389.us.us.us.us ]
  %i.cl = trunc nuw nsw i64 %indvars.iv477 to i32 ; 13 uses
  %i.cm = add i32 %i.ca, %i.cl
  %i.cn = mul i32 %i.cm, %i.af
  %i.co = mul nuw nsw i64 %indvars.iv477, %i.ab   ; 3 uses
  %i.cp = add nsw i64 %i.co, %i.bw                ; 3 uses
  %i.cq = add i32 %i.bj, %i.cl
  %i.cr = mul i32 %i.cq, %i.af
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 3 uses
  %i.cs = mul nuw nsw i64 %indvars.iv.next478, %i.ab ; 3 uses
  %i.ct = add nsw i64 %i.cs, %i.bx                ; 3 uses
  %i.cu = add i32 %i.bl, %i.cl
  %i.cv = mul i32 %i.cu, %i.af
  %i.cw = add nsw i64 %i.co, %i.bx                ; 3 uses
  %i.cx = add i32 %i.cc, %i.cl
  %i.cy = mul i32 %i.cx, %i.al
  %i.cz = add nsw i64 %indvars.iv477, -1
  %i.da = mul nuw nsw i64 %i.cz, %i.ab            ; 3 uses
  %i.db = add i32 %i.bn, %i.cl
  %i.dc = mul i32 %i.db, %i.al
  %i.dd = add nsw i64 %i.da, %i.bx                ; 3 uses
  %i.de = add i32 %i.bp, %i.cl
  %i.df = mul i32 %i.de, %i.al
  %i.dg = add nsw i64 %i.co, %i.by                ; 3 uses
  %i.dh = add i32 %i.ce, %i.cl
  %i.di = mul i32 %i.dh, %i.aq
  %i.dj = add i32 %i.br, %i.cl
  %i.dk = mul i32 %i.dj, %i.aq
  %i.dl = add i32 %i.bt, %i.cl
  %i.dm = mul i32 %i.dl, %i.aq
  %i.dn = add i32 %i.cg, %i.cl
  %i.do = mul i32 %i.dn, %i.au
  %i.dp = add i32 %i.bv, %i.cl
  %i.dq = mul i32 %i.dp, %i.af
  %i.dr = add i32 %i.ci, %i.cl
  %i.ds = mul i32 %i.dr, %i.ay
  %i.dt = add i32 %i.ck, %i.cl
  %i.du = mul i32 %i.dt, %i.bb
  %i.dv = sext i32 %i.cn to i64
  %i.dw = sext i32 %i.cr to i64
  %i.dx = sext i32 %i.cv to i64
  %i.dy = sext i32 %i.cy to i64
  %i.dz = sext i32 %i.dc to i64
  %i.ea = sext i32 %i.df to i64
  %i.eb = sext i32 %i.di to i64
  %i.ec = sext i32 %i.dk to i64
  %i.ed = sext i32 %i.dm to i64
  %i.ee = sext i32 %i.do to i64
  %i.ef = sext i32 %i.dq to i64
  %i.eg = sext i32 %i.ds to i64
  %i.eh = sext i32 %i.du to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ac, i64 %i.dv
  %invariant.gep515 = getelementptr [4 x i8], ptr %i.ag, i64 %i.cp
  %invariant.gep517 = getelementptr [4 x i8], ptr %i.ac, i64 %i.dw
  %invariant.gep519 = getelementptr [4 x i8], ptr %i.ag, i64 %i.ct
  %invariant.gep521 = getelementptr [4 x i8], ptr %i.ac, i64 %i.dx
  %invariant.gep523 = getelementptr [4 x i8], ptr %i.ag, i64 %i.cw
  %invariant.gep525 = getelementptr [4 x i8], ptr %i.ai, i64 %i.dy
  %gep570.a = getelementptr [4 x i8], ptr %invariant.gep569.a, i64 %i.cs
  %gep572.a = getelementptr [4 x i8], ptr %invariant.gep571.a, i64 %i.da
  %gep574.a = getelementptr [4 x i8], ptr %invariant.gep573.a, i64 %i.cs
  %gep576.a = getelementptr [4 x i8], ptr %invariant.gep575.a, i64 %i.da
  %invariant.gep527 = getelementptr [4 x i8], ptr %i.ai, i64 %i.dz
  %invariant.gep529 = getelementptr [4 x i8], ptr %i.ag, i64 %i.ct
  %invariant.gep531 = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %invariant.gep533 = getelementptr [4 x i8], ptr %i.ag, i64 %i.ct
  %invariant.gep535 = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %invariant.gep537 = getelementptr [4 x i8], ptr %i.ai, i64 %i.ea
  %invariant.gep539 = getelementptr [4 x i8], ptr %i.ag, i64 %i.cp
  %invariant.gep541 = getelementptr [4 x i8], ptr %i.ag, i64 %i.dg
  %invariant.gep543 = getelementptr [4 x i8], ptr %i.ag, i64 %i.cp
  %invariant.gep545 = getelementptr [4 x i8], ptr %i.ag, i64 %i.dg
  %invariant.gep547 = getelementptr [4 x i8], ptr %i.an, i64 %i.eb
  %invariant.gep549 = getelementptr [4 x i8], ptr %i.ag, i64 %i.dg
  %invariant.gep551 = getelementptr [4 x i8], ptr %i.an, i64 %i.ec
  %invariant.gep553 = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %invariant.gep555 = getelementptr [4 x i8], ptr %i.an, i64 %i.ed
  %invariant.gep557 = getelementptr [4 x i8], ptr %i.ag, i64 %i.cw
  %invariant.gep559 = getelementptr [4 x i8], ptr %i.as, i64 %i.ee
  %invariant.gep561 = getelementptr [4 x i8], ptr %i.ac, i64 %i.ef
  %invariant.gep563 = getelementptr [4 x i8], ptr %i.ag, i64 %i.cw
  %invariant.gep565 = getelementptr [4 x i8], ptr %i.aw, i64 %i.eg
  %invariant.gep567 = getelementptr [4 x i8], ptr %i.az, i64 %i.eh
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader387.us.us.us.us.us
  %indvars.iv472 = phi i64 [ %indvars.iv.next473, %bb.b ], [ 1, %.preheader387.us.us.us.us.us ] ; 24 uses
  %.3393.us.us.us.us.us = phi float [ %i.go, %bb.b ], [ %.2396.us.us.us.us.us, %.preheader387.us.us.us.us.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv472
  %i.ei = load float, ptr %gep, align 4, !tbaa !31
  %gep516 = getelementptr [4 x i8], ptr %invariant.gep515, i64 %indvars.iv472
  %i.ej = load float, ptr %gep516, align 4, !tbaa !31
  %gep518 = getelementptr [4 x i8], ptr %invariant.gep517, i64 %indvars.iv472
  %i.ek = load float, ptr %gep518, align 4, !tbaa !31
  %gep520 = getelementptr [4 x i8], ptr %invariant.gep519, i64 %indvars.iv472
  %i.el = load float, ptr %gep520, align 4, !tbaa !31
  %i.em = fmul float %i.ek, %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %i.em)
  %gep522 = getelementptr [4 x i8], ptr %invariant.gep521, i64 %indvars.iv472
  %i.eo = load float, ptr %gep522, align 4, !tbaa !31
  %indvars.iv.next473 = add nuw nsw i64 %indvars.iv472, 1 ; 7 uses
  %gep524 = getelementptr [4 x i8], ptr %invariant.gep523, i64 %indvars.iv.next473
  %i.ep = load float, ptr %gep524, align 4, !tbaa !31
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ep, float %i.en)
  %gep526 = getelementptr [4 x i8], ptr %invariant.gep525, i64 %indvars.iv472
  %i.er = load float, ptr %gep526, align 4, !tbaa !31
  %i.es = getelementptr [4 x i8], ptr %gep570.a, i64 %indvars.iv472
  %i.et = load float, ptr %i.es, align 4, !tbaa !31
  %i.eu = getelementptr [4 x i8], ptr %gep572.a, i64 %indvars.iv472
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !31
  %i.ew = fsub float %i.et, %i.ev
  %i.ex = getelementptr [4 x i8], ptr %gep574.a, i64 %indvars.iv472
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !31
  %i.ez = fsub float %i.ew, %i.ey
  %i.fa = getelementptr [4 x i8], ptr %gep576.a, i64 %indvars.iv472
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !31
  %i.fc = fadd float %i.ez, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.er, float %i.fc, float %i.eq)
  %gep528 = getelementptr [4 x i8], ptr %invariant.gep527, i64 %indvars.iv472
  %i.fe = load float, ptr %gep528, align 4, !tbaa !31
  %gep530 = getelementptr [4 x i8], ptr %invariant.gep529, i64 %indvars.iv.next473
  %i.ff = load float, ptr %gep530, align 4, !tbaa !31
  %gep532 = getelementptr [4 x i8], ptr %invariant.gep531, i64 %indvars.iv.next473
  %i.fg = load float, ptr %gep532, align 4, !tbaa !31
  %i.fh = fsub float %i.ff, %i.fg
  %i.fi = add nsw i64 %indvars.iv472, -1          ; 5 uses
  %gep534 = getelementptr [4 x i8], ptr %invariant.gep533, i64 %i.fi
  %i.fj = load float, ptr %gep534, align 4, !tbaa !31
  %i.fk = fsub float %i.fh, %i.fj
  %gep536 = getelementptr [4 x i8], ptr %invariant.gep535, i64 %i.fi
  %i.fl = load float, ptr %gep536, align 4, !tbaa !31
  %i.fm = fadd float %i.fk, %i.fl
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fm, float %i.fd)
  %gep538 = getelementptr [4 x i8], ptr %invariant.gep537, i64 %indvars.iv472
  %i.fo = load float, ptr %gep538, align 4, !tbaa !31
  %gep540 = getelementptr [4 x i8], ptr %invariant.gep539, i64 %indvars.iv.next473
  %i.fp = load float, ptr %gep540, align 4, !tbaa !31
  %gep542 = getelementptr [4 x i8], ptr %invariant.gep541, i64 %indvars.iv.next473
  %i.fq = load float, ptr %gep542, align 4, !tbaa !31
  %i.fr = fsub float %i.fp, %i.fq
  %gep544 = getelementptr [4 x i8], ptr %invariant.gep543, i64 %i.fi
  %i.fs = load float, ptr %gep544, align 4, !tbaa !31
  %i.ft = fsub float %i.fr, %i.fs
  %gep546 = getelementptr [4 x i8], ptr %invariant.gep545, i64 %i.fi
  %i.fu = load float, ptr %gep546, align 4, !tbaa !31
  %i.fv = fadd float %i.ft, %i.fu
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fv, float %i.fn)
  %gep548 = getelementptr [4 x i8], ptr %invariant.gep547, i64 %indvars.iv472
  %i.fx = load float, ptr %gep548, align 4, !tbaa !31
  %gep550 = getelementptr [4 x i8], ptr %invariant.gep549, i64 %indvars.iv472
  %i.fy = load float, ptr %gep550, align 4, !tbaa !31
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fy, float %i.fw)
  %gep552 = getelementptr [4 x i8], ptr %invariant.gep551, i64 %indvars.iv472
  %i.ga = load float, ptr %gep552, align 4, !tbaa !31
  %gep554 = getelementptr [4 x i8], ptr %invariant.gep553, i64 %indvars.iv472
  %i.gb = load float, ptr %gep554, align 4, !tbaa !31
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gb, float %i.fz)
  %gep556 = getelementptr [4 x i8], ptr %invariant.gep555, i64 %indvars.iv472
  %i.gd = load float, ptr %gep556, align 4, !tbaa !31
  %gep558 = getelementptr [4 x i8], ptr %invariant.gep557, i64 %i.fi
  %i.ge = load float, ptr %gep558, align 4, !tbaa !31
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.ge, float %i.gc)
  %gep560 = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv472
  %i.gg = load float, ptr %gep560, align 4, !tbaa !31
  %i.gh = fadd float %i.gf, %i.gg
  %gep562 = getelementptr [4 x i8], ptr %invariant.gep561, i64 %indvars.iv472
  %i.gi = load float, ptr %gep562, align 4, !tbaa !31
  %gep564 = getelementptr [4 x i8], ptr %invariant.gep563, i64 %indvars.iv472
  %i.gj = load float, ptr %gep564, align 4, !tbaa !31 ; 2 uses
  %i.gk = fneg float %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gi, float %i.gk)
  %gep566 = getelementptr [4 x i8], ptr %invariant.gep565, i64 %indvars.iv472
  %i.gm = load float, ptr %gep566, align 4, !tbaa !31
  %i.gn = fmul float %i.gl, %i.gm                 ; 3 uses
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gn, float %.3393.us.us.us.us.us) ; 4 uses
  %i.gp = load float, ptr @omega, align 4, !tbaa !31
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gn, float %i.gj)
  %gep568 = getelementptr [4 x i8], ptr %invariant.gep567, i64 %indvars.iv472
  store float %i.gq, ptr %gep568, align 4, !tbaa !31
  %exitcond476.not = icmp eq i64 %indvars.iv.next473, %wide.trip.count475.us
  br i1 %exitcond476.not, label %._crit_edge.us.us.us.us.us, label %bb.b, !llvm.loop !47

._crit_edge.us.us.us.us.us:                       ; preds = %bb.b
  %exitcond481.not = icmp eq i64 %indvars.iv.next478, %wide.trip.count480.us
  br i1 %exitcond481.not, label %._crit_edge397.split.us.us.us.us.us, label %.preheader387.us.us.us.us.us, !llvm.loop !48

._crit_edge397.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %exitcond486.not = icmp eq i64 %indvars.iv.next483, %wide.trip.count485.us
  br i1 %exitcond486.not, label %..preheader390_crit_edge.split.us.us.us.loopexit.us, label %.preheader389.us.us.us.us, !llvm.loop !49

.preheader388.lr.ph.split.split.us.us:            ; preds = %..preheader390_crit_edge.split.us.us.us.loopexit.us
  %i.gr = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = load i32, ptr %i.y, align 8, !tbaa !34
  %i.gu = load i32, ptr %i.z, align 4, !tbaa !35
  %i.gv = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.gw = ptrtoaddr ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gs
  %invariant.op = add i64 %i.gx, -1
  br label %.preheader388.us.us

.preheader388.us.us:                              ; preds = %._crit_edge410.us.us, %.preheader388.lr.ph.split.split.us.us
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %._crit_edge410.us.us ], [ 1, %.preheader388.lr.ph.split.split.us.us ] ; 3 uses
  %i.gy = mul nuw nsw i64 %indvars.iv500, %wide.trip.count493
  %i.gz = trunc i64 %indvars.iv500 to i32
  %i.ha = mul i32 %i.gt, %i.gz
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader388.us.us
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %._crit_edge.us.us ], [ 1, %.preheader388.us.us ] ; 3 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv495 to i32
  %i.hc = add i32 %i.ha, %i.hb
  %i.hd = mul i32 %i.hc, %i.gu
  %i.he = add nuw nsw i64 %indvars.iv495, %i.gy
  %i.hf = trunc nuw i64 %i.he to i32
  %i.hg = mul i32 %.fr527, %i.hf
  %i.hh = sext i32 %i.hd to i64                   ; 2 uses
  %i.hi = sext i32 %i.hg to i64                   ; 2 uses
  %invariant.gep577 = getelementptr [4 x i8], ptr %i.gr, i64 %i.hh ; 6 uses
  %invariant.gep579 = getelementptr [4 x i8], ptr %i.gv, i64 %i.hi ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.hj = sub nsw i64 %i.hi, %i.hh
  %i.hk = shl nsw i64 %i.hj, 2
  %.reass = add i64 %i.hk, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.hl = or disjoint i64 %index, 1               ; 2 uses
  %i.hm = getelementptr [4 x i8], ptr %invariant.gep577, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  %wide.load = load <4 x float>, ptr %i.hm, align 4, !tbaa !31
  %wide.load583 = load <4 x float>, ptr %i.hn, align 4, !tbaa !31
  %i.ho = getelementptr [4 x i8], ptr %invariant.gep579, i64 %i.hl ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 16
  store <4 x float> %wide.load, ptr %i.ho, align 4, !tbaa !31
  store <4 x float> %wide.load583, ptr %i.hp, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv490.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.us.us ], [ %13, %middle.block ] ; 4 uses
  %i.hr = sub nsw i64 %wide.trip.count475.us, %indvars.iv490.ph
  %xtraiter = and i64 %i.hr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv490.prol = phi i64 [ %indvars.iv.next491.prol, %scalar.ph.prol ], [ %indvars.iv490.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep578.prol = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv490.prol
  %i.hs = load float, ptr %gep578.prol, align 4, !tbaa !31
  %gep580.prol = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv490.prol
  store float %i.hs, ptr %gep580.prol, align 4, !tbaa !31
  %indvars.iv.next491.prol = add nuw nsw i64 %indvars.iv490.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !51

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv490.unr = phi i64 [ %indvars.iv490.ph, %scalar.ph.preheader ], [ %indvars.iv.next491.prol, %scalar.ph.prol ]
  %i.ht = sub nsw i64 %indvars.iv490.ph, %wide.trip.count475.us
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv490 = phi i64 [ %indvars.iv.next491.3, %scalar.ph ], [ %indvars.iv490.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep578 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv490
  %i.hv = load float, ptr %gep578, align 4, !tbaa !31
  %gep580 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv490
  store float %i.hv, ptr %gep580, align 4, !tbaa !31
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %gep578.1 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv.next491
  %i.hw = load float, ptr %gep578.1, align 4, !tbaa !31
  %gep580.1 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next491
  store float %i.hw, ptr %gep580.1, align 4, !tbaa !31
  %indvars.iv.next491.1 = add nuw nsw i64 %indvars.iv490, 2 ; 2 uses
  %gep578.2 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv.next491.1
  %i.hx = load float, ptr %gep578.2, align 4, !tbaa !31
  %gep580.2 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next491.1
  store float %i.hx, ptr %gep580.2, align 4, !tbaa !31
  %indvars.iv.next491.2 = add nuw nsw i64 %indvars.iv490, 3 ; 2 uses
  %gep578.3 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv.next491.2
  %i.hy = load float, ptr %gep578.3, align 4, !tbaa !31
  %gep580.3 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next491.2
  store float %i.hy, ptr %gep580.3, align 4, !tbaa !31
  %indvars.iv.next491.3 = add nuw nsw i64 %indvars.iv490, 4 ; 2 uses
  %exitcond494.not.3 = icmp eq i64 %indvars.iv.next491.3, %wide.trip.count475.us
  br i1 %exitcond494.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !52

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %exitcond499.not = icmp eq i64 %indvars.iv.next496, %wide.trip.count480.us
  br i1 %exitcond499.not, label %._crit_edge410.us.us, label %.preheader.us.us, !llvm.loop !53

._crit_edge410.us.us:                             ; preds = %._crit_edge.us.us
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, %wide.trip.count485.us
  br i1 %exitcond504.not, label %._crit_edge413.split.us.us, label %.preheader388.us.us, !llvm.loop !54

._crit_edge413.split.us.us:                       ; preds = %._crit_edge410.us.us, %..preheader390_crit_edge.split.us.us.us.loopexit.us
  %i.hz = add nuw nsw i32 %.0379415.us.us.us, 1   ; 2 uses
  %exitcond505.not = icmp eq i32 %i.hz, %0
  br i1 %exitcond505.not, label %._crit_edge416, label %.preheader391.us.us.us, !llvm.loop !55

..preheader390_crit_edge.split.us.us.us.loopexit.us: ; preds = %._crit_edge397.split.us.us.us.us.us
  br i1 %brmerge451.us, label %._crit_edge413.split.us.us, label %.preheader388.lr.ph.split.split.us.us

._crit_edge416:                                   ; preds = %._crit_edge413.split.us.us, %.preheader391.us.us.preheader, %.preheader391.lr.ph, %bb.a
  %.0.lcssa = phi float [ undef, %bb.a ], [ 0.000000e+00, %.preheader391.us.us.preheader ], [ 0.000000e+00, %.preheader391.lr.ph ], [ %i.go, %._crit_edge413.split.us.us ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @clearMat(ptr nofree noundef captures(none) initializes((8, 24)) %0) local_unnamed_addr #6 !guid !58 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @fflop(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !guid !59 {
bb.a:
  %i.a = add nsw i32 %2, -2
  %i.b = sitofp i32 %i.a to double
  %i.c = add nsw i32 %1, -2
  %i.d = sitofp i32 %i.c to double
  %i.e = fmul nnan double %i.d, %i.b
  %i.f = add nsw i32 %0, -2
  %i.g = sitofp i32 %i.f to double
  %i.h = fmul double %i.e, %i.g
  %i.i = fmul double %i.h, 3.400000e+01
  ret double %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @mflops(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 !guid !60 {
bb.a:
  %i.a = fdiv double %2, %1
  %i.b = fmul double %i.a, f0x3EB0C6F7A0B5ED8D
  %i.c = sitofp i32 %0 to double
  %i.d = fmul double %i.b, %i.c
  ret double %i.d
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @set_param(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 !guid !61 {
sub_0:
  %i.a = load i8, ptr %1, align 1
  switch i8 %i.a, label %.tail68.thread [
    i8 88, label %sub_1
    i8 120, label %sub_136
    i8 83, label %.tail39
    i8 115, label %.tail43
    i8 77, label %.tail47
    i8 109, label %.tail51
    i8 76, label %.tail55
    i8 108, label %.tail59
  ]

sub_1:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %.not74 = icmp eq i8 %i.c, 83
  br i1 %.not74, label %.tail, label %sub_165

.tail:                                            ; preds = %sub_1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.a, label %sub_165

sub_136:                                          ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not76 = icmp eq i8 %i.h, 115
  br i1 %.not76, label %.tail34, label %sub_170

.tail34:                                          ; preds = %sub_136
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.a, label %sub_170

.tail39:                                          ; preds = %sub_0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.a, label %.tail68.thread

.tail43:                                          ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.a, label %.tail68.thread

.tail47:                                          ; preds = %sub_0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.a, label %.tail68.thread

.tail51:                                          ; preds = %sub_0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.a, label %.tail68.thread

.tail55:                                          ; preds = %sub_0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.a, label %.tail68.thread

.tail59:                                          ; preds = %sub_0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.a, label %.tail68.thread

sub_165:                                          ; preds = %.tail, %sub_1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %.not84 = icmp eq i8 %i.ae, 76
  br i1 %.not84, label %.tail63, label %.tail68.thread

.tail63:                                          ; preds = %sub_165
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.a, label %.tail68.thread

sub_170:                                          ; preds = %sub_136, %.tail34
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %.not86 = icmp eq i8 %i.aj, 108
  br i1 %.not86, label %.tail68, label %.tail68.thread

.tail68:                                          ; preds = %sub_170
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.a, label %.tail68.thread

.tail68.thread:                                   ; preds = %.tail63, %sub_165, %sub_0, %.tail59, %.tail55, %.tail51, %.tail39, %.tail43, %.tail47, %sub_170, %.tail68
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 6) #17
  unreachable

bb.a:                                             ; preds = %.tail63, %.tail68, %.tail55, %.tail59, %.tail47, %.tail51, %.tail39, %.tail43, %.tail, %.tail34
  %.sink211 = phi i32 [ 256, %.tail55 ], [ 128, %.tail47 ], [ 64, %.tail39 ], [ 32, %.tail ], [ 32, %.tail34 ], [ 64, %.tail43 ], [ 128, %.tail51 ], [ 256, %.tail59 ], [ 512, %.tail68 ], [ 512, %.tail63 ]
  %i.an = phi <2 x i32> [ <i32 256, i32 512>, %.tail55 ], [ <i32 128, i32 256>, %.tail47 ], [ <i32 64, i32 128>, %.tail39 ], [ <i32 32, i32 64>, %.tail ], [ <i32 32, i32 64>, %.tail34 ], [ <i32 64, i32 128>, %.tail43 ], [ <i32 128, i32 256>, %.tail51 ], [ <i32 256, i32 512>, %.tail59 ], [ <i32 512, i32 1024>, %.tail68 ], [ <i32 512, i32 1024>, %.tail63 ]
  store i32 %.sink211, ptr %0, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.an, ptr %i.ao, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree nounwind uwtable
define dso_local double @second() local_unnamed_addr #8 !guid !62 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #16 ; 0 uses
  %i.b = load i32, ptr @second.base_sec, align 4, !tbaa !11 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @second.base_usec, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %i.f = load i64, ptr %0, align 8, !tbaa !65     ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr @second.base_sec, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr @second.base_usec, align 4, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.b to i64
  %i.l = sub nsw i64 %i.f, %i.k
  %i.m = sitofp i64 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
