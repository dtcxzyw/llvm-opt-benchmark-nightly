inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dt_printing_setup_display:bb.a
  store float %4, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store float %5, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1972
  store float %6, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store float %7, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1980
  store float %8, ptr %i.h, align 4, !tbaa !34
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !35
  %i.j = and i32 %i.i, 32768
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fpext reassoc nsz arcp contract afn float %1 to double
  %i.l = fpext reassoc nsz arcp contract afn float %2 to double
  %i.m = fpext reassoc nsz arcp contract afn float %3 to double
  %i.n = fpext reassoc nsz arcp contract afn float %4 to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %i.k, double noundef %i.l, double noundef %i.m, double noundef %i.n) #12
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !35
  %.pre49 = and i32 %.pre, 32768
  %i.o = icmp eq i32 %.pre49, 0
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fpext reassoc nsz arcp contract afn float %5 to double
  %i.q = fpext reassoc nsz arcp contract afn float %6 to double
  %i.r = fpext reassoc nsz arcp contract afn float %7 to double
  %i.s = fpext reassoc nsz arcp contract afn float %8 to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, double noundef %i.p, double noundef %i.q, double noundef %i.r, double noundef %i.s) #12
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i32 %9, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17   ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %i.y = insertelement <4 x float> poison, float %3, i64 0
  %i.z = insertelement <4 x float> %i.y, float %4, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ab = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %1, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %2, i64 1 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.v, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i32 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv.epil.init ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load float, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.am = load <2 x float>, ptr %i.al, align 8, !tbaa !26
  %i.an = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ar = fmul reassoc nsz arcp contract afn <4 x float> %i.aq, %i.aa
  %i.as = fadd reassoc nsz arcp contract afn <4 x float> %i.ar, %i.ac
  store <4 x float> %i.as, ptr %i.ai, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.epil.preheader, %.thread
  ret void

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load float, ptr %i.au, align 8, !tbaa !82 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.az = load float, ptr %i.ay, align 4, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bb = load <2 x float>, ptr %i.ba, align 8, !tbaa !26
  %i.bc = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bg = fmul reassoc nsz arcp contract afn <4 x float> %i.bf, %i.aa
  %i.bh = fadd reassoc nsz arcp contract afn <4 x float> %i.bg, %i.ac
  store <4 x float> %i.bh, ptr %i.ax, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bi = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !82 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 140
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bq = load <2 x float>, ptr %i.bp, align 8, !tbaa !26
  %i.br = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bs, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bv = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.aa
  %i.bw = fadd reassoc nsz arcp contract afn <4 x float> %i.bv, %i.ac
  store <4 x float> %i.bw, ptr %i.bm, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_printing_setup_box(ptr nofree noundef captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.c = load float, ptr %i.b, align 8, !tbaa !33 ; 2 uses
  %i.d = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %4, float 1.000000e+02)
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.c, float %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1980
  %i.g = load float, ptr %i.f, align 4, !tbaa !34 ; 2 uses
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %5, float 1.000000e+02)
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.g, float %i.h) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [96 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load float, ptr %i.a, align 8, !tbaa !31 ; 3 uses
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.m, float %2) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store float %i.n, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.q = load float, ptr %i.p, align 4, !tbaa !32 ; 3 uses
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.q, float %3) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 2 uses
  store float %i.r, ptr %i.s, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store float %i.e, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store float %i.i, ptr %i.u, align 4, !tbaa !25
  %i.v = fadd reassoc nsz arcp contract afn float %i.n, %i.e
  %i.w = fadd reassoc nsz arcp contract afn float %i.m, %i.c ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.v, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.e
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.m, float %i.y) ; 2 uses
  store float %i.z, ptr %i.o, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi float [ %i.z, %bb.b ], [ %i.n, %bb.a ]
  %i.ab = fadd reassoc nsz arcp contract afn float %i.r, %i.i
  %i.ac = fadd reassoc nsz arcp contract afn float %i.q, %i.g ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ac, %i.i
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.q, float %i.ae) ; 2 uses
  store float %i.af, ptr %i.s, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = phi float [ %i.af, %bb.d ], [ %i.r, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %6 = load <2 x float>, ptr %i.ai, align 8, !tbaa !26
  %7 = insertelement <2 x float> poison, float %i.aa, i64 0
  %8 = insertelement <2 x float> %7, float %i.ag, i64 1
  %9 = fsub reassoc nsz arcp contract afn <2 x float> %8, %6
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !26
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.am = insertelement <4 x float> poison, float %i.e, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.i, i64 3
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %10, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ao = fdiv reassoc nsz arcp contract afn <4 x float> %11, %i.al
  store <4 x float> %i.ao, ptr %i.ah, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !17
  %i.ar = icmp eq i32 %1, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = add nsw i32 %1, 1
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_printing_setup_page(ptr nofree noundef captures(none) initializes((1936, 1952)) %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store float %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1948
  store float %2, ptr %i.b, align 4, !tbaa !85
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.g = fmul reassoc nnan nsz arcp contract afn double %i.f, f0x3FA42850A1428509
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <2 x double> %i.j, %i.e
  %i.l = fptrunc <2 x double> %i.k to <2 x float> ; 4 uses
  store <2 x float> %i.l, ptr %i.h, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat23 = shufflevector <2 x float> %i.l, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %i.p, <8 x i64> %vec.ind ; 4 uses
  %wide.gep24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %wide.gep24, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !86
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %broadcast.splat
  %i.r = fptosi <8 x float> %i.q to <8 x i32>
  %wide.gep25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.r, <8 x ptr> align 4 %wide.gep25, <8 x i1> splat (i1 true)), !tbaa !87
  %wide.gep26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  %wide.masked.gather27 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep26, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !88
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather27, %broadcast.splat23
  %i.t = fptosi <8 x float> %i.s to <8 x i32>
  %wide.gep28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.t, <8 x ptr> align 8 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load <2 x float>, ptr %i.w, align 8, !tbaa !26
  %i.z = fmul reassoc nsz arcp contract afn <2 x float> %i.y, %i.l
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>
  store <2 x i32> %i.aa, ptr %i.x, align 4, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_align_pos(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sitofp reassoc nsz arcp contract afn i32 %2 to float ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.a, ptr %i.b, align 4, !tbaa !95
  %i.c = sitofp reassoc nsz arcp contract afn i32 %3 to float ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.c, ptr %i.d, align 4, !tbaa !96
  switch i32 %1, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 4, !tbaa !97
  store float %i.e, ptr %4, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !98
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 4, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !95
  %i.k = fsub reassoc nsz arcp contract afn float %i.j, %i.a
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, 5.000000e-01
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.h
  store float %i.m, ptr %4, align 4, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !98
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.p = load float, ptr %0, align 4, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !95
  %i.s = fsub reassoc nsz arcp contract afn float %i.p, %i.a
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, %i.r
  store float %i.t, ptr %4, align 4, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !98
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.w = load float, ptr %0, align 4, !tbaa !97
  store float %i.w, ptr %4, align 4, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !96
  %i.ab = fsub reassoc nsz arcp contract afn float %i.aa, %i.c
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, 5.000000e-01
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.y
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.ae = load float, ptr %0, align 4, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !95
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %i.a
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, 5.000000e-01
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ae
  store float %i.aj, ptr %4, align 4, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !96
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %i.c
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 5.000000e-01
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.al
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.ar = load float, ptr %0, align 4, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !95
  %i.au = fsub reassoc nsz arcp contract afn float %i.ar, %i.a
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at
  store float %i.av, ptr %4, align 4, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !96
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.c
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 5.000000e-01
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.ax
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.bd = load float, ptr %0, align 4, !tbaa !97
  store float %i.bd, ptr %4, align 4, !tbaa !97
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !98
end_hunk_0
