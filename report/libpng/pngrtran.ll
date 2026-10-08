Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_alpha_mode:bb.a
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
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  unreachable

convert_gamma_value.exit:                         ; preds = %bb.a
  %i.g = fptosi double %i.e to i32
  tail call void @png_set_alpha_mode_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %i.g)
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_quantize(ptr noalias noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24, !alias.scope !125 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %png_rtran_ok.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #11
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit:                                ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !24, !alias.scope !125
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %png_rtran_ok.exit.thread, label %bb.d

bb.d:                                             ; preds = %png_rtran_ok.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = or i32 %i.g, 64
  store i32 %i.h, ptr %i.f, align 4, !tbaa !25
  %i.i = icmp eq i32 %5, 0                        ; 4 uses
  br i1 %i.i, label %bb.e, label %.loopexit476

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.k) #11
  %i.l = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 256) #11
  store ptr %i.l, ptr %i.j, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.3, %bb.f ] ; 6 uses
  %i.m = trunc i64 %indvars.iv to i8
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 %i.m, ptr %i.o, align 1, !tbaa !26
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = trunc i64 %indvars.iv.next to i8
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next
  store i8 %i.p, ptr %i.r, align 1, !tbaa !26
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.s = trunc i64 %indvars.iv.next.1 to i8
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.1
  store i8 %i.s, ptr %i.u, align 1, !tbaa !26
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.v = trunc i64 %indvars.iv.next.2 to i8
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.2
  store i8 %i.v, ptr %i.x, align 1, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.loopexit476, label %bb.f, !llvm.loop !102

.loopexit476:                                     ; preds = %bb.f, %bb.d
  %i.y = icmp sgt i32 %2, %3
  br i1 %i.y, label %bb.g, label %bb.at

bb.g:                                             ; preds = %.loopexit476
  %.not = icmp eq ptr %4, null
  %i.z = sext i32 %2 to i64                       ; 2 uses
  %i.aa = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.z) #11 ; 16 uses
  br i1 %.not, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ab, label %iter.check, label %.preheader475

iter.check:                                       ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check709 = icmp ult i32 %2, 32
  br i1 %min.iters.check709, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %vec.ind, ptr %i.ad, align 1, !tbaa !26
  store <16 x i8> %step.add, ptr %i.ae, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader475, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec710 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.ag = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ag, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index711 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next713, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind712 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next714, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index711
  store <8 x i8> %vec.ind712, ptr %i.ah, align 1, !tbaa !26
  %index.next713 = add nuw i64 %index711, 8       ; 2 uses
  %vec.ind.next714 = add <8 x i8> %vec.ind712, splat (i8 8)
  %i.ai = icmp eq i64 %index.next713, %n.vec710
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n715 = icmp eq i64 %n.vec710, %wide.trip.count
  br i1 %cmp.n715, label %.preheader475, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv552.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec710, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader475:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1) ; 2 uses
  %or.cond701 = icmp sgt i32 %2, %invariant.smax
  br i1 %or.cond701, label %.lr.ph487.preheader.preheader, label %._crit_edge.thread

.lr.ph487.preheader.preheader:                    ; preds = %.preheader475
  %i.aj = add i32 %2, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nsw i64 %i.ak, -1
  br label %.lr.ph487.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %.lr.ph ], [ %indvars.iv552.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = trunc i64 %indvars.iv552 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv552
  store i8 %i.am, ptr %i.an, align 1, !tbaa !26
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count
  br i1 %exitcond555.not, label %.preheader475, label %.lr.ph, !llvm.loop !105

.lr.ph487.preheader:                              ; preds = %.lr.ph487.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph487.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.1401703.in = phi i32 [ %2, %.lr.ph487.preheader.preheader ], [ %.1401703, %._crit_edge ]
  %indvars.iv559702.in = phi i32 [ %2, %.lr.ph487.preheader.preheader ], [ %indvars.iv559702, %._crit_edge ]
  %indvars.iv559702 = add i32 %indvars.iv559702.in, -1 ; 3 uses
  %.1401703 = add nsw i32 %.1401703.in, -1        ; 2 uses
  %wide.trip.count561 = zext i32 %indvars.iv559702 to i64 ; 2 uses
  %.pre = load i8, ptr %i.aa, align 1, !tbaa !26  ; 2 uses
  %xtraiter = and i64 %wide.trip.count561, 1
  %i.ao = icmp eq i64 %indvar, %i.al
  br i1 %i.ao, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter = and i64 %wide.trip.count561, 4294967294
  br label %.lr.ph487

.lr.ph487:                                        ; preds = %bb.k, %.lr.ph487.preheader.new
  %i.ap = phi i8 [ %.pre, %.lr.ph487.preheader.new ], [ %i.bl, %bb.k ] ; 3 uses
  %indvars.iv556 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %indvars.iv.next557.1, %bb.k ] ; 4 uses
  %.0391486 = phi i32 [ 1, %.lr.ph487.preheader.new ], [ %.1392.1, %bb.k ]
  %niter = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !27
  %indvars.iv.next557 = or disjoint i64 %indvars.iv556, 1 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv556
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26  ; 3 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !27
  %i.ay = icmp ult i16 %i.as, %i.ax
  br i1 %i.ay, label %bb.i, label %.lr.ph487.1

