Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_alpha_mode_fixed:bb.a

.critedge:                                        ; preds = %bb.g
  %i.j = load <2 x i32>, ptr %i.a, align 8, !tbaa !32
  %i.k = and <2 x i32> %i.j, <i32 -8193, i32 -8388609>
  store <2 x i32> %i.k, ptr %i.a, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i32 %.0.i3439.ph, ptr %i.l, align 4, !tbaa !33
  br label %png_rtran_ok.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = and i32 %i.n, -8388609
  %i.p = load i32, ptr %i.a, align 8, !tbaa !24
  %i.q = and i32 %i.p, -8193
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.s = load i32, ptr %i.r, align 4, !tbaa !25
  %i.t = and i32 %i.s, -8388609
  %i.u = load i32, ptr %i.a, align 8, !tbaa !24
  %i.v = or i32 %i.u, 8192
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = or i32 %i.x, 8388608
  %i.z = load i32, ptr %i.a, align 8, !tbaa !24
  %i.aa = and i32 %i.z, -8193
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink = phi i32 [ %i.aa, %bb.j ], [ %i.v, %bb.i ], [ %i.q, %bb.h ]
  %i.ab = phi i32 [ %i.y, %bb.j ], [ %i.t, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  %.030 = phi i32 [ %.0.i3439.ph, %bb.j ], [ %.0.i3439.ph, %bb.i ], [ 100000, %bb.h ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i32 %.030, ptr %i.ac, align 4, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ad, i8 0, i64 10, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 %.029, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 2, ptr %i.af, align 4, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ah = and i32 %i.ab, -257                     ; 2 uses
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !25
  %i.ai = and i32 %i.ab, 128
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = or disjoint i32 %i.ah, 128
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !25
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
  %min.iters.check707 = icmp ult i32 %2, 32
  br i1 %min.iters.check707, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
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
  %n.vec708 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.ag = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ag, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index709 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next711, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind710 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next712, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index709
  store <8 x i8> %vec.ind710, ptr %i.ah, align 1, !tbaa !26
  %index.next711 = add nuw i64 %index709, 8       ; 2 uses
  %vec.ind.next712 = add <8 x i8> %vec.ind710, splat (i8 8)
  %i.ai = icmp eq i64 %index.next711, %n.vec708
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n713 = icmp eq i64 %n.vec708, %wide.trip.count
  br i1 %cmp.n713, label %.preheader475, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv552.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec708, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader475:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1) ; 2 uses
  %or.cond699 = icmp sgt i32 %2, %invariant.smax
  br i1 %or.cond699, label %.lr.ph487.preheader.preheader, label %._crit_edge.thread

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
  %.1401701.in = phi i32 [ %2, %.lr.ph487.preheader.preheader ], [ %.1401701, %._crit_edge ]
  %indvars.iv559700.in = phi i32 [ %2, %.lr.ph487.preheader.preheader ], [ %indvars.iv559700, %._crit_edge ]
  %indvars.iv559700 = add i32 %indvars.iv559700.in, -1 ; 3 uses
  %.1401701 = add nsw i32 %.1401701.in, -1        ; 2 uses
  %wide.trip.count561 = zext i32 %indvars.iv559700 to i64 ; 2 uses
  %.pre = load i8, ptr %i.aa, align 1, !tbaa !26  ; 2 uses
  %xtraiter = and i64 %wide.trip.count561, 1
  %i.ao = icmp eq i64 %indvar, %i.al
  br i1 %i.ao, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter = and i64 %wide.trip.count561, 4294967294
  br label %.lr.ph487

.lr.ph487:                                        ; preds = %bb.k, %.lr.ph487.preheader.new
  %i.ap = phi i8 [ %.pre, %.lr.ph487.preheader.new ], [ %i.bl, %bb.k ] ; 3 uses
  %indvars.iv556 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %indvars.iv.next557.1, %bb.k ] ; 3 uses
  %.0391486 = phi i32 [ 1, %.lr.ph487.preheader.new ], [ %.1392.1, %bb.k ]
  %niter = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !27
  %indvars.iv.next557 = or disjoint i64 %indvars.iv556, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next557 ; 2 uses
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
  %indvars.iv.next557.1 = add nuw nsw i64 %indvars.iv556, 2 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next557.1 ; 2 uses
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
  %lcmp.mod728 = trunc i32 %indvars.iv559700 to i1
  tail call void @llvm.assume(i1 %lcmp.mod728)
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
  %or.cond = icmp sgt i32 %.1401701, %invariant.smax
  %or.cond714 = select i1 %i.bx, i1 %or.cond, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %or.cond714, label %.lr.ph487.preheader, label %._crit_edge.thread

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

end_hunk_0
begin_hunk_1_@png_init_read_transformations:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 18 uses
  %i.ac = and i32 %i.aa, 262272
  %or.cond449 = icmp eq i32 %i.ac, 262144
  br i1 %or.cond449, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = and i32 %i.aa, -41943425
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !24
  %i.ag = and i32 %i.af, -8193
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i16 0, ptr %i.ah, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 8 uses
  %i.aj = call i32 @png_gamma_significant(i32 noundef %i.z) #11
  %i.ak = icmp eq i32 %i.aj, 0
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !25 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = and i32 %.pre, -8388609                 ; 2 uses
  store i32 %i.al, ptr %i.ab, align 4, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !24
  %i.ao = and i32 %i.an, -8193
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = phi i32 [ %i.al, %bb.n ], [ %.pre, %bb.m ] ; 2 uses
  %i.aq = and i32 %i.ap, 6291456
  %.not415 = icmp eq i32 %i.aq, 0
  br i1 %.not415, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @png_set_rgb_coefficients(ptr noundef nonnull %0) #11
  %.pre528 = load i32, ptr %i.ab, align 4, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i32 [ %.pre528, %bb.p ], [ %i.ap, %bb.o ] ; 8 uses
  %i.as = and i32 %i.ar, 256
  %.not416 = icmp eq i32 %i.as, 0
  br i1 %.not416, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.au = load i8, ptr %i.at, align 1, !tbaa !48
  %i.av = and i8 %i.au, 2
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = or i32 %i.ay, 2048
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !47
  br label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.ba = and i32 %i.ar, 16512
  %or.cond450.not = icmp eq i32 %i.ba, 16512
  br i1 %or.cond450.not, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !52 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !53
  %i.bf = icmp eq i16 %i.bc, %i.be
  br i1 %i.bf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !54
  %i.bi = icmp eq i16 %i.bc, %i.bh
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.bl = or i32 %i.bk, 2048
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i16 %i.bc, ptr %i.bm, align 4, !tbaa !55
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.r, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 623 ; 5 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !48  ; 3 uses
  %i.bp = icmp eq i8 %i.bo, 3
  br i1 %i.bp, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !51, !alias.scope !190 ; 5 uses
  %.not.i = icmp eq i16 %i.br, 0                  ; 2 uses
  br i1 %.not.i, label %.thread48.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !56, !alias.scope !190
  %wide.trip.count.i = zext i16 %i.br to i64
  br label %bb.z

