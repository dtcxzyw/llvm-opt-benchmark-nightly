Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_nvector?download=true
inline.NumInlined: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@N_VScaleVectorArray:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  tail call void %i.l(double noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %.preheader ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @N_VConstVectorArray(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 %i.e(i32 noundef %0, double noundef %1, ptr noundef nonnull %2) #14
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  tail call void %i.l(double noundef %1, ptr noundef %i.n) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %.preheader ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @N_VWrmsNormVectorArray(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 %i.e(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #14
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = tail call double %i.l(ptr noundef %i.n, ptr noundef %i.p) #14
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.q, ptr %i.r, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %.preheader ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @N_VWrmsNormMaskVectorArray(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 %i.d(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) #14
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call double %i.i(ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull %3) #14
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.n, ptr %i.o, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %.preheader ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @N_VScaleAddMultiVectorArray(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 %i.e(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %.not62 = icmp eq ptr %i.h, null
  br i1 %.not62, label %.preheader64, label %bb.d

.preheader64:                                     ; preds = %bb.c
  %i.i = icmp sgt i32 %0, 0
  %i.j = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader64
  %wide.trip.count95 = zext nneg i32 %0 to i64
  %wide.trip.count90 = zext nneg i32 %1 to i64
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %1 to i64
  %i.l = shl nsw i64 %i.k, 3                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13 ; 6 uses
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #13 ; 6 uses
  %i.o = icmp sgt i32 %0, 0
  br i1 %i.o, label %.preheader65.lr.ph, label %._crit_edge68

.preheader65.lr.ph:                               ; preds = %bb.d
  %i.p = icmp sgt i32 %1, 0
  %wide.trip.count85 = zext nneg i32 %0 to i64    ; 2 uses
  br i1 %i.p, label %.preheader65.us.preheader, label %.preheader65

.preheader65.us.preheader:                        ; preds = %.preheader65.lr.ph
  %6 = icmp eq i32 %1, 1
  %7 = and i32 %1, 2147483646
  %unroll_iter = zext nneg i32 %7 to i64
  %lcmp.mod.not = trunc i32 %1 to i1
  %lcmp.mod110 = trunc i32 %1 to i1
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %bb.e
  %indvars.iv82 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvars.iv.next83, %bb.e ] ; 8 uses
  br i1 %6, label %.epil.preheader, label %.preheader65.us.new

.preheader65.us.new:                              ; preds = %.preheader65.us, %.preheader65.us.new
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %.preheader65.us.new ], [ 0, %.preheader65.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %.preheader65.us.new ], [ 0, %.preheader65.us ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv77
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv77
  store ptr %i.t, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv77
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv82
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv77
  store ptr %i.y, ptr %i.z, align 8, !tbaa !50
  %indvars.iv.next78 = or disjoint i64 %indvars.iv77, 1 ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next78
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv82
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next78
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next78
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv82
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next78
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !50
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader65.us.new

bb.e:                                             ; preds = %._crit_edge.us
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge68, label %.preheader65.us

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader65.us.new
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.us

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader65.us
  %indvars.iv77.epil.init = phi i64 [ 0, %.preheader65.us ], [ %indvars.iv.next78.1, %._crit_edge.us.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv77.epil.init
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv82
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv77.epil.init
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv77.epil.init
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv82
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv77.epil.init
  store ptr %i.as, ptr %i.at, align 8, !tbaa !50
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.au = load ptr, ptr %3, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv82
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.bb = tail call i32 %i.ay(i32 noundef %1, ptr noundef %2, ptr noundef %i.ba, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #14 ; 2 uses
  %.not63.us = icmp eq i32 %i.bb, 0
  br i1 %.not63.us, label %bb.e, label %._crit_edge68

bb.f:                                             ; preds = %.preheader65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count85
  br i1 %exitcond.not, label %._crit_edge68, label %.preheader65

.preheader65:                                     ; preds = %.preheader65.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader65.lr.ph ] ; 2 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bj = tail call i32 %i.bg(i32 noundef %1, ptr noundef %2, ptr noundef %i.bi, ptr noundef %i.m, ptr noundef %i.n) #14 ; 2 uses
  %.not63 = icmp eq i32 %i.bj, 0
  br i1 %.not63, label %bb.f, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.f, %.preheader65, %bb.e, %._crit_edge.us, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %i.bb, %._crit_edge.us ], [ 0, %bb.e ], [ %i.bj, %.preheader65 ], [ 0, %bb.f ]
  tail call void @free(ptr noundef %i.m) #14
  tail call void @free(ptr noundef %i.n) #14
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next93, %._crit_edge ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %indvars.iv87 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next88, %bb.g ] ; 4 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv87
  %i.br = load double, ptr %i.bq, align 8, !tbaa !48
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv87
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv92
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv87
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv92
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50
  tail call void %i.bp(double noundef %i.br, ptr noundef %i.bs, double noundef 1.000000e+00, ptr noundef %i.bw, ptr noundef %i.ca) #14
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %._crit_edge, %.preheader64, %._crit_edge68, %bb.b
  %.2 = phi i32 [ %i.f, %bb.b ], [ %.1, %._crit_edge68 ], [ 0, %.preheader64 ], [ 0, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @N_VLinearCombinationVectorArray(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 %i.e(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %.not58 = icmp eq ptr %i.h, null
  br i1 %.not58, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph69, label %.loopexit

.lr.ph69:                                         ; preds = %.preheader
  %i.j = icmp sgt i32 %1, 1
  %wide.trip.count98 = zext nneg i32 %0 to i64    ; 2 uses
  br i1 %i.j, label %.lr.ph.us.preheader, label %.lr.ph69.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph69
  %wide.trip.count93 = zext nneg i32 %1 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us70
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next96, %._crit_edge.us70 ] ; 4 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = load double, ptr %2, align 8, !tbaa !48
  %i.q = load ptr, ptr %3, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv95
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv95 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  tail call void %i.o(double noundef %i.p, ptr noundef %i.s, ptr noundef %i.u) #14
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv90 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next91, %bb.d ] ; 3 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv90
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv90
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv95
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !50  ; 2 uses
  tail call void %i.z(double noundef %i.ab, ptr noundef %i.af, double noundef 1.000000e+00, ptr noundef %i.ag, ptr noundef %i.ag) #14
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge.us70, label %bb.d

._crit_edge.us70:                                 ; preds = %bb.d
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.lr.ph.us

bb.e:                                             ; preds = %bb.c
  %i.ah = sext i32 %1 to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #13 ; 8 uses
  %i.ak = icmp sgt i32 %0, 0
  br i1 %i.ak, label %.preheader60.lr.ph, label %._crit_edge63

.preheader60.lr.ph:                               ; preds = %bb.e
  %i.al = icmp sgt i32 %1, 0
  %wide.trip.count83 = zext nneg i32 %0 to i64    ; 2 uses
  br i1 %i.al, label %.preheader60.us.preheader, label %.preheader60

.preheader60.us.preheader:                        ; preds = %.preheader60.lr.ph
  %wide.trip.count78 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count78, 3       ; 3 uses
  %i.am = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count78, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  br label %.preheader60.us

.preheader60.us:                                  ; preds = %.preheader60.us.preheader, %bb.f
  %indvars.iv80 = phi i64 [ 0, %.preheader60.us.preheader ], [ %indvars.iv.next81, %bb.f ] ; 7 uses
  br i1 %i.am, label %.epil.preheader, label %.preheader60.us.new

.preheader60.us.new:                              ; preds = %.preheader60.us, %.preheader60.us.new
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %.preheader60.us.new ], [ 0, %.preheader60.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader60.us.new ], [ 0, %.preheader60.us ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv75
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv75
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !50
end_hunk_0