bb.i:                                             ; preds = %.lr.ph487
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv556
  store i8 %i.au, ptr %i.az, align 1, !tbaa !26
  store i8 %i.ap, ptr %i.at, align 1, !tbaa !26
  br label %.lr.ph487.1

.lr.ph487.1:                                      ; preds = %.lr.ph487, %bb.i
  %i.ba = phi i8 [ %i.ap, %bb.i ], [ %i.au, %.lr.ph487 ] ; 3 uses
  %.1392 = phi i32 [ 0, %bb.i ], [ %.0391486, %.lr.ph487 ]
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next557.1 = add nuw nsw i64 %indvars.iv556, 2 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next557
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !26  ; 3 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !27
  %i.bj = icmp ult i16 %i.bd, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph487.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next557
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !26
  store i8 %i.ba, ptr %i.be, align 1, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph487.1
  %i.bl = phi i8 [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph487.1 ] ; 2 uses
  %.1392.1 = phi i32 [ 0, %bb.j ], [ %.1392, %.lr.ph487.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph487, !llvm.loop !106

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph487.epil.preheader

.lr.ph487.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph487.preheader
  %.epil.init = phi i8 [ %.pre, %.lr.ph487.preheader ], [ %i.bl, %._crit_edge.unr-lcssa ] ; 2 uses
  %indvars.iv556.epil.init = phi i64 [ 0, %.lr.ph487.preheader ], [ %indvars.iv.next557.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0391486.epil.init = phi i32 [ 1, %.lr.ph487.preheader ], [ %.1392.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod730 = trunc i32 %indvars.iv559702 to i1
  tail call void @llvm.assume(i1 %lcmp.mod730)
  %i.bm = zext i8 %.epil.init to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv556.epil.init
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26  ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !27
  %i.bv = icmp ult i16 %i.bo, %i.bu
  br i1 %i.bv, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph487.epil.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv556.epil.init
  store i8 %i.br, ptr %i.bw, align 1, !tbaa !26
  store i8 %.epil.init, ptr %i.bq, align 1, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph487.epil.preheader, %bb.l, %._crit_edge.unr-lcssa
  %.1392.lcssa = phi i32 [ %.1392.1, %._crit_edge.unr-lcssa ], [ 0, %bb.l ], [ %.0391486.epil.init, %.lr.ph487.epil.preheader ]
  %i.bx = icmp eq i32 %.1392.lcssa, 0
  %or.cond = icmp sgt i32 %.1401703, %invariant.smax
  %or.cond716 = select i1 %i.bx, i1 %or.cond, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %or.cond716, label %.lr.ph487.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %.preheader475
  %i.by = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.i, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %._crit_edge.thread
  br i1 %i.by, label %.lr.ph490.preheader, label %.loopexit469

.lr.ph490.preheader:                              ; preds = %.preheader472
  %wide.trip.count569 = zext nneg i32 %3 to i64
  %i.bz = trunc nuw i32 %3 to i8
  br label %.lr.ph490

.preheader470:                                    ; preds = %._crit_edge.thread
  br i1 %i.by, label %.lr.ph493, label %.preheader468

.lr.ph493:                                        ; preds = %.preheader470
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %wide.trip.count577 = zext nneg i32 %3 to i64
  %i.cb = trunc nuw i32 %3 to i8
  br label %bb.o

.lr.ph490:                                        ; preds = %.lr.ph490.preheader, %bb.n
  %indvars.iv566 = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next567, %bb.n ] ; 3 uses
  %.1394489 = phi i32 [ %2, %.lr.ph490.preheader ], [ %.3396, %bb.n ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv566
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26
  %i.ce = zext i8 %i.cd to i32
  %.not442 = icmp sgt i32 %3, %i.ce
  br i1 %.not442, label %bb.n, label %.preheader471.preheader

.preheader471.preheader:                          ; preds = %.lr.ph490
  %i.cf = sext i32 %.1394489 to i64
  br label %.preheader471

.preheader471:                                    ; preds = %.preheader471.preheader, %.preheader471
  %indvars.iv563 = phi i64 [ %i.cf, %.preheader471.preheader ], [ %indvars.iv.next564, %.preheader471 ] ; 3 uses
  %indvars.iv.next564 = add nsw i64 %indvars.iv563, -1 ; 2 uses
  %8 = getelementptr i8, ptr %i.aa, i64 %indvars.iv563
  %i.cg = getelementptr i8, ptr %8, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !26
  %.not443 = icmp ult i8 %i.ch, %i.bz
  br i1 %.not443, label %bb.m, label %.preheader471, !llvm.loop !107

bb.m:                                             ; preds = %.preheader471
  %i.ci = trunc nsw i64 %indvars.iv.next564 to i32
  %i.cj = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv566
  %i.ck = getelementptr [3 x i8], ptr %1, i64 %indvars.iv563
  %9 = getelementptr i8, ptr %i.ck, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cj, ptr noundef nonnull align 1 dereferenceable(3) %9, i64 3, i1 false), !tbaa.struct !126
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph490, %bb.m
  %.3396 = phi i32 [ %i.ci, %bb.m ], [ %.1394489, %.lr.ph490 ]
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count569
  br i1 %exitcond570.not, label %.loopexit469, label %.lr.ph490, !llvm.loop !108

.preheader468:                                    ; preds = %bb.s, %.preheader470
  br i1 %i.ab, label %.lr.ph502, label %.loopexit469

.lr.ph502:                                        ; preds = %.preheader468
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.co = icmp sgt i32 %3, 1
  %wide.trip.count587 = zext nneg i32 %2 to i64
  %wide.trip.count582 = zext nneg i32 %3 to i64
  br label %bb.t

bb.o:                                             ; preds = %.lr.ph493, %bb.s
  %indvars.iv574 = phi i64 [ 0, %.lr.ph493 ], [ %indvars.iv.next575, %bb.s ] ; 5 uses
  %.4397492 = phi i32 [ %2, %.lr.ph493 ], [ %.6399, %bb.s ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv574
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !26
  %i.cr = zext i8 %i.cq to i32
  %.not439 = icmp sgt i32 %3, %i.cr
  br i1 %.not439, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = sext i32 %.4397492 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %bb.q ], [ %i.cs, %bb.p ] ; 4 uses
  %indvars.iv.next572 = add nsw i64 %indvars.iv571, -1 ; 3 uses
  %10 = getelementptr i8, ptr %i.aa, i64 %indvars.iv571
  %i.ct = getelementptr i8, ptr %10, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %.not440 = icmp ult i8 %i.cu, %i.cb
  br i1 %.not440, label %bb.r, label %bb.q, !llvm.loop !109

bb.r:                                             ; preds = %bb.q
  %i.cv = trunc nsw i64 %indvars.iv.next572 to i32
  %i.cw = getelementptr [3 x i8], ptr %1, i64 %indvars.iv571
  %11 = getelementptr i8, ptr %i.cw, i64 -3       ; 2 uses
  %.sroa.0.0.copyload = load <3 x i8>, ptr %11, align 1, !tbaa !26
  %i.cx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv574 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %11, ptr noundef nonnull align 1 dereferenceable(3) %i.cx, i64 3, i1 false), !tbaa.struct !126
  store <3 x i8> %.sroa.0.0.copyload, ptr %i.cx, align 1, !tbaa !26
  %i.cy = trunc i64 %indvars.iv574 to i8
  %i.cz = load ptr, ptr %i.ca, align 8, !tbaa !34
  %12 = getelementptr i8, ptr %i.cz, i64 %indvars.iv571
  %i.da = getelementptr i8, ptr %12, i64 -1
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !26
  %i.db = trunc i64 %indvars.iv.next572 to i8
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv574
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !26
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.6399 = phi i32 [ %i.cv, %bb.r ], [ %.4397492, %bb.o ]
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next575, %wide.trip.count577
  br i1 %exitcond578.not, label %.preheader468, label %bb.o, !llvm.loop !110

bb.t:                                             ; preds = %.lr.ph502, %bb.v
  %indvars.iv584 = phi i64 [ 0, %.lr.ph502 ], [ %indvars.iv.next585, %bb.v ] ; 2 uses
  %i.de = load ptr, ptr %i.cl, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv584 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26  ; 2 uses
  %i.dh = zext i8 %i.dg to i32
  %.not438 = icmp sgt i32 %3, %i.dh
  br i1 %.not438, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = zext i8 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.di ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !40
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !41
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !42
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  br i1 %i.co, label %.lr.ph498.preheader, label %._crit_edge499

.lr.ph498.preheader:                              ; preds = %bb.u
  %i.ds = load i8, ptr %i.cm, align 1, !tbaa !41
  %i.dt = zext i8 %i.ds to i32
  %i.du = sub nsw i32 %i.do, %i.dt
  %i.dv = tail call i32 @llvm.abs.i32(i32 %i.du, i1 true)
  %i.dw = load i8, ptr %1, align 1, !tbaa !40
  %i.dx = zext i8 %i.dw to i32
  %i.dy = sub nsw i32 %i.dl, %i.dx
  %i.dz = tail call i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %i.ea = add nuw nsw i32 %i.dv, %i.dz
  %i.eb = load i8, ptr %i.cn, align 1, !tbaa !42
  %i.ec = zext i8 %i.eb to i32
  %i.ed = sub nsw i32 %i.dr, %i.ec
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = add nuw nsw i32 %i.ea, %i.ee
  br label %.lr.ph498

.lr.ph498:                                        ; preds = %.lr.ph498.preheader, %.lr.ph498
  %indvars.iv579 = phi i64 [ 1, %.lr.ph498.preheader ], [ %indvars.iv.next580, %.lr.ph498 ] ; 3 uses
  %.0381496 = phi i32 [ 0, %.lr.ph498.preheader ], [ %spec.select444, %.lr.ph498 ]
  %.0384494 = phi i32 [ %i.ef, %.lr.ph498.preheader ], [ %spec.select, %.lr.ph498 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv579 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !40
  %i.ei = zext i8 %i.eh to i32
  %i.ej = sub nsw i32 %i.dl, %i.ei
  %i.ek = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 true)
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !41
  %i.en = zext i8 %i.em to i32
  %i.eo = sub nsw i32 %i.do, %i.en
  %i.ep = tail call i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.eq = add nuw nsw i32 %i.ep, %i.ek
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !42
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.dr, %i.et
  %i.ev = tail call i32 @llvm.abs.i32(i32 %i.eu, i1 true)
  %i.ew = add nuw nsw i32 %i.eq, %i.ev            ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %.0384494
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %.0384494)
  %i.ey = trunc nuw nsw i64 %indvars.iv579 to i32
  %spec.select444 = select i1 %i.ex, i32 %i.ey, i32 %.0381496 ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count582
  br i1 %exitcond583.not, label %._crit_edge499.loopexit, label %.lr.ph498, !llvm.loop !111

