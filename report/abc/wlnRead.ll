Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlnRead?download=true
inline.NumInlined: 1040
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Rtl_NtkCollectConstRange:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %Vec_IntPush.exit ] ; 3 uses
  %i.h = lshr i32 %.07, 5
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !63
  %i.l = and i32 %.07, 31
  %i.m = lshr i32 %i.k, %i.l
  %i.n = and i32 %i.m, 1
  %i.o = load i32, ptr %i.f, align 4, !tbaa !62   ; 7 uses
  %i.p = load i32, ptr %i.d, align 8, !tbaa !44
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #37
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i32 %i.o, 1073741823
  %i.w = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  %.pre8 = load ptr, ptr %i.g, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre8, null
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @realloc(ptr noundef nonnull %.pre8, i64 noundef %i.y) #37
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.ab = phi ptr [ %i.u, %bb.f ], [ %i.t, %bb.e ], [ %i.z, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !43
  store i32 %spec.select.sink.i, ptr %i.d, align 8, !tbaa !44
  %.pre9 = load i32, ptr %i.f, align 4, !tbaa !62
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ac = phi i32 [ %i.o, %.Vec_IntPush.exit_crit_edge ], [ %i.o, %bb.g ], [ %.pre9, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre8, %bb.g ], [ %i.ab, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.f, align 4, !tbaa !62
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !63
  %i.ah = add nuw nsw i32 %.07, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %spec.store.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !220

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Rtl_NtkCollectSliceRange(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63
  tail call void @Rtl_NtkCollectWireRange(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Rtl_NtkCollectConcatRange(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !63     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63
  tail call void @Rtl_NtkCollectSignalRange(ptr noundef %0, i32 noundef %i.e)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.f = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Rtl_NtkCollectSignalRange(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = and i32 %1, 3
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = ashr exact i32 %1, 2
  tail call void @Rtl_NtkCollectWireRange(ptr noundef %0, i32 noundef %i.b, i32 noundef -1, i32 noundef -1)
  br label %Rtl_NtkCollectConcatRange.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = ashr i32 %1, 2
  %i.f = getelementptr i8, ptr %i.d, i64 32
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %.val18, i64 %i.g
  tail call void @Rtl_NtkCollectConstRange(ptr noundef %0, ptr noundef %i.h)
  br label %Rtl_NtkCollectConcatRange.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = ashr i32 %1, 2
  %i.l = getelementptr i8, ptr %i.j, i64 48
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.val17, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63
  tail call void @Rtl_NtkCollectWireRange(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  br label %Rtl_NtkCollectConcatRange.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.v = ashr i32 %1, 2
  %i.w = getelementptr i8, ptr %i.u, i64 64
  %.val = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !63   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %Rtl_NtkCollectConcatRange.exit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ab = zext nneg i32 %i.z to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !63
  tail call void @Rtl_NtkCollectSignalRange(ptr noundef nonnull %0, i32 noundef %i.ad), !inline_history !221
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ae = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ae, label %.lr.ph, label %Rtl_NtkCollectConcatRange.exit, !llvm.loop !22

default.unreachable:                              ; preds = %bb.a
  unreachable

Rtl_NtkCollectConcatRange.exit:                   ; preds = %.lr.ph, %bb.e, %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Rtl_NtkInsertWireRange(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #14 {
bb.a:
  %6 = ptrtoaddr ptr %4 to i64
  %i.a = getelementptr i8, ptr %0, i64 96
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %.val22, i64 216
  %.val22.val = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %.val22.val, i64 8
  %.val22.val.val = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val22.val.val, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val23 = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.h = mul nsw i32 %i.f, 5
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr %.val23, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !63
  %i.m = icmp eq i32 %2, -1
  %i.n = add nsw i32 %i.l, -1
  %i.o = select i1 %i.m, i32 %i.n, i32 %2         ; 2 uses
  %i.p = icmp eq i32 %3, -1
  %i.q = select i1 %i.p, i32 0, i32 %3            ; 3 uses
  %.not24 = icmp sgt i32 %i.q, %i.o
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr i8, ptr %i.j, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63
  %i.t = getelementptr i8, ptr %0, i64 128
  %.val21 = load ptr, ptr %i.t, align 8, !tbaa !43 ; 2 uses
  %i.u = sext i32 %i.q to i64                     ; 5 uses
  %i.v = sext i32 %i.s to i64                     ; 2 uses
  %i.w = add i32 %i.o, 1
  %i.x = sub i32 %i.w, %i.q                       ; 5 uses
  %wide.trip.count = zext i32 %i.x to i64         ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val21, i64 %i.v ; 6 uses
  %min.iters.check = icmp ult i32 %i.x, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.val2133 = ptrtoaddr ptr %.val21 to i64
  %i.y = add nsw i64 %i.u, %i.v
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = add i64 %i.z, %.val2133
  %i.ab = sub i64 %6, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.ac = add nsw i64 %n.vec, %i.u
  %invariant.gep36 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <4 x i32>, ptr %i.ad, align 4, !tbaa !63
  %wide.load34 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !63
  %gep37 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %gep37, i64 16
  store <4 x i32> %wide.load, ptr %gep37, align 4, !tbaa !63
  store <4 x i32> %wide.load34, ptr %i.af, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv27.ph = phi i64 [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph ], [ %i.ac, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv27.prol = phi i64 [ %indvars.iv.next28.prol, %scalar.ph.prol ], [ %indvars.iv27.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.prol
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !63
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv27.prol
  store i32 %i.ai, ptr %gep.prol, align 4, !tbaa !63
  %indvars.iv.next28.prol = add nsw i64 %indvars.iv27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !223

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv27.unr = phi i64 [ %indvars.iv27.ph, %scalar.ph.preheader ], [ %indvars.iv.next28.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv27 = phi i64 [ %indvars.iv.next28.3, %scalar.ph ], [ %indvars.iv27.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv27
  store i32 %i.am, ptr %gep, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !63
  %i.aq = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv27
  %gep.1 = getelementptr i8, ptr %i.aq, i64 4
  store i32 %i.ap, ptr %gep.1, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !63
  %i.au = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv27
  %gep.2 = getelementptr i8, ptr %i.au, i64 8
  store i32 %i.at, ptr %gep.2, align 4, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv27
  %gep.3 = getelementptr i8, ptr %i.ay, i64 12
  store i32 %i.ax, ptr %gep.3, align 4, !tbaa !63
  %indvars.iv.next28.3 = add nsw i64 %indvars.iv27, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !224

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %middle.block ], [ %i.x, %scalar.ph ], [ %i.x, %scalar.ph.prol.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Rtl_NtkInsertSliceRange(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #14 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64
  %i.a = load i32, ptr %1, align 4, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 96
  %.val22.i = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.g = getelementptr i8, ptr %.val22.i, i64 216
  %.val22.val.i = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr i8, ptr %.val22.val.i, i64 8
  %.val22.val.val.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.val22.val.val.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !63
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val23.i = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.m = mul nsw i32 %i.k, 5
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr %.val23.i, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %i.r = icmp eq i32 %i.c, -1
  %i.s = add nsw i32 %i.q, -1
  %i.t = select i1 %i.r, i32 %i.s, i32 %i.c       ; 2 uses
  %i.u = icmp eq i32 %i.e, -1
  %i.v = select i1 %i.u, i32 0, i32 %i.e          ; 3 uses
  %.not24.i = icmp sgt i32 %i.v, %i.t
  br i1 %.not24.i, label %Rtl_NtkInsertWireRange.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.w = getelementptr i8, ptr %i.o, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  %i.y = getelementptr i8, ptr %0, i64 128
  %.val21.i = load ptr, ptr %i.y, align 8, !tbaa !43 ; 2 uses
  %i.z = sext i32 %i.v to i64                     ; 5 uses
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %reass.sub = sub i32 %i.t, %i.v
  %i.ab = add i32 %reass.sub, 1                   ; 5 uses
  %wide.trip.count.i = zext i32 %i.ab to i64      ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val21.i, i64 %i.aa ; 6 uses
  %min.iters.check = icmp ult i32 %i.ab, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %.val21.i6 = ptrtoaddr ptr %.val21.i to i64
  %i.ac = add nsw i64 %i.z, %i.aa
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = add i64 %i.ad, %.val21.i6
  %i.af = sub i64 %4, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %i.ag = add nsw i64 %n.vec, %i.z
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !63
  %wide.load7 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !63
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %wide.load, ptr %gep, align 4, !tbaa !63
  store <4 x i32> %wide.load7, ptr %i.aj, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Rtl_NtkInsertWireRange.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv27.i.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i ], [ %i.ag, %middle.block ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %scalar.ph.prol ], [ %indvars.iv27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i.prol
  store i32 %i.am, ptr %gep.i.prol, align 4, !tbaa !63
  %indvars.iv.next28.i.prol = add nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !226

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv27.i.unr = phi i64 [ %indvars.iv27.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next28.i.prol, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %Rtl_NtkInsertWireRange.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %scalar.ph ], [ %indvars.iv27.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i
  store i32 %i.aq, ptr %gep.i, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !63
  %i.au = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i
  %gep.i.1 = getelementptr i8, ptr %i.au, i64 4
  store i32 %i.at, ptr %gep.i.1, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i
  %gep.i.2 = getelementptr i8, ptr %i.ay, i64 8
  store i32 %i.ax, ptr %gep.i.2, align 4, !tbaa !63
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !63
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i
  %gep.i.3 = getelementptr i8, ptr %i.bc, i64 12
  store i32 %i.bb, ptr %gep.i.3, align 4, !tbaa !63
  %indvars.iv.next28.i.3 = add nsw i64 %indvars.iv27.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Rtl_NtkInsertWireRange.exit, label %scalar.ph, !llvm.loop !227

Rtl_NtkInsertWireRange.exit:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ab, %middle.block ], [ %i.ab, %scalar.ph ], [ %i.ab, %scalar.ph.prol.loopexit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Rtl_NtkInsertConcatRange(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !63
  %.not12 = icmp slt i32 %i.a, 1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %.014 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63
  %i.d = sext i32 %.014 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  %i.f = sub nsw i32 %3, %.014
  %i.g = tail call i32 @Rtl_NtkInsertSignalRange(ptr noundef %0, i32 noundef %i.c, ptr noundef %i.e, i32 noundef %i.f)
  %i.h = add nsw i32 %i.g, %.014                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.i = load i32, ptr %1, align 4, !tbaa !63
  %i.j = sext i32 %i.i to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.j
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Rtl_NtkInsertSignalRange(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #19 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %i.a = and i32 %1, 3
  switch i32 %i.a, label %.unreachabledefault [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 1, label %Rtl_NtkInsertConcatRange.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = ashr exact i32 %1, 2
  %i.c = getelementptr i8, ptr %0, i64 96
  %.val22.i = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %.val22.i, i64 216
  %.val22.val.i = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr i8, ptr %.val22.val.i, i64 8
  %.val22.val.val.i = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %.val22.val.val.i, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = getelementptr i8, ptr %0, i64 24
  %.val23.i = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.j = mul nsw i32 %i.h, 5
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr %.val23.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !63   ; 6 uses
  %.not24.i = icmp slt i32 %i.n, 1
  br i1 %.not24.i, label %Rtl_NtkInsertConcatRange.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !63
  %i.q = getelementptr i8, ptr %0, i64 128
  %.val21.i = load ptr, ptr %i.q, align 8, !tbaa !43 ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.n to i64  ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val21.i, i64 %i.r ; 6 uses
  %min.iters.check45 = icmp ult i32 %i.n, 16
  br i1 %min.iters.check45, label %scalar.ph44.preheader, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i
  %.val21.i42 = ptrtoaddr ptr %.val21.i to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = add i64 %i.s, %.val21.i42
  %i.u = sub i64 %4, %i.t
  %diff.check43 = icmp ugt i64 %i.u, -32
  br i1 %diff.check43, label %scalar.ph44.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck41
  %n.vec47 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next52, %vector.body48 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index49 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load50 = load <4 x i32>, ptr %i.v, align 4, !tbaa !63
  %wide.load51 = load <4 x i32>, ptr %i.w, align 4, !tbaa !63
  %i.x = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index49 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store <4 x i32> %wide.load50, ptr %i.x, align 4, !tbaa !63
  store <4 x i32> %wide.load51, ptr %i.y, align 4, !tbaa !63
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.z, label %middle.block53, label %vector.body48, !llvm.loop !228

middle.block53:                                   ; preds = %vector.body48
  %cmp.n54 = icmp eq i64 %n.vec47, %wide.trip.count.i
  br i1 %cmp.n54, label %Rtl_NtkInsertConcatRange.exit, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %vector.memcheck41, %.lr.ph.i, %middle.block53
  %indvars.iv27.i.ph = phi i64 [ 0, %vector.memcheck41 ], [ 0, %.lr.ph.i ], [ %n.vec47, %middle.block53 ] ; 3 uses
  %xtraiter58 = and i64 %wide.trip.count.i, 3     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %scalar.ph44.prol.loopexit, label %scalar.ph44.prol

scalar.ph44.prol:                                 ; preds = %scalar.ph44.preheader, %scalar.ph44.prol
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %scalar.ph44.prol ], [ %indvars.iv27.i.ph, %scalar.ph44.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %scalar.ph44.prol ], [ 0, %scalar.ph44.preheader ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv27.i.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !63
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i.prol
  store i32 %i.ab, ptr %gep.i.prol, align 4, !tbaa !63
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %scalar.ph44.prol.loopexit, label %scalar.ph44.prol, !llvm.loop !229

scalar.ph44.prol.loopexit:                        ; preds = %scalar.ph44.prol, %scalar.ph44.preheader
  %indvars.iv27.i.unr = phi i64 [ %indvars.iv27.i.ph, %scalar.ph44.preheader ], [ %indvars.iv.next28.i.prol, %scalar.ph44.prol ]
  %i.ac = sub nsw i64 %indvars.iv27.i.ph, %wide.trip.count.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %Rtl_NtkInsertConcatRange.exit, label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %scalar.ph44 ], [ %indvars.iv27.i.unr, %scalar.ph44.prol.loopexit ] ; 6 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv27.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !63
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv27.i
  store i32 %i.af, ptr %gep.i, align 4, !tbaa !63
  %indvars.iv.next28.i.1 = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next28.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next28.i
  store i32 %i.ah, ptr %gep.i.1, align 4, !tbaa !63
  %indvars.iv.next28.i.2 = add nuw nsw i64 %indvars.iv27.i, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next28.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next28.i.1
  store i32 %i.aj, ptr %gep.i.2, align 4, !tbaa !63
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next28.i.2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next28.i.2
  store i32 %i.al, ptr %gep.i.3, align 4, !tbaa !63
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Rtl_NtkInsertConcatRange.exit, label %scalar.ph44, !llvm.loop !230

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.ao = ashr i32 %1, 2
  %i.ap = getelementptr i8, ptr %i.an, i64 48
  %.val20 = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val20, i64 %i.aq ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !63 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !63 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.an, i64 216
  %.val22.val.i.i = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.ay = getelementptr i8, ptr %.val22.val.i.i, i64 8
  %.val22.val.val.i.i = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.az = sext i32 %i.as to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val22.val.val.i.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !63
  %i.bc = getelementptr i8, ptr %0, i64 24
  %.val23.i.i = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.bd = mul nsw i32 %i.bb, 5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %.val23.i.i, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !63
  %i.bi = icmp eq i32 %i.au, -1
  %i.bj = add nsw i32 %i.bh, -1
  %i.bk = select i1 %i.bi, i32 %i.bj, i32 %i.au   ; 2 uses
  %i.bl = icmp eq i32 %i.aw, -1
  %i.bm = select i1 %i.bl, i32 0, i32 %i.aw       ; 3 uses
  %.not24.i.i = icmp sgt i32 %i.bm, %i.bk
  br i1 %.not24.i.i, label %Rtl_NtkInsertConcatRange.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.bn = getelementptr i8, ptr %i.bf, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !63
  %i.bp = getelementptr i8, ptr %0, i64 128
  %.val21.i.i = load ptr, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.bq = sext i32 %i.bm to i64                   ; 5 uses
  %i.br = sext i32 %i.bo to i64                   ; 2 uses
  %reass.sub.i = sub i32 %i.bk, %i.bm
  %i.bs = add i32 %reass.sub.i, 1                 ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.bs to i64    ; 5 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %.val21.i.i, i64 %i.br ; 6 uses
  %min.iters.check = icmp ult i32 %i.bs, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val21.i.i38 = ptrtoaddr ptr %.val21.i.i to i64
  %i.bt = add nsw i64 %i.bq, %i.br
  %i.bu = shl nsw i64 %i.bt, 2
  %i.bv = add i64 %i.bu, %.val21.i.i38
  %i.bw = sub i64 %4, %i.bv
  %diff.check = icmp ugt i64 %i.bw, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 4 uses
  %i.bx = add nsw i64 %n.vec, %i.bq
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !63
  %wide.load39 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !63
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %wide.load, ptr %gep, align 4, !tbaa !63
  store <4 x i32> %wide.load39, ptr %i.ca, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Rtl_NtkInsertConcatRange.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv27.i.i.ph = phi i64 [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i ], [ %i.bx, %middle.block ] ; 2 uses
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv27.i.i.prol = phi i64 [ %indvars.iv.next28.i.i.prol, %scalar.ph.prol ], [ %indvars.iv27.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i.prol
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !63
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv27.i.i.prol
  store i32 %i.cd, ptr %gep.i.i.prol, align 4, !tbaa !63
  %indvars.iv.next28.i.i.prol = add nsw i64 %indvars.iv27.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !232

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv27.i.i.unr = phi i64 [ %indvars.iv27.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next28.i.i.prol, %scalar.ph.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ce = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %Rtl_NtkInsertConcatRange.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv27.i.i = phi i64 [ %indvars.iv.next28.i.i.3, %scalar.ph ], [ %indvars.iv27.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !63
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv27.i.i
  store i32 %i.ch, ptr %gep.i.i, align 4, !tbaa !63
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !63
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv27.i.i
  %gep.i.i.1 = getelementptr i8, ptr %i.cl, i64 4
  store i32 %i.ck, ptr %gep.i.i.1, align 4, !tbaa !63
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !63
  %i.cp = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv27.i.i
  %gep.i.i.2 = getelementptr i8, ptr %i.cp, i64 8
  store i32 %i.co, ptr %gep.i.i.2, align 4, !tbaa !63
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !63
  %i.ct = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv27.i.i
  %gep.i.i.3 = getelementptr i8, ptr %i.ct, i64 12
  store i32 %i.cs, ptr %gep.i.i.3, align 4, !tbaa !63
  %indvars.iv.next28.i.i.3 = add nsw i64 %indvars.iv27.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Rtl_NtkInsertConcatRange.exit, label %scalar.ph, !llvm.loop !233

bb.d:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61
  %i.cw = ashr i32 %1, 2
  %i.cx = getelementptr i8, ptr %i.cv, i64 64
  %.val = load ptr, ptr %i.cx, align 8, !tbaa !43
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !63
  %.not.i23 = icmp slt i32 %i.da, 1
  br i1 %.not.i23, label %Rtl_NtkInsertConcatRange.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.d ] ; 3 uses
  %.0.i25 = phi i32 [ %i.dh, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !63
  %i.dd = sext i32 %.0.i25 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %i.df = sub nsw i32 %3, %.0.i25
  %i.dg = tail call i32 @Rtl_NtkInsertSignalRange(ptr noundef nonnull %0, i32 noundef %i.dc, ptr noundef %i.de, i32 noundef %i.df), !inline_history !234
  %i.dh = add nsw i32 %i.dg, %.0.i25              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !63
  %i.dj = sext i32 %i.di to i64
  %.not.i.not = icmp slt i64 %indvars.iv, %i.dj
  br i1 %.not.i.not, label %.lr.ph, label %Rtl_NtkInsertConcatRange.exit, !llvm.loop !23

.unreachabledefault:                              ; preds = %bb.a
  unreachable

Rtl_NtkInsertConcatRange.exit:                    ; preds = %.lr.ph, %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph44.prol.loopexit, %scalar.ph44, %middle.block, %middle.block53, %bb.a, %bb.b, %bb.c, %bb.d
  %.2 = phi i32 [ 1000000000, %bb.a ], [ 0, %bb.d ], [ %i.n, %middle.block53 ], [ %i.bs, %middle.block ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.n, %scalar.ph44.prol.loopexit ], [ %i.bs, %scalar.ph.prol.loopexit ], [ %i.n, %scalar.ph44 ], [ %i.bs, %scalar.ph ], [ %i.dh, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Rtl_NtkRevPermInput(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !62
  store i32 100, ptr %i.a, align 8, !tbaa !44
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #36 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge39
  %i.i = phi i32 [ %i.f, %.lr.ph27 ], [ %i.ag, %._crit_edge39 ]
  %.promoted21 = phi ptr [ %i.c, %.lr.ph27 ], [ %.promoted2138, %._crit_edge39 ] ; 2 uses
  %.promoted18 = phi i32 [ 100, %.lr.ph27 ], [ %.promoted1836, %._crit_edge39 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph27 ], [ %.promoted34, %._crit_edge39 ] ; 2 uses
  %indvars.iv30 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next31, %._crit_edge39 ] ; 2 uses
  %.025 = phi i32 [ 0, %.lr.ph27 ], [ %i.n, %._crit_edge39 ]
  %.val = load ptr, ptr %i.h, align 8, !tbaa !43
  %.idx = mul i64 %indvars.iv30, 20
  %i.j = getelementptr i8, ptr %.val, i64 %.idx
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !63   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = add nsw i32 %i.l, %.025                  ; 2 uses
  br i1 %i.m, label %.lr.ph, label %._crit_edge39

.lr.ph:                                           ; preds = %bb.b
  %i.o = sext i32 %.promoted to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge22 = phi ptr [ %.promoted21, %.lr.ph ], [ %storemerge23, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i20 = phi i32 [ %.promoted18, %.lr.ph ], [ %spec.select.sink.i19, %Vec_IntPush.exit ] ; 3 uses
  %.01517 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %Vec_IntPush.exit ] ; 2 uses
  %i.p = xor i32 %.01517, -1
  %i.q = add i32 %i.n, %i.p
  %i.r = trunc nsw i64 %indvars.iv to i32
  %i.s = icmp eq i32 %spec.select.sink.i20, %i.r
  br i1 %i.s, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.t = icmp slt i64 %indvars.iv, 16
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge22, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge22, i64 noundef 64) #37
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.w = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.x = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 4 uses
  %i.y = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.y
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge22, null
  %i.z = zext nneg i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
end_hunk_0
