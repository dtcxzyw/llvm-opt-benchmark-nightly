Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaHash?download=true
inline.NumInlined: 374
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_ManAppendCo:bb.a
Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %bb.a ], [ %i.ah, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !19
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.af, ptr %i.be, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.bh = load i64, ptr %i.a, align 4
  %i.bi = and i64 %i.bh, 536870911
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bj
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_IntPush.exit
  %.val18 = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.bl = ptrtoint ptr %.val18 to i64
  %i.bm = sub i64 %i.e, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 12
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 1
  ret i32 %i.bp
}

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #9

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define i32 @Gia_ManHashAndMulti(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val27 = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %i.b = icmp eq i32 %.val27, 0
  br i1 %i.b, label %bb.d, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %.val27, 1
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge40

.preheader.lr.ph:                                 ; preds = %.preheader35
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.c, %.preheader.lr.ph
  %.val30.pre = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.val30 = phi ptr [ %.val30.pre, %.critedge.preheader ], [ %.val32, %.critedge ]
  %indvars.iv42 = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next43, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val30, i64 %indvars.iv42 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.h)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.val32 = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv
  store i32 %i.i, ptr %i.j, align 4, !tbaa !21
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %.val25 = load i32, ptr %i.a, align 4, !tbaa !19 ; 3 uses
  %i.k = trunc i64 %indvars.iv.next43 to i32
  %i.l = or disjoint i32 %i.k, 1
  %i.m = icmp slt i32 %i.l, %.val25
  br i1 %i.m, label %.critedge, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.critedge
  %i.n = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.o = and i32 %.val25, 1
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = add nuw nsw i32 %i.n, 1
  %.val34 = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %i.q = sext i32 %.val25 to i64
  %i.r = getelementptr [4 x i8], ptr %.val34, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv.next
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.p, %bb.b ], [ %i.n, %._crit_edge ] ; 2 uses
  store i32 %.1, ptr %i.a, align 4, !tbaa !19
  %i.v = icmp sgt i32 %.1, 1
  br i1 %i.v, label %.critedge.preheader, label %._crit_edge40, !llvm.loop !75

._crit_edge40:                                    ; preds = %bb.c, %.preheader35
  %i.w = getelementptr i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.x = load i32, ptr %.val28, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge40
  %.023 = phi i32 [ %i.x, %._crit_edge40 ], [ 0, %bb.a ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManHashAndMulti2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val10 = load i32, ptr %i.a, align 4, !tbaa !19
  %i.b = icmp sgt i32 %.val10, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.012 = phi i32 [ 1, %.lr.ph ], [ %i.f, %bb.b ]
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %i.f = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.012, i32 noundef %i.e) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !19
  %i.g = sext i32 %.val to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !76

.critedge:                                        ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManHashDualMiter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val16 = load i32, ptr %i.a, align 4, !tbaa !19
  %i.b = icmp sgt i32 %.val16, 1
  br i1 %i.b, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.018 = phi i32 [ 1, %.critedge.lr.ph ], [ %i.j, %.critedge ]
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %indvars.iv ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.g)
  %i.i = xor i32 %i.h, 1
  %i.j = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.018, i32 noundef %i.i) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !19
  %i.k = trunc i64 %indvars.iv.next to i32
  %i.l = or disjoint i32 %i.k, 1
  %i.m = icmp slt i32 %i.l, %.val
  br i1 %i.m, label %.critedge, label %._crit_edge.loopexit, !llvm.loop !77

