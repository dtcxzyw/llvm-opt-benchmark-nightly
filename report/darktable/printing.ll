Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/printing?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dt_printing_clear_boxes:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.y, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.z, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.aa, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.ab, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.ac, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1492
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.ae, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.af, align 4, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.ag, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.ah, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1684
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.ai, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.aj, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.ak, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.al, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1876
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.am, i8 0, i64 92, i1 false)
  store i32 4, ptr %i.an, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 56, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i32 -1, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @dt_printing_get_image_box(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sitofp reassoc nsz arcp contract afn i32 %1 to float ; 4 uses
  %i.e = sitofp reassoc nsz arcp contract afn i32 %2 to float ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.035.lcssa = phi i32 [ -1, %bb.a ], [ %.237, %bb.e ]
  ret i32 %.035.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.03448 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.2, %bb.e ] ; 4 uses
  %.03547 = phi i32 [ -1, %.lr.ph ], [ %.237, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load float, ptr %i.g, align 8, !tbaa !20 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.j = load float, ptr %i.i, align 8, !tbaa !21
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.h ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.m = load float, ptr %i.l, align 4, !tbaa !22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.o = load float, ptr %i.n, align 4, !tbaa !23
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, %i.m ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.h, %i.d
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.k, %i.d
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.e
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.p, %i.e
  %or.cond45 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = fsub reassoc nsz arcp contract afn float %i.h, %i.d ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.u
  %i.w = fsub reassoc nsz arcp contract afn float %i.k, %i.d ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.x)
  %i.z = fsub reassoc nsz arcp contract afn float %i.m, %i.e ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float %i.aa)
  %i.ac = fsub reassoc nsz arcp contract afn float %i.p, %i.e ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ab, float %i.ad) ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, %.03448 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.af, i32 %i.ag, i32 %.03547
  %spec.select46 = select nsz i1 %i.af, float %i.ae, float %.03448
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.237 = phi i32 [ %spec.select, %bb.d ], [ %.03547, %bb.b ], [ %.03547, %bb.c ] ; 2 uses
  %.2 = phi nsz float [ %spec.select46, %bb.d ], [ %.03448, %bb.b ], [ %.03448, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_compute_rel_pos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !24
  %i.e = load <2 x float>, ptr %i.b, align 8, !tbaa !24
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !24
  %i.h = fsub reassoc nsz arcp contract afn <2 x float> %i.g, %i.d
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !24
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = fdiv reassoc nsz arcp contract afn <4 x float> %i.j, %i.f
  store <4 x float> %i.k, ptr %2, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_printing_setup_display(ptr nofree noundef captures(none) initializes((1952, 1988)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1952
  store float %1, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1956
  store float %2, ptr %i.b, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store float %3, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1964
  store float %4, ptr %i.d, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store float %5, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1972
  store float %6, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store float %7, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1980
  store float %8, ptr %i.h, align 4, !tbaa !28
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !87
  %i.j = and i32 %i.i, 32768
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fpext reassoc nsz arcp contract afn float %1 to double
  %i.l = fpext reassoc nsz arcp contract afn float %2 to double
  %i.m = fpext reassoc nsz arcp contract afn float %3 to double
  %i.n = fpext reassoc nsz arcp contract afn float %4 to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %i.k, double noundef %i.l, double noundef %i.m, double noundef %i.n) #12
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !87
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
  store i32 %9, ptr %i.t, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 2 uses
  %i.y = insertelement <4 x float> poison, float %3, i64 0
  %i.z = insertelement <4 x float> %i.y, float %4, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.ab = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %1, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %2, i64 1 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ad = icmp ult i32 %i.v, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv.epil ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !89
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.aj = load <4 x float>, ptr %i.af, align 8, !tbaa !24
  %i.ak = fmul reassoc nsz arcp contract afn <4 x float> %i.aj, %i.aa
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %i.ak, %i.ac
  store <4 x float> %i.al, ptr %i.ai, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.thread
  ret void

bb.g:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.o ]
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.ao = load float, ptr %i.an, align 8, !tbaa !89
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ar = load <4 x float>, ptr %i.an, align 8, !tbaa !24
  %i.as = fmul reassoc nsz arcp contract afn <4 x float> %i.ar, %i.aa
  %i.at = fadd reassoc nsz arcp contract afn <4 x float> %i.as, %i.ac
  store <4 x float> %i.at, ptr %i.aq, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136 ; 2 uses
  %i.aw = load float, ptr %i.av, align 8, !tbaa !89
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.az = load <4 x float>, ptr %i.av, align 8, !tbaa !24
  %i.ba = fmul reassoc nsz arcp contract afn <4 x float> %i.az, %i.aa
  %i.bb = fadd reassoc nsz arcp contract afn <4 x float> %i.ba, %i.ac
  store <4 x float> %i.bb, ptr %i.ay, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 232 ; 2 uses
  %i.be = load float, ptr %i.bd, align 8, !tbaa !89
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 248
  %i.bh = load <4 x float>, ptr %i.bd, align 8, !tbaa !24
  %i.bi = fmul reassoc nsz arcp contract afn <4 x float> %i.bh, %i.aa
  %i.bj = fadd reassoc nsz arcp contract afn <4 x float> %i.bi, %i.ac
  store <4 x float> %i.bj, ptr %i.bg, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bk = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 328 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !89
  %i.bn = fcmp reassoc nsz arcp contract afn ogt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 344
  %i.bp = load <4 x float>, ptr %i.bl, align 8, !tbaa !24
  %i.bq = fmul reassoc nsz arcp contract afn <4 x float> %i.bp, %i.aa
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %i.bq, %i.ac
  store <4 x float> %i.br, ptr %i.bo, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dt_printing_setup_box(ptr nofree noundef captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.c = load float, ptr %i.b, align 8, !tbaa !27 ; 2 uses
  %i.d = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %4, float 1.000000e+02)
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.c, float %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1980
  %i.g = load float, ptr %i.f, align 4, !tbaa !28 ; 2 uses
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %5, float 1.000000e+02)
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.g, float %i.h) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [96 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load float, ptr %i.a, align 8, !tbaa !25 ; 3 uses
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.m, float %2) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store float %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.q = load float, ptr %i.p, align 4, !tbaa !26 ; 3 uses
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.q, float %3) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 2 uses
  store float %i.r, ptr %i.s, align 4, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store float %i.e, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store float %i.i, ptr %i.u, align 4, !tbaa !23
  %i.v = fadd reassoc nsz arcp contract afn float %i.n, %i.e
  %i.w = fadd reassoc nsz arcp contract afn float %i.m, %i.c ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.v, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.e
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.m, float %i.y) ; 2 uses
  store float %i.z, ptr %i.o, align 8, !tbaa !20
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
  store float %i.af, ptr %i.s, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = phi float [ %i.af, %bb.d ], [ %i.r, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.ak = load <2 x float>, ptr %i.ai, align 8, !tbaa !24
  %i.al = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ag, i64 1
  %i.an = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.ak
  %i.ao = load <2 x float>, ptr %i.aj, align 8, !tbaa !24
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aq = insertelement <4 x float> poison, float %i.e, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.i, i64 3
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = fdiv reassoc nsz arcp contract afn <4 x float> %i.at, %i.ap
  store <4 x float> %i.au, ptr %i.ah, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !19
  %i.ax = icmp eq i32 %1, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %1, 1
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_printing_setup_page(ptr nofree noundef captures(none) initializes((1936, 1952)) %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %2, i64 1
  %i.c = fpext reassoc nsz arcp contract afn <2 x float> %i.b to <2 x double>
  %i.d = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.e = fmul reassoc nnan nsz arcp contract afn double %i.d, f0x3FA42850A1428509
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.g = insertelement <2 x double> poison, double %i.e, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul reassoc nsz arcp contract afn <2 x double> %i.h, %i.c
  %i.j = fptrunc reassoc nsz arcp contract afn <2 x double> %i.i to <2 x float> ; 4 uses
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = insertelement <4 x float> %i.k, float %1, i64 2
  %i.m = insertelement <4 x float> %i.l, float %2, i64 3
  store <4 x float> %i.m, ptr %i.f, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat23 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %i.q, <8 x i64> %vec.ind ; 4 uses
  %wide.gep24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %wide.gep24, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !93
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %broadcast.splat
  %i.s = fptosi <8 x float> %i.r to <8 x i32>
  %wide.gep25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.s, <8 x ptr> align 4 %wide.gep25, <8 x i1> splat (i1 true)), !tbaa !94
  %wide.gep26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  %wide.masked.gather27 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep26, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !95
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather27, %broadcast.splat23
  %i.u = fptosi <8 x float> %i.t to <8 x i32>
  %wide.gep28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.u, <8 x ptr> align 8 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !91

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
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load <2 x float>, ptr %i.x, align 8, !tbaa !24
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.j
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>
  store <2 x i32> %i.ab, ptr %i.y, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_align_pos(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sitofp reassoc nsz arcp contract afn i32 %2 to float ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.a, ptr %i.b, align 4, !tbaa !99
  %i.c = sitofp reassoc nsz arcp contract afn i32 %3 to float ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.c, ptr %i.d, align 4, !tbaa !30
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
  %i.e = load float, ptr %0, align 4, !tbaa !31
end_hunk_0
