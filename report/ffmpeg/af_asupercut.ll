Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_asupercut?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_channels_fltp:bb.a
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1
  %i.bq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bn, <2 x float> %i.bp) ; 3 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.bs = fmul nsz float %i.br, %i.ax
  %i.bt = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x float> %i.bu, float %i.bs, i64 1
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bt, <2 x float> %i.bv)
  store <2 x float> %i.bw, ptr %i.bd, align 4, !tbaa !65
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv71
  store float %i.br, ptr %i.bx, align 4, !tbaa !65
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge63, label %.lr.ph, !llvm.loop !63

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.bz = load float, ptr %i.bd, align 4, !tbaa !65
  %i.ca = load float, ptr %i.be, align 4, !tbaa !65
  %i.cb = load float, ptr %i.by, align 4, !tbaa !65 ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.ca, i64 1
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.az, <2 x float> %i.cf) ; 3 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.ci = fmul nsz float %i.ch, %i.ax
  %i.cj = insertelement <2 x float> %i.cg, float %i.cb, i64 1
  %i.ck = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x float> %i.ck, float %i.ci, i64 1
  %i.cm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.cj, <2 x float> %i.cl)
  store <2 x float> %i.cm, ptr %i.bd, align 4, !tbaa !65
  store float %i.ch, ptr %i.by, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @filter_channels_dblp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !42     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i                      ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i                      ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp slt i32 %i.k, %i.p
  br i1 %i.s, label %.lr.ph66, label %._crit_edge67.split

.lr.ph66:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br i1 %i.ab, label %.lr.ph66.split, label %._crit_edge67.split

.lr.ph66.split:                                   ; preds = %.lr.ph66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !40 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62.preheader, label %._crit_edge67.split

.lr.ph62.preheader:                               ; preds = %.lr.ph66.split
  %sext = shl i64 %i.j, 32
  %i.ak = ashr exact i64 %sext, 32
  %sext89 = shl i64 %i.o, 32
  %wide.trip.count84 = ashr exact i64 %sext89, 32
  %wide.trip.count79 = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext nneg i32 %i.ai to i64
  %wide.trip.count74 = zext nneg i32 %i.ai to i64
  br label %.lr.ph62

._crit_edge67.split:                              ; preds = %._crit_edge63, %.lr.ph66, %.lr.ph66.split, %bb.a
  ret i32 0

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge63
  %indvars.iv81 = phi i64 [ %i.ak, %.lr.ph62.preheader ], [ %indvars.iv.next82, %._crit_edge63 ] ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv81
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.an = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv81
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv81
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  br label %.lr.ph

._crit_edge63:                                    ; preds = %._crit_edge
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge67.split, label %.lr.ph62, !llvm.loop !66

