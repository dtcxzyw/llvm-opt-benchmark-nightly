Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dftw-generic?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fftw_ct_generic_register:bb.a
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.d) #4
  %i.e = load ptr, ptr @fftw_mksolver_ct_hook, align 8, !tbaa !41 ; 2 uses
  %.not.i2 = icmp eq ptr %i.e, null
  br i1 %.not.i2, label %regsolver.exit3, label %bb.c

bb.c:                                             ; preds = %regsolver.exit
  %i.f = tail call ptr %i.e(i64 noundef 48, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @mkcldw, ptr noundef null) #4, !inline_history !40
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.f) #4
  br label %regsolver.exit3

regsolver.exit3:                                  ; preds = %regsolver.exit, %bb.c
  ret void
}

declare ptr @fftw_mksolver_ct(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkcldw(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #0 {
bb.a:
  %i.a = icmp eq i64 %2, %3
  %i.b = icmp eq i64 %7, %8
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %applicable.exit, label %applicable.exit.thread

applicable.exit:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 212
  %i.d = load i64, ptr %i.c, align 4
  %i.e = and i64 %i.d, 8
  %.not.i.not = icmp eq i64 %i.e, 0
  br i1 %.not.i.not, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %applicable.exit
  %i.f = mul nsw i64 %9, %5                       ; 2 uses
  %i.g = tail call ptr @fftw_mktensor_1d(i64 noundef %1, i64 noundef %2, i64 noundef %2) #4
  %i.h = tail call ptr @fftw_mktensor_2d(i64 noundef %10, i64 noundef %5, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %7) #4
  %i.i = getelementptr inbounds [8 x i8], ptr %11, i64 %i.f ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %12, i64 %i.f ; 2 uses
  %i.k = tail call ptr @fftw_mkproblem_dft_d(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.i, ptr noundef %i.j) #4
  %i.l = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %13, ptr noundef %i.k) #4 ; 3 uses
  %.not66 = icmp eq ptr %i.l, null
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44
  %i.o = icmp eq i32 %i.n, 1
  %i.p = select i1 %i.o, ptr @apply_dit, ptr @apply_dif
  %i.q = tail call ptr @fftw_mkplan_dftw(i64 noundef 160, ptr noundef nonnull @mkcldw.padt, ptr noundef nonnull %i.p) #4 ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store ptr %0, ptr %i.r, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store ptr %i.l, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %1, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 %2, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i64 %4, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i64 %5, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i64 %6, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store i64 %7, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i64 %9, ptr %i.z, align 8, !tbaa !28
  %i.aa = add nsw i64 %10, %9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !29
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store ptr null, ptr %i.ae, align 8, !tbaa !31
  %i.af = add nsw i64 %1, -1
  %i.ag = add nsw i64 %10, -1
  %i.ah = mul i64 %6, %i.af
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = sitofp i64 %i.ai to double              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !tbaa.struct !46
  %i.am = load <2 x double>, ptr %i.ak, align 8, !tbaa !32
  %i.an = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> <double 4.000000e+00, double 8.000000e+00>, <2 x double> %i.am)
  store <2 x double> %i.ap, ptr %i.ak, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !47
  %i.as = tail call double @llvm.fmuladd.f64(double %i.aj, double 8.000000e+00, double %i.ar)
  store double %i.as, ptr %i.aq, align 8, !tbaa !47
  br label %applicable.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @fftw_plan_destroy_internal(ptr noundef null) #4
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.a, %applicable.exit, %bb.d, %bb.c
  %.0 = phi ptr [ %i.q, %bb.c ], [ null, %bb.d ], [ null, %applicable.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = mul nsw i64 %i.g, %i.e
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull @mktwiddle.tw, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %i.e) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp eq i32 %i.c, 1
  %i.e = select i1 %i.d, ptr @.str.1, ptr @.str.2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.e, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.k, ptr noundef %i.m) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  ret void
}

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_dft_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_2d(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_dftw(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_dit(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 5 uses
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.d, i64 1) ; 10 uses
  %i.s = icmp sgt i64 %i.l, 0
  br i1 %i.s, label %.preheader58.lr.ph.i, label %bytwiddle.exit

.preheader58.lr.ph.i:                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24   ; 6 uses
  %i.v = icmp slt i64 %i.f, 2
  %i.w = icmp sge i64 %i.r, %i.j
  %i.x = shl i64 %i.u, 1
  %i.y = add i64 %i.x, -2
  %brmerge.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %brmerge.i, label %bytwiddle.exit, label %.preheader58.i.preheader

.preheader58.i.preheader:                         ; preds = %.preheader58.lr.ph.i
  %i.z = xor i64 %i.r, -1
  %i.aa = add i64 %i.j, %i.z                      ; 2 uses
  %i.ab = shl i64 %i.u, 4
  %i.ac = add i64 %i.u, %i.r
  %i.ad = shl i64 %i.ac, 4                        ; 2 uses
  %i.ae = add i64 %i.ab, -16
  %3 = shl i64 %i.h, 3                            ; 3 uses
  %i.af = add i64 %i.h, %i.r
  %i.ag = shl i64 %i.af, 3
  %i.ah = shl i64 %i.n, 3
  %i.ai = add nsw i64 %i.f, -2                    ; 2 uses
  %i.aj = mul i64 %i.h, %i.ai
  %i.ak = add i64 %i.h, %i.j
  %i.al = add i64 %i.aj, %i.ak
  %i.am = shl i64 %i.al, 3
  %i.an = shl i64 %i.u, 4
  %i.ao = add i64 %i.u, %i.r
  %i.ap = shl i64 %i.ao, 4
  %i.aq = getelementptr i8, ptr %i.q, i64 %i.ap
  %scevgep26 = getelementptr i8, ptr %i.aq, i64 -32 ; 2 uses
  %i.ar = add i64 %i.an, -16                      ; 3 uses
  %i.as = mul i64 %i.ai, %i.ar
  %i.at = add i64 %i.u, %i.j
  %i.au = shl i64 %i.at, 4
  %i.av = getelementptr i8, ptr %i.q, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  %scevgep27 = getelementptr i8, ptr %i.aw, i64 -32 ; 2 uses
  %i.ax = sub i64 %i.j, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 12
  %i.ay = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.bb = getelementptr i8, ptr %i.ba, i64 -32
  %ident.check = icmp ne i64 %i.b, 1
  %mul.result = shl i64 %i.aa, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aa, 1152921504606846975
  %stride.check = icmp slt i64 %3, 0
  %4 = or i64 %i.ar, %3
  %5 = icmp slt i64 %4, 0
  %6 = or i64 %i.ar, %3
  %i.bc = icmp slt i64 %6, 0
  %n.vec = and i64 %i.ax, -2                      ; 3 uses
  %i.bd = add i64 %i.r, %n.vec
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.preheader58.i.preheader, %._crit_edge65.i
  %.069.i = phi ptr [ %i.et, %._crit_edge65.i ], [ %1, %.preheader58.i.preheader ] ; 2 uses
  %.05467.i = phi ptr [ %i.eu, %._crit_edge65.i ], [ %2, %.preheader58.i.preheader ] ; 2 uses
  %.05566.i = phi i64 [ %i.ev, %._crit_edge65.i ], [ 0, %.preheader58.i.preheader ] ; 2 uses
  %i.be = mul i64 %i.ah, %.05566.i                ; 2 uses
  %i.bf = add i64 %i.ag, %i.be                    ; 2 uses
  %scevgep22 = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  %i.bg = add i64 %i.am, %i.be                    ; 2 uses
  %scevgep23 = getelementptr i8, ptr %1, i64 %i.bg ; 2 uses
  %scevgep24 = getelementptr i8, ptr %2, i64 %i.bf ; 2 uses
  %scevgep25 = getelementptr i8, ptr %2, i64 %i.bg ; 2 uses
  %bound0 = icmp ult ptr %scevgep22, %scevgep25
  %bound1 = icmp ult ptr %scevgep24, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %i.bh = or i1 %found.conflict, %stride.check
  %bound029 = icmp ult ptr %scevgep22, %scevgep27
  %bound130 = icmp ult ptr %scevgep26, %scevgep23
  %found.conflict31 = and i1 %bound029, %bound130
  %i.bi = or i1 %found.conflict31, %5
  %conflict.rdx = or i1 %i.bh, %i.bi
  %bound034 = icmp ult ptr %scevgep24, %scevgep27
  %bound135 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict36 = and i1 %bound034, %bound135
  %7 = or i1 %found.conflict36, %i.bc
  %conflict.rdx39 = or i1 %conflict.rdx, %7
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader58.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader58.i ] ; 2 uses
  %.05664.i = phi i64 [ %i.es, %._crit_edge.i ], [ 1, %.preheader58.i ] ; 3 uses
  %i.bj = mul nsw i64 %.05664.i, %i.h             ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.069.i, i64 %i.bj ; 4 uses
  %invariant.gep60.i = getelementptr [8 x i8], ptr %.05467.i, i64 %i.bj ; 4 uses
  %i.bk = mul nsw i64 %.05664.i, %i.y
  %invariant.gep62.i = getelementptr [8 x i8], ptr %i.q, i64 %i.bk ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.bl = mul i64 %i.ae, %indvar                  ; 2 uses
  %scevgep21 = getelementptr i8, ptr %i.az, i64 %i.bl ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bn = icmp ult ptr %i.bm, %scevgep
  %i.bo = getelementptr i8, ptr %scevgep21, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %scevgep21
  %i.bq = or i1 %i.bp, %mul.overflow
  %i.br = or i1 %i.bn, %ident.check
  %i.bs = or i1 %i.br, %i.bq
  %brmerge = select i1 %i.bs, i1 true, i1 %conflict.rdx39
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bt = add i64 %i.r, %index                    ; 3 uses
  %i.bu = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.bt ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bu, align 8, !tbaa !32, !alias.scope !56, !noalias !57 ; 2 uses
  %wide.load40 = load <2 x double>, ptr %i.bv, align 8, !tbaa !32, !alias.scope !58, !noalias !59 ; 2 uses
  %i.bw = shl i64 %i.bt, 4
  %i.bx = getelementptr i8, ptr %invariant.gep62.i, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -16
  %wide.vec = load <4 x double>, ptr %i.by, align 8, !tbaa !32, !alias.scope !59 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec41 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bz = fmul <2 x double> %wide.load40, %strided.vec41
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %strided.vec, <2 x double> %i.bz)
  store <2 x double> %i.ca, ptr %i.bu, align 8, !tbaa !32, !alias.scope !56, !noalias !57
  %i.cb = fneg <2 x double> %strided.vec41
  %i.cc = fmul <2 x double> %wide.load, %i.cb
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load40, <2 x double> %strided.vec, <2 x double> %i.cc)
  store <2 x double> %i.cd, ptr %i.bv, align 8, !tbaa !32, !alias.scope !58, !noalias !59
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i, %middle.block
  %.05759.i.ph = phi i64 [ %i.bd, %middle.block ], [ %i.r, %vector.scevcheck ], [ %i.r, %.preheader.i ] ; 6 uses
  %i.cf = sub i64 %i.j, %.05759.i.ph
  %.neg = add i64 %.05759.i.ph, 1
  %xtraiter = and i64 %i.cf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cg = mul nsw i64 %.05759.i.ph, %i.b          ; 2 uses
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cg ; 2 uses
  %gep61.i.prol = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.cg ; 2 uses
  %i.ch = load double, ptr %gep.i.prol, align 8, !tbaa !32 ; 2 uses
  %i.ci = load double, ptr %gep61.i.prol, align 8, !tbaa !32 ; 2 uses
  %.idx.i.prol = shl i64 %.05759.i.ph, 4
  %gep63.i.prol = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.prol ; 2 uses
  %i.cj = getelementptr i8, ptr %gep63.i.prol, i64 -16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !32
  %i.cl = getelementptr i8, ptr %gep63.i.prol, i64 -8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !32 ; 2 uses
  %i.cn = fneg double %i.cm
  %i.co = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.ci, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cm, i64 1
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.ch, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.cs) ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 1
  store double %i.cy, ptr %gep.i.prol, align 8, !tbaa !32
  %i.cz = extractelement <2 x double> %i.cx, i64 0
  store double %i.cz, ptr %gep61.i.prol, align 8, !tbaa !32
  %i.da = add nsw i64 %.05759.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05759.i.unr = phi i64 [ %.05759.i.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = icmp eq i64 %i.j, %.neg
  br i1 %i.db, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05759.i = phi i64 [ %i.er, %scalar.ph ], [ %.05759.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dc = mul nsw i64 %.05759.i, %i.b             ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dc ; 2 uses
  %gep61.i = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.dc ; 2 uses
  %i.dd = load double, ptr %gep.i, align 8, !tbaa !32 ; 2 uses
  %i.de = load double, ptr %gep61.i, align 8, !tbaa !32 ; 2 uses
  %.idx.i = shl i64 %.05759.i, 4
  %gep63.i = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i ; 2 uses
  %i.df = getelementptr i8, ptr %gep63.i, i64 -16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !32
  %i.dh = getelementptr i8, ptr %gep63.i, i64 -8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !32 ; 2 uses
  %i.dj = fneg double %i.di
  %i.dk = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.de, i64 1
  %i.dm = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.di, i64 1
  %i.do = fmul <2 x double> %i.dl, %i.dn
  %i.dp = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.dd, i64 1
  %i.dr = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.ds, <2 x double> %i.do) ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1
  store double %i.du, ptr %gep.i, align 8, !tbaa !32
  %i.dv = extractelement <2 x double> %i.dt, i64 0
  store double %i.dv, ptr %gep61.i, align 8, !tbaa !32
  %i.dw = add nsw i64 %.05759.i, 1                ; 2 uses
  %i.dx = mul nsw i64 %i.dw, %i.b                 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dx ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.dx ; 2 uses
  %i.dy = load double, ptr %gep.i.1, align 8, !tbaa !32 ; 2 uses
  %i.dz = load double, ptr %gep61.i.1, align 8, !tbaa !32 ; 2 uses
  %.idx.i.1 = shl i64 %i.dw, 4
  %gep63.i.1 = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.1 ; 2 uses
  %i.ea = getelementptr i8, ptr %gep63.i.1, i64 -16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !32
  %i.ec = getelementptr i8, ptr %gep63.i.1, i64 -8
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !32 ; 2 uses
  %i.ee = fneg double %i.ed
  %i.ef = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.dz, i64 1
  %i.eh = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ed, i64 1
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.dy, i64 1
  %i.em = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.en, <2 x double> %i.ej) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 1
  store double %i.ep, ptr %gep.i.1, align 8, !tbaa !32
  %i.eq = extractelement <2 x double> %i.eo, i64 0
  store double %i.eq, ptr %gep61.i.1, align 8, !tbaa !32
  %i.er = add nsw i64 %.05759.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.er, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !55

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.es = add nuw nsw i64 %.05664.i, 1            ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.es, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond74.not.i, label %._crit_edge65.i, label %.preheader.i, !llvm.loop !0

