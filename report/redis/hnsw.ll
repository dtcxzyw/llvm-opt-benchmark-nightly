inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_cursor_free:bb.a
  %.0152327 = phi ptr [ %.015, %.lr.ph ], [ %.01520, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0152327, i64 16
  %.015 = load ptr, ptr %i.f, align 8, !tbaa !188 ; 3 uses
  %.not17 = icmp eq ptr %.015, null
  br i1 %.not17, label %.loopexit, label %.lr.ph, !llvm.loop !230

.lr.ph:                                           ; preds = %.lr.ph28
  %i.g = icmp eq ptr %.015, %0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph28, !llvm.loop !230

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.022.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0152327, %.lr.ph ] ; 2 uses
  %.not18 = icmp eq ptr %.022.lcssa, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !229
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge
  store ptr %i.i, ptr %i.d, align 8, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.k(ptr noundef nonnull %0) #34
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph28, %bb.b, %bb.e
  %i.l = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.b) #34 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_cursor_acquire_lock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.b) #34
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_cursor_release_lock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.b) #34 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @hnsw_cursor_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !185
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @hnsw_print_stats(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %.not36 = icmp eq ptr %i.b, null
  br i1 %.not36, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.g

.preheader:                                       ; preds = %bb.b, %bb.d
  %.02849 = phi ptr [ %i.ay, %bb.d ], [ %i.b, %bb.b ] ; 11 uses
  %.02948 = phi i32 [ %i.aw, %bb.d ], [ 0, %bb.b ]
  %.03047 = phi i32 [ %.1, %bb.d ], [ 0, %bb.b ]
  %.03146 = phi i32 [ %.132, %bb.d ], [ -1, %bb.b ] ; 2 uses
  %.03345 = phi i64 [ %i.ar, %bb.d ], [ 0, %bb.b ]
  %i.c = load i32, ptr %.02849, align 8, !tbaa !9
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %i.e = icmp eq i64 %n.mod.vf, 0
  %i.f = select i1 %i.e, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.f     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 440
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 488
  %i.w = load i32, ptr %i.o, align 8, !tbaa !132
  %i.x = load i32, ptr %i.p, align 8, !tbaa !132
  %i.y = load i32, ptr %i.q, align 8, !tbaa !132
  %i.z = load i32, ptr %i.r, align 8, !tbaa !132
  %i.aa = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 2
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 3
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !132
  %i.af = load i32, ptr %i.t, align 8, !tbaa !132
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !132
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !132
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = add <4 x i32> %i.ad, %vec.phi           ; 2 uses
  %i.an = add <4 x i32> %i.al, %vec.phi60         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.02743.ph = phi i32 [ 0, %.preheader ], [ %i.ap, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %scalar.ph
  %i.aq = sext i32 %i.bc to i64
  %i.ar = add nsw i64 %.03345, %i.aq              ; 2 uses
  %i.as = icmp eq i32 %.03146, -1
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %.03146)
  %.132 = select i1 %i.as, i32 %i.bc, i32 %i.at   ; 2 uses
  %i.au = icmp eq i32 %i.bc, 0
  %i.av = zext i1 %i.au to i32
  %.1 = add nuw nsw i32 %.03047, %i.av            ; 3 uses
  %i.aw = add i32 %.02948, 1                      ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02849, i64 304
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not37 = icmp eq ptr %i.ay, null
  br i1 %.not37, label %bb.e, label %.preheader, !llvm.loop !232

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.02743 = phi i32 [ %i.bc, %scalar.ph ], [ %.02743.ph, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.02849, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !132
  %i.bc = add i32 %i.bb, %.02743                  ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %bb.d, label %scalar.ph, !llvm.loop !233

bb.e:                                             ; preds = %bb.d
  %puts38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.aw) ; 0 uses
  %.not40 = icmp eq i32 %i.aw, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = sitofp i64 %i.ar to float
  %i.bf = uitofp i32 %i.aw to float
  %1 = uitofp nneg i32 %.1 to float
  %2 = fmul nnan float %1, 1.000000e+02
  %3 = insertelement <2 x float> poison, float %i.be, i64 0
  %4 = insertelement <2 x float> %3, float %2, i64 1
  %5 = insertelement <2 x float> poison, float %i.bf, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x float> %4, %6
  %8 = fpext <2 x float> %7 to <2 x double>       ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %9) ; 0 uses
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.132) ; 0 uses
  %12 = extractelement <2 x double> %8, i64 1
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.1, double noundef %12) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @hnsw_validate_graph(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond6 = and i1 %or.cond, %i.c
  br i1 %or.cond6, label %bb.b, label %.loopexit147

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !90
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !13
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %.loopexit147

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  store i64 0, ptr %1, align 8, !tbaa !13
  store i32 1, ptr %2, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  %i.j = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.k = shl i64 %i.i, 3
  %i.l = tail call ptr %i.j(i64 noundef %i.k) #34 ; 6 uses
  %.not124 = icmp eq ptr %i.l, null
  br i1 %.not124, label %.loopexit147, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.e, align 8, !tbaa !13
  %i.n = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.m, ptr %i.o, align 8, !tbaa !13
  %i.p = load i64, ptr %1, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %1, align 8, !tbaa !13
  store ptr %i.n, ptr %i.l, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit146
  %.0112193 = phi i64 [ 1, %bb.e ], [ %.2114.lcssa, %.loopexit146 ]
  %i.r = add i64 %.0112193, -1                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %.thread142
  %.0111159 = phi i32 [ 0, %bb.f ], [ %i.ax, %.thread142 ] ; 2 uses
  %.1113158 = phi i64 [ %i.r, %bb.f ], [ %.2114.lcssa, %.thread142 ] ; 2 uses
  %i.v = zext i32 %.0111159 to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !132
  %.not138154.not = icmp eq i32 %i.y, 0
  br i1 %.not138154.not, label %.thread142, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph157, %bb.l
  %.0110156 = phi i64 [ 0, %.lr.ph157 ], [ %i.au, %bb.l ] ; 2 uses
  %.2114155 = phi i64 [ %.1113158, %.lr.ph157 ], [ %.4116.ph, %bb.l ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0110156
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !132 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.not136152.not = icmp eq i32 %i.af, 0
  br i1 %.not136152.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !135
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.ai = add nuw nsw i64 %.0105153, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.ag
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !234

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.0105153 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0105153
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = icmp eq ptr %i.ak, %i.t
  br i1 %i.al, label %.loopexit145, label %bb.h

.critedge:                                        ; preds = %bb.h, %bb.g
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %.loopexit145

.loopexit145:                                     ; preds = %bb.i, %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %.not137 = icmp eq i64 %i.an, %i.ao
  br i1 %.not137, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.loopexit145
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !13
  %i.ap = load i64, ptr %1, align 8, !tbaa !13
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %1, align 8, !tbaa !13
  %i.ar = icmp ult i64 %.2114155, %i.i
  br i1 %i.ar, label %bb.k, label %.loopexit147.loopexit

bb.k:                                             ; preds = %bb.j
  %i.as = add nuw i64 %.2114155, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.2114155
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit145
  %.4116.ph = phi i64 [ %.2114155, %.loopexit145 ], [ %i.as, %bb.k ] ; 2 uses
  %i.au = add nuw nsw i64 %.0110156, 1            ; 2 uses
  %i.av = load i32, ptr %i.x, align 8, !tbaa !132
  %i.aw = zext i32 %i.av to i64
  %.not138 = icmp samesign ult i64 %i.au, %i.aw
  br i1 %.not138, label %bb.g, label %.thread142, !llvm.loop !235

.thread142:                                       ; preds = %bb.l, %.preheader
  %.2114.lcssa = phi i64 [ %.1113158, %.preheader ], [ %.4116.ph, %bb.l ] ; 3 uses
  %i.ax = add i32 %.0111159, 1                    ; 2 uses
  %i.ay = load i32, ptr %i.t, align 8, !tbaa !9
  %.not134 = icmp ugt i32 %i.ax, %i.ay
  br i1 %.not134, label %.loopexit146, label %.preheader, !llvm.loop !236

.loopexit146:                                     ; preds = %.thread142
  %.not125 = icmp eq i64 %.2114.lcssa, 0
  br i1 %.not125, label %bb.m, label %bb.f, !llvm.loop !237

bb.m:                                             ; preds = %.loopexit146
  %i.az = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.az(ptr noundef nonnull %i.l) #34
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts126 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.0104172 = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not127173 = icmp eq ptr %.0104172, null
  br i1 %.not127173, label %._crit_edge177, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.m, %.loopexit
  %.0104174 = phi ptr [ %.0104, %.loopexit ], [ %.0104172, %bb.m ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0104174, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !13
  %.not129 = icmp eq i64 %i.bc, %i.bd
  br i1 %.not129, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph176
  %puts130 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %.0104174) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0104174, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %i.bg) ; 0 uses
  %i.bi = load i32, ptr %.0104174, align 8, !tbaa !9
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.bi) ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0104174, i64 312
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge170
  %.0103171 = phi i32 [ 0, %bb.n ], [ %i.br, %._crit_edge170 ] ; 3 uses
  %i.bl = zext i32 %.0103171 to i64               ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !132
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.0103171, i32 noundef %i.bo) ; 0 uses
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !132
  %.not178 = icmp eq i32 %i.bq, 0
  br i1 %.not178, label %._crit_edge170, label %.lr.ph169