.lr.ph:                                           ; preds = %.lr.ph62, %._crit_edge
  %indvars.iv76 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next77, %._crit_edge ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %indvars.iv76 ; 4 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !54 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load <2 x double>, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !55 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv76, 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx ; 4 uses
  %.not = icmp eq i64 %indvars.iv76, 0
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ba = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ay, i64 1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.bc = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv71
  %i.bf = load double, ptr %i.be, align 8, !tbaa !52
  %i.bg = fmul nsz double %i.r, %i.bf             ; 2 uses
  %i.bh = load <2 x double>, ptr %i.az, align 8, !tbaa !52
  %i.bi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.aw, <2 x double> %i.bh) ; 3 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bm = fmul nsz double %i.au, %i.bl
  %i.bn = insertelement <2 x double> %i.bk, double %i.bg, i64 1
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = insertelement <2 x double> %i.bo, double %i.bm, i64 1
  %i.bq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bn, <2 x double> %i.bp)
  store <2 x double> %i.bq, ptr %i.az, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv71
  store double %i.bl, ptr %i.br, align 8, !tbaa !52
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge63, label %.lr.ph, !llvm.loop !68

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.az, align 8, !tbaa !52
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.aw, <2 x double> %i.bu) ; 3 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0 ; 2 uses
  %i.bz = fmul nsz double %i.au, %i.by
  %i.ca = insertelement <2 x double> %i.bx, double %i.bt, i64 1
  %i.cb = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ca, <2 x double> %i.cc)
  store <2 x double> %i.cd, ptr %i.az, align 8, !tbaa !52
  store double %i.by, ptr %i.bs, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !67
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_coeffs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !83
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = fdiv nsz double %i.h, %i.k               ; 4 uses
  %i.m = fmul nsz double %i.l, f0x400921FB54442D18
  %i.n = tail call nsz double @llvm.tan.f64(double %i.m) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.o = fcmp nsz oge double %i.l, 5.000000e-01   ; 2 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.p, ptr %i.q, align 8, !tbaa !34
  br i1 %i.o, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86   ; 4 uses
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(8) @.str.2) #10
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !87   ; 8 uses
  %i.x = sdiv i32 %i.w, 2
  %i.y = and i32 %i.w, 1                          ; 3 uses
  %i.z = add nsw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !49
  %i.ab = icmp sgt i32 %i.w, 1                    ; 2 uses
  br i1 %i.ab, label %.lr.ph.i, label %calc_q_factors.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.ac = lshr i32 %i.w, 1
  %i.ad = uitofp nneg i32 %i.w to double          ; 2 uses
  %i.ae = shl nuw i32 %i.w, 1
  %i.af = uitofp i32 %i.ae to double              ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ac to i64 ; 3 uses
  %min.iters.check67 = icmp ult i32 %i.w, 4
  br i1 %min.iters.check67, label %scalar.ph66.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i
  %n.vec69 = and i64 %wide.trip.count.i, 1073741822 ; 3 uses
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.af, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph68
  %index75 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body74 ] ; 2 uses
  %vec.ind76 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph68 ], [ %vec.ind.next78, %vector.body74 ] ; 2 uses
  %i.ag = trunc <2 x i64> %vec.ind76 to <2 x i32>
  %i.ah = add <2 x i32> %i.ag, splat (i32 1)
  %i.ai = uitofp nneg <2 x i32> %i.ah to <2 x double>
  %i.aj = tail call nnan nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> splat (double 2.000000e+00), <2 x double> %broadcast.splat71)
  %i.ak = fadd nnan nsz <2 x double> %i.aj, splat (double -1.000000e+00)
  %i.al = fmul nnan nsz <2 x double> %i.ak, splat (double f0x400921FB54442D18)
  %i.am = fdiv nsz <2 x double> %i.al, %broadcast.splat73
  %i.an = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.am)
  %i.ao = fmul nsz <2 x double> %i.an, splat (double -2.000000e+00)
  %i.ap = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index75
  store <2 x double> %i.ap, ptr %i.aq, align 16, !tbaa !52
  %index.next77 = add nuw i64 %index75, 2         ; 2 uses
  %vec.ind.next78 = add nuw nsw <2 x i64> %vec.ind76, splat (i64 2)
  %i.ar = icmp eq i64 %index.next77, %n.vec69
  br i1 %i.ar, label %middle.block79, label %vector.body74, !llvm.loop !69

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %n.vec69, %wide.trip.count.i
  br i1 %cmp.n80, label %calc_q_factors.exit, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %.lr.ph.i, %middle.block79
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec69, %middle.block79 ]
  br label %scalar.ph66

