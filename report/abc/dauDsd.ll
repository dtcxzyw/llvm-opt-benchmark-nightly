Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 96
begin_hunk_0_@Dau_DsdPerformReplace:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge42, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.s, -8                     ; 3 uses
  %i.ab = add nsw i64 %n.vec56, %i.r
  %invariant.gep62 = getelementptr i8, ptr %0, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %index57
  %wide.load58 = load <8 x i8>, ptr %i.ac, align 8, !tbaa !36
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %index57
  store <8 x i8> %wide.load58, ptr %gep63, align 1, !tbaa !36
  %index.next59 = add nuw i64 %index57, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next59, %n.vec56
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.s, %n.vec56
  br i1 %cmp.n60, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv46.ph = phi i64 [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 4 uses
  %i.ae = sub nsw i64 %wide.trip.count49, %indvars.iv46.ph
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader, %.lr.ph41.prol
  %indvars.iv46.prol = phi i64 [ %indvars.iv.next47.prol, %.lr.ph41.prol ], [ %indvars.iv46.ph, %.lr.ph41.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph41.prol ], [ 0, %.lr.ph41.preheader ]
  %i.af = sub nsw i64 %indvars.iv46.prol, %i.r
  %i.ag = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %indvars.iv46.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !36
  %indvars.iv.next47.prol = add nsw i64 %indvars.iv46.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol, !llvm.loop !126

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.lr.ph41.preheader ], [ %indvars.iv.next47.prol, %.lr.ph41.prol ]
  %i.aj = sub nsw i64 %indvars.iv46.ph, %wide.trip.count49
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.3, %.lr.ph41 ], [ %indvars.iv46.unr, %.lr.ph41.prol.loopexit ] ; 6 uses
  %i.al = sub nsw i64 %indvars.iv46, %i.r
  %i.am = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !36
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %indvars.iv46
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !36
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ap = sub nsw i64 %indvars.iv.next47, %i.r
  %i.aq = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next47
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !36
  %indvars.iv.next47.1 = add nsw i64 %indvars.iv46, 2 ; 2 uses
  %i.at = sub nsw i64 %indvars.iv.next47.1, %i.r
  %i.au = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !36
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next47.1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !36
  %indvars.iv.next47.2 = add nsw i64 %indvars.iv46, 3 ; 2 uses
  %i.ax = sub nsw i64 %indvars.iv.next47.2, %i.r
  %i.ay = getelementptr inbounds i8, ptr @Dau_DsdPerformReplace.pTemp, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next47.2
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !36
  %indvars.iv.next47.3 = add nsw i64 %indvars.iv46, 4 ; 2 uses
  %exitcond50.not.3 = icmp eq i64 %indvars.iv.next47.3, %wide.trip.count49
  br i1 %exitcond50.not.3, label %._crit_edge42, label %.lr.ph41, !llvm.loop !127

