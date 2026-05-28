inline.NumInlined: 110
inline.NumDeleted: 21
begin_hunk_0_@add_pass:bb.a
  %i.d = phi i8 [ %i.a, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.01824.i = phi ptr [ %1, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = and i16 %i.g, 8192
  %.not21.i = icmp eq i16 %i.h, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01824.i, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !llvm.loop !86

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.018.lcssa.i = phi ptr [ %1, %bb.a ], [ %.01824.i, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = ptrtoint ptr %.018.lcssa.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %.not32.i = icmp eq i32 %i.p, 0
  br i1 %.not32.i, label %.loopexit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %sext.i = shl i64 %i.m, 32
  %i.s = ashr exact i64 %sext.i, 32
  %wide.trip.count.i = zext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph28.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.z = tail call i32 @strncmp(ptr noundef %i.y, ptr noundef nonnull %.018.lcssa.i, i64 noundef %i.s) #24
  %.not22.i = icmp eq i32 %i.z, 0
  br i1 %.not22.i, label %find_pass.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d, !llvm.loop !94

find_pass.exit:                                   ; preds = %bb.e
  %i.aa = tail call ptr @dup_str(ptr noundef nonnull %1, ptr noundef %2) #25
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.2, ptr noundef %i.aa, i32 noundef %4) #25
  br label %bb.n

.loopexit:                                        ; preds = %bb.f, %.critedge.i
  %i.ab = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #26 ; 8 uses
  %i.ac = tail call ptr @dup_str(ptr noundef nonnull %1, ptr noundef %2) #25
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !93
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.k, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %3, ptr %i.ah, align 4, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !96 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.aj, ptr %i.al, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88 ; 4 uses
  %.not33 = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !88
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.o, align 8, !tbaa !87
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ar
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !89
  br label %bb.n

bb.h:                                             ; preds = %.loopexit
  %i.at = icmp eq ptr %i.an, %i.ao
  %i.au = load i32, ptr %i.o, align 8, !tbaa !87  ; 6 uses
  br i1 %i.at, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i32 %i.au, 1
  store i32 %i.aw, ptr %i.o, align 8, !tbaa !87
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %i.ab, ptr %i.ay, align 8, !tbaa !89
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.az = and i32 %i.au, 7
  %.not34 = icmp eq i32 %i.az, 0
  br i1 %.not34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = add i32 %i.au, 1
  store i32 %i.ba, ptr %i.o, align 8, !tbaa !87
  %i.bb = zext i32 %i.au to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bb
  store ptr %i.ab, ptr %i.bc, align 8, !tbaa !89
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.k
  tail call void @vec_add_internal(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ab) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.j, %bb.l, %bb.m, %find_pass.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_pass_code(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !51      ; 2 uses
  %.not23.i = icmp eq i8 %i.a, 0
  br i1 %.not23.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #27
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.d = phi i8 [ %i.a, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.01824.i = phi ptr [ %2, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = and i16 %i.g, 8192
  %.not21.i = icmp eq i16 %i.h, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01824.i, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !llvm.loop !86

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.018.lcssa.i = phi ptr [ %2, %bb.a ], [ %.01824.i, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = ptrtoint ptr %3 to i64
  %i.l = ptrtoint ptr %.018.lcssa.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %.not32.i = icmp eq i32 %i.p, 0
  br i1 %.not32.i, label %.loopexit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %sext.i = shl i64 %i.m, 32
  %i.s = ashr exact i64 %sext.i, 32
  %wide.trip.count.i = zext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph28.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.z = tail call i32 @strncmp(ptr noundef %i.y, ptr noundef nonnull %.018.lcssa.i, i64 noundef %i.s) #24
  %.not22.i = icmp eq i32 %i.z, 0
  br i1 %.not22.i, label %find_pass.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d, !llvm.loop !94

.loopexit:                                        ; preds = %bb.f, %.critedge.i
  %i.aa = tail call ptr @dup_str(ptr noundef nonnull %2, ptr noundef %3) #25
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.3, ptr noundef %i.aa, i32 noundef %6) #25
  unreachable

find_pass.exit:                                   ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %.not3140 = icmp ugt i32 %i.ad, %i.ae
  br i1 %.not3140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %find_pass.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %i.ah = phi i32 [ %i.ae, %.lr.ph ], [ %i.aw, %bb.o ] ; 3 uses
  %i.ai = phi i32 [ %i.ad, %.lr.ph ], [ %i.ax, %bb.o ] ; 8 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !99 ; 4 uses
  %.not32 = icmp eq ptr %i.aj, null
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !99
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !98
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.al
  store ptr null, ptr %i.am, align 8, !tbaa !100
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.an = icmp eq ptr %i.aj, %i.ag
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i32 %i.ai, 3
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = add nuw nsw i32 %i.ai, 1                ; 2 uses
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !98
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.aq
  store ptr null, ptr %i.ar, align 8, !tbaa !100
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.as = and i32 %i.ai, 7
  %.not33 = icmp eq i32 %i.as, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ab, align 8, !tbaa !98
  %i.au = zext i32 %i.ai to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.au
  store ptr null, ptr %i.av, align 8, !tbaa !100
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.l
  tail call void @vec_add_internal(ptr noundef nonnull %i.ab, ptr noundef null) #25
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !98
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.h
  %i.aw = phi i32 [ %.pre42, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.k ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ax = phi i32 [ %.pre, %bb.n ], [ %i.at, %bb.m ], [ %i.ap, %bb.k ], [ %i.ak, %bb.h ] ; 2 uses
  %.not31 = icmp ugt i32 %i.ax, %i.aw
  br i1 %.not31, label %._crit_edge, label %bb.g, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.o, %find_pass.exit
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.bb = load i32, ptr %i.ac, align 8, !tbaa !97
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  store ptr %i.ay, ptr %i.bd, align 8, !tbaa !100
  %i.be = tail call ptr @dup_str(ptr noundef %4, ptr noundef %5) #25
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !97
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !100 ; 2 uses
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %7, ptr %i.bk, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_internal_production(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ @.str.4, %bb.a ] ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24
  %i.d = add i64 %i.c, 20
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
  %i.h = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.b, i32 noundef %i.g) #25 ; 0 uses
  %i.i = tail call ptr @new_production(ptr noundef %0, ptr noundef nonnull %i.e) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 4 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -29
  %i.m = or disjoint i8 %i.l, 4                   ; 3 uses
  store i8 %i.m, ptr %i.j, align 4
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 1
  %i.q = and i8 %i.m, -26
  %i.r = or disjoint i8 %i.p, %i.q
  store i8 %i.r, ptr %i.j, align 4
  %i.s = load i32, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %.not42 = icmp eq i32 %i.s, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %.041 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]
  %.03240 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.i ] ; 4 uses
  %.03439 = phi ptr [ null, %.lr.ph ], [ %.135, %bb.i ] ; 2 uses
  %.not38 = icmp eq i32 %.041, 0
  %i.v = sext i32 %.03240 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.03439, ptr %i.w, align 8, !tbaa !29
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw nsw i32 %.03240, 1               ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.135 = phi ptr [ %i.x, %bb.f ], [ %i.ac, %bb.h ], [ %.03439, %bb.g ]
  %.133 = phi i32 [ %.03240, %bb.f ], [ %i.z, %bb.h ], [ %.03240, %bb.g ]
  %.1 = phi i32 [ 1, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ]
  %i.ad = add nsw i32 %.133, 1                    ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %i.s
  br i1 %i.ae, label %bb.e, label %.loopexit, !llvm.loop !102

.critedge:                                        ; preds = %bb.c
  %i.af = and i8 %i.m, -26
  store i8 %i.af, ptr %i.j, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %.critedge
  ret ptr %i.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @conditional_EBNF(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = tail call ptr @new_internal_production(ptr noundef %0, ptr noundef %i.b) ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -29
  %i.g = or disjoint i8 %i.f, 8
  store i8 %i.g, ptr %i.d, align 4
  %calloc.i = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !39
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72
  store ptr %calloc.i.i, ptr %i.i, align 8, !tbaa !45
  store i32 3, ptr %calloc.i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %calloc.i, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 152
  store i32 %i.l, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
end_hunk_0