._crit_edge499.loopexit:                          ; preds = %.lr.ph498
  %i.ez = trunc i32 %spec.select444 to i8
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %bb.u
  %.0381.lcssa = phi i8 [ 0, %bb.u ], [ %i.ez, %._crit_edge499.loopexit ]
  store i8 %.0381.lcssa, ptr %i.df, align 1, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %._crit_edge499
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next585, %wide.trip.count587
  br i1 %exitcond588.not, label %.loopexit469, label %bb.t, !llvm.loop !112

.loopexit469:                                     ; preds = %bb.n, %bb.v, %.preheader472, %.preheader468
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.aa) #11
  br label %bb.at

bb.w:                                             ; preds = %bb.g
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 18 uses
  store ptr %i.aa, ptr %i.fa, align 8, !tbaa !127
  %i.fb = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.z) #11
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 15 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !128
  %i.fd = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.fd, label %.lr.ph505.preheader, label %.preheader466.lr.ph

.lr.ph505.preheader:                              ; preds = %bb.w
  %wide.trip.count592 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter731 = and i64 %wide.trip.count592, 1
  %i.fe = icmp eq i32 %2, 1
  br i1 %i.fe, label %.lr.ph505.epil.preheader, label %.lr.ph505.preheader.new

.lr.ph505.preheader.new:                          ; preds = %.lr.ph505.preheader
  %unroll_iter734 = and i64 %wide.trip.count592, 2147483646
  br label %.lr.ph505

