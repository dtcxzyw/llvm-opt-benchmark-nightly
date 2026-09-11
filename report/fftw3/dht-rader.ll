Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dht-rader?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fftw_solver_register
; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = icmp eq i32 %i.j, 8
  br i1 %i.k, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !43
  %i.n = tail call i32 @fftw_is_prime(i64 noundef %i.m) #6
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %applicable.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43   ; 3 uses
  %i.r = icmp sgt i64 %i.q, 2
  br i1 %i.r, label %bb.f, label %applicable.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.t = load i64, ptr %i.s, align 4
  %i.u = and i64 %i.t, 8
  %.not10.i = icmp eq i64 %i.u, 0                 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.q, 32           ; 2 uses
  %i.w = xor i1 %i.v, true
  %brmerge.i = or i1 %.not10.i, %i.w
  br i1 %brmerge.i, label %applicable.exit, label %.split

.split:                                           ; preds = %bb.f
  %i.x = add nsw i64 %i.q, -1
  %i.y = tail call i32 @fftw_factors_into_small_primes(i64 noundef %i.x) #6
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %applicable.exit.thread, label %bb.g

applicable.exit:                                  ; preds = %bb.f
  %or.cond.i = or i1 %i.v, %.not10.i
  br i1 %or.cond.i, label %bb.g, label %applicable.exit.thread

bb.g:                                             ; preds = %.split, %applicable.exit
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !12
  %.not78 = icmp eq i32 %i.af, 0
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i64 %i.ab, 1
  %i.ah = add i64 %i.ag, -3
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %bb.h
  %.0.i = phi i64 [ %i.ah, %bb.h ], [ %i.ak, %.critedge.i ] ; 4 uses
  %i.ai = tail call i32 @fftw_factors_into(i64 noundef %.0.i, ptr noundef nonnull @choose_transform_size.primes) #6
  %.not.i82 = icmp ne i32 %i.ai, 0
  %i.aj = and i64 %.0.i, 1
  %.not4.i = icmp eq i64 %i.aj, 0
  %or.cond.i83 = and i1 %.not.i82, %.not4.i
  %i.ak = add nsw i64 %.0.i, 1
  br i1 %or.cond.i83, label %choose_transform_size.exit, label %.critedge.i, !llvm.loop !34

bb.i:                                             ; preds = %bb.g
  %i.al = add nsw i64 %i.ab, -1
  br label %choose_transform_size.exit

choose_transform_size.exit:                       ; preds = %.critedge.i, %bb.i
  %.072 = phi i64 [ %i.al, %bb.i ], [ %.0.i, %.critedge.i ] ; 7 uses
  %i.am = shl i64 %.072, 3
  %i.an = tail call ptr @fftw_malloc_plain(i64 noundef %i.am) #6 ; 8 uses
  %i.ao = tail call ptr @fftw_mktensor_1d(i64 noundef %.072, i64 noundef 1, i64 noundef 1) #6
  %i.ap = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #6
  %i.aq = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef %i.an, ptr noundef %i.an, i32 noundef 0) #6
  %i.ar = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.aq, i32 noundef 8, i32 noundef 0, i32 noundef 0) #6 ; 4 uses
  %.not79 = icmp eq ptr %i.ar, null
  br i1 %.not79, label %bb.m, label %bb.j