scalar.ph66:                                      ; preds = %scalar.ph66.preheader, %scalar.ph66
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph66 ], [ %indvars.iv.i.ph, %scalar.ph66.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.at = uitofp nsz nneg i32 %i.as to double
  %i.au = tail call nnan nsz double @llvm.fmuladd.f64(double %i.at, double 2.000000e+00, double %i.ad)
  %i.av = fadd nnan nsz double %i.au, -1.000000e+00
  %i.aw = fmul nnan nsz double %i.av, f0x400921FB54442D18
  %i.ax = fdiv nsz double %i.aw, %i.af
  %i.ay = tail call nsz double @llvm.cos.f64(double %i.ax)
  %i.az = fmul nsz double %i.ay, -2.000000e+00
  %i.ba = fdiv nsz double 1.000000e+00, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !52
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %calc_q_factors.exit, label %scalar.ph66, !llvm.loop !70

calc_q_factors.exit:                              ; preds = %scalar.ph66, %middle.block79, %bb.c
  %.not224 = icmp eq i32 %i.y, 0
  br i1 %.not224, label %bb.e, label %bb.d

bb.d:                                             ; preds = %calc_q_factors.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bd = fmul nsz double %i.n, 2.000000e+00      ; 2 uses
  %i.be = fadd nsz double %i.bd, 2.000000e+00     ; 2 uses
  %i.bf = fdiv nsz double 2.000000e+00, %i.be     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !90
  %i.bh = fneg nsz double %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double %i.bh, ptr %i.bi, align 8, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !55
  %i.bk = fsub nsz double 2.000000e+00, %i.bd
  %i.bl = fdiv nsz double %i.bk, %i.be
  store double %i.bl, ptr %i.bc, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %calc_q_factors.exit
  br i1 %i.ab, label %.lr.ph254, label %.loopexit

.lr.ph254:                                        ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.n, double -1.000000e+00)
  %i.bp = fmul nsz double %i.bo, -2.000000e+00    ; 2 uses
  %i.bq = and i32 %i.w, 1
  %i.br = zext nneg i32 %i.bq to i64              ; 5 uses
  %i.bs = zext nneg i32 %i.y to i64               ; 2 uses
  %i.bt = zext nneg i32 %i.z to i64               ; 2 uses
  %i.bu = add nuw nsw i64 %i.br, 1
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bt)
  %i.bw = sub nsw i64 %i.bv, %i.br                ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.bw, 2
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph254
  %n.vec85 = and i64 %i.bw, -2                    ; 3 uses
  %i.bx = or disjoint i64 %n.vec85, %i.br
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph84
  %index91 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body90 ] ; 2 uses
  %i.by = or disjoint i64 %index91, %i.br         ; 2 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.by
  %i.ca = sub nuw nsw i64 %i.by, %i.bs
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ca
  %wide.load92 = load <2 x double>, ptr %i.cb, align 8, !tbaa !52
  %i.cc = fdiv nsz <2 x double> %broadcast.splat89, %wide.load92 ; 2 uses
  %i.cd = fadd nsz <2 x double> %i.cc, splat (double 1.000000e+00)
  %i.ce = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %broadcast.splat89, <2 x double> %i.cd)
  %i.cf = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ce ; 5 uses
  %i.cg = fmul nsz <2 x double> %i.cf, splat (double -2.000000e+00)
  %i.ch = fmul nsz <2 x double> %broadcast.splat87, %i.cf
  %i.ci = fsub nsz <2 x double> splat (double 1.000000e+00), %i.cc
  %i.cj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %broadcast.splat89, <2 x double> %i.ci)
  %i.ck = fneg nsz <2 x double> %i.cj
  %i.cl = fmul nsz <2 x double> %i.cf, %i.ck
  %i.cm = shufflevector <2 x double> %i.ch, <2 x double> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cn = shufflevector <2 x double> %i.cf, <2 x double> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shufflevector <4 x double> %i.cm, <4 x double> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = shufflevector <2 x double> %i.cf, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec93 = shufflevector <8 x double> %i.co, <8 x double> %i.cp, <10 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 1, i32 3, i32 5, i32 7, i32 9>
  store <10 x double> %interleaved.vec93, ptr %i.bz, align 8, !tbaa !52
  %index.next94 = add nuw i64 %index91, 2         ; 2 uses
  %i.cq = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.cq, label %middle.block95, label %vector.body90, !llvm.loop !71

middle.block95:                                   ; preds = %vector.body90
  %cmp.n96 = icmp eq i64 %i.bw, %n.vec85
  br i1 %cmp.n96, label %.loopexit, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph254, %middle.block95
  %indvars.iv270.ph = phi i64 [ %i.br, %.lr.ph254 ], [ %i.bx, %middle.block95 ]
  %i.cr = insertelement <2 x double> poison, double %i.n, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = insertelement <4 x double> <double poison, double poison, double 1.000000e+00, double -2.000000e+00>, double %i.bp, i64 0
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %scalar.ph82 ], [ %indvars.iv270.ph, %scalar.ph82.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %indvars.iv270 ; 2 uses
  %i.cv = sub nuw nsw i64 %indvars.iv270, %i.bs
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !52
  %i.cy = fdiv nsz double %i.n, %i.cx             ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.da = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cy, i64 0
  %i.db = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.cy, i64 1
  %i.dc = fsub nsz <2 x double> %i.da, %i.db
  %i.dd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cs, <2 x double> %i.dc) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = fdiv nsz double 1.000000e+00, %i.de     ; 2 uses
  store double %i.df, ptr %i.cz, align 8, !tbaa !55
  %i.dg = fneg nsz <2 x double> %i.dd
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x double> %i.ct, <4 x double> %i.dh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.dj = insertelement <4 x double> poison, double %i.df, i64 0
  %i.dk = shufflevector <4 x double> %i.dj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dl = fmul nsz <4 x double> %i.di, %i.dk
  store <4 x double> %i.dl, ptr %i.cu, align 8, !tbaa !52
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.dm = icmp samesign ult i64 %indvars.iv.next271, %i.bt
  br i1 %i.dm, label %scalar.ph82, label %.loopexit, !llvm.loop !72

