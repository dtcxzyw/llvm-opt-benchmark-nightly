Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_hdcd?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@hdcd_detect_onech:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !66
  %.not40 = icmp eq i32 %i.y, 1
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.w, %i.l
  %. = select i1 %i.z, i32 2, i32 1
  store i32 %., ptr %i.x, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !63 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %.not41 = icmp eq i32 %i.ad, 0
  br i1 %.not41, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = fcmp nsz ogt float %i.ab, 0.000000e+00
  br i1 %i.ae, label %bb.l, label %bb.k

.thread:                                          ; preds = %bb.h
  %i.af = fpext nsz float %i.ab to double
  %i.ag = ashr i32 %i.ad, 1
  %i.ah = sitofp nsz i32 %i.ag to float
  %i.ai = fneg nsz float %i.ah
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = and i32 %i.ad, 1
  %.not42 = icmp eq i32 %i.ak, 0
  %i.al = select nsz i1 %.not42, double 0.000000e+00, double 5.000000e-01
  %i.am = fsub nsz double %i.aj, %i.al            ; 2 uses
  %i.an = fcmp nsz olt double %i.am, %i.af
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ao = fptrunc nsz double %i.am to float
  br label %bb.l

bb.k:                                             ; preds = %.thread, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.ap = phi float [ %i.ab, %bb.k ], [ %i.ao, %bb.j ], [ 0.000000e+00, %bb.i ]
  store float %i.ap, ptr %i.aa, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35
  %i.au = add nsw i32 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %i.ax = add nsw i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.ba = add nsw i32 %i.ax, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !62
  %.not45 = icmp eq i32 %i.bc, 0
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !37 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, -1
  %spec.select = select i1 %i.bl, i32 0, i32 %i.bk
  %i.bm = add nsw i32 %spec.select, %i.bh
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret void
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hdcd_control_stereo(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 284        ; 2 uses
  %.val21 = load i32, ptr %i.a, align 4, !tbaa !64
  %.not.i = icmp eq i32 %.val21, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.c = load i8, ptr %i.b, align 2, !tbaa !65    ; 2 uses
  %i.d = lshr i8 %i.c, 4
  %.lobit.i = and i8 %i.d, 1
  %i.e = zext nneg i8 %.lobit.i to i32
  %i.f = select i1 %.not.i, i32 %i.e, i32 1
  store i32 %i.f, ptr %1, align 4, !tbaa !39
  %i.g = and i8 %i.c, 15                          ; 3 uses
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !64
  %.not.i22 = icmp eq i32 %.val, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.j = load i8, ptr %i.i, align 2, !tbaa !65    ; 2 uses
  %i.k = lshr i8 %i.j, 4
  %.lobit.i23 = and i8 %i.k, 1
  %i.l = zext nneg i8 %.lobit.i23 to i32
  %i.m = select i1 %.not.i22, i32 %i.l, i32 1
  store i32 %i.m, ptr %2, align 4, !tbaa !39
  %i.n = and i8 %i.j, 15                          ; 3 uses
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = icmp eq i8 %i.g, %i.n
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = shl nuw nsw i32 %i.h, 7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.q, ptr %i.r, align 4, !tbaa !61
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.h, 1
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fneg nsz float %i.x
  %i.z = fpext nsz float %i.y to double
  %i.aa = and i32 %i.h, 1
  %.not16 = icmp eq i32 %i.aa, 0
  %i.ab = select nsz i1 %.not16, double 0.000000e+00, double 5.000000e-01
  %i.ac = fsub nsz double %i.z, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ad = phi nsz double [ %i.ac, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.not17 = icmp eq i8 %i.n, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i32 %i.o, 1
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fneg nsz float %i.af
  %i.ah = fpext nsz float %i.ag to double
  %i.ai = and i32 %i.o, 1
  %.not18 = icmp eq i32 %i.ai, 0
  %i.aj = select nsz i1 %.not18, double 0.000000e+00, double 5.000000e-01
  %i.ak = fsub nsz double %i.ah, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.al = phi nsz double [ %i.ak, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.an = load i32, ptr %i.am, align 4, !tbaa !61 ; 3 uses
  %.not19 = icmp ult i32 %i.an, 128
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = ashr i32 %i.an, 8
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = fneg nsz float %i.ap
  %i.ar = fpext nsz float %i.aq to double
  %i.as = and i32 %i.an, 128
  %.not20 = icmp eq i32 %i.as, 0
  %i.at = select nsz i1 %.not20, double 0.000000e+00, double 5.000000e-01
  %i.au = fsub nsz double %i.ar, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = phi nsz double [ %i.au, %bb.h ], [ 0.000000e+00, %bb.g ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 40, ptr noundef nonnull @.str.8, i32 noundef %i.v, double noundef %i.ad, double noundef %i.al, double noundef %i.av) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.i ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hdcd_scan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, -2147483648) %4) unnamed_addr #1 {
bb.a:
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62   ; 4 uses
  %.not68 = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not68, label %bb.e, label %bb.b

.preheader77:                                     ; preds = %bb.f, %bb.i, %bb.e
  %.sroa.5.0 = phi i1 [ true, %bb.e ], [ %.not68.1, %bb.i ], [ %.not68.1, %bb.f ]
  %.260.lcssa = phi i32 [ %.260, %bb.e ], [ %.260, %bb.f ], [ %.159.1, %bb.i ] ; 3 uses
  %i.c = icmp sgt i32 %.260.lcssa, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %5 = shl nuw nsw i64 %wide.trip.count, 2        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %exitcond.not.i = icmp eq i32 %2, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %exitcond153.not.i = icmp eq i32 %2, 1
  %exitcond153.not.i.a = icmp eq i32 %2, 1
  %exitcond153.not.i.epil = icmp eq i32 %2, 1
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not69 = icmp ugt i32 %i.b, %4
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.h, align 2, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.159 = phi i32 [ %i.b, %bb.c ], [ %4, %bb.b ]  ; 2 uses
  %i.i = sub i32 %i.b, %.159
  store i32 %i.i, ptr %i.a, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.260 = phi i32 [ %4, %bb.a ], [ %.159, %bb.d ] ; 4 uses
  %exitcond.not = icmp eq i32 %2, 1
  br i1 %exitcond.not, label %.preheader77, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62   ; 4 uses
  %.not68.1 = icmp eq i32 %i.k, 0                 ; 3 uses
  br i1 %.not68.1, label %.preheader77, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not69.1 = icmp ugt i32 %i.k, %.260
  br i1 %.not69.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i8 0, ptr %i.l, align 2, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.159.1 = phi i32 [ %i.k, %bb.h ], [ %.260, %bb.g ] ; 2 uses
  %i.m = sub i32 %i.k, %.159.1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !62
  br label %.preheader77

bb.j:                                             ; preds = %.lr.ph, %bb.an
  %.05584 = phi i32 [ 0, %.lr.ph ], [ %i.dj, %bb.an ] ; 2 uses
  %.06183 = phi ptr [ %3, %.lr.ph ], [ %i.ea, %bb.an ] ; 3 uses
  %i.n = sub nsw i32 %.260.lcssa, %.05584
  %i.o = load i8, ptr %i.f, align 8, !tbaa !68
  %i.p = zext i8 %i.o to i32
  %.0121..i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.p) ; 2 uses
  br i1 %exitcond.not.i, label %.preheader137.i, label %bb.k