._crit_edge170:                                   ; preds = %._crit_edge, %bb.o
  %i.br = add i32 %.0103171, 1                    ; 2 uses
  %i.bs = load i32, ptr %.0104174, align 8, !tbaa !9
  %.not131 = icmp ugt i32 %i.br, %i.bs
  br i1 %.not131, label %.loopexit, label %bb.o, !llvm.loop !238

.lr.ph169:                                        ; preds = %bb.o, %._crit_edge
  %.0102167 = phi i64 [ %i.cp, %._crit_edge ], [ 0, %bb.o ] ; 3 uses
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !135
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.0102167
end_hunk_0
begin_hunk_1_@hnsw_test_graph_recall:bb.a
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.aq = sitofp i8 %i.ap to float
  %i.ar = load float, ptr %i.af, align 8, !tbaa !27
  %i.as = fmul float %i.ar, %i.aq
  %i.at = fdiv float %i.as, 1.270000e+02
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  store float %i.at, ptr %i.au, align 4, !tbaa !27
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.av = add nsw i64 %wide.trip.count, -1
  %i.aw = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.aw, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = sitofp i8 %i.ay to float
  %i.ba = load float, ptr %i.af, align 8, !tbaa !27
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = fdiv float %i.bb, 1.270000e+02
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store float %i.bc, ptr %i.bd, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = sitofp i8 %i.bf to float
  %i.bh = load float, ptr %i.af, align 8, !tbaa !27
  %i.bi = fmul float %i.bh, %i.bg
  %i.bj = fdiv float %i.bi, 1.270000e+02
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  store float %i.bj, ptr %i.bk, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !251

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.093130, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.bn = load i32, ptr %i.i, align 8, !tbaa !73
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 1 %i.bm, i64 %i.bp, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 3169, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_test_graph_recall) #35
  unreachable

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %bb.h
  %i.bq = tail call i32 @hnsw_search_with_filter(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %i.t, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) ; 5 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.p, label %.preheader, !llvm.loop !252