bb.f:                                             ; preds = %bb.b
  %i.dn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(10) @.str) #10
  %.not225 = icmp eq i32 %i.dn, 0
  br i1 %.not225, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !87 ; 8 uses
  %i.dq = sdiv i32 %i.dp, 2
  %i.dr = and i32 %i.dp, 1                        ; 3 uses
  %i.ds = add nsw i32 %i.dq, %i.dr                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !49
  %i.du = icmp sgt i32 %i.dp, 1                   ; 2 uses
  br i1 %i.du, label %.lr.ph.i237, label %calc_q_factors.exit242

.lr.ph.i237:                                      ; preds = %bb.g
  %i.dv = lshr i32 %i.dp, 1
  %i.dw = uitofp nneg i32 %i.dp to double         ; 2 uses
  %i.dx = shl nuw i32 %i.dp, 1
  %i.dy = uitofp i32 %i.dx to double              ; 2 uses
  %wide.trip.count.i238 = zext nneg i32 %i.dv to i64 ; 3 uses
  %min.iters.check37 = icmp ult i32 %i.dp, 4
  br i1 %min.iters.check37, label %scalar.ph36.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph.i237
  %n.vec39 = and i64 %wide.trip.count.i238, 1073741822 ; 3 uses
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph38
  %index45 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body44 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph38 ], [ %vec.ind.next, %vector.body44 ] ; 2 uses
  %i.dz = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ea = add <2 x i32> %i.dz, splat (i32 1)
  %i.eb = uitofp nneg <2 x i32> %i.ea to <2 x double>
  %i.ec = tail call nnan nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> splat (double 2.000000e+00), <2 x double> %broadcast.splat41)
  %i.ed = fadd nnan nsz <2 x double> %i.ec, splat (double -1.000000e+00)
  %i.ee = fmul nnan nsz <2 x double> %i.ed, splat (double f0x400921FB54442D18)
  %i.ef = fdiv nsz <2 x double> %i.ee, %broadcast.splat43
  %i.eg = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.ef)
  %i.eh = fmul nsz <2 x double> %i.eg, splat (double -2.000000e+00)
  %i.ei = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index45
  store <2 x double> %i.ei, ptr %i.ej, align 16, !tbaa !52
  %index.next46 = add nuw i64 %index45, 2         ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ek = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.ek, label %middle.block47, label %vector.body44, !llvm.loop !73

middle.block47:                                   ; preds = %vector.body44
  %cmp.n48 = icmp eq i64 %n.vec39, %wide.trip.count.i238
  br i1 %cmp.n48, label %calc_q_factors.exit242, label %scalar.ph36.preheader

scalar.ph36.preheader:                            ; preds = %.lr.ph.i237, %middle.block47
  %indvars.iv.i239.ph = phi i64 [ 0, %.lr.ph.i237 ], [ %n.vec39, %middle.block47 ]
  br label %scalar.ph36