bb.j:                                             ; preds = %choose_transform_size.exit
  %i.as = tail call ptr @fftw_mktensor_1d(i64 noundef %.072, i64 noundef 1, i64 noundef 1) #6
  %i.at = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #6
  %i.au = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.an, ptr noundef %i.an, i32 noundef 0) #6
  %i.av = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.au, i32 noundef 8, i32 noundef 0, i32 noundef 0) #6 ; 4 uses
  %.not80 = icmp eq ptr %i.av, null
  br i1 %.not80, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @fftw_mktensor_1d(i64 noundef %.072, i64 noundef 1, i64 noundef 1) #6
  %i.ax = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #6
  %i.ay = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef %i.an, ptr noundef %i.an, i32 noundef 0) #6
  %i.az = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.ay, i32 noundef 8, i32 noundef 2, i32 noundef 0) #6 ; 2 uses
  %.not81 = icmp eq ptr %i.az, null
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @fftw_ifree(ptr noundef %i.an) #6
  %i.ba = tail call ptr @fftw_mkplan_rdft(i64 noundef 144, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull @apply) #6 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store ptr %i.av, ptr %i.bc, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i64 %i.ab, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store i64 %.072, ptr %i.bg, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  store <2 x i64> %i.ad, ptr %i.bh, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  tail call void @fftw_ops_add(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk) #6
  %i.bl = sdiv i64 %.072, 2
  %i.bm = add nsw i64 %i.bl, -1                   ; 3 uses
  %i.bn = mul nsw i64 %i.bm, 6
  %i.bo = add nsw i64 %i.ab, -1
  %i.bp = load i32, ptr %i.ae, align 8, !tbaa !12
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = mul nsw i64 %i.bo, %i.bq                ; 2 uses
  %i.bs = add i64 %.072, %i.ab
  %i.bt = add i64 %i.bs, %i.bn
  %i.bu = add nsw i64 %i.bt, %i.br
  %i.bv = sitofp i64 %i.bu to double
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !45
  %i.by = fadd double %i.bx, %i.bv
  %i.bz = shl nsw i64 %i.bm, 1                    ; 2 uses
  %i.ca = add nsw i64 %i.bz, 2
  %i.cb = add nsw i64 %i.ca, %i.br
  %i.cc = sitofp i64 %i.cb to double
  %i.cd = load double, ptr %i.bk, align 8, !tbaa !46
  %i.ce = fadd double %i.cd, %i.cc
  %i.cf = shl nsw i64 %i.bm, 2
  %i.cg = or disjoint i64 %i.cf, 2
  %i.ch = add nsw i64 %i.cg, %i.bq
  %i.ci = sitofp i64 %i.ch to double
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !47
  %i.cl = fadd double %i.ck, %i.ci
  store double %i.cl, ptr %i.cj, align 8, !tbaa !47
  %i.cm = add nsw i64 %i.ab, -2                   ; 2 uses
  %i.cn = sub nsw i64 %i.cm, %i.bq
  %i.co = sitofp i64 %i.cn to double
  %i.cp = fadd double %i.by, %i.co
  store double %i.cp, ptr %i.bw, align 8, !tbaa !45
  %i.cq = add nsw i64 %i.bz, %i.cm
  %i.cr = sub i64 %i.cq, %i.bq
  %i.cs = sitofp i64 %i.cr to double
  %i.ct = fadd double %i.ce, %i.cs
  store double %i.ct, ptr %i.bk, align 8, !tbaa !46
  br label %applicable.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.j, %choose_transform_size.exit
  %.071 = phi ptr [ %i.av, %bb.k ], [ null, %bb.j ], [ null, %choose_transform_size.exit ]
  tail call void @fftw_ifree0(ptr noundef %i.an) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef null) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef %.071) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.ar) #6
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %.split, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %applicable.exit, %bb.m, %bb.l
  %.073 = phi ptr [ %i.ba, %bb.l ], [ null, %bb.m ], [ null, %applicable.exit ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ], [ null, %.split ]
  ret ptr %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @fftw_plan_awake(ptr noundef %i.c, i32 noundef %1) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  tail call void @fftw_plan_awake(ptr noundef %i.e, i32 noundef %1) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void @fftw_plan_awake(ptr noundef %i.g, i32 noundef %1) #6
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call void @fftw_rader_tl_delete(ptr noundef %i.i, ptr noundef nonnull @omegas) #6
  store ptr null, ptr %i.h, align 8, !tbaa !25
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i64 @fftw_find_generator(i64 noundef %i.k) #6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = tail call i64 @fftw_power_mod(i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.n) #6 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !26   ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 16 uses
  %i.v = add nsw i64 %i.u, 1                      ; 2 uses
  %i.w = load ptr, ptr @omegas, align 8, !tbaa !54
  %i.x = tail call ptr @fftw_rader_tl_find(i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.p, ptr noundef %i.w) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %mkomega.exit

