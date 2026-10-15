Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/integrate?download=true
inline.NumInlined: 61
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z19print_and_integrateP8_IO_FILEifPKfS2_i:bb.a
  br i1 %exitcond66.peel.not, label %.thread, label %.lr.ph.split.split

bb.d:                                             ; preds = %.lr.ph.split
  br i1 %exitcond66.peel.not, label %.thread, label %.lr.ph.split.split.us.peel.next

.lr.ph.split.split.us.peel.next:                  ; preds = %bb.d, %.lr.ph.split.split.us.peel.next
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph.split.split.us.peel.next ], [ 1, %bb.d ] ; 3 uses
  %.03446.us49 = phi float [ %i.bk, %.lr.ph.split.split.us.peel.next ], [ 0.000000e+00, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv62 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10 ; 2 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.bc = uitofp nneg i32 %i.bb to float
  %i.bd = fmul float %2, %i.bc
  %i.be = fpext float %i.bd to double
  %i.bf = fpext float %i.ba to double
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.be, double noundef %i.bf) #14 ; 0 uses
  %i.bh = getelementptr i8, ptr %i.az, i64 -4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = fadd float %i.ba, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %2, float %i.bj, float %.03446.us49) ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.thread, label %.lr.ph.split.split.us.peel.next, !llvm.loop !23

.lr.ph.split.split:                               ; preds = %bb.c, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 1, %bb.c ] ; 3 uses
  %.03446 = phi float [ %i.by, %bb.f ], [ 0.000000e+00, %bb.c ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !10 ; 2 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bo = srem i32 %i.bn, %5
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.bq = uitofp nneg i32 %i.bn to float
  %i.br = fmul float %2, %i.bq
  %i.bs = fpext float %i.br to double
  %i.bt = fpext float %i.bm to double
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.bs, double noundef %i.bt) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.split
  %i.bv = getelementptr i8, ptr %i.bl, i64 -4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = fadd float %i.bm, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %2, float %i.bx, float %.03446) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count65
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.034.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.by, %bb.f ] ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %._crit_edge.thread96, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  %.not42 = icmp eq ptr %4, null
  br i1 %.not42, label %._crit_edge.thread96, label %.preheader

.thread:                                          ; preds = %.lr.ph.split.split.us.peel.next, %bb.d, %bb.c
  %.034.lcssa.ph = phi float [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ], [ %i.bk, %.lr.ph.split.split.us.peel.next ] ; 2 uses
  %fwrite100 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  %.not42101 = icmp eq ptr %4, null
  br i1 %.not42101, label %._crit_edge.thread96, label %.lr.ph55

.preheader:                                       ; preds = %bb.g
  br i1 %i.a, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %.thread, %.preheader
  %.034.lcssa92102105 = phi float [ %.034.lcssa, %.preheader ], [ %.034.lcssa.ph, %.thread ] ; 2 uses
  %i.bz = icmp eq i32 %5, 0
  %wide.trip.count82 = zext nneg i32 %1 to i64    ; 2 uses
  br i1 %i.bz, label %.lr.ph55.split.us, label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55, %.lr.ph55.split.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph55.split.us ], [ 0, %.lr.ph55 ] ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.cb = uitofp nneg i32 %i.ca to float
  %i.cc = fmul float %2, %i.cb
  %i.cd = fpext float %i.cc to double
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv79
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10
  %i.cg = fpext float %i.cf to double
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.cd, double noundef %i.cg) #14 ; 0 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge56, label %.lr.ph55.split.us, !llvm.loop !25

.lr.ph55.split:                                   ; preds = %.lr.ph55, %bb.i
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.i ], [ 0, %.lr.ph55 ] ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv74 to i32  ; 2 uses
  %i.cj = srem i32 %i.ci, %5
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph55.split
  %i.cl = uitofp nneg i32 %i.ci to float
  %i.cm = fmul float %2, %i.cl
  %i.cn = fpext float %i.cm to double
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv74
  %i.cp = load float, ptr %i.co, align 4, !tbaa !10
  %i.cq = fpext float %i.cp to double
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %i.cn, double noundef %i.cq) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph55.split, %bb.h
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count82
  br i1 %exitcond78.not, label %._crit_edge56, label %.lr.ph55.split, !llvm.loop !25

._crit_edge56:                                    ; preds = %bb.i, %.lr.ph55.split.us, %.preheader
  %.034.lcssa92102104 = phi float [ %.034.lcssa92102105, %.lr.ph55.split.us ], [ %.034.lcssa, %.preheader ], [ %.034.lcssa92102105, %bb.i ]
  %fwrite43 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  br label %._crit_edge.thread96

