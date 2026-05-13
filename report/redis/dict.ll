inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@dictCombineStats:vector.memcheck
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 50
  br i1 %exitcond.not.3, label %.unr-lcssa, label %scalar.ph, !llvm.loop !120
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @dictGetStatsHt(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 8 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.a, ptr %i.c, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19    ; 2 uses
  %.not51 = icmp eq i8 %i.g, -1                   ; 2 uses
  %i.h = sext i8 %i.g to i64
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = select i1 %.not51, i64 0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %i.l, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.e
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.o, ptr %i.p, align 8, !tbaa !113
  %.not = icmp eq i32 %2, 0
  %brmerge = select i1 %.not, i1 true, i1 %.not51
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04249 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.04249
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.a, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !20
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !111
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %dictGetNext.exit
  %.048 = phi i64 [ 0, %bb.d ], [ %i.ad, %dictGetNext.exit ]
  %.04147 = phi ptr [ %i.x, %bb.d ], [ %i.ag, %dictGetNext.exit ] ; 2 uses
  %i.ad = add i64 %.048, 1                        ; 4 uses
  %i.ae = ptrtoint ptr %.04147 to i64
  %i.af = and i64 %i.ae, 3
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %dictGetNext.exit, label %dictGetNext.exit.thread

dictGetNext.exit:                                 ; preds = %bb.e
  %i.ag = load ptr, ptr %.04147, align 8, !tbaa !42 ; 2 uses
  %.not46 = icmp eq ptr %i.ag, null
  br i1 %.not46, label %dictGetNext.exit.thread, label %bb.e, !llvm.loop !124

dictGetNext.exit.thread:                          ; preds = %bb.e, %dictGetNext.exit
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 49)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !20
  %i.al = load i64, ptr %i.u, align 8, !tbaa !112
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.al)
  store i64 %spec.store.select, ptr %i.u, align 8
  %i.am = load i64, ptr %i.v, align 8, !tbaa !125
  %i.an = add i64 %i.am, %i.ad
  store i64 %i.an, ptr %i.v, align 8, !tbaa !125
  br label %bb.f

bb.f:                                             ; preds = %dictGetNext.exit.thread, %bb.c
  %i.ao = add i64 %.04249, 1                      ; 2 uses
  %.042.highbits = lshr i64 %i.ao, %i.i
  %i.ap = icmp eq i64 %.042.highbits, 0
  br i1 %i.ap, label %bb.b, label %.loopexit, !llvm.loop !126

.loopexit:                                        ; preds = %bb.f, %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @dictGetStatsMsg(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = load i32, ptr %2, align 8, !tbaa !122    ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, ptr @.str.12, ptr @.str.13 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.11, i32 noundef %i.d, ptr noundef nonnull %i.f) #21
  %i.h = sext i32 %i.g to i64
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !123
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.d, ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef %i.b) #21
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = sub i64 %1, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !111  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !125
  %i.u = uitofp i64 %i.t to float
  %i.v = uitofp i64 %i.p to float                 ; 2 uses
  %i.w = fdiv float %i.u, %i.v
  %i.x = fpext float %i.w to double
  %i.y = load i64, ptr %i.a, align 8, !tbaa !113
  %i.z = uitofp i64 %i.y to float
  %i.aa = fdiv float %i.z, %i.v
  %i.ab = fpext float %i.aa to double
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.15, i64 noundef %i.p, i64 noundef %i.r, double noundef %i.x, double noundef %i.ab) #21
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.ad, %i.l
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %.053 = phi i64 [ 0, %bb.d ], [ %i.av, %bb.h ]  ; 3 uses
  %.04652 = phi i64 [ %i.ae, %bb.d ], [ %.1, %bb.h ] ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.053
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not51 = icmp ult i64 %.04652, %1
  br i1 %.not51, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.04652
  %i.al = sub nuw i64 %1, %.04652
  %i.am = uitofp i64 %i.ai to float
  %i.an = load i64, ptr %i.i, align 8, !tbaa !123
  %i.ao = uitofp i64 %i.an to float
  %i.ap = fdiv float %i.am, %i.ao
  %i.aq = fmul float %i.ap, 1.000000e+02
  %i.ar = fpext float %i.aq to double
  %i.as = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.16, i64 noundef %.053, i64 noundef %i.ai, double noundef %i.ar) #21
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.04652, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.1 = phi i64 [ %.04652, %bb.e ], [ %i.au, %bb.g ]
  %i.av = add nuw nsw i64 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, 49
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !127

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.c
  %i.aw = getelementptr i8, ptr %0, i64 %1
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  store i8 0, ptr %i.ax, align 1, !tbaa !19
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.b
  %.047 = phi i64 [ %i.h, %bb.b ], [ %i.ay, %.loopexit ]
  ret i64 %.047
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @dictGetStats(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 9 uses
  store i32 0, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.a, ptr %i.c, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19    ; 2 uses
  %.not51.i = icmp eq i8 %i.e, -1                 ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = shl nuw i64 1, %i.g
  %i.i = select i1 %.not51.i, i64 0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.i, ptr %i.j, align 8, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !113
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not51.i
  br i1 %brmerge.i, label %dictGetStatsHt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.04249.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.04249.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.a, align 8, !tbaa !20
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !20
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.p, align 8, !tbaa !111
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.p, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %dictGetNext.exit.i, %bb.d
  %.048.i = phi i64 [ 0, %bb.d ], [ %i.z, %dictGetNext.exit.i ]
  %.04147.i = phi ptr [ %i.t, %bb.d ], [ %i.ac, %dictGetNext.exit.i ] ; 2 uses
  %i.z = add i64 %.048.i, 1                       ; 4 uses
  %i.aa = ptrtoint ptr %.04147.i to i64
  %i.ab = and i64 %i.aa, 3
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %dictGetNext.exit.i, label %dictGetNext.exit.thread.i

dictGetNext.exit.i:                               ; preds = %bb.e
  %i.ac = load ptr, ptr %.04147.i, align 8, !tbaa !42 ; 2 uses
  %.not46.i = icmp eq ptr %i.ac, null
  br i1 %.not46.i, label %dictGetNext.exit.thread.i, label %bb.e, !llvm.loop !124

dictGetNext.exit.thread.i:                        ; preds = %dictGetNext.exit.i, %bb.e
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.z, i64 49)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !20
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !112
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.ah)
  store i64 %spec.store.select.i, ptr %i.q, align 8
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !125
  %i.aj = add i64 %i.ai, %i.z
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !125
  br label %bb.f