bb.d:                                             ; preds = %bb.c
  %i.y = shl i64 %i.u, 3                          ; 2 uses
  %i.z = tail call ptr @fftw_malloc_plain(i64 noundef %i.y) #6 ; 26 uses
  %i.aa = sitofp i64 %i.u to double
  %i.ab = tail call ptr @fftw_mktriggen(i32 noundef range(i32 1, 0) %1, i64 noundef %i.s) #6 ; 3 uses
  %i.ac = add i64 %i.s, -1                        ; 13 uses
  %i.ad = icmp sgt i64 %i.s, 1
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = sub nsw i64 92681, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.060.i = phi i64 [ 1, %.lr.ph.i ], [ %i.an, %bb.h ] ; 4 uses
  %.05259.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !56
  call void %i.ag(ptr noundef %i.ab, i64 noundef %.060.i, ptr noundef nonnull %i.a) #6, !inline_history !48
  %3 = load double, ptr %i.a, align 16, !tbaa !30
  %4 = load double, ptr %2, align 8, !tbaa !30
  %5 = fadd double %3, %4
  %i.ah = fdiv double %5, %i.aa
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05259.i
  store double %i.ah, ptr %i.ai, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.aj = add nuw nsw i64 %.05259.i, 1            ; 2 uses
  %.not58.i = icmp sgt i64 %.060.i, %i.af
  br i1 %.not58.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = mul nsw i64 %.060.i, %i.p
  %i.al = srem i64 %i.ak, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = call i64 @fftw_safe_mulmod(i64 noundef %.060.i, i64 noundef %i.p, i64 noundef %i.s) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = phi i64 [ %i.al, %bb.f ], [ %i.am, %bb.g ]
  %exitcond.not.i = icmp eq i64 %i.aj, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  %.052.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.h ] ; 2 uses
  call void @fftw_triggen_destroy(ptr noundef %i.ab) #6
  %i.ao = icmp slt i64 %.052.lcssa.i, %i.u
  br i1 %i.ao, label %.lr.ph64.preheader.i, label %._crit_edge65.i

.lr.ph64.preheader.i:                             ; preds = %._crit_edge.i
  %i.ap = shl i64 %.052.lcssa.i, 3                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.z, i64 %i.ap
  %i.aq = sub i64 %i.y, %i.ap
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false), !tbaa !30
  br label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %.lr.ph64.preheader.i, %._crit_edge.i
  %.not57.i = icmp sge i64 %i.u, %i.s
  %i.ar = icmp sgt i64 %i.s, 2
  %or.cond.i = and i1 %i.ar, %.not57.i
  br i1 %or.cond.i, label %.lr.ph67.i.preheader, label %.loopexit.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge65.i
  %i.as = add nsw i64 %i.s, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 10
  br i1 %min.iters.check, label %.lr.ph67.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph67.i.preheader
  %i.at = sub i64 %i.s, %i.u
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, -9
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph67.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.aw = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = or disjoint i64 %index, 1               ; 2 uses
  %i.ay = sub nuw nsw i64 %i.ac, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -24
  %wide.load = load <2 x double>, ptr %i.ba, align 8, !tbaa !30
  %wide.load27 = load <2 x double>, ptr %i.bb, align 8, !tbaa !30
  %i.bc = sub nuw nsw i64 %i.u, %i.ax
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -24
  store <2 x double> %wide.load, ptr %i.be, align 8, !tbaa !30
  store <2 x double> %wide.load27, ptr %i.bf, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph67.i.preheader28

