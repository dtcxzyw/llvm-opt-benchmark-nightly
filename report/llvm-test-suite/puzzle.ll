Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/puzzle?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@randInt:bb.a
  %i.d = load i64, ptr @next, align 8, !tbaa !10
  %i.e = mul i64 %i.d, 1103515245
  %i.f = add i64 %i.e, 12345                      ; 2 uses
  store i64 %i.f, ptr @next, align 8, !tbaa !10
  %i.g = lshr i64 %i.f, 16
  %i.h = trunc i64 %i.g to i32
  %i.i = urem i32 %i.h, 32767
  %i.j = add nuw nsw i32 %i.i, 1
  %i.k = uitofp nneg i32 %i.j to double
  %i.l = fmul nnan double %i.k, f0x3F00000000000000
  %i.m = fmul double %i.l, %i.c
  %i.n = fptosi double %i.m to i32                ; 2 uses
  %i.o = icmp eq i32 %i.b, %i.n
  %i.p = add nsw i32 %0, %i.n
  %i.q = sext i1 %i.o to i32
  %i.r = add nsw i32 %i.p, %i.q
  ret i32 %i.r
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @shuffle(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %.not16 = icmp eq i32 %i.a, 0
  br i1 %.not16, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %next.promoted = load i64, ptr @next, align 8
  %i.b = sext i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi i64 [ %i.x, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.c = phi i64 [ %i.g, %.lr.ph ], [ %next.promoted, %.lr.ph.preheader ]
  %i.d = add i64 %.017, 1                         ; 2 uses
  %i.e = uitofp i64 %i.d to double
  %i.f = mul i64 %i.c, 1103515245
  %i.g = add i64 %i.f, 12345                      ; 3 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = trunc i64 %i.h to i32
  %i.j = urem i32 %i.i, 32767
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = fmul nnan double %i.l, f0x3F00000000000000
  %i.n = fmul double %i.m, %i.e
  %i.o = fptosi double %i.n to i32
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = icmp eq i64 %i.d, %i.p
  %i.r = sext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  store i32 %i.w, ptr %i.s, align 4, !tbaa !8
  store i32 %i.t, ptr %i.v, align 4, !tbaa !8
  %i.x = add i64 %.017, -1                        ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.g, ptr @next, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @createRandomArray(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %0, 1                            ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10 ; 6 uses
  %.not13 = icmp slt i32 %0, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.a to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %vec.ind, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> %step.add, ptr %i.f, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.i, ptr %i.h, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.j = sitofp i32 %0 to double
  %i.k = load i64, ptr @next, align 8, !tbaa !10
  %i.l = mul i64 %i.k, 1103515245
  %i.m = add i64 %i.l, 12345                      ; 3 uses
  store i64 %i.m, ptr @next, align 8, !tbaa !10
  %i.n = lshr i64 %i.m, 16
  %i.o = trunc i64 %i.n to i32
  %i.p = urem i32 %i.o, 32767
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = fmul nnan double %i.r, f0x3F00000000000000
  %i.t = fmul double %i.s, %i.j
  %i.u = fptosi double %i.t to i32                ; 2 uses
  %i.v = icmp eq i32 %0, %i.u
  %i.w = add nsw i32 %i.u, 1
  %i.x = sext i1 %i.v to i32
  %i.y = add nsw i32 %i.w, %i.x
  store i32 %i.y, ptr %i.d, align 4, !tbaa !8
  %.not16.i = icmp eq i32 %0, 0
  br i1 %.not16.i, label %shuffle.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.z = sext i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i64 [ %i.av, %.lr.ph.i ], [ %i.z, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.m, %.lr.ph.preheader.i ]
  %i.ab = add i64 %.017.i, 1                      ; 2 uses
  %i.ac = uitofp i64 %i.ab to double
  %i.ad = mul i64 %i.aa, 1103515245
  %i.ae = add i64 %i.ad, 12345                    ; 3 uses
  %i.af = lshr i64 %i.ae, 16
  %i.ag = trunc i64 %i.af to i32
  %i.ah = urem i32 %i.ag, 32767
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fmul nnan double %i.aj, f0x3F00000000000000
  %i.al = fmul double %i.ak, %i.ac
  %i.am = fptosi double %i.al to i32
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = icmp eq i64 %i.ab, %i.an
  %i.ap = sext i1 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.017.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = getelementptr [4 x i8], ptr %i.d, i64 %i.an
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !8
  %i.av = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i64 %i.ae, ptr @next, align 8, !tbaa !10
  br label %shuffle.exit

shuffle.exit:                                     ; preds = %._crit_edge, %._crit_edge.i
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @findDuplicate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.phi14, splat (i32 4)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !8
  %wide.load15 = load <4 x i32>, ptr %i.c, align 4, !tbaa !8
  %i.d = xor <4 x i32> %vec.phi, %wide.load
  %i.e = xor <4 x i32> %vec.phi.a, %wide.load15
  %i.f = xor <4 x i32> %i.d, %vec.phi14           ; 2 uses
  %i.g = xor <4 x i32> %i.e, %step.add            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.phi14, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.012.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 2 uses
  %.012 = phi i32 [ %i.n, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = xor i32 %.012, %i.k
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.i, %middle.block ], [ %i.n, %.lr.ph ]
  %i.o = xor i32 %.lcssa, %1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
bb.a:
  store i64 1, ptr @next, align 8, !tbaa !10
  br label %vector.ph24

vector.ph24:                                      ; preds = %bb.a, %bb.b
  %.0715 = phi i32 [ 0, %bb.a ], [ %i.bn, %bb.b ]
  %i.a = tail call noalias dereferenceable_or_null(2000004) ptr @malloc(i64 noundef 2000004) #10 ; 12 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph24
  %index26 = phi i64 [ 0, %vector.ph24 ], [ %index.next29.3, %vector.body25 ] ; 5 uses
  %vec.ind27 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph24 ], [ %vec.ind.next30.3, %vector.body25 ] ; 9 uses
  %step.add28 = add <4 x i32> %vec.ind27, splat (i32 4)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> %vec.ind27, ptr %i.b, align 4, !tbaa !8
  store <4 x i32> %step.add28, ptr %i.c, align 4, !tbaa !8
  %vec.ind.next30 = add <4 x i32> %vec.ind27, splat (i32 8)
  %step.add28.1 = add <4 x i32> %vec.ind27, splat (i32 12)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> %vec.ind.next30, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> %step.add28.1, ptr %i.f, align 4, !tbaa !8
  %vec.ind.next30.1 = add <4 x i32> %vec.ind27, splat (i32 16)
  %step.add28.2 = add <4 x i32> %vec.ind27, splat (i32 20)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store <4 x i32> %vec.ind.next30.1, ptr %i.h, align 4, !tbaa !8
  store <4 x i32> %step.add28.2, ptr %i.i, align 4, !tbaa !8
  %vec.ind.next30.2 = add <4 x i32> %vec.ind27, splat (i32 24)
  %step.add28.3 = add <4 x i32> %vec.ind27, splat (i32 28)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store <4 x i32> %vec.ind.next30.2, ptr %i.k, align 4, !tbaa !8
  store <4 x i32> %step.add28.3, ptr %i.l, align 4, !tbaa !8
  %index.next29.3 = add nuw nsw i64 %index26, 32  ; 2 uses
  %vec.ind.next30.3 = add <4 x i32> %vec.ind27, splat (i32 32)
  %i.m = icmp eq i64 %index.next29.3, 500000
  br i1 %i.m, label %.lr.ph.i, label %vector.body25, !llvm.loop !18

.lr.ph.i:                                         ; preds = %vector.body25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2000000
  store i32 500000, ptr %i.n, align 4, !tbaa !8
  %i.o = load i64, ptr @next, align 8, !tbaa !10
  %i.p = mul i64 %i.o, 1103515245
  %i.q = add i64 %i.p, 12345                      ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = trunc i64 %i.r to i32
  %i.t = urem i32 %i.s, 32767
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fmul nnan double %i.v, f0x3F00000000000000
  %i.x = fmul nnan double %i.w, 5.000000e+05
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = icmp eq i32 %i.y, 500000
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = sext i1 %i.z to i32
  %i.ac = add nsw i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.017.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ 500000, %.lr.ph.i ] ; 3 uses
  %i.ad = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.q, %.lr.ph.i ]
  %i.ae = add nuw nsw i64 %.017.i.i, 1            ; 2 uses
  %i.af = uitofp i64 %i.ae to double
  %i.ag = mul i64 %i.ad, 1103515245
  %i.ah = add i64 %i.ag, 12345                    ; 3 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = urem i32 %i.aj, 32767
  %i.al = add nuw nsw i32 %i.ak, 1
  %i.am = uitofp nneg i32 %i.al to double
  %i.an = fmul nnan double %i.am, f0x3F00000000000000
  %i.ao = fmul double %i.an, %i.af
  %i.ap = fptosi double %i.ao to i32
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = icmp eq i64 %i.ae, %i.aq
  %i.as = sext i1 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.017.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = getelementptr [4 x i8], ptr %i.a, i64 %i.aq
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.as ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !8
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !8
  %i.ay = add nsw i64 %.017.i.i, -1               ; 2 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %createRandomArray.exit, label %.lr.ph.i.i, !llvm.loop !0