._crit_edge65.i:                                  ; preds = %._crit_edge.i
  %i.et = getelementptr inbounds [8 x i8], ptr %.069.i, i64 %i.n
  %i.eu = getelementptr inbounds [8 x i8], ptr %.05467.i, i64 %i.n
  %i.ev = add nuw nsw i64 %.05566.i, 1            ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ev, %i.l
  br i1 %exitcond75.not.i, label %bytwiddle.exit, label %.preheader58.i, !llvm.loop !1

bytwiddle.exit:                                   ; preds = %._crit_edge65.i, %bb.a, %.preheader58.lr.ph.i
  %i.ew = mul nsw i64 %i.d, %i.b                  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !21 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !39
  %i.fb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ew ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ew ; 2 uses
  tail call void %i.fa(ptr noundef %i.ey, ptr noundef %i.fb, ptr noundef %i.fc, ptr noundef %i.fb, ptr noundef %i.fc) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_dif(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = mul nsw i64 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void %i.i(ptr noundef %i.g, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.j, ptr noundef %i.k) #4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 5 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29   ; 8 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 5 uses
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1) ; 10 uses
  %i.ab = icmp sgt i64 %i.u, 0
  br i1 %i.ab, label %.preheader58.lr.ph.i, label %bytwiddle.exit

.preheader58.lr.ph.i:                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24 ; 6 uses
  %i.ae = icmp slt i64 %i.m, 2
  %i.af = icmp sge i64 %i.aa, %i.r
  %i.ag = shl i64 %i.ad, 1
  %i.ah = add i64 %i.ag, -2
  %brmerge.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %brmerge.i, label %bytwiddle.exit, label %.preheader58.i.preheader

