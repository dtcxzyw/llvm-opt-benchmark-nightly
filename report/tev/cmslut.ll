Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmslut?download=true
inline.NumInlined: 60
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@cmsStageAllocMatrix:bb.a
  br i1 %.not.i, label %cmsStageFree.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.bv(ptr noundef nonnull %i.i) #17, !inline_history !50
  br label %cmsStageFree.exit

cmsStageFree.exit:                                ; preds = %bb.i, %bb.j
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.bw, ptr noundef nonnull %i.i) #17
  br label %_cmsStageAllocPlaceholder.exit.thread

_cmsStageAllocPlaceholder.exit.thread:            ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block84, %bb.e, %.loopexit, %bb.d, %bb.c, %bb.b, %bb.a, %cmsStageFree.exit
  %.044 = phi ptr [ %i.i, %.loopexit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %cmsStageFree.exit ], [ null, %bb.e ], [ %i.i, %middle.block84 ], [ %i.i, %.preheader ], [ %i.i, %.preheader.prol.loopexit ]
  ret ptr %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @EvaluateMatrix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 4 uses
  %.not31 = icmp eq i32 %i.d, 0
  br i1 %.not31, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 8 uses
  %.not32 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not32, label %.preheader.lr.ph.split, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !43   ; 6 uses
  %wide.trip.count51 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count46 = zext i32 %i.f to i64       ; 4 uses
  br i1 %.not, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count46, 1
  %i.j = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count46, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod75 = trunc i32 %i.f to i1
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %xtraiter77 = and i64 %wide.trip.count46, 1
  %i.k = icmp eq i32 %i.f, 1
  %unroll_iter81 = and i64 %wide.trip.count46, 4294967294
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  %lcmp.mod80 = trunc i32 %i.f to i1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %._crit_edge.us.us ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %i.l = trunc nuw i64 %indvars.iv48 to i32
  %i.m = mul i32 %i.f, %i.l                       ; 3 uses
  br i1 %i.k, label %.epil.preheader76, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 4 uses
  %.025.us.us = phi double [ %i.ae, %.preheader.us.us.new ], [ 0.000000e+00, %.preheader.us.us ]
  %niter82 = phi i64 [ %niter82.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.o = load float, ptr %i.n, align 4, !tbaa !40
  %i.p = fpext float %i.o to double
  %i.q = trunc nuw i64 %indvars.iv43 to i32
  %i.r = add i32 %i.m, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !45
  %i.v = tail call double @llvm.fmuladd.f64(double %i.p, double %i.u, double %.025.us.us)
  %indvars.iv.next44 = or disjoint i64 %indvars.iv43, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next44
  %i.x = load float, ptr %i.w, align 4, !tbaa !40
  %i.y = fpext float %i.x to double
  %i.z = trunc nuw i64 %indvars.iv.next44 to i32
  %i.aa = add i32 %i.m, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !45
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ad, double %i.v) ; 3 uses
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %niter82.next.1 = add i64 %niter82, 2           ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !92

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod78.not, label %._crit_edge.us.us, label %.epil.preheader76

.epil.preheader76:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv43.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next44.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.025.us.us.epil.init = phi double [ 0.000000e+00, %.preheader.us.us ], [ %i.ae, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43.epil.init
  %i.ag = load float, ptr %i.af, align 4, !tbaa !40
  %i.ah = fpext float %i.ag to double
  %i.ai = trunc nuw i64 %indvars.iv43.epil.init to i32
  %i.aj = add i32 %i.m, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !45
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.am, double %.025.us.us.epil.init)
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader76
  %.lcssa = phi double [ %i.ae, %._crit_edge.us.us.unr-lcssa ], [ %i.an, %.epil.preheader76 ]
  %i.ao = fptrunc double %.lcssa to float
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv48
  store float %i.ao, ptr %i.ap, align 4, !tbaa !40
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %._crit_edge27, label %.preheader.us.us, !llvm.loop !93

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.aq = trunc nuw i64 %indvars.iv38 to i32
  %i.ar = mul i32 %i.f, %i.aq                     ; 3 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %.025.us = phi double [ %i.bj, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !40
  %i.au = fpext float %i.at to double
  %i.av = trunc nuw i64 %indvars.iv to i32
  %i.aw = add i32 %i.ar, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !45
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.au, double %i.az, double %.025.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !40
  %i.bd = fpext float %i.bc to double
  %i.be = trunc nuw i64 %indvars.iv.next to i32
  %i.bf = add i32 %i.ar, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !45
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bi, double %i.ba) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !92

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.025.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.bj, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !40
  %i.bm = fpext float %i.bl to double
  %i.bn = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.bo = add i32 %i.ar, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !45
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.br, double %.025.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa73 = phi double [ %i.bj, %._crit_edge.us.unr-lcssa ], [ %i.bs, %.epil.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv38
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !45
  %i.bv = fadd double %.lcssa73, %i.bu
  %i.bw = fptrunc double %i.bv to float
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv38
  store float %i.bw, ptr %i.bx, align 4, !tbaa !40
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count51
  br i1 %exitcond42.not, label %._crit_edge27, label %.preheader.us, !llvm.loop !93

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.by = zext i32 %i.d to i64                    ; 4 uses
  br i1 %.not, label %.preheader.us28.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.preheader.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.by, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <2 x double>, ptr %i.bz, align 8, !tbaa !45
  %wide.load69 = load <2 x double>, ptr %i.ca, align 8, !tbaa !45
  %3 = fadd <2 x double> %wide.load, zeroinitializer
  %4 = fadd <2 x double> %wide.load69, zeroinitializer
  %5 = fptrunc <2 x double> %3 to <2 x float>
  %6 = fptrunc <2 x double> %4 to <2 x float>
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %5, ptr %7, align 4, !tbaa !40
  store <2 x float> %6, ptr %8, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.by
  br i1 %cmp.n, label %._crit_edge27, label %.preheader.preheader70

.preheader.preheader70:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv53.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader.us28.preheader:                        ; preds = %.preheader.lr.ph.split
  %i.cc = shl nuw nsw i64 %i.by, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.cc, i1 false), !tbaa !40
  br label %._crit_edge27

