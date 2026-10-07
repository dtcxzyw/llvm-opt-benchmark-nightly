Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/island?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3UnlinkContact:bb.a
  %i.n = mul nsw i32 %i.h, 12
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o
  %i.q = mul nsw i32 %i.m, 12
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(12) %i.s, i64 12, i1 false)
  %i.t = load i32, ptr %i.k, align 8, !tbaa !87
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %b3RemoveHelper.exit.thread, label %bb.b

bb.b:                                             ; preds = %b3RemoveHelper.exit
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.v = sext i32 %i.h to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !112
  %i.z = load i32, ptr %i.w, align 4, !tbaa !114
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [216 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  store i32 %i.h, ptr %i.ac, align 4, !tbaa !108
  br label %b3RemoveHelper.exit.thread

b3RemoveHelper.exit.thread:                       ; preds = %bb.a, %bb.b, %b3RemoveHelper.exit
  store i32 -1, ptr %i.a, align 8, !tbaa !106
  store i32 -1, ptr %i.g, align 4, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !123
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b3ValidateIsland(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3LinkJoint(ptr noundef %0, ptr nofree noundef captures(none) initializes((48, 56)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !135
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [128 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !135
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [128 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.m = icmp eq i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100  ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %.thread20.sink.split, label %.thread20

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.o, 2
  %i.r = icmp sgt i32 %i.l, 2
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %.thread20.sink.split, label %.thread20

.thread20.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.o, %bb.b ], [ %i.l, %bb.c ]
  tail call void @b3WakeSolverSet(ptr noundef nonnull %0, i32 noundef %.sink) #6
  br label %.thread20

.thread20:                                        ; preds = %.thread20.sink.split, %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !101
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101
  %i.w = tail call fastcc i32 @b3MergeIslands(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.v) ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 4040
  %.val = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.w, ptr %i.aa, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !116 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !136
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !135
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !135
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 60 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !96 ; 4 uses
  %.not.i = icmp slt i32 %i.ad, %i.ak
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  br i1 %.not.i, label %b3AddJointToIsland.exit, label %bb.d

bb.d:                                             ; preds = %.thread20
  %i.al = mul i32 %i.ak, 12
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = shl nsw i32 %i.ak, 1
  %spec.select.i = select i1 %i.am, i32 8, i32 %i.an ; 2 uses
  %i.ao = mul i32 %spec.select.i, 12
  %i.ap = tail call ptr @b3GrowAlloc(ptr noundef %.pre.i, i32 noundef %i.al, i32 noundef %i.ao) #6 ; 2 uses
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !95
  store i32 %spec.select.i, ptr %i.aj, align 4, !tbaa !96
  %.pre1.i = load i32, ptr %i.ac, align 8, !tbaa !116
  br label %b3AddJointToIsland.exit

b3AddJointToIsland.exit:                          ; preds = %.thread20, %bb.d
  %i.aq = phi i32 [ %.pre1.i, %bb.d ], [ %i.ad, %.thread20 ] ; 2 uses
  %i.ar = phi ptr [ %i.ap, %bb.d ], [ %.pre.i, %.thread20 ]
  %i.as = add nsw i32 %i.aq, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !116
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %i.ar, i64 %i.at ; 3 uses
  store i32 %i.ag, ptr %i.au, align 4, !tbaa !87
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3UnlinkJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4040
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !122  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !87
  %i.n = add nsw i32 %i.m, -1                     ; 3 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !87
  %.not.i = icmp eq i32 %i.i, %i.n
  br i1 %.not.i, label %b3RemoveHelper.exit.thread, label %b3RemoveHelper.exit

b3RemoveHelper.exit:                              ; preds = %bb.b
  %i.o = mul nsw i32 %i.i, 12
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  %i.r = mul nsw i32 %i.n, 12
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) %i.t, i64 12, i1 false)
  %i.u = load i32, ptr %i.l, align 8, !tbaa !87
  %.not = icmp eq i32 %i.u, -1
  br i1 %.not, label %b3RemoveHelper.exit.thread, label %bb.c

bb.c:                                             ; preds = %b3RemoveHelper.exit
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.w = sext i32 %i.i to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !119
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [72 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  store i32 %i.i, ptr %i.ad, align 4, !tbaa !122
  br label %b3RemoveHelper.exit.thread

b3RemoveHelper.exit.thread:                       ; preds = %bb.b, %bb.c, %b3RemoveHelper.exit
  store i32 -1, ptr %i.a, align 8, !tbaa !121
  store i32 -1, ptr %i.h, align 4, !tbaa !122
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !123
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %b3RemoveHelper.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3SplitIsland(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4040 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !109  ; 8 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !107  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !93   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !116  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !95   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96
  %i.w = shl i32 %i.g, 2                          ; 5 uses
  %i.x = tail call ptr @b3StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str) #6 ; 39 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 3 uses
  %i.z = tail call ptr @b3StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.1) #6 ; 12 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 3 uses
  %i.ab = tail call ptr @b3StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.2) #6 ; 12 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64              ; 3 uses
  %i.ad = tail call ptr @b3StackAlloc(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.3) #6 ; 10 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 3 uses
  %i.af = icmp sgt i32 %i.g, 0                    ; 4 uses
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.g, 40
  br i1 %min.iters.check, label %.lr.ph.preheader624, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ag = sub i64 %i.y, %i.ae
  %diff.check = icmp ugt i64 %i.ag, -32
  %i.ah = sub i64 %i.y, %i.aa
  %diff.check604 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check604
  %i.ai = sub i64 %i.y, %i.ac
  %diff.check605 = icmp ugt i64 %i.ai, -32
  %conflict.rdx606 = or i1 %conflict.rdx, %diff.check605
  %i.aj = sub i64 %i.ae, %i.aa
  %diff.check607 = icmp ugt i64 %i.aj, -32
  %conflict.rdx608 = or i1 %conflict.rdx606, %diff.check607
  %i.ak = sub i64 %i.ae, %i.ac
  %diff.check609 = icmp ugt i64 %i.ak, -32
  %conflict.rdx610 = or i1 %conflict.rdx608, %diff.check609
  %i.al = sub i64 %i.aa, %i.ac
  %diff.check611 = icmp ugt i64 %i.al, -32
  %conflict.rdx612 = or i1 %conflict.rdx610, %diff.check611
  br i1 %conflict.rdx612, label %.lr.ph.preheader624, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %vec.ind, ptr %i.am, align 4, !tbaa !87
  store <4 x i32> %step.add, ptr %i.an, align 4, !tbaa !87
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !87
  store <4 x i32> zeroinitializer, ptr %i.ap, align 4, !tbaa !87
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !87
  store <4 x i32> zeroinitializer, ptr %i.ar, align 4, !tbaa !87
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !87
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader624

.lr.ph.preheader624:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader624
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.ph
  %i.aw = trunc nuw nsw i64 %indvars.iv.ph to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !87
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.ph
  store i32 0, ptr %i.ax, align 4, !tbaa !87
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.ph
  store i32 0, ptr %i.ay, align 4, !tbaa !87
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.ph
  store i32 0, ptr %i.az, align 4, !tbaa !87
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader624
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader624 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ba = add nsw i64 %wide.trip.count, -1
  %i.bb = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3880 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97 ; 4 uses
  %i.be = icmp sgt i32 %i.m, 0                    ; 2 uses
  br i1 %i.be, label %.lr.ph436.preheader, label %.preheader423

.lr.ph436.preheader:                              ; preds = %._crit_edge
  %wide.trip.count478 = zext nneg i32 %i.m to i64
  br label %.lr.ph436

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !87
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 0, ptr %i.bh, align 4, !tbaa !87
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 0, ptr %i.bi, align 4, !tbaa !87
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 0, ptr %i.bj, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.bl = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !87
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  store i32 0, ptr %i.bm, align 4, !tbaa !87
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  store i32 0, ptr %i.bn, align 4, !tbaa !87
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  store i32 0, ptr %i.bo, align 4, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !138

.preheader423:                                    ; preds = %b3IslandFindParent.exit, %._crit_edge
  %i.bp = icmp sgt i32 %i.s, 0                    ; 2 uses
  br i1 %i.bp, label %.lr.ph438.preheader, label %._crit_edge439

.lr.ph438.preheader:                              ; preds = %.preheader423
  %wide.trip.count483 = zext nneg i32 %i.s to i64
  br label %.lr.ph438

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %b3IslandFindParent.exit
  %indvars.iv475 = phi i64 [ 0, %.lr.ph436.preheader ], [ %indvars.iv.next476, %b3IslandFindParent.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv475 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !150
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !151
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [128 x i8], ptr %i.bd, i64 %i.bv
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [128 x i8], ptr %i.bd, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !110 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !110 ; 5 uses
  %i.cd = icmp ne i32 %i.ca, -1                   ; 2 uses
  %i.ce = icmp ne i32 %i.cc, -1
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph436
  %i.cf = sext i32 %i.ca to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cf ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ch, %i.ca
  br i1 %.not11.i.i, label %b3IslandFindParent.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.ci = phi i32 [ %i.cp, %.lr.ph.i.i ], [ %i.ch, %bb.b ]
  %i.cj = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.cg, %bb.b ]
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !87 ; 4 uses
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !87
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !87 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cp, %i.cm
  br i1 %.not.i.i, label %b3IslandFindParent.exit.i, label %.lr.ph.i.i, !llvm.loop !139

b3IslandFindParent.exit.i:                        ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i32 [ %i.ca, %bb.b ], [ %i.cm, %.lr.ph.i.i ] ; 3 uses
  %i.cq = sext i32 %i.cc to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !87 ; 2 uses
  %.not11.i51.i = icmp eq i32 %i.cs, %i.cc
  br i1 %.not11.i51.i, label %b3IslandFindParent.exit55.i, label %.lr.ph.i52.i

.lr.ph.i52.i:                                     ; preds = %b3IslandFindParent.exit.i, %.lr.ph.i52.i
  %i.ct = phi i32 [ %i.da, %.lr.ph.i52.i ], [ %i.cs, %b3IslandFindParent.exit.i ]
  %i.cu = phi ptr [ %i.cz, %.lr.ph.i52.i ], [ %i.cr, %b3IslandFindParent.exit.i ]
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !87 ; 4 uses
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !87
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87 ; 2 uses
  %.not.i53.i = icmp eq i32 %i.da, %i.cx
  br i1 %.not.i53.i, label %b3IslandFindParent.exit55.i, label %.lr.ph.i52.i, !llvm.loop !139

b3IslandFindParent.exit55.i:                      ; preds = %.lr.ph.i52.i, %b3IslandFindParent.exit.i
  %.0.lcssa.i54.i = phi i32 [ %i.cc, %b3IslandFindParent.exit.i ], [ %i.cx, %.lr.ph.i52.i ] ; 3 uses
  %.not.i = icmp eq i32 %.0.lcssa.i.i, %.0.lcssa.i54.i
  br i1 %.not.i, label %b3IslandUnion.exit, label %bb.c

bb.c:                                             ; preds = %b3IslandFindParent.exit55.i
  %i.db = sext i32 %.0.lcssa.i.i to i64           ; 5 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.db ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !87 ; 2 uses
  %i.de = sext i32 %.0.lcssa.i54.i to i64         ; 5 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !87 ; 2 uses
  %i.dh = icmp slt i32 %i.dd, %i.dg
  br i1 %i.dh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.di = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.db
  store i32 %.0.lcssa.i54.i, ptr %i.di, align 4, !tbaa !87
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.dj = icmp sgt i32 %i.dd, %i.dg
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.de
  store i32 %.0.lcssa.i.i, ptr %i.dk, align 4, !tbaa !87
  br i1 %i.dj, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !87
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dc, align 4, !tbaa !87
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink75.i = phi i64 [ %i.db, %bb.d ], [ %i.de, %bb.f ], [ %i.de, %bb.e ] ; 2 uses
  %.sink74.i = phi i64 [ %i.de, %bb.d ], [ %i.db, %bb.f ], [ %i.db, %bb.e ] ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.sink75.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !87
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.sink74.i ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87
  %i.dr = add nsw i32 %i.dq, %i.do
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !87
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.sink75.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !87
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.sink74.i ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !87
  %i.dw = add nsw i32 %i.dv, %i.dt
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !87
  br label %b3IslandUnion.exit

b3IslandUnion.exit:                               ; preds = %b3IslandFindParent.exit55.i, %.sink.split.i
  %i.dx = load i32, ptr %i.cg, align 4, !tbaa !87 ; 2 uses
  %.not11.i = icmp eq i32 %i.dx, %i.ca
  br i1 %.not11.i, label %b3IslandFindParent.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %b3IslandUnion.exit, %.lr.ph.i
  %i.dy = phi i32 [ %i.ef, %.lr.ph.i ], [ %i.dx, %b3IslandUnion.exit ]
  %i.dz = phi ptr [ %i.ee, %.lr.ph.i ], [ %i.cg, %b3IslandUnion.exit ]
  %i.ea = sext i32 %i.dy to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !87 ; 3 uses
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !87
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !87 ; 2 uses
  %.not.i380 = icmp eq i32 %i.ef, %i.ec
  br i1 %.not.i380, label %b3IslandFindParent.exit, label %.lr.ph.i, !llvm.loop !139

bb.g:                                             ; preds = %.lr.ph436
  %i.eg = select i1 %i.cd, i32 %i.ca, i32 %i.cc   ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !87 ; 2 uses
  %.not11.i381 = icmp eq i32 %i.ej, %i.eg
  br i1 %.not11.i381, label %b3IslandFindParent.exit, label %.lr.ph.i382

.lr.ph.i382:                                      ; preds = %bb.g, %.lr.ph.i382
end_hunk_0
