Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dftw-generic?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fftw_ct_generic_register
define dso_local void @fftw_ct_generic_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver_ct(i64 noundef 48, i64 noundef 0, i32 noundef 1, ptr noundef nonnull @mkcldw, ptr noundef null) #4
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #4
  %i.b = load ptr, ptr @fftw_mksolver_ct_hook, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %regsolver.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr %i.b(i64 noundef 48, i64 noundef 0, i32 noundef 1, ptr noundef nonnull @mkcldw, ptr noundef null) #4, !inline_history !40
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.c) #4
  br label %regsolver.exit

regsolver.exit:                                   ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @fftw_mksolver_ct(i64 noundef 48, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @mkcldw, ptr noundef null) #4
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
  %i.af = add nsw i64 %i.f, -2                    ; 2 uses
  %i.ag = mul i64 %i.h, %i.af
  %3 = add i64 %i.h, %i.j                         ; 2 uses
  %4 = shl i64 %3, 3
  %i.ah = add i64 %i.ag, %3
  %5 = shl i64 %i.ah, 3
  %i.ai = shl i64 %i.n, 3
  %6 = shl i64 %i.u, 4
  %7 = add i64 %6, -16                            ; 2 uses
  %8 = mul i64 %i.af, %7
  %i.aj = add i64 %i.u, %i.j
  %i.ak = shl i64 %i.aj, 4
  %i.al = getelementptr i8, ptr %i.q, i64 %8
  %scevgep37 = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep39 = getelementptr i8, ptr %scevgep37, i64 -32 ; 2 uses
  %i.am = add i64 %i.u, %i.r
  %9 = shl i64 %i.am, 4
  %10 = getelementptr i8, ptr %i.q, i64 %9
  %scevgep40 = getelementptr i8, ptr %10, i64 -32 ; 2 uses
  %i.an = add i64 %i.h, %i.r
  %i.ao = shl i64 %i.an, 3
  %i.ap = sub i64 %i.j, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 10
  %i.aq = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.at = getelementptr i8, ptr %i.as, i64 -32
  %ident.check = icmp ne i64 %i.b, 1
  %mul.result = shl i64 %i.aa, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aa, 1152921504606846975
  %.mask = and i64 %i.h, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %stride.check45 = icmp slt i64 %7, 0
  %invariant.op = or i1 %stride.check, %stride.check45
  %n.vec = and i64 %i.ap, -2                      ; 3 uses
  %i.au = add i64 %i.r, %n.vec
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.preheader58.i.preheader, %._crit_edge65.i
  %.069.i = phi ptr [ %i.ej, %._crit_edge65.i ], [ %1, %.preheader58.i.preheader ] ; 2 uses
  %.05467.i = phi ptr [ %i.ek, %._crit_edge65.i ], [ %2, %.preheader58.i.preheader ] ; 2 uses
  %.05566.i = phi i64 [ %i.el, %._crit_edge65.i ], [ 0, %.preheader58.i.preheader ] ; 2 uses
  %i.av = mul i64 %i.ai, %.05566.i                ; 3 uses
  %i.aw = add i64 %5, %i.av                       ; 2 uses
  %scevgep38 = getelementptr i8, ptr %2, i64 %i.aw
  %scevgep38.a = getelementptr i8, ptr %1, i64 %i.aw
  %i.ax = add i64 %4, %i.av                       ; 2 uses
  %scevgep39.a = getelementptr i8, ptr %2, i64 %i.ax
  %11 = add i64 %i.ao, %i.av                      ; 2 uses
  %scevgep40.a = getelementptr i8, ptr %2, i64 %11 ; 2 uses
  %scevgep41 = getelementptr i8, ptr %1, i64 %i.ax
  %scevgep45 = getelementptr i8, ptr %1, i64 %11  ; 2 uses
  %bound1.a = icmp ult ptr %scevgep45, %scevgep39.a
  %bound1 = icmp ult ptr %scevgep40.a, %scevgep41
  %found.conflict = and i1 %bound1.a, %bound1
  %bound042 = icmp ult ptr %scevgep45, %scevgep39
  %bound143 = icmp ult ptr %scevgep40, %scevgep38.a
  %found.conflict44 = and i1 %bound042, %bound143
  %i.ay = or i1 %found.conflict44, %invariant.op
  %conflict.rdx = or i1 %found.conflict, %i.ay
  %bound046 = icmp ult ptr %scevgep40.a, %scevgep39
  %bound147 = icmp ult ptr %scevgep40, %scevgep38
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader58.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader58.i ] ; 2 uses
  %.05664.i = phi i64 [ %i.ei, %._crit_edge.i ], [ 1, %.preheader58.i ] ; 3 uses
  %i.az = mul nsw i64 %.05664.i, %i.h             ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.069.i, i64 %i.az ; 4 uses
  %invariant.gep60.i = getelementptr [8 x i8], ptr %.05467.i, i64 %i.az ; 4 uses
  %i.ba = mul nsw i64 %.05664.i, %i.y
  %invariant.gep62.i = getelementptr [8 x i8], ptr %i.q, i64 %i.ba ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.bb = mul i64 %i.ae, %indvar                  ; 2 uses
  %scevgep21 = getelementptr i8, ptr %i.ar, i64 %i.bb ; 2 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep
  %i.be = getelementptr i8, ptr %scevgep21, i64 %mul.result
  %i.bf = icmp ult ptr %i.be, %scevgep21
  %i.bg = or i1 %i.bf, %mul.overflow
  %i.bh = or i1 %i.bd, %ident.check
  %i.bi = or i1 %i.bh, %i.bg
  %brmerge = select i1 %i.bi, i1 true, i1 %conflict.rdx49
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bj = add i64 %i.r, %index                    ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.bj ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bk, align 8, !tbaa !32, !alias.scope !56, !noalias !57 ; 2 uses
  %wide.load50 = load <2 x double>, ptr %i.bl, align 8, !tbaa !32, !alias.scope !58, !noalias !59 ; 2 uses
  %i.bm = shl i64 %i.bj, 4
  %i.bn = getelementptr i8, ptr %invariant.gep62.i, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -16
  %wide.vec = load <4 x double>, ptr %i.bo, align 8, !tbaa !32, !alias.scope !59 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec51 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bp = fmul <2 x double> %wide.load50, %strided.vec51
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %strided.vec, <2 x double> %i.bp)
  store <2 x double> %i.bq, ptr %i.bk, align 8, !tbaa !32, !alias.scope !56, !noalias !57
  %i.br = fneg <2 x double> %strided.vec51
  %i.bs = fmul <2 x double> %wide.load, %i.br
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load50, <2 x double> %strided.vec, <2 x double> %i.bs)
  store <2 x double> %i.bt, ptr %i.bl, align 8, !tbaa !32, !alias.scope !58, !noalias !59
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i, %middle.block
  %.05759.i.ph = phi i64 [ %i.au, %middle.block ], [ %i.r, %vector.scevcheck ], [ %i.r, %.preheader.i ] ; 6 uses
  %i.bv = sub i64 %i.j, %.05759.i.ph
  %.neg = add i64 %.05759.i.ph, 1
  %xtraiter = and i64 %i.bv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = mul nsw i64 %.05759.i.ph, %i.b          ; 2 uses
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bw ; 2 uses
  %gep61.i.prol = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.bw ; 2 uses
  %i.bx = load double, ptr %gep.i.prol, align 8, !tbaa !32 ; 2 uses
  %i.by = load double, ptr %gep61.i.prol, align 8, !tbaa !32 ; 2 uses
  %.idx.i.prol = shl i64 %.05759.i.ph, 4
  %gep63.i.prol = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.prol ; 2 uses
  %i.bz = getelementptr i8, ptr %gep63.i.prol, i64 -16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !32
  %i.cb = getelementptr i8, ptr %gep63.i.prol, i64 -8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.by, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cc, i64 1
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.bx, i64 1
  %i.cl = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cm, <2 x double> %i.ci) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 1
  store double %i.co, ptr %gep.i.prol, align 8, !tbaa !32
  %i.cp = extractelement <2 x double> %i.cn, i64 0
  store double %i.cp, ptr %gep61.i.prol, align 8, !tbaa !32
  %i.cq = add nsw i64 %.05759.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05759.i.unr = phi i64 [ %.05759.i.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.cr = icmp eq i64 %i.j, %.neg
  br i1 %i.cr, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05759.i = phi i64 [ %i.eh, %scalar.ph ], [ %.05759.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cs = mul nsw i64 %.05759.i, %i.b             ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cs ; 2 uses
  %gep61.i = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.cs ; 2 uses
  %i.ct = load double, ptr %gep.i, align 8, !tbaa !32 ; 2 uses
  %i.cu = load double, ptr %gep61.i, align 8, !tbaa !32 ; 2 uses
  %.idx.i = shl i64 %.05759.i, 4
  %gep63.i = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i ; 2 uses
  %i.cv = getelementptr i8, ptr %gep63.i, i64 -16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !32
  %i.cx = getelementptr i8, ptr %gep63.i, i64 -8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !32 ; 2 uses
  %i.cz = fneg double %i.cy
  %i.da = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cu, i64 1
  %i.dc = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cy, i64 1
  %i.de = fmul <2 x double> %i.db, %i.dd
  %i.df = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.ct, i64 1
  %i.dh = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.di, <2 x double> %i.de) ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 1
  store double %i.dk, ptr %gep.i, align 8, !tbaa !32
  %i.dl = extractelement <2 x double> %i.dj, i64 0
  store double %i.dl, ptr %gep61.i, align 8, !tbaa !32
  %i.dm = add nsw i64 %.05759.i, 1                ; 2 uses
  %i.dn = mul nsw i64 %i.dm, %i.b                 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dn ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.dn ; 2 uses
  %i.do = load double, ptr %gep.i.1, align 8, !tbaa !32 ; 2 uses
  %i.dp = load double, ptr %gep61.i.1, align 8, !tbaa !32 ; 2 uses
  %.idx.i.1 = shl i64 %i.dm, 4
  %gep63.i.1 = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.1 ; 2 uses
  %i.dq = getelementptr i8, ptr %gep63.i.1, i64 -16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !32
  %i.ds = getelementptr i8, ptr %gep63.i.1, i64 -8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !32 ; 2 uses
  %i.du = fneg double %i.dt
  %i.dv = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dp, i64 1
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.dt, i64 1
  %i.dz = fmul <2 x double> %i.dw, %i.dy
  %i.ea = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.do, i64 1
  %i.ec = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ed, <2 x double> %i.dz) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  store double %i.ef, ptr %gep.i.1, align 8, !tbaa !32
  %i.eg = extractelement <2 x double> %i.ee, i64 0
  store double %i.eg, ptr %gep61.i.1, align 8, !tbaa !32
  %i.eh = add nsw i64 %.05759.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.eh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !55

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ei = add nuw nsw i64 %.05664.i, 1            ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.ei, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond74.not.i, label %._crit_edge65.i, label %.preheader.i, !llvm.loop !0