._crit_edge.loopexit:                             ; preds = %.critedge
  %i.n = xor i32 %i.j, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManCollectLiterals(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30 ; 3 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.e = shl nuw <4 x i32> %vec.ind, splat (i32 1)
  %i.f = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.g = add <4 x i32> %i.f, splat (i32 8)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.e, ptr %i.d, align 4, !tbaa !21
  store <4 x i32> %i.g, ptr %i.h, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %indvars.iv.next.tr = trunc nuw i64 %indvars.iv.next to i32
  %i.k = shl nuw i32 %indvars.iv.next.tr, 1
  store i32 %i.k, ptr %i.j, align 4, !tbaa !21
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @Gia_ManGenZero(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManGenPerm(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30 ; 5 uses
  %i.c = tail call i64 @time(ptr noundef null) #28
  %i.d = trunc i64 %i.c to i32
  tail call void @srand(i32 noundef %i.d) #28
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind, ptr %i.f, align 4, !tbaa !21
  store <4 x i32> %step.add, ptr %i.g, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph23.preheader, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph23.preheader:                               ; preds = %.lr.ph, %middle.block
  %wide.trip.count28 = zext nneg i32 %0 to i64
  br label %.lr.ph23

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader30 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.j, ptr %i.i, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph23.preheader, label %.lr.ph, !llvm.loop !81

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.lr.ph23
  %indvars.iv25 = phi i64 [ 0, %.lr.ph23.preheader ], [ %indvars.iv.next26, %.lr.ph23 ] ; 2 uses
  %i.k = tail call i32 @rand() #28
  %i.l = srem i32 %i.k, %0
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv25 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  store i32 %i.q, ptr %i.m, align 4, !tbaa !21
  store i32 %i.n, ptr %i.p, align 4, !tbaa !21
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph23, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph23, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManGenPerm2(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30 ; 2 uses
  %i.c = tail call i64 @time(ptr noundef null) #28
  %i.d = trunc i64 %i.c to i32
  tail call void @srand(i32 noundef %i.d) #28
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = tail call i32 @rand() #28
  %i.g = srem i32 %i.f, %0
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.g, ptr %i.h, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Gia_ManMultiCheck(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = load i32, ptr %i.b, align 4, !tbaa !21
  %.not = icmp sgt i32 %i.d, %i.e
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManMultiInputPerm(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.c) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not106 = icmp eq i32 %5, 0                    ; 2 uses
  %.not107 = icmp eq i32 %4, 0                    ; 2 uses
  %scevgep195 = getelementptr i8, ptr %3, i64 8
end_hunk_0
begin_hunk_1_@Gia_ManMultiInputPerm:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ab = xor i32 %i.y, 1
  %i.ac = xor i32 %i.z, 1
  %i.ad = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ac)
  %i.ae = xor i32 %i.ad, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.af = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sink = phi i32 [ %i.ae, %bb.i ], [ %i.af, %bb.j ], [ %i.aa, %bb.g ]
  store i32 %.sink, ptr %i.t, align 4, !tbaa !21
  %.2118 = add nuw nsw i32 %.1102.lcssa, 1        ; 2 uses
  %i.ag = icmp slt i32 %.2118, %.0
  br i1 %i.ag, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %bb.k
  %i.ah = zext i32 %.2118 to i64                  ; 4 uses
  %i.ai = zext i32 %.1102.lcssa to i64            ; 6 uses
  %i.aj = add i32 %.0, -2
  %i.ak = sub i32 %i.aj, %.1102.lcssa             ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 7
  br i1 %min.iters.check, label %.lr.ph122.preheader207, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph122.preheader
  %i.an = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.an
  %i.ao = add i32 %.0, -2
  %i.ap = sub i32 %i.ao, %.1102.lcssa
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.ai, %i.aq
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.as
  %scevgep197 = getelementptr i8, ptr %1, i64 %i.an
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.as
  %bound0 = icmp ult ptr %scevgep, %scevgep199
  %bound1 = icmp ult ptr %scevgep197, %scevgep196
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph122.preheader207, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 8589934584              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ah
  %i.au = add nuw nsw i64 %n.vec, %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = add nuw i64 %index, %i.ah               ; 2 uses
  %i.aw = add i64 %index, %i.ai                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.av ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !21, !alias.scope !92, !noalias !93
  %wide.load200 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !21, !alias.scope !92, !noalias !93
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aw ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %wide.load, ptr %i.az, align 4, !tbaa !21, !alias.scope !92, !noalias !93
  store <4 x i32> %wide.load200, ptr %i.ba, align 4, !tbaa !21, !alias.scope !92, !noalias !93
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load201 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !21, !alias.scope !93
  %wide.load202 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !21, !alias.scope !93
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %wide.load201, ptr %i.bd, align 4, !tbaa !21, !alias.scope !93
  store <4 x i32> %wide.load202, ptr %i.be, align 4, !tbaa !21, !alias.scope !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge123, label %.lr.ph122.preheader207

.lr.ph122.preheader207:                           ; preds = %vector.memcheck, %.lr.ph122.preheader, %middle.block
  %indvars.iv145.ph = phi i64 [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph122.preheader ], [ %i.at, %middle.block ]
  %.2.in119.ph = phi i64 [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph122.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader207, %.lr.ph122
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph122 ], [ %indvars.iv145.ph, %.lr.ph122.preheader207 ] ; 4 uses
  %.2.in119 = phi i64 [ %indvars.iv145, %.lr.ph122 ], [ %.2.in119.ph, %.lr.ph122.preheader207 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv145
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.2.in119
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !21
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv145
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.2.in119
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !21
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv.next146 to i32
  %i.bn = icmp sgt i32 %.0, %i.bm
  br i1 %i.bn, label %.lr.ph122, label %._crit_edge123, !llvm.loop !89

._crit_edge123:                                   ; preds = %.lr.ph122, %middle.block, %bb.k
  %i.bo = add nsw i32 %.0, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %._crit_edge123
  %.1 = phi i32 [ %.0, %bb.e ], [ %i.bo, %._crit_edge123 ] ; 3 uses
  %i.bp = icmp sgt i32 %.1, 0
  br i1 %i.bp, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %bb.l
  %wide.trip.count151 = zext nneg i32 %.1 to i64
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv148 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next149, %.lr.ph126 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv148
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !21
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.br) ; 0 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !90

._crit_edge127:                                   ; preds = %.lr.ph126, %bb.l
  %putchar108 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.b

._crit_edge115.thread:                            ; preds = %._crit_edge115, %bb.c
  %i.bt = phi i1 [ true, %bb.c ], [ %i.e, %._crit_edge115 ]
  %i.bu = load i32, ptr %1, align 4, !tbaa !21    ; 4 uses
  br i1 %i.bt, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge115.thread
  %wide.trip.count169 = zext nneg i32 %.0 to i64  ; 3 uses
  br i1 %.not106, label %.lr.ph131.split.us, label %.lr.ph131.split

.lr.ph131.split.us:                               ; preds = %.lr.ph131
  br i1 %.not107, label %.lr.ph131.split.us.split.us, label %.lr.ph131.split.us.split.preheader

.lr.ph131.split.us.split.preheader:               ; preds = %.lr.ph131.split.us
  %i.bv = xor i32 %i.bu, 1
  br label %.lr.ph131.split.us.split

.lr.ph131.split.us.split.us:                      ; preds = %.lr.ph131.split.us, %.lr.ph131.split.us.split.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %.lr.ph131.split.us.split.us ], [ 1, %.lr.ph131.split.us ] ; 2 uses
  %.099129.us.us = phi i32 [ %i.by, %.lr.ph131.split.us.split.us ], [ %i.bu, %.lr.ph131.split.us ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv165
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  %i.by = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.099129.us.us, i32 noundef %i.bx) ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge132, label %.lr.ph131.split.us.split.us, !llvm.loop !91

.lr.ph131.split.us.split:                         ; preds = %.lr.ph131.split.us.split.preheader, %.lr.ph131.split.us.split
  %indvars.iv159 = phi i64 [ 1, %.lr.ph131.split.us.split.preheader ], [ %indvars.iv.next160, %.lr.ph131.split.us.split ] ; 2 uses
  %.099129.us = phi i32 [ %i.bv, %.lr.ph131.split.us.split.preheader ], [ %i.cc, %.lr.ph131.split.us.split ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv159
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !21
  %i.cb = xor i32 %i.ca, 1
  %i.cc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.099129.us, i32 noundef %i.cb) ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count169
  br i1 %exitcond164.not, label %._crit_edge132.loopexit135, label %.lr.ph131.split.us.split, !llvm.loop !91

.lr.ph131.split:                                  ; preds = %.lr.ph131, %.lr.ph131.split
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.lr.ph131.split ], [ 1, %.lr.ph131 ] ; 2 uses
  %.099129 = phi i32 [ %i.cf, %.lr.ph131.split ], [ %i.bu, %.lr.ph131 ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv153
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !21
  %i.cf = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %.099129, i32 noundef %i.ce) ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count169
  br i1 %exitcond158.not, label %._crit_edge132, label %.lr.ph131.split, !llvm.loop !91

._crit_edge132.loopexit135:                       ; preds = %.lr.ph131.split.us.split
  %i.cg = xor i32 %i.cc, 1
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.lr.ph131.split, %.lr.ph131.split.us.split.us, %._crit_edge132.loopexit135, %._crit_edge115.thread
  %.099.lcssa = phi i32 [ %i.bu, %._crit_edge115.thread ], [ %i.by, %.lr.ph131.split.us.split.us ], [ %i.cg, %._crit_edge132.loopexit135 ], [ %i.cf, %.lr.ph131.split ]
  ret i32 %.099.lcssa
}

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManMultiInputTest(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30 ; 5 uses
  %i.c = icmp sgt i32 %0, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph.preheader.i, label %Gia_ManCollectLiterals.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.e = shl nuw <4 x i32> %vec.ind, splat (i32 1)
  %i.f = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.g = add <4 x i32> %i.f, splat (i32 8)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.e, ptr %i.d, align 4, !tbaa !21
  store <4 x i32> %i.g, ptr %i.h, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %indvars.iv.next.tr.i = trunc nuw i64 %indvars.iv.next.i to i32
  %i.k = shl nuw i32 %indvars.iv.next.tr.i, 1
  store i32 %i.k, ptr %i.j, align 4, !tbaa !21
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i, !llvm.loop !95

Gia_ManCollectLiterals.exit:                      ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.l = tail call ptr @Gia_ManStart(i32 noundef 1000) #28 ; 6 uses
  %i.m = tail call noalias dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false) #28
  store ptr %i.m, ptr %i.l, align 8, !tbaa !53
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Gia_ManCollectLiterals.exit, %.lr.ph
  %.028 = phi i32 [ %i.o, %.lr.ph ], [ 0, %Gia_ManCollectLiterals.exit ]
  %i.n = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.l) ; 0 uses
  %i.o = add nuw nsw i32 %.028, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %.lr.ph, %Gia_ManCollectLiterals.exit
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.l)
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30 ; 4 uses
  %i.q = tail call i64 @time(ptr noundef null) #28
  %i.r = trunc i64 %i.q to i32
  tail call void @srand(i32 noundef %i.r) #28
  br i1 %i.c, label %.lr.ph.preheader.i22, label %Gia_ManGenPerm2.exit