.thread48.i:                                      ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !24, !alias.scope !190
  %i.bw = and i32 %i.bv, -8193
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !24, !alias.scope !190
  br label %bb.ad

bb.z:                                             ; preds = %bb.ab, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %.03453.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %bb.ab ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26, !noalias !190
  switch i8 %i.by, label %.loopexit51.i [
    i8 -1, label %bb.ab
    i8 0, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.i = phi i32 [ %.03453.i, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.ac, label %bb.z, !llvm.loop !172

bb.ac:                                            ; preds = %bb.ab
  %i.bz = icmp eq i32 %.1.i, 0
  %i.ca = and i32 %i.ar, -8388609                 ; 3 uses
  store i32 %i.ca, ptr %i.ab, align 4, !tbaa !25, !alias.scope !190
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !24, !alias.scope !190
  %i.cd = and i32 %i.cc, -8193
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !24, !alias.scope !190
  br i1 %i.bz, label %bb.ad, label %.loopexit51.i

bb.ad:                                            ; preds = %bb.ac, %.thread48.i
  %i.ce = phi i32 [ %i.ar, %.thread48.i ], [ %i.ca, %bb.ac ]
  %i.cf = and i32 %i.ce, -8388993                 ; 2 uses
  store i32 %i.cf, ptr %i.ab, align 4, !tbaa !25, !alias.scope !190
  br label %.loopexit51.i

.loopexit51.i:                                    ; preds = %bb.z, %bb.ad, %bb.ac
  %i.cg = phi i32 [ %i.cf, %bb.ad ], [ %i.ca, %bb.ac ], [ %i.ar, %bb.z ] ; 4 uses
  %i.ch = and i32 %i.cg, 4352
  %or.cond.not.i = icmp eq i32 %i.ch, 4352
  br i1 %or.cond.not.i, label %bb.ae, label %png_init_palette_transformations.exit

bb.ae:                                            ; preds = %.loopexit51.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43, !alias.scope !190
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !191, !alias.scope !190
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [3 x i8], ptr %i.cj, i64 %i.cm ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !40, !noalias !190
  %i.cp = zext i8 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 646
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !52, !alias.scope !190
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !41, !noalias !190
  %i.ct = zext i8 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i16 %i.ct, ptr %i.cu, align 8, !tbaa !53, !alias.scope !190
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !42, !noalias !190
  %i.cx = zext i8 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 650
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !54, !alias.scope !190
  %i.cz = and i32 %i.cg, 34078720
  %or.cond42.i = icmp ne i32 %i.cz, 524288
  %brmerge.i = or i1 %.not.i, %or.cond42.i
  br i1 %brmerge.i, label %png_init_palette_transformations.exit, label %iter.check

iter.check:                                       ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !56, !alias.scope !190 ; 3 uses
  %wide.trip.count61.i = zext i16 %i.br to i64    ; 6 uses
  %min.iters.check = icmp ult i16 %i.br, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check544 = icmp ult i16 %i.br, 32
  br i1 %min.iters.check544, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %wide.trip.count61.i, 28
  %n.vec = and i64 %wide.trip.count61.i, 65504    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %index ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.dd, align 1, !tbaa !26, !noalias !190
  %wide.load545 = load <16 x i8>, ptr %i.de, align 1, !tbaa !26, !noalias !190
  %i.df = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.dg = xor <16 x i8> %wide.load545, splat (i8 -1)
  store <16 x i8> %i.df, ptr %i.dd, align 1, !tbaa !26, !noalias !190
  store <16 x i8> %i.dg, ptr %i.de, align 1, !tbaa !26, !noalias !190
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count61.i
  br i1 %cmp.n, label %png_init_palette_transformations.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec546 = and i64 %wide.trip.count61.i, 65532 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index547 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next549, %vec.epilog.vector.body ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 %index547 ; 2 uses
  %wide.load548 = load <4 x i8>, ptr %i.di, align 1, !tbaa !26, !noalias !190
  %i.dj = xor <4 x i8> %wide.load548, splat (i8 -1)
  store <4 x i8> %i.dj, ptr %i.di, align 1, !tbaa !26, !noalias !190
  %index.next549 = add nuw i64 %index547, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next549, %n.vec546
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n550 = icmp eq i64 %n.vec546, %wide.trip.count61.i
  br i1 %cmp.n550, label %png_init_palette_transformations.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv58.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec546, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %vec.epilog.scalar.ph ], [ %indvars.iv58.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv58.i ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !26, !noalias !190
  %i.dn = xor i8 %i.dm, -1
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !26, !noalias !190
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %png_init_palette_transformations.exit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !175

bb.af:                                            ; preds = %bb.x
  %i.do = and i8 %i.bo, 4
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %._crit_edge.i

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !51, !alias.scope !193
  %.not.i464 = icmp eq i16 %i.dr, 0
  %i.ds = and i32 %i.ar, -8388609                 ; 2 uses
  store i32 %i.ds, ptr %i.ab, align 4, !tbaa !25, !alias.scope !193
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !24, !alias.scope !193
  %i.dv = and i32 %i.du, -8193
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !24, !alias.scope !193
  br i1 %.not.i464, label %bb.ah, label %._crit_edge.i

bb.ah:                                            ; preds = %bb.ag
  %i.dw = and i32 %i.ar, -8388993                 ; 2 uses
  store i32 %i.dw, ptr %i.ab, align 4, !tbaa !25, !alias.scope !193
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.af, %bb.ah, %bb.ag
  %i.dx = phi i32 [ %i.dw, %bb.ah ], [ %i.ds, %bb.ag ], [ %i.ar, %bb.af ] ; 5 uses
  %i.dy = and i32 %i.dx, 4352
  %or.cond.not32.i = icmp eq i32 %i.dy, 4352
  %i.dz = and i8 %i.bo, 2
  %i.ea = icmp eq i8 %i.dz, 0
  %or.cond31.i = and i1 %i.ea, %or.cond.not32.i
  br i1 %or.cond31.i, label %bb.ai, label %png_init_palette_transformations.exit

bb.ai:                                            ; preds = %._crit_edge.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !55, !alias.scope !193 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !57, !alias.scope !193 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !194, !alias.scope !193
  %i.eh = zext i8 %i.eg to i32                    ; 2 uses
  %i.ei = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.eh)
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %.split.i, label %bb.am

.split.i:                                         ; preds = %bb.ai
  %i.ek = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eh, i1 true)
  switch i32 %i.ek, label %bb.am [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.al
  ]

