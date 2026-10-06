Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rank0?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@applicable_ip_sq:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %transposep.exit

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.g, 2
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %transposep.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.e, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %wide.trip.count.i, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.0.lcssa.i ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %transposep.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %transposep.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = zext i1 %i.ae to i32
  br label %transposep.exit

transposep.exit:                                  ; preds = %bb.d, %bb.g, %bb.f, %._crit_edge.i, %bb.b, %bb.a
  %i.ag = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.af, %bb.g ], [ 0, %bb.f ], [ 0, %._crit_edge.i ], [ 0, %bb.d ]
  ret i32 %i.ag
}

; Function Attrs: nounwind uwtable
define internal void @apply_ip_sq_tiled(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @transpose(ptr noundef nonnull %i.a, i32 noundef %i.c, i64 noundef %i.e, ptr noundef %1, ptr noundef nonnull @fftw_transpose_tiled)
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @applicable_ip_sq_tiled(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %applicable_ip_sq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %applicable_ip_sq.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i.i = zext nneg i32 %i.i to i64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  %.not.i.i = icmp eq i64 %i.m, %i.o
  br i1 %.not.i.i, label %bb.e, label %applicable_ip_sq.exit.thread

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.c
  %.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %wide.trip.count.i.i, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.0.lcssa.i.i ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %applicable_ip_sq.exit.thread

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %applicable_ip_sq.exit, label %applicable_ip_sq.exit.thread

applicable_ip_sq.exit:                            ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %.not = icmp eq i64 %i.ab, %i.ad
  br i1 %.not, label %bb.g, label %applicable_ip_sq.exit.thread

bb.g:                                             ; preds = %applicable_ip_sq.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ag = tail call i64 @fftw_compute_tilesz(i64 noundef %i.af, i32 noundef 2) #8
  %i.ah = icmp sgt i64 %i.ag, 4
  %i.ai = zext i1 %i.ah to i32
  br label %applicable_ip_sq.exit.thread

applicable_ip_sq.exit.thread:                     ; preds = %bb.d, %._crit_edge.i.i, %bb.f, %bb.a, %bb.b, %bb.g, %applicable_ip_sq.exit
  %i.aj = phi i32 [ 0, %applicable_ip_sq.exit ], [ %i.ai, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %._crit_edge.i.i ], [ 0, %bb.d ]
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define internal void @apply_ip_sq_tiledbuf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @transpose(ptr noundef nonnull %i.a, i32 noundef %i.c, i64 noundef %i.e, ptr noundef %1, ptr noundef nonnull @fftw_transpose_tiledbuf)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.P, align 8                  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 3 uses
  %.not.i = icmp eq i32 %i.g, 2147483647
  br i1 %.not.i, label %applicable.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  store i64 1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !29
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph.i.i, label %applicable.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i.a = phi i64 [ 1, %.lr.ph.i.i ], [ %4, %bb.j ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %i.n = icmp eq i64 %indvars.iv.i.i.a, 1
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  store i64 %i.v, ptr %i.h, align 8, !tbaa !23
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i32, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %i.x = icmp eq i32 %i.w, 32
  br i1 %i.x, label %applicable.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.w, 1
  store i32 %i.y, ptr %i.i, align 8, !tbaa !29
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.z
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !43
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %4 = phi i64 [ %i.v, %bb.g ], [ %.pre.i.i, %bb.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.m
  br i1 %exitcond.not, label %applicable.exit, label %bb.d, !llvm.loop !36

applicable.exit.thread:                           ; preds = %bb.h, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.s

applicable.exit:                                  ; preds = %bb.j, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = call i32 %i.ad(ptr noundef nonnull %3, ptr noundef %1) #8, !inline_history !37
  %.not14 = icmp eq i32 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not14, label %bb.s, label %bb.k

bb.k:                                             ; preds = %applicable.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = call ptr @fftw_mkplan_rdft(i64 noundef 856, ptr noundef nonnull @mkplan.padt, ptr noundef %i.ag) #8 ; 6 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !41  ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 3 uses
  store i64 1, ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !29
  %i.ak = load i32, ptr %.val, align 8, !tbaa !40 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %fill_iodim.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %.lr.ph.i
  %i.ao = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.be, %bb.r ]
  %indvars.iv.i.a = phi i64 [ 1, %.lr.ph.i ], [ %5, %bb.r ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  %i.ap = icmp eq i64 %indvars.iv.i.a, 1
  br i1 %i.ap, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !32
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !33
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  store i64 %i.ax, ptr %i.ai, align 8, !tbaa !23
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ay = load i32, ptr %i.aj, align 8, !tbaa !29 ; 3 uses
  %i.az = icmp eq i32 %i.ay, 32
  br i1 %i.az, label %fill_iodim.exit.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = add nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.aj, align 8, !tbaa !29
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [24 x i8], ptr %i.an, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !tbaa.struct !43
  %.pre.i = load i64, ptr %i.ai, align 8, !tbaa !23
  %.pre.i.a = load i32, ptr %.val, align 8, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.be = phi i32 [ %i.ao, %bb.o ], [ %.pre.i.a, %bb.q ] ; 2 uses
  %5 = phi i64 [ %i.ax, %bb.o ], [ %.pre.i, %bb.q ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %bb.l, label %fill_iodim.exit.loopexit, !llvm.loop !36

fill_iodim.exit.loopexit:                         ; preds = %bb.r, %bb.p
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !41
  br label %fill_iodim.exit

fill_iodim.exit:                                  ; preds = %fill_iodim.exit.loopexit, %bb.k
  %i.bh = phi ptr [ %.pre, %fill_iodim.exit.loopexit ], [ %.val, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 848
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !35
  %i.bl = call i64 @fftw_tensor_sz(ptr noundef %i.bh) #8
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @fftw_ops_other(i64 noundef %i.bm, ptr noundef nonnull %i.bn) #8
  br label %bb.s

bb.s:                                             ; preds = %applicable.exit.thread, %applicable.exit, %fill_iodim.exit
  %.0 = phi ptr [ %i.ah, %fill_iodim.exit ], [ null, %applicable.exit ], [ null, %applicable.exit.thread ]
  ret ptr %.0
}

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @memcpy_loop(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !31     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 10 uses
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %i.a, 0
  br i1 %i.g, label %.lr.ph39.preheader, label %.loopexit

.lr.ph39.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %i.a, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.a, 8
  br i1 %i.h, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i64 %i.a, 9223372036854775800
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39, %.lr.ph39.preheader.new
  %.02737 = phi ptr [ %4, %.lr.ph39.preheader.new ], [ %i.x, %.lr.ph39 ] ; 2 uses
  %.02936 = phi ptr [ %3, %.lr.ph39.preheader.new ], [ %i.w, %.lr.ph39 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %niter.next.7, %.lr.ph39 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02737, ptr align 8 %.02936, i64 %0, i1 false)
  %i.i = getelementptr inbounds [8 x i8], ptr %.02936, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.02737, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.i, i64 %0, i1 false)
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %0, i1 false)
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.c ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.m, i64 %0, i1 false)
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.c ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.o, i64 %0, i1 false)
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.c ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.q, i64 %0, i1 false)
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.c ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.s, i64 %0, i1 false)
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.c ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.e ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.u, i64 %0, i1 false)
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.c ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.e ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph39, !llvm.loop !44