.lr.ph.preheader.i22:                             ; preds = %._crit_edge
  %wide.trip.count.i23 = zext nneg i32 %0 to i64
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.preheader.i22
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.preheader.i22 ], [ %indvars.iv.next.i26, %.lr.ph.i24 ] ; 2 uses
  %i.s = tail call i32 @rand() #28
  %i.t = srem i32 %i.s, %0
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i25
  store i32 %i.t, ptr %i.u, align 4, !tbaa !21
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i23
  br i1 %exitcond.not.i27, label %Gia_ManGenPerm2.exit, label %.lr.ph.i24, !llvm.loop !3

Gia_ManGenPerm2.exit:                             ; preds = %.lr.ph.i24, %._crit_edge
  %i.v = tail call i32 @Gia_ManMultiInputPerm(ptr noundef nonnull %i.l, ptr noundef %i.b, i32 noundef %0, ptr noundef %i.p, i32 noundef 0, i32 noundef 0)
  %i.w = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.l, i32 noundef %i.v) ; 0 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %Gia_ManGenPerm2.exit
  tail call void @free(ptr noundef nonnull %i.p) #28
  br label %bb.c

bb.c:                                             ; preds = %Gia_ManGenPerm2.exit, %bb.b
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define i32 @Gia_ManCube(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = xor i32 %1, -1
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.011 = phi i32 [ 1, %.lr.ph ], [ %i.i, %bb.b ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = lshr i32 %i.b, %i.e
  %i.g = and i32 %i.f, 1
  %i.h = xor i32 %i.d, %i.g
  %i.i = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011, i32 noundef %i.h) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !21
  br label %common.ret17

common.ret17:                                     ; preds = %bb.b, %common.ret
  %common.ret17.op = phi i32 [ %i.b, %common.ret ], [ %i.l, %bb.b ]
  ret i32 %common.ret17.op

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, -1                       ; 4 uses
  %i.d = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.c, ptr noundef %3)
  %i.e = shl nuw i32 1, %i.c
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %3, i64 %i.f
  %i.h = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %i.g)
  %i.i = sext i32 %i.c to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.h, i32 noundef %i.d)
  br label %common.ret17
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Gia_ManUsePerm(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = shl nuw i32 1, %1
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %bb.a
  %.not = icmp eq i32 %1, 31
  br i1 %.not, label %.lr.ph97.split, label %.lr.ph97.split.us.preheader

.lr.ph97.split.us.preheader:                      ; preds = %.lr.ph97
  %i.c = zext nneg i32 %1 to i64                  ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.d = zext nneg i32 %1 to i64
  %wide.trip.count107 = zext nneg i32 %smax to i64
  br label %.lr.ph97.split.us

.lr.ph97.split.us:                                ; preds = %.lr.ph97.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv109 = phi i64 [ 0, %.lr.ph97.split.us.preheader ], [ %indvars.iv.next110, %..loopexit_crit_edge.us ] ; 5 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph97.split.us.preheader ], [ %indvars.iv.next, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 4 uses
  %i.e = icmp samesign ult i64 %indvars.iv.next110, %i.d
  br i1 %i.e, label %.lr.ph.us, label %._crit_edge.us

bb.b:                                             ; preds = %.lr.ph.us, %bb.c
  %indvars.iv101 = phi i64 [ %indvars.iv, %.lr.ph.us ], [ %indvars.iv.next102, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv101
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = icmp sgt i32 %i.am, %i.g
  br i1 %i.h, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next102, %i.c
  br i1 %exitcond.not, label %._crit_edge98, label %bb.b, !llvm.loop !97

._crit_edge.us:                                   ; preds = %bb.b, %.lr.ph97.split.us
  %.085.lcssa.us.in = phi i64 [ %indvars.iv.next110, %.lr.ph97.split.us ], [ %indvars.iv101, %bb.b ] ; 2 uses
  %.085.lcssa.us = trunc i64 %.085.lcssa.us.in to i32 ; 2 uses
  %i.i = icmp eq i32 %1, %.085.lcssa.us
  br i1 %i.i, label %._crit_edge98, label %.lr.ph94.us

.lr.ph94.us:                                      ; preds = %._crit_edge.us
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv109 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = and i64 %.085.lcssa.us.in, 4294967295    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  store i32 %i.n, ptr %i.j, align 4, !tbaa !21
  store i32 %i.k, ptr %i.m, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv109 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  store i32 %i.r, ptr %i.o, align 4, !tbaa !21
  store i32 %i.p, ptr %i.q, align 4, !tbaa !21
  %i.s = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.t = shl nuw i32 1, %i.s                      ; 2 uses
  %i.u = shl nuw i32 1, %.085.lcssa.us            ; 2 uses
end_hunk_1
begin_hunk_2_@Gia_ManDecomp:bb.a
  %or.cond21.i125.epil = or i1 %.not19.i124.epil, %or.cond.i123.epil
  %i.bu = trunc nuw nsw i64 %indvars.iv.i119.epil.init to i32
  %.1.i128.epil = select i1 %or.cond21.i125.epil, i32 %.025.i120.epil.init, i32 %i.bu
  br label %.lr.ph.preheader.i133

.lr.ph.preheader.i133:                            ; preds = %.lr.ph.preheader.i133.unr-lcssa, %.lr.ph.i118.epil.preheader
  %.1.i128.lcssa = phi i32 [ %.1.i128.1, %.lr.ph.preheader.i133.unr-lcssa ], [ %.1.i128.epil, %.lr.ph.i118.epil.preheader ] ; 3 uses
  %i.bv = zext i32 %.1.i128.lcssa to i64          ; 3 uses
  %xtraiter195 = and i64 %wide.trip.count.i, 1
  %i.bw = icmp eq i64 %i.g, 0
  br i1 %i.bw, label %.lr.ph.i135.epil.preheader, label %.lr.ph.preheader.i133.new

.lr.ph.preheader.i133.new:                        ; preds = %.lr.ph.preheader.i133
  %unroll_iter200 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135, %.lr.ph.preheader.i133.new
  %indvars.iv.i136 = phi i64 [ 0, %.lr.ph.preheader.i133.new ], [ %indvars.iv.next.i147.1, %.lr.ph.i135 ] ; 7 uses
  %.025.i137 = phi i32 [ -1, %.lr.ph.preheader.i133.new ], [ %.1.i146.1, %.lr.ph.i135 ]
  %.01524.i138 = phi i32 [ -1, %.lr.ph.preheader.i133.new ], [ %.116.i145.1, %.lr.ph.i135 ] ; 2 uses
  %niter201 = phi i64 [ 0, %.lr.ph.preheader.i133.new ], [ %niter201.next.1, %.lr.ph.i135 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i136
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !21 ; 2 uses
  %i.bz = icmp sge i32 %.01524.i138, %i.by
  %.not.i139 = icmp eq i64 %indvars.iv.i136, %i.ar
  %or.cond.i140 = or i1 %.not.i139, %i.bz
  %.not19.i141 = icmp eq i64 %indvars.iv.i136, %i.bf
  %or.cond21.i142 = or i1 %.not19.i141, %or.cond.i140
  %.not20.i143 = icmp eq i64 %indvars.iv.i136, %i.bv
  %or.cond22.i144 = or i1 %.not20.i143, %or.cond21.i142 ; 2 uses
  %.116.i145 = select i1 %or.cond22.i144, i32 %.01524.i138, i32 %i.by ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.i136 to i32
  %.1.i146 = select i1 %or.cond22.i144, i32 %.025.i137, i32 %i.ca
  %indvars.iv.next.i147 = or disjoint i64 %indvars.iv.i136, 1 ; 5 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i147
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !21 ; 2 uses
  %i.cd = icmp sge i32 %.116.i145, %i.cc
  %.not.i139.1 = icmp eq i64 %indvars.iv.next.i147, %i.ar
  %or.cond.i140.1 = or i1 %.not.i139.1, %i.cd
  %.not19.i141.1 = icmp eq i64 %indvars.iv.next.i147, %i.bf
  %or.cond21.i142.1 = or i1 %.not19.i141.1, %or.cond.i140.1
  %.not20.i143.1 = icmp eq i64 %indvars.iv.next.i147, %i.bv
  %or.cond22.i144.1 = or i1 %.not20.i143.1, %or.cond21.i142.1 ; 2 uses
  %.116.i145.1 = select i1 %or.cond22.i144.1, i32 %.116.i145, i32 %i.cc ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv.next.i147 to i32
  %.1.i146.1 = select i1 %or.cond22.i144.1, i32 %.1.i146, i32 %i.ce ; 3 uses
  %indvars.iv.next.i147.1 = add nuw nsw i64 %indvars.iv.i136, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %Gia_ManLatest.exit149.loopexit.unr-lcssa, label %.lr.ph.i135, !llvm.loop !6

Gia_ManLatest.exit149.loopexit.unr-lcssa:         ; preds = %.lr.ph.i135
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %Gia_ManLatest.exit149, label %.lr.ph.i135.epil.preheader

.lr.ph.i135.epil.preheader:                       ; preds = %Gia_ManLatest.exit149.loopexit.unr-lcssa, %.lr.ph.preheader.i133
  %indvars.iv.i136.epil.init = phi i64 [ 0, %.lr.ph.preheader.i133 ], [ %indvars.iv.next.i147.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ] ; 5 uses
  %.025.i137.epil.init = phi i32 [ -1, %.lr.ph.preheader.i133 ], [ %.1.i146.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ]
  %.01524.i138.epil.init = phi i32 [ -1, %.lr.ph.preheader.i133 ], [ %.116.i145.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i136.epil.init
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !21
  %i.ch = icmp sge i32 %.01524.i138.epil.init, %i.cg
  %.not.i139.epil = icmp eq i64 %indvars.iv.i136.epil.init, %i.ar
  %or.cond.i140.epil = or i1 %.not.i139.epil, %i.ch
  %.not19.i141.epil = icmp eq i64 %indvars.iv.i136.epil.init, %i.bf
  %or.cond21.i142.epil = or i1 %.not19.i141.epil, %or.cond.i140.epil
  %.not20.i143.epil = icmp eq i64 %indvars.iv.i136.epil.init, %i.bv
  %or.cond22.i144.epil = or i1 %.not20.i143.epil, %or.cond21.i142.epil
  %i.ci = trunc nuw nsw i64 %indvars.iv.i136.epil.init to i32
  %.1.i146.epil = select i1 %or.cond22.i144.epil, i32 %.025.i137.epil.init, i32 %i.ci
  br label %Gia_ManLatest.exit149

Gia_ManLatest.exit149:                            ; preds = %.lr.ph.i135.epil.preheader, %Gia_ManLatest.exit149.loopexit.unr-lcssa, %Gia_ManLatest.exit131
  %.0.lcssa.i115167 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i128.lcssa, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i128.lcssa, %.lr.ph.i135.epil.preheader ] ; 3 uses
  %.0.lcssa.i92152156165 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i.lcssa, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i.lcssa, %.lr.ph.i135.epil.preheader ] ; 5 uses
  %i.cj = phi i32 [ %i.bq, %Gia_ManLatest.exit131 ], [ %i.af, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.i135.epil.preheader ] ; 6 uses
  %.0.lcssa.i99158163 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i111.lcssa, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i111.lcssa, %.lr.ph.i135.epil.preheader ] ; 3 uses
  %.0.lcssa.i132 = phi i32 [ -1, %Gia_ManLatest.exit131 ], [ %.1.i146.1, %Gia_ManLatest.exit149.loopexit.unr-lcssa ], [ %.1.i146.epil, %.lr.ph.i135.epil.preheader ]
  %i.ck = add nsw i32 %.0.lcssa.i92152156165, %2
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !21
  %i.co = icmp sgt i32 %i.cn, %i.cj
  br i1 %i.co, label %bb.d, label %bb.m

bb.d:                                             ; preds = %Gia_ManLatest.exit149
  %i.cp = add nsw i32 %.0.lcssa.i99158163, %2
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !21 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, %i.cj
  br i1 %i.ct, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.cu = add nsw i32 %.0.lcssa.i115167, %2
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !21
  %i.cy = icmp sgt i32 %i.cx, %i.cj
  br i1 %i.cy, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cz = add nsw i32 %.0.lcssa.i132, %2
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %3, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !21
  %i.dd = icmp eq i32 %i.dc, %i.cj
  br i1 %i.dd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.de = tail call i32 @Gia_ManDecompThree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nonnull poison, i32 noundef %.0.lcssa.i92152156165, i32 noundef %.0.lcssa.i99158163, i32 noundef %.0.lcssa.i115167)
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.df = add nsw i32 %.0.lcssa.i115167, %2
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !21
  %i.dj = icmp eq i32 %i.di, %i.cj
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dk = tail call i32 @Gia_ManDecompTwo(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nonnull poison, i32 noundef %.0.lcssa.i92152156165, i32 noundef %.0.lcssa.i99158163)
  br label %bb.n