bb.f:                                             ; preds = %dictGetNext.exit.thread.i, %bb.c
  %i.ak = add i64 %.04249.i, 1                    ; 2 uses
  %.042.highbits.i = lshr i64 %i.ak, %i.g
  %i.al = icmp eq i64 %.042.highbits.i, 0
  br i1 %i.al, label %bb.b, label %dictGetStatsHt.exit, !llvm.loop !126

dictGetStatsHt.exit:                              ; preds = %bb.f, %bb.a
  %i.am = tail call i64 @dictGetStatsMsg(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef %3) ; 3 uses
  tail call void @zfree(ptr noundef %i.a) #21
  tail call void @zfree(ptr noundef nonnull %i.b) #21
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20
  %i.ap = icmp ne i64 %i.ao, -1
  %i.aq = icmp ne i64 %1, %i.am
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.m

bb.g:                                             ; preds = %dictGetStatsHt.exit
  %i.ar = sub i64 %1, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.at = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 5 uses
  %i.au = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 9 uses
  store i32 1, ptr %i.au, align 8, !tbaa !122
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %i.at, ptr %i.av, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 53
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19  ; 2 uses
  %.not51.i24 = icmp eq i8 %i.ax, -1              ; 2 uses
  %i.ay = sext i8 %i.ax to i64
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = select i1 %.not51.i24, i64 0, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !113
  %brmerge.i26 = select i1 %.not.i, i1 true, i1 %.not51.i24
  br i1 %brmerge.i26, label %dictGetStatsHt.exit37, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i27
  %.04249.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %i.cd, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04249.i28
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !37 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.at, align 8, !tbaa !20
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.at, align 8, !tbaa !20
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bq = load i64, ptr %i.bi, align 8, !tbaa !111
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !111
  br label %bb.k

bb.k:                                             ; preds = %dictGetNext.exit.i35, %bb.j
  %.048.i29 = phi i64 [ 0, %bb.j ], [ %i.bs, %dictGetNext.exit.i35 ]
  %.04147.i30 = phi ptr [ %i.bm, %bb.j ], [ %i.bv, %dictGetNext.exit.i35 ] ; 2 uses
  %i.bs = add i64 %.048.i29, 1                    ; 4 uses
  %i.bt = ptrtoint ptr %.04147.i30 to i64
  %i.bu = and i64 %i.bt, 3
  %.not.i.i31 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i31, label %dictGetNext.exit.i35, label %dictGetNext.exit.thread.i32

dictGetNext.exit.i35:                             ; preds = %bb.k
  %i.bv = load ptr, ptr %.04147.i30, align 8, !tbaa !42 ; 2 uses
  %.not46.i36 = icmp eq ptr %i.bv, null
  br i1 %.not46.i36, label %dictGetNext.exit.thread.i32, label %bb.k, !llvm.loop !124

dictGetNext.exit.thread.i32:                      ; preds = %dictGetNext.exit.i35, %bb.k
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 49)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !20
  %i.ca = load i64, ptr %i.bj, align 8, !tbaa !112
  %spec.store.select.i33 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ca)
  store i64 %spec.store.select.i33, ptr %i.bj, align 8
  %i.cb = load i64, ptr %i.bk, align 8, !tbaa !125
  %i.cc = add i64 %i.cb, %i.bs
  store i64 %i.cc, ptr %i.bk, align 8, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %dictGetNext.exit.thread.i32, %bb.i
  %i.cd = add i64 %.04249.i28, 1                  ; 2 uses
  %.042.highbits.i34 = lshr i64 %i.cd, %i.az
  %i.ce = icmp eq i64 %.042.highbits.i34, 0
  br i1 %i.ce, label %bb.h, label %dictGetStatsHt.exit37, !llvm.loop !126