.lr.ph67.i.preheader28:                           ; preds = %vector.memcheck, %.lr.ph67.i.preheader, %middle.block
  %.266.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph67.i.preheader ], [ %i.aw, %middle.block ] ; 4 uses
  %i.bh = xor i64 %.266.i.ph, -1
  %i.bi = add i64 %i.s, %i.bh
  %i.bj = add nsw i64 %i.s, -2
  %i.bk = sub i64 %i.bj, %.266.i.ph
  %xtraiter = and i64 %i.bi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader28, %.lr.ph67.i.prol
  %.266.i.prol = phi i64 [ %i.bq, %.lr.ph67.i.prol ], [ %.266.i.ph, %.lr.ph67.i.preheader28 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.i.prol ], [ 0, %.lr.ph67.i.preheader28 ]
  %i.bl = sub nuw nsw i64 %i.ac, %.266.i.prol
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !30
  %i.bo = sub nuw nsw i64 %i.u, %.266.i.prol
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bo
  store double %i.bn, ptr %i.bp, align 8, !tbaa !30
  %i.bq = add nuw nsw i64 %.266.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol, !llvm.loop !51

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader28
  %.266.i.unr = phi i64 [ %.266.i.ph, %.lr.ph67.i.preheader28 ], [ %i.bq, %.lr.ph67.i.prol ]
  %i.br = icmp ult i64 %i.bk, 7
  br i1 %i.br, label %.loopexit.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %.266.i = phi i64 [ %i.dn, %.lr.ph67.i ], [ %.266.i.unr, %.lr.ph67.i.prol.loopexit ] ; 10 uses
  %i.bs = sub nuw nsw i64 %i.ac, %.266.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !30
  %i.bv = sub nuw nsw i64 %i.u, %.266.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bv
  store double %i.bu, ptr %i.bw, align 8, !tbaa !30
  %i.bx = add nuw nsw i64 %.266.i, 1              ; 2 uses
  %i.by = sub nuw nsw i64 %i.ac, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !30
  %i.cb = sub nuw nsw i64 %i.u, %i.bx
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cb
  store double %i.ca, ptr %i.cc, align 8, !tbaa !30
  %i.cd = add nuw nsw i64 %.266.i, 2              ; 2 uses
  %i.ce = sub nuw nsw i64 %i.ac, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !30
  %i.ch = sub nuw nsw i64 %i.u, %i.cd
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ch
  store double %i.cg, ptr %i.ci, align 8, !tbaa !30
  %i.cj = add nuw nsw i64 %.266.i, 3              ; 2 uses
  %i.ck = sub nuw nsw i64 %i.ac, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !30
  %i.cn = sub nuw nsw i64 %i.u, %i.cj
  %i.co = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cn
  store double %i.cm, ptr %i.co, align 8, !tbaa !30
  %i.cp = add nuw nsw i64 %.266.i, 4              ; 2 uses
  %i.cq = sub nuw nsw i64 %i.ac, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !30
  %i.ct = sub nuw nsw i64 %i.u, %i.cp
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ct
  store double %i.cs, ptr %i.cu, align 8, !tbaa !30
  %i.cv = add nuw nsw i64 %.266.i, 5              ; 2 uses
  %i.cw = sub nuw nsw i64 %i.ac, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !30
  %i.cz = sub nuw nsw i64 %i.u, %i.cv
  %i.da = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cz
  store double %i.cy, ptr %i.da, align 8, !tbaa !30
  %i.db = add nuw nsw i64 %.266.i, 6              ; 2 uses
  %i.dc = sub nuw nsw i64 %i.ac, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !30
  %i.df = sub nuw nsw i64 %i.u, %i.db
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.df
  store double %i.de, ptr %i.dg, align 8, !tbaa !30
  %i.dh = add nuw nsw i64 %.266.i, 7              ; 2 uses
  %i.di = sub nuw nsw i64 %i.ac, %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !30
  %i.dl = sub nuw nsw i64 %i.u, %i.dh
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dl
  store double %i.dk, ptr %i.dm, align 8, !tbaa !30
  %i.dn = add nuw nsw i64 %.266.i, 8              ; 2 uses
  %exitcond70.not.i.7 = icmp eq i64 %i.dn, %i.ac
  br i1 %exitcond70.not.i.7, label %.loopexit.i, label %.lr.ph67.i, !llvm.loop !52

.loopexit.i:                                      ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block, %._crit_edge65.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31
  call void %i.dp(ptr noundef %i.r, ptr noundef %i.z, ptr noundef %i.z) #6, !inline_history !48
  call void @fftw_rader_tl_insert(i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.p, ptr noundef %i.z, ptr noundef nonnull @omegas) #6
  br label %mkomega.exit

