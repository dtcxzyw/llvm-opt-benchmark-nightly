inline.NumInlined: 44
inline.NumDeleted: 22
begin_hunk_0_@png_set_alpha_mode_fixed:bb.a
bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = and i32 %i.s, -8388609
  %i.u = load i32, ptr %i.a, align 8, !tbaa !7
  %i.v = or i32 %i.u, 8192
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = or i32 %i.x, 8388608
  %i.z = load i32, ptr %i.a, align 8, !tbaa !7
  %i.aa = and i32 %i.z, -8193
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink = phi i32 [ %i.aa, %bb.j ], [ %i.v, %bb.i ], [ %i.q, %bb.h ]
  %i.ab = phi i32 [ %i.y, %bb.j ], [ %i.t, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  %.030 = phi i32 [ %.0.i3439.ph, %bb.j ], [ %.0.i3439.ph, %bb.i ], [ 100000, %bb.h ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i32 %.030, ptr %i.ac, align 4, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ad, i8 0, i64 10, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 %.029, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 2, ptr %i.af, align 4, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ah = and i32 %i.ab, -257                     ; 2 uses
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !27
  %i.ai = and i32 %i.ab, 128
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = or disjoint i32 %i.ah, 128
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !27
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %unsupported_gamma.exit, %bb.n, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @png_reciprocal(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @png_set_alpha_mode(ptr noalias noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ogt double %2, 0.000000e+00
  %i.b = fcmp olt double %2, 1.280000e+02
  %or.cond.i = and i1 %i.a, %i.b
  %i.c = fmul nnan double %2, 1.000000e+05
  %.0.i = select i1 %or.cond.i, double %i.c, double %2
  %i.d = fadd double %.0.i, 5.000000e-01
  %i.e = tail call double @llvm.floor.f64(double %i.d) ; 2 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %or.cond3.i = fcmp ogt double %i.f, f0x41DFFFFFFFC00000
  br i1 %or.cond3.i, label %bb.b, label %convert_gamma_value.exit

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  unreachable

convert_gamma_value.exit:                         ; preds = %bb.a
  %i.g = fptosi double %i.e to i32
  tail call void @png_set_alpha_mode_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %i.g)
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_quantize(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.png_color_struct, align 1   ; 4 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !53 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !7, !alias.scope !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = or i32 %i.f, 64
  store i32 %i.g, ptr %i.e, align 4, !tbaa !27
  %i.h = icmp eq i32 %5, 0                        ; 4 uses
  br i1 %i.h, label %bb.e, label %.loopexit469

bb.e:                                             ; preds = %bb.d
  %i.i = sext i32 %2 to i64
  %i.j = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.i) #11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !56
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph.preheader, label %.loopexit469

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %2, 4
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = trunc i64 %indvars.iv to i8
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  store i8 %i.n, ptr %i.p, align 1, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.q = trunc i64 %indvars.iv.next to i8
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next
  store i8 %i.q, ptr %i.s, align 1, !tbaa !29
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.t = trunc i64 %indvars.iv.next.1 to i8
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.1
  store i8 %i.t, ptr %i.v, align 1, !tbaa !29
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.w = trunc i64 %indvars.iv.next.2 to i8
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.2
  store i8 %i.w, ptr %i.y, align 1, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit469.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

.loopexit469.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit469, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit469.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit469.loopexit.unr-lcssa ]
  %lcmp.mod714 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod714)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.z = trunc i64 %indvars.iv.epil to i8
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.epil
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !29
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit469, label %.lr.ph.epil, !llvm.loop !59

.loopexit469:                                     ; preds = %.loopexit469.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e, %bb.d
  %i.ac = icmp sgt i32 %2, %3
  br i1 %i.ac, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %.loopexit469
  %.not = icmp eq ptr %4, null
  %i.ad = sext i32 %2 to i64                      ; 2 uses
  %i.ae = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.ad) #11 ; 2 uses
  br i1 %.not, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 12 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ag, label %.lr.ph478.preheader, label %.preheader468

.lr.ph478.preheader:                              ; preds = %bb.g
  %wide.trip.count549 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter715.a = and i64 %wide.trip.count549, 3 ; 3 uses
  %i.ah = icmp ult i32 %2, 4
  br i1 %i.ah, label %.lr.ph478.epil.preheader, label %.lr.ph478.preheader.new

.lr.ph478.preheader.new:                          ; preds = %.lr.ph478.preheader
  %unroll_iter719.a = and i64 %wide.trip.count549, 2147483644
  br label %.lr.ph478

