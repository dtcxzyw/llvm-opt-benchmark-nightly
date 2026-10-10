Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@Laguerre_With_Deflation:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load139 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load139 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader96, label %.lr.ph.preheader147

.lr.ph.preheader147:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader96:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader96
  %i.l = zext nneg i32 %1 to i64                  ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader147, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader147 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4
  %i.p = fpext float %i.o to double
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.p, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader96, label %.lr.ph, !llvm.loop !675

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge112
  %indvars.iv120 = phi i64 [ %i.l, %.preheader.preheader ], [ %indvars.iv.next121, %._crit_edge112 ] ; 5 uses
  %.073114 = phi ptr [ %i.d, %.preheader.preheader ], [ %i.bp, %._crit_edge112 ] ; 3 uses
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1 ; 3 uses
  %i.r = trunc i64 %indvars.iv120 to i32
  %i.s = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.t = trunc i64 %indvars.iv.next121 to i32
  %i.u = insertelement <2 x i32> %i.s, i32 %i.t, i64 1
  %i.v = uitofp <2 x i32> %i.u to <2 x double>    ; 2 uses
  %.pre = load double, ptr %scevgep, align 8
  %i.w = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.pre, i64 1
  %shift141 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader, %bb.f
  %.071 = phi double [ %i.ba, %bb.f ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.x = insertelement <2 x double> poison, double %.071, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %bb.b
  %indvars.iv122 = phi i64 [ %indvars.iv120, %.lr.ph106 ], [ %indvars.iv.next123, %bb.b ] ; 3 uses
  %i.z = phi <2 x double> [ %i.w, %.lr.ph106 ], [ %i.aj, %bb.b ] ; 3 uses
  %i.aa = phi <2 x double> [ zeroinitializer, %.lr.ph106 ], [ %i.ad, %bb.b ]
  %i.ab = fmul <2 x double> %i.y, %i.aa
  %i.ac = fmul <2 x double> %i.y, %i.z
  %i.ad = fadd <2 x double> %i.z, %i.ab           ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %.073114, i64 %indvars.iv122
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1
  %i.aj = fadd <2 x double> %i.ac, %i.ai          ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, -1
  %i.ak = trunc nuw i64 %indvars.iv122 to i32
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !676

._crit_edge:                                      ; preds = %bb.b
  %i.am = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fmul <2 x double> %i.am, %i.v           ; 2 uses
  %i.ao = fmul <2 x double> %i.ad, %i.an          ; 2 uses
  %shift = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.ao
  %foldExtExtBinop142 = fmul <2 x double> %foldExtExtBinop, %shift141
  %i.ap = extractelement <2 x double> %foldExtExtBinop142, i64 0 ; 2 uses
  %i.aq = fcmp olt double %i.ap, 0.000000e+00
  br i1 %i.aq, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ar = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  %i.at = tail call double @sqrt(double noundef %i.ap) #62 ; 2 uses
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = fadd double %i.ar, %i.at                ; 2 uses
  %i.av = fcmp olt double %i.au, f0x3EB0C6F7A0B5ED8D
  %spec.store.select = select i1 %i.av, double f0x3EB0C6F7A0B5ED8D, double %i.au
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = fsub double %i.ar, %i.at                ; 2 uses
  %i.ax = fcmp ogt double %i.aw, f0xBEB0C6F7A0B5ED8D
  %spec.store.select1 = select i1 %i.ax, double f0xBEB0C6F7A0B5ED8D, double %i.aw
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.066 = phi double [ %spec.store.select, %bb.d ], [ %spec.store.select1, %bb.e ]
  %i.ay = extractelement <2 x double> %i.an, i64 0
  %i.az = fdiv double %i.ay, %.066                ; 4 uses
  %i.ba = fsub double %.071, %i.az                ; 4 uses
  %i.bb = fcmp olt double %i.az, 0.000000e+00
  %i.bc = fneg double %i.az
  %.070 = select i1 %i.bb, double %i.bc, double %i.az
  %i.bd = fdiv double %.070, %i.ba
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp olt double %i.be, f0x3DA5FD7FE1796495
  br i1 %i.bf, label %.lr.ph111.preheader, label %.lr.ph106

.lr.ph111.preheader:                              ; preds = %bb.f
  %i.bg = fptrunc double %i.ba to float
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next121
  store float %i.bg, ptr %i.bh, align 4
  %load_initial = load double, ptr %scevgep, align 8
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %store_forwarded = phi double [ %load_initial, %.lr.ph111.preheader ], [ %i.bm, %.lr.ph111 ]
  %indvars.iv125 = phi i64 [ %indvars.iv120, %.lr.ph111.preheader ], [ %indvars.iv.next126, %.lr.ph111 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %indvars.iv125
  %i.bj = fmul double %i.ba, %store_forwarded
  %i.bk = getelementptr i8, ptr %i.bi, i64 -8     ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = fadd double %i.bl, %i.bj                ; 2 uses
  store double %i.bm, ptr %i.bk, align 8
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, -1
  %i.bn = trunc nuw i64 %indvars.iv125 to i32
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph111, label %._crit_edge112, !llvm.loop !677

._crit_edge112:                                   ; preds = %.lr.ph111
  %i.bp = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.bq = icmp sgt i64 %indvars.iv120, 1
  br i1 %i.bq, label %.preheader, label %.loopexit, !llvm.loop !678

.loopexit:                                        ; preds = %._crit_edge112, %._crit_edge, %bb.a, %.preheader96
  %.3 = phi i32 [ 0, %.preheader96 ], [ -1, %._crit_edge ], [ 0, %bb.a ], [ 0, %._crit_edge112 ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Newton_Raphson(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #43 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 3
  %i.c = alloca i8, i64 %i.b, align 16            ; 5 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load4 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load4 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader52.split.us, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader52.split.us:                            ; preds = %.lr.ph, %middle.block
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.m = load float, ptr %i.l, align 4
  %i.n = fpext float %i.m to double
  %i.o = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %bb.b, %.preheader52.split.us
  %.04565.us = phi i32 [ 0, %.preheader52.split.us ], [ %i.p, %bb.b ] ; 2 uses
  br label %.lr.ph58.us.us

bb.b:                                             ; preds = %._crit_edge63.split.us.us
  %i.p = add nuw nsw i32 %.04565.us, 1
  %i.q = fcmp ogt double %i.x, f0x3BC79CA10C924223
  br i1 %i.q, label %.preheader51.us, label %.lr.ph67.preheader, !llvm.loop !680

.lr.ph58.us.us:                                   ; preds = %._crit_edge.us.us, %.preheader51.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %._crit_edge.us.us ], [ 0, %.preheader51.us ] ; 2 uses
  %.161.us.us = phi double [ %i.x, %._crit_edge.us.us ], [ 0.000000e+00, %.preheader51.us ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv75 ; 2 uses
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph58.us.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.c ], [ %i.o, %.lr.ph58.us.us ] ; 2 uses
  %.057.us.us = phi double [ %9, %bb.c ], [ %i.n, %.lr.ph58.us.us ] ; 2 uses
  %.04356.us.us = phi double [ %4, %bb.c ], [ 0.000000e+00, %.lr.ph58.us.us ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 2 uses
  %3 = fmul double %i.s, %.04356.us.us
  %4 = fadd double %3, %.057.us.us                ; 2 uses
  %5 = fmul double %i.s, %.057.us.us
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next73
  %7 = load float, ptr %6, align 4
  %8 = fpext float %7 to double
  %9 = fadd double %5, %8                         ; 2 uses
  %i.t = icmp sgt i64 %indvars.iv72, 1
  br i1 %i.t, label %bb.c, label %._crit_edge.us.us, !llvm.loop !681

._crit_edge.us.us:                                ; preds = %bb.c
  %i.u = fdiv double %9, %4                       ; 3 uses
  %i.v = fsub double %i.s, %i.u
  store double %i.v, ptr %i.r, align 8
  %i.w = fmul double %i.u, %i.u
  %i.x = fadd double %.161.us.us, %i.w            ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %i.o
  br i1 %exitcond79.not, label %._crit_edge63.split.us.us, label %.lr.ph58.us.us, !llvm.loop !682

._crit_edge63.split.us.us:                        ; preds = %._crit_edge.us.us
  %exitcond80 = icmp eq i32 %.04565.us, 41
  br i1 %exitcond80, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader21 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fpext float %i.z to double
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.aa, ptr %i.ab, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader52.split.us, label %.lr.ph, !llvm.loop !683

.lr.ph67.preheader:                               ; preds = %bb.b
  %wide.trip.count84 = zext nneg i32 %1 to i64
  %min.iters.check6 = icmp ult i32 %1, 4
  br i1 %min.iters.check6, label %.lr.ph67.preheader17, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph67.preheader
  %n.vec8 = and i64 %wide.trip.count, 2147483644  ; 3 uses
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph7
  %index10 = phi i64 [ 0, %vector.ph7 ], [ %index.next13, %vector.body9 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load11 = load <2 x double>, ptr %i.ac, align 16
  %wide.load12 = load <2 x double>, ptr %i.ad, align 16
  %i.ae = fptrunc <2 x double> %wide.load11 to <2 x float>
  %i.af = fptrunc <2 x double> %wide.load12 to <2 x float>
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x float> %i.ae, ptr %i.ag, align 4
  store <2 x float> %i.af, ptr %i.ah, align 4
  %index.next13 = add nuw i64 %index10, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next13, %n.vec8
  br i1 %i.ai, label %middle.block14, label %vector.body9, !llvm.loop !684

middle.block14:                                   ; preds = %vector.body9
  %cmp.n15 = icmp eq i64 %n.vec8, %wide.trip.count
  br i1 %cmp.n15, label %.loopexit, label %.lr.ph67.preheader17

.lr.ph67.preheader17:                             ; preds = %.lr.ph67.preheader, %middle.block14
  %indvars.iv81.ph = phi i64 [ 0, %.lr.ph67.preheader ], [ %n.vec8, %middle.block14 ]
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader17, %.lr.ph67
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph67 ], [ %indvars.iv81.ph, %.lr.ph67.preheader17 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv81
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv81
  store float %i.al, ptr %i.am, align 4
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph67, !llvm.loop !685

.loopexit:                                        ; preds = %._crit_edge63.split.us.us, %.lr.ph67, %middle.block14, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = load float, ptr %1, align 4              ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = fcmp ogt float %i.a, %i.b
  %.neg = sext i1 %i.e to i32
  %i.f = add nsw i32 %.neg, %i.d
  ret i32 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @floor1_fit(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %4 = alloca [64 x %struct.lsfit_acc], align 16  ; 7 uses
  %i.a = alloca [65 x i32], align 16              ; 12 uses
  %i.b = alloca [65 x i32], align 16              ; 12 uses
  %i.c = alloca [65 x i32], align 16              ; 5 uses
  %i.d = alloca [65 x i32], align 16              ; 6 uses
  %i.e = alloca [65 x i32], align 16              ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1284
  %i.q = load i32, ptr %i.p, align 4              ; 10 uses
  %i.r = sext i32 %i.q to i64                     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #62
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> splat (i32 -200), ptr %i.t, align 16
  store <4 x i32> splat (i32 -200), ptr %i.u, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %.lr.ph183.preheader, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0147181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader270, %.lr.ph
  %.0147181 = phi i64 [ %i.x, %.lr.ph ], [ %.0147181.ph, %.lr.ph.preheader270 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0147181
  store i32 -200, ptr %i.w, align 4
  %i.x = add nuw nsw i64 %.0147181, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.r
  br i1 %exitcond.not, label %.lr.ph183.preheader, label %.lr.ph, !llvm.loop !687

.lr.ph183.preheader:                              ; preds = %.lr.ph, %middle.block
  %min.iters.check248 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check248, label %.lr.ph183.preheader269, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph183.preheader
  %n.vec250 = and i64 %i.r, 2147483640            ; 3 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next253, %vector.body251 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index252 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> splat (i32 -200), ptr %i.y, align 16
  store <4 x i32> splat (i32 -200), ptr %i.z, align 16
  %index.next253 = add nuw i64 %index252, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next253, %n.vec250
  br i1 %i.aa, label %middle.block254, label %vector.body251, !llvm.loop !688

middle.block254:                                  ; preds = %vector.body251
  %cmp.n255 = icmp eq i64 %n.vec250, %i.r
  br i1 %cmp.n255, label %.lr.ph187.preheader, label %.lr.ph183.preheader269

.lr.ph183.preheader269:                           ; preds = %.lr.ph183.preheader, %middle.block254
  %.1148182.ph = phi i64 [ 0, %.lr.ph183.preheader ], [ %n.vec250, %middle.block254 ]
  br label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph183.preheader269, %.lr.ph183
  %.1148182 = phi i64 [ %i.ac, %.lr.ph183 ], [ %.1148182.ph, %.lr.ph183.preheader269 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1148182
  store i32 -200, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.1148182, 1            ; 2 uses
  %exitcond212.not = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond212.not, label %.lr.ph187.preheader, label %.lr.ph183, !llvm.loop !689

.lr.ph187.preheader:                              ; preds = %.lr.ph183, %middle.block254
  %i.ad = shl nuw nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.ad, i1 false)
  %min.iters.check258 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check258, label %.lr.ph187.preheader268, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph187.preheader
  %n.vec260 = and i64 %i.r, 2147483640            ; 3 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next263, %vector.body261 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index262 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
end_hunk_0