.preheader58.i.preheader:                         ; preds = %.preheader58.lr.ph.i
  %i.ai = xor i64 %i.aa, -1
  %i.aj = add i64 %i.r, %i.ai                     ; 2 uses
  %i.ak = shl i64 %i.ad, 4
  %i.al = add i64 %i.ad, %i.aa
  %i.am = shl i64 %i.al, 4                        ; 2 uses
  %i.an = add i64 %i.ak, -16
  %3 = shl i64 %i.o, 3                            ; 3 uses
  %i.ao = add i64 %i.o, %i.aa
  %i.ap = shl i64 %i.ao, 3
  %i.aq = shl i64 %i.w, 3
  %i.ar = add nsw i64 %i.m, -2                    ; 2 uses
  %i.as = mul i64 %i.o, %i.ar
  %i.at = add i64 %i.o, %i.r
  %i.au = add i64 %i.as, %i.at
  %i.av = shl i64 %i.au, 3
  %i.aw = shl i64 %i.ad, 4
  %i.ax = add i64 %i.ad, %i.aa
  %i.ay = shl i64 %i.ax, 4
  %i.az = getelementptr i8, ptr %i.z, i64 %i.ay
  %scevgep26 = getelementptr i8, ptr %i.az, i64 -32 ; 2 uses
  %i.ba = add i64 %i.aw, -16                      ; 3 uses
  %i.bb = mul i64 %i.ar, %i.ba
  %i.bc = add i64 %i.ad, %i.r
  %i.bd = shl i64 %i.bc, 4
  %i.be = getelementptr i8, ptr %i.z, i64 %i.bb
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bd
  %scevgep27 = getelementptr i8, ptr %i.bf, i64 -32 ; 2 uses
  %i.bg = sub i64 %i.r, %i.aa                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bg, 12
  %i.bh = getelementptr i8, ptr %i.z, i64 %i.am
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = getelementptr i8, ptr %i.z, i64 %i.am
  %i.bk = getelementptr i8, ptr %i.bj, i64 -32
  %ident.check = icmp ne i64 %i.s, 1
  %mul.result = shl i64 %i.aj, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aj, 1152921504606846975
  %stride.check = icmp slt i64 %3, 0
  %4 = or i64 %i.ba, %3
  %5 = icmp slt i64 %4, 0
  %6 = or i64 %i.ba, %3
  %i.bl = icmp slt i64 %6, 0
  %n.vec = and i64 %i.bg, -2                      ; 3 uses
  %i.bm = add i64 %i.aa, %n.vec
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.preheader58.i.preheader, %._crit_edge65.i
  %.069.i = phi ptr [ %i.fc, %._crit_edge65.i ], [ %1, %.preheader58.i.preheader ] ; 2 uses
  %.05467.i = phi ptr [ %i.fd, %._crit_edge65.i ], [ %2, %.preheader58.i.preheader ] ; 2 uses
  %.05566.i = phi i64 [ %i.fe, %._crit_edge65.i ], [ 0, %.preheader58.i.preheader ] ; 2 uses
  %i.bn = mul i64 %i.aq, %.05566.i                ; 2 uses
  %i.bo = add i64 %i.ap, %i.bn                    ; 2 uses
  %scevgep22 = getelementptr i8, ptr %1, i64 %i.bo ; 2 uses
  %i.bp = add i64 %i.av, %i.bn                    ; 2 uses
  %scevgep23 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %scevgep24 = getelementptr i8, ptr %2, i64 %i.bo ; 2 uses
  %scevgep25 = getelementptr i8, ptr %2, i64 %i.bp ; 2 uses
  %bound0 = icmp ult ptr %scevgep22, %scevgep25
  %bound1 = icmp ult ptr %scevgep24, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %i.bq = or i1 %found.conflict, %stride.check
  %bound029 = icmp ult ptr %scevgep22, %scevgep27
  %bound130 = icmp ult ptr %scevgep26, %scevgep23
  %found.conflict31 = and i1 %bound029, %bound130
  %i.br = or i1 %found.conflict31, %5
  %conflict.rdx = or i1 %i.bq, %i.br
  %bound034 = icmp ult ptr %scevgep24, %scevgep27
  %bound135 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict36 = and i1 %bound034, %bound135
  %7 = or i1 %found.conflict36, %i.bl
  %conflict.rdx39 = or i1 %conflict.rdx, %7
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader58.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader58.i ] ; 2 uses
  %.05664.i = phi i64 [ %i.fb, %._crit_edge.i ], [ 1, %.preheader58.i ] ; 3 uses
  %i.bs = mul nsw i64 %.05664.i, %i.o             ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.069.i, i64 %i.bs ; 4 uses
  %invariant.gep60.i = getelementptr [8 x i8], ptr %.05467.i, i64 %i.bs ; 4 uses
  %i.bt = mul nsw i64 %.05664.i, %i.ah
  %invariant.gep62.i = getelementptr [8 x i8], ptr %i.z, i64 %i.bt ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.bu = mul i64 %i.an, %indvar                  ; 2 uses
  %scevgep21 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bw = icmp ult ptr %i.bv, %scevgep
  %i.bx = getelementptr i8, ptr %scevgep21, i64 %mul.result
  %i.by = icmp ult ptr %i.bx, %scevgep21
  %i.bz = or i1 %i.by, %mul.overflow
  %i.ca = or i1 %i.bw, %ident.check
  %i.cb = or i1 %i.ca, %i.bz
  %brmerge = select i1 %i.cb, i1 true, i1 %conflict.rdx39
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.cc = add i64 %i.aa, %index                   ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cc ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.cc ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !32, !alias.scope !66, !noalias !67 ; 2 uses
  %wide.load40 = load <2 x double>, ptr %i.ce, align 8, !tbaa !32, !alias.scope !68, !noalias !69 ; 2 uses
  %i.cf = shl i64 %i.cc, 4
  %i.cg = getelementptr i8, ptr %invariant.gep62.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16
  %wide.vec = load <4 x double>, ptr %i.ch, align 8, !tbaa !32, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec41 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ci = fmul <2 x double> %wide.load40, %strided.vec41
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %strided.vec, <2 x double> %i.ci)
  store <2 x double> %i.cj, ptr %i.cd, align 8, !tbaa !32, !alias.scope !66, !noalias !67
  %i.ck = fneg <2 x double> %strided.vec41
  %i.cl = fmul <2 x double> %wide.load, %i.ck
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load40, <2 x double> %strided.vec, <2 x double> %i.cl)
  store <2 x double> %i.cm, ptr %i.ce, align 8, !tbaa !32, !alias.scope !68, !noalias !69
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i, %middle.block
  %.05759.i.ph = phi i64 [ %i.bm, %middle.block ], [ %i.aa, %vector.scevcheck ], [ %i.aa, %.preheader.i ] ; 6 uses
  %i.co = sub i64 %i.r, %.05759.i.ph
  %.neg = add i64 %.05759.i.ph, 1
  %xtraiter = and i64 %i.co, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cp = mul nsw i64 %.05759.i.ph, %i.s          ; 2 uses
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cp ; 2 uses
  %gep61.i.prol = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.cp ; 2 uses
  %i.cq = load double, ptr %gep.i.prol, align 8, !tbaa !32 ; 2 uses
  %i.cr = load double, ptr %gep61.i.prol, align 8, !tbaa !32 ; 2 uses
  %.idx.i.prol = shl i64 %.05759.i.ph, 4
  %gep63.i.prol = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.prol ; 2 uses
  %i.cs = getelementptr i8, ptr %gep63.i.prol, i64 -16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !32
  %i.cu = getelementptr i8, ptr %gep63.i.prol, i64 -8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !32 ; 2 uses
  %i.cw = fneg double %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cr, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cv, i64 1
  %i.db = fmul <2 x double> %i.cy, %i.da
  %i.dc = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cq, i64 1
  %i.de = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.df, <2 x double> %i.db) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 1
  store double %i.dh, ptr %gep.i.prol, align 8, !tbaa !32
  %i.di = extractelement <2 x double> %i.dg, i64 0
  store double %i.di, ptr %gep61.i.prol, align 8, !tbaa !32
  %i.dj = add nsw i64 %.05759.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05759.i.unr = phi i64 [ %.05759.i.ph, %scalar.ph.preheader ], [ %i.dj, %scalar.ph.prol ]
  %i.dk = icmp eq i64 %i.r, %.neg
  br i1 %i.dk, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05759.i = phi i64 [ %i.fa, %scalar.ph ], [ %.05759.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dl = mul nsw i64 %.05759.i, %i.s             ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dl ; 2 uses
  %gep61.i = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.dl ; 2 uses
  %i.dm = load double, ptr %gep.i, align 8, !tbaa !32 ; 2 uses
  %i.dn = load double, ptr %gep61.i, align 8, !tbaa !32 ; 2 uses
  %.idx.i = shl i64 %.05759.i, 4
  %gep63.i = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i ; 2 uses
  %i.do = getelementptr i8, ptr %gep63.i, i64 -16
  %i.dp = load double, ptr %i.do, align 8, !tbaa !32
  %i.dq = getelementptr i8, ptr %gep63.i, i64 -8
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !32 ; 2 uses
  %i.ds = fneg double %i.dr
  %i.dt = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dn, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dr, i64 1
  %i.dx = fmul <2 x double> %i.du, %i.dw
  %i.dy = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dm, i64 1
  %i.ea = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.eb, <2 x double> %i.dx) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 1
  store double %i.ed, ptr %gep.i, align 8, !tbaa !32
  %i.ee = extractelement <2 x double> %i.ec, i64 0
  store double %i.ee, ptr %gep61.i, align 8, !tbaa !32
  %i.ef = add nsw i64 %.05759.i, 1                ; 2 uses
  %i.eg = mul nsw i64 %i.ef, %i.s                 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.eg ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.eg ; 2 uses
  %i.eh = load double, ptr %gep.i.1, align 8, !tbaa !32 ; 2 uses
  %i.ei = load double, ptr %gep61.i.1, align 8, !tbaa !32 ; 2 uses
  %.idx.i.1 = shl i64 %i.ef, 4
  %gep63.i.1 = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.1 ; 2 uses
  %i.ej = getelementptr i8, ptr %gep63.i.1, i64 -16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !32
  %i.el = getelementptr i8, ptr %gep63.i.1, i64 -8
  %i.em = load double, ptr %i.el, align 8, !tbaa !32 ; 2 uses
  %i.en = fneg double %i.em
  %i.eo = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.ei, i64 1
  %i.eq = insertelement <2 x double> poison, double %i.en, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.em, i64 1
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.eh, i64 1
  %i.ev = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ew, <2 x double> %i.es) ; 2 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 1
  store double %i.ey, ptr %gep.i.1, align 8, !tbaa !32
  %i.ez = extractelement <2 x double> %i.ex, i64 0
  store double %i.ez, ptr %gep61.i.1, align 8, !tbaa !32
  %i.fa = add nsw i64 %.05759.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.fa, %i.r
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !65

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fb = add nuw nsw i64 %.05664.i, 1            ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.fb, %i.m
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond74.not.i, label %._crit_edge65.i, label %.preheader.i, !llvm.loop !0

._crit_edge65.i:                                  ; preds = %._crit_edge.i
  %i.fc = getelementptr inbounds [8 x i8], ptr %.069.i, i64 %i.w
  %i.fd = getelementptr inbounds [8 x i8], ptr %.05467.i, i64 %i.w
  %i.fe = add nuw nsw i64 %.05566.i, 1            ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.fe, %i.u
  br i1 %exitcond75.not.i, label %bytwiddle.exit, label %.preheader58.i, !llvm.loop !1

bytwiddle.exit:                                   ; preds = %._crit_edge65.i, %bb.a, %.preheader58.lr.ph.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_twiddle_awake(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

end_hunk_0
