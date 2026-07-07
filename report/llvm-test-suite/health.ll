inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@check_patients_assess:bb.a
  %i.q = load i32, ptr %i.a, align 8, !tbaa !17
  %i.r = fpext float %i.n to double
  %i.s = fcmp ogt double %i.r, 1.000000e-01
  %i.t = icmp eq i32 %i.q, 0
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @removeList(ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #11
  tail call void @addList(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #11
  store i32 10, ptr %i.i, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = add nsw i32 %i.v, 10
  store i32 %i.w, ptr %i.u, align 4, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.c, align 4, !tbaa !21
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.c, align 4, !tbaa !21
  tail call void @removeList(ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #11
  tail call void @addList(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi ptr [ %.03234, %bb.d ], [ %i.e, %bb.e ], [ %.03234, %bb.b ] ; 2 uses
  %i.z = load ptr, ptr %.035, align 8, !tbaa !26  ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.032.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.f ]
  ret ptr %.032.lcssa
}

declare float @my_rand(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @check_patients_waiting(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.020.us = phi ptr [ %i.k, %.lr.ph.split.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.020.us, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !30
  %i.k = load ptr, ptr %.020.us, align 8, !tbaa !26 ; 2 uses
  %.not.us = icmp eq ptr %i.k, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !36

.lr.ph.splitthread-pre-split:                     ; preds = %bb.d
  %.pr = load i32, ptr %i.a, align 4, !tbaa !21
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.l = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.d, %.lr.ph ] ; 2 uses
  %.020 = phi ptr [ %i.x, %.lr.ph.splitthread-pre-split ], [ %1, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 5 uses
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  %i.p = add nsw i32 %i.l, -1
  store i32 %i.p, ptr %i.a, align 4, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = add nsw i32 %i.s, 3
  store i32 %i.t, ptr %i.r, align 4, !tbaa !30
  tail call void @removeList(ptr noundef nonnull %i.b, ptr noundef %i.n) #11
  tail call void @addList(ptr noundef nonnull %i.c, ptr noundef %i.n) #11
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load ptr, ptr %.020, align 8, !tbaa !26  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @put_in_hosp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !28
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %1, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @addList(ptr noundef nonnull %i.g, ptr noundef nonnull %1) #11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30
  %i.k = add nsw i32 %i.j, 3
  store i32 %i.k, ptr %i.i, align 4, !tbaa !30
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @addList(ptr noundef nonnull %i.l, ptr noundef nonnull %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @generate_patient(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call float @my_rand(i64 noundef %i.b) #11 ; 2 uses
  %i.d = fmul float %i.c, f0x4F000000
  %i.e = fptosi float %i.d to i64
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = fpext float %i.c to double
  %i.g = fcmp ogt double %i.f, 6.660000e-01
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #10 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.k, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @dealwithargs(i32 noundef %0, ptr noundef %1) #11
  %i.a = load i32, ptr @max_level, align 4, !tbaa !4
  %i.b = tail call ptr @alloc_tree(i32 noundef %i.a, i32 noundef 0, ptr noundef null) ; 2 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.c = load i64, ptr @max_time, align 8, !tbaa !41
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.f = urem i32 %i.e, 50
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = tail call ptr @sim(ptr noundef %i.b)     ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i64, ptr @max_time, align 8, !tbaa !41
  %i.k = icmp sgt i64 %i.j, %indvars.iv.next
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.l = tail call { <2 x float>, float } @get_results(ptr noundef %i.b) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  %.sroa.012.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0 ; 3 uses
  %.sroa.012.4.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 1
  %puts17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.m = fpext float %.sroa.012.0.vec.extract to double
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.m) ; 0 uses
  %2 = fdiv float %.sroa.012.4.vec.extract, %.sroa.012.0.vec.extract
  %i.o = fpext float %2 to double
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.o) ; 0 uses
  %3 = fdiv float %.fca.1.extract, %.sroa.012.0.vec.extract
  %i.q = fpext float %3 to double
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.q) ; 0 uses
  ret i32 0
}

declare void @dealwithargs(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @sim(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %put_in_hosp.exit42, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = tail call ptr @sim(ptr noundef %i.c)     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = tail call ptr @sim(ptr noundef %i.f)     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = tail call ptr @sim(ptr noundef %i.i)     ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !25
  %i.l = tail call ptr @sim(ptr noundef %i.k)     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %.not38 = icmp eq ptr %i.d, null
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader46.preheader
  %.03448 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %.not3949 = icmp eq ptr %.03448, null
  br i1 %.not3949, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %put_in_hosp.exit
  %.03450 = phi ptr [ %.034, %put_in_hosp.exit ], [ %.03448, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03450, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 6 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !28
  %i.t = load i32, ptr %i.m, align 4, !tbaa !39   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.m, align 4, !tbaa !39
  tail call void @addList(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #11
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30
  %i.z = add nsw i32 %i.y, 3
  store i32 %i.z, ptr %i.x, align 4, !tbaa !30
  br label %put_in_hosp.exit

bb.c:                                             ; preds = %.lr.ph
  tail call void @addList(ptr noundef nonnull %i.n, ptr noundef nonnull %i.q) #11
  br label %put_in_hosp.exit

put_in_hosp.exit:                                 ; preds = %bb.b, %bb.c
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !27
  tail call void @removeList(ptr noundef nonnull %i.d, ptr noundef %i.aa) #11
  %.034 = load ptr, ptr %.03450, align 8, !tbaa !26 ; 2 uses
  %.not39 = icmp eq ptr %.034, null
  br i1 %.not39, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %put_in_hosp.exit, %.preheader, %.preheader46.preheader
  %.not38.1 = icmp eq ptr %i.g, null
  br i1 %.not38.1, label %.loopexit.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit
  %.03448.1 = load ptr, ptr %i.g, align 8, !tbaa !26 ; 2 uses
  %.not3949.1 = icmp eq ptr %.03448.1, null
  br i1 %.not3949.1, label %.loopexit.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.1, %put_in_hosp.exit.1
  %.03450.1 = phi ptr [ %.034.1, %put_in_hosp.exit.1 ], [ %.03448.1, %.preheader.1 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03450.1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !28
  %i.af = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  tail call void @addList(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ac) #11
  br label %put_in_hosp.exit.1

bb.e:                                             ; preds = %.lr.ph.1
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.m, align 4, !tbaa !39
  tail call void @addList(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ac) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 3, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.al = add nsw i32 %i.ak, 3
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !30
  br label %put_in_hosp.exit.1

put_in_hosp.exit.1:                               ; preds = %bb.e, %bb.d
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !27
  tail call void @removeList(ptr noundef nonnull %i.g, ptr noundef %i.am) #11
  %.034.1 = load ptr, ptr %.03450.1, align 8, !tbaa !26 ; 2 uses
  %.not39.1 = icmp eq ptr %.034.1, null
  br i1 %.not39.1, label %.loopexit.1, label %.lr.ph.1, !llvm.loop !44

.loopexit.1:                                      ; preds = %put_in_hosp.exit.1, %.preheader.1, %.loopexit
  %.not38.2 = icmp eq ptr %i.j, null
  br i1 %.not38.2, label %.loopexit.2, label %.preheader.2

.preheader.2:                                     ; preds = %.loopexit.1
  %.03448.2 = load ptr, ptr %i.j, align 8, !tbaa !26 ; 2 uses
  %.not3949.2 = icmp eq ptr %.03448.2, null
  br i1 %.not3949.2, label %.loopexit.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.2, %put_in_hosp.exit.2
  %.03450.2 = phi ptr [ %.034.2, %put_in_hosp.exit.2 ], [ %.03448.2, %.preheader.2 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03450.2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !28
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !28
  %i.ar = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  tail call void @addList(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ao) #11
  br label %put_in_hosp.exit.2

bb.g:                                             ; preds = %.lr.ph.2
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.m, align 4, !tbaa !39
  tail call void @addList(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ao) #11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 3, ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !30
  %i.ax = add nsw i32 %i.aw, 3
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !30
  br label %put_in_hosp.exit.2

put_in_hosp.exit.2:                               ; preds = %bb.g, %bb.f
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !27
  tail call void @removeList(ptr noundef nonnull %i.j, ptr noundef %i.ay) #11
  %.034.2 = load ptr, ptr %.03450.2, align 8, !tbaa !26 ; 2 uses
  %.not39.2 = icmp eq ptr %.034.2, null
  br i1 %.not39.2, label %.loopexit.2, label %.lr.ph.2, !llvm.loop !44

.loopexit.2:                                      ; preds = %put_in_hosp.exit.2, %.preheader.2, %.loopexit.1
  %.not38.3 = icmp eq ptr %i.l, null
  br i1 %.not38.3, label %.loopexit.3, label %.preheader.3

.preheader.3:                                     ; preds = %.loopexit.2
  %.03448.3 = load ptr, ptr %i.l, align 8, !tbaa !26 ; 2 uses
  %.not3949.3 = icmp eq ptr %.03448.3, null
  br i1 %.not3949.3, label %.loopexit.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.3, %put_in_hosp.exit.3
  %.03450.3 = phi ptr [ %.034.3, %put_in_hosp.exit.3 ], [ %.03448.3, %.preheader.3 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03450.3, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !28
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !28
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.3
  tail call void @addList(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ba) #11
  br label %put_in_hosp.exit.3

bb.i:                                             ; preds = %.lr.ph.3
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.m, align 4, !tbaa !39
  tail call void @addList(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ba) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 3, ptr %i.bg, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !30
  %i.bj = add nsw i32 %i.bi, 3
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !30
  br label %put_in_hosp.exit.3

put_in_hosp.exit.3:                               ; preds = %bb.i, %bb.h
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !27
  tail call void @removeList(ptr noundef nonnull %i.l, ptr noundef %i.bk) #11
  %.034.3 = load ptr, ptr %.03450.3, align 8, !tbaa !26 ; 2 uses
  %.not39.3 = icmp eq ptr %.034.3, null
  br i1 %.not39.3, label %.loopexit.3, label %.lr.ph.3, !llvm.loop !44
end_hunk_0