.preheader468.loopexit.unr-lcssa:                 ; preds = %.lr.ph478
  %lcmp.mod717.not = icmp eq i64 %xtraiter715.a, 0
  br i1 %lcmp.mod717.not, label %.preheader468, label %.lr.ph478.epil.preheader

.lr.ph478.epil.preheader:                         ; preds = %.preheader468.loopexit.unr-lcssa, %.lr.ph478.preheader
  %indvars.iv546.epil.init = phi i64 [ 0, %.lr.ph478.preheader ], [ %indvars.iv.next547.3, %.preheader468.loopexit.unr-lcssa ]
  %lcmp.mod718 = icmp ne i64 %xtraiter715.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod718)
  br label %.lr.ph478.epil

.lr.ph478.epil:                                   ; preds = %.lr.ph478.epil, %.lr.ph478.epil.preheader
  %indvars.iv546.epil = phi i64 [ %indvars.iv546.epil.init, %.lr.ph478.epil.preheader ], [ %indvars.iv.next547.epil, %.lr.ph478.epil ] ; 3 uses
  %epil.iter716 = phi i64 [ 0, %.lr.ph478.epil.preheader ], [ %epil.iter716.next, %.lr.ph478.epil ]
  %7 = trunc i64 %indvars.iv546.epil to i8
  %8 = load ptr, ptr %i.af, align 8, !tbaa !61
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv546.epil
  store i8 %7, ptr %9, align 1, !tbaa !29
  %indvars.iv.next547.epil = add nuw nsw i64 %indvars.iv546.epil, 1
  %epil.iter716.next = add i64 %epil.iter716, 1   ; 2 uses
  %epil.iter716.cmp.not = icmp eq i64 %epil.iter716.next, %xtraiter715.a
  br i1 %epil.iter716.cmp.not, label %.preheader468, label %.lr.ph478.epil, !llvm.loop !62

.preheader468:                                    ; preds = %.preheader468.loopexit.unr-lcssa, %.lr.ph478.epil, %bb.g
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1) ; 2 uses
  %or.cond693 = icmp sgt i32 %2, %invariant.smax
  br i1 %or.cond693, label %.lr.ph481.preheader.a, label %._crit_edge.thread

.lr.ph478:                                        ; preds = %.lr.ph478, %.lr.ph478.preheader.new
  %indvars.iv546 = phi i64 [ 0, %.lr.ph478.preheader.new ], [ %indvars.iv.next547.3, %.lr.ph478 ] ; 6 uses
  %niter720.a = phi i64 [ 0, %.lr.ph478.preheader.new ], [ %niter720.next.3, %.lr.ph478 ]
  %i.ai = trunc i64 %indvars.iv546 to i8
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv546
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !29
  %indvars.iv.next547 = or disjoint i64 %indvars.iv546, 1 ; 2 uses
  %i.al = trunc i64 %indvars.iv.next547 to i8
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next547
  store i8 %i.al, ptr %i.an, align 1, !tbaa !29
  %indvars.iv.next547.1 = or disjoint i64 %indvars.iv546, 2 ; 2 uses
  %i.ao = trunc i64 %indvars.iv.next547.1 to i8
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.next547.1
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !29
  %indvars.iv.next547.2 = or disjoint i64 %indvars.iv546, 3 ; 2 uses
  %i.ar = trunc i64 %indvars.iv.next547.2 to i8
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next547.2
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !29
  %indvars.iv.next547.3 = add nuw nsw i64 %indvars.iv546, 4 ; 2 uses
  %niter720.next.3 = add i64 %niter720.a, 4       ; 2 uses
  %niter720.ncmp.3 = icmp eq i64 %niter720.next.3, %unroll_iter719.a
  br i1 %niter720.ncmp.3, label %.preheader468.loopexit.unr-lcssa, label %.lr.ph478, !llvm.loop !63

.lr.ph481.preheader.a:                            ; preds = %.preheader468, %._crit_edge
  %.1695.in = phi i32 [ %.1695, %._crit_edge ], [ %2, %.preheader468 ]
  %indvars.iv554694.in = phi i32 [ %indvars.iv554694, %._crit_edge ], [ %2, %.preheader468 ]
  %indvars.iv554694 = add i32 %indvars.iv554694.in, -1 ; 2 uses
  %.1695 = add nsw i32 %.1695.in, -1              ; 2 uses
  %wide.trip.count556 = zext i32 %indvars.iv554694 to i64
  br label %.lr.ph481