._crit_edge.thread96.loopexit.unr-lcssa:          ; preds = %.lr.ph.split.us.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread96, label %.lr.ph.split.us.peel.next.epil.preheader

.lr.ph.split.us.peel.next.epil.preheader:         ; preds = %._crit_edge.thread96.loopexit.unr-lcssa, %.lr.ph.split.us.peel.next.preheader
  %indvars.iv68.epil.init = phi i64 [ 1, %.lr.ph.split.us.peel.next.preheader ], [ %indvars.iv.next69.7, %._crit_edge.thread96.loopexit.unr-lcssa ]
  %.03446.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.peel.next.preheader ], [ %i.as, %._crit_edge.thread96.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.split.us.peel.next.epil

.lr.ph.split.us.peel.next.epil:                   ; preds = %.lr.ph.split.us.peel.next.epil, %.lr.ph.split.us.peel.next.epil.preheader
  %indvars.iv68.epil = phi i64 [ %indvars.iv.next69.epil, %.lr.ph.split.us.peel.next.epil ], [ %indvars.iv68.epil.init, %.lr.ph.split.us.peel.next.epil.preheader ] ; 2 uses
  %.03446.us.epil = phi float [ %i.cx, %.lr.ph.split.us.peel.next.epil ], [ %.03446.us.epil.init, %.lr.ph.split.us.peel.next.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.peel.next.epil ], [ 0, %.lr.ph.split.us.peel.next.epil.preheader ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv68.epil ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !10
  %i.cu = getelementptr i8, ptr %i.cs, i64 -4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !10
  %i.cw = fadd float %i.ct, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %2, float %i.cw, float %.03446.us.epil) ; 2 uses
  %indvars.iv.next69.epil = add nuw nsw i64 %indvars.iv68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread96, label %.lr.ph.split.us.peel.next.epil, !llvm.loop !26

._crit_edge.thread96:                             ; preds = %._crit_edge.thread96.loopexit.unr-lcssa, %.lr.ph.split.us.peel.next.epil, %bb.b, %.thread, %bb.g, %._crit_edge56, %._crit_edge
  %.034.lcssa93 = phi float [ %.034.lcssa, %bb.g ], [ %.034.lcssa92102104, %._crit_edge56 ], [ %.034.lcssa, %._crit_edge ], [ %.034.lcssa.ph, %.thread ], [ 0.000000e+00, %bb.b ], [ %i.as, %._crit_edge.thread96.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph.split.us.peel.next.epil ]
  %i.cy = fmul float %.034.lcssa93, 5.000000e-01
  ret float %i.cy
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef float @_Z17evaluate_integraliPKfS0_S0_fPf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, float noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %.not61 = icmp eq ptr %3, null                  ; 2 uses
  %i.c = fcmp ogt float %4, 0.000000e+00
  %i.d = zext nneg i32 %i.b to i64                ; 10 uses
  %wide.trip.count119 = zext nneg i32 %0 to i64   ; 4 uses
  br i1 %i.c, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %.pre123.pre = load float, ptr %1, align 4, !tbaa !10 ; 4 uses
  %.not135 = icmp eq i32 %i.b, 0                  ; 2 uses
  br i1 %.not61, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  br i1 %.not135, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = fsub float %i.f, %.pre123.pre
  %i.h = fpext float %i.g to double
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 5.000000e-01, double 0.000000e+00)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.156.us.peel = phi double [ %i.i, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.j = load float, ptr %2, align 4, !tbaa !10
  %i.k = fpext float %i.j to double
  %i.l = tail call double @llvm.fmuladd.f64(double %.156.us.peel, double %i.k, double 0.000000e+00) ; 3 uses
  %i.m = load float, ptr %3, align 4, !tbaa !10
  %i.n = fpext float %i.m to double
  %i.o = fmul double %.156.us.peel, %i.n          ; 2 uses
  %i.p = fmul double %i.o, %i.o
  %7 = fadd double %i.p, 0.000000e+00             ; 3 uses
  %i.q = fcmp ult float %.pre123.pre, %4
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fadd double %i.l, 0.000000e+00
  %i.s = tail call double @sqrt(double noundef %7) #14
  %i.t = fadd double %i.s, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.154.us.peel = phi double [ %i.r, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.152.us.peel = phi double [ %i.t, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.149.us.peel = phi i32 [ 1, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %exitcond114.peel.not = icmp eq i32 %0, 1
  br i1 %exitcond114.peel.not, label %.split.us, label %.preheader.split.us.split.peel.next

bb.g:                                             ; preds = %.preheader.split.us
  br i1 %.not135, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = fsub float %i.v, %.pre123.pre
  %i.x = fpext float %i.w to double
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double 5.000000e-01, double 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.156.us.us.peel = phi double [ %i.y, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.z = load float, ptr %2, align 4, !tbaa !10
  %i.aa = fpext float %i.z to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %.156.us.us.peel, double %i.aa, double 0.000000e+00) ; 4 uses
  %i.ac = fcmp oge float %.pre123.pre, %4         ; 2 uses
  %i.ad = fadd double %i.ab, 0.000000e+00
  %.154.us.us.peel = select i1 %i.ac, double %i.ad, double 0.000000e+00 ; 3 uses
  %i.ae = zext i1 %i.ac to i32                    ; 3 uses
  %exitcond120.peel.not = icmp eq i32 %0, 1
  br i1 %exitcond120.peel.not, label %.split.us, label %.preheader.split.us.split.us.peel.next.preheader

.preheader.split.us.split.us.peel.next.preheader: ; preds = %bb.i
  %i.af = add nsw i64 %wide.trip.count119, -1     ; 3 uses
  %xtraiter175 = and i64 %i.af, 1
  %i.ag = icmp eq i32 %0, 2
  br i1 %i.ag, label %.preheader.split.us.split.us.peel.next.epil.preheader, label %.preheader.split.us.split.us.peel.next.preheader.new

.preheader.split.us.split.us.peel.next.preheader.new: ; preds = %.preheader.split.us.split.us.peel.next.preheader
  %unroll_iter181 = and i64 %i.af, -2
  br label %.preheader.split.us.split.us.peel.next

.preheader.split.us.split.us.peel.next:           ; preds = %._crit_edge124.1, %.preheader.split.us.split.us.peel.next.preheader.new
  %indvars.iv116 = phi i64 [ 1, %.preheader.split.us.split.us.peel.next.preheader.new ], [ %indvars.iv.next117.1, %._crit_edge124.1 ] ; 6 uses
  %.067.us.us = phi double [ %i.ab, %.preheader.split.us.split.us.peel.next.preheader.new ], [ %i.br, %._crit_edge124.1 ]
  %.04865.us.us = phi i32 [ %i.ae, %.preheader.split.us.split.us.peel.next.preheader.new ], [ %.149.us.us.1, %._crit_edge124.1 ]
  %.05362.us.us = phi double [ %.154.us.us.peel, %.preheader.split.us.split.us.peel.next.preheader.new ], [ %.154.us.us.1, %._crit_edge124.1 ] ; 2 uses
  %niter182 = phi i64 [ 0, %.preheader.split.us.split.us.peel.next.preheader.new ], [ %niter182.next.1, %._crit_edge124.1 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv116 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 -4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10
  %i.al = fsub float %i.ai, %i.ak
  %i.am = fpext float %i.al to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv116, %i.d
  br i1 %i.ao, label %bb.j, label %.preheader.split.us.split.us.peel.next.1

bb.j:                                             ; preds = %.preheader.split.us.split.us.peel.next
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv116
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !10
  %i.as = fsub float %i.ar, %i.ai
  %i.at = fpext float %i.as to double
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double 5.000000e-01, double %i.an)
  br label %.preheader.split.us.split.us.peel.next.1

.preheader.split.us.split.us.peel.next.1:         ; preds = %.preheader.split.us.split.us.peel.next, %bb.j
  %.156.us.us = phi double [ %i.au, %bb.j ], [ %i.an, %.preheader.split.us.split.us.peel.next ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv116
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %.156.us.us, double %i.ax, double %.067.us.us) ; 2 uses
  %i.az = fcmp oge float %i.ai, %4                ; 2 uses
  %i.ba = fadd double %.05362.us.us, %i.ay
  %.154.us.us = select i1 %i.az, double %i.ba, double %.05362.us.us ; 2 uses
  %i.bb = zext i1 %i.az to i32
  %.149.us.us = add nuw nsw i32 %.04865.us.us, %i.bb
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next117
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !10 ; 3 uses
  %i.be = fsub float %i.bd, %i.ai
  %i.bf = fpext float %i.be to double
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next117, %i.d
  br i1 %i.bh, label %bb.k, label %._crit_edge124.1

bb.k:                                             ; preds = %.preheader.split.us.split.us.peel.next.1
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next117
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !10
  %i.bl = fsub float %i.bk, %i.bd
  %i.bm = fpext float %i.bl to double
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double 5.000000e-01, double %i.bg)
  br label %._crit_edge124.1

._crit_edge124.1:                                 ; preds = %.preheader.split.us.split.us.peel.next.1, %bb.k
  %.156.us.us.1 = phi double [ %i.bn, %bb.k ], [ %i.bg, %.preheader.split.us.split.us.peel.next.1 ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next117
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !10
  %i.bq = fpext float %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %.156.us.us.1, double %i.bq, double %i.ay) ; 4 uses
  %i.bs = fcmp oge float %i.bd, %4                ; 2 uses
  %i.bt = fadd double %.154.us.us, %i.br
  %.154.us.us.1 = select i1 %i.bs, double %i.bt, double %.154.us.us ; 3 uses
  %i.bu = zext i1 %i.bs to i32
  %.149.us.us.1 = add nuw nsw i32 %.149.us.us, %i.bu ; 3 uses
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %.preheader.split.us.split.us.peel.next, !llvm.loop !28

.preheader.split.us.split.peel.next:              ; preds = %bb.f, %bb.o
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.o ], [ 1, %bb.f ] ; 6 uses
  %.067.us = phi double [ %i.co, %bb.o ], [ %i.l, %bb.f ]
  %.04666.us = phi double [ %i.cu, %bb.o ], [ %7, %bb.f ]
  %.04865.us = phi i32 [ %.149.us, %bb.o ], [ %.149.us.peel, %bb.f ] ; 2 uses
  %.05163.us = phi double [ %.152.us, %bb.o ], [ %.152.us.peel, %bb.f ] ; 2 uses
  %.05362.us = phi double [ %.154.us, %bb.o ], [ %.154.us.peel, %bb.f ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv110 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = getelementptr i8, ptr %i.bv, i64 -4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = fsub float %i.bw, %i.by
  %i.ca = fpext float %i.bz to double
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.cc = icmp samesign ult i64 %indvars.iv110, %i.d
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv110 ; 3 uses
  br i1 %i.cc, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.split.us.split.peel.next
  %.pre122 = load float, ptr %i.cd, align 4, !tbaa !10
  br label %bb.m

bb.l:                                             ; preds = %.preheader.split.us.split.peel.next
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !10 ; 2 uses
  %i.ch = fsub float %i.cf, %i.cg
  %i.ci = fpext float %i.ch to double
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double 5.000000e-01, double %i.cb)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.ck = phi float [ %i.cg, %bb.l ], [ %.pre122, %._crit_edge ]
  %.156.us = phi double [ %i.cj, %bb.l ], [ %i.cb, %._crit_edge ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv110
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !10
  %i.cn = fpext float %i.cm to double
  %i.co = tail call double @llvm.fmuladd.f64(double %.156.us, double %i.cn, double %.067.us) ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv110
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !10
  %i.cr = fpext float %i.cq to double
  %i.cs = fmul double %.156.us, %i.cr             ; 2 uses
  %i.ct = fmul double %i.cs, %i.cs
  %i.cu = fadd double %.04666.us, %i.ct           ; 3 uses
  %i.cv = fcmp ult float %i.ck, %4
  br i1 %i.cv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = fadd double %.05362.us, %i.co
  %i.cx = tail call double @sqrt(double noundef %i.cu) #14
  %i.cy = fadd double %.05163.us, %i.cx
  %i.cz = add nsw i32 %.04865.us, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.154.us = phi double [ %i.cw, %bb.n ], [ %.05362.us, %bb.m ] ; 2 uses
  %.152.us = phi double [ %i.cy, %bb.n ], [ %.05163.us, %bb.m ] ; 2 uses
  %.149.us = phi i32 [ %i.cz, %bb.n ], [ %.04865.us, %bb.m ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count119
  br i1 %exitcond114.not, label %.split.us, label %.preheader.split.us.split.peel.next, !llvm.loop !29

.preheader.split:                                 ; preds = %.preheader
  %.not133 = icmp eq i32 %i.b, 0                  ; 2 uses
  br i1 %.not61, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.preheader.split
  br i1 %.not133, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !10
  %i.dc = load float, ptr %1, align 4, !tbaa !10
  %i.dd = fsub float %i.db, %i.dc
  %i.de = fpext float %i.dd to double
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double 5.000000e-01, double 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.156.peel = phi double [ %i.df, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.dg = load float, ptr %2, align 4, !tbaa !10
  %i.dh = fpext float %i.dg to double
  %i.di = tail call double @llvm.fmuladd.f64(double %.156.peel, double %i.dh, double 0.000000e+00) ; 3 uses
  %i.dj = load float, ptr %3, align 4, !tbaa !10
  %i.dk = fpext float %i.dj to double
  %i.dl = fmul double %.156.peel, %i.dk           ; 2 uses
  %i.dm = fmul double %i.dl, %i.dl
  %8 = fadd double %i.dm, 0.000000e+00            ; 3 uses
  %exitcond.peel.not = icmp eq i32 %0, 1
  br i1 %exitcond.peel.not, label %.split.us.thread, label %.preheader.split.split.peel.next.preheader

.preheader.split.split.peel.next.preheader:       ; preds = %bb.r
  %i.dn = add nsw i64 %wide.trip.count119, -1     ; 3 uses
  %xtraiter = and i64 %i.dn, 1
  %i.do = icmp eq i32 %0, 2
  br i1 %i.do, label %.preheader.split.split.peel.next.epil.preheader, label %.preheader.split.split.peel.next.preheader.new

.preheader.split.split.peel.next.preheader.new:   ; preds = %.preheader.split.split.peel.next.preheader
  %unroll_iter = and i64 %i.dn, -2
  br label %.preheader.split.split.peel.next

bb.s:                                             ; preds = %.preheader.split
  br i1 %.not133, label %.thread, label %.preheader.split.split.us.peel.next

.thread:                                          ; preds = %bb.s
  %i.dp = load float, ptr %2, align 4, !tbaa !10
  %i.dq = fpext float %i.dp to double
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double 0.000000e+00, double 0.000000e+00)
  br label %.split.us.thread

.preheader.split.split.us.peel.next:              ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !10
  %i.du = load float, ptr %1, align 4, !tbaa !10
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fpext float %i.dv to double
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double 5.000000e-01, double 0.000000e+00)
  %i.dy = load float, ptr %2, align 4, !tbaa !10
  %i.dz = fpext float %i.dy to double
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dz, double 0.000000e+00) ; 2 uses
  %i.eb = add nsw i64 %wide.trip.count119, -1     ; 3 uses
  %xtraiter169 = and i64 %i.eb, 1
  %i.ec = icmp eq i32 %0, 2
  br i1 %i.ec, label %.epil.preheader, label %.preheader.split.split.us.peel.next.new

.preheader.split.split.us.peel.next.new:          ; preds = %.preheader.split.split.us.peel.next
  %unroll_iter173 = and i64 %i.eb, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader.split.split.us.peel.next.new
  %indvars.iv104 = phi i64 [ 1, %.preheader.split.split.us.peel.next.new ], [ %indvars.iv.next105.1, %bb.x ] ; 6 uses
  %.067.us72 = phi double [ %i.ea, %.preheader.split.split.us.peel.next.new ], [ %i.fk, %bb.x ]
  %niter174 = phi i64 [ 0, %.preheader.split.split.us.peel.next.new ], [ %niter174.next.1, %bb.x ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv104 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !10 ; 3 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 -4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !10
  %i.eh = fsub float %i.ee, %i.eg
  %i.ei = fpext float %i.eh to double
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv104, %i.d
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv104
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !10
  %i.eo = fsub float %i.en, %i.ee
  %i.ep = fpext float %i.eo to double
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double 5.000000e-01, double %i.ej)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.156.us77 = phi double [ %i.eq, %bb.u ], [ %i.ej, %bb.t ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.es = load float, ptr %i.er, align 4, !tbaa !10
  %i.et = fpext float %i.es to double
  %i.eu = tail call double @llvm.fmuladd.f64(double %.156.us77, double %i.et, double %.067.us72)
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next105
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !10 ; 2 uses
  %i.ex = fsub float %i.ew, %i.ee
  %i.ey = fpext float %i.ex to double
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ey, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next105, %i.d
  br i1 %i.fa, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next105
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !10
  %i.fe = fsub float %i.fd, %i.ew
  %i.ff = fpext float %i.fe to double
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double 5.000000e-01, double %i.ez)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.156.us77.1 = phi double [ %i.fg, %bb.w ], [ %i.ez, %bb.v ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next105
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !10
  %i.fj = fpext float %i.fi to double
  %i.fk = tail call double @llvm.fmuladd.f64(double %.156.us77.1, double %i.fj, double %i.eu) ; 3 uses
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %niter174.next.1 = add i64 %niter174, 2         ; 2 uses
  %niter174.ncmp.1 = icmp eq i64 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %.split.us.thread.loopexit.unr-lcssa, label %bb.t, !llvm.loop !30

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(79) @.str.2, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 100, ptr noundef nonnull @.str.3, i32 noundef %0, ptr noundef nonnull @.str.2, i32 noundef 100) #15
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %i.fl

.preheader.split.split.peel.next:                 ; preds = %bb.ad, %.preheader.split.split.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.preheader.split.split.peel.next.preheader.new ], [ %indvars.iv.next.1, %bb.ad ] ; 7 uses
  %.067 = phi double [ %i.di, %.preheader.split.split.peel.next.preheader.new ], [ %i.gz, %bb.ad ]
  %.04666 = phi double [ %8, %.preheader.split.split.peel.next.preheader.new ], [ %i.hf, %bb.ad ]
  %niter = phi i64 [ 0, %.preheader.split.split.peel.next.preheader.new ], [ %niter.next.1, %bb.ad ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !10 ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fm, i64 -4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !10
  %i.fq = fsub float %i.fn, %i.fp
  %i.fr = fpext float %i.fq to double
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fr, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.ft = icmp samesign ult i64 %indvars.iv, %i.d
  br i1 %i.ft, label %bb.ab, label %.preheader.split.split.peel.next.1

bb.ab:                                            ; preds = %.preheader.split.split.peel.next
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !10
  %i.fx = fsub float %i.fw, %i.fn
  %i.fy = fpext float %i.fx to double
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fy, double 5.000000e-01, double %i.fs)
  br label %.preheader.split.split.peel.next.1

.preheader.split.split.peel.next.1:               ; preds = %bb.ab, %.preheader.split.split.peel.next
  %.156 = phi double [ %i.fz, %bb.ab ], [ %i.fs, %.preheader.split.split.peel.next ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !10
  %i.gc = fpext float %i.gb to double
  %i.gd = tail call double @llvm.fmuladd.f64(double %.156, double %i.gc, double %.067)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !10
  %i.gg = fpext float %i.gf to double
  %i.gh = fmul double %.156, %i.gg                ; 2 uses
  %i.gi = fmul double %i.gh, %i.gh
  %i.gj = fadd double %.04666, %i.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !10 ; 2 uses
  %i.gm = fsub float %i.gl, %i.fn
  %i.gn = fpext float %i.gm to double
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.gp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.split.split.peel.next.1
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !10
  %i.gt = fsub float %i.gs, %i.gl
  %i.gu = fpext float %i.gt to double
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double 5.000000e-01, double %i.go)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.split.split.peel.next.1
  %.156.1 = phi double [ %i.gv, %bb.ac ], [ %i.go, %.preheader.split.split.peel.next.1 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !10
  %i.gy = fpext float %i.gx to double
  %i.gz = tail call double @llvm.fmuladd.f64(double %.156.1, double %i.gy, double %i.gd) ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !10
  %i.hc = fpext float %i.hb to double
  %i.hd = fmul double %.156.1, %i.hc              ; 2 uses
  %i.he = fmul double %i.hd, %i.hd
  %i.hf = fadd double %i.gj, %i.he                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.us.thread.loopexit163.unr-lcssa, label %.preheader.split.split.peel.next, !llvm.loop !31

.split.us.loopexit.unr-lcssa:                     ; preds = %._crit_edge124.1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.split.us, label %.preheader.split.us.split.us.peel.next.epil.preheader

.preheader.split.us.split.us.peel.next.epil.preheader: ; preds = %.split.us.loopexit.unr-lcssa, %.preheader.split.us.split.us.peel.next.preheader
  %indvars.iv116.epil.init = phi i64 [ 1, %.preheader.split.us.split.us.peel.next.preheader ], [ %indvars.iv.next117.1, %.split.us.loopexit.unr-lcssa ] ; 4 uses
  %.067.us.us.epil.init = phi double [ %i.ab, %.preheader.split.us.split.us.peel.next.preheader ], [ %i.br, %.split.us.loopexit.unr-lcssa ]
  %.04865.us.us.epil.init = phi i32 [ %i.ae, %.preheader.split.us.split.us.peel.next.preheader ], [ %.149.us.us.1, %.split.us.loopexit.unr-lcssa ]
  %.05362.us.us.epil.init = phi double [ %.154.us.us.peel, %.preheader.split.us.split.us.peel.next.preheader ], [ %.154.us.us.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv116.epil.init ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !10
  %i.hi = getelementptr i8, ptr %i.hg, i64 -4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !10
  %i.hk = fsub float %i.hh, %i.hj
  %i.hl = fpext float %i.hk to double
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hl, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.hn = icmp samesign ult i64 %indvars.iv116.epil.init, %i.d
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv116.epil.init ; 3 uses
  br i1 %i.hn, label %bb.ae, label %._crit_edge124.epil

._crit_edge124.epil:                              ; preds = %.preheader.split.us.split.us.peel.next.epil.preheader
  %.pre126.epil = load float, ptr %i.ho, align 4, !tbaa !10
  br label %.split.us.loopexit.epilog-lcssa

bb.ae:                                            ; preds = %.preheader.split.us.split.us.peel.next.epil.preheader
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !10
  %i.hr = load float, ptr %i.ho, align 4, !tbaa !10 ; 2 uses
  %i.hs = fsub float %i.hq, %i.hr
  %i.ht = fpext float %i.hs to double
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ht, double 5.000000e-01, double %i.hm)
  br label %.split.us.loopexit.epilog-lcssa

.split.us.loopexit.epilog-lcssa:                  ; preds = %bb.ae, %._crit_edge124.epil
  %i.hv = phi float [ %i.hr, %bb.ae ], [ %.pre126.epil, %._crit_edge124.epil ]
  %.156.us.us.epil = phi double [ %i.hu, %bb.ae ], [ %i.hm, %._crit_edge124.epil ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv116.epil.init
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !10
  %i.hy = fpext float %i.hx to double
  %i.hz = tail call double @llvm.fmuladd.f64(double %.156.us.us.epil, double %i.hy, double %.067.us.us.epil.init) ; 2 uses
  %i.ia = fcmp oge float %i.hv, %4                ; 2 uses
  %i.ib = fadd double %.05362.us.us.epil.init, %i.hz
  %.154.us.us.epil = select i1 %i.ia, double %i.ib, double %.05362.us.us.epil.init
  %i.ic = zext i1 %i.ia to i32
  %.149.us.us.epil = add nuw nsw i32 %.04865.us.us.epil.init, %i.ic
  br label %.split.us

.split.us:                                        ; preds = %bb.o, %.split.us.loopexit.epilog-lcssa, %.split.us.loopexit.unr-lcssa, %bb.f, %bb.i
  %.us-phi = phi double [ %.154.us.peel, %bb.f ], [ %.154.us.us.epil, %.split.us.loopexit.epilog-lcssa ], [ %.154.us.us.peel, %bb.i ], [ %.154.us.us.1, %.split.us.loopexit.unr-lcssa ], [ %.154.us, %bb.o ]
  %.us-phi68 = phi double [ %.152.us.peel, %bb.f ], [ 0.000000e+00, %.split.us.loopexit.epilog-lcssa ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split.us.loopexit.unr-lcssa ], [ %.152.us, %bb.o ]
  %.us-phi69 = phi i32 [ %.149.us.peel, %bb.f ], [ %.149.us.us.epil, %.split.us.loopexit.epilog-lcssa ], [ %i.ae, %bb.i ], [ %.149.us.us.1, %.split.us.loopexit.unr-lcssa ], [ %.149.us, %bb.o ] ; 2 uses
  %.us-phi70 = phi double [ %7, %bb.f ], [ 0.000000e+00, %.split.us.loopexit.epilog-lcssa ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split.us.loopexit.unr-lcssa ], [ %i.cu, %bb.o ]
  %.us-phi71 = phi double [ %i.l, %bb.f ], [ %i.hz, %.split.us.loopexit.epilog-lcssa ], [ %i.ab, %bb.i ], [ %i.br, %.split.us.loopexit.unr-lcssa ], [ %i.co, %bb.o ]
  %i.id = icmp sgt i32 %.us-phi69, 0
  br i1 %i.id, label %bb.af, label %.split.us.thread

bb.af:                                            ; preds = %.split.us
  %i.ie = uitofp nneg i32 %.us-phi69 to double
  %i.if = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = insertelement <2 x double> poison, double %.us-phi, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %.us-phi68, i64 1
  %i.ij = fdiv <2 x double> %i.ii, %i.ig          ; 2 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0
  %i.il = extractelement <2 x double> %i.ij, i64 1
  br label %bb.ai

.split.us.thread.loopexit.unr-lcssa:              ; preds = %bb.x
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.split.us.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.us.thread.loopexit.unr-lcssa, %.preheader.split.split.us.peel.next
  %indvars.iv104.epil.init = phi i64 [ 1, %.preheader.split.split.us.peel.next ], [ %indvars.iv.next105.1, %.split.us.thread.loopexit.unr-lcssa ] ; 4 uses
  %.067.us72.epil.init = phi double [ %i.ea, %.preheader.split.split.us.peel.next ], [ %i.fk, %.split.us.thread.loopexit.unr-lcssa ]
  %lcmp.mod172 = trunc i64 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv104.epil.init ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !10
  %i.io = getelementptr i8, ptr %i.im, i64 -4
  %i.ip = load float, ptr %i.io, align 4, !tbaa !10
  %i.iq = fsub float %i.in, %i.ip
  %i.ir = fpext float %i.iq to double
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ir, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.it = icmp samesign ult i64 %indvars.iv104.epil.init, %i.d
  br i1 %i.it, label %bb.ag, label %.split.us.thread.loopexit.epilog-lcssa

bb.ag:                                            ; preds = %.epil.preheader
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv104.epil.init ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !10
  %i.ix = load float, ptr %i.iu, align 4, !tbaa !10
  %i.iy = fsub float %i.iw, %i.ix
  %i.iz = fpext float %i.iy to double
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iz, double 5.000000e-01, double %i.is)
  br label %.split.us.thread.loopexit.epilog-lcssa

.split.us.thread.loopexit.epilog-lcssa:           ; preds = %bb.ag, %.epil.preheader
  %.156.us77.epil = phi double [ %i.ja, %bb.ag ], [ %i.is, %.epil.preheader ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104.epil.init
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !10
  %i.jd = fpext float %i.jc to double
  %i.je = tail call double @llvm.fmuladd.f64(double %.156.us77.epil, double %i.jd, double %.067.us72.epil.init)
  br label %.split.us.thread

.split.us.thread.loopexit163.unr-lcssa:           ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us.thread, label %.preheader.split.split.peel.next.epil.preheader

.preheader.split.split.peel.next.epil.preheader:  ; preds = %.split.us.thread.loopexit163.unr-lcssa, %.preheader.split.split.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader.split.split.peel.next.preheader ], [ %indvars.iv.next.1, %.split.us.thread.loopexit163.unr-lcssa ] ; 5 uses
  %.067.epil.init = phi double [ %i.di, %.preheader.split.split.peel.next.preheader ], [ %i.gz, %.split.us.thread.loopexit163.unr-lcssa ]
  %.04666.epil.init = phi double [ %8, %.preheader.split.split.peel.next.preheader ], [ %i.hf, %.split.us.thread.loopexit163.unr-lcssa ]
  %lcmp.mod168 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !10
  %i.jh = getelementptr i8, ptr %i.jf, i64 -4
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !10
  %i.jj = fsub float %i.jg, %i.ji
  %i.jk = fpext float %i.jj to double
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jk, double 5.000000e-01, double 0.000000e+00) ; 2 uses
  %i.jm = icmp samesign ult i64 %indvars.iv.epil.init, %i.d
  br i1 %i.jm, label %bb.ah, label %.split.us.thread.loopexit163.epilog-lcssa

bb.ah:                                            ; preds = %.preheader.split.split.peel.next.epil.preheader
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !10
  %i.jq = load float, ptr %i.jn, align 4, !tbaa !10
  %i.jr = fsub float %i.jp, %i.jq
  %i.js = fpext float %i.jr to double
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.js, double 5.000000e-01, double %i.jl)
  br label %.split.us.thread.loopexit163.epilog-lcssa