mkomega.exit:                                     ; preds = %bb.c, %.loopexit.i
  %.053.i = phi ptr [ %i.z, %.loopexit.i ], [ %i.x, %bb.c ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.053.i, ptr %i.dq, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %mkomega.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
end_hunk_0
begin_hunk_1_@apply:bb.a
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %._crit_edge180.loopexit, %._crit_edge
  %i.dp = phi double [ %i.ao, %._crit_edge ], [ %.pre, %._crit_edge180.loopexit ]
  %.2.lcssa = phi i64 [ 1, %._crit_edge ], [ %smax, %._crit_edge180.loopexit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2.lcssa
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2.lcssa ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !30
  %i.du = fmul double %i.dr, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !30
  %i.dv = fadd double %i.ah, %i.dp
  store double %i.dv, ptr %i.h, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31
  tail call void %i.dz(ptr noundef %i.dx, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #6
  %i.ea = load double, ptr %i.h, align 8, !tbaa !30
  %i.eb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  store double %i.ea, ptr %i.eb, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !29 ; 13 uses
  %i.ee = icmp eq i64 %i.d, %i.k
  br i1 %i.ee, label %.preheader, label %.preheader169

.preheader169:                                    ; preds = %._crit_edge180
  %i.ef = icmp sgt i64 %i.b, 2
  br i1 %i.ef, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader169
  %i.eg = sub nsw i64 92681, %i.ed
  br label %bb.p

.preheader:                                       ; preds = %._crit_edge180
  %i.eh = sub nsw i64 92681, %i.ed                ; 3 uses
  br i1 %i.aq, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader
  %smax203 = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph188, %bb.i
  %.3187 = phi i64 [ 1, %.lr.ph188 ], [ %i.eq, %bb.i ] ; 3 uses
  %.1159186 = phi i64 [ %i.ed, %.lr.ph188 ], [ %i.eu, %bb.i ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.3187
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !30
  %i.ek = sub nsw i64 %i.d, %.3187
  %i.el = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !30
  %i.en = fadd double %i.ej, %i.em
  %i.eo = mul nsw i64 %.1159186, %i.ac
  %i.ep = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eo
  store double %i.en, ptr %i.ep, align 8, !tbaa !30
  %i.eq = add nuw nsw i64 %.3187, 1               ; 2 uses
  %.not167 = icmp sgt i64 %.1159186, %i.eh
  br i1 %.not167, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = mul nsw i64 %.1159186, %i.ed
  %i.es = srem i64 %i.er, %i.b
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.et = tail call i64 @fftw_safe_mulmod(i64 noundef %.1159186, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.eu = phi i64 [ %i.es, %bb.g ], [ %i.et, %bb.h ] ; 2 uses
  %exitcond204.not = icmp eq i64 %i.eq, %smax203
  br i1 %exitcond204.not, label %._crit_edge189, label %bb.f, !llvm.loop !65

._crit_edge189:                                   ; preds = %bb.i, %.preheader
  %.1159.lcssa = phi i64 [ %i.ed, %.preheader ], [ %i.eu, %bb.i ] ; 4 uses
  %.3.lcssa = phi i64 [ 1, %.preheader ], [ %smax203, %bb.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.3.lcssa
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !30
  %i.ex = mul nsw i64 %.1159.lcssa, %i.ac
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  store double %i.ew, ptr %i.ey, align 8, !tbaa !30
  %.not165 = icmp sgt i64 %.1159.lcssa, %i.eh
  br i1 %.not165, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge189
  %i.ez = mul nsw i64 %.1159.lcssa, %i.ed
  %i.fa = srem i64 %i.ez, %i.b
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge189
  %i.fb = tail call i64 @fftw_safe_mulmod(i64 noundef %.1159.lcssa, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = phi i64 [ %i.fa, %bb.j ], [ %i.fb, %bb.k ]
  %.4192 = add nuw nsw i64 %.3.lcssa, 1           ; 2 uses
  %i.fd = icmp slt i64 %.4192, %i.d
  br i1 %i.fd, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %bb.l, %bb.o
  %.4194 = phi i64 [ %.4, %bb.o ], [ %.4192, %bb.l ] ; 3 uses
  %.2160193 = phi i64 [ %i.fp, %bb.o ], [ %i.fc, %bb.l ] ; 4 uses
  %i.fe = sub nuw nsw i64 %i.d, %.4194
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.4194
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !30
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = mul nsw i64 %.2160193, %i.ac
  %i.fl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fk
  store double %i.fj, ptr %i.fl, align 8, !tbaa !30
  %.not166 = icmp sgt i64 %.2160193, %i.eh
  br i1 %.not166, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph196
  %i.fm = mul nsw i64 %.2160193, %i.ed
  %i.fn = srem i64 %i.fm, %i.b
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph196
  %i.fo = tail call i64 @fftw_safe_mulmod(i64 noundef %.2160193, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fp = phi i64 [ %i.fn, %bb.m ], [ %i.fo, %bb.n ]
  %.4 = add nuw i64 %.4194, 1                     ; 2 uses
  %exitcond205.not = icmp eq i64 %.4, %i.d
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph196, !llvm.loop !66

bb.p:                                             ; preds = %.lr.ph185, %bb.s
  %.5184 = phi i64 [ 1, %.lr.ph185 ], [ %i.fy, %bb.s ] ; 3 uses
  %.3161183 = phi i64 [ %i.ed, %.lr.ph185 ], [ %i.gc, %bb.s ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.5184
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !30
  %i.fs = sub nsw i64 %i.d, %.5184
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = mul nsw i64 %.3161183, %i.ac
  %i.fx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fw
  store double %i.fv, ptr %i.fx, align 8, !tbaa !30
  %i.fy = add nuw nsw i64 %.5184, 1               ; 2 uses
  %.not = icmp sgt i64 %.3161183, %i.eg
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fz = mul nsw i64 %.3161183, %i.ed
  %i.ga = srem i64 %i.fz, %i.b
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.gb = tail call i64 @fftw_safe_mulmod(i64 noundef %.3161183, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gc = phi i64 [ %i.ga, %bb.q ], [ %i.gb, %bb.r ]
  %exitcond202.not = icmp eq i64 %i.fy, %i.k
  br i1 %exitcond202.not, label %.loopexit, label %bb.p, !llvm.loop !67

.loopexit:                                        ; preds = %bb.s, %bb.o, %.preheader169, %bb.l
  tail call void @fftw_ifree(ptr noundef nonnull %i.h) #6
  ret void
}

declare void @fftw_ops_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @fftw_find_generator(i64 noundef) local_unnamed_addr #1

declare i64 @fftw_power_mod(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_rader_tl_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_rader_tl_find(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mktriggen(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @fftw_safe_mulmod(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_triggen_destroy(ptr noundef) local_unnamed_addr #1

declare void @fftw_rader_tl_insert(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @fftw_is_prime(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_factors_into_small_primes(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_factors_into(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"solver_s", !9, i64 0, !6, i64 8}
!11 = !{!"", !10, i64 0, !6, i64 16}
!12 = !{!11, !6, i64 16}
!13 = !{!"p1 double", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"double", !5, i64 0}
!17 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!18 = !{!"plan_s", !9, i64 0, !17, i64 8, !16, i64 40, !6, i64 48, !6, i64 52}
!19 = !{!"", !18, i64 0, !9, i64 56}
!20 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!21 = !{!"", !19, i64 0, !20, i64 64, !20, i64 72, !13, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !20, i64 136}
!22 = !{!21, !20, i64 64}
!23 = !{!21, !20, i64 72}
!24 = !{!21, !20, i64 136}
!25 = !{!21, !13, i64 80}
!26 = !{!21, !14, i64 88}
!27 = !{!21, !14, i64 96}
!28 = !{!21, !14, i64 104}
!29 = !{!21, !14, i64 112}
!30 = !{!16, !16, i64 0}
!31 = !{!19, !9, i64 56}
!32 = !{!21, !14, i64 120}
!33 = !{!21, !14, i64 128}
!34 = distinct !{!34, !15}
!35 = !{!"problem_s", !9, i64 0}
!36 = !{!"", !35, i64 0, !9, i64 8, !9, i64 16, !13, i64 24, !13, i64 32, !5, i64 40}
!37 = !{!36, !9, i64 8}
!38 = !{!"", !6, i64 0, !5, i64 8}
!39 = !{!38, !6, i64 0}
!40 = !{!36, !9, i64 16}
!41 = !{!6, !6, i64 0}
!42 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!43 = !{!42, !14, i64 0}
!44 = !{!14, !14, i64 0}
!45 = !{!21, !16, i64 32}
!46 = !{!21, !16, i64 8}
!47 = !{!21, !16, i64 16}
!48 = distinct !{null}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15, !57, !58}
!51 = distinct !{!51, !59}
!52 = distinct !{!52, !15, !57}
!53 = !{!"p1 _ZTS9rader_tls", !9, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"triggen_s", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !13, i64 48, !13, i64 56, !14, i64 64}
!56 = !{!55, !9, i64 8}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!61 = !{!60, !9, i64 0}
!62 = !{!60, !9, i64 16}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
end_hunk_1