bb.j:                                             ; preds = %bb.d, %bb.h
  %i.dl = icmp eq i32 %i.cs, %i.cj
  br i1 %i.dl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !21
  %i.do = xor i32 %.0.lcssa.i92152156165, 1
  %i.dp = add nsw i32 %i.do, %2
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !21
  store i32 %i.ds, ptr %i.dm, align 4, !tbaa !21
  %i.dt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.du = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.dt)
  %i.dv = icmp sgt i32 %2, 0
  br i1 %i.dv, label %.lr.ph.i.i, label %Gia_ManDecompOne.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.dw = xor i32 %.0.lcssa.i92152156165, -1
  %wide.trip.count.i.i = zext nneg i32 %2 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 3 uses
  %.011.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.ed, %bb.l ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !21
  %i.dz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ea = lshr i32 %i.dw, %i.dz
  %i.eb = and i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, %i.dy
  %i.ed = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.011.i.i, i32 noundef %i.ec) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Gia_ManDecompOne.exit, label %bb.l, !llvm.loop !4

Gia_ManDecompOne.exit:                            ; preds = %bb.l, %bb.k
  %.0.lcssa.i.i = phi i32 [ 1, %bb.k ], [ %i.ed, %bb.l ]
  %i.ee = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.0.lcssa.i.i, i32 noundef %i.dn, i32 noundef %i.du)
  br label %bb.n

