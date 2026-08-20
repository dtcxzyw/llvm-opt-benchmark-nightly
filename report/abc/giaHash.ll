inline.NumInlined: 374
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_ManGenZero:bb.a
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
  store <4 x i32> %vec.ind, ptr %i.f, align 4, !tbaa !13
  store <4 x i32> %step.add, ptr %i.g, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !73

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
  store i32 %i.j, ptr %i.i, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph23.preheader, label %.lr.ph, !llvm.loop !74

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.lr.ph23
  %indvars.iv25 = phi i64 [ 0, %.lr.ph23.preheader ], [ %indvars.iv.next26, %.lr.ph23 ] ; 2 uses
  %i.k = tail call i32 @rand() #28
  %i.l = srem i32 %i.k, %0
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv25 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  store i32 %i.q, ptr %i.m, align 4, !tbaa !13
  store i32 %i.n, ptr %i.p, align 4, !tbaa !13
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph23, !llvm.loop !75

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
  store i32 %i.g, ptr %i.h, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = load i32, ptr %i.b, align 4, !tbaa !13
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.c) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not106 = icmp eq i32 %5, 0                    ; 2 uses
  %.not107 = icmp eq i32 %4, 0                    ; 2 uses
  %scevgep195 = getelementptr i8, ptr %3, i64 8
  %scevgep198 = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge127, %._crit_edge
  %.0 = phi i32 [ %2, %._crit_edge ], [ %.1, %._crit_edge127 ] ; 10 uses
  %i.e = icmp sgt i32 %.0, 1                      ; 2 uses
  br i1 %i.e, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %bb.b
  %wide.trip.count143 = zext nneg i32 %.0 to i64
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.c
  %indvars.iv140 = phi i64 [ 1, %.lr.ph114.preheader ], [ %indvars.iv.next141, %bb.c ] ; 3 uses
  %i.f = getelementptr [4 x i8], ptr %3, i64 %indvars.iv140 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %i.i = load i32, ptr %i.f, align 4, !tbaa !13
  %.not = icmp slt i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %._crit_edge115.loopexit

bb.c:                                             ; preds = %.lr.ph114
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge115.thread, label %.lr.ph114, !llvm.loop !79

._crit_edge115.loopexit:                          ; preds = %.lr.ph114
  %i.j = trunc nuw nsw i64 %indvars.iv140 to i32
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %bb.b
  %.1102.lcssa = phi i32 [ 1, %bb.b ], [ %i.j, %._crit_edge115.loopexit ] ; 6 uses
  %i.k = icmp eq i32 %.1102.lcssa, %.0
  br i1 %i.k, label %._crit_edge115.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge115
  %i.l = add nsw i32 %.1102.lcssa, -1
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 3 uses
  %i.p = zext i32 %.1102.lcssa to i64             ; 8 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13   ; 2 uses
  %i.s = icmp sgt i32 %i.o, %i.r
  %6 = getelementptr inbounds [4 x i8], ptr %1, i64 %i.m ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p ; 3 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.r, ptr %i.n, align 4, !tbaa !13
  store i32 %i.o, ptr %i.q, align 4, !tbaa !13
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = load i32, ptr %i.t, align 4, !tbaa !13
  store i32 %8, ptr %6, align 4, !tbaa !13
  store i32 %7, ptr %i.t, align 4, !tbaa !13
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.o, 1
  store i32 %i.u, ptr %i.n, align 4, !tbaa !13
  %i.v = load i32, ptr %6, align 4, !tbaa !13     ; 3 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !13   ; 3 uses
  br i1 %.not106, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  br i1 %.not107, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = xor i32 %i.v, 1
  %i.z = xor i32 %i.w, 1
  %i.aa = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z)
  %i.ab = xor i32 %i.aa, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sink = phi i32 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ], [ %i.x, %bb.g ]
  store i32 %.sink, ptr %6, align 4, !tbaa !13
  %.2118 = add nuw nsw i32 %.1102.lcssa, 1        ; 2 uses
  %i.ad = icmp slt i32 %.2118, %.0
  br i1 %i.ad, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %bb.k
  %i.ae = zext i32 %.2118 to i64                  ; 4 uses
  %i.af = add i32 %.0, -2
  %i.ag = sub i32 %i.af, %.1102.lcssa             ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ag, 7
  br i1 %min.iters.check, label %.lr.ph122.preheader207, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph122.preheader
  %i.aj = shl nuw nsw i64 %i.p, 2                 ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.aj
  %i.ak = add i32 %.0, -2
  %i.al = sub i32 %i.ak, %.1102.lcssa
  %i.am = zext i32 %i.al to i64
  %i.an = add nuw nsw i64 %i.p, %i.am
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.ao
  %scevgep197 = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.ao
  %bound0 = icmp ult ptr %scevgep, %scevgep199
  %bound1 = icmp ult ptr %scevgep197, %scevgep196
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph122.preheader207, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 8589934584              ; 4 uses
  %i.ap = add nuw nsw i64 %n.vec, %i.p
  %i.aq = add nuw nsw i64 %n.vec, %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = add nuw i64 %index, %i.p                ; 2 uses
  %i.as = add nuw i64 %index, %i.ae               ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !13, !alias.scope !80, !noalias !83
  %wide.load200 = load <4 x i32>, ptr %i.au, align 4, !tbaa !13, !alias.scope !80, !noalias !83
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !13, !alias.scope !80, !noalias !83
  store <4 x i32> %wide.load200, ptr %i.aw, align 4, !tbaa !13, !alias.scope !80, !noalias !83
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load201 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !13, !alias.scope !83
  %wide.load202 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !13, !alias.scope !83
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %wide.load201, ptr %i.az, align 4, !tbaa !13, !alias.scope !83
  store <4 x i32> %wide.load202, ptr %i.ba, align 4, !tbaa !13, !alias.scope !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge123, label %.lr.ph122.preheader207