.lr.ph505:                                        ; preds = %.lr.ph505, %.lr.ph505.preheader.new
  %indvars.iv589 = phi i64 [ 0, %.lr.ph505.preheader.new ], [ %indvars.iv.next590.1, %.lr.ph505 ] ; 5 uses
  %niter735 = phi i64 [ 0, %.lr.ph505.preheader.new ], [ %niter735.next.1, %.lr.ph505 ]
  %i.ff = trunc i64 %indvars.iv589 to i8          ; 2 uses
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv589
  store i8 %i.ff, ptr %i.fh, align 1, !tbaa !26
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv589
  store i8 %i.ff, ptr %i.fj, align 1, !tbaa !26
  %indvars.iv.next590 = or disjoint i64 %indvars.iv589, 1 ; 3 uses
  %i.fk = trunc i64 %indvars.iv.next590 to i8     ; 2 uses
  %i.fl = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next590
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !26
  %i.fn = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.next590
  store i8 %i.fk, ptr %i.fo, align 1, !tbaa !26
  %indvars.iv.next590.1 = add nuw nsw i64 %indvars.iv589, 2 ; 2 uses
  %niter735.next.1 = add i64 %niter735, 2         ; 2 uses
  %niter735.ncmp.1 = icmp eq i64 %niter735.next.1, %unroll_iter734
  br i1 %niter735.ncmp.1, label %.preheader466.lr.ph.loopexit.unr-lcssa, label %.lr.ph505, !llvm.loop !113