scalar.ph36:                                      ; preds = %scalar.ph36.preheader, %scalar.ph36
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240, %scalar.ph36 ], [ %indvars.iv.i239.ph, %scalar.ph36.preheader ] ; 2 uses
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i239, 1 ; 3 uses
  %i.el = trunc nuw nsw i64 %indvars.iv.next.i240 to i32
  %i.em = uitofp nsz nneg i32 %i.el to double
  %i.en = tail call nnan nsz double @llvm.fmuladd.f64(double %i.em, double 2.000000e+00, double %i.dw)
  %i.eo = fadd nnan nsz double %i.en, -1.000000e+00
  %i.ep = fmul nnan nsz double %i.eo, f0x400921FB54442D18
  %i.eq = fdiv nsz double %i.ep, %i.dy
  %i.er = tail call nsz double @llvm.cos.f64(double %i.eq)
  %i.es = fmul nsz double %i.er, -2.000000e+00
  %i.et = fdiv nsz double 1.000000e+00, %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i239
  store double %i.et, ptr %i.eu, align 8, !tbaa !52
  %exitcond.not.i241 = icmp eq i64 %indvars.iv.next.i240, %wide.trip.count.i238
  br i1 %exitcond.not.i241, label %calc_q_factors.exit242, label %scalar.ph36, !llvm.loop !74

calc_q_factors.exit242:                           ; preds = %scalar.ph36, %middle.block47, %bb.g
  %.not226 = icmp eq i32 %i.dr, 0
  br i1 %.not226, label %bb.i, label %bb.h

bb.h:                                             ; preds = %calc_q_factors.exit242
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ew = fmul nsz double %i.n, 2.000000e+00      ; 3 uses
  %1 = fsub nsz double 2.000000e+00, %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %2 = fadd nsz double %i.ew, 2.000000e+00        ; 2 uses
  %3 = fdiv nsz double %i.ew, %2
  %4 = fdiv nsz double %1, %2
  store double %4, ptr %i.ev, align 8, !tbaa !56
  %5 = insertelement <4 x double> <double 0.000000e+00, double poison, double poison, double 0.000000e+00>, double %3, i64 1
  %6 = shufflevector <4 x double> %5, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x double> %6, ptr %i.ex, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %calc_q_factors.exit242
  br i1 %i.du, label %.lr.ph252, label %.loopexit

.lr.ph252:                                        ; preds = %bb.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ez = fmul nsz double %i.n, %i.n              ; 2 uses
  %i.fa = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.n, double -1.000000e+00)
  %i.fb = fmul nsz double %i.fa, -2.000000e+00    ; 2 uses
  %i.fc = and i32 %i.dp, 1
  %i.fd = zext nneg i32 %i.fc to i64              ; 5 uses
  %i.fe = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.ff = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.fg = add nuw nsw i64 %i.fd, 1
  %i.fh = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 %i.ff)
  %i.fi = sub nsw i64 %i.fh, %i.fd                ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.fi, 2
  br i1 %min.iters.check51, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph252
  %n.vec53 = and i64 %i.fi, -2                    ; 3 uses
  %i.fj = or disjoint i64 %n.vec53, %i.fd
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.fb, i64 0
  %broadcast.splat57 = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph52
  %index61 = phi i64 [ 0, %vector.ph52 ], [ %index.next62, %vector.body60 ] ; 2 uses
  %i.fk = or disjoint i64 %index61, %i.fd         ; 2 uses
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.ey, i64 %i.fk
  %i.fm = sub nuw nsw i64 %i.fk, %i.fe
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fm
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !52
  %i.fo = fdiv nsz <2 x double> %broadcast.splat59, %wide.load ; 2 uses
  %i.fp = fadd nsz <2 x double> %i.fo, splat (double 1.000000e+00)
  %i.fq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %broadcast.splat59, <2 x double> %i.fp)
  %i.fr = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.fq ; 3 uses
  %i.fs = fmul nsz <2 x double> %broadcast.splat55, %i.fr ; 3 uses
  %i.ft = fmul nsz <2 x double> %i.fs, splat (double 2.000000e+00)
  %i.fu = fmul nsz <2 x double> %broadcast.splat57, %i.fr
  %i.fv = fsub nsz <2 x double> splat (double 1.000000e+00), %i.fo
  %i.fw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %broadcast.splat59, <2 x double> %i.fv)
  %i.fx = fneg nsz <2 x double> %i.fw
  %i.fy = fmul nsz <2 x double> %i.fr, %i.fx
  %i.fz = shufflevector <2 x double> %i.fu, <2 x double> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ga = shufflevector <2 x double> %i.fs, <2 x double> %i.ft, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gb = shufflevector <4 x double> %i.fz, <4 x double> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gc = shufflevector <2 x double> %i.fs, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.gb, <8 x double> %i.gc, <10 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 1, i32 3, i32 5, i32 7, i32 9>
  store <10 x double> %interleaved.vec, ptr %i.fl, align 8, !tbaa !52
  %index.next62 = add nuw i64 %index61, 2         ; 2 uses
  %i.gd = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.gd, label %middle.block63, label %vector.body60, !llvm.loop !75

