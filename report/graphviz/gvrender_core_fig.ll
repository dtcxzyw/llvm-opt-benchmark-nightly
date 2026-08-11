inline.NumInlined: 37
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@fig_resolve_color:bb.a
  %i.aq = mul nsw i64 %i.ak, %i.ak
  %i.ar = add nuw nsw i64 %i.aq, %i.ap
  %i.as = mul nsw i64 %i.ao, %i.ao
  %i.at = add nuw nsw i64 %i.ar, %i.as            ; 3 uses
  %i.au = icmp slt i64 %i.at, %.041.i
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  br i1 %i.av, label %figColorResolve.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.133.i = phi i32 [ %.03239.i, %bb.j ], [ %i.aw, %bb.k ] ; 2 uses
  %.1.i = phi i64 [ %.041.i, %bb.j ], [ %i.at, %bb.k ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !58

._crit_edge.i:                                    ; preds = %bb.l
  %i.ax = icmp eq i32 %i.y, 512
  br i1 %i.ax, label %figColorResolve.exit.thread, label %._crit_edge

figColorResolve.exit.thread:                      ; preds = %bb.k, %._crit_edge.i
  %.030.i.ph = phi i32 [ %.133.i, %._crit_edge.i ], [ %i.aw, %bb.k ]
  %i.ay = add nsw i32 %.030.i.ph, 32
  br label %.loopexit.sink.split

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.i
  %.031.lcssa50.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %bb.i ] ; 2 uses
  %i.az = add nsw i32 %i.y, 1
  store i32 %i.az, ptr @figColorResolve.top, align 4, !tbaa !41
  %i.ba = zext i8 %i.t to i16
  %i.bb = zext nneg i32 %.031.lcssa50.i to i64    ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @figColorResolve.red, i64 %i.bb
  store i16 %i.ba, ptr %i.bc, align 2, !tbaa !56
  %i.bd = zext i8 %i.v to i16
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @figColorResolve.green, i64 %i.bb
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !56
  %i.bf = zext i8 %i.x to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @figColorResolve.blue, i64 %i.bb
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !56
  %i.bh = add nuw nsw i32 %.031.lcssa50.i, 32     ; 2 uses
  %i.bi = zext i8 %i.t to i32
  %i.bj = zext i8 %i.v to i32
  %i.bk = zext i8 %i.x to i32
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk) #16
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 117) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit.sink.split:                             ; preds = %._crit_edge, %figColorResolve.exit.thread, %.preheader, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.023.lcssa.wide.sink = phi i32 [ 7, %bb.h ], [ 0, %.preheader ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ %i.ay, %figColorResolve.exit.thread ], [ %i.bh, %._crit_edge ]
  store i32 %.023.lcssa.wide.sink, ptr %1, align 8, !tbaa !38
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.h
  store i32 5, ptr %i.a, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fig_ellipse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