.preheader:                                       ; preds = %.loopexit
  %.not112119 = icmp sgt i32 %i.bq, 0             ; 2 uses
  br i1 %.not112119, label %.lr.ph121.preheader, label %.critedge

.lr.ph121.preheader:                              ; preds = %.preheader
  %wide.trip.count146 = zext nneg i32 %i.bq to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.k
  %indvars.iv143 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next144, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv143
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = icmp eq ptr %i.bt, %.093130
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph121
  %.not113 = icmp eq i64 %indvars.iv143, 0
  br i1 %.not113, label %bb.n, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph121
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %.critedge, label %.lr.ph121, !llvm.loop !253

.critedge:                                        ; preds = %bb.k, %.preheader
  %i.bv = add i32 %.092131, 1                     ; 2 uses
  br i1 %.not106, label %bb.o, label %bb.l

.critedge.thread:                                 ; preds = %bb.j
  %i.bw = add i32 %.092131, 1                     ; 2 uses
  br i1 %.not106, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.critedge.thread, %.critedge
  %.str.28.sink = phi ptr [ @.str.27, %.critedge ], [ @.str.28, %.critedge.thread ]
  %i.bx = phi i32 [ %i.bv, %.critedge ], [ %i.bw, %.critedge.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %.093130, i64 288
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.28.sink, ptr noundef %i.bz) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.093130, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !13
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %i.cc) ; 0 uses
  %i.ce = load i32, ptr %.093130, align 8, !tbaa !9
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ce) ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.bq) ; 0 uses
  %i.ch = load float, ptr %i.g, align 4, !tbaa !27
  %i.ci = fpext float %i.ch to double
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.ci) ; 0 uses
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.093130, i64 320 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !132
  %.not139 = icmp eq i32 %i.cm, 0
  br i1 %.not139, label %._crit_edge, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.093130, i64 312
  br label %bb.m

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  br i1 %.not112119, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %._crit_edge
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 10)
  %wide.trip.count154 = zext nneg i32 %i.cp to i64
  br label %.lr.ph126