.lr.ph122.preheader207:                           ; preds = %vector.memcheck, %.lr.ph122.preheader, %middle.block
  %indvars.iv145.ph.a = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph122.preheader ], [ %i.ap, %middle.block ]
  %.2.in119.ph = phi i64 [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph122.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader207, %.lr.ph122
  %indvars.iv145.a = phi i64 [ %indvars.iv.next148, %.lr.ph122 ], [ %indvars.iv145.ph.a, %.lr.ph122.preheader207 ] ; 3 uses
  %.2.in119 = phi i64 [ %indvars.iv.next146, %.lr.ph122 ], [ %.2.in119.ph, %.lr.ph122.preheader207 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.2.in119
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv145.a
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.2.in119
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv145.a
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !13
  %indvars.iv.next146 = add nuw nsw i64 %.2.in119, 1 ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv.next146 to i32
  %i.bj = icmp sgt i32 %.0, %i.bi
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv145.a, 1
  br i1 %i.bj, label %.lr.ph122, label %._crit_edge123, !llvm.loop !86

._crit_edge123:                                   ; preds = %.lr.ph122, %middle.block, %bb.k
  %i.bk = add nsw i32 %.0, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %._crit_edge123
  %.1 = phi i32 [ %.0, %bb.e ], [ %i.bk, %._crit_edge123 ] ; 3 uses
  %i.bl = icmp sgt i32 %.1, 0
  br i1 %i.bl, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %bb.l
  %wide.trip.count151 = zext nneg i32 %.1 to i64
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv148 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next149, %.lr.ph126 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv148
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bn) ; 0 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !87

._crit_edge127:                                   ; preds = %.lr.ph126, %bb.l
  %putchar108 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.b

._crit_edge115.thread:                            ; preds = %._crit_edge115, %bb.c
  %i.bp = phi i1 [ true, %bb.c ], [ %i.e, %._crit_edge115 ]
  %i.bq = load i32, ptr %1, align 4, !tbaa !13    ; 4 uses
  br i1 %i.bp, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge115.thread
  %wide.trip.count169 = zext nneg i32 %.0 to i64  ; 3 uses
  br i1 %.not106, label %.lr.ph131.split.us, label %.lr.ph131.split

.lr.ph131.split.us:                               ; preds = %.lr.ph131
  br i1 %.not107, label %.lr.ph131.split.us.split.us, label %.lr.ph131.split.us.split.preheader

.lr.ph131.split.us.split.preheader:               ; preds = %.lr.ph131.split.us
  %i.br = xor i32 %i.bq, 1
  br label %.lr.ph131.split.us.split

.lr.ph131.split.us.split.us:                      ; preds = %.lr.ph131.split.us, %.lr.ph131.split.us.split.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %.lr.ph131.split.us.split.us ], [ 1, %.lr.ph131.split.us ] ; 2 uses
  %.099129.us.us = phi i32 [ %i.bu, %.lr.ph131.split.us.split.us ], [ %i.bq, %.lr.ph131.split.us ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv165
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.099129.us.us, i32 noundef %i.bt) ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge132, label %.lr.ph131.split.us.split.us, !llvm.loop !88