._crit_edge65.i:                                  ; preds = %._crit_edge.i
  %i.ej = getelementptr inbounds [8 x i8], ptr %.069.i, i64 %i.n
  %i.ek = getelementptr inbounds [8 x i8], ptr %.05467.i, i64 %i.n
  %i.el = add nuw nsw i64 %.05566.i, 1            ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.el, %i.l
  br i1 %exitcond75.not.i, label %bytwiddle.exit, label %.preheader58.i, !llvm.loop !1

bytwiddle.exit:                                   ; preds = %._crit_edge65.i, %bb.a, %.preheader58.lr.ph.i
  %i.em = mul nsw i64 %i.d, %i.b                  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !21 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !39
  %i.er = getelementptr inbounds [8 x i8], ptr %1, i64 %i.em ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %2, i64 %i.em ; 2 uses
  tail call void %i.eq(ptr noundef %i.eo, ptr noundef %i.er, ptr noundef %i.es, ptr noundef %i.er, ptr noundef %i.es) #4
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
  %i.ao = add nsw i64 %i.m, -2                    ; 2 uses
  %i.ap = mul i64 %i.o, %i.ao
  %3 = add i64 %i.o, %i.r                         ; 2 uses
  %4 = shl i64 %3, 3
  %i.aq = add i64 %i.ap, %3
  %5 = shl i64 %i.aq, 3
  %i.ar = shl i64 %i.w, 3
  %6 = shl i64 %i.ad, 4
  %7 = add i64 %6, -16                            ; 2 uses
  %8 = mul i64 %i.ao, %7
  %i.as = add i64 %i.ad, %i.r
  %i.at = shl i64 %i.as, 4
  %i.au = getelementptr i8, ptr %i.z, i64 %8
  %scevgep37 = getelementptr i8, ptr %i.au, i64 %i.at
  %scevgep39 = getelementptr i8, ptr %scevgep37, i64 -32 ; 2 uses
  %i.av = add i64 %i.ad, %i.aa
  %9 = shl i64 %i.av, 4
  %10 = getelementptr i8, ptr %i.z, i64 %9
  %scevgep40 = getelementptr i8, ptr %10, i64 -32 ; 2 uses
  %i.aw = add i64 %i.o, %i.aa
  %i.ax = shl i64 %i.aw, 3
  %i.ay = sub i64 %i.r, %i.aa                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 10
  %i.az = getelementptr i8, ptr %i.z, i64 %i.am
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = getelementptr i8, ptr %i.z, i64 %i.am
  %i.bc = getelementptr i8, ptr %i.bb, i64 -32
  %ident.check = icmp ne i64 %i.s, 1
  %mul.result = shl i64 %i.aj, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aj, 1152921504606846975
  %.mask = and i64 %i.o, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %stride.check45 = icmp slt i64 %7, 0
  %invariant.op = or i1 %stride.check, %stride.check45
  %n.vec = and i64 %i.ay, -2                      ; 3 uses
  %i.bd = add i64 %i.aa, %n.vec
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.preheader58.i.preheader, %._crit_edge65.i
  %.069.i = phi ptr [ %i.es, %._crit_edge65.i ], [ %1, %.preheader58.i.preheader ] ; 2 uses
  %.05467.i = phi ptr [ %i.et, %._crit_edge65.i ], [ %2, %.preheader58.i.preheader ] ; 2 uses
  %.05566.i = phi i64 [ %i.eu, %._crit_edge65.i ], [ 0, %.preheader58.i.preheader ] ; 2 uses
  %i.be = mul i64 %i.ar, %.05566.i                ; 3 uses
  %i.bf = add i64 %5, %i.be                       ; 2 uses
  %scevgep38 = getelementptr i8, ptr %2, i64 %i.bf
  %scevgep38.a = getelementptr i8, ptr %1, i64 %i.bf
  %i.bg = add i64 %4, %i.be                       ; 2 uses
  %scevgep39.a = getelementptr i8, ptr %2, i64 %i.bg
  %11 = add i64 %i.ax, %i.be                      ; 2 uses
  %scevgep40.a = getelementptr i8, ptr %2, i64 %11 ; 2 uses
  %scevgep41 = getelementptr i8, ptr %1, i64 %i.bg
  %scevgep45 = getelementptr i8, ptr %1, i64 %11  ; 2 uses
  %bound1.a = icmp ult ptr %scevgep45, %scevgep39.a
  %bound1 = icmp ult ptr %scevgep40.a, %scevgep41
  %found.conflict = and i1 %bound1.a, %bound1
  %bound042 = icmp ult ptr %scevgep45, %scevgep39
  %bound143 = icmp ult ptr %scevgep40, %scevgep38.a
  %found.conflict44 = and i1 %bound042, %bound143
  %i.bh = or i1 %found.conflict44, %invariant.op
  %conflict.rdx = or i1 %found.conflict, %i.bh
  %bound046 = icmp ult ptr %scevgep40.a, %scevgep39
  %bound147 = icmp ult ptr %scevgep40, %scevgep38
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader58.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader58.i ] ; 2 uses
  %.05664.i = phi i64 [ %i.er, %._crit_edge.i ], [ 1, %.preheader58.i ] ; 3 uses
  %i.bi = mul nsw i64 %.05664.i, %i.o             ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.069.i, i64 %i.bi ; 4 uses
  %invariant.gep60.i = getelementptr [8 x i8], ptr %.05467.i, i64 %i.bi ; 4 uses
  %i.bj = mul nsw i64 %.05664.i, %i.ah
  %invariant.gep62.i = getelementptr [8 x i8], ptr %i.z, i64 %i.bj ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i
  %i.bk = mul i64 %i.an, %indvar                  ; 2 uses
  %scevgep21 = getelementptr i8, ptr %i.ba, i64 %i.bk ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep
  %i.bn = getelementptr i8, ptr %scevgep21, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep21
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %ident.check
  %i.br = or i1 %i.bq, %i.bp
  %brmerge = select i1 %i.br, i1 true, i1 %conflict.rdx49
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bs = add i64 %i.aa, %index                   ; 3 uses
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bs ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.bs ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !32, !alias.scope !66, !noalias !67 ; 2 uses
  %wide.load50 = load <2 x double>, ptr %i.bu, align 8, !tbaa !32, !alias.scope !68, !noalias !69 ; 2 uses
  %i.bv = shl i64 %i.bs, 4
  %i.bw = getelementptr i8, ptr %invariant.gep62.i, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -16
  %wide.vec = load <4 x double>, ptr %i.bx, align 8, !tbaa !32, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec51 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.by = fmul <2 x double> %wide.load50, %strided.vec51
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %strided.vec, <2 x double> %i.by)
  store <2 x double> %i.bz, ptr %i.bt, align 8, !tbaa !32, !alias.scope !66, !noalias !67
  %i.ca = fneg <2 x double> %strided.vec51
  %i.cb = fmul <2 x double> %wide.load, %i.ca
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load50, <2 x double> %strided.vec, <2 x double> %i.cb)
  store <2 x double> %i.cc, ptr %i.bu, align 8, !tbaa !32, !alias.scope !68, !noalias !69
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i, %middle.block
  %.05759.i.ph = phi i64 [ %i.bd, %middle.block ], [ %i.aa, %vector.scevcheck ], [ %i.aa, %.preheader.i ] ; 6 uses
  %i.ce = sub i64 %i.r, %.05759.i.ph
  %.neg = add i64 %.05759.i.ph, 1
  %xtraiter = and i64 %i.ce, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cf = mul nsw i64 %.05759.i.ph, %i.s          ; 2 uses
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cf ; 2 uses
  %gep61.i.prol = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.cf ; 2 uses
  %i.cg = load double, ptr %gep.i.prol, align 8, !tbaa !32 ; 2 uses
  %i.ch = load double, ptr %gep61.i.prol, align 8, !tbaa !32 ; 2 uses
  %.idx.i.prol = shl i64 %.05759.i.ph, 4
  %gep63.i.prol = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.prol ; 2 uses
  %i.ci = getelementptr i8, ptr %gep63.i.prol, i64 -16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !32
  %i.ck = getelementptr i8, ptr %gep63.i.prol, i64 -8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %i.cm = fneg double %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ch, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cl, i64 1
  %i.cr = fmul <2 x double> %i.co, %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cg, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cv, <2 x double> %i.cr) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1
  store double %i.cx, ptr %gep.i.prol, align 8, !tbaa !32
  %i.cy = extractelement <2 x double> %i.cw, i64 0
  store double %i.cy, ptr %gep61.i.prol, align 8, !tbaa !32
  %i.cz = add nsw i64 %.05759.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05759.i.unr = phi i64 [ %.05759.i.ph, %scalar.ph.preheader ], [ %i.cz, %scalar.ph.prol ]
  %i.da = icmp eq i64 %i.r, %.neg
  br i1 %i.da, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05759.i = phi i64 [ %i.eq, %scalar.ph ], [ %.05759.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.db = mul nsw i64 %.05759.i, %i.s             ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.db ; 2 uses
  %gep61.i = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.db ; 2 uses
  %i.dc = load double, ptr %gep.i, align 8, !tbaa !32 ; 2 uses
  %i.dd = load double, ptr %gep61.i, align 8, !tbaa !32 ; 2 uses
  %.idx.i = shl i64 %.05759.i, 4
  %gep63.i = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i ; 2 uses
  %i.de = getelementptr i8, ptr %gep63.i, i64 -16
  %i.df = load double, ptr %i.de, align 8, !tbaa !32
  %i.dg = getelementptr i8, ptr %gep63.i, i64 -8
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !32 ; 2 uses
  %i.di = fneg double %i.dh
  %i.dj = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dd, i64 1
  %i.dl = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dh, i64 1
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dc, i64 1
  %i.dq = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dr, <2 x double> %i.dn) ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 1
  store double %i.dt, ptr %gep.i, align 8, !tbaa !32
  %i.du = extractelement <2 x double> %i.ds, i64 0
  store double %i.du, ptr %gep61.i, align 8, !tbaa !32
  %i.dv = add nsw i64 %.05759.i, 1                ; 2 uses
  %i.dw = mul nsw i64 %i.dv, %i.s                 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dw ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %invariant.gep60.i, i64 %i.dw ; 2 uses
  %i.dx = load double, ptr %gep.i.1, align 8, !tbaa !32 ; 2 uses
  %i.dy = load double, ptr %gep61.i.1, align 8, !tbaa !32 ; 2 uses
  %.idx.i.1 = shl i64 %i.dv, 4
  %gep63.i.1 = getelementptr i8, ptr %invariant.gep62.i, i64 %.idx.i.1 ; 2 uses
  %i.dz = getelementptr i8, ptr %gep63.i.1, i64 -16
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !32
  %i.eb = getelementptr i8, ptr %gep63.i.1, i64 -8
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !32 ; 2 uses
  %i.ed = fneg double %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.dy, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ec, i64 1
  %i.ei = fmul <2 x double> %i.ef, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.dx, i64 1
  %i.el = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.em, <2 x double> %i.ei) ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 1
  store double %i.eo, ptr %gep.i.1, align 8, !tbaa !32
  %i.ep = extractelement <2 x double> %i.en, i64 0
  store double %i.ep, ptr %gep61.i.1, align 8, !tbaa !32
  %i.eq = add nsw i64 %.05759.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.eq, %i.r
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !65

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.er = add nuw nsw i64 %.05664.i, 1            ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.er, %i.m
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond74.not.i, label %._crit_edge65.i, label %.preheader.i, !llvm.loop !0

._crit_edge65.i:                                  ; preds = %._crit_edge.i
  %i.es = getelementptr inbounds [8 x i8], ptr %.069.i, i64 %i.w
  %i.et = getelementptr inbounds [8 x i8], ptr %.05467.i, i64 %i.w
  %i.eu = add nuw nsw i64 %.05566.i, 1            ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.eu, %i.u
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
end_hunk_0