.split.us.thread.loopexit163.epilog-lcssa:        ; preds = %bb.ah, %.preheader.split.split.peel.next.epil.preheader
  %.156.epil = phi double [ %i.jt, %bb.ah ], [ %i.jl, %.preheader.split.split.peel.next.epil.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !10
  %i.jw = fpext float %i.jv to double
  %i.jx = tail call double @llvm.fmuladd.f64(double %.156.epil, double %i.jw, double %.067.epil.init)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !10
  %i.ka = fpext float %i.jz to double
  %i.kb = fmul double %.156.epil, %i.ka           ; 2 uses
  %i.kc = fmul double %i.kb, %i.kb
  %i.kd = fadd double %.04666.epil.init, %i.kc
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %.split.us.thread.loopexit163.epilog-lcssa, %.split.us.thread.loopexit163.unr-lcssa, %.split.us.thread.loopexit.epilog-lcssa, %.split.us.thread.loopexit.unr-lcssa, %bb.r, %.thread, %.split.us
  %.us-phi71144 = phi double [ %.us-phi71, %.split.us ], [ %i.je, %.split.us.thread.loopexit.epilog-lcssa ], [ %i.di, %bb.r ], [ %i.dr, %.thread ], [ %i.fk, %.split.us.thread.loopexit.unr-lcssa ], [ %i.gz, %.split.us.thread.loopexit163.unr-lcssa ], [ %i.jx, %.split.us.thread.loopexit163.epilog-lcssa ]
  %.us-phi70143 = phi double [ %.us-phi70, %.split.us ], [ 0.000000e+00, %.split.us.thread.loopexit.epilog-lcssa ], [ %8, %bb.r ], [ 0.000000e+00, %.thread ], [ 0.000000e+00, %.split.us.thread.loopexit.unr-lcssa ], [ %i.hf, %.split.us.thread.loopexit163.unr-lcssa ], [ %i.kd, %.split.us.thread.loopexit163.epilog-lcssa ]
  %i.ke = tail call double @sqrt(double noundef %.us-phi70143) #14
  br label %bb.ai

bb.ai:                                            ; preds = %.split.us.thread, %bb.af
  %storemerge.in = phi double [ %i.ke, %.split.us.thread ], [ %i.il, %bb.af ]
  %.1 = phi double [ %.us-phi71144, %.split.us.thread ], [ %i.ik, %bb.af ]
  %storemerge = fptrunc double %storemerge.in to float
  store float %storemerge, ptr %5, align 4, !tbaa !10
  %i.kf = fptrunc double %.1 to float
  ret float %i.kf
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(79) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(79) %1) #14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.b, ptr %i.a, align 8, !tbaa !33
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !18
  %i.f = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.f, ptr %i.c, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.h, ptr %i.g, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !34
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !5, i64 0}
end_hunk_0