bb.aj:                                            ; preds = %.split.i
  %i.el = mul i16 %i.ec, 255
  %i.em = mul i16 %i.ee, 255
  br label %bb.am

bb.ak:                                            ; preds = %.split.i
  %i.en = mul i16 %i.ec, 85
  %i.eo = mul i16 %i.ee, 85
  br label %bb.am

bb.al:                                            ; preds = %.split.i
  %i.ep = mul i16 %i.ec, 17
  %i.eq = mul i16 %i.ee, 17
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %.split.i, %bb.ai
  %.027.i = phi i16 [ %i.ec, %.split.i ], [ %i.el, %bb.aj ], [ %i.en, %bb.ak ], [ %i.ep, %bb.al ], [ %i.ec, %bb.ai ] ; 3 uses
  %.0.i463 = phi i16 [ %i.ee, %.split.i ], [ %i.em, %bb.aj ], [ %i.eo, %bb.ak ], [ %i.eq, %bb.al ], [ %i.ee, %bb.ai ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 650
  store i16 %.027.i, ptr %i.er, align 2, !tbaa !54, !alias.scope !193
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i16 %.027.i, ptr %i.es, align 8, !tbaa !53, !alias.scope !193
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 646
  store i16 %.027.i, ptr %i.et, align 2, !tbaa !52, !alias.scope !193
  %i.eu = and i32 %i.dx, 33554432
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.an, label %png_init_palette_transformations.exit

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 814
  store i16 %.0.i463, ptr %i.ew, align 2, !tbaa !58, !alias.scope !193
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 812
  store i16 %.0.i463, ptr %i.ex, align 4, !tbaa !59, !alias.scope !193
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 810
  store i16 %.0.i463, ptr %i.ey, align 2, !tbaa !60, !alias.scope !193
  br label %png_init_palette_transformations.exit

png_init_palette_transformations.exit.loopexit:   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre529 = load i32, ptr %i.ab, align 4, !tbaa !25
  br label %png_init_palette_transformations.exit

png_init_palette_transformations.exit:            ; preds = %png_init_palette_transformations.exit.loopexit, %bb.an, %bb.am, %._crit_edge.i, %bb.ae, %.loopexit51.i
  %i.ez = phi i32 [ %.pre529, %png_init_palette_transformations.exit.loopexit ], [ %i.dx, %bb.an ], [ %i.dx, %bb.am ], [ %i.dx, %._crit_edge.i ], [ %i.cg, %bb.ae ], [ %i.cg, %.loopexit51.i ] ; 6 uses
  %i.fa = and i32 %i.ez, 896
  %or.cond453 = icmp eq i32 %i.fa, 640
  br i1 %or.cond453, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %png_init_palette_transformations.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !194
  %.not421 = icmp eq i8 %i.fc, 16
  br i1 %.not421, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.fe = load <4 x i16>, ptr %i.fd, align 2, !tbaa !27
  %i.ff = zext <4 x i16> %i.fe to <4 x i32>
  %i.fg = mul nuw nsw <4 x i32> %i.ff, splat (i32 255)
  %i.fh = add nuw nsw <4 x i32> %i.fg, splat (i32 32895)
  %i.fi = lshr <4 x i32> %i.fh, splat (i32 16)
  %i.fj = trunc nuw nsw <4 x i32> %i.fi to <4 x i16>
  store <4 x i16> %i.fj, ptr %i.fd, align 2, !tbaa !27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %png_init_palette_transformations.exit
  %i.fk = and i32 %i.ez, 67109888
  %.not422 = icmp ne i32 %i.fk, 0
  %i.fl = and i32 %i.ez, 384
  %i.fm = icmp eq i32 %i.fl, 128
  %or.cond456 = and i1 %.not422, %i.fm
  br i1 %or.cond456, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !194
  %i.fp = icmp eq i8 %i.fo, 16
  br i1 %i.fp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 2 uses
  %i.fr = load <4 x i16>, ptr %i.fq, align 2, !tbaa !27
  %i.fs = mul <4 x i16> %i.fr, splat (i16 257)
  store <4 x i16> %i.fs, ptr %i.fq, align 2, !tbaa !27
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 654
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.ft, ptr noundef nonnull align 4 dereferenceable(10) %i.fu, i64 10, i1 false), !tbaa.struct !28
  %i.fv = and i32 %i.ez, 8192
  %.not424 = icmp eq i32 %i.fv, 0
  br i1 %.not424, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.fw = and i32 %i.ez, 6291456
end_hunk_1
begin_hunk_2_@png_do_read_transformations:bb.a

png_do_read_invert_alpha.exit.loopexit680.unr-lcssa: ; preds = %.lr.ph68.i
  %lcmp.mod821.not = icmp eq i32 %xtraiter819, 0
  br i1 %lcmp.mod821.not, label %png_do_read_invert_alpha.exit, label %.lr.ph68.i.epil.preheader