bb.b:                                             ; preds = %bb.a
  %i.y = add nsw i32 %1, -1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = icmp sgt i64 %i.a, 0
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.135 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %bb.b ]
  %.12834 = phi ptr [ %i.ad, %.lr.ph ], [ %4, %bb.b ] ; 2 uses
  %.13033 = phi ptr [ %i.ac, %.lr.ph ], [ %3, %bb.b ] ; 2 uses
  tail call fastcc void @memcpy_loop(i64 noundef %0, i32 noundef %i.y, ptr noundef nonnull %i.z, ptr noundef %.13033, ptr noundef %.12834)
  %i.ab = add nuw nsw i64 %.135, 1                ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.13033, i64 %i.c
  %i.ad = getelementptr inbounds [8 x i8], ptr %.12834, i64 %i.e
  %exitcond.not = icmp eq i64 %i.ab, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !45

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph39.epil.preheader

.lr.ph39.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph39.preheader
  %.02737.epil.init = phi ptr [ %4, %.lr.ph39.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %.02936.epil.init = phi ptr [ %3, %.lr.ph39.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph39.epil

.lr.ph39.epil:                                    ; preds = %.lr.ph39.epil, %.lr.ph39.epil.preheader
  %.02737.epil = phi ptr [ %i.af, %.lr.ph39.epil ], [ %.02737.epil.init, %.lr.ph39.epil.preheader ] ; 2 uses
  %.02936.epil = phi ptr [ %i.ae, %.lr.ph39.epil ], [ %.02936.epil.init, %.lr.ph39.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph39.epil ], [ 0, %.lr.ph39.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02737.epil, ptr align 8 %.02936.epil, i64 %0, i1 false)
  %i.ae = getelementptr inbounds [8 x i8], ptr %.02936.epil, i64 %i.c
  %i.af = getelementptr inbounds [8 x i8], ptr %.02737.epil, i64 %i.e
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph39.epil, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.unr-lcssa, %.lr.ph39.epil, %bb.b, %.preheader
  ret void
}

declare void @fftw_cpy1d(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @copy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  %i.b = load i64, ptr %0, align 8, !tbaa !31     ; 2 uses
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add nsw i32 %1, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !33
  tail call void %5(ptr noundef %3, ptr noundef %4, i64 noundef %i.b, i64 noundef %i.i, i64 noundef %i.k, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %2) #8, !callees !49
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.c ]
  %.02327 = phi ptr [ %3, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %.02426 = phi ptr [ %4, %.lr.ph ], [ %i.v, %bb.c ] ; 2 uses
  tail call fastcc void @copy(ptr noundef nonnull %i.d, i32 noundef %i.e, i64 noundef %2, ptr noundef %.02327, ptr noundef %.02426, ptr noundef %5)
  %i.r = add nuw nsw i64 %.028, 1                 ; 2 uses
  %i.s = load i64, ptr %i.f, align 8, !tbaa !32
  %i.t = getelementptr inbounds [8 x i8], ptr %.02327, i64 %i.s
  %i.u = load i64, ptr %i.g, align 8, !tbaa !33
  %i.v = getelementptr inbounds [8 x i8], ptr %.02426, i64 %i.u
  %i.w = load i64, ptr %0, align 8, !tbaa !31
  %i.x = icmp slt i64 %i.r, %i.w
  br i1 %i.x, label %bb.c, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  ret void
}

declare void @fftw_cpy2d_ci(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #6

declare void @fftw_cpy2d_co(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #6

declare i64 @fftw_iabs(i64 noundef) local_unnamed_addr #6

declare void @fftw_cpy2d_tiled(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #6

declare i64 @fftw_compute_tilesz(i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @fftw_cpy2d_tiledbuf(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @transpose(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
end_hunk_0