.lr.ph481:                                        ; preds = %.lr.ph481.preheader.a, %bb.i
  %indvars.iv551 = phi i64 [ 0, %.lr.ph481.preheader.a ], [ %indvars.iv.next552, %bb.i ] ; 2 uses
  %.0356480 = phi i32 [ 1, %.lr.ph481.preheader.a ], [ %.1357, %bb.i ]
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !61 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv551 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29  ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.next552
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29  ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !30
  %i.bf = icmp ult i16 %i.az, %i.be
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph481
  store i8 %i.bb, ptr %i.av, align 1, !tbaa !29
  %i.bg = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next552
  store i8 %i.aw, ptr %i.bh, align 1, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph481, %bb.h
  %.1357 = phi i32 [ 0, %bb.h ], [ %.0356480, %.lr.ph481 ] ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count556
  br i1 %exitcond557.not, label %._crit_edge, label %.lr.ph481, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.i
  %i.bi = icmp eq i32 %.1357, 0
  %or.cond = icmp sgt i32 %.1695, %invariant.smax
  %or.cond701 = select i1 %i.bi, i1 %or.cond, i1 false
  br i1 %or.cond701, label %.lr.ph481.preheader.a, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %.preheader468
  %i.bj = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.h, label %.preheader463, label %.preheader465

.preheader465:                                    ; preds = %._crit_edge.thread
  br i1 %i.bj, label %.lr.ph484, label %.loopexit462

.lr.ph484:                                        ; preds = %.preheader465
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !61 ; 2 uses
  %wide.trip.count564 = zext nneg i32 %3 to i64
  %i.bl = trunc nuw i32 %3 to i8
  br label %bb.j

.preheader463:                                    ; preds = %._crit_edge.thread
  br i1 %i.bj, label %.lr.ph487, label %.preheader461

.lr.ph487:                                        ; preds = %.preheader463
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %wide.trip.count572 = zext nneg i32 %3 to i64
  %i.bn = trunc nuw i32 %3 to i8
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph484, %bb.l
  %indvars.iv561 = phi i64 [ 0, %.lr.ph484 ], [ %indvars.iv.next562, %bb.l ] ; 3 uses
  %.0363482 = phi i32 [ %2, %.lr.ph484 ], [ %.2365, %bb.l ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv561
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  %i.bq = zext i8 %i.bp to i32
  %.not436 = icmp sgt i32 %3, %i.bq
  br i1 %.not436, label %bb.l, label %.preheader464.preheader

.preheader464.preheader:                          ; preds = %bb.j
  %i.br = sext i32 %.0363482 to i64
  br label %.preheader464

.preheader464:                                    ; preds = %.preheader464.preheader, %.preheader464
  %indvars.iv558 = phi i64 [ %i.br, %.preheader464.preheader ], [ %indvars.iv.next559, %.preheader464 ]
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, -1 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bk, i64 %indvars.iv.next559
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !29
  %.not437 = icmp ult i8 %i.bt, %i.bl
  br i1 %.not437, label %bb.k, label %.preheader464, !llvm.loop !65

bb.k:                                             ; preds = %.preheader464
  %i.bu = trunc nsw i64 %indvars.iv.next559 to i32
  %i.bv = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv561
  %i.bw = getelementptr inbounds [3 x i8], ptr %1, i64 %indvars.iv.next559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bv, ptr noundef nonnull align 1 dereferenceable(3) %i.bw, i64 3, i1 false), !tbaa.struct !66
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.2365 = phi i32 [ %i.bu, %bb.k ], [ %.0363482, %bb.j ]
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next562, %wide.trip.count564
  br i1 %exitcond565.not, label %.loopexit462, label %bb.j, !llvm.loop !67

.preheader461:                                    ; preds = %bb.q, %.preheader463
  br i1 %i.ag, label %.lr.ph496, label %.loopexit462

.lr.ph496:                                        ; preds = %.preheader461
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ca = icmp sgt i32 %3, 1
  %wide.trip.count582 = zext nneg i32 %2 to i64
  %wide.trip.count577 = zext nneg i32 %3 to i64
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph487, %bb.q
  %indvars.iv569 = phi i64 [ 0, %.lr.ph487 ], [ %indvars.iv.next570, %bb.q ] ; 5 uses
  %.0366485 = phi i32 [ %2, %.lr.ph487 ], [ %.2368, %bb.q ] ; 2 uses
  %i.cb = load ptr, ptr %i.af, align 8, !tbaa !61 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv569
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !29
  %i.ce = zext i8 %i.cd to i32
  %.not433 = icmp sgt i32 %3, %i.ce
  br i1 %.not433, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cf = sext i32 %.0366485 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %bb.o ], [ %i.cf, %bb.n ]
  %indvars.iv.next567 = add nsw i64 %indvars.iv566, -1 ; 6 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 %indvars.iv.next567
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %.not434 = icmp ult i8 %i.ch, %i.bn
  br i1 %.not434, label %bb.p, label %bb.o, !llvm.loop !68