.lr.ph68.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit680.unr-lcssa, %.lr.ph68.preheader.i
  %.05166.i.epil.init = phi ptr [ %i.cnw, %.lr.ph68.preheader.i ], [ %i.cok, %png_do_read_invert_alpha.exit.loopexit680.unr-lcssa ]
  %lcmp.mod822 = icmp ne i32 %xtraiter819, 0
  tail call void @llvm.assume(i1 %lcmp.mod822)
  br label %.lr.ph68.i.epil

.lr.ph68.i.epil:                                  ; preds = %.lr.ph68.i.epil, %.lr.ph68.i.epil.preheader
  %.05166.i.epil = phi ptr [ %i.cpp, %.lr.ph68.i.epil ], [ %.05166.i.epil.init, %.lr.ph68.i.epil.preheader ] ; 2 uses
  %epil.iter820 = phi i32 [ %epil.iter820.next, %.lr.ph68.i.epil ], [ 0, %.lr.ph68.i.epil.preheader ]
  %i.cpm = getelementptr inbounds i8, ptr %.05166.i.epil, i64 -1 ; 2 uses
  %i.cpn = load i8, ptr %i.cpm, align 1, !tbaa !26
  %i.cpo = xor i8 %i.cpn, -1
  store i8 %i.cpo, ptr %i.cpm, align 1, !tbaa !26
  %i.cpp = getelementptr i8, ptr %.05166.i.epil, i64 -2
  %epil.iter820.next = add i32 %epil.iter820, 1   ; 2 uses
  %epil.iter820.cmp.not = icmp eq i32 %epil.iter820.next, %xtraiter819
  br i1 %epil.iter820.cmp.not, label %png_do_read_invert_alpha.exit, label %.lr.ph68.i.epil, !llvm.loop !279

png_do_read_invert_alpha.exit.loopexit681.unr-lcssa: ; preds = %.lr.ph.i244
  %lcmp.mod815.not = icmp eq i32 %xtraiter813, 0
  br i1 %lcmp.mod815.not, label %png_do_read_invert_alpha.exit, label %.lr.ph.i244.epil.preheader

.lr.ph.i244.epil.preheader:                       ; preds = %png_do_read_invert_alpha.exit.loopexit681.unr-lcssa, %.lr.ph.preheader.i243
  %.04863.i.epil.init = phi ptr [ %i.con, %.lr.ph.preheader.i243 ], [ %i.cpb, %png_do_read_invert_alpha.exit.loopexit681.unr-lcssa ] ; 2 uses
  %lcmp.mod816 = trunc i32 %i.cmd to i1
  tail call void @llvm.assume(i1 %lcmp.mod816)
  %i.cpq = getelementptr inbounds i8, ptr %.04863.i.epil.init, i64 -1 ; 2 uses
  %i.cpr = load i8, ptr %i.cpq, align 1, !tbaa !26
  %i.cps = xor i8 %i.cpr, -1
  store i8 %i.cps, ptr %i.cpq, align 1, !tbaa !26
  %i.cpt = getelementptr inbounds i8, ptr %.04863.i.epil.init, i64 -2 ; 2 uses
  %i.cpu = load i8, ptr %i.cpt, align 1, !tbaa !26
  %i.cpv = xor i8 %i.cpu, -1
  store i8 %i.cpv, ptr %i.cpt, align 1, !tbaa !26
  br label %png_do_read_invert_alpha.exit

png_do_read_invert_alpha.exit:                    ; preds = %.lr.ph.i244.epil.preheader, %png_do_read_invert_alpha.exit.loopexit681.unr-lcssa, %png_do_read_invert_alpha.exit.loopexit680.unr-lcssa, %.lr.ph68.i.epil, %.lr.ph71.i.epil.preheader, %png_do_read_invert_alpha.exit.loopexit679.unr-lcssa, %png_do_read_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph74.i.epil, %bb.ia, %bb.hz, %bb.hx, %bb.hw, %bb.hu, %bb.ht
  %i.cpw = load i32, ptr %i.h, align 4, !tbaa !25 ; 3 uses
  %i.cpx = and i32 %i.cpw, 8
  %.not163 = icmp eq i32 %i.cpx, 0
  br i1 %.not163, label %png_do_unshift.exit, label %bb.ib

bb.ib:                                            ; preds = %png_do_read_invert_alpha.exit
  %i.cpy = load ptr, ptr %i.b, align 8, !tbaa !308 ; 2 uses
  %i.cpz = ptrtoaddr ptr %i.cpy to i64            ; 6 uses
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpy, i64 1 ; 16 uses
  %i.cqb = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.cqc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cqd = load i8, ptr %i.cqc, align 8, !tbaa !73 ; 2 uses
  %i.cqe = zext i8 %i.cqd to i32                  ; 2 uses
  %.not.i247 = icmp eq i8 %i.cqd, 3
  br i1 %.not.i247, label %png_do_unshift.exit, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cqf = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cqg = load i8, ptr %i.cqf, align 1, !tbaa !75
  %i.cqh = zext i8 %i.cqg to i32                  ; 10 uses
  %i.cqi = and i32 %i.cqe, 2
  %.not92.i = icmp eq i32 %i.cqi, 0
  br i1 %.not92.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cqj = load i8, ptr %i.cqb, align 1, !tbaa !321
  %i.cqk = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.cql = load i8, ptr %i.cqk, align 2, !tbaa !322
  %i.cqm = zext i8 %i.cql to i32
  %i.cqn = sub nsw i32 %i.cqh, %i.cqm
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cqn, ptr %i.cqo, align 4, !tbaa !32
  %i.cqp = getelementptr inbounds nuw i8, ptr %0, i64 791
  %i.cqq = load i8, ptr %i.cqp, align 1, !tbaa !323
  %i.cqr = zext i8 %i.cqq to i32
  %i.cqs = sub nsw i32 %i.cqh, %i.cqr
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.cqs, ptr %i.cqt, align 8, !tbaa !32
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.cqu = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cqv = load i8, ptr %i.cqu, align 8, !tbaa !324
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.pn.in.i = phi i8 [ %i.cqv, %bb.ie ], [ %i.cqj, %bb.id ]
  %.080.i = phi i32 [ 1, %bb.ie ], [ 3, %bb.id ]  ; 3 uses
  %.pn.i248 = zext i8 %.pn.in.i to i32
  %.sink.i249 = sub nsw i32 %i.cqh, %.pn.i248
  store i32 %.sink.i249, ptr %i.a, align 16, !tbaa !32
  %i.cqw = and i32 %i.cqe, 4
  %.not93.i250 = icmp eq i32 %i.cqw, 0
  br i1 %.not93.i250, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.cqx = getelementptr inbounds nuw i8, ptr %0, i64 793
  %i.cqy = load i8, ptr %i.cqx, align 1, !tbaa !325
  %i.cqz = zext i8 %i.cqy to i32
  %i.cra = sub nsw i32 %i.cqh, %i.cqz
  %i.crb = add nuw nsw i32 %.080.i, 1
  %i.crc = zext nneg i32 %.080.i to i64
  %i.crd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.crc
  store i32 %i.cra, ptr %i.crd, align 4, !tbaa !32
  br label %bb.ih