.preheader466.lr.ph.loopexit.unr-lcssa:           ; preds = %.lr.ph505
  %lcmp.mod732.not = icmp eq i64 %xtraiter731, 0
  br i1 %lcmp.mod732.not, label %.preheader466.lr.ph, label %.lr.ph505.epil.preheader

.lr.ph505.epil.preheader:                         ; preds = %.preheader466.lr.ph.loopexit.unr-lcssa, %.lr.ph505.preheader
  %indvars.iv589.epil.init = phi i64 [ 0, %.lr.ph505.preheader ], [ %indvars.iv.next590.1, %.preheader466.lr.ph.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod733 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod733)
  %i.fp = trunc i64 %indvars.iv589.epil.init to i8 ; 2 uses
  %i.fq = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv589.epil.init
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !26
  %i.fs = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv589.epil.init
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !26
  br label %.preheader466.lr.ph

.preheader466.lr.ph:                              ; preds = %.lr.ph505.epil.preheader, %.preheader466.lr.ph.loopexit.unr-lcssa, %bb.w
  %i.fu = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 6152) #11 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %wide.trip.count621 = zext nneg i32 %2 to i64
  br label %.preheader466

.preheader466:                                    ; preds = %.preheader466.lr.ph, %bb.as
  %indvars.iv632 = phi i64 [ 97, %.preheader466.lr.ph ], [ %indvars.iv.next633, %bb.as ] ; 4 uses
  %.0368529 = phi ptr [ null, %.preheader466.lr.ph ], [ %.9, %bb.as ] ; 2 uses
  %.0369528 = phi i32 [ %2, %.preheader466.lr.ph ], [ %.6375, %bb.as ] ; 8 uses
  %.0376524 = phi i32 [ 96, %.preheader466.lr.ph ], [ %i.nq, %bb.as ] ; 2 uses
  %i.fw = tail call i32 @llvm.smax.i32(i32 %.0369528, i32 1)
  %smax = add nsw i32 %i.fw, -1                   ; 2 uses
  %wide.trip.count604 = zext nneg i32 %smax to i64
  %wide.trip.count599 = zext i32 %.0369528 to i64
  %exitcond605.not704 = icmp eq i32 %smax, 0
  br i1 %exitcond605.not704, label %._crit_edge708, label %.lr.ph510

bb.x:                                             ; preds = %._crit_edge511
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594706, 1
  %exitcond605.not = icmp eq i64 %indvars.iv.next602, %wide.trip.count604
  br i1 %exitcond605.not, label %._crit_edge708, label %.lr.ph510

.lr.ph510:                                        ; preds = %.preheader466, %bb.x
  %.1707 = phi ptr [ %.4.ph, %bb.x ], [ %.0368529, %.preheader466 ]
  %indvars.iv594706 = phi i64 [ %indvars.iv.next595, %bb.x ], [ 1, %.preheader466 ] ; 2 uses
  %indvars.iv601705 = phi i64 [ %indvars.iv.next602, %bb.x ], [ 0, %.preheader466 ] ; 3 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601705, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv601705 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph510, %bb.ab
  %indvars.iv596 = phi i64 [ %indvars.iv594706, %.lr.ph510 ], [ %indvars.iv.next597, %bb.ab ] ; 3 uses
  %.2507 = phi ptr [ %.1707, %.lr.ph510 ], [ %.4.ph, %bb.ab ]
  %i.ga = load i8, ptr %i.fx, align 1, !tbaa !40
  %i.gb = zext i8 %i.ga to i32
  %i.gc = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv596 ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !40
  %i.ge = zext i8 %i.gd to i32
  %i.gf = sub nsw i32 %i.gb, %i.ge
end_hunk_0