.lr.ph131.split.us.split:                         ; preds = %.lr.ph131.split.us.split.preheader, %.lr.ph131.split.us.split
  %indvars.iv159 = phi i64 [ 1, %.lr.ph131.split.us.split.preheader ], [ %indvars.iv.next160, %.lr.ph131.split.us.split ] ; 2 uses
  %.099129.us = phi i32 [ %i.br, %.lr.ph131.split.us.split.preheader ], [ %i.by, %.lr.ph131.split.us.split ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv159
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = xor i32 %i.bw, 1
  %i.by = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.099129.us, i32 noundef %i.bx) ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count169
  br i1 %exitcond164.not, label %._crit_edge132.loopexit135, label %.lr.ph131.split.us.split, !llvm.loop !88

.lr.ph131.split:                                  ; preds = %.lr.ph131, %.lr.ph131.split
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.lr.ph131.split ], [ 1, %.lr.ph131 ] ; 2 uses
  %.099129 = phi i32 [ %i.cb, %.lr.ph131.split ], [ %i.bq, %.lr.ph131 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv153
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %.099129, i32 noundef %i.ca) ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count169
  br i1 %exitcond158.not, label %._crit_edge132, label %.lr.ph131.split, !llvm.loop !88

._crit_edge132.loopexit135:                       ; preds = %.lr.ph131.split.us.split
  %i.cc = xor i32 %i.by, 1
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.lr.ph131.split, %.lr.ph131.split.us.split.us, %._crit_edge132.loopexit135, %._crit_edge115.thread
  %.099.lcssa = phi i32 [ %i.bq, %._crit_edge115.thread ], [ %i.bu, %.lr.ph131.split.us.split.us ], [ %i.cc, %._crit_edge132.loopexit135 ], [ %i.cb, %.lr.ph131.split ]
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
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.e = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.f = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.g = shl <4 x i32> %i.e, splat (i32 1)
  %i.h = add <4 x i32> %i.g, splat (i32 2)
  %i.i = shl <4 x i32> %i.f, splat (i32 1)
  %i.j = add <4 x i32> %i.i, splat (i32 10)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.h, ptr %i.d, align 4, !tbaa !13
  store <4 x i32> %i.j, ptr %i.k, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.n = shl i32 %indvars.iv.next.tr.i, 1
  store i32 %i.n, ptr %i.m, align 4, !tbaa !13
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManCollectLiterals.exit, label %.lr.ph.i, !llvm.loop !90

Gia_ManCollectLiterals.exit:                      ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.o = tail call ptr @Gia_ManStart(i32 noundef 1000) #28 ; 6 uses
  %i.p = tail call noalias dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.p, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false) #28
  store ptr %i.p, ptr %i.o, align 8, !tbaa !59
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Gia_ManCollectLiterals.exit, %.lr.ph
  %.028 = phi i32 [ %i.r, %.lr.ph ], [ 0, %Gia_ManCollectLiterals.exit ]
  %i.q = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.o) ; 0 uses
  %i.r = add nuw nsw i32 %.028, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %Gia_ManCollectLiterals.exit
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.o)
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #30 ; 4 uses
  %i.t = tail call i64 @time(ptr noundef null) #28
  %i.u = trunc i64 %i.t to i32
  tail call void @srand(i32 noundef %i.u) #28
  br i1 %i.c, label %.lr.ph.preheader.i22, label %Gia_ManGenPerm2.exit

.lr.ph.preheader.i22:                             ; preds = %._crit_edge
  %wide.trip.count.i23 = zext nneg i32 %0 to i64
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.preheader.i22
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.preheader.i22 ], [ %indvars.iv.next.i26, %.lr.ph.i24 ] ; 2 uses
  %i.v = tail call i32 @rand() #28
  %i.w = srem i32 %i.v, %0
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i25
  store i32 %i.w, ptr %i.x, align 4, !tbaa !13
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i23
  br i1 %exitcond.not.i27, label %Gia_ManGenPerm2.exit, label %.lr.ph.i24, !llvm.loop !76

Gia_ManGenPerm2.exit:                             ; preds = %.lr.ph.i24, %._crit_edge
  %i.y = tail call i32 @Gia_ManMultiInputPerm(ptr noundef nonnull %i.o, ptr noundef %i.b, i32 noundef %0, ptr noundef %i.s, i32 noundef 0, i32 noundef 0)
  %i.z = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.o, i32 noundef %i.y) ; 0 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %Gia_ManGenPerm2.exit
  tail call void @free(ptr noundef nonnull %i.s) #28
  br label %bb.c

bb.c:                                             ; preds = %Gia_ManGenPerm2.exit, %bb.b
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define i32 @Gia_ManCube(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
end_hunk_0