bb.ih:                                            ; preds = %bb.if, %bb.ig
  %.1.i251 = phi i32 [ %i.crb, %bb.ig ], [ %.080.i, %bb.if ] ; 5 uses
  %i.cre = load i32, ptr %i.a, align 16, !tbaa !32 ; 3 uses
  %i.crf = icmp sgt i32 %i.cre, 0
  %.not97.i = icmp slt i32 %i.cre, %i.cqh
  %or.cond.i252 = select i1 %i.crf, i1 %.not97.i, i1 false ; 2 uses
  %spec.store.select98.i = select i1 %or.cond.i252, i32 %i.cre, i32 0
  store i32 %spec.store.select98.i, ptr %i.a, align 16
  %spec.select.i = zext i1 %or.cond.i252 to i32   ; 2 uses
  %exitcond.not.i253 = icmp eq i32 %.1.i251, 1
  br i1 %exitcond.not.i253, label %bb.il, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.crg = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.crh = load i32, ptr %i.crg, align 4, !tbaa !32 ; 3 uses
  %i.cri = icmp sgt i32 %i.crh, 0
  %.not97.i.1 = icmp slt i32 %i.crh, %i.cqh
  %or.cond.i252.1 = select i1 %i.cri, i1 %.not97.i.1, i1 false ; 2 uses
  %spec.store.select98.i.1 = select i1 %or.cond.i252.1, i32 %i.crh, i32 0
  store i32 %spec.store.select98.i.1, ptr %i.crg, align 4
  %spec.select.i.1 = select i1 %or.cond.i252.1, i32 1, i32 %spec.select.i ; 2 uses
  %exitcond.not.i253.1 = icmp eq i32 %.1.i251, 2
  br i1 %exitcond.not.i253.1, label %bb.il, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.crj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.crk = load i32, ptr %i.crj, align 8, !tbaa !32 ; 3 uses
  %i.crl = icmp sgt i32 %i.crk, 0
  %.not97.i.2 = icmp slt i32 %i.crk, %i.cqh
  %or.cond.i252.2 = select i1 %i.crl, i1 %.not97.i.2, i1 false ; 2 uses
  %spec.store.select98.i.2 = select i1 %or.cond.i252.2, i32 %i.crk, i32 0
  store i32 %spec.store.select98.i.2, ptr %i.crj, align 8
  %spec.select.i.2 = select i1 %or.cond.i252.2, i32 1, i32 %spec.select.i.1 ; 2 uses
  %exitcond.not.i253.2 = icmp eq i32 %.1.i251, 3
  br i1 %exitcond.not.i253.2, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.crm = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.crn = load i32, ptr %i.crm, align 4, !tbaa !32 ; 3 uses
  %i.cro = icmp sgt i32 %i.crn, 0
  %.not97.i.3 = icmp slt i32 %i.crn, %i.cqh
  %or.cond.i252.3 = select i1 %i.cro, i1 %.not97.i.3, i1 false ; 2 uses
  %spec.store.select98.i.3 = select i1 %or.cond.i252.3, i32 %i.crn, i32 0
  store i32 %spec.store.select98.i.3, ptr %i.crm, align 4
  %spec.select.i.3 = select i1 %or.cond.i252.3, i32 1, i32 %spec.select.i.2
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ih
  %spec.select.i.lcssa = phi i32 [ %spec.select.i, %bb.ih ], [ %spec.select.i.1, %bb.ii ], [ %spec.select.i.2, %bb.ij ], [ %spec.select.i.3, %bb.ik ]
  %.not94.not.i = icmp ne i32 %spec.select.i.lcssa, 0
  %i.crp = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.cqh)
  %i.crq = icmp eq i32 %i.crp, 1
  %or.cond125.i = select i1 %.not94.not.i, i1 %i.crq, i1 false
  br i1 %or.cond125.i, label %.split.i255, label %.sink.split.i254

.split.i255:                                      ; preds = %bb.il
  %i.crr = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cqh, i1 true)
  switch i32 %i.crr, label %.sink.split.i254 [
    i32 1, label %bb.im
    i32 2, label %bb.in
    i32 3, label %bb.io
    i32 4, label %bb.ip
  ]

bb.im:                                            ; preds = %.split.i255
  %i.crs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.crt = load i64, ptr %i.crs, align 8, !tbaa !77 ; 3 uses
  %i.cru = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.crt
  %.not116.i = icmp eq i64 %i.crt, 0
  br i1 %.not116.i, label %.sink.split.i254, label %iter.check654

iter.check654:                                    ; preds = %bb.im
  %i.crv = add i64 %i.crt, %i.cpz
  %i.crw = add i64 %i.crv, 1
  %i.crx = add i64 %i.cpz, 2
  %umax639 = tail call i64 @llvm.umax.i64(i64 %i.crw, i64 %i.crx)
  %i.cry = xor i64 %i.cpz, -1
  %i.crz = add i64 %umax639, %i.cry               ; 7 uses
  %min.iters.check640 = icmp ult i64 %i.crz, 8
  br i1 %min.iters.check640, label %.lr.ph112.i.preheader, label %vector.main.loop.iter.check641

vector.main.loop.iter.check641:                   ; preds = %iter.check654
  %min.iters.check642 = icmp ult i64 %i.crz, 32
  br i1 %min.iters.check642, label %vec.epilog.ph658, label %vector.ph643

