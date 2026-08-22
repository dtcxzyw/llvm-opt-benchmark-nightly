Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dither?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@swri_get_dither:bb.a
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1
  %i.bk = fdiv nsz <2 x double> %i.bj, splat (double f0x41EFFFFFFFE00000) ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub nsz <2 x double> %i.bk, %shift.1
  %i.bl = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %i.bl, ptr %i.bn, align 8, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit79.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !26

bb.b:                                             ; preds = %.lr.ph.split
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 43) #9
  tail call void @abort() #10
  unreachable

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %bb.m
  %indvars.iv67 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next68, %bb.m ] ; 7 uses
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %cond = icmp eq i32 %i.bo, 3
  br i1 %cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph59
  %i.bp = icmp slt i32 %i.bo, 72
  br i1 %i.bp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 57) #9
  tail call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv67
  %i.br = load double, ptr %i.bq, align 8, !tbaa !25
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph59
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv67 ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !25
  %i.bu = fneg nsz double %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !25
  %i.bx = tail call nsz double @llvm.fmuladd.f64(double %i.bw, double 2.000000e+00, double %i.bu)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !25
  %i.ca = fsub nsz double %i.bx, %i.bz
  %i.cb = fdiv nsz double %i.ca, f0x4003988E1409212E
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz double [ %i.cb, %bb.f ], [ %i.br, %bb.e ]
  %i.cc = fmul nsz double %.0, %i.d               ; 4 uses
  switch i32 %4, label %bb.l [
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.cd = fptosi double %i.cc to i16
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv67
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !28
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.cf = fptosi double %i.cc to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv67
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !30
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.ch = fptrunc nsz double %i.cc to float
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv67
  store float %i.ch, ptr %i.ci, align 4, !tbaa !31
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67
  store double %i.cc, ptr %i.cj, align 8, !tbaa !25
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 72) #9
  tail call void @abort() #10
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge, label %.lr.ph59, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.m, %.preheader55, %.preheader
  tail call void @av_free(ptr noundef nonnull %i.g) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %._crit_edge
  %.049 = phi i32 [ 0, %._crit_edge ], [ -12, %bb.a ]
  ret i32 %.049
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @av_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -22, 1) i32 @swri_dither_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = add i32 %i.b, -4
  %or.cond80 = icmp ult i32 %i.c, 61
  br i1 %or.cond80, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @av_get_packed_sample_fmt(i32 noundef %1) #9 ; 7 uses
  %i.e = tail call i32 @av_get_packed_sample_fmt(i32 noundef %2) #9 ; 3 uses
  %i.f = add i32 %i.e, -3
  %or.cond = icmp ult i32 %i.f, 2
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = icmp eq i32 %i.d, 2                      ; 2 uses
  %.070 = select nsz i1 %i.g, double f0x3E00000000000000, double 0.000000e+00
  %i.h = icmp eq i32 %i.d, 1
  %.1 = select nsz i1 %i.h, double f0x3F00000000000000, double %.070
  %i.i = icmp eq i32 %i.d, 0
  %.2.ph = select i1 %i.i, double 7.812500e-03, double %.1
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.e, 2                      ; 2 uses
  %i.k = icmp eq i32 %i.d, 2                      ; 2 uses
  %or.cond3 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11688
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33
  %i.n = and i32 %i.m, 31
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d, %bb.c
  %i.o = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ %i.k, %bb.c ], [ %i.g, %.thread ]
  %i.p = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ %i.j, %bb.c ], [ false, %.thread ] ; 2 uses
  %.3 = phi nsz double [ 1.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ %.2.ph, %.thread ]
  %i.q = icmp eq i32 %i.d, 1
  %or.cond5 = select i1 %i.p, i1 %i.q, i1 false
  %.4 = select nsz i1 %or.cond5, double 6.553600e+04, double %.3
  %i.r = icmp eq i32 %i.d, 0                      ; 2 uses
  %or.cond7 = select i1 %i.p, i1 %i.r, i1 false
  %.5 = select nsz i1 %or.cond7, double f0x4170000000000000, double %.4
  %i.s = icmp eq i32 %i.e, 1
  %or.cond9 = select i1 %i.s, i1 %i.r, i1 false
  %.6 = select nsz i1 %or.cond9, double 2.560000e+02, double %.5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load float, ptr %i.t, align 8, !tbaa !34
  %i.v = fpext nsz float %i.u to double
  %i.w = fmul nsz double %.6, %i.v                ; 3 uses
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11688
  %i.y = load i32, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %.not76 = icmp eq i32 %i.y, 0
  br i1 %.not76, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = sub nsw i32 32, %i.y
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = sitofp nsz i32 %i.aa to double
  %i.ac = fmul nsz double %i.w, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.7 = phi nsz double [ %i.ac, %bb.h ], [ %i.w, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %i.ad = fcmp nsz oeq double %.7, 0.000000e+00
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.a, align 8, !tbaa !24
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 0, ptr %i.ae, align 4, !tbaa !35
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  %4 = fdiv nsz double 1.000000e+00, %.7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %5 = insertelement <2 x double> poison, double %.7, i64 0
  %6 = insertelement <2 x double> %5, double %4, i64 1
  %7 = fptrunc <2 x double> %6 to <2 x float>     ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  store float %8, ptr %3, align 4, !tbaa !9
  store <2 x float> %7, ptr %i.af, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10240) %i.ah, i8 0, i64 10240, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.k ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr @filters, i64 %indvars.iv ; 5 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.am = sub nsw i32 %i.aj, %i.al
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 false)
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 20
  %i.aq = sext i32 %i.al to i64
  %.not78 = icmp sgt i64 %i.ap, %i.aq
  br i1 %.not78, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !40
  %i.at = load i32, ptr %i.a, align 8, !tbaa !24
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !41 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !42
  %.not91 = icmp eq i64 %indvars.iv, 15
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv94 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next95, %bb.o ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv94
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !25
  %i.be = fptrunc nsz double %i.bd to float
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv94
  store float %i.be, ptr %i.bf, align 4, !tbaa !31
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %i.aw
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !44

