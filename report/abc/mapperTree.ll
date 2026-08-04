inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Map_LibraryGetMaxSuperPi_rec:bb.a
  %i.l = tail call fastcc i32 @Map_LibraryGetMaxSuperPi_rec(ptr noundef %i.k)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.015, i32 %i.l) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !71

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %.011 = phi i32 [ %i.i, %bb.b ], [ 0, %.preheader ], [ %spec.select, %bb.c ]
  ret i32 %.011
}

declare i32 @Map_CanonComputeSlow(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Map_SuperTableInsertC(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Map_SuperTableSortSupergatesByDelay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @Map_CalculatePhase(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.018 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.w, %bb.d ] ; 5 uses
  %.01516 = phi i32 [ %2, %.lr.ph.preheader.new ], [ %.1.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.c = and i32 %.018, %3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %.01516, %i.f
  %i.h = shl i32 %i.g, %.018
  %i.i = and i32 %i.e, %.01516
  %i.j = lshr i32 %i.i, %.018
  %i.k = or i32 %i.h, %i.j
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.k, %bb.b ], [ %.01516, %.lr.ph ] ; 3 uses
  %i.l = shl i32 %.018, 1                         ; 3 uses
  %i.m = and i32 %i.l, %3
  %.not.1 = icmp eq i32 %i.m, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %i.q = xor i32 %i.p, -1
  %i.r = and i32 %.1, %i.q
  %i.s = shl i32 %i.r, %i.l
  %i.t = and i32 %i.p, %.1
  %i.u = lshr i32 %i.t, %i.l
  %i.v = or i32 %i.s, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %.1.1 = phi i32 [ %i.v, %bb.c ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.w = shl i32 %.018, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !72

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.018.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01516.epil.init = phi i32 [ %2, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod21 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.x = and i32 %.018.epil.init, %3
  %.not.epil = icmp eq i32 %i.x, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27   ; 2 uses
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %.01516.epil.init, %i.aa
  %i.ac = shl i32 %i.ab, %.018.epil.init
  %i.ad = and i32 %i.z, %.01516.epil.init
  %i.ae = lshr i32 %i.ad, %.018.epil.init
  %i.af = or i32 %i.ac, %i.ae
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  %.015.lcssa = phi i32 [ %2, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %bb.e ], [ %.01516.epil.init, %.lr.ph.epil.preheader ]
  ret i32 %.015.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Map_CalculatePhase6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  store i32 %i.a, ptr %4, align 4, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !27
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.g = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.aa, %bb.e ] ; 5 uses
  %i.h = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.ab, %bb.e ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.037 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.ac, %bb.e ] ; 7 uses
  %i.i = and i32 %.037, %3
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %.037, 32
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27   ; 2 uses
  %i.m = xor i32 %i.l, -1
  %i.n = and i32 %i.h, %i.m
  %i.o = shl i32 %i.n, %.037
  %i.p = and i32 %i.l, %i.h
  %i.q = lshr i32 %i.p, %.037
  %i.r = or i32 %i.o, %i.q                        ; 2 uses
  store i32 %i.r, ptr %4, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 2 uses
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %i.g, %i.u
  %i.w = shl i32 %i.v, %.037
  %i.x = and i32 %i.t, %i.g
  %i.y = lshr i32 %i.x, %.037
  %i.z = or i32 %i.w, %i.y
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  store i32 %i.g, ptr %4, align 4, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.h, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %.ph40 = phi i32 [ %i.g, %bb.d ], [ %i.r, %bb.c ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %.lr.ph
  %i.aa = phi i32 [ %i.g, %.lr.ph ], [ %.sink, %.sink.split ]
  %i.ab = phi i32 [ %i.h, %.lr.ph ], [ %.ph40, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = shl i32 %.037, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !73

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Map_LibraryPrintTree(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp slt i32 %i.b, 20
  br i1 %i.c, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph71, %._crit_edge68
  %indvars.iv78 = phi i64 [ %i.e, %.lr.ph71 ], [ %indvars.iv.next79, %._crit_edge68 ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv78
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 11 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not, i32 32, i32 42
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = tail call ptr @Mio_GateReadName(ptr noundef %i.q) #18
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.r) ; 0 uses
  %i.t = load i32, ptr %i.k, align 4
  %i.u = and i32 %i.t, 28
  %.not73 = icmp eq i32 %i.u, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = load i32, ptr %i.x, align 8, !tbaa !22
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.y) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.k, align 4
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.c, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %i.ag) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @Extra_PrintBinary(ptr noundef %i.ai, ptr noundef nonnull %i.aj, i32 noundef 64) #18
  %i.ak = load i32, ptr %i.k, align 4
  %i.al = lshr i32 %i.ak, 5
  %i.am = and i32 %i.al, 7
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.am) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 236
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !68
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %1 = load float, ptr %i.as, align 8, !tbaa !64
  %2 = fpext float %1 to double
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  %4 = load float, ptr %3, align 4, !tbaa !65
  %5 = fpext float %4 to double
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, double noundef %2, double noundef %5) ; 0 uses
  %putchar58 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.au = load i32, ptr %i.a, align 8, !tbaa !44
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph67, %bb.p
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76, %bb.p ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %indvars.iv75 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !48 ; 2 uses
  %i.ba = fcmp olt float %i.az, 0.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !49 ; 3 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00      ; 2 uses
  br i1 %i.ba, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) ; 0 uses
  br label %bb.j