.preheader:                                       ; preds = %.preheader.preheader70, %.preheader
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.preheader ], [ %indvars.iv53.ph, %.preheader.preheader70 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv53
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !45
  %i.cf = fadd double %i.ce, 0.000000e+00
  %i.cg = fptrunc double %i.cf to float
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53
  store float %i.cg, ptr %i.ch, align 4, !tbaa !40
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %i.by
  br i1 %exitcond57.not, label %._crit_edge27, label %.preheader, !llvm.loop !95

._crit_edge27:                                    ; preds = %._crit_edge.us, %._crit_edge.us.us, %.preheader, %middle.block, %.preheader.us28.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @MatrixElemDup(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = tail call ptr @_cmsMallocZero(ptr noundef %i.c, i32 noundef 16) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = shl i32 %i.g, 3
  %i.m = mul i32 %i.l, %i.i
  %i.n = tail call ptr @_cmsDupMem(ptr noundef %i.j, ptr noundef %i.k, i32 noundef %i.m) #17
  store ptr %i.n, ptr %i.d, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !19
  %i.r = load i32, ptr %i.h, align 4, !tbaa !23
  %i.s = shl i32 %i.r, 3
  %i.t = tail call ptr @_cmsDupMem(ptr noundef %i.q, ptr noundef nonnull %i.p, i32 noundef %i.s) #17
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal void @MatrixElemTypeFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.e, ptr noundef nonnull %i.d) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.h, ptr noundef nonnull %i.g) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !27
  tail call void @_cmsFree(ptr noundef %i.i, ptr noundef %i.j) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @cmsStageAllocCLut16bitGranular(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %2, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef 15) #17
  br label %_cmsStageAllocPlaceholder.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 64) #17 ; 23 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_cmsStageAllocPlaceholder.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1668052340, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1668052340, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %2, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %3, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @EvaluateCLUTfloatIn16, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @CLUTElemDup, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  store ptr @CLutElemTypeFree, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !27
  %i.l = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 24) #17 ; 14 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %cmsStageFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.n(ptr noundef nonnull %i.b) #17, !inline_history !50
  br label %cmsStageFree.exit

cmsStageFree.exit:                                ; preds = %bb.e, %bb.f
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.o, ptr noundef nonnull %i.b) #17
  br label %_cmsStageAllocPlaceholder.exit.thread

bb.g:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.k, align 8, !tbaa !27
  %.not16.i = icmp eq i32 %2, 0
  br i1 %.not16.i, label %CubeSize.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.p = zext nneg i32 %2 to i64
  br label %.lr.ph.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.q = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.018.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.v, %bb.h ]
  %i.r = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !30
  %.fr23.i = freeze i32 %i.t                      ; 3 uses
  %i.u = icmp ult i32 %.fr23.i, 2
  br i1 %i.u, label %CubeSize.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.v = mul i32 %.fr23.i, %.018.i                ; 4 uses
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.fr23.i, i32 %i.v)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %CubeSize.exit.thread, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h
  %i.w = icmp ugt i32 %i.v, 286331153
  %spec.select.i = select i1 %i.w, i32 0, i32 %i.v
  %i.x = mul i32 %spec.select.i, %3
  br label %CubeSize.exit

CubeSize.exit.thread:                             ; preds = %bb.i, %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
end_hunk_0