middle.block63:                                   ; preds = %vector.body60
  %cmp.n64 = icmp eq i64 %i.fi, %n.vec53
  br i1 %cmp.n64, label %.loopexit, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %.lr.ph252, %middle.block63
  %indvars.iv267.ph = phi i64 [ %i.fd, %.lr.ph252 ], [ %i.fj, %middle.block63 ]
  %i.ge = insertelement <2 x double> poison, double %i.n, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph50

scalar.ph50:                                      ; preds = %scalar.ph50.preheader, %scalar.ph50
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %scalar.ph50 ], [ %indvars.iv267.ph, %scalar.ph50.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %i.ey, i64 %indvars.iv267 ; 5 uses
  %i.gh = sub nuw nsw i64 %indvars.iv267, %i.fe
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !52
  %i.gk = fdiv nsz double %i.n, %i.gj             ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.go = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gk, i64 0
  %i.gp = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.gk, i64 1
  %i.gq = fsub nsz <2 x double> %i.go, %i.gp
  %i.gr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.gf, <2 x double> %i.gq) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = fdiv nsz double 1.000000e+00, %i.gs     ; 3 uses
  %i.gu = fmul nsz double %i.ez, %i.gt            ; 3 uses
  store double %i.gu, ptr %i.gl, align 8, !tbaa !90
  %i.gv = fmul nsz double %i.gu, 2.000000e+00
  store double %i.gv, ptr %i.gm, align 8, !tbaa !91
  store double %i.gu, ptr %i.gn, align 8, !tbaa !55
  %i.gw = fmul nsz double %i.fb, %i.gt
  store double %i.gw, ptr %i.gg, align 8, !tbaa !56
  %i.gx = extractelement <2 x double> %i.gr, i64 1
  %i.gy = fneg nsz double %i.gx
  %i.gz = fmul nsz double %i.gt, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store double %i.gz, ptr %i.ha, align 8, !tbaa !54
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.hb = icmp samesign ult i64 %indvars.iv.next268, %i.ff
  br i1 %i.hb, label %scalar.ph50, label %.loopexit, !llvm.loop !76