bb.m:                                             ; preds = %Gia_ManLatest.exit149, %bb.j
  %i.ef = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.eg = tail call i32 @Gia_ManMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.ef)
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.i, %Gia_ManDecompOne.exit, %bb.m, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.de, %bb.g ], [ %i.dk, %bb.i ], [ %i.ee, %Gia_ManDecompOne.exit ], [ %i.eg, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManMuxTreeTest(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nuw i32 1, %0
  %i.b = add nsw i32 %i.a, %0                     ; 8 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #30 ; 6 uses
  %i.e = icmp sgt i32 %i.b, 0                     ; 3 uses
  br i1 %i.e, label %.lr.ph.preheader.i, label %Gia_ManCollectLiterals.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.g = shl nuw <4 x i32> %vec.ind, splat (i32 1)
  %i.h = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.i = add <4 x i32> %i.h, splat (i32 8)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %i.g, ptr %i.f, align 4, !tbaa !21
  store <4 x i32> %i.i, ptr %i.j, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %indvars.iv.next.tr.i = trunc nuw i64 %indvars.iv.next.i to i32
  %i.m = shl nuw i32 %indvars.iv.next.tr.i, 1
  store i32 %i.m, ptr %i.l, align 4, !tbaa !21
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i, !llvm.loop !103

Gia_ManCollectLiterals.exit:                      ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.n = tail call ptr @Gia_ManStart(i32 noundef 1000) #28 ; 6 uses
  %i.o = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 9, i1 false) #28
  store ptr %i.o, ptr %i.n, align 8, !tbaa !53
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Gia_ManCollectLiterals.exit, %.lr.ph
  %.039 = phi i32 [ %i.q, %.lr.ph ], [ 0, %Gia_ManCollectLiterals.exit ]
  %i.p = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.n) ; 0 uses
  %i.q = add nuw nsw i32 %.039, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %Gia_ManCollectLiterals.exit
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.n)
  %i.r = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #30 ; 8 uses
  %i.s = tail call i64 @time(ptr noundef null) #28
  %i.t = trunc i64 %i.s to i32
  tail call void @srand(i32 noundef %i.t) #28
  br i1 %i.e, label %.lr.ph.preheader.i33, label %.loopexit