._crit_edge42:                                    ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %middle.block, %vec.epilog.middle.block, %._crit_edge
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @Dau_DsdPerform(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 4 uses
  switch i64 %0, label %bb.d [
    i64 0, label %bb.b
    i64 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr @Dau_DsdPerform.pBuffer, align 16, !tbaa !36
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 49, ptr @Dau_DsdPerform.pBuffer, align 16, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call i32 @Dau_DsdPerform_rec(i64 noundef %0, ptr noundef nonnull @Dau_DsdPerform.pBuffer, i32 noundef 0, ptr noundef nonnull @__const.Dau_DsdPerform.pVarsNew, i32 noundef 6)
  %i.c = sext i32 %i.b to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.c, %bb.d ]
  %i.d = getelementptr inbounds i8, ptr @Dau_DsdPerform.pBuffer, i64 %.0
  store i8 0, ptr %i.d, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.e = load i8, ptr @Dau_DsdPerform.pBuffer, align 16, !tbaa !36 ; 2 uses
  %.not25.i = icmp eq i8 %i.e, 0
  br i1 %.not25.i, label %Dau_DsdComputeMatches.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.f = phi i8 [ %i.q, %bb.h ], [ %i.e, %bb.e ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.e ] ; 3 uses
  %.027.i = phi i32 [ %.1.i, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @Dau_DsdComputeMatches.pMatches, i64 %indvars.iv.i
  store i32 0, ptr %i.g, align 4, !tbaa !37
  switch i8 %i.f, label %bb.h [
    i8 40, label %bb.f
    i8 91, label %bb.f
    i8 60, label %bb.f
    i8 123, label %bb.f
    i8 41, label %bb.g
    i8 93, label %bb.g
    i8 62, label %bb.g
    i8 125, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.h = add nsw i32 %.027.i, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = add nsw i32 %.027.i, -1                  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.027.sink.i = phi i32 [ %.027.i, %bb.f ], [ %i.l, %bb.g ]
  %.sink.i = phi ptr [ %i.a, %bb.f ], [ @Dau_DsdComputeMatches.pMatches, %bb.g ]
  %.1.ph.i = phi i32 [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  %i.m = sext i32 %.027.sink.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.m
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %.1.i = phi i32 [ %.027.i, %.lr.ph.i ], [ %.1.ph.i, %.sink.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr @Dau_DsdPerform.pBuffer, i64 %indvars.iv.next.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36    ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %Dau_DsdComputeMatches.exit, label %.lr.ph.i, !llvm.loop !0

Dau_DsdComputeMatches.exit:                       ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  tail call void @Dau_DsdRemoveBraces(ptr noundef nonnull @Dau_DsdPerform.pBuffer, ptr noundef nonnull @Dau_DsdComputeMatches.pMatches) #31
  ret ptr @Dau_DsdPerform.pBuffer
}

declare void @Dau_DsdRemoveBraces(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define void @Dau_DsdTest3() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Dau_DsdPerform(i64 noundef -6991934243167716849) ; 0 uses
  %i.b = tail call i64 @Dau_Dsd6ToTruth(ptr noundef nonnull @Dau_DsdPerform.pBuffer)
  %.not = icmp eq i64 %i.b, -6991934243167716849
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i32 @Dau_DsdCheck1Step(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 23 uses
  %i.b = alloca [12 x i32], align 16              ; 7 uses
  %i.c = alloca [12 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.d = icmp slt i32 %2, 7
  %i.e = add nsw i32 %2, -6                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 3 uses
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 8 uses
  %i.h = tail call i32 @Dau_DsdDecompose(ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader257, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %vec.ind, ptr %i.k, align 16, !tbaa !37
  store <4 x i32> %step.add, ptr %i.l, align 16, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader257

.lr.ph.preheader257:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader257, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader257 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.lr.ph133.preheader

._crit_edge.thread:                               ; preds = %.preheader
  %.not168 = icmp eq ptr %3, null
  br i1 %.not168, label %.loopexit, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  br label %Vec_IntSelectSortCost2.exit

.lr.ph133.preheader:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %wide.trip.count153 = zext nneg i32 %2 to i64   ; 3 uses
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %indvars.iv150 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next151, %.lr.ph133 ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.q = tail call i32 @Dau_DsdLevelVar(ptr noundef %0, i32 noundef %i.p)
  %i.r = sub nsw i32 0, %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv150
  store i32 %i.r, ptr %i.s, align 4, !tbaa !37
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge134, label %.lr.ph133, !llvm.loop !131

._crit_edge134:                                   ; preds = %.lr.ph133
  %.not179 = icmp eq i32 %2, 1
  br i1 %.not179, label %Vec_IntSelectSortCost2.exit, label %.lr.ph36.preheader.i

.lr.ph36.preheader.i:                             ; preds = %._crit_edge134
  %i.t = add nsw i32 %2, -1
  %wide.trip.count44.i = zext nneg i32 %i.t to i64
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.u = add nsw i64 %wide.trip.count153, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph36.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph36.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i ] ; 6 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph36.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.v = xor i64 %indvars.iv41.i, -1
  %i.w = add nsw i64 %i.v, %wide.trip.count153
  %i.x = sub i64 %i.u, %indvars.iv41.i
  %i.y = trunc nuw nsw i64 %indvars.iv41.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv41.i ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !37 ; 3 uses
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %i.z = phi i32 [ %i.ae, %.lr.ph.i.prol ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv38.i.prol = phi i64 [ %indvars.iv.next39.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.03132.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.y, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv38.i.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.z
  %i.ad = trunc nuw nsw i64 %indvars.iv38.i.prol to i32
  %spec.select.i.prol = select i1 %i.ac, i32 %i.ad, i32 %.03132.i.prol ; 3 uses
  %indvars.iv.next39.i.prol = add nuw nsw i64 %indvars.iv38.i.prol, 1 ; 2 uses
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.z) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !132

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.unr = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.ae, %.lr.ph.i.prol ]
  %indvars.iv38.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next39.i.prol, %.lr.ph.i.prol ]
  %.03132.i.unr = phi i32 [ %i.y, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.x, 3
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ag = phi i32 [ %i.ba, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i.3, %.lr.ph.i ], [ %indvars.iv38.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.03132.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.03132.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv38.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ag
  %i.ak = trunc nuw nsw i64 %indvars.iv38.i to i32
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 %.03132.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ag) ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next39.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  %i.ap = trunc nuw nsw i64 %indvars.iv.next39.i to i32
  %spec.select.i.1 = select i1 %i.ao, i32 %i.ap, i32 %spec.select.i
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.al) ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next39.i.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.aq
  %i.au = trunc nuw nsw i64 %indvars.iv.next39.i.1 to i32
  %spec.select.i.2 = select i1 %i.at, i32 %i.au, i32 %spec.select.i.1
  %indvars.iv.next39.i.2 = add nuw nsw i64 %indvars.iv38.i, 3 ; 2 uses
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next39.i.2
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.av
  %i.az = trunc nuw nsw i64 %indvars.iv.next39.i.2 to i32
  %spec.select.i.3 = select i1 %i.ay, i32 %i.az, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next39.i.3 = add nuw nsw i64 %indvars.iv38.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next39.i.3, %wide.trip.count.i
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.av)
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv41.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !37
  %i.bd = sext i32 %spec.select.i.lcssa to i64    ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !37
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !37
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !37
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bd ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !37
  store i32 %i.bh, ptr %.phi.trans.insert.i, align 4, !tbaa !37
  store i32 %.pre.i, ptr %i.bg, align 4, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %Vec_IntSelectSortCost2.exit, label %.lr.ph.preheader.i, !llvm.loop !134

Vec_IntSelectSortCost2.exit:                      ; preds = %._crit_edge.i, %.thread, %._crit_edge134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.b

bb.b:                                             ; preds = %Vec_IntSelectSortCost2.exit, %._crit_edge
  br i1 %i.j, label %.lr.ph139, label %.loopexit

.lr.ph139:                                        ; preds = %bb.b
  %i.bi = icmp eq i32 %i.g, 1                     ; 2 uses
  %i.bj = sext i32 %i.g to i64
  %.idx.i = shl nsw i64 %i.bj, 3
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.bl = icmp sgt i32 %i.g, 0                    ; 4 uses
  %wide.trip.count59.i = zext i32 %i.g to i64     ; 2 uses
  %4 = icmp samesign ult i32 %2, 7                ; 2 uses
  %i.bm = sext i32 %i.f to i64
  %.idx.i.i = shl nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i ; 2 uses
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64 ; 2 uses
  %.not48.i.i = icmp eq i32 %i.e, 31              ; 2 uses
  %wide.trip.count.i54 = zext nneg i32 %2 to i64  ; 3 uses
  %min.iters.check215 = icmp ult i32 %i.g, 4
  %n.vec217 = and i64 %wide.trip.count59.i, 2147483644
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond60.not.i.1 = icmp eq i32 %i.g, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %exitcond55.not.i = icmp eq i32 %2, 1
  %exitcond55.not.i.1 = icmp eq i32 %2, 2
  %exitcond55.not.i.2 = icmp eq i32 %2, 3
  %exitcond55.not.i.3 = icmp eq i32 %2, 4
  %exitcond55.not.i.4 = icmp eq i32 %2, 5
  %min.iters.check190 = icmp ult i32 %i.g, 4
  %n.vec192 = and i64 %wide.trip.count59.i, 2147483644
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond62.not.i.1 = icmp eq i32 %i.g, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %exitcond55.not.i115 = icmp eq i32 %2, 1
  %exitcond55.not.i115.1 = icmp eq i32 %2, 2
  %exitcond55.not.i115.2 = icmp eq i32 %2, 3
  %exitcond55.not.i115.3 = icmp eq i32 %2, 4
  %exitcond55.not.i115.4 = icmp eq i32 %2, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph139, %Abc_TtSupportSize.exit116
  %indvars.iv155 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next156, %Abc_TtSupportSize.exit116 ] ; 2 uses
  %.0137 = phi i32 [ 1000000000, %.lr.ph139 ], [ %spec.select117, %Abc_TtSupportSize.exit116 ] ; 2 uses
  %.039136 = phi i32 [ -2, %.lr.ph139 ], [ %spec.select, %Abc_TtSupportSize.exit116 ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv155
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !37 ; 13 uses
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.by = load i64, ptr %1, align 8, !tbaa !45
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !45
  %i.cc = and i64 %i.cb, %i.by                    ; 2 uses
  %i.cd = shl nuw i32 1, %i.bx
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %i.cc, %i.ce
  %i.cg = or i64 %i.cf, %i.cc
  store i64 %i.cg, ptr %i.a, align 16, !tbaa !45
  br label %Abc_TtCofactor0p.exit

bb.e:                                             ; preds = %bb.c
  %i.ch = icmp slt i32 %i.bx, 6
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.bl, label %.lr.ph.i51, label %Abc_TtCofactor0p.exit

.lr.ph.i51:                                       ; preds = %bb.f
  %i.ci = shl nuw nsw i32 1, %i.bx
  %i.cj = sext i32 %i.bx to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !45 ; 4 uses
  %i.cm = zext nneg i32 %i.ci to i64              ; 4 uses
  br i1 %min.iters.check215, label %scalar.ph214, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph.i51
  %broadcast.splatinsert218 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat219 = shufflevector <2 x i64> %broadcast.splatinsert218, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert220 = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat221 = shufflevector <2 x i64> %broadcast.splatinsert220, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph216
  %index223 = phi i64 [ 0, %vector.ph216 ], [ %index.next226, %vector.body222 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index223 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load224 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !45
  %wide.load225 = load <2 x i64>, ptr %i.co, align 8, !tbaa !45
  %i.cp = and <2 x i64> %wide.load224, %broadcast.splat219 ; 2 uses
  %i.cq = and <2 x i64> %wide.load225, %broadcast.splat219 ; 2 uses
  %i.cr = shl <2 x i64> %i.cp, %broadcast.splat221
  %i.cs = shl <2 x i64> %i.cq, %broadcast.splat221
  %i.ct = or <2 x i64> %i.cr, %i.cp
  %i.cu = or <2 x i64> %i.cs, %i.cq
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index223 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x i64> %i.ct, ptr %i.cv, align 16, !tbaa !45
  store <2 x i64> %i.cu, ptr %i.cw, align 16, !tbaa !45
  %index.next226 = add nuw i64 %index223, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next226, %n.vec217
  br i1 %i.cx, label %Abc_TtCofactor0p.exit, label %vector.body222, !llvm.loop !135

scalar.ph214:                                     ; preds = %.lr.ph.i51
  %i.cy = load i64, ptr %1, align 8, !tbaa !45
  %i.cz = and i64 %i.cy, %i.cl                    ; 2 uses
  %i.da = shl i64 %i.cz, %i.cm
  %i.db = or i64 %i.da, %i.cz
  store i64 %i.db, ptr %i.a, align 16, !tbaa !45
  %i.dc = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.dd = and i64 %i.dc, %i.cl                    ; 2 uses
  %i.de = shl i64 %i.dd, %i.cm
  %i.df = or i64 %i.de, %i.dd
  store i64 %i.df, ptr %i.bp, align 8, !tbaa !45
  br i1 %exitcond60.not.i.1, label %Abc_TtCofactor0p.exit, label %scalar.ph214.2

scalar.ph214.2:                                   ; preds = %scalar.ph214
  %i.dg = load i64, ptr %i.bq, align 8, !tbaa !45
  %i.dh = and i64 %i.dg, %i.cl                    ; 2 uses
  %i.di = shl i64 %i.dh, %i.cm
  %i.dj = or i64 %i.di, %i.dh
  store i64 %i.dj, ptr %i.br, align 16, !tbaa !45
  br label %Abc_TtCofactor0p.exit

bb.g:                                             ; preds = %bb.e
  %i.dk = add nsw i32 %i.bx, -6                   ; 4 uses
  %i.dl = shl nuw i32 1, %i.dk                    ; 4 uses
  br i1 %i.bl, label %.preheader.lr.ph.i, label %Abc_TtCofactor0p.exit

.preheader.lr.ph.i:                               ; preds = %bb.g
  %.not.i = icmp eq i32 %i.dk, 31
  %i.dm = shl i32 2, %i.dk
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  br i1 %.not.i, label %Abc_TtCofactor0p.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.do = sext i32 %i.dl to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.dl, i32 1)
  %min.iters.check233 = icmp slt i32 %i.dl, 4
  %i.dp = and i32 %smax.i, 2147483644
  %n.vec235 = zext nneg i32 %i.dp to i64
  %exitcond.not.i50 = icmp slt i32 %i.dl, 2
  %exitcond.not.i50.1 = icmp eq i32 %i.dk, 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.04251.us.i = phi ptr [ %i.ef, %._crit_edge.us.i ], [ %i.a, %.preheader.us.preheader.i ] ; 6 uses
  %.04350.us.i = phi ptr [ %i.ee, %._crit_edge.us.i ], [ %1, %.preheader.us.preheader.i ] ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.do ; 4 uses
  br i1 %min.iters.check233, label %scalar.ph232, label %vector.body236

vector.body236:                                   ; preds = %.preheader.us.i, %vector.body236
  %index237 = phi i64 [ %index.next240, %vector.body236 ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index237 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load238 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !45 ; 2 uses
  %wide.load239 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index237 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x i64> %wide.load238, ptr %i.ds, align 8, !tbaa !45
  store <2 x i64> %wide.load239, ptr %i.dt, align 8, !tbaa !45
  %i.du = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index237 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  store <2 x i64> %wide.load238, ptr %i.du, align 8, !tbaa !45
  store <2 x i64> %wide.load239, ptr %i.dv, align 8, !tbaa !45
  %index.next240 = add nuw i64 %index237, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next240, %n.vec235
  br i1 %i.dw, label %._crit_edge.us.i, label %vector.body236, !llvm.loop !136

scalar.ph232:                                     ; preds = %.preheader.us.i
  %i.dx = load i64, ptr %.04350.us.i, align 8, !tbaa !45 ; 2 uses
  store i64 %i.dx, ptr %.04251.us.i, align 8, !tbaa !45
  store i64 %i.dx, ptr %invariant.gep.i, align 8, !tbaa !45
  br i1 %exitcond.not.i50, label %._crit_edge.us.i, label %scalar.ph232.1

scalar.ph232.1:                                   ; preds = %scalar.ph232
  %i.dy = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !45 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 8
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !45
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 8
  store i64 %i.dz, ptr %gep.i.1, align 8, !tbaa !45
  br i1 %exitcond.not.i50.1, label %._crit_edge.us.i, label %scalar.ph232.2

scalar.ph232.2:                                   ; preds = %scalar.ph232.1
  %i.eb = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 16
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !45
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 16
  store i64 %i.ec, ptr %gep.i.2, align 8, !tbaa !45
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body236, %scalar.ph232, %scalar.ph232.1, %scalar.ph232.2
  %i.ee = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.dn ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.dn
  %i.eg = icmp ult ptr %i.ee, %i.bk
  br i1 %i.eg, label %.preheader.us.i, label %Abc_TtCofactor0p.exit, !llvm.loop !11

Abc_TtCofactor0p.exit:                            ; preds = %._crit_edge.us.i, %vector.body222, %scalar.ph214, %scalar.ph214.2, %bb.d, %bb.f, %bb.g, %.preheader.lr.ph.i
  br i1 %4, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %Abc_TtCofactor0p.exit
  %i.eh = load i64, ptr %i.a, align 16, !tbaa !45 ; 12 uses
  %i.ei = lshr i64 %i.eh, 1
  %i.ej = xor i64 %i.ei, %i.eh
  %.fr = freeze i64 %i.ej
  %i.ek = and i64 %.fr, 6148914691236517205
  %.not17.us.i = icmp ne i64 %i.ek, 0
  %i.el = zext i1 %.not17.us.i to i32             ; 2 uses
  br i1 %exitcond55.not.i, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.em = lshr i64 %i.eh, 2
  %i.en = xor i64 %i.em, %i.eh
  %.fr258 = freeze i64 %i.en
  %i.eo = and i64 %.fr258, 3689348814741910323
  %.not17.us.i.1 = icmp ne i64 %i.eo, 0
  %i.ep = zext i1 %.not17.us.i.1 to i32
  %spec.select.i58.1 = add nuw nsw i32 %i.el, %i.ep ; 2 uses
  br i1 %exitcond55.not.i.1, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.eq = lshr i64 %i.eh, 4
  %i.er = xor i64 %i.eq, %i.eh
  %.fr259 = freeze i64 %i.er
  %i.es = and i64 %.fr259, 1085102592571150095
  %.not17.us.i.2 = icmp ne i64 %i.es, 0
  %i.et = zext i1 %.not17.us.i.2 to i32
  %spec.select.i58.2 = add nuw nsw i32 %spec.select.i58.1, %i.et ; 2 uses
  br i1 %exitcond55.not.i.2, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.eu = lshr i64 %i.eh, 8
  %i.ev = xor i64 %i.eu, %i.eh
  %.fr260 = freeze i64 %i.ev
  %i.ew = and i64 %.fr260, 71777214294589695
  %.not17.us.i.3 = icmp ne i64 %i.ew, 0
  %i.ex = zext i1 %.not17.us.i.3 to i32
  %spec.select.i58.3 = add nuw nsw i32 %spec.select.i58.2, %i.ex ; 2 uses
  br i1 %exitcond55.not.i.3, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.ey = lshr i64 %i.eh, 16
  %i.ez = xor i64 %i.ey, %i.eh
  %.fr261 = freeze i64 %i.ez
  %i.fa = and i64 %.fr261, 281470681808895
  %.not17.us.i.4 = icmp ne i64 %i.fa, 0
  %i.fb = zext i1 %.not17.us.i.4 to i32
  %spec.select.i58.4 = add nuw nsw i32 %spec.select.i58.3, %i.fb ; 2 uses
  br i1 %exitcond55.not.i.4, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.fc = lshr i64 %i.eh, 32
  %.masked = and i64 %i.eh, 4294967295
  %i.fd = xor i64 %i.fc, %.masked
  %.fr.us.i.5 = freeze i64 %i.fd
  %.not17.us.i.5 = icmp ne i64 %.fr.us.i.5, 0
  %i.fe = zext i1 %.not17.us.i.5 to i32
  %spec.select.i58.5 = add nuw nsw i32 %spec.select.i58.4, %i.fe
  br label %Abc_TtSupportSize.exit

.lr.ph.split.i:                                   ; preds = %Abc_TtCofactor0p.exit
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.i, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i56, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 5 uses
  %.022.i = phi i32 [ %i.gd, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.ff = icmp samesign ult i64 %indvars.iv.i55, 6
  br i1 %i.ff, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.fg = trunc nuw nsw i64 %indvars.iv.i55 to i32
  %i.fh = shl nuw nsw i32 1, %i.fg
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i55
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.i, !llvm.loop !12

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.h ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !45 ; 2 uses
  %i.fn = lshr i64 %i.fm, %i.fi
  %i.fo = xor i64 %i.fn, %i.fm
  %i.fp = and i64 %i.fo, %i.fk
  %.not39.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not39.i.i, label %bb.h, label %Abc_TtHasVar.exit.thread13.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.fq = add nsw i64 %indvars.iv.i55, -6         ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 31
  %i.fs = trunc nuw nsw i64 %i.fq to i32          ; 2 uses
  %i.ft = shl i32 2, %i.fs
  %i.fu = sext i32 %i.ft to i64
  br i1 %i.fr, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.fv = shl nuw nsw i32 1, %i.fs                ; 2 uses
  %i.fw = zext nneg i32 %i.fv to i64
  %wide.trip.count.i.i = zext nneg i32 %i.fv to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ga, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %i.fw
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.k, !llvm.loop !9

bb.k:                                             ; preds = %bb.j, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.fz = load i64, ptr %gep.i.i, align 8, !tbaa !45
  %.not.us.i.i = icmp eq i64 %i.fy, %i.fz
  br i1 %.not.us.i.i, label %bb.j, label %Abc_TtHasVar.exit.thread13.i

._crit_edge.us.i.i:                               ; preds = %bb.j
  %i.ga = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.fu ; 2 uses
  %i.gb = icmp ult ptr %i.ga, %i.bn
  br i1 %i.gb, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !10

Abc_TtHasVar.exit.thread13.i:                     ; preds = %bb.i, %bb.k
  %i.gc = add nsw i32 %.022.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.h, %Abc_TtHasVar.exit.thread13.i, %.preheader.lr.ph.i.i
  %i.gd = phi i32 [ %i.gc, %Abc_TtHasVar.exit.thread13.i ], [ %.022.i, %bb.h ], [ %.022.i, %.preheader.lr.ph.i.i ], [ %.022.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i54
  br i1 %exitcond.not.i57, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i, !llvm.loop !137

Abc_TtSupportSize.exit:                           ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5, %.lr.ph.split.i
  %.0.lcssa.i = phi i32 [ %spec.select.i58.5, %Abc_TtHasVar.exit.us.i.5 ], [ 0, %.lr.ph.split.i ], [ %i.el, %.lr.ph.split.us.i ], [ %spec.select.i58.1, %Abc_TtHasVar.exit.us.i.1 ], [ %spec.select.i58.2, %Abc_TtHasVar.exit.us.i.2 ], [ %spec.select.i58.3, %Abc_TtHasVar.exit.us.i.3 ], [ %spec.select.i58.4, %Abc_TtHasVar.exit.us.i.4 ], [ %i.gd, %Abc_TtHasVar.exit.thread.i ]
  %i.ge = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %Abc_TtSupportSize.exit
  %i.gf = load i64, ptr %1, align 8, !tbaa !45
  %i.gg = sext i32 %i.bx to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !45
  %i.gj = and i64 %i.gi, %i.gf                    ; 2 uses
  %i.gk = shl nuw i32 1, %i.bx
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = lshr i64 %i.gj, %i.gl
  %i.gn = or i64 %i.gm, %i.gj
  store i64 %i.gn, ptr %i.a, align 16, !tbaa !45
  br label %Abc_TtCofactor1p.exit

bb.m:                                             ; preds = %Abc_TtSupportSize.exit
  %i.go = icmp slt i32 %i.bx, 6
  br i1 %i.go, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.bl, label %.lr.ph.i70, label %Abc_TtCofactor1p.exit

.lr.ph.i70:                                       ; preds = %bb.n
  %i.gp = shl nuw nsw i32 1, %i.bx
  %i.gq = sext i32 %i.bx to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.gq
  %i.gs = zext nneg i32 %i.gp to i64              ; 4 uses
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !45 ; 4 uses
  br i1 %min.iters.check190, label %scalar.ph189, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i70
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph191
  %index196 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body195 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index196 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !tbaa !45
  %wide.load197 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !45
  %i.gw = and <2 x i64> %broadcast.splat194, %wide.load ; 2 uses
  %i.gx = and <2 x i64> %broadcast.splat194, %wide.load197 ; 2 uses
  %i.gy = lshr <2 x i64> %i.gw, %broadcast.splat
  %i.gz = lshr <2 x i64> %i.gx, %broadcast.splat
  %i.ha = or <2 x i64> %i.gy, %i.gw
  %i.hb = or <2 x i64> %i.gz, %i.gx
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index196 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store <2 x i64> %i.ha, ptr %i.hc, align 16, !tbaa !45
  store <2 x i64> %i.hb, ptr %i.hd, align 16, !tbaa !45
  %index.next198 = add nuw i64 %index196, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.he, label %Abc_TtCofactor1p.exit, label %vector.body195, !llvm.loop !138

scalar.ph189:                                     ; preds = %.lr.ph.i70
  %i.hf = load i64, ptr %1, align 8, !tbaa !45
  %i.hg = and i64 %i.gt, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, %i.gs
  %i.hi = or i64 %i.hh, %i.hg
  store i64 %i.hi, ptr %i.a, align 16, !tbaa !45
  %i.hj = load i64, ptr %i.bs, align 8, !tbaa !45
  %i.hk = and i64 %i.gt, %i.hj                    ; 2 uses
  %i.hl = lshr i64 %i.hk, %i.gs
  %i.hm = or i64 %i.hl, %i.hk
  store i64 %i.hm, ptr %i.bt, align 8, !tbaa !45
  br i1 %exitcond62.not.i.1, label %Abc_TtCofactor1p.exit, label %scalar.ph189.2

scalar.ph189.2:                                   ; preds = %scalar.ph189
  %i.hn = load i64, ptr %i.bu, align 8, !tbaa !45
  %i.ho = and i64 %i.gt, %i.hn                    ; 2 uses
  %i.hp = lshr i64 %i.ho, %i.gs
  %i.hq = or i64 %i.hp, %i.ho
  store i64 %i.hq, ptr %i.bv, align 16, !tbaa !45
  br label %Abc_TtCofactor1p.exit

bb.o:                                             ; preds = %bb.m
  %i.hr = add nsw i32 %i.bx, -6                   ; 4 uses
  %i.hs = shl nuw i32 1, %i.hr                    ; 4 uses
  br i1 %i.bl, label %.preheader.lr.ph.i60, label %Abc_TtCofactor1p.exit

.preheader.lr.ph.i60:                             ; preds = %bb.o
  %.not.i61 = icmp eq i32 %i.hr, 31
  %i.ht = shl i32 2, %i.hr
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  br i1 %.not.i61, label %Abc_TtCofactor1p.exit, label %.preheader.us.preheader.i62

.preheader.us.preheader.i62:                      ; preds = %.preheader.lr.ph.i60
  %i.hv = sext i32 %i.hs to i64                   ; 5 uses
  %smax.i63 = call i32 @llvm.smax.i32(i32 %i.hs, i32 1)
  %min.iters.check203 = icmp slt i32 %i.hs, 4
  %i.hw = and i32 %smax.i63, 2147483644
  %n.vec205 = zext nneg i32 %i.hw to i64
  %exitcond.not.i68 = icmp slt i32 %i.hs, 2
  %i.hx = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %exitcond.not.i68.1 = icmp eq i32 %i.hr, 1
  %i.hy = add nuw nsw i64 %i.hv, 2                ; 2 uses
  br label %.preheader.us.i65

.preheader.us.i65:                                ; preds = %._crit_edge.us.i69, %.preheader.us.preheader.i62
  %.04453.us.i = phi ptr [ %i.it, %._crit_edge.us.i69 ], [ %i.a, %.preheader.us.preheader.i62 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.is, %._crit_edge.us.i69 ], [ %1, %.preheader.us.preheader.i62 ] ; 5 uses
  br i1 %min.iters.check203, label %scalar.ph202, label %vector.body206

vector.body206:                                   ; preds = %.preheader.us.i65, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader.us.i65 ] ; 3 uses
  %i.hz = add nuw nsw i64 %index207, %i.hv        ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load208 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !45 ; 2 uses
  %wide.load209 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !45 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index207 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x i64> %wide.load208, ptr %i.ic, align 8, !tbaa !45
  store <2 x i64> %wide.load209, ptr %i.id, align 8, !tbaa !45
  %i.ie = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.hz ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x i64> %wide.load208, ptr %i.ie, align 8, !tbaa !45
  store <2 x i64> %wide.load209, ptr %i.if, align 8, !tbaa !45
  %index.next210 = add nuw i64 %index207, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.ig, label %._crit_edge.us.i69, label %vector.body206, !llvm.loop !139

scalar.ph202:                                     ; preds = %.preheader.us.i65
  %i.ih = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.hv
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !45 ; 2 uses
  store i64 %i.ii, ptr %.04453.us.i, align 8, !tbaa !45
  %i.ij = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.hv
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !45
  br i1 %exitcond.not.i68, label %._crit_edge.us.i69, label %scalar.ph202.1

scalar.ph202.1:                                   ; preds = %scalar.ph202
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.hx
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !45
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.hx
  store i64 %i.il, ptr %i.in, align 8, !tbaa !45
  br i1 %exitcond.not.i68.1, label %._crit_edge.us.i69, label %scalar.ph202.2

scalar.ph202.2:                                   ; preds = %scalar.ph202.1
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.hy
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !45 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 16
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !45
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.hy
  store i64 %i.ip, ptr %i.ir, align 8, !tbaa !45
  br label %._crit_edge.us.i69

._crit_edge.us.i69:                               ; preds = %vector.body206, %scalar.ph202, %scalar.ph202.1, %scalar.ph202.2
  %i.is = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.hu ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.hu
  %i.iu = icmp ult ptr %i.is, %i.bk
  br i1 %i.iu, label %.preheader.us.i65, label %Abc_TtCofactor1p.exit, !llvm.loop !13

Abc_TtCofactor1p.exit:                            ; preds = %._crit_edge.us.i69, %vector.body195, %scalar.ph189, %scalar.ph189.2, %bb.l, %bb.n, %bb.o, %.preheader.lr.ph.i60
  br i1 %4, label %.lr.ph.split.us.i106, label %.lr.ph.split.i77

.lr.ph.split.us.i106:                             ; preds = %Abc_TtCofactor1p.exit
  %i.iv = load i64, ptr %i.a, align 16, !tbaa !45 ; 12 uses
  %i.iw = lshr i64 %i.iv, 1
  %i.ix = xor i64 %i.iw, %i.iv
  %.fr262 = freeze i64 %i.ix
  %i.iy = and i64 %.fr262, 6148914691236517205
  %.not17.us.i112 = icmp ne i64 %i.iy, 0
  %i.iz = zext i1 %.not17.us.i112 to i32          ; 2 uses
  br i1 %exitcond55.not.i115, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.1

Abc_TtHasVar.exit.us.i108.1:                      ; preds = %.lr.ph.split.us.i106
  %i.ja = lshr i64 %i.iv, 2
  %i.jb = xor i64 %i.ja, %i.iv
  %.fr263 = freeze i64 %i.jb
  %i.jc = and i64 %.fr263, 3689348814741910323
  %.not17.us.i112.1 = icmp ne i64 %i.jc, 0
  %i.jd = zext i1 %.not17.us.i112.1 to i32
  %spec.select.i113.1 = add nuw nsw i32 %i.iz, %i.jd ; 2 uses
  br i1 %exitcond55.not.i115.1, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.2

Abc_TtHasVar.exit.us.i108.2:                      ; preds = %Abc_TtHasVar.exit.us.i108.1
  %i.je = lshr i64 %i.iv, 4
  %i.jf = xor i64 %i.je, %i.iv
  %.fr264 = freeze i64 %i.jf
  %i.jg = and i64 %.fr264, 1085102592571150095
  %.not17.us.i112.2 = icmp ne i64 %i.jg, 0
  %i.jh = zext i1 %.not17.us.i112.2 to i32
  %spec.select.i113.2 = add nuw nsw i32 %spec.select.i113.1, %i.jh ; 2 uses
  br i1 %exitcond55.not.i115.2, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.3

Abc_TtHasVar.exit.us.i108.3:                      ; preds = %Abc_TtHasVar.exit.us.i108.2
  %i.ji = lshr i64 %i.iv, 8
  %i.jj = xor i64 %i.ji, %i.iv
  %.fr265 = freeze i64 %i.jj
  %i.jk = and i64 %.fr265, 71777214294589695
  %.not17.us.i112.3 = icmp ne i64 %i.jk, 0
  %i.jl = zext i1 %.not17.us.i112.3 to i32
  %spec.select.i113.3 = add nuw nsw i32 %spec.select.i113.2, %i.jl ; 2 uses
  br i1 %exitcond55.not.i115.3, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.4

Abc_TtHasVar.exit.us.i108.4:                      ; preds = %Abc_TtHasVar.exit.us.i108.3
  %i.jm = lshr i64 %i.iv, 16
  %i.jn = xor i64 %i.jm, %i.iv
  %.fr266 = freeze i64 %i.jn
  %i.jo = and i64 %.fr266, 281470681808895
  %.not17.us.i112.4 = icmp ne i64 %i.jo, 0
  %i.jp = zext i1 %.not17.us.i112.4 to i32
  %spec.select.i113.4 = add nuw nsw i32 %spec.select.i113.3, %i.jp ; 2 uses
  br i1 %exitcond55.not.i115.4, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.5

Abc_TtHasVar.exit.us.i108.5:                      ; preds = %Abc_TtHasVar.exit.us.i108.4
  %i.jq = lshr i64 %i.iv, 32
  %.masked267 = and i64 %i.iv, 4294967295
  %i.jr = xor i64 %i.jq, %.masked267
  %.fr.us.i111.5 = freeze i64 %i.jr
  %.not17.us.i112.5 = icmp ne i64 %.fr.us.i111.5, 0
  %i.js = zext i1 %.not17.us.i112.5 to i32
  %spec.select.i113.5 = add nuw nsw i32 %spec.select.i113.4, %i.js
  br label %Abc_TtSupportSize.exit116

.lr.ph.split.i77:                                 ; preds = %Abc_TtCofactor1p.exit
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit116, label %.lr.ph.split.split.split.i81

.lr.ph.split.split.split.i81:                     ; preds = %.lr.ph.split.i77, %Abc_TtHasVar.exit.thread.i95
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i96, %Abc_TtHasVar.exit.thread.i95 ], [ 0, %.lr.ph.split.i77 ] ; 5 uses
  %.022.i83 = phi i32 [ %i.kr, %Abc_TtHasVar.exit.thread.i95 ], [ 0, %.lr.ph.split.i77 ] ; 4 uses
  %i.jt = icmp samesign ult i64 %indvars.iv.i82, 6
  br i1 %i.jt, label %.lr.ph.i.i101, label %.preheader.lr.ph.i.i84

.lr.ph.i.i101:                                    ; preds = %.lr.ph.split.split.split.i81
  %i.ju = trunc nuw nsw i64 %indvars.iv.i82 to i32
  %i.jv = shl nuw nsw i32 1, %i.ju
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i82
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !45
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next54.i.i104 = add nuw nsw i64 %indvars.iv53.i.i102, 1 ; 2 uses
  %exitcond58.not.i.i105 = icmp eq i64 %indvars.iv.next54.i.i104, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i105, label %Abc_TtHasVar.exit.thread.i95, label %bb.q, !llvm.loop !12

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i101
  %indvars.iv53.i.i102 = phi i64 [ 0, %.lr.ph.i.i101 ], [ %indvars.iv.next54.i.i104, %bb.p ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i102
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !45 ; 2 uses
  %i.kb = lshr i64 %i.ka, %i.jw
  %i.kc = xor i64 %i.kb, %i.ka
  %i.kd = and i64 %i.kc, %i.jy
  %.not39.i.i103 = icmp eq i64 %i.kd, 0
  br i1 %.not39.i.i103, label %bb.p, label %Abc_TtHasVar.exit.thread13.i94

.preheader.lr.ph.i.i84:                           ; preds = %.lr.ph.split.split.split.i81
  %i.ke = add nsw i64 %indvars.iv.i82, -6         ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 31
  %i.kg = trunc nuw nsw i64 %i.ke to i32          ; 2 uses
  %i.kh = shl i32 2, %i.kg
  %i.ki = sext i32 %i.kh to i64
  br i1 %i.kf, label %Abc_TtHasVar.exit.thread.i95, label %.preheader.us.preheader.i.i85

.preheader.us.preheader.i.i85:                    ; preds = %.preheader.lr.ph.i.i84
  %i.kj = shl nuw nsw i32 1, %i.kg                ; 2 uses
  %i.kk = zext nneg i32 %i.kj to i64
  %wide.trip.count.i.i87 = zext nneg i32 %i.kj to i64
  br label %.preheader.us.i.i88

.preheader.us.i.i88:                              ; preds = %._crit_edge.us.i.i100, %.preheader.us.preheader.i.i85
  %.03343.us.i.i89 = phi ptr [ %i.ko, %._crit_edge.us.i.i100 ], [ %i.a, %.preheader.us.preheader.i.i85 ] ; 3 uses
  %invariant.gep.i.i90 = getelementptr [8 x i8], ptr %.03343.us.i.i89, i64 %i.kk
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i91, 1 ; 2 uses
  %exitcond.not.i.i99 = icmp eq i64 %indvars.iv.next.i.i98, %wide.trip.count.i.i87
  br i1 %exitcond.not.i.i99, label %._crit_edge.us.i.i100, label %bb.s, !llvm.loop !9

bb.s:                                             ; preds = %bb.r, %.preheader.us.i.i88
  %indvars.iv.i.i91 = phi i64 [ 0, %.preheader.us.i.i88 ], [ %indvars.iv.next.i.i98, %bb.r ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i89, i64 %indvars.iv.i.i91
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !45
  %gep.i.i92 = getelementptr [8 x i8], ptr %invariant.gep.i.i90, i64 %indvars.iv.i.i91
  %i.kn = load i64, ptr %gep.i.i92, align 8, !tbaa !45
  %.not.us.i.i93 = icmp eq i64 %i.km, %i.kn
  br i1 %.not.us.i.i93, label %bb.r, label %Abc_TtHasVar.exit.thread13.i94

._crit_edge.us.i.i100:                            ; preds = %bb.r
  %i.ko = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i89, i64 %i.ki ; 2 uses
  %i.kp = icmp ult ptr %i.ko, %i.bn
  br i1 %i.kp, label %.preheader.us.i.i88, label %Abc_TtHasVar.exit.thread.i95, !llvm.loop !10

Abc_TtHasVar.exit.thread13.i94:                   ; preds = %bb.q, %bb.s
  %i.kq = add nsw i32 %.022.i83, 1
  br label %Abc_TtHasVar.exit.thread.i95

Abc_TtHasVar.exit.thread.i95:                     ; preds = %._crit_edge.us.i.i100, %bb.p, %Abc_TtHasVar.exit.thread13.i94, %.preheader.lr.ph.i.i84
  %i.kr = phi i32 [ %i.kq, %Abc_TtHasVar.exit.thread13.i94 ], [ %.022.i83, %bb.p ], [ %.022.i83, %.preheader.lr.ph.i.i84 ], [ %.022.i83, %._crit_edge.us.i.i100 ] ; 2 uses
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next.i96, %wide.trip.count.i54
  br i1 %exitcond.not.i97, label %Abc_TtSupportSize.exit116, label %.lr.ph.split.split.split.i81, !llvm.loop !137

Abc_TtSupportSize.exit116:                        ; preds = %Abc_TtHasVar.exit.thread.i95, %.lr.ph.split.us.i106, %Abc_TtHasVar.exit.us.i108.1, %Abc_TtHasVar.exit.us.i108.2, %Abc_TtHasVar.exit.us.i108.3, %Abc_TtHasVar.exit.us.i108.4, %Abc_TtHasVar.exit.us.i108.5, %.lr.ph.split.i77
  %.0.lcssa.i72 = phi i32 [ %spec.select.i113.5, %Abc_TtHasVar.exit.us.i108.5 ], [ 0, %.lr.ph.split.i77 ], [ %i.iz, %.lr.ph.split.us.i106 ], [ %spec.select.i113.1, %Abc_TtHasVar.exit.us.i108.1 ], [ %spec.select.i113.2, %Abc_TtHasVar.exit.us.i108.2 ], [ %spec.select.i113.3, %Abc_TtHasVar.exit.us.i108.3 ], [ %spec.select.i113.4, %Abc_TtHasVar.exit.us.i108.4 ], [ %i.kr, %Abc_TtHasVar.exit.thread.i95 ]
  %i.ks = add nsw i32 %.0.lcssa.i72, %.0.lcssa.i  ; 2 uses
  %i.kt = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.ku = icmp eq i32 %i.ge, 0
  %i.kv = icmp eq i32 %i.kt, 0
  %or.cond.not120 = select i1 %i.ku, i1 %i.kv, i1 false
  %i.kw = icmp sgt i32 %.0137, %i.ks
  %or.cond46 = select i1 %or.cond.not120, i1 %i.kw, i1 false ; 2 uses
  %spec.select = select i1 %or.cond46, i32 %i.bx, i32 %.039136 ; 2 uses
  %spec.select117 = select i1 %or.cond46, i32 %i.ks, i32 %.0137
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count.i54
  br i1 %exitcond159.not, label %.loopexit, label %bb.c, !llvm.loop !140

.loopexit:                                        ; preds = %Abc_TtSupportSize.exit116, %._crit_edge.thread, %bb.b, %bb.a
  %.043 = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -2, %._crit_edge.thread ], [ %spec.select, %Abc_TtSupportSize.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define i32 @Dau_DsdDecompose(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 4 uses
  %5 = alloca %struct.Dau_Dsd_t_, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %2, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %3, ptr %i.c, align 4, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !54
  %i.f = load i64, ptr %0, align 8, !tbaa !45
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  %i.i = icmp slt i32 %1, 7
  %i.j = add nsw i32 %1, -6
  %i.k = shl nuw i32 1, %i.j
  %i.l = select i1 %i.i, i32 1, i32 %i.k          ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0                     ; 2 uses
  br i1 %i.h, label %bb.b, label %Abc_TtIsConst0.exit.thread55

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
end_hunk_0
begin_hunk_1_@Dau_Dsd6DecomposeTripleVars:bb.a
.lr.ph.i90.i:                                     ; preds = %Dau_DsdAddVarDef.exit.i, %bb.ax
  %indvars.iv.i91.i = phi i64 [ %indvars.iv.next.i92.i, %bb.ax ], [ 0, %Dau_DsdAddVarDef.exit.i ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i91.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !37
  %i.jo = icmp eq i32 %i.jn, %i.ic
  br i1 %i.jo, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i90.i
  %indvars.iv.next.i92.i = add nuw nsw i64 %indvars.iv.i91.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i92.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Dau_DsdFindVarDef.exit.i, label %.lr.ph.i90.i, !llvm.loop !18

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i90.i
  %i.jp = trunc nuw nsw i64 %indvars.iv.i91.i to i32
  br label %Dau_DsdFindVarDef.exit.i

Dau_DsdFindVarDef.exit.i:                         ; preds = %bb.ax, %._crit_edge.loopexit.split.loop.exit.i.i, %Dau_DsdAddVarDef.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %Dau_DsdAddVarDef.exit.i ], [ %i.jp, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.m, %bb.ax ] ; 2 uses
  %i.jq = sext i32 %.0.lcssa.i.i to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !37
  %i.jt = load i32, ptr %i.r, align 4, !tbaa !37
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !37
  store i32 %i.js, ptr %i.r, align 4, !tbaa !37
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %.0.lcssa.i.i, i32 noundef %i.p)
  %i.ju = load i32, ptr %i.j, align 4, !tbaa !56
  %i.jv = add nsw i32 %i.ju, -1
  br i1 %i.s, label %.lr.ph.i96.i, label %Dau_DsdFindVarDef.exit101.i

.lr.ph.i96.i:                                     ; preds = %Dau_DsdFindVarDef.exit.i, %bb.ay
  %indvars.iv.i97.i = phi i64 [ %indvars.iv.next.i98.i, %bb.ay ], [ 0, %Dau_DsdFindVarDef.exit.i ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i97.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !37
  %i.jy = icmp eq i32 %i.jx, %i.jv
  br i1 %i.jy, label %._crit_edge.loopexit.split.loop.exit.i100.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i96.i
  %indvars.iv.next.i98.i = add nuw nsw i64 %indvars.iv.i97.i, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i98.i, %wide.trip.count.i95.i
  br i1 %exitcond.not.i99.i, label %Dau_DsdFindVarDef.exit101.i, label %.lr.ph.i96.i, !llvm.loop !18

._crit_edge.loopexit.split.loop.exit.i100.i:      ; preds = %.lr.ph.i96.i
  %i.jz = trunc nuw nsw i64 %indvars.iv.i97.i to i32
  br label %Dau_DsdFindVarDef.exit101.i

Dau_DsdFindVarDef.exit101.i:                      ; preds = %bb.ay, %._crit_edge.loopexit.split.loop.exit.i100.i, %Dau_DsdFindVarDef.exit.i
  %.0.lcssa.i93.i = phi i32 [ 0, %Dau_DsdFindVarDef.exit.i ], [ %i.jz, %._crit_edge.loopexit.split.loop.exit.i100.i ], [ %i.p, %bb.ay ]
  %i.ka = call fastcc i32 @Dau_Dsd6DecomposeSingleVarOne(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.p, i32 noundef %.0.lcssa.i93.i)
  %.not.i59 = icmp eq i32 %i.ka, 0
  br i1 %.not.i59, label %Dau_Dsd6DecomposeTripleVarsInner.exit.thread107, label %Dau_Dsd6DecomposeTripleVarsInner.exit

Dau_Dsd6DecomposeTripleVarsInner.exit.thread107:  ; preds = %Dau_DsdFindVarDef.exit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.loopexit131

Dau_Dsd6DecomposeTripleVarsInner.exit:            ; preds = %Dau_DsdFindVarDef.exit101.i
  %i.kb = call i32 @Dau_Dsd6DecomposeSingleVar(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.t) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.kc = icmp eq i32 %i.kb, %.041
  br i1 %i.kc, label %Abc_TtSuppOnlyOne.exit.thread, label %.loopexit131

.loopexit131:                                     ; preds = %Dau_Dsd6DecomposeTripleVarsInner.exit, %Dau_Dsd6DecomposeTripleVarsInner.exit.thread107
  %.089.i109 = phi i32 [ %i.p, %Dau_Dsd6DecomposeTripleVarsInner.exit.thread107 ], [ %i.kb, %Dau_Dsd6DecomposeTripleVarsInner.exit ] ; 2 uses
  %i.kd = icmp eq i32 %.089.i109, 0
  br i1 %i.kd, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ke = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #31
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %Abc_Clock.exit61, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kg = load i64, ptr %6, align 8, !tbaa !58
  %i.kh = mul nsw i64 %i.kg, 1000000
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !59
  %i.kk = sdiv i64 %i.kj, 1000
  %i.kl = add nsw i64 %i.kk, %i.kh
  br label %Abc_Clock.exit61

Abc_Clock.exit61:                                 ; preds = %bb.az, %bb.ba
  %.0.i60 = phi i64 [ %i.kl, %bb.ba ], [ -1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.km = add i64 %.0.i60, %.0.i.neg159
  %i.kn = load i64, ptr @s_Times.2, align 16, !tbaa !45
  %i.ko = add nsw i64 %i.km, %i.kn
  store i64 %i.ko, ptr @s_Times.2, align 16, !tbaa !45
  br label %.thread116

bb.bb:                                            ; preds = %.loopexit131
  %.040.in155177 = trunc i64 %indvars.iv to i32
  %i.kp = call i32 @Dau_Dsd6DecomposeDoubleVars(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %.089.i109) ; 2 uses
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.kr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #31
  %i.ks = icmp slt i32 %i.kr, 0
  br i1 %i.ks, label %Abc_Clock.exit63, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kt = load i64, ptr %5, align 8, !tbaa !58
  %i.ku = mul nsw i64 %i.kt, 1000000
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !59
  %i.kx = sdiv i64 %i.kw, 1000
  %i.ky = add nsw i64 %i.kx, %i.ku
  br label %Abc_Clock.exit63

Abc_Clock.exit63:                                 ; preds = %bb.bc, %bb.bd
  %.0.i62 = phi i64 [ %i.ky, %bb.bd ], [ -1, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.kz = add i64 %.0.i62, %.0.i.neg159
  %i.la = load i64, ptr @s_Times.2, align 16, !tbaa !45
  %i.lb = add nsw i64 %i.kz, %i.la
  store i64 %i.lb, ptr @s_Times.2, align 16, !tbaa !45
  br label %.thread116

Abc_TtSuppOnlyOne.exit.thread:                    ; preds = %Abc_TtSuppFindFirst.exit, %bb.s, %bb.r, %Dau_Dsd6DecomposeTripleVarsInner.exit
  %i.lc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.lc, label %.lr.ph.i, label %.loopexit.thread, !llvm.loop !147

.loopexit:                                        ; preds = %bb.c, %bb.bb
  %.040.in143 = phi i32 [ %.040.in155177, %bb.bb ], [ %.041, %bb.c ]
  %.4 = phi i32 [ %i.kp, %bb.bb ], [ %.041, %bb.c ] ; 2 uses
  %i.ld = icmp eq i32 %.040.in143, 0
  br i1 %i.ld, label %.loopexit.thread, label %bb.c

.loopexit.thread:                                 ; preds = %.loopexit, %Abc_TtSuppOnlyOne.exit.thread
  %.4196 = phi i32 [ %.041, %Abc_TtSuppOnlyOne.exit.thread ], [ %.4, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.le = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #31
  %i.lf = icmp slt i32 %i.le, 0
  br i1 %i.lf, label %Abc_Clock.exit65, label %bb.be

bb.be:                                            ; preds = %.loopexit.thread
  %i.lg = load i64, ptr %4, align 8, !tbaa !58
  %i.lh = mul nsw i64 %i.lg, 1000000
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !59
  %i.lk = sdiv i64 %i.lj, 1000
  %i.ll = add nsw i64 %i.lk, %i.lh
  br label %Abc_Clock.exit65

Abc_Clock.exit65:                                 ; preds = %.loopexit.thread, %bb.be
  %.0.i64 = phi i64 [ %i.ll, %bb.be ], [ -1, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.lm = add i64 %.0.i64, %.0.i.neg159
  %i.ln = load i64, ptr @s_Times.2, align 16, !tbaa !45
  %i.lo = add nsw i64 %i.lm, %i.ln
  store i64 %i.lo, ptr @s_Times.2, align 16, !tbaa !45
  br label %.thread116

.thread116:                                       ; preds = %Abc_Clock.exit61, %Abc_Clock.exit63, %Dau_Dsd6DecomposeTripleVarsOuter.exit, %Abc_Clock.exit65
  %.549.ph = phi i32 [ %.4196, %Abc_Clock.exit65 ], [ 0, %Dau_Dsd6DecomposeTripleVarsOuter.exit ], [ 0, %Abc_Clock.exit63 ], [ 0, %Abc_Clock.exit61 ]
  ret i32 %.549.ph
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Dau_Dsd6DecomposeInternal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @Dau_Dsd6DecomposeSingleVar(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Dau_Dsd6DecomposeDoubleVars(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.a) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @Dau_Dsd6DecomposeTripleVars(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.c) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc i32 @Dau_DsdWritePrime(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 1, 3) i32 @Dau_DsdWritePrime(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #18 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 16 uses
  %i.b = alloca [2000 x i8], align 16             ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.e = icmp slt i32 %3, 7
  %i.f = add nsw i32 %3, -6
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = tail call i32 @Dau_DsdCheck1Step(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef %i.j) ; 14 uses
  %i.l = icmp eq i32 %i.k, -2
  br i1 %i.l, label %bb.c, label %Dau_DsdWriteString.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 5 uses
  %i.r = icmp samesign ugt i32 %3, 5
  %i.s = add nsw i32 %3, -2
  %i.t = icmp slt i32 %3, 2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %1, align 8, !tbaa !45
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 15                         ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, 10
  %i.y = trunc nuw nsw i32 %i.w to i8             ; 2 uses
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = add nuw nsw i8 %i.y, 55
  %.0.i.i = select i1 %i.x, i8 %i.z, i8 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %.0.i.i, ptr %i.q, align 1, !tbaa !36
  br label %Abc_TtWriteHexRev.exit

bb.e:                                             ; preds = %bb.c
  %4 = icmp samesign ult i32 %3, 7
  %5 = select i1 %4, i32 1, i32 %i.g              ; 2 uses
  %.not26.i = icmp slt i32 %5, 1
  br i1 %.not26.i, label %Abc_TtWriteHexRev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ac = zext nneg i32 %5 to i64                 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr i8, ptr %1, i64 %.idx.i
  %.01825.i = getelementptr i8, ptr %i.ad, i64 -8
  %notmask.i = shl nsw i32 -1, %i.s
  %i.ae = xor i32 %notmask.i, -1
  %i.af = select i1 %i.r, i32 15, i32 %i.ae       ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 6 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check180 = icmp eq i32 %i.af, 0
  %n.vec182 = and i64 %i.ah, 4294967294           ; 4 uses
  %i.ai = sub nsw i64 %i.ag, %n.vec182
  %broadcast.splatinsert183 = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat184 = shufflevector <2 x i64> %broadcast.splatinsert183, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aj = add nsw <2 x i64> %broadcast.splat184, <i64 0, i64 -1>
  %cmp.n191 = icmp eq i64 %i.ah, %n.vec182
  br label %bb.f

.loopexit.i:                                      ; preds = %scalar.ph179, %middle.block190
  %.lcssa131 = phi ptr [ %i.an, %middle.block190 ], [ %i.bk, %scalar.ph179 ] ; 2 uses
  %.018.i = getelementptr inbounds i8, ptr %.01828.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.018.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %Abc_TtWriteHexRev.exit, label %bb.f, !llvm.loop !148

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.01828.i = phi ptr [ %.018.i, %.loopexit.i ], [ %.01825.i, %.lr.ph.i ] ; 4 uses
  %.01927.i = phi ptr [ %.lcssa131, %.loopexit.i ], [ %i.q, %.lr.ph.i ] ; 6 uses
  br i1 %min.iters.check180, label %scalar.ph179.preheader, label %vector.memcheck177

vector.memcheck177:                               ; preds = %bb.f
  %i.ak = sub i64 %i.ac, %indvar
  %i.al = shl i64 %i.ak, 3
  %scevgep178 = getelementptr i8, ptr %1, i64 %i.al
  %i.am = getelementptr i8, ptr %.01927.i, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.am, i64 1
  %bound0 = icmp ult ptr %.01927.i, %scevgep178
  %bound1 = icmp ult ptr %.01828.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph179.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck177
  %i.an = getelementptr i8, ptr %.01927.i, i64 %n.vec182 ; 2 uses
  %i.ao = load i64, ptr %.01828.i, align 8, !tbaa !45, !alias.scope !165
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph181
  %index186 = phi i64 [ 0, %vector.ph181 ], [ %index.next189, %vector.body185 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %i.aj, %vector.ph181 ], [ %vec.ind.next, %vector.body185 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.01927.i, i64 %index186
  %i.ap = shl nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.aq = and <2 x i64> %i.ap, splat (i64 4294967292)
  %i.ar = lshr <2 x i64> %broadcast.splat188, %i.aq
  %i.as = trunc <2 x i64> %i.ar to <2 x i32>
  %i.at = and <2 x i32> %i.as, splat (i32 15)     ; 2 uses
  %i.au = icmp samesign ult <2 x i32> %i.at, splat (i32 10)
  %i.av = trunc nuw nsw <2 x i32> %i.at to <2 x i8> ; 2 uses
  %i.aw = or disjoint <2 x i8> %i.av, splat (i8 48)
  %i.ax = add nuw nsw <2 x i8> %i.av, splat (i8 55)
  %i.ay = select <2 x i1> %i.au, <2 x i8> %i.aw, <2 x i8> %i.ax
  store <2 x i8> %i.ay, ptr %next.gep, align 1, !tbaa !36, !alias.scope !166, !noalias !165
  %index.next189 = add nuw i64 %index186, 2       ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 -2)
  %i.az = icmp eq i64 %index.next189, %n.vec182
  br i1 %i.az, label %middle.block190, label %vector.body185, !llvm.loop !152

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.loopexit.i, label %scalar.ph179.preheader

scalar.ph179.preheader:                           ; preds = %vector.memcheck177, %bb.f, %middle.block190
  %indvars.iv.i.ph = phi i64 [ %i.ag, %vector.memcheck177 ], [ %i.ag, %bb.f ], [ %i.ai, %middle.block190 ]
  %.123.i.ph = phi ptr [ %.01927.i, %vector.memcheck177 ], [ %.01927.i, %bb.f ], [ %i.an, %middle.block190 ]
  br label %scalar.ph179

scalar.ph179:                                     ; preds = %scalar.ph179.preheader, %scalar.ph179
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph179 ], [ %indvars.iv.i.ph, %scalar.ph179.preheader ] ; 3 uses
  %.123.i = phi ptr [ %i.bk, %scalar.ph179 ], [ %.123.i.ph, %scalar.ph179.preheader ] ; 2 uses
  %i.ba = load i64, ptr %.01828.i, align 8, !tbaa !45
  %i.bb = shl nsw i64 %indvars.iv.i, 2
  %i.bc = and i64 %i.bb, 4294967292
  %i.bd = lshr i64 %i.ba, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 15                       ; 2 uses
  %i.bg = icmp samesign ult i32 %i.bf, 10
  %i.bh = trunc nuw nsw i32 %i.bf to i8           ; 2 uses
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = add nuw nsw i8 %i.bh, 55
  %.0.i21.i = select i1 %i.bg, i8 %i.bi, i8 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %.123.i, i64 1 ; 2 uses
  store i8 %.0.i21.i, ptr %.123.i, align 1, !tbaa !36
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bl = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.bl, label %scalar.ph179, label %.loopexit.i, !llvm.loop !153

Abc_TtWriteHexRev.exit:                           ; preds = %.loopexit.i, %bb.d, %bb.e
  %.2.i = phi ptr [ %i.ab, %bb.d ], [ %i.q, %bb.e ], [ %.lcssa131, %.loopexit.i ]
  %i.bm = ptrtoint ptr %.2.i to i64
  %i.bn = ptrtoint ptr %i.q to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = load i32, ptr %i.n, align 8, !tbaa !60
  %i.br = add nsw i32 %i.bq, %i.bp
  store i32 %i.br, ptr %i.n, align 8, !tbaa !60
  br label %bb.o

Dau_DsdWriteString.exit:                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !60 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !60
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  store i8 60, ptr %i.bx, align 1, !tbaa !36
  tail call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef 0)
  %i.by = icmp eq i32 %i.h, 1                     ; 2 uses
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Dau_DsdWriteString.exit
  %i.bz = load i64, ptr %1, align 8, !tbaa !45
  %i.ca = sext i32 %i.k to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !45
  %i.cd = and i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = shl nuw i32 1, %i.k
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 %i.cd, %i.cf
  %i.ch = or i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.a, align 16, !tbaa !45
  br label %Abc_TtCofactor1p.exit

bb.h:                                             ; preds = %Dau_DsdWriteString.exit
  %i.ci = icmp slt i32 %i.k, 6
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp sgt i32 %i.h, 0
  br i1 %i.cj, label %.lr.ph.i55, label %Abc_TtCofactor1p.exit

.lr.ph.i55:                                       ; preds = %bb.i
  %i.ck = shl nuw nsw i32 1, %i.k
  %i.cl = sext i32 %i.k to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cl
  %i.cn = zext nneg i32 %i.ck to i64              ; 4 uses
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !45 ; 4 uses
  %min.iters.check134 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check134, label %scalar.ph133, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.i55
  %i.cp = and i32 %i.h, 2147483644
  %n.vec136 = zext nneg i32 %i.cp to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat138 = shufflevector <2 x i64> %broadcast.splatinsert137, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body139 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index140 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load141.a = load <2 x i64>, ptr %i.cq, align 8, !tbaa !45
  %wide.load142 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !45
  %i.cs = and <2 x i64> %broadcast.splat138, %wide.load141.a ; 2 uses
  %i.ct = and <2 x i64> %broadcast.splat138, %wide.load142 ; 2 uses
  %i.cu = lshr <2 x i64> %i.cs, %broadcast.splat
  %i.cv = lshr <2 x i64> %i.ct, %broadcast.splat
  %i.cw = or <2 x i64> %i.cu, %i.cs
  %i.cx = or <2 x i64> %i.cv, %i.ct
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index140 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x i64> %i.cw, ptr %i.cy, align 16, !tbaa !45
  store <2 x i64> %i.cx, ptr %i.cz, align 16, !tbaa !45
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.da, label %Abc_TtCofactor1p.exit, label %vector.body139, !llvm.loop !154

scalar.ph133:                                     ; preds = %.lr.ph.i55
  %i.db = load i64, ptr %1, align 8, !tbaa !45
  %i.dc = and i64 %i.co, %i.db                    ; 2 uses
  %i.dd = lshr i64 %i.dc, %i.cn
  %i.de = or i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.a, align 16, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !45
  %i.dh = and i64 %i.co, %i.dg                    ; 2 uses
  %i.di = lshr i64 %i.dh, %i.cn
  %i.dj = or i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !45
  %exitcond62.not.i.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond62.not.i.1, label %Abc_TtCofactor1p.exit, label %scalar.ph133.2

scalar.ph133.2:                                   ; preds = %scalar.ph133
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !45
  %i.dn = and i64 %i.co, %i.dm                    ; 2 uses
end_hunk_1
