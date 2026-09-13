Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__curveBounds:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nsvg__xformInverse(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #26 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !31
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !31
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !31
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fneg double %i.i
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = fmul double %i.k, %i.j
  %i.m = tail call double @llvm.fmuladd.f64(double %i.b, double %i.e, double %i.l) ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond = fcmp olt double %i.n, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = fdiv double 1.000000e+00, %i.m           ; 6 uses
  %i.r = fmul double %i.q, %i.e
  %i.s = fptrunc double %i.r to float
  store float %i.s, ptr %0, align 4, !tbaa !31
  %i.t = load float, ptr %i.p, align 4, !tbaa !31
  %i.u = fneg float %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.q, %i.v
  %i.x = fptrunc double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load <4 x float>, ptr %i.p, align 4, !tbaa !31
  %i.ac = fpext <4 x float> %i.ab to <4 x double> ; 4 uses
  %i.ad = extractelement <4 x double> %i.ac, i64 2
  %i.ae = fneg double %i.ad
  %i.af = extractelement <4 x double> %i.ac, i64 1
  %i.ag = fmul double %i.af, %i.ae
  %i.ah = extractelement <4 x double> %i.ac, i64 0
  %i.ai = extractelement <4 x double> %i.ac, i64 3
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %i.ag)
  %i.ak = fmul double %i.q, %i.aj
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.al, ptr %i.am, align 4, !tbaa !31
  %i.an = load float, ptr %i.f, align 4, !tbaa !31
  %i.ao = fneg float %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.q, %i.ap
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ar, ptr %i.as, align 4, !tbaa !31
  %i.at = load float, ptr %1, align 4, !tbaa !31
  %i.au = fpext float %i.at to double
  %i.av = fmul double %i.q, %i.au
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aw, ptr %i.ax, align 4, !tbaa !31
  %i.ay = load float, ptr %i.f, align 4, !tbaa !31
  %i.az = fpext float %i.ay to double
  %i.ba = load float, ptr %i.aa, align 4, !tbaa !31
  %i.bb = fpext float %i.ba to double
  %i.bc = load float, ptr %1, align 4, !tbaa !31
  %i.bd = fpext float %i.bc to double
  %i.be = load float, ptr %i.z, align 4, !tbaa !31
  %i.bf = fpext float %i.be to double
  %i.bg = fneg double %i.bf
  %i.bh = fmul double %i.bd, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %i.bh)
  %i.bj = fmul double %i.q, %i.bi
  %i.bk = fptrunc double %i.bj to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink34 = phi ptr [ %0, %bb.c ], [ %1, %bb.b ]
  %.sink = phi float [ %i.bk, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink34, i64 20
  store float %.sink, ptr %i.bl, align 4, !tbaa !31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__getLocalBounds(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #27 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.03741 = load ptr, ptr %i.c, align 8, !tbaa !60 ; 2 uses
  %.not42 = icmp eq ptr %.03741, null
  br i1 %.not42, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %.03744 = phi ptr [ %.03741, %.lr.ph46 ], [ %.037, %._crit_edge ] ; 3 uses
  %.043 = phi i32 [ 1, %.lr.ph46 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.l = load ptr, ptr %.03744, align 8, !tbaa !63 ; 6 uses
  %i.m = load <2 x float>, ptr %i.d, align 4, !tbaa !31 ; 3 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 3 uses
  %i.o = load <2 x float>, ptr %i.e, align 4, !tbaa !31 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03744, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62   ; 3 uses
  %i.r = load <2 x float>, ptr %i.l, align 4, !tbaa !31 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.s, %i.m
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.n, <2 x float> %i.t)
  %i.w = fadd <2 x float> %i.o, %i.v
  store <2 x float> %i.w, ptr %i.a, align 16, !tbaa !31
  %i.x = icmp sgt i32 %i.q, 1
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.y = add nsw i32 %i.q, -1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ab = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ad = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ae = load <4 x float>, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.ag = fmul <4 x float> %i.af, %i.ab
  %i.ah = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ac, <4 x float> %i.ag)
  %i.aj = fadd <4 x float> %i.ad, %i.ai
  store <4 x float> %i.aj, ptr %i.f, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !31 ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.m, %i.am
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.n, <2 x float> %i.an)
  %i.aq = fadd <2 x float> %i.o, %i.ap            ; 2 uses
  store <2 x float> %i.aq, ptr %i.g, align 8, !tbaa !31
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %.not38.peel = icmp eq i32 %.043, 0
  br i1 %.not38.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.ar = load <4 x float>, ptr %i.b, align 16, !tbaa !31 ; 3 uses
  %i.as = load float, ptr %i.h, align 4, !tbaa !31
  %i.at = extractelement <4 x float> %i.ar, i64 0
  store float %i.at, ptr %0, align 4, !tbaa !31
  store float %i.as, ptr %i.i, align 4, !tbaa !31
  %i.au = extractelement <4 x float> %i.ar, i64 2
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.av = load <4 x float>, ptr %0, align 4, !tbaa !31 ; 3 uses
  %i.aw = load <4 x float>, ptr %i.b, align 16, !tbaa !31 ; 3 uses
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = fcmp olt <4 x float> %i.ax, %i.ay
  %i.ba = select <4 x i1> %i.az, <4 x float> %i.av, <4 x float> %i.aw ; 3 uses
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bb, ptr %0, align 4, !tbaa !31
  %i.bc = extractelement <4 x float> %i.ba, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.au, %bb.c ], [ %i.bc, %bb.d ]
  %i.bd = phi <4 x float> [ %i.ar, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  store float %storemerge, ptr %i.j, align 4, !tbaa !31
  %i.be = extractelement <4 x float> %i.bd, i64 3
  store float %i.be, ptr %i.k, align 4, !tbaa !31
  store <2 x float> %i.aq, ptr %i.a, align 16, !tbaa !31
  %3 = icmp samesign ugt i32 %i.q, 4
  br i1 %3, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.e, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 3, %bb.e ] ; 3 uses
  %i.bf = phi <4 x float> [ %i.cl, %.lr.ph.peel.next ], [ %i.bd, %bb.e ] ; 3 uses
  %i.bg = shl i64 %indvars.iv, 33
  %sext = add i64 %i.bg, 8589934592
  %i.bh = ashr exact i64 %sext, 30
  %i.bi = getelementptr inbounds i8, ptr %i.l, i64 %i.bh
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bj = shl nuw i32 %indvars.iv.tr, 1
  %i.bk = add nuw i32 %i.bj, 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bl
  %i.bn = load <2 x float>, ptr %i.bi, align 4, !tbaa !31 ; 2 uses
  %i.bo = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bq = load <2 x float>, ptr %i.d, align 4, !tbaa !31 ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bs = load <2 x float>, ptr %i.e, align 4, !tbaa !31 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bu = load <2 x float>, ptr %i.bm, align 4, !tbaa !31 ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bn, <2 x float> %i.bu, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.bw = fmul <4 x float> %i.br, %i.bv
  %i.bx = shufflevector <2 x float> %i.bn, <2 x float> %i.bu, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.bp, <4 x float> %i.bw)
  %i.bz = fadd <4 x float> %i.bt, %i.by
  store <4 x float> %i.bz, ptr %i.f, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !31 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.bq, %i.cc
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.bo, <2 x float> %i.cd)
  %i.cg = fadd <2 x float> %i.bs, %i.cf           ; 2 uses
  store <2 x float> %i.cg, ptr %i.g, align 8, !tbaa !31
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.ch = load <4 x float>, ptr %i.b, align 16, !tbaa !31 ; 3 uses
  %i.ci = fcmp olt <4 x float> %i.bf, %i.ch
  %i.cj = fcmp ogt <4 x float> %i.bf, %i.ch
  %i.ck = shufflevector <4 x i1> %i.ci, <4 x i1> %i.cj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cl = select <4 x i1> %i.ck, <4 x float> %i.bf, <4 x float> %i.ch ; 2 uses
  store <4 x float> %i.cl, ptr %0, align 4, !tbaa !31
  store <2 x float> %i.cg, ptr %i.a, align 16, !tbaa !31
  %i.cm = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.cm, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.e, %bb.b
  %.1.lcssa = phi i32 [ %.043, %bb.b ], [ 0, %bb.e ], [ 0, %.lr.ph.peel.next ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.03744, i64 32
  %.037 = load ptr, ptr %i.cn, align 8, !tbaa !60 ; 2 uses
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %._crit_edge47, label %bb.b, !llvm.loop !314

._crit_edge47:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @nsvg__createGradient(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !17
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %nsvg__findGradientData.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39984
  %.011.i = load ptr, ptr %i.c, align 8, !tbaa !316 ; 3 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.013.i = phi ptr [ %.0.i, %bb.b ], [ %.011.i, %.preheader.i ] ; 18 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i, ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nsvg__findGradientData.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i, i64 216
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !316 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i, !llvm.loop !315

nsvg__findGradientData.exit:                      ; preds = %.lr.ph.i, %nsvg__findGradientData.exit148
  %.0128 = phi i32 [ %i.x, %nsvg__findGradientData.exit148 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0117 = phi ptr [ %.09.i147, %nsvg__findGradientData.exit148 ], [ %.013.i, %.lr.ph.i ] ; 5 uses
  %.not = icmp eq ptr %.0117, null
  br i1 %.not, label %nsvg__findGradientData.exit.thread, label %bb.c

bb.c:                                             ; preds = %nsvg__findGradientData.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0117, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not136 = icmp eq ptr %i.h, null
  br i1 %.not136, label %bb.d, label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0117, i64 200
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144  ; 3 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 48
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #33 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %nsvg__findGradientData.exit.thread, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0117, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !17
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %nsvg__findGradientData.exit148, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.d, %bb.e
  %.013.i144 = phi ptr [ %.0.i145, %bb.e ], [ %.011.i, %bb.d ] ; 3 uses
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i144, ptr noundef nonnull readonly dereferenceable(1) %i.q) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %nsvg__findGradientData.exit148, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i143
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i144, i64 216
  %.0.i145 = load ptr, ptr %i.v, align 8, !tbaa !316 ; 2 uses
  %.not.i146 = icmp eq ptr %.0.i145, null
  br i1 %.not.i146, label %nsvg__findGradientData.exit148, label %.lr.ph.i143, !llvm.loop !315

nsvg__findGradientData.exit148:                   ; preds = %.lr.ph.i143, %bb.e, %bb.d
  %.09.i147 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %.013.i144, %.lr.ph.i143 ] ; 2 uses
  %i.w = icmp eq ptr %.09.i147, %.0117
  %i.x = add nuw nsw i32 %.0128, 1
  %i.y = icmp samesign ugt i32 %.0128, 31
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %nsvg__findGradientData.exit.thread, label %nsvg__findGradientData.exit

bb.f:                                             ; preds = %.thread.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i, i64 173
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !140
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4, !tbaa !31
  %i.af = fsub <2 x float> %i.ae, %i.ad
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %0, i64 40000
  %i.ai = load <4 x float>, ptr %i.ah, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi <4 x float> [ %i.ag, %bb.g ], [ %i.ai, %bb.h ] ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i, i64 128
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !141 ; 2 uses
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.j, label %bb.aq

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i, i64 132
  %i.ao = load i64, ptr %i.an, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ao to i32
  %i.ap = bitcast i32 %.sroa.0.0.extract.trunc.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i = lshr i64 %i.ao, 32
  %.sroa.12.0.extract.trunc.i = trunc nuw i64 %.sroa.12.0.extract.shift.i to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 39936
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !55
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [312 x i8], ptr %0, i64 %i.as ; 8 uses
  switch i32 %.sroa.12.0.extract.trunc.i, label %nsvg__convertToPixels.exit [
    i32 7, label %bb.r
    i32 9, label %bb.q
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 8, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = fdiv float %i.ap, 7.200000e+01
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = fmul float %i.au, %i.aw
  br label %nsvg__convertToPixels.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = fdiv float %i.ap, 6.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.ba = load float, ptr %i.az, align 4, !tbaa !40
  %i.bb = fmul float %i.ay, %i.ba
  br label %nsvg__convertToPixels.exit

bb.m:                                             ; preds = %bb.j
  %i.bc = fdiv float %i.ap, 2.540000e+01
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.be = load float, ptr %i.bd, align 4, !tbaa !40
  %i.bf = fmul float %i.bc, %i.be
  br label %nsvg__convertToPixels.exit

bb.n:                                             ; preds = %bb.j
  %i.bg = fdiv float %i.ap, 2.540000e+00
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !40
  %i.bj = fmul float %i.bg, %i.bi
end_hunk_0