vector.ph643:                                     ; preds = %vector.main.loop.iter.check641
  %i.csa = and i64 %i.crz, 24
  %n.vec644 = and i64 %i.crz, -32                 ; 4 uses
  %i.csb = getelementptr i8, ptr %i.cqa, i64 %n.vec644
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph643
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next650, %vector.body645 ] ; 2 uses
  %next.gep647 = getelementptr i8, ptr %i.cqa, i64 %index646 ; 3 uses
  %i.csc = getelementptr i8, ptr %next.gep647, i64 16 ; 2 uses
  %wide.load648 = load <16 x i8>, ptr %next.gep647, align 1, !tbaa !26
  %wide.load649 = load <16 x i8>, ptr %i.csc, align 1, !tbaa !26
  %i.csd = lshr <16 x i8> %wide.load648, splat (i8 1)
  %i.cse = lshr <16 x i8> %wide.load649, splat (i8 1)
  %i.csf = and <16 x i8> %i.csd, splat (i8 85)
  %i.csg = and <16 x i8> %i.cse, splat (i8 85)
  store <16 x i8> %i.csf, ptr %next.gep647, align 1, !tbaa !26
  store <16 x i8> %i.csg, ptr %i.csc, align 1, !tbaa !26
  %index.next650 = add nuw i64 %index646, 32      ; 2 uses
  %i.csh = icmp eq i64 %index.next650, %n.vec644
  br i1 %i.csh, label %middle.block651, label %vector.body645, !llvm.loop !280

middle.block651:                                  ; preds = %vector.body645
  %cmp.n652 = icmp eq i64 %i.crz, %n.vec644
  br i1 %cmp.n652, label %.sink.split.i254, label %vec.epilog.iter.check656

vec.epilog.iter.check656:                         ; preds = %middle.block651
  %min.epilog.iters.check657 = icmp eq i64 %i.csa, 0
  br i1 %min.epilog.iters.check657, label %.lr.ph112.i.preheader, label %vec.epilog.ph658, !prof !38

vec.epilog.ph658:                                 ; preds = %vector.main.loop.iter.check641, %vec.epilog.iter.check656
  %vec.epilog.resume.val653 = phi i64 [ %n.vec644, %vec.epilog.iter.check656 ], [ 0, %vector.main.loop.iter.check641 ]
  %n.vec659 = and i64 %i.crz, -8                  ; 3 uses
  %i.csi = getelementptr i8, ptr %i.cqa, i64 %n.vec659
  br label %vec.epilog.vector.body660

vec.epilog.vector.body660:                        ; preds = %vec.epilog.vector.body660, %vec.epilog.ph658
  %index661 = phi i64 [ %vec.epilog.resume.val653, %vec.epilog.ph658 ], [ %index.next664, %vec.epilog.vector.body660 ] ; 2 uses
  %next.gep662 = getelementptr i8, ptr %i.cqa, i64 %index661 ; 2 uses
  %wide.load663 = load <8 x i8>, ptr %next.gep662, align 1, !tbaa !26
  %i.csj = lshr <8 x i8> %wide.load663, splat (i8 1)
  %i.csk = and <8 x i8> %i.csj, splat (i8 85)
  store <8 x i8> %i.csk, ptr %next.gep662, align 1, !tbaa !26
  %index.next664 = add nuw i64 %index661, 8       ; 2 uses
  %i.csl = icmp eq i64 %index.next664, %n.vec659
  br i1 %i.csl, label %vec.epilog.middle.block665, label %vec.epilog.vector.body660, !llvm.loop !281

vec.epilog.middle.block665:                       ; preds = %vec.epilog.vector.body660
  %cmp.n666 = icmp eq i64 %i.crz, %n.vec659
  br i1 %cmp.n666, label %.sink.split.i254, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %iter.check654, %vec.epilog.iter.check656, %vec.epilog.middle.block665
  %.085111.i.ph = phi ptr [ %i.cqa, %iter.check654 ], [ %i.csb, %vec.epilog.iter.check656 ], [ %i.csi, %vec.epilog.middle.block665 ]
  br label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.085111.i = phi ptr [ %i.csp, %.lr.ph112.i ], [ %.085111.i.ph, %.lr.ph112.i.preheader ] ; 3 uses
  %i.csm = load i8, ptr %.085111.i, align 1, !tbaa !26
  %i.csn = lshr i8 %i.csm, 1
  %i.cso = and i8 %i.csn, 85
  %i.csp = getelementptr inbounds nuw i8, ptr %.085111.i, i64 1 ; 2 uses
  store i8 %i.cso, ptr %.085111.i, align 1, !tbaa !26
  %i.csq = icmp ult ptr %i.csp, %i.cru
  br i1 %i.csq, label %.lr.ph112.i, label %.sink.split.i254, !llvm.loop !282

bb.in:                                            ; preds = %.split.i255
  %i.csr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.css = load i64, ptr %i.csr, align 8, !tbaa !77 ; 3 uses
  %i.cst = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.css
  %i.csu = load i32, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %i.csv = lshr i32 15, %i.csu
  %i.csw = mul nuw nsw i32 %i.csv, 17             ; 3 uses
  %.not115.i = icmp eq i64 %i.css, 0
  br i1 %.not115.i, label %.sink.split.i254, label %iter.check