bb.j:                                             ; preds = %bb.f
  %i.hc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.4) #10
  %.not227 = icmp eq i32 %i.hc, 0
  br i1 %.not227, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hd = fmul nsz double %i.l, f0x401921FB54442D18 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !87 ; 2 uses
  %i.hg = sdiv i32 %i.hf, 2                       ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !49
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !92
  %i.hk = fmul nsz double %i.hj, 2.000000e+00
  %i.hl = fdiv nsz double %i.hd, %i.hk
  %i.hm = tail call nsz double @llvm.tan.f64(double %i.hl)
  %i.hn = fmul nsz double %i.hm, 2.000000e+00
  %i.ho = tail call nsz double @llvm.sin.f64(double %i.hd)
  %i.hp = fdiv nsz double %i.hn, %i.ho            ; 3 uses
  %i.hq = icmp sgt i32 %i.hf, 1
  br i1 %i.hq, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %bb.k
  %i.hr = sitofp nsz i32 %i.hg to double
  %i.hs = fmul nnan nsz double %i.hr, 2.000000e+00 ; 2 uses
  %i.ht = fmul nsz double %i.hp, 5.000000e-01     ; 4 uses
  %square = fmul nsz double %i.ht, %i.ht
  %i.hu = fadd nsz double %square, 1.000000e+00   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.hw = fmul nsz double %i.hd, 5.000000e-01
  %i.hx = tail call nsz double @llvm.tan.f64(double %i.hw) ; 3 uses
  %i.hy = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hz = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 2)
  %i.ia = add nsw i64 %i.hz, -1
  %i.ib = lshr i64 %i.ia, 1                       ; 2 uses
  %i.ic = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check17 = icmp eq i64 %i.ib, 0
  br i1 %min.iters.check17, label %scalar.ph16.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph250
  %n.vec19 = and i64 %i.ic, 9223372036854775806   ; 3 uses
  %i.id = shl nuw i64 %n.vec19, 1
  %broadcast.splatinsert20 = insertelement <2 x double> poison, double %i.hs, i64 0
  %broadcast.splat21 = shufflevector <2 x double> %broadcast.splatinsert20, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <2 x double> poison, double %i.ht, i64 0
  %broadcast.splat23 = shufflevector <2 x double> %broadcast.splatinsert22, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %i.hu, i64 0
  %broadcast.splat25 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %i.hx, i64 0
  %broadcast.splat27 = shufflevector <2 x double> %broadcast.splatinsert26, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph18
  %index31 = phi i64 [ 0, %vector.ph18 ], [ %index.next32, %vector.body30 ] ; 2 uses
  %i.ie = shl nuw i64 %index31, 1                 ; 4 uses
  %i.if = or disjoint i64 %i.ie, 1                ; 2 uses
  %i.ig = or disjoint i64 %i.ie, 3                ; 2 uses
  %i.ih = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %i.ii = insertelement <2 x i64> %i.ih, i64 %i.ig, i64 1
  %i.ij = trunc nuw nsw <2 x i64> %i.ii to <2 x i32>
  %i.ik = uitofp nneg <2 x i32> %i.ij to <2 x double>
  %i.il = fmul nnan nsz <2 x double> %i.ik, splat (double f0x400921FB54442D18)
  %i.im = fdiv nsz <2 x double> %i.il, %broadcast.splat21
  %i.in = tail call nsz <2 x double> @llvm.sin.v2f64(<2 x double> %i.im)
  %i.io = fmul nsz <2 x double> %i.in, splat (double 2.000000e+00) ; 2 uses
  %i.ip = fmul nsz <2 x double> %broadcast.splat29, %i.io ; 2 uses
  %i.iq = fmul nsz <2 x double> %i.ip, splat (double 5.000000e-01)
  %i.ir = fdiv nsz <2 x double> %broadcast.splat25, %i.iq ; 3 uses
  %i.is = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.ir, <2 x double> splat (double -1.000000e+00))
  %i.it = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.is)
  %i.iu = fadd nsz <2 x double> %i.ir, %i.it
  %i.iv = fdiv nsz <2 x double> %i.ip, %i.iu
  %i.iw = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.iv) ; 3 uses
  %i.ix = fmul nsz <2 x double> %broadcast.splat23, %i.io
  %i.iy = fdiv nsz <2 x double> %i.ix, %i.iw      ; 3 uses
  %i.iz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.iy, <2 x double> splat (double -1.000000e+00))
  %i.ja = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.iz)
  %i.jb = fadd nsz <2 x double> %i.iy, %i.ja      ; 4 uses
  %i.jc = fmul nsz <2 x double> %i.iw, splat (double 5.000000e-01) ; 3 uses
  %i.jd = fneg nsz <2 x double> %i.jc             ; 2 uses
  %i.je = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.jb
  %i.jf = fsub nsz <2 x double> %i.jb, %i.je
  %i.jg = fdiv nsz <2 x double> %i.jf, %i.iw      ; 2 uses
  %i.jh = fmul nsz <2 x double> %i.jg, %i.jg
  %i.ji = fadd nsz <2 x double> %i.jh, splat (double 1.000000e+00)
  %i.jj = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ji) ; 2 uses
  %i.jk = fmul nsz <2 x double> %broadcast.splat27, %i.jb
  %i.jl = fdiv nsz <2 x double> %broadcast.splat27, %i.jb
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.hv, i64 %i.ie ; 4 uses
  %i.jn = getelementptr inbounds nuw [40 x i8], ptr %i.hv, i64 %i.ie ; 2 uses
  %i.jo = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.jk)
  %i.jp = fmul nsz <2 x double> %i.jo, splat (double 2.000000e+00)
  %i.jq = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.jp) ; 2 uses
  %i.jr = extractvalue { <2 x double>, <2 x double> } %i.jq, 0 ; 2 uses
  %i.js = extractvalue { <2 x double>, <2 x double> } %i.jq, 1
  %i.jt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> %i.jr, <2 x double> splat (double 1.000000e+00))
end_hunk_0