.thread:                                          ; preds = %bb.d
  %i.bf = fpext float %i.az to double             ; 2 uses
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.bf) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.bh = fpext float %i.bc to double
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %i.bh) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %.thread
  %i.bj = fpext float %i.bc to double
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.bf, double noundef %i.bj) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %indvars.iv75 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !48 ; 2 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !49 ; 3 uses
  %i.bq = fcmp olt float %i.bp, 0.000000e+00      ; 2 uses
  br i1 %i.bn, label %bb.k, label %.thread62

bb.k:                                             ; preds = %bb.j
  br i1 %i.bq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) ; 0 uses
  br label %bb.p

.thread62:                                        ; preds = %bb.j
  %i.bs = fpext float %i.bm to double             ; 2 uses
  br i1 %i.bq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread62
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, double noundef %i.bs) ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bu = fpext float %i.bp to double
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %i.bu) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.thread62
  %i.bw = fpext float %i.bp to double
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.bs, double noundef %i.bw) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.l
  %putchar60 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.by = load i32, ptr %i.a, align 8, !tbaa !44
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next76, %i.bz
  br i1 %i.ca, label %bb.d, label %._crit_edge68, !llvm.loop !75

._crit_edge68:                                    ; preds = %bb.p, %._crit_edge
  %putchar59 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.cb = and i64 %indvars.iv.next79, 4294967295
  %exitcond.not = icmp eq i64 %i.cb, 20
  br i1 %exitcond.not, label %._crit_edge72, label %bb.b, !llvm.loop !76

._crit_edge72:                                    ; preds = %._crit_edge68, %bb.a
  ret void
}

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #4

declare void @Extra_ProgressBarUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Mio_PinReadPhase(ptr noundef) local_unnamed_addr #2

declare double @Mio_PinReadDelayBlockRise(ptr noundef) local_unnamed_addr #2

declare double @Mio_PinReadDelayBlockFall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !20, i64 160}
!9 = !{!"Map_SuperLibStruct_t_", !10, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !13, i64 40, !15, i64 48, !15, i64 56, !6, i64 64, !6, i64 112, !16, i64 120, !17, i64 128, !18, i64 140, !18, i64 144, !19, i64 152, !20, i64 160, !20, i64 168, !21, i64 176}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS20Mio_LibraryStruct_t_", !11, i64 0}
!13 = !{!"p2 _ZTS18Map_SuperStruct_t_", !14, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"p1 _ZTS22Map_HashTableStruct_t_", !11, i64 0}
!16 = !{!"p1 _ZTS17Mio_GateStruct_t_", !11, i64 0}
!17 = !{!"Map_TimeStruct_t_", !18, i64 0, !18, i64 4, !18, i64 8}
!18 = !{!"float", !6, i64 0}
!19 = !{!"p1 _ZTS18Map_SuperStruct_t_", !11, i64 0}
!20 = !{!"p1 _ZTS16Extra_MmFixed_t_", !11, i64 0}
!21 = !{!"p1 _ZTS15Extra_MmFlex_t_", !11, i64 0}
!22 = !{!23, !5, i64 0}
!23 = !{!"Map_SuperStruct_t_", !5, i64 0, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 5, !5, i64 5, !5, i64 7, !6, i64 8, !5, i64 12, !6, i64 16, !16, i64 64, !6, i64 72, !6, i64 80, !6, i64 152, !17, i64 224, !18, i64 236, !10, i64 240, !19, i64 248}
!24 = !{!6, !6, i64 0}
!25 = !{!9, !12, i64 8}
!26 = !{!23, !16, i64 64}
!27 = !{!5, !5, i64 0}
!28 = distinct !{null}
!29 = !{!9, !5, i64 28}
!30 = !{!9, !13, i64 40}
!31 = !{!19, !19, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!9, !21, i64 176}
!36 = !{!23, !10, i64 240}
!37 = !{!38, !10, i64 8}
!38 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!39 = !{!38, !5, i64 4}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = !{!9, !5, i64 16}
!45 = !{!9, !5, i64 24}
!46 = !{!18, !18, i64 0}
!47 = distinct !{!47, !33}
!48 = !{!17, !18, i64 0}
!49 = !{!17, !18, i64 4}
!50 = distinct !{!50, !33}
end_hunk_0