iter.check:                                       ; preds = %bb.in
  %i.csx = add i64 %i.css, %i.cpz
  %i.csy = add i64 %i.csx, 1
  %i.csz = add i64 %i.cpz, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.csy, i64 %i.csz)
  %i.cta = xor i64 %i.cpz, -1
  %i.ctb = add i64 %umax, %i.cta                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ctb, 4
  br i1 %min.iters.check, label %.lr.ph110.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check625 = icmp ult i64 %i.ctb, 16
  br i1 %min.iters.check625, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ctc = and i64 %i.ctb, 12
  %n.vec = and i64 %i.ctb, -16                    ; 4 uses
  %i.ctd = getelementptr i8, ptr %i.cqa, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.csu, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert626 = insertelement <16 x i32> poison, i32 %i.csw, i64 0
  %broadcast.splat627 = shufflevector <16 x i32> %broadcast.splatinsert626, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cqa, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %i.cte = zext <16 x i8> %wide.load to <16 x i32>
  %i.ctf = lshr <16 x i32> %i.cte, %broadcast.splat
  %i.ctg = and <16 x i32> %i.ctf, %broadcast.splat627
  %i.cth = trunc nuw <16 x i32> %i.ctg to <16 x i8>
  store <16 x i8> %i.cth, ptr %next.gep, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cti = icmp eq i64 %index.next, %n.vec
  br i1 %i.cti, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ctb, %n.vec
  br i1 %cmp.n, label %.sink.split.i254, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ctc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph110.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec628 = and i64 %i.ctb, -4                  ; 3 uses
  %i.ctj = getelementptr i8, ptr %i.cqa, i64 %n.vec628
  %broadcast.splatinsert629 = insertelement <4 x i32> poison, i32 %i.csu, i64 0
  %broadcast.splat630 = shufflevector <4 x i32> %broadcast.splatinsert629, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert631 = insertelement <4 x i32> poison, i32 %i.csw, i64 0
  %broadcast.splat632 = shufflevector <4 x i32> %broadcast.splatinsert631, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index633 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next636, %vec.epilog.vector.body ] ; 2 uses
  %next.gep634 = getelementptr i8, ptr %i.cqa, i64 %index633 ; 2 uses
  %wide.load635 = load <4 x i8>, ptr %next.gep634, align 1, !tbaa !26
  %i.ctk = zext <4 x i8> %wide.load635 to <4 x i32>
  %i.ctl = lshr <4 x i32> %i.ctk, %broadcast.splat630
  %i.ctm = and <4 x i32> %i.ctl, %broadcast.splat632
  %i.ctn = trunc nuw <4 x i32> %i.ctm to <4 x i8>
  store <4 x i8> %i.ctn, ptr %next.gep634, align 1, !tbaa !26
  %index.next636 = add nuw i64 %index633, 4       ; 2 uses
  %i.cto = icmp eq i64 %index.next636, %n.vec628
  br i1 %i.cto, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n637 = icmp eq i64 %i.ctb, %n.vec628
  br i1 %cmp.n637, label %.sink.split.i254, label %.lr.ph110.i.preheader

.lr.ph110.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.083109.i.ph = phi ptr [ %i.cqa, %iter.check ], [ %i.ctd, %vec.epilog.iter.check ], [ %i.ctj, %vec.epilog.middle.block ]
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.preheader, %.lr.ph110.i
  %.083109.i = phi ptr [ %i.ctu, %.lr.ph110.i ], [ %.083109.i.ph, %.lr.ph110.i.preheader ] ; 3 uses
  %i.ctp = load i8, ptr %.083109.i, align 1, !tbaa !26
  %i.ctq = zext i8 %i.ctp to i32
  %i.ctr = lshr i32 %i.ctq, %i.csu
  %i.cts = and i32 %i.ctr, %i.csw
  %i.ctt = trunc nuw i32 %i.cts to i8
  %i.ctu = getelementptr inbounds nuw i8, ptr %.083109.i, i64 1 ; 2 uses
  store i8 %i.ctt, ptr %.083109.i, align 1, !tbaa !26
  %i.ctv = icmp ult ptr %i.ctu, %i.cst
  br i1 %i.ctv, label %.lr.ph110.i, label %.sink.split.i254, !llvm.loop !285

bb.io:                                            ; preds = %.split.i255
  %i.ctw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !77 ; 2 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.ctx
  %.not114.i = icmp eq i64 %i.ctx, 0
  br i1 %.not114.i, label %.sink.split.i254, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.io, %.lr.ph108.i
  %.081107.i = phi i32 [ %spec.store.select.i, %.lr.ph108.i ], [ 0, %bb.io ] ; 2 uses
  %.082106.i = phi ptr [ %i.cuh, %.lr.ph108.i ], [ %i.cqa, %bb.io ] ; 3 uses
  %i.ctz = load i8, ptr %.082106.i, align 1, !tbaa !26
  %i.cua = zext i8 %i.ctz to i32
  %i.cub = sext i32 %.081107.i to i64
  %i.cuc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cub
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !32
  %i.cue = lshr i32 %i.cua, %i.cud
  %i.cuf = add nsw i32 %.081107.i, 1              ; 2 uses
  %.not96.i = icmp slt i32 %i.cuf, %.1.i251
  %spec.store.select.i = select i1 %.not96.i, i32 %i.cuf, i32 0
  %i.cug = trunc nuw i32 %i.cue to i8
  %i.cuh = getelementptr inbounds nuw i8, ptr %.082106.i, i64 1 ; 2 uses
  store i8 %i.cug, ptr %.082106.i, align 1, !tbaa !26
  %i.cui = icmp ult ptr %i.cuh, %i.cty
  br i1 %i.cui, label %.lr.ph108.i, label %.sink.split.i254, !llvm.loop !286

bb.ip:                                            ; preds = %.split.i255
  %i.cuj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !77 ; 2 uses
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.cuk
  %.not113.i = icmp eq i64 %i.cuk, 0
  br i1 %.not113.i, label %.sink.split.i254, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %bb.ip, %.lr.ph.i256
  %.0105.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i256 ], [ 0, %bb.ip ] ; 2 uses
  %.079104.i = phi ptr [ %i.cvb, %.lr.ph.i256 ], [ %i.cqa, %bb.ip ] ; 4 uses
  %i.cum = load i8, ptr %.079104.i, align 1, !tbaa !26
  %i.cun = zext i8 %i.cum to i32
  %i.cuo = shl nuw nsw i32 %i.cun, 8
  %i.cup = getelementptr inbounds nuw i8, ptr %.079104.i, i64 1 ; 2 uses
  %i.cuq = load i8, ptr %i.cup, align 1, !tbaa !26
  %i.cur = zext i8 %i.cuq to i32
  %i.cus = or disjoint i32 %i.cuo, %i.cur
  %i.cut = sext i32 %.0105.i to i64
  %i.cuu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cut
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !32
  %i.cuw = lshr i32 %i.cus, %i.cuv                ; 2 uses
  %i.cux = add nsw i32 %.0105.i, 1                ; 2 uses
  %.not95.i = icmp slt i32 %i.cux, %.1.i251
  %spec.store.select2.i = select i1 %.not95.i, i32 %i.cux, i32 0
  %i.cuy = lshr i32 %i.cuw, 8
  %i.cuz = trunc nuw i32 %i.cuy to i8
  store i8 %i.cuz, ptr %.079104.i, align 1, !tbaa !26
  %i.cva = trunc i32 %i.cuw to i8
  %i.cvb = getelementptr inbounds nuw i8, ptr %.079104.i, i64 2 ; 2 uses
  store i8 %i.cva, ptr %i.cup, align 1, !tbaa !26
  %i.cvc = icmp ult ptr %i.cvb, %i.cul
  br i1 %i.cvc, label %.lr.ph.i256, label %.sink.split.i254, !llvm.loop !287