fig_line_style.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = load i32, ptr @Depth, align 4, !tbaa !41
  %i.j = getelementptr i8, ptr %i.b, i64 168
  %.val = load i32, ptr %i.j, align 8, !tbaa !65  ; 2 uses
  %.val.off = add i32 %.val, -1
  %switch = icmp ult i32 %.val.off, 2             ; 2 uses
  %.sink1.i = select i1 %switch, i32 %.val, i32 0
  %.sink.i = select i1 %switch, double 1.000000e+01, double 0.000000e+00
  %.not = icmp eq i32 %2, 0
  %i.k = select i1 %.not, i32 -1, i32 20
  %i.l = tail call double @llvm.round.f64(double %i.d)
  %i.m = load double, ptr %1, align 8, !tbaa !66  ; 2 uses
  %i.n = tail call double @llvm.round.f64(double %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !67 ; 2 uses
  %i.q = tail call double @llvm.round.f64(double %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !66 ; 2 uses
  %i.t = fsub double %i.s, %i.m
  %i.u = tail call double @llvm.round.f64(double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !67 ; 2 uses
  %i.x = fsub double %i.w, %i.p
  %i.y = tail call double @llvm.round.f64(double %i.x)
  %i.z = tail call double @llvm.round.f64(double %i.s)
  %i.aa = tail call double @llvm.round.f64(double %i.w)
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 1, i32 noundef %.sink1.i, double noundef %i.l, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 0, i32 noundef %i.k, double noundef %.sink.i, i32 noundef 0, double noundef 0.000000e+00, double noundef %i.n, double noundef %i.q, double noundef %i.u, double noundef %i.y, double noundef %i.n, double noundef %i.q, double noundef %i.z, double noundef %i.aa) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fig_polygon(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
fig_line_style.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !61
  %i.e = tail call double @llvm.round.f64(double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.j = load i32, ptr @Depth, align 4, !tbaa !41
  %.not = icmp eq i32 %3, 0
  %i.k = select i1 %.not, i32 -1, i32 20
  %i.l = add i64 %2, 1
  %i.m = getelementptr i8, ptr %i.b, i64 168
  %.val = load i32, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  %.val.off = add i32 %.val, -1
  %switch = icmp ult i32 %.val.off, 2             ; 2 uses
  %.sink1.i = select i1 %switch, i32 %.val, i32 0
  %.sink.i = select i1 %switch, double 1.000000e+01, double 0.000000e+00
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i32 noundef 2, i32 noundef 3, i32 noundef %.sink1.i, double noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 0, i32 noundef %i.k, double noundef %.sink.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %i.l) #16
  %.not13.i = icmp eq i64 %2, 0
  br i1 %.not13.i, label %figptarray.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fig_line_style.exit, %.lr.ph.i
  %.012.i = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %fig_line_style.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.012.i ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, double noundef %i.o, double noundef %i.q) #16
  %i.r = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %2
  br i1 %exitcond.not.i, label %figptarray.exit, label %.lr.ph.i, !llvm.loop !68

figptarray.exit:                                  ; preds = %.lr.ph.i, %fig_line_style.exit
  %i.s = load double, ptr %1, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, double noundef %i.s, double noundef %i.u) #16
  %i.v = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #16 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fig_bezier(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
fig_line_style.exit:
  %4 = alloca [4 x %struct.pointf_s], align 16    ; 12 uses
  %5 = alloca %struct.agxbuf, align 8             ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !61
  %i.e = tail call double @llvm.round.f64(double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = load i32, ptr @Depth, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.i = getelementptr i8, ptr %i.b, i64 168
  %.val = load i32, ptr %i.i, align 8, !tbaa !65  ; 2 uses
  %.val.off = add i32 %.val, -1
  %switch = icmp ult i32 %.val.off, 2             ; 2 uses
  %.sink1.i = select i1 %switch, i32 %.val, i32 0
  %.sink.i = select i1 %switch, double 1.000000e+01, double 0.000000e+00
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %fig_line_style.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  br label %bb.b

bb.b:                                             ; preds = %fig_line_style.exit, %bb.a
  %.057 = phi i32 [ 20, %bb.a ], [ -1, %fig_line_style.exit ]
  %.052 = phi i32 [ %i.k, %bb.a ], [ 0, %fig_line_style.exit ]
  %.051 = phi i32 [ 5, %bb.a ], [ 4, %fig_line_style.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !69 ; 3 uses
  store <2 x double> %i.m, ptr %i.l, align 16, !tbaa !69
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = extractelement <2 x double> %i.m, i64 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.n, double noundef %i.o)
  %i.p = icmp ugt i64 %2, 3
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.055.lcssa = phi i32 [ 1, %bb.b ], [ %indvars.iv, %.lr.ph ] ; 4 uses
  call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef %.051, i32 noundef %.sink1.i, double noundef %i.e, i32 noundef %i.g, i32 noundef %.052, i32 noundef %i.h, i32 noundef 0, i32 noundef %.057, double noundef %.sink.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %.055.lcssa) #16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 31 ; 6 uses
  %.val.i = load i8, ptr %i.s, align 1, !tbaa !38 ; 3 uses
  switch i8 %.val.i, label %agxblen.exit.i.i [
    i8 -1, label %bb.c
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %._crit_edge
  %i.t = zext i8 %.val.i to i64
  br label %agxbsizeof.exit.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38
  br label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %bb.c, %agxblen.exit.i.i
  %.0.i20.i.i = phi i64 [ %i.v, %bb.c ], [ %i.t, %agxblen.exit.i.i ]
  %.0.i14.i.i = phi i64 [ %i.x, %bb.c ], [ 31, %agxblen.exit.i.i ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %agxbsizeof.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %5, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.s, align 1, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %agxbsizeof.exit.i.i
  %.val.i6.pr.i = phi i8 [ %.val.i15.pre.i.i, %bb.d ], [ %.val.i, %agxbsizeof.exit.i.i ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i6.pr.i, -1
  br i1 %.not.i16.i.i, label %agxbputc.exit.i.thread, label %agxbputc.exit.i

agxbputc.exit.i.thread:                           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38
  %i.aa = load ptr, ptr %5, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !38
  br label %bb.f

agxbputc.exit.i:                                  ; preds = %bb.e
  %i.ac = zext i8 %.val.i6.pr.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %i.ac
  store i8 0, ptr %i.ad, align 1, !tbaa !38
  %i.ae = load i8, ptr %i.s, align 1, !tbaa !38
  %i.af = add i8 %i.ae, 1                         ; 2 uses
  store i8 %i.af, ptr %i.s, align 1, !tbaa !38
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.f, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i, %._crit_edge
  store i8 0, ptr %i.s, align 1, !tbaa !38
  br label %agxbuse.exit

bb.f:                                             ; preds = %agxbputc.exit.i.thread, %agxbputc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !38
  %i.ai = load ptr, ptr %5, align 8, !tbaa !38
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.f
  %i.aj = phi ptr [ %i.ai, %bb.f ], [ %5, %agxbclear.exit.thread.i ]
  call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %i.aj) #16
  %.val61 = load i8, ptr %i.s, align 1, !tbaa !38
  %i.ak = icmp eq i8 %.val61, -1
  br i1 %i.ak, label %bb.g, label %agxbfree.exit

bb.g:                                             ; preds = %agxbuse.exit
  %.val60 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %.val60) #16
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit, %bb.g
  %i.al = icmp sgt i32 %.055.lcssa, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %agxbfree.exit
  %i.am = add nsw i32 %.055.lcssa, -1
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i32 [ 7, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.05466.a = phi i64 [ 3, %.lr.ph.preheader ], [ %6, %.lr.ph ] ; 2 uses
  %.05466 = phi i64 [ 0, %.lr.ph.preheader ], [ %.05466.a, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !70
  %i.an = getelementptr [16 x i8], ptr %1, i64 %.05466 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !69
  store <2 x double> %i.ap, ptr %i.q, align 16, !tbaa !69
  %i.aq = getelementptr i8, ptr %i.an, i64 32
  %i.ar = load <2 x double>, ptr %i.aq, align 8, !tbaa !69
  store <2 x double> %i.ar, ptr %i.r, align 16, !tbaa !69
  %i.as = getelementptr i8, ptr %i.an, i64 48
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !69
  store <2 x double> %i.at, ptr %i.l, align 16, !tbaa !69
  %i.au = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FC5555555555555, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.av = extractvalue { double, double } %i.au, 0
  %i.aw = extractvalue { double, double } %i.au, 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.av, double noundef %i.aw)
  %i.ax = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FD5555555555555, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.ay = extractvalue { double, double } %i.ax, 0
  %i.az = extractvalue { double, double } %i.ax, 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.ay, double noundef %i.az)
  %i.ba = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef 5.000000e-01, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.bb = extractvalue { double, double } %i.ba, 0
  %i.bc = extractvalue { double, double } %i.ba, 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.bb, double noundef %i.bc)
  %i.bd = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FE5555555555555, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.be = extractvalue { double, double } %i.bd, 0
  %i.bf = extractvalue { double, double } %i.bd, 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.be, double noundef %i.bf)
  %i.bg = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FEAAAAAAAAAAAAB, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.bh = extractvalue { double, double } %i.bg, 0
  %i.bi = extractvalue { double, double } %i.bg, 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.bh, double noundef %i.bi)
  %i.bj = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef 1.000000e+00, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.bk = extractvalue { double, double } %i.bj, 0
  %i.bl = extractvalue { double, double } %i.bj, 1
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %5, ptr nonnull poison, double noundef %i.bk, double noundef %i.bl)
  %6 = add i64 %.05466.a, 3                       ; 2 uses
  %7 = icmp ult i64 %6, %2
  %indvars.iv.next = add i32 %indvars.iv, 6
  br i1 %7, label %.lr.ph, label %._crit_edge, !llvm.loop !71