bb.m:                                             ; preds = %.lr.ph123, %bb.m
  %indvars.iv148 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next149, %bb.m ] ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !135
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv148
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 288
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.cu) ; 0 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.cw = load i32, ptr %i.cl, align 8, !tbaa !132
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next149, %i.cx
  br i1 %i.cy, label %bb.m, label %._crit_edge, !llvm.loop !254

._crit_edge127:                                   ; preds = %.lr.ph126, %._crit_edge
  %putchar108 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.o

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv151 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next152, %.lr.ph126 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv151
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 288
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.dc) ; 0 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !255

bb.n:                                             ; preds = %bb.j
  %i.de = add i32 %.095129, 1
  br label %bb.o

bb.o:                                             ; preds = %.critedge.thread, %.critedge, %._crit_edge127, %bb.n
  %.196 = phi i32 [ %.095129, %._crit_edge127 ], [ %.095129, %.critedge ], [ %i.de, %bb.n ], [ %.095129, %.critedge.thread ]
  %.1 = phi i32 [ %i.bx, %._crit_edge127 ], [ %i.bv, %.critedge ], [ %.092131, %bb.n ], [ %i.bw, %.critedge.thread ]
  %i.df = getelementptr inbounds nuw i8, ptr %.093130, i64 304
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o
  %.297 = phi i32 [ %.196, %bb.o ], [ %.095129, %.loopexit ] ; 2 uses
  %.194 = phi ptr [ %i.dg, %bb.o ], [ %.093130, %.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.o ], [ %.092131, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.194, null
  br i1 %.not, label %hnsw_release_read_slot.exit, label %bb.f

hnsw_release_read_slot.exit:                      ; preds = %bb.p, %bb.e
  %.095.lcssa = phi i32 [ 0, %bb.e ], [ %.297, %bb.p ] ; 3 uses
  %.092.lcssa = phi i32 [ 0, %bb.e ], [ %.2, %bb.p ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.p ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.di = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.dh) #34 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dk = zext nneg i32 %i.t to i64
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dl) #34 ; 0 uses
  %i.dn = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dn(ptr noundef nonnull %i.d) #34
  %i.do = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.do(ptr noundef nonnull %i.g) #34
  %i.dp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dp(ptr noundef nonnull %i.m) #34
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.090.lcssa) ; 0 uses
  %.not105 = icmp eq i32 %.090.lcssa, 0
  br i1 %.not105, label %.critedge110, label %bb.q