bb.p:                                             ; preds = %bb.o
  %i.ci = trunc nsw i64 %indvars.iv.next567 to i32
  %i.cj = getelementptr inbounds [3 x i8], ptr %1, i64 %indvars.iv.next567 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %6, ptr noundef nonnull align 1 dereferenceable(3) %i.cj, i64 3, i1 false), !tbaa.struct !66
  %i.ck = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv569 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cj, ptr noundef nonnull align 1 dereferenceable(3) %i.ck, i64 3, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ck, ptr noundef nonnull align 1 dereferenceable(3) %6, i64 3, i1 false), !tbaa.struct !66
  %i.cl = trunc i64 %indvars.iv569 to i8
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !56
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %indvars.iv.next567
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !29
  %i.co = trunc i64 %indvars.iv.next567 to i8
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv569
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.2368 = phi i32 [ %i.ci, %bb.p ], [ %.0366485, %bb.m ]
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %exitcond573.not = icmp eq i64 %indvars.iv.next570, %wide.trip.count572
  br i1 %exitcond573.not, label %.preheader461, label %bb.m, !llvm.loop !69

bb.r:                                             ; preds = %.lr.ph496, %bb.t
  %indvars.iv579 = phi i64 [ 0, %.lr.ph496 ], [ %indvars.iv.next580, %bb.t ] ; 2 uses
  %i.cr = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv579 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !29  ; 2 uses
  %i.cu = zext i8 %i.ct to i32
  %.not432 = icmp sgt i32 %3, %i.cu
  br i1 %.not432, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = zext i8 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.cv ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !70
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !72
  %i.db = zext i8 %i.da to i32                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !73
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  br i1 %i.ca, label %.lr.ph492.preheader, label %._crit_edge493

.lr.ph492.preheader:                              ; preds = %bb.s
  %i.df = load i8, ptr %i.by, align 1, !tbaa !72
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 %i.db, %i.dg
  %i.di = tail call i32 @llvm.abs.i32(i32 %i.dh, i1 true)
  %i.dj = load i8, ptr %1, align 1, !tbaa !70
  %i.dk = zext i8 %i.dj to i32
  %i.dl = sub nsw i32 %i.cy, %i.dk
  %i.dm = tail call i32 @llvm.abs.i32(i32 %i.dl, i1 true)
  %i.dn = add nuw nsw i32 %i.di, %i.dm
  %i.do = load i8, ptr %i.bz, align 1, !tbaa !73
  %i.dp = zext i8 %i.do to i32
  %i.dq = sub nsw i32 %i.de, %i.dp
  %i.dr = tail call i32 @llvm.abs.i32(i32 %i.dq, i1 true)
  %i.ds = add nuw nsw i32 %i.dn, %i.dr
  br label %.lr.ph492

.lr.ph492:                                        ; preds = %.lr.ph492.preheader, %.lr.ph492
  %indvars.iv574 = phi i64 [ 1, %.lr.ph492.preheader ], [ %indvars.iv.next575, %.lr.ph492 ] ; 3 uses
  %.0369490 = phi i32 [ %i.ds, %.lr.ph492.preheader ], [ %spec.select438, %.lr.ph492 ] ; 2 uses
  %.0372488 = phi i32 [ 0, %.lr.ph492.preheader ], [ %spec.select, %.lr.ph492 ]
  %i.dt = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv574 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !70
  %i.dv = zext i8 %i.du to i32
  %i.dw = sub nsw i32 %i.cy, %i.dv
  %i.dx = tail call i32 @llvm.abs.i32(i32 %i.dw, i1 true)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !72
  %i.ea = zext i8 %i.dz to i32
  %i.eb = sub nsw i32 %i.db, %i.ea
  %i.ec = tail call i32 @llvm.abs.i32(i32 %i.eb, i1 true)
  %i.ed = add nuw nsw i32 %i.ec, %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !73
  %i.eg = zext i8 %i.ef to i32
  %i.eh = sub nsw i32 %i.de, %i.eg
  %i.ei = tail call i32 @llvm.abs.i32(i32 %i.eh, i1 true)
  %i.ej = add nuw nsw i32 %i.ed, %i.ei            ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %.0369490
  %i.el = trunc nuw nsw i64 %indvars.iv574 to i32
  %spec.select = select i1 %i.ek, i32 %i.el, i32 %.0372488 ; 2 uses
  %spec.select438 = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %.0369490)
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next575, %wide.trip.count577
  br i1 %exitcond578.not, label %._crit_edge493.loopexit, label %.lr.ph492, !llvm.loop !74