createRandomArray.exit:                           ; preds = %.lr.ph.i.i
  store i64 %i.ah, ptr @next, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2000000
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8, %createRandomArray.exit
  %.0614 = phi i32 [ 0, %createRandomArray.exit ], [ %i.bi, %.lr.ph.i8 ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi21 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.phi21, splat (i32 4)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x i32>, ptr %i.ba, align 4, !tbaa !8
  %wide.load22 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !8
  %0 = xor <4 x i32> %wide.load, %vec.phi
  %i.bc = xor <4 x i32> %wide.load22, %vec.phi.a
  %i.bd = xor <4 x i32> %i.bc, %step.add
  %vec.ind.next = add <4 x i32> %vec.phi21, splat (i32 8)
  %i.be = add <4 x i32> %vec.phi21, splat (i32 12)
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <4 x i32>, ptr %2, align 4, !tbaa !8
  %wide.load22.1 = load <4 x i32>, ptr %3, align 4, !tbaa !8
  %4 = xor <4 x i32> %0, %wide.load.1
  %5 = xor <4 x i32> %wide.load22.1, %i.bd
  %6 = xor <4 x i32> %4, %vec.ind.next
  %i.bf = xor <4 x i32> %6, %vec.phi21            ; 2 uses
  %i.bg = xor <4 x i32> %5, %i.be                 ; 2 uses
  %index.next = add nuw nsw i64 %index, 16        ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.phi21, splat (i32 16)
  %i.bh = icmp eq i64 %index.next, 500000
  br i1 %i.bh, label %.lr.ph.i8, label %vector.body, !llvm.loop !19

.lr.ph.i8:                                        ; preds = %vector.body
  %i.bi = add nuw nsw i32 %.0614, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, 200
  br i1 %exitcond.not, label %bb.b, label %vector.ph, !llvm.loop !20

bb.b:                                             ; preds = %.lr.ph.i8
  %i.bj = load i32, ptr %i.az, align 4, !tbaa !8
  %bin.rdx = xor <4 x i32> %i.bg, %i.bf
  %i.bk = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx)
  %i.bl = xor i32 %i.bj, %i.bk
  tail call void @free(ptr noundef nonnull %i.a) #11
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bl) ; 0 uses
  %i.bn = add nuw nsw i32 %.0715, 1               ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bn, 5
  br i1 %exitcond17.not, label %bb.c, label %vector.ph24, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"long long", !6, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11, !13, !12}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
end_hunk_0