.lr.ph.preheader.i33:                             ; preds = %._crit_edge
  %wide.trip.count.i34 = zext nneg i32 %i.b to i64 ; 4 uses
  %min.iters.check42 = icmp ult i32 %i.b, 8
  br i1 %min.iters.check42, label %.lr.ph.i35.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i33
  %n.vec44 = and i64 %wide.trip.count.i34, 2147483640 ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 2 uses
  %vec.ind47 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph43 ], [ %vec.ind.next50, %vector.body45 ] ; 3 uses
  %step.add48 = add <4 x i32> %vec.ind47, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index46 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind47, ptr %i.u, align 4, !tbaa !21
  store <4 x i32> %step.add48, ptr %i.v, align 4, !tbaa !21
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %vec.ind.next50 = add <4 x i32> %vec.ind47, splat (i32 8)
  %i.w = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.w, label %middle.block51, label %vector.body45, !llvm.loop !105

middle.block51:                                   ; preds = %vector.body45
  %cmp.n52 = icmp eq i64 %n.vec44, %wide.trip.count.i34
  br i1 %cmp.n52, label %.lr.ph23.i.preheader, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %.lr.ph.preheader.i33, %middle.block51
  %indvars.iv.i36.ph = phi i64 [ 0, %.lr.ph.preheader.i33 ], [ %n.vec44, %middle.block51 ]
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.preheader, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37, %.lr.ph.i35 ], [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i36
  %i.y = trunc nuw nsw i64 %indvars.iv.i36 to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !21
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i34
  br i1 %exitcond.not.i38, label %.lr.ph23.i.preheader, label %.lr.ph.i35, !llvm.loop !106

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i35, %middle.block51
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.lr.ph23.i ], [ 0, %.lr.ph23.i.preheader ] ; 2 uses
  %i.z = tail call i32 @rand() #28
  %i.aa = srem i32 %i.z, %i.b
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv25.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !21
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !21
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count.i34
  br i1 %exitcond29.not.i, label %.loopexit, label %.lr.ph23.i, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph23.i, %._crit_edge
  %i.ag = sext i32 %0 to i64
  %i.ah = getelementptr [4 x i8], ptr %i.r, i64 %i.ag ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 100, ptr %i.ai, align 4, !tbaa !21
  %i.aj = getelementptr i8, ptr %i.ah, i64 20
  store i32 100, ptr %i.aj, align 4, !tbaa !21
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  store i32 100, ptr %i.ak, align 4, !tbaa !21
  tail call void @Gia_ManUsePerm(ptr noundef %i.d, i32 noundef %0, ptr noundef %i.r)
  %i.al = tail call i32 @Gia_ManDecomp(ptr noundef nonnull %i.n, ptr noundef %i.d, i32 noundef %0, ptr noundef %i.r)
  %i.am = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.n, i32 noundef %i.al) ; 0 uses
  tail call void @free(ptr noundef %i.r) #28
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.d) #28
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !107
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !40
  %i.s = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #26 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !41
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !46  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
end_hunk_2