._crit_edge69:                                    ; preds = %bb.h, %agxbfree.exit
  %i.bm = call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.h:                                             ; preds = %.lr.ph68, %bb.h
  %.067 = phi i32 [ 0, %.lr.ph68 ], [ %i.bp, %bb.h ] ; 2 uses
  %i.bn = srem i32 %.067, %i.am
  %.not59 = icmp ne i32 %i.bn, 0
  %i.bo = zext i1 %.not59 to i32
  call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, i32 noundef %i.bo) #16
  %i.bp = add nuw nsw i32 %.067, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %.055.lcssa
  br i1 %exitcond.not, label %._crit_edge69, label %bb.h, !llvm.loop !72
}

; Function Attrs: nounwind uwtable
define internal void @fig_polyline(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
fig_line_style.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !61
  %i.e = tail call double @llvm.round.f64(double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = load i32, ptr @Depth, align 4, !tbaa !41
  %i.i = getelementptr i8, ptr %i.b, i64 168
  %.val = load i32, ptr %i.i, align 8, !tbaa !65  ; 2 uses
  %.val.off = add i32 %.val, -1
  %switch = icmp ult i32 %.val.off, 2             ; 2 uses
  %.sink1.i = select i1 %switch, i32 %.val, i32 0
  %.sink.i = select i1 %switch, double 1.000000e+01, double 0.000000e+00
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i32 noundef 2, i32 noundef 1, i32 noundef %.sink1.i, double noundef %i.e, i32 noundef %i.g, i32 noundef 0, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, double noundef %.sink.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %2) #16
  %.not13.i = icmp eq i64 %2, 0
  br i1 %.not13.i, label %figptarray.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fig_line_style.exit, %.lr.ph.i
  %.012.i = phi i64 [ %i.n, %.lr.ph.i ], [ 0, %fig_line_style.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.012.i ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, double noundef %i.k, double noundef %i.m) #16
  %i.n = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.i, label %figptarray.exit, label %.lr.ph.i, !llvm.loop !68

figptarray.exit:                                  ; preds = %.lr.ph.i, %fig_line_style.exit
  %i.o = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #16 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fig_comment(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %1) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @gvputs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gvprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @agnameof(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #5

declare void @gvputs_nonascii(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #9 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull %2) #16 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, -1
  %narrow.i = add nuw i32 %i.b, 1
  %i.d = zext i32 %narrow.i to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !38 ; 4 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.c, label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i2.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i42.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i2.i, %.0.i42.i              ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp ne i8 %.val.i.i, -1
  %i.o = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !38
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.p = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38
  %i.s = load ptr, ptr %0, align 8, !tbaa !38
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.1366.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef nonnull @.str.31, ptr noundef nonnull %3) #16 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.1366.i, label %agxbnext.exit48.i, label %bb.l

agxbnext.exit48.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit48.i, %bb.k
end_hunk_0