.preheader137.i:                                  ; preds = %bb.k, %bb.j
  %.0121..i.lcssa = phi i32 [ %.0121..i, %bb.j ], [ %.0121..i.1, %bb.k ] ; 11 uses
  %i.q = icmp sgt i32 %.0121..i.lcssa, 0
  br i1 %i.q, label %.preheader136.i.preheader, label %.preheader.i

.preheader136.i.preheader:                        ; preds = %.preheader137.i
  %xtraiter = and i32 %.0121..i.lcssa, 1
  %6 = icmp eq i32 %.0121..i.lcssa, 1
  br i1 %6, label %.preheader136.i.a, label %.preheader136.i.preheader.new

.preheader136.i.preheader.new:                    ; preds = %.preheader136.i.preheader
  %unroll_iter = and i32 %.0121..i.lcssa, 2147483646
  br label %.preheader136.i

bb.k:                                             ; preds = %bb.j
  %i.r = load i8, ptr %i.g, align 8, !tbaa !68
  %i.s = zext i8 %i.r to i32
  %.0121..i.1 = tail call i32 @llvm.smin.i32(i32 %.0121..i, i32 %i.s)
  br label %.preheader137.i

.preheader136.i:                                  ; preds = %bb.m, %.preheader136.i.preheader.new
  %.sroa.0.0.i = phi i32 [ 0, %.preheader136.i.preheader.new ], [ %24, %bb.m ]
  %.sroa.5.0.i = phi i32 [ 0, %.preheader136.i.preheader.new ], [ %i.ag, %bb.m ] ; 2 uses
  %.0119144.in.i = phi i32 [ %.0121..i.lcssa, %.preheader136.i.preheader.new ], [ %.0119144.i.1, %bb.m ] ; 2 uses
  %.0123143.i = phi ptr [ %.06183, %.preheader136.i.preheader.new ], [ %scevgep.1, %bb.m ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader136.i.preheader.new ], [ %niter.next.1, %bb.m ]
  %.0119144.i = add nsw i32 %.0119144.in.i, -1    ; 2 uses
  %7 = load i32, ptr %.0123143.i, align 4, !tbaa !39
  %8 = and i32 %7, 1
  %9 = shl nuw i32 %8, %.0119144.i
  %10 = or i32 %9, %.sroa.0.0.i
  br i1 %exitcond153.not.i, label %.preheader136.i.1, label %.cont.i.1

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.preheader136.i.a