._crit_edge493.loopexit:                          ; preds = %.lr.ph492
  %i.em = trunc i32 %spec.select to i8
  br label %._crit_edge493

._crit_edge493:                                   ; preds = %._crit_edge493.loopexit, %bb.s
  %.0372.lcssa = phi i8 [ 0, %bb.s ], [ %i.em, %._crit_edge493.loopexit ]
  store i8 %.0372.lcssa, ptr %i.cs, align 1, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %._crit_edge493
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count582
  br i1 %exitcond583.not, label %.loopexit462, label %bb.r, !llvm.loop !75

.loopexit462:                                     ; preds = %bb.l, %bb.t, %.preheader465, %.preheader461
  %i.en = load ptr, ptr %i.af, align 8, !tbaa !61
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.en) #11
  store ptr null, ptr %i.af, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@png_do_gray_to_rgb:bb.a
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !29
  %i.eg = load i8, ptr %.092109.epil.init, align 1, !tbaa !29
  %i.eh = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -3
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !29
  %i.ei = load i8, ptr %i.ed, align 1, !tbaa !29
  %i.ej = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -4
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !29
  %i.ek = load i8, ptr %.092109.epil.init, align 1, !tbaa !29
  %i.el = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -5
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !29
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !29
  store i8 %i.em, ptr %i.el, align 1, !tbaa !29
  br label %.loopexit

.loopexit.loopexit135.unr-lcssa:                  ; preds = %.lr.ph107
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.loopexit.loopexit135.unr-lcssa, %.lr.ph107.preheader
  %.089106.epil.init = phi ptr [ %i.cb, %.lr.ph107.preheader ], [ %i.cu, %.loopexit.loopexit135.unr-lcssa ] ; 4 uses
  %.090105.epil.init = phi ptr [ %i.ca, %.lr.ph107.preheader ], [ %i.cs, %.loopexit.loopexit135.unr-lcssa ] ; 2 uses
  %lcmp.mod137 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.en = getelementptr inbounds i8, ptr %.090105.epil.init, i64 -1 ; 2 uses
  %i.eo = load i8, ptr %.090105.epil.init, align 1, !tbaa !29
  %i.ep = getelementptr inbounds i8, ptr %.089106.epil.init, i64 -1
  store i8 %i.eo, ptr %.089106.epil.init, align 1, !tbaa !29
  %i.eq = load i8, ptr %i.en, align 1, !tbaa !29  ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.089106.epil.init, i64 -2
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !29
  %i.es = getelementptr inbounds i8, ptr %.089106.epil.init, i64 -3
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !29
  %i.et = load i8, ptr %i.en, align 1, !tbaa !29
  store i8 %i.et, ptr %i.es, align 1, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph107.epil.preheader, %.loopexit.loopexit135.unr-lcssa, %.lr.ph111.epil.preheader, %.loopexit.loopexit134.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %.lr.ph115.epil, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !218
  %i.ew = add i8 %i.ev, 2                         ; 2 uses
  store i8 %i.ew, ptr %i.eu, align 2, !tbaa !218
  %i.ex = load i8, ptr %i.e, align 8, !tbaa !207
  %i.ey = or i8 %i.ex, 2
  store i8 %i.ey, ptr %i.e, align 8, !tbaa !207
  %i.ez = load i8, ptr %i.b, align 1, !tbaa !210
  %i.fa = mul i8 %i.ez, %i.ew                     ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !214
  %i.fc = icmp ugt i8 %i.fa, 7
  %i.fd = zext i32 %i.a to i64                    ; 2 uses
  br i1 %i.fc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.fe = lshr i8 %i.fa, 3
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = mul nuw nsw i64 %i.ff, %i.fd
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fh = zext nneg i8 %i.fa to i64
  %i.fi = mul nuw nsw i64 %i.fh, %i.fd
  %i.fj = add nuw nsw i64 %i.fi, 7
  %i.fk = lshr i64 %i.fj, 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fl = phi i64 [ %i.fg, %bb.j ], [ %i.fk, %bb.k ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !215
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b, %bb.a
  ret void
}

declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 304}
!8 = !{!"png_struct_def", !5, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !5, i64 296, !5, i64 297, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !12, i64 320, !15, i64 432, !4, i64 440, !4, i64 444, !4, i64 448, !4, i64 452, !4, i64 456, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !4, i64 480, !4, i64 484, !4, i64 488, !4, i64 492, !4, i64 496, !4, i64 500, !4, i64 504, !4, i64 508, !4, i64 512, !4, i64 516, !4, i64 520, !11, i64 528, !4, i64 536, !4, i64 540, !4, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !4, i64 592, !4, i64 596, !16, i64 600, !17, i64 608, !4, i64 612, !17, i64 616, !5, i64 618, !5, i64 619, !5, i64 620, !5, i64 621, !5, i64 622, !5, i64 623, !5, i64 624, !5, i64 625, !5, i64 626, !5, i64 627, !5, i64 628, !5, i64 629, !5, i64 630, !5, i64 631, !5, i64 632, !17, i64 634, !5, i64 636, !4, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !4, i64 672, !4, i64 676, !19, i64 680, !4, i64 712, !4, i64 716, !4, i64 720, !4, i64 724, !4, i64 728, !13, i64 736, !20, i64 744, !13, i64 752, !13, i64 760, !20, i64 768, !20, i64 776, !22, i64 784, !22, i64 789, !13, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !4, i64 896, !4, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !4, i64 936, !4, i64 940, !13, i64 944, !13, i64 952, !4, i64 960, !5, i64 964, !4, i64 996, !9, i64 1000, !9, i64 1008, !4, i64 1016, !4, i64 1020, !13, i64 1024, !5, i64 1032, !5, i64 1033, !17, i64 1034, !17, i64 1036, !13, i64 1040, !4, i64 1048, !5, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !5, i64 1112, !4, i64 1116, !4, i64 1120, !4, i64 1124, !11, i64 1128, !23, i64 1136, !11, i64 1168, !13, i64 1176, !11, i64 1184, !4, i64 1192, !4, i64 1196, !13, i64 1200, !5, i64 1208}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"z_stream_s", !13, i64 0, !4, i64 8, !11, i64 16, !13, i64 24, !4, i64 32, !11, i64 40, !13, i64 48, !14, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !11, i64 96, !11, i64 104}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"png_color_16_struct", !5, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!20 = !{!"p2 short", !21, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!23 = !{!"png_unknown_chunk_t", !5, i64 0, !13, i64 8, !11, i64 16, !5, i64 24}
!24 = !{!25}
!25 = distinct !{!25, !26, !"png_rtran_ok: argument 0"}
!26 = distinct !{!26, !"png_rtran_ok"}
!27 = !{!8, !4, i64 308}
!28 = !{i64 0, i64 1, !29, i64 2, i64 2, !30, i64 4, i64 2, !30, i64 6, i64 2, !30, i64 8, i64 2, !30}
!29 = !{!5, !5, i64 0}
!30 = !{!17, !17, i64 0}
!31 = !{!8, !4, i64 640}
!32 = !{!8, !5, i64 636}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"png_rtran_ok: argument 0"}
!35 = distinct !{!35, !"png_rtran_ok"}
!36 = distinct !{!36, !37, !"png_set_background_fixed: argument 0"}
!37 = distinct !{!37, !"png_set_background_fixed"}
!38 = !{!36}
!39 = !{!40}
!40 = distinct !{!40, !41, !"png_rtran_ok: argument 0"}
!41 = distinct !{!41, !"png_rtran_ok"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"png_rtran_ok: argument 0"}
!44 = distinct !{!44, !"png_rtran_ok"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"png_rtran_ok: argument 0"}
!47 = distinct !{!47, !"png_rtran_ok"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"png_rtran_ok: argument 0"}
!50 = distinct !{!50, !"png_rtran_ok"}
!51 = !{!8, !4, i64 728}
!52 = !{!8, !4, i64 716}
!53 = !{!54}
!54 = distinct !{!54, !55, !"png_rtran_ok: argument 0"}
!55 = distinct !{!55, !"png_rtran_ok"}
!56 = !{!8, !13, i64 952}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!8, !13, i64 1088}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !58}
!64 = distinct !{!64, !58}
!65 = distinct !{!65, !58}
!66 = !{i64 0, i64 1, !29, i64 1, i64 1, !29, i64 2, i64 1, !29}
!67 = distinct !{!67, !58}
!68 = distinct !{!68, !58}
!69 = distinct !{!69, !58}
!70 = !{!71, !5, i64 0}
!71 = !{!"png_color_struct", !5, i64 0, !5, i64 1, !5, i64 2}
!72 = !{!71, !5, i64 1}
!73 = !{!71, !5, i64 2}
!74 = distinct !{!74, !58}
!75 = distinct !{!75, !58}
!76 = !{!8, !13, i64 1096}
!77 = !{!8, !13, i64 1104}
!78 = distinct !{!78, !58}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTS16png_dsort_struct", !9, i64 0}
!81 = !{!82, !80, i64 0}
!82 = !{!"png_dsort_struct", !80, i64 0, !5, i64 8, !5, i64 9}
!83 = !{!82, !5, i64 8}
!84 = !{!82, !5, i64 9}
!85 = distinct !{!85, !58}
!86 = distinct !{!86, !58}
!87 = distinct !{!87, !58}
!88 = distinct !{!88, !58}
!89 = distinct !{!89, !58}
!90 = distinct !{!90, !58}
!91 = distinct !{!91, !58}
!92 = !{!8, !16, i64 600}
!93 = !{!8, !17, i64 608}
!94 = !{!8, !13, i64 944}
!95 = distinct !{!95, !58}
!96 = distinct !{!96, !58}
!97 = distinct !{!97, !58}
!98 = distinct !{!98, !58}
!99 = !{!100}
!100 = distinct !{!100, !101, !"png_rtran_ok: argument 0"}
!101 = distinct !{!101, !"png_rtran_ok"}
!102 = !{!8, !4, i64 720}
!103 = !{!104}
!104 = distinct !{!104, !105, !"png_rtran_ok: argument 0"}
!105 = distinct !{!105, !"png_rtran_ok"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"png_rtran_ok: argument 0"}
!108 = distinct !{!108, !"png_rtran_ok"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"png_rtran_ok: argument 0"}
!111 = distinct !{!111, !"png_rtran_ok"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"png_rtran_ok: argument 0"}
!114 = distinct !{!114, !"png_rtran_ok"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"png_rtran_ok: argument 0"}
!117 = distinct !{!117, !"png_rtran_ok"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"png_rtran_ok: argument 0"}
!120 = distinct !{!120, !"png_rtran_ok"}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"png_rtran_ok: argument 0"}
!123 = distinct !{!123, !"png_rtran_ok"}
!124 = distinct !{!124, !125, !"png_set_expand_gray_1_2_4_to_8: argument 0"}
!125 = distinct !{!125, !"png_set_expand_gray_1_2_4_to_8"}
!126 = !{!124}
!127 = !{!128}
!128 = distinct !{!128, !129, !"png_rtran_ok: argument 0"}
!129 = distinct !{!129, !"png_rtran_ok"}
!130 = !{!8, !4, i64 300}
!131 = !{!8, !5, i64 623}
!132 = !{!8, !17, i64 1034}
!133 = !{!8, !17, i64 1036}
!134 = !{!8, !5, i64 1033}
!135 = !{!8, !9, i64 272}
!136 = !{!8, !4, i64 724}
!137 = !{!138}
!138 = distinct !{!138, !139, !"png_init_gamma_values: argument 0"}
!139 = distinct !{!139, !"png_init_gamma_values"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"png_resolve_file_gamma: argument 0"}
!142 = distinct !{!142, !"png_resolve_file_gamma"}
!143 = !{!141, !138}
!144 = !{!8, !17, i64 616}
!145 = !{!8, !17, i64 646}
!146 = !{!8, !17, i64 648}
!147 = !{!8, !17, i64 650}
!148 = !{!8, !17, i64 652}
!149 = !{!150}
!150 = distinct !{!150, !151, !"png_init_palette_transformations: argument 0"}
!151 = distinct !{!151, !"png_init_palette_transformations"}
!152 = !{!8, !13, i64 800}
!153 = distinct !{!153, !58}
!154 = !{!8, !5, i64 644}
!155 = distinct !{!155, !58, !156, !157}
!156 = !{!"llvm.loop.isvectorized", i32 1}
!157 = !{!"llvm.loop.unroll.runtime.disable"}
!158 = !{!"branch_weights", i32 4, i32 28}
!159 = distinct !{!159, !58, !156, !157}
!160 = distinct !{!160, !58, !157, !156}
!161 = !{!162}
!162 = distinct !{!162, !163, !"png_init_rgb_transformations: argument 0"}
!163 = distinct !{!163, !"png_init_rgb_transformations"}
!164 = !{!8, !17, i64 816}
!165 = !{!8, !5, i64 624}
!166 = !{!8, !17, i64 814}
!167 = !{!8, !17, i64 812}
!168 = !{!8, !17, i64 810}
!169 = !{!8, !13, i64 736}
!170 = !{!8, !13, i64 760}
!171 = !{!8, !13, i64 752}
!172 = distinct !{!172, !58}
!173 = !{!8, !17, i64 662}
!174 = !{!8, !17, i64 656}
!175 = !{!8, !17, i64 658}
!176 = !{!8, !17, i64 660}
!177 = distinct !{!177, !58}
!178 = distinct !{!178, !58}
!179 = !{!8, !5, i64 784}
!180 = distinct !{!180, !58}
!181 = distinct !{!181, !60}
!182 = !{!8, !5, i64 785}
!183 = distinct !{!183, !58}
!184 = distinct !{!184, !60}
!185 = !{!8, !5, i64 786}
!186 = distinct !{!186, !58}
!187 = distinct !{!187, !60}
!188 = !{!189, !5, i64 37}
!189 = !{!"png_info_def", !4, i64 0, !4, i64 4, !4, i64 8, !11, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 52, !5, i64 53, !5, i64 54, !5, i64 55, !13, i64 56, !13, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !17, i64 84, !17, i64 86, !17, i64 88, !17, i64 90, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !190, i64 120, !191, i64 128, !22, i64 136, !13, i64 144, !18, i64 152, !18, i64 162, !4, i64 172, !4, i64 176, !5, i64 180, !4, i64 184, !4, i64 188, !5, i64 192, !4, i64 196, !13, i64 200, !192, i64 208, !13, i64 216, !4, i64 224, !4, i64 228, !13, i64 232, !193, i64 240, !5, i64 248, !5, i64 249, !4, i64 252, !194, i64 256, !4, i64 264, !195, i64 272, !4, i64 280, !5, i64 284, !13, i64 288, !13, i64 296, !193, i64 304, !19, i64 312, !4, i64 344, !4, i64 348}
!190 = !{!"p1 _ZTS15png_text_struct", !9, i64 0}
!191 = !{!"png_time_struct", !17, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6}
!192 = !{!"p1 short", !9, i64 0}
!193 = !{!"p2 omnipotent char", !21, i64 0}
!194 = !{!"p1 _ZTS19png_unknown_chunk_t", !9, i64 0}
!195 = !{!"p1 _ZTS15png_sPLT_struct", !9, i64 0}
!196 = !{!189, !5, i64 36}
!197 = !{!189, !17, i64 34}
!198 = !{!189, !4, i64 344}
!199 = !{!189, !5, i64 41}
!200 = !{!8, !5, i64 296}
!201 = !{!8, !5, i64 297}
!202 = !{!189, !5, i64 42}
!203 = !{!189, !4, i64 0}
!204 = !{!189, !11, i64 16}
!205 = !{!8, !11, i64 584}
!206 = !{!8, !13, i64 560}
!207 = !{!208, !5, i64 16}
!208 = !{!"png_row_info_struct", !4, i64 0, !11, i64 8, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19}
!209 = !{!208, !4, i64 0}
!210 = !{!208, !5, i64 17}
!211 = distinct !{!211, !58}
!212 = distinct !{!212, !58}
!213 = distinct !{!213, !58}
!214 = !{!208, !5, i64 19}
!215 = !{!208, !11, i64 8}
!216 = distinct !{!216, !58}
!217 = distinct !{!217, !58}
!218 = !{!208, !5, i64 18}
!219 = !{!220}
!220 = distinct !{!220, !221, !"png_do_rgb_to_gray: argument 0"}
!221 = distinct !{!221, !"png_do_rgb_to_gray"}
!222 = distinct !{!222, !58}
!223 = distinct !{!223, !58}
!224 = !{!8, !20, i64 776}
!225 = !{!8, !20, i64 768}
!226 = !{!8, !20, i64 744}
!227 = !{!8, !4, i64 712}
!228 = !{!192, !192, i64 0}
!229 = distinct !{!229, !58}
!230 = distinct !{!230, !58}
!231 = !{!8, !5, i64 1032}
!232 = !{!233}
!233 = distinct !{!233, !234, !"png_do_compose: argument 0"}
!234 = distinct !{!234, !"png_do_compose"}
!235 = distinct !{!235, !58}
!236 = distinct !{!236, !58}
!237 = distinct !{!237, !58}
!238 = distinct !{!238, !58}
!239 = distinct !{!239, !58}
!240 = distinct !{!240, !58}
!241 = distinct !{!241, !58}
!242 = distinct !{!242, !58}
!243 = distinct !{!243, !58}
!244 = distinct !{!244, !58}
!245 = distinct !{!245, !58}
!246 = distinct !{!246, !58}
!247 = distinct !{!247, !58}
!248 = distinct !{!248, !58}
!249 = distinct !{!249, !58}
!250 = distinct !{!250, !58}
!251 = distinct !{!251, !58}
!252 = distinct !{!252, !58}
!253 = distinct !{!253, !58}
!254 = distinct !{!254, !58}
!255 = distinct !{!255, !58}
!256 = !{!257}
!257 = distinct !{!257, !258, !"png_do_gamma: argument 0"}
!258 = distinct !{!258, !"png_do_gamma"}
!259 = distinct !{!259, !58}
!260 = distinct !{!260, !58}
!261 = distinct !{!261, !58}
!262 = distinct !{!262, !58}
!263 = distinct !{!263, !58}
end_hunk_1