bb.q:                                             ; preds = %hnsw_release_read_slot.exit
  %i.dr = uitofp i32 %.095.lcssa to float
  %i.ds = uitofp i32 %.090.lcssa to float
  %i.dt = uitofp i32 %.092.lcssa to float
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dr, i64 1
  %i.dw = fmul nnan <2 x float> %i.dv, splat (float 1.000000e+02)
  %i.dx = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fdiv <2 x float> %i.dw, %i.dy
  %3 = fpext <2 x float> %i.dz to <2 x double>    ; 2 uses
  %4 = extractelement <2 x double> %3, i64 1
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef %4) ; 0 uses
  %5 = extractelement <2 x double> %3, i64 0
  br label %bb.r

.critedge110:                                     ; preds = %hnsw_release_read_slot.exit
  %i.eb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef 0.000000e+00) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge110, %bb.q
  %i.ec = phi double [ %5, %bb.q ], [ 0.000000e+00, %.critedge110 ]
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.092.lcssa, double noundef %i.ec) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_ground_truth_with_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.hnswNode, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.a = call i32 @hnsw_init_tmp_node(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %6, ptr noundef %1)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %hnsw_free_tmp_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = tail call ptr %i.c(i64 noundef 16) #34, !inline_history !142 ; 12 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = tail call ptr %i.e(i64 noundef %i.g) #34, !inline_history !142 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.i(ptr noundef nonnull %i.d) #34, !inline_history !142
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, %1
  br i1 %.not.i52, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.04163 = load ptr, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %.not4864 = icmp eq ptr %.04163, null
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not50 = icmp eq ptr %7, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.04165 = phi ptr [ %.04163, %.lr.ph ], [ %.041, %.backedge ] ; 8 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.04165, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 %7(ptr noundef %i.t, ptr noundef %8) #34
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.backedge, label %bb.i

.backedge:                                        ; preds = %.critedge2.i, %bb.o, %.critedge.i, %bb.h
  %.041.in.be = getelementptr inbounds nuw i8, ptr %.04165, i64 304
  %.041 = load ptr, ptr %.041.in.be, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !256

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i32, ptr %i.o, align 8, !tbaa !70
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.q, align 8, !tbaa !73
  %i.aa = tail call float @vectors_distance_float(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.z)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !73
  %i.af = load float, ptr %i.r, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.04165, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call float @vectors_distance_q8(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae, float noundef %i.af, float noundef %i.ah)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.q, align 8, !tbaa !73
  %i.an = tail call float @vectors_distance_bin(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am)
  br label %hnsw_distance.exit

bb.m:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.j, %bb.k, %bb.l
  %.0.i53 = phi float [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.an, %bb.l ] ; 5 uses
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ar = zext i32 %i.ao to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.at = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !21
  %i.ax = fcmp olt float %i.aw, %.0.i53
  br i1 %i.ax, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %.lr.ph47.i
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !25
  %.not.i54 = icmp eq i64 %i.at, 0
  br i1 %.not.i54, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.n, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.n ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %i.az = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ba = phi i32 [ 1, %.preheader.i ], [ %i.az, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.038.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %.0.i53, ptr %i.bd, align 8, !tbaa !21
  store i32 %i.ba, ptr %i.l, align 8, !tbaa !19
  br label %.backedge

bb.o:                                             ; preds = %hnsw_distance.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !21
  %i.bh = fcmp ult float %.0.i53, %i.bg
  br i1 %i.bh, label %.preheader41.i, label %.backedge

.preheader41.i:                                   ; preds = %bb.o
  %.not51.i = icmp eq i32 %i.ap, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.next.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !21
  %i.bm = fcmp ogt float %i.bl, %.0.i53
  br i1 %i.bm, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !25
  %i.bo = load i32, ptr %i.m, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next.i, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.p
  %.pre.pre.i = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
end_hunk_1