dictGetStatsHt.exit37:                            ; preds = %bb.l, %bb.g
  %i.cf = tail call i64 @dictGetStatsMsg(ptr noundef %i.as, i64 noundef %i.ar, ptr noundef nonnull %i.au, i32 noundef %3) ; 0 uses
  tail call void @zfree(ptr noundef %i.at) #21
  tail call void @zfree(ptr noundef nonnull %i.au) #21
  br label %bb.m

bb.m:                                             ; preds = %dictGetStatsHt.exit37, %dictGetStatsHt.exit
  %i.cg = getelementptr i8, ptr %0, i64 %1
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  store i8 0, ptr %i.ch, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @dictDefaultCompare(ptr readnone captures(none) %0, ptr noundef readnone captures(address) %1, ptr noundef readnone captures(address) %2) unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bitreverse.i64(i64) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !15, i64 80}
!14 = !{!"dictType", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !10, i64 96, !10, i64 96, !10, i64 96, !15, i64 104, !15, i64 112}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p2 _ZTS9dictEntry", !18, i64 0}
!18 = !{!"any p2 pointer", !15, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8dictType", !15, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !11, i64 0}
!26 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 8, !27, i64 24, i64 8, !27, i64 32, i64 8, !27, i64 40, i64 8, !27, i64 48, i64 8, !27, i64 56, i64 8, !27, i64 64, i64 8, !27, i64 72, i64 8, !27, i64 80, i64 8, !27, i64 88, i64 8, !27, i64 96, i64 1, !19, i64 104, i64 8, !27, i64 112, i64 8, !27}
!27 = !{!15, !15, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTS4dict", !15, i64 0}
!30 = !{!14, !15, i64 112}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!14, !15, i64 56}
!33 = !{!14, !15, i64 72}
!34 = !{!14, !15, i64 64}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS9dictEntry", !15, i64 0}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = distinct !{null}
!42 = !{!43, !38, i64 0}
!43 = !{!"dictEntry", !38, i64 0, !15, i64 8, !11, i64 16}
!44 = !{!43, !15, i64 8}
!45 = !{!14, !15, i64 104}
!46 = distinct !{null}
!47 = !{!14, !15, i64 0}
!48 = !{ptr @dictGetHash}
!49 = !{!50, !15, i64 8}
!50 = !{!"dictEntryNoValue", !38, i64 0, !15, i64 8}
!51 = !{!50, !38, i64 0}
!52 = distinct !{!52, !36}
!53 = !{!54, !21, i64 0}
!54 = !{!"timeval", !21, i64 0, !21, i64 8}
!55 = !{!54, !21, i64 8}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{!58, !36}
!59 = distinct !{ptr @dictAddRaw, null}
!60 = !{!14, !15, i64 8}
!61 = !{ptr @dictAddRaw}
!62 = !{!14, !15, i64 16}
!63 = !{ptr @dictSetVal}
!64 = !{!14, !15, i64 24}
!65 = distinct !{!65, !36}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!14, !15, i64 40}
!68 = !{!14, !15, i64 32}
!69 = !{ptr @dictFreeUnlinkedEntry}
!70 = distinct !{!70, !36}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!77 = !{!14, !15, i64 48}
!78 = distinct !{null}
!79 = !{!80, !29, i64 0}
!80 = !{!"dictIterator", !29, i64 0, !21, i64 8, !10, i64 16, !10, i64 20, !38, i64 24, !38, i64 32, !81, i64 40}
!81 = !{!"long long", !11, i64 0}
!82 = !{!80, !10, i64 16}
!83 = !{!80, !21, i64 8}
!84 = !{!80, !10, i64 20}
!85 = !{!80, !81, i64 40}
!86 = !{!80, !38, i64 24}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.peeled.count", i32 1}
!89 = !{!80, !38, i64 32}
!90 = distinct !{!90, !36}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = !{!102, !15, i64 0}
!102 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!103 = !{!102, !15, i64 8}
!104 = !{!102, !15, i64 16}
!105 = distinct !{null}
!106 = !{!"branch_weights", !"expected", i32 2144622663, i32 2860985}
!107 = !{!81, !81, i64 0}
!108 = !{!109, !110, i64 48}
!109 = !{!"dictStats", !10, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !110, i64 48}
!110 = !{!"p1 long", !15, i64 0}
!111 = !{!109, !21, i64 8}
!112 = !{!109, !21, i64 16}
!113 = !{!109, !21, i64 40}
!114 = distinct !{!114, !94}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!119}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !36, !121}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!109, !10, i64 0}
!123 = !{!109, !21, i64 32}
!124 = distinct !{!124, !36}
!125 = !{!109, !21, i64 24}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
end_hunk_0