.preheader136.i.a:                                ; preds = %.preheader.i.loopexit.unr-lcssa, %.preheader136.i.preheader
  %i.t = phi i32 [ 0, %.preheader136.i.preheader ], [ %24, %.preheader.i.loopexit.unr-lcssa ]
  %i.u = phi i32 [ 0, %.preheader136.i.preheader ], [ %i.ag, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %.0119144.in.i.a = phi i32 [ %.0121..i.lcssa, %.preheader136.i.preheader ], [ %.0119144.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.0123143.i.a = phi ptr [ %.06183, %.preheader136.i.preheader ], [ %scevgep.1, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %.0121..i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %.0119144.i.epil = add nsw i32 %.0119144.in.i.a, -1 ; 2 uses
  %i.v = load i32, ptr %.0123143.i.a, align 4, !tbaa !39
  %i.w = and i32 %i.v, 1
  %i.x = shl nuw i32 %i.w, %.0119144.i.epil
  %i.y = or i32 %i.x, %i.t                        ; 2 uses
  br i1 %exitcond153.not.i.epil, label %.preheader.i, label %.cont.i.1.epil

.cont.i.1.epil:                                   ; preds = %.preheader136.i.a
  %11 = getelementptr inbounds nuw i8, ptr %.0123143.i.a, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = and i32 %12, 1
  %14 = shl nuw i32 %13, %.0119144.i.epil
  %15 = or i32 %14, %i.u
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.cont.i.1.epil, %.preheader136.i.a, %.preheader137.i
  %.sroa.0.1.i = phi i32 [ 0, %.preheader137.i ], [ %24, %.preheader.i.loopexit.unr-lcssa ], [ %i.y, %.cont.i.1.epil ], [ %i.y, %.preheader136.i.a ]
  %.sroa.5.1.i = phi i32 [ 0, %.preheader137.i ], [ %i.ag, %.preheader.i.loopexit.unr-lcssa ], [ %i.u, %.preheader136.i.a ], [ %15, %.cont.i.1.epil ]
  %i.z = zext nneg i32 %.0121..i.lcssa to i64
  %i.aa = trunc i32 %.0121..i.lcssa to i8         ; 2 uses
  br label %bb.n

.cont.i.1:                                        ; preds = %.preheader136.i
  %16 = getelementptr inbounds nuw i8, ptr %.0123143.i, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !39
  %18 = and i32 %17, 1
  %19 = shl nuw i32 %18, %.0119144.i
  %20 = or i32 %19, %.sroa.5.0.i
  br label %.preheader136.i.1

.preheader136.i.1:                                ; preds = %.cont.i.1, %.preheader136.i
  %spec.select169.i.lcssa = phi i32 [ %.sroa.5.0.i, %.preheader136.i ], [ %20, %.cont.i.1 ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.0123143.i, i64 %5 ; 3 uses
  %.0119144.i.1 = add nsw i32 %.0119144.in.i, -2  ; 4 uses
  %21 = load i32, ptr %scevgep, align 4, !tbaa !39
  %22 = and i32 %21, 1
  %23 = shl nuw i32 %22, %.0119144.i.1
  %24 = or i32 %23, %10                           ; 3 uses
  br i1 %exitcond153.not.i.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader136.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = and i32 %i.ac, 1
  %i.ae = shl nuw i32 %i.ad, %.0119144.i.1
  %i.af = or i32 %i.ae, %spec.select169.i.lcssa
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader136.i.1
  %i.ag = phi i32 [ %spec.select169.i.lcssa, %.preheader136.i.1 ], [ %i.af, %bb.l ] ; 3 uses
  %scevgep.1 = getelementptr i8, ptr %scevgep, i64 %5 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i.loopexit.unr-lcssa, label %.preheader136.i, !llvm.loop !120

bb.n:                                             ; preds = %bb.ah, %.preheader.i
  %.072 = phi i32 [ 0, %.preheader.i ], [ %.173, %bb.ah ] ; 6 uses
  %indvars.iv154.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next155.i, %bb.ah ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %1, i64 %indvars.iv154.i ; 13 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67
  %i.aj = shl i64 %i.ai, %i.z
  %.sroa.idx.i = icmp eq i64 %indvars.iv154.i, 1
  %.sroa.speculated165.i = select i1 %.sroa.idx.i, i32 %.sroa.5.1.i, i32 %.sroa.0.1.i
  %i.ak = zext i32 %.sroa.speculated165.i to i64
  %i.al = or i64 %i.aj, %i.ak                     ; 4 uses
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !68  ; 2 uses
  %i.ao = sub i8 %i.an, %i.aa
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !68
  %i.ap = icmp eq i8 %i.an, %i.aa
  br i1 %i.ap, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %bb.n
  %i.aq = lshr i64 %i.al, 5
  %i.ar = lshr i64 %i.al, 23
  %i.as = xor i64 %i.aq, %i.ar
  %i.at = xor i64 %i.as, %i.al                    ; 4 uses
  %i.au = trunc i64 %i.at to i32                  ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 9 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !69
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = and i32 %i.au, 262145280
  %i.ay = icmp eq i32 %i.ax, 262145280
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = and i32 %i.au, 200
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = and i32 %i.au, 7
  %i.bc = add nuw nsw i32 %i.bb, %i.au
  %i.bd = trunc i32 %i.bc to i8
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 28 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !34
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.bi = and i32 %i.au, 255
  %i.bj = load i32, ptr %i.e, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bh, i32 noundef 40, ptr noundef nonnull @.str.9, i32 noundef %i.bi, i32 noundef %i.bj) #10
  br label %bb.ab

bb.t:                                             ; preds = %bb.p
  %i.bk = and i32 %i.au, -1610219520
  %i.bl = icmp eq i32 %i.bk, -1610219520
  br i1 %i.bl, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bm = xor i32 %i.au, -1                       ; 2 uses
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = and i32 %i.bn, 255
  %.masked.i = and i32 %i.au, -65281
  %i.bp = xor i32 %i.bo, %.masked.i
  %i.bq = icmp eq i32 %i.bp, -1610219520
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = lshr i64 %i.at, 8
  %i.bs = trunc i64 %i.br to i8
  br label %.critedge.i

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !35
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.bx = and i32 %i.au, 65535
  %i.by = lshr i32 %i.au, 8
  %i.bz = and i32 %i.by, 255
  %i.ca = and i32 %i.bm, 255
  %i.cb = load i32, ptr %i.e, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bw, i32 noundef 40, ptr noundef nonnull @.str.10, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.cb) #10
  br label %bb.ab

.critedge.i:                                      ; preds = %bb.v, %bb.r
  %.sink.i = phi i8 [ %i.bs, %bb.v ], [ %i.bd, %bb.r ] ; 4 uses
  %.sink161.i = phi i64 [ 32, %bb.v ], [ 24, %bb.r ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %.sink.i, ptr %i.cc, align 2, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink161.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !39
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !39
  %i.cg = trunc nuw nsw i64 %indvars.iv154.i to i32
  %i.ch = shl nuw nsw i32 1, %i.cg
  %i.ci = or i32 %i.ch, %.072
  %i.cj = and i8 %.sink.i, 16
  %.not133.i = icmp eq i8 %i.cj, 0
  br i1 %.not133.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !32
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i
  %i.cn = and i8 %.sink.i, 32
  %.not134.i = icmp eq i8 %i.cn, 0
  br i1 %.not134.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !33
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.cs = and i8 %.sink.i, 15                     ; 2 uses
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !39
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ah, i64 120 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !38
  %i.cz = zext nneg i8 %i.cs to i32
  %..i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.cz)
  store i32 %..i, ptr %i.cx, align 8, !tbaa !38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.t, %bb.s
  %.274 = phi i32 [ %i.ci, %bb.aa ], [ %.072, %bb.s ], [ %.072, %bb.w ], [ %.072, %bb.t ]
  store i8 0, ptr %i.av, align 1, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o
  %.3 = phi i32 [ %.072, %bb.o ], [ %.274, %bb.ab ] ; 3 uses
  %i.da = add i32 %i.au, -2114953221
  %or.cond.i = icmp ult i32 %i.da, 2
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.tr.i = trunc i64 %i.at to i8
  %i.db = shl i8 %.tr.i, 3
  %i.dc = and i8 %i.db, 24
  store i8 %i.dc, ptr %i.am, align 8, !tbaa !68
  store i8 1, ptr %i.av, align 1, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !31
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !31
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %.not135.i = icmp eq i32 %i.au, 0
  br i1 %.not135.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = and i64 %i.at, 255
  %i.dh = getelementptr inbounds nuw i8, ptr @readaheadtab, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !122
  store i8 %i.di, ptr %i.am, align 8, !tbaa !68
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i8 31, ptr %i.am, align 8, !tbaa !68
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.n
  %.173 = phi i32 [ %.3, %bb.ad ], [ %.3, %bb.ag ], [ %.3, %bb.af ], [ %.072, %bb.n ] ; 4 uses
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next155.i, %wide.trip.count
  br i1 %exitcond158.not.i, label %hdcd_integrate.exit, label %bb.n, !llvm.loop !121

hdcd_integrate.exit:                              ; preds = %bb.ah
  %i.dj = add nsw i32 %.0121..i.lcssa, %.05584    ; 6 uses
  %.not = icmp eq i32 %.173, 0
  br i1 %.not, label %bb.an, label %.preheader

.preheader:                                       ; preds = %hdcd_integrate.exit
  %i.dk = and i32 %.173, 1
  %.not67 = icmp eq i32 %i.dk, 0
  br i1 %.not67, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !37
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.do, align 4, !tbaa !37
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %bb.aj, %bb.ai
  %exitcond96.not = icmp eq i32 %2, 1
  %i.dr = and i32 %.173, 2
  %.not67.1 = icmp eq i32 %i.dr, 0
  %or.cond = select i1 %exitcond96.not, i1 true, i1 %.not67.1
  br i1 %or.cond, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !70
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 148
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !37
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dv, align 4, !tbaa !37
  br label %.thread

bb.an:                                            ; preds = %hdcd_integrate.exit
  %i.dy = mul nsw i32 %.0121..i.lcssa, %2
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %.06183, i64 %i.dz
  %i.eb = icmp slt i32 %i.dj, %.260.lcssa
  br i1 %i.eb, label %bb.j, label %.thread

.thread:                                          ; preds = %.preheader77, %bb.al, %bb.am, %bb.ak, %bb.an
  %.156 = phi i32 [ %i.dj, %bb.ak ], [ 0, %.preheader77 ], [ %i.dj, %bb.an ], [ %i.dj, %bb.al ], [ %i.dj, %bb.am ]
  br i1 %.not68, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !62
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !37
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !37
  br label %bb.aq

bb.aq:                                            ; preds = %.thread, %bb.ao, %bb.ap
  %exitcond101.not = icmp eq i32 %2, 1
  %brmerge = or i1 %exitcond101.not, %.sroa.5.0
  br i1 %brmerge, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !62
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !37
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !37
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  ret i32 %.156
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hdcd_analyze(ptr nofree noundef captures(address) %0, i32 noundef range(i32 -2147483648, 2147483647) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 -1, 2) %8) unnamed_addr #1 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %6, 2
  %i.f = icmp eq i32 %6, 3
  %i.g = icmp ne i32 %7, 0
  %or.cond3 = and i1 %i.f, %i.g
  %i.h = icmp ne i32 %5, 0                        ; 4 uses
  br i1 %i.e, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.i = sext i32 %2 to i64                       ; 3 uses
  %wide.trip.count169 = zext nneg i32 %1 to i64   ; 5 uses
  %min.iters.check228 = icmp ugt i32 %1, 3
  %ident.check226.not = icmp eq i32 %2, 1
  %or.cond238 = and i1 %min.iters.check228, %ident.check226.not
  br i1 %or.cond238, label %vector.ph229, label %.lr.ph.split.us.preheader247

vector.ph229:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec230 = and i64 %wide.trip.count169, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next234, %vector.body231 ] ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %index232 ; 2 uses
  %wide.load233 = load <4 x i32>, ptr %i.j, align 4, !tbaa !39 ; 2 uses
  %i.k = shl nsw <4 x i32> %wide.load233, splat (i32 15)
  %i.l = and <4 x i32> %wide.load233, splat (i32 2)
  %i.m = icmp ne <4 x i32> %i.l, zeroinitializer
  %i.n = and <4 x i1> %broadcast.splat, %i.m
  %i.o = sext <4 x i32> %i.k to <4 x i64>
  %i.p = select <4 x i1> %i.n, <4 x i64> splat (i64 19456), <4 x i64> splat (i64 1024)
  %i.q = mul nsw <4 x i64> %i.p, %i.o
  %i.r = lshr exact <4 x i64> %i.q, splat (i64 10)
  %i.s = trunc <4 x i64> %i.r to <4 x i32>
  store <4 x i32> %i.s, ptr %i.j, align 4, !tbaa !39
  %index.next234 = add nuw i64 %index232, 4       ; 2 uses
  %i.t = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.t, label %middle.block235, label %vector.body231, !llvm.loop !123