bb.p:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %cond = icmp eq i64 %indvars.iv.next, 15
  br i1 %cond, label %bb.q, label %bb.l, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !46
  %i.bi = sitofp nsz i32 %i.bh to double
  %i.bj = fmul nnan nsz double %i.bi, f0x40026BB1BBB55516
  %i.bk = fmul nnan nsz double %i.bj, 5.000000e-03
  %i.bl = tail call nnan nsz double @llvm.exp.f64(double %i.bk)
  %i.bm = fmul nnan nsz double %i.bl, 2.000000e+00
  %i.bn = tail call i32 @av_get_bytes_per_sample(i32 noundef %i.d) #9
  %i.bo = shl nsw i32 %i.bn, 3
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = uitofp nneg i32 %i.bp to double
  %i.br = fdiv nsz double %i.bm, %i.bq
  %i.bs = fsub nsz double 1.000000e+00, %i.br
  %i.bt = load float, ptr %i.ag, align 8, !tbaa !47
  %i.bu = fpext nsz float %i.bt to double
  %i.bv = fmul nsz double %i.bs, %i.bu
  %i.bw = fptrunc nsz double %i.bv to float
  store float %i.bw, ptr %i.ag, align 8, !tbaa !47
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !24
  %i.by = icmp sgt i32 %i.bx, 64
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4) #9
  store i32 3, ptr %i.a, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q, %bb.r, %bb.a, %bb.j
  %.072 = phi i32 [ -22, %bb.a ], [ 0, %bb.j ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %._crit_edge ]
  ret i32 %.072
}