.sink.split.i254:                                 ; preds = %.lr.ph.i256, %.lr.ph108.i, %.lr.ph110.i, %.lr.ph112.i, %middle.block, %vec.epilog.middle.block, %middle.block651, %vec.epilog.middle.block665, %bb.ip, %bb.io, %bb.in, %bb.im, %.split.i255, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre394 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %png_do_unshift.exit

png_do_unshift.exit:                              ; preds = %.sink.split.i254, %bb.ib, %png_do_read_invert_alpha.exit
  %i.cvd = phi i32 [ %.pre394, %.sink.split.i254 ], [ %i.cpw, %bb.ib ], [ %i.cpw, %png_do_read_invert_alpha.exit ]
  %i.cve = and i32 %i.cvd, 4
  %.not164 = icmp eq i32 %i.cve, 0
  br i1 %.not164, label %png_do_unpack.exit, label %bb.iq

bb.iq:                                            ; preds = %png_do_unshift.exit
  %i.cvf = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 1 ; 6 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cvi = load i8, ptr %i.cvh, align 1, !tbaa !75 ; 2 uses
  %i.cvj = icmp ult i8 %i.cvi, 8
  br i1 %i.cvj, label %bb.ir, label %png_do_unpack.exit

bb.ir:                                            ; preds = %bb.iq
  %i.cvk = load i32, ptr %1, align 8, !tbaa !74   ; 19 uses
  %.pre.i257 = zext i32 %i.cvk to i64             ; 10 uses
  switch i8 %i.cvi, label %.loopexit.i263 [
    i8 1, label %bb.is
    i8 2, label %bb.it
    i8 4, label %bb.iu
  ]

bb.is:                                            ; preds = %bb.ir
  %.not88.i = icmp eq i32 %i.cvk, 0
  br i1 %.not88.i, label %.loopexit.i263, label %.lr.ph85.preheader.i

.lr.ph85.preheader.i:                             ; preds = %bb.is
  %i.cvl = sub i32 0, %i.cvk
  %i.cvm = and i32 %i.cvl, 7                      ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i257 ; 2 uses
  %i.cvo = add i32 %i.cvk, -1                     ; 2 uses
  %i.cvp = lshr i32 %i.cvo, 3
  %i.cvq = zext nneg i32 %i.cvp to i64
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cvq ; 2 uses
  %xtraiter849 = and i32 %i.cvk, 1
  %i.cvs = icmp eq i32 %i.cvo, 0
  br i1 %i.cvs, label %.lr.ph85.i.epil.preheader, label %.lr.ph85.preheader.i.new

.lr.ph85.preheader.i.new:                         ; preds = %.lr.ph85.preheader.i
  %unroll_iter853 = and i32 %i.cvk, -2
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.preheader.i.new
  %.06084.i = phi i32 [ %i.cvm, %.lr.ph85.preheader.i.new ], [ %.161.i.1, %.lr.ph85.i ] ; 3 uses
  %.pn6983.i = phi ptr [ %i.cvn, %.lr.ph85.preheader.i.new ], [ %.062.i.1, %.lr.ph85.i ] ; 2 uses
  %.06382.i = phi ptr [ %i.cvr, %.lr.ph85.preheader.i.new ], [ %.164.i.1, %.lr.ph85.i ] ; 2 uses
  %niter854 = phi i32 [ 0, %.lr.ph85.preheader.i.new ], [ %niter854.next.1, %.lr.ph85.i ]
  %.062.i = getelementptr inbounds i8, ptr %.pn6983.i, i64 -1
  %i.cvt = load i8, ptr %.06382.i, align 1, !tbaa !26
  %i.cvu = zext i8 %i.cvt to i32
  %i.cvv = lshr i32 %i.cvu, %.06084.i
  %i.cvw = trunc nuw i32 %i.cvv to i8
  %i.cvx = and i8 %i.cvw, 1
  store i8 %i.cvx, ptr %.062.i, align 1, !tbaa !26
  %i.cvy = icmp eq i32 %.06084.i, 7               ; 2 uses
  %i.cvz = add nuw nsw i32 %.06084.i, 1
  %.164.idx.i = sext i1 %i.cvy to i64
  %.164.i = getelementptr inbounds i8, ptr %.06382.i, i64 %.164.idx.i ; 2 uses
  %.161.i = select i1 %i.cvy, i32 0, i32 %i.cvz   ; 3 uses
  %.062.i.1 = getelementptr inbounds i8, ptr %.pn6983.i, i64 -2 ; 3 uses
  %i.cwa = load i8, ptr %.164.i, align 1, !tbaa !26
  %i.cwb = zext i8 %i.cwa to i32
  %i.cwc = lshr i32 %i.cwb, %.161.i
  %i.cwd = trunc nuw i32 %i.cwc to i8
  %i.cwe = and i8 %i.cwd, 1
  store i8 %i.cwe, ptr %.062.i.1, align 1, !tbaa !26
  %i.cwf = icmp eq i32 %.161.i, 7                 ; 2 uses
  %i.cwg = add nuw nsw i32 %.161.i, 1
  %.164.idx.i.1 = sext i1 %i.cwf to i64
  %.164.i.1 = getelementptr inbounds i8, ptr %.164.i, i64 %.164.idx.i.1 ; 2 uses
  %.161.i.1 = select i1 %i.cwf, i32 0, i32 %i.cwg ; 2 uses
  %niter854.next.1 = add nuw i32 %niter854, 2     ; 2 uses
  %niter854.ncmp.1 = icmp eq i32 %niter854.next.1, %unroll_iter853
end_hunk_2