middle.block235:                                  ; preds = %vector.body231
  %cmp.n236 = icmp eq i64 %n.vec230, %wide.trip.count169
  br i1 %cmp.n236, label %._crit_edge, label %.lr.ph.split.us.preheader247

.lr.ph.split.us.preheader247:                     ; preds = %.lr.ph.split.us.preheader, %middle.block235
  %indvars.iv166.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec230, %middle.block235 ] ; 4 uses
  %xtraiter260 = and i64 %wide.trip.count169, 1
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader247
  %i.u = mul nsw i64 %indvars.iv166.ph, %i.i
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39   ; 2 uses
  %i.x = shl nsw i32 %i.w, 15
  %i.y = and i32 %i.w, 2
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = and i1 %i.h, %i.z
  %i.ab = sext i32 %i.x to i64
  %i.ac = select i1 %i.aa, i64 19456, i64 1024
  %i.ad = mul nsw i64 %i.ac, %i.ab
  %i.ae = lshr exact i64 %i.ad, 10
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.v, align 4, !tbaa !39
  %indvars.iv.next167.prol = or disjoint i64 %indvars.iv166.ph, 1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader247
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph.split.us.preheader247 ], [ %indvars.iv.next167.prol, %.lr.ph.split.us.prol ]
  %i.ag = add nsw i64 %wide.trip.count169, -1
  %i.ah = icmp eq i64 %indvars.iv166.ph, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph.split.us ], [ %indvars.iv166.unr, %.lr.ph.split.us.prol.loopexit ] ; 3 uses
  %i.ai = mul nsw i64 %indvars.iv166, %i.i
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !39 ; 2 uses
  %i.al = shl nsw i32 %i.ak, 15
  %i.am = and i32 %i.ak, 2
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = and i1 %i.h, %i.an
  %i.ap = sext i32 %i.al to i64
  %i.aq = select i1 %i.ao, i64 19456, i64 1024
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = lshr exact i64 %i.ar, 10
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.aj, align 4, !tbaa !39
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %i.au = mul nsw i64 %indvars.iv.next167, %i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !39 ; 2 uses
  %i.ax = shl nsw i32 %i.aw, 15
  %i.ay = and i32 %i.aw, 2
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = and i1 %i.h, %i.az
  %i.bb = sext i32 %i.ax to i64
  %i.bc = select i1 %i.ba, i64 19456, i64 1024
  %i.bd = mul nsw i64 %i.bc, %i.bb
  %i.be = lshr exact i64 %i.bd, 10
  %i.bf = trunc i64 %i.be to i32
end_hunk_0