declare i32 @av_get_packed_sample_fmt(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #3

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @swri_noise_shaping_int16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load float, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = icmp sgt i32 %4, 0
  %i.r = icmp sgt i32 %i.d, 2
  %i.s = fpext nsz float %i.k to double
  br i1 %i.q, label %.lr.ph91.us.preheader, label %._crit_edge97

.lr.ph91.us.preheader:                            ; preds = %.lr.ph96
  %i.t = add nsw i32 %i.d, -2
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add i32 %i.d, -3
  %i.w = and i32 %i.v, -4
  %i.x = add i32 %i.w, 4
  %wide.trip.count109 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph91.us

.lr.ph91.us:                                      ; preds = %.lr.ph91.us.preheader, %._crit_edge92.us
  %indvars.iv106 = phi i64 [ 0, %.lr.ph91.us.preheader ], [ %indvars.iv.next107, %._crit_edge92.us ] ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv106
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.n
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv106
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv106
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %indvars.iv106 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph91.us, %bb.d
  %indvars.iv103 = phi i64 [ 0, %.lr.ph91.us ], [ %indvars.iv.next104, %bb.d ] ; 4 uses
  %.18388.us = phi i32 [ %i.b, %.lr.ph91.us ], [ %i.bt, %bb.d ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv103
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !28
  %i.ai = sitofp i16 %i.ah to float
  %i.aj = fmul nsz float %i.f, %i.ai
  %i.ak = fpext nsz float %i.aj to double         ; 2 uses
  br i1 %i.r, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.al = sext i32 %.18388.us to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.af, i64 %i.al
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %.086.us = phi double [ %i.ak, %.lr.ph.us.preheader ], [ %i.bg, %.lr.ph.us ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv ; 4 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !31
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %i.ao = load float, ptr %gep, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !31
  %i.ar = getelementptr i8, ptr %gep, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = fmul nsz float %i.aq, %i.as
  %i.au = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !31
  %i.ax = getelementptr i8, ptr %gep, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !31
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.ay, float %i.au)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !31
  %i.bc = getelementptr i8, ptr %gep, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !31
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %i.az)
  %i.bf = fpext nsz float %i.be to double
  %i.bg = fsub nsz double %.086.us, %i.bf         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.bh, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !52

._crit_edge.us:                                   ; preds = %.lr.ph.us, %bb.b
  %.080.lcssa.us = phi i32 [ 0, %bb.b ], [ %i.x, %.lr.ph.us ] ; 3 uses
  %.0.lcssa.us = phi double [ %i.ak, %bb.b ], [ %i.bg, %.lr.ph.us ] ; 2 uses
  %i.bi = icmp slt i32 %.080.lcssa.us, %i.d
  br i1 %i.bi, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.us
  %i.bj = zext nneg i32 %.080.lcssa.us to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !31
  %i.bm = add nsw i32 %.080.lcssa.us, %.18388.us
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !31
  %i.bq = fmul nsz float %i.bl, %i.bp
  %i.br = fpext nsz float %i.bq to double
  %i.bs = fsub nsz double %.0.lcssa.us, %i.br
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.us
  %.1.us = phi nsz double [ %i.bs, %bb.c ], [ %.0.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.not.us = icmp eq i32 %.18388.us, 0
  %.v.us = select i1 %.not.us, i32 %i.d, i32 %.18388.us
  %i.bt = add nsw i32 %.v.us, -1                  ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv103
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !31
  %i.bw = fpext nsz float %i.bv to double
  %i.bx = fadd nsz double %.1.us, %i.bw
  %i.by = tail call nsz double @llvm.rint.f64(double %i.bx) ; 2 uses
  %i.bz = fsub nsz double %i.by, %.1.us
  %i.ca = fptrunc nsz double %i.bz to float       ; 2 uses
  %i.cb = sext i32 %i.bt to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cb
  store float %i.ca, ptr %i.cc, align 4, !tbaa !31
  %i.cd = add nsw i32 %i.bt, %i.d
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ce
  store float %i.ca, ptr %i.cf, align 4, !tbaa !31
  %i.cg = fmul nsz double %i.by, %i.s             ; 2 uses
  %i.ch = fcmp nsz ogt double %i.cg, 3.276700e+04
  %i.ci = select nsz i1 %i.ch, double 3.276700e+04, double %i.cg ; 2 uses
  %i.cj = fcmp nsz ogt double %i.ci, -3.276800e+04
  %i.ck = select i1 %i.cj, double %i.ci, double -3.276800e+04
  %i.cl = fptosi double %i.ck to i16
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv103
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !28
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge92.us, label %bb.b, !llvm.loop !53

._crit_edge92.us:                                 ; preds = %bb.d
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge97, label %.lr.ph91.us, !llvm.loop !54

._crit_edge97:                                    ; preds = %._crit_edge92.us, %.lr.ph96, %bb.a
  %.082.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph96 ], [ %i.bt, %._crit_edge92.us ]
  store i32 %.082.lcssa, ptr %i.a, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @swri_noise_shaping_int32(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load float, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 520 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.o = icmp sgt i32 %4, 0
  %i.p = icmp sgt i32 %i.d, 2
  %i.q = fpext nsz float %i.k to double
  br i1 %i.o, label %.lr.ph91.us.preheader, label %._crit_edge97

.lr.ph91.us.preheader:                            ; preds = %.lr.ph96
  %i.r = add nsw i32 %i.d, -2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i32 %i.d, -3
  %i.u = and i32 %i.t, -4
  %i.v = add i32 %i.u, 4
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph91.us

.lr.ph91.us:                                      ; preds = %.lr.ph91.us.preheader, %._crit_edge92.us
  %indvars.iv105 = phi i64 [ 0, %.lr.ph91.us.preheader ], [ %indvars.iv.next106, %._crit_edge92.us ] ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv105
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.y = load i32, ptr %i.l, align 4, !tbaa !50
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv105
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw [160 x i8], ptr %i.m, i64 %indvars.iv105 ; 4 uses
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph91.us, %bb.d
  %indvars.iv102 = phi i64 [ 0, %.lr.ph91.us ], [ %indvars.iv.next103, %bb.d ] ; 4 uses
  %.18388.us = phi i32 [ %i.ag, %.lr.ph91.us ], [ %i.bu, %bb.d ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv102
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = sitofp nsz i32 %i.ai to float
  %i.ak = fmul nsz float %i.f, %i.aj
  %i.al = fpext nsz float %i.ak to double         ; 2 uses
  br i1 %i.p, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.am = sext i32 %.18388.us to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.af, i64 %i.am
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %.086.us = phi double [ %i.al, %.lr.ph.us.preheader ], [ %i.bh, %.lr.ph.us ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv ; 4 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !31
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %i.ap = load float, ptr %gep, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31
  %i.as = getelementptr i8, ptr %gep, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !31
  %i.au = fmul nsz float %i.ar, %i.at
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.ap, float %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !31
  %i.ay = getelementptr i8, ptr %gep, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !31
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.az, float %i.av)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !31
  %i.bd = getelementptr i8, ptr %gep, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !31
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.be, float %i.ba)
  %i.bg = fpext nsz float %i.bf to double
  %i.bh = fsub nsz double %.086.us, %i.bg         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.bi, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !55

._crit_edge.us:                                   ; preds = %.lr.ph.us, %bb.b
  %.080.lcssa.us = phi i32 [ 0, %bb.b ], [ %i.v, %.lr.ph.us ] ; 3 uses
  %.0.lcssa.us = phi double [ %i.al, %bb.b ], [ %i.bh, %.lr.ph.us ] ; 2 uses
  %i.bj = icmp slt i32 %.080.lcssa.us, %i.d
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.us
  %i.bk = zext nneg i32 %.080.lcssa.us to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !31
  %i.bn = add nsw i32 %.080.lcssa.us, %.18388.us
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !31
  %i.br = fmul nsz float %i.bm, %i.bq
  %i.bs = fpext nsz float %i.br to double
  %i.bt = fsub nsz double %.0.lcssa.us, %i.bs
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.us
  %.1.us = phi nsz double [ %i.bt, %bb.c ], [ %.0.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.not.us = icmp eq i32 %.18388.us, 0
  %.v.us = select i1 %.not.us, i32 %i.d, i32 %.18388.us
  %i.bu = add nsw i32 %.v.us, -1                  ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv102
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !31
  %i.bx = fpext nsz float %i.bw to double
  %i.by = fadd nsz double %.1.us, %i.bx
  %i.bz = tail call nsz double @llvm.rint.f64(double %i.by) ; 2 uses
  %i.ca = fsub nsz double %i.bz, %.1.us
  %i.cb = fptrunc nsz double %i.ca to float       ; 2 uses
  %i.cc = sext i32 %i.bu to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cc
  store float %i.cb, ptr %i.cd, align 4, !tbaa !31
  %i.ce = add nsw i32 %i.bu, %i.d
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cf
  store float %i.cb, ptr %i.cg, align 4, !tbaa !31
  %i.ch = fmul nsz double %i.bz, %i.q             ; 2 uses
  %i.ci = fcmp nsz ogt double %i.ch, f0x41DFFFFFFFC00000
  %i.cj = select nsz i1 %i.ci, double f0x41DFFFFFFFC00000, double %i.ch ; 2 uses
  %i.ck = fcmp nsz ogt double %i.cj, f0xC1E0000000000000
  %i.cl = select i1 %i.ck, double %i.cj, double f0xC1E0000000000000
  %i.cm = fptosi double %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv102
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !30
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge92.us, label %bb.b, !llvm.loop !56

._crit_edge92.us:                                 ; preds = %bb.d
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.co = load i32, ptr %i.g, align 8, !tbaa !48
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next106, %i.cp
  br i1 %i.cq, label %.lr.ph91.us, label %._crit_edge97, !llvm.loop !57

._crit_edge97:                                    ; preds = %._crit_edge92.us, %.lr.ph96, %bb.a
  %.082.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph96 ], [ %i.bu, %._crit_edge92.us ]
  store i32 %.082.lcssa, ptr %i.a, align 4, !tbaa !35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @swri_noise_shaping_float(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load float, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.q = icmp sgt i32 %4, 0
  %i.r = add nsw i32 %i.d, -2
  %i.s = fpext nsz float %i.k to double           ; 2 uses
  %i.t = icmp sgt i32 %i.d, 0
  br i1 %i.q, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = icmp sgt i32 %i.d, 2
  br i1 %i.u, label %.lr.ph86.us.us.preheader, label %.lr.ph86.us.preheader

.lr.ph86.us.preheader:                            ; preds = %.lr.ph.split.us
  %wide.trip.count109 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph86.us

.lr.ph86.us.us.preheader:                         ; preds = %.lr.ph.split.us
  %i.v = zext nneg i32 %i.r to i64
  %i.w = add nuw i32 %i.d, 2147483645
  %i.x = and i32 %i.w, 2147483644
  %narrow = add nuw i32 %i.x, 4                   ; 3 uses
  %i.y = zext i32 %narrow to i64
  %wide.trip.count122 = zext nneg i32 %i.h to i64
  %wide.trip.count117 = zext nneg i32 %4 to i64
  %i.z = icmp slt i32 %narrow, %i.d
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y
  br label %.lr.ph86.us.us

.lr.ph86.us.us:                                   ; preds = %.lr.ph86.us.us.preheader, %._crit_edge87.split.us.us.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph86.us.us.preheader ], [ %indvars.iv.next120, %._crit_edge87.split.us.us.us ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv119
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.n
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv119
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %indvars.iv119 ; 4 uses
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %bb.d, %.lr.ph86.us.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %bb.d ], [ 0, %.lr.ph86.us.us ] ; 4 uses
  %.17983.us.us.us = phi i32 [ %i.bs, %bb.d ], [ %i.b, %.lr.ph86.us.us ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv114
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !31
  %i.al = fmul nsz float %i.f, %i.ak
  %i.am = fpext nsz float %i.al to double
  %i.an = sext i32 %.17983.us.us.us to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.an
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.b ], [ 0, %.lr.ph.us.us.us ] ; 3 uses
  %.081.us.us.us = phi double [ %i.bi, %bb.b ], [ %i.am, %.lr.ph.us.us.us ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv111 ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv111 ; 4 uses
  %i.aq = load float, ptr %gep, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = getelementptr i8, ptr %gep, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !31
  %i.av = fmul nsz float %i.as, %i.au
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !31
  %i.az = getelementptr i8, ptr %gep, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !31
  %i.be = getelementptr i8, ptr %gep, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !31
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bb)
  %i.bh = fpext nsz float %i.bg to double
  %i.bi = fsub nsz double %.081.us.us.us, %i.bh   ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next112, %i.v
  br i1 %i.bj, label %bb.b, label %._crit_edge.us.us.us, !llvm.loop !58

bb.c:                                             ; preds = %._crit_edge.us.us.us
  %i.bk = load float, ptr %i.aa, align 4, !tbaa !31
  %i.bl = add nsw i32 %narrow, %.17983.us.us.us
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !31
  %i.bp = fmul nsz float %i.bk, %i.bo
  %i.bq = fpext nsz float %i.bp to double
  %i.br = fsub nsz double %i.bi, %i.bq
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.us.us, %bb.c
  %.1.us.us.us = phi nsz double [ %i.br, %bb.c ], [ %i.bi, %._crit_edge.us.us.us ] ; 2 uses
  %.not.us.us.us = icmp eq i32 %.17983.us.us.us, 0
  %.v.us.us.us = select i1 %.not.us.us.us, i32 %i.d, i32 %.17983.us.us.us
  %i.bs = add nsw i32 %.v.us.us.us, -1            ; 4 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv114
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !31
  %i.bv = fpext nsz float %i.bu to double
  %i.bw = fadd nsz double %.1.us.us.us, %i.bv
  %i.bx = tail call nsz double @llvm.rint.f64(double %i.bw) ; 2 uses
  %i.by = fsub nsz double %i.bx, %.1.us.us.us
  %i.bz = fptrunc nsz double %i.by to float       ; 2 uses
  %i.ca = sext i32 %i.bs to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ca
  store float %i.bz, ptr %i.cb, align 4, !tbaa !31
  %i.cc = add nsw i32 %i.bs, %i.d
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cd
  store float %i.bz, ptr %i.ce, align 4, !tbaa !31
  %i.cf = fmul nsz double %i.bx, %i.s
  %i.cg = fptrunc nsz double %i.cf to float
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv114
  store float %i.cg, ptr %i.ch, align 4, !tbaa !31
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge87.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !59

._crit_edge.us.us.us:                             ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %bb.d

._crit_edge87.split.us.us.us:                     ; preds = %bb.d
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge, label %.lr.ph86.us.us, !llvm.loop !60

.lr.ph86.us:                                      ; preds = %.lr.ph86.us.preheader, %._crit_edge87.split.us95
  %indvars.iv106 = phi i64 [ 0, %.lr.ph86.us.preheader ], [ %indvars.iv.next107, %._crit_edge87.split.us95 ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv106
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !51
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.n
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv106
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv106
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %indvars.iv106 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph86.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph86.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.17983.us91 = phi i32 [ %i.b, %.lr.ph86.us ], [ %i.db, %bb.g ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !31
  %i.cs = fmul nsz float %i.f, %i.cr
  %i.ct = fpext nsz float %i.cs to double         ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = load float, ptr %i.p, align 8, !tbaa !31
  %i.cv = sext i32 %.17983.us91 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !31
  %i.cy = fmul nsz float %i.cu, %i.cx
  %i.cz = fpext nsz float %i.cy to double
  %i.da = fsub nsz double %i.ct, %i.cz
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.us92 = phi nsz double [ %i.da, %bb.f ], [ %i.ct, %bb.e ] ; 2 uses
  %.not.us93 = icmp eq i32 %.17983.us91, 0
  %.v.us94 = select i1 %.not.us93, i32 %i.d, i32 %.17983.us91
  %i.db = add nsw i32 %.v.us94, -1                ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !31
  %i.de = fpext nsz float %i.dd to double
  %i.df = fadd nsz double %.1.us92, %i.de
  %i.dg = tail call nsz double @llvm.rint.f64(double %i.df) ; 2 uses
  %i.dh = fsub nsz double %i.dg, %.1.us92
  %i.di = fptrunc nsz double %i.dh to float       ; 2 uses
  %i.dj = sext i32 %i.db to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dj
  store float %i.di, ptr %i.dk, align 4, !tbaa !31
  %i.dl = add nsw i32 %i.db, %i.d
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dm
  store float %i.di, ptr %i.dn, align 4, !tbaa !31
  %i.do = fmul nsz double %i.dg, %i.s
  %i.dp = fptrunc nsz double %i.do to float
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  store float %i.dp, ptr %i.dq, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge87.split.us95, label %bb.e, !llvm.loop !59

._crit_edge87.split.us95:                         ; preds = %bb.g
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph86.us, !llvm.loop !60

._crit_edge:                                      ; preds = %._crit_edge87.split.us95, %._crit_edge87.split.us.us.us, %.lr.ph, %bb.a
  %.078.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph ], [ %i.bs, %._crit_edge87.split.us.us.us ], [ %i.db, %._crit_edge87.split.us95 ]
  store i32 %.078.lcssa, ptr %i.a, align 4, !tbaa !35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @swri_noise_shaping_double(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load float, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.q = icmp sgt i32 %4, 0
  %i.r = fpext nsz float %i.i to double           ; 2 uses
  %i.s = add nsw i32 %i.d, -2
  %i.t = fpext nsz float %i.k to double           ; 2 uses
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.q, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = icmp sgt i32 %i.d, 2
  br i1 %i.v, label %.lr.ph86.us.us.preheader, label %.lr.ph86.us.preheader

.lr.ph86.us.preheader:                            ; preds = %.lr.ph.split.us
  %wide.trip.count109 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph86.us

.lr.ph86.us.us.preheader:                         ; preds = %.lr.ph.split.us
  %i.w = zext nneg i32 %i.s to i64
  %i.x = add nuw i32 %i.d, 2147483645
  %i.y = and i32 %i.x, 2147483644
  %narrow = add nuw i32 %i.y, 4                   ; 3 uses
  %i.z = zext i32 %narrow to i64
  %wide.trip.count122 = zext nneg i32 %i.f to i64
  %wide.trip.count117 = zext nneg i32 %4 to i64
  %i.aa = icmp slt i32 %narrow, %i.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.z
  br label %.lr.ph86.us.us

.lr.ph86.us.us:                                   ; preds = %.lr.ph86.us.us.preheader, %._crit_edge87.split.us.us.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph86.us.us.preheader ], [ %indvars.iv.next120, %._crit_edge87.split.us.us.us ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv119
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.n
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv119
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %indvars.iv119 ; 4 uses
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %bb.d, %.lr.ph86.us.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %bb.d ], [ 0, %.lr.ph86.us.us ] ; 4 uses
  %.17983.us.us.us = phi i32 [ %i.bs, %bb.d ], [ %i.b, %.lr.ph86.us.us ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv114
  %i.al = load double, ptr %i.ak, align 8, !tbaa !25
  %i.am = fmul nsz double %i.al, %i.r
  %i.an = sext i32 %.17983.us.us.us to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.aj, i64 %i.an
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.b ], [ 0, %.lr.ph.us.us.us ] ; 3 uses
  %.081.us.us.us = phi double [ %i.bi, %bb.b ], [ %i.am, %.lr.ph.us.us.us ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv111 ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv111 ; 4 uses
  %i.aq = load float, ptr %gep, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = getelementptr i8, ptr %gep, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !31
  %i.av = fmul nsz float %i.as, %i.au
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !31
  %i.az = getelementptr i8, ptr %gep, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !31
  %i.be = getelementptr i8, ptr %gep, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !31
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bb)
  %i.bh = fpext nsz float %i.bg to double
  %i.bi = fsub nsz double %.081.us.us.us, %i.bh   ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next112, %i.w
  br i1 %i.bj, label %bb.b, label %._crit_edge.us.us.us, !llvm.loop !61

bb.c:                                             ; preds = %._crit_edge.us.us.us
  %i.bk = load float, ptr %i.ab, align 4, !tbaa !31
  %i.bl = add nsw i32 %narrow, %.17983.us.us.us
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !31
  %i.bp = fmul nsz float %i.bk, %i.bo
  %i.bq = fpext nsz float %i.bp to double
  %i.br = fsub nsz double %i.bi, %i.bq
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.us.us, %bb.c
  %.1.us.us.us = phi nsz double [ %i.br, %bb.c ], [ %i.bi, %._crit_edge.us.us.us ] ; 2 uses
  %.not.us.us.us = icmp eq i32 %.17983.us.us.us, 0
  %.v.us.us.us = select i1 %.not.us.us.us, i32 %i.d, i32 %.17983.us.us.us
  %i.bs = add nsw i32 %.v.us.us.us, -1            ; 4 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv114
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !31
  %i.bv = fpext nsz float %i.bu to double
  %i.bw = fadd nsz double %.1.us.us.us, %i.bv
  %i.bx = tail call nsz double @llvm.rint.f64(double %i.bw) ; 2 uses
  %i.by = fsub nsz double %i.bx, %.1.us.us.us
  %i.bz = fptrunc nsz double %i.by to float       ; 2 uses
  %i.ca = sext i32 %i.bs to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ca
  store float %i.bz, ptr %i.cb, align 4, !tbaa !31
  %i.cc = add nsw i32 %i.bs, %i.d
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.cd
  store float %i.bz, ptr %i.ce, align 4, !tbaa !31
  %i.cf = fmul nsz double %i.bx, %i.t
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv114
  store double %i.cf, ptr %i.cg, align 8, !tbaa !25
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge87.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !62

._crit_edge.us.us.us:                             ; preds = %bb.b
  br i1 %i.aa, label %bb.c, label %bb.d

._crit_edge87.split.us.us.us:                     ; preds = %bb.d
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge, label %.lr.ph86.us.us, !llvm.loop !63

.lr.ph86.us:                                      ; preds = %.lr.ph86.us.preheader, %._crit_edge87.split.us95
  %indvars.iv106 = phi i64 [ 0, %.lr.ph86.us.preheader ], [ %indvars.iv.next107, %._crit_edge87.split.us95 ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv106
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !51
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.n
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv106
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv106
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %indvars.iv106 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph86.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph86.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.17983.us91 = phi i32 [ %i.b, %.lr.ph86.us ], [ %i.cz, %bb.g ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !25
  %i.cr = fmul nsz double %i.cq, %i.r             ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cs = load float, ptr %i.p, align 8, !tbaa !31
  %i.ct = sext i32 %.17983.us91 to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !31
  %i.cw = fmul nsz float %i.cs, %i.cv
  %i.cx = fpext nsz float %i.cw to double
  %i.cy = fsub nsz double %i.cr, %i.cx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.us92 = phi nsz double [ %i.cy, %bb.f ], [ %i.cr, %bb.e ] ; 2 uses
  %.not.us93 = icmp eq i32 %.17983.us91, 0
  %.v.us94 = select i1 %.not.us93, i32 %i.d, i32 %.17983.us91
  %i.cz = add nsw i32 %.v.us94, -1                ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.db = load float, ptr %i.da, align 4, !tbaa !31
  %i.dc = fpext nsz float %i.db to double
  %i.dd = fadd nsz double %.1.us92, %i.dc
  %i.de = tail call nsz double @llvm.rint.f64(double %i.dd) ; 2 uses
  %i.df = fsub nsz double %i.de, %.1.us92
  %i.dg = fptrunc nsz double %i.df to float       ; 2 uses
  %i.dh = sext i32 %i.cz to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.dh
  store float %i.dg, ptr %i.di, align 4, !tbaa !31
  %i.dj = add nsw i32 %i.cz, %i.d
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.dk
  store float %i.dg, ptr %i.dl, align 4, !tbaa !31
  %i.dm = fmul nsz double %i.de, %i.t
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  store double %i.dm, ptr %i.dn, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge87.split.us95, label %bb.e, !llvm.loop !62

._crit_edge87.split.us95:                         ; preds = %bb.g
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph86.us, !llvm.loop !63

._crit_edge:                                      ; preds = %._crit_edge87.split.us95, %._crit_edge87.split.us.us.us, %.lr.ph, %bb.a
  %.078.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph ], [ %i.bs, %._crit_edge87.split.us.us.us ], [ %i.cz, %._crit_edge87.split.us95 ]
  store i32 %.078.lcssa, ptr %i.a, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !14, i64 260}
!10 = !{!"SwrContext", !11, i64 0, !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 64, !13, i64 88, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !14, i64 128, !14, i64 132, !14, i64 136, !14, i64 140, !6, i64 144, !15, i64 152, !6, i64 160, !13, i64 168, !13, i64 192, !13, i64 216, !6, i64 240, !6, i64 244, !16, i64 248, !6, i64 11696, !6, i64 11700, !6, i64 11704, !6, i64 11708, !19, i64 11712, !6, i64 11720, !19, i64 11728, !19, i64 11736, !6, i64 11744, !14, i64 11748, !14, i64 11752, !14, i64 11756, !14, i64 11760, !14, i64 11764, !20, i64 11768, !6, i64 11776, !6, i64 11780, !6, i64 11784, !17, i64 11792, !17, i64 12336, !17, i64 12880, !17, i64 13424, !17, i64 13968, !17, i64 14512, !17, i64 15056, !17, i64 15600, !6, i64 16144, !6, i64 16148, !6, i64 16152, !6, i64 16156, !20, i64 16160, !20, i64 16168, !6, i64 16176, !19, i64 16184, !21, i64 16192, !21, i64 16200, !21, i64 16208, !22, i64 16216, !23, i64 16224, !7, i64 16232, !7, i64 49000, !7, i64 65384, !18, i64 65392, !7, i64 65400, !18, i64 65408, !7, i64 65416, !12, i64 69576, !12, i64 69584, !12, i64 69592, !12, i64 69600, !12, i64 69608}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!14 = !{!"float", !7, i64 0}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!"DitherContext", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 12, !6, i64 16, !14, i64 20, !14, i64 24, !6, i64 28, !7, i64 32, !7, i64 112, !17, i64 10352, !17, i64 10896, !6, i64 11440}
!17 = !{!"AudioData", !7, i64 0, !18, i64 512, !6, i64 520, !6, i64 524, !6, i64 528, !6, i64 532, !6, i64 536}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!"p1 _ZTS12AudioConvert", !12, i64 0}
!22 = !{!"p1 _ZTS15ResampleContext", !12, i64 0}
!23 = !{!"p1 _ZTS9Resampler", !12, i64 0}
!24 = !{!10, !6, i64 248}
!25 = !{!19, !19, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !7, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{!14, !14, i64 0}
!32 = distinct !{!32, !27}
!33 = !{!10, !6, i64 11688}
!34 = !{!10, !14, i64 256}
!35 = !{!10, !6, i64 276}
!36 = !{!10, !6, i64 116}
!37 = !{!38, !6, i64 0}
!38 = !{!"", !6, i64 0, !6, i64 4, !20, i64 8, !6, i64 16, !39, i64 24, !6, i64 32}
!39 = !{!"p1 double", !12, i64 0}
!40 = !{!38, !6, i64 32}
!41 = !{!38, !20, i64 8}
!42 = !{!10, !6, i64 264}
!43 = !{!38, !39, i64 24}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = !{!38, !6, i64 16}
!47 = !{!10, !14, i64 272}
!48 = !{!17, !6, i64 520}
!49 = !{!10, !14, i64 268}
!50 = !{!10, !6, i64 252}
!51 = !{!18, !18, i64 0}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
end_hunk_0
