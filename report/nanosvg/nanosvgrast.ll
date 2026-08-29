Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__xformInverse:bb.a
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !32
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !32
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
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = fdiv double 1.000000e+00, %i.m           ; 6 uses
  %i.r = fmul double %i.q, %i.e
  %i.s = fptrunc double %i.r to float
  store float %i.s, ptr %0, align 4, !tbaa !32
  %i.t = load float, ptr %i.p, align 4, !tbaa !32
  %i.u = fneg float %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.q, %i.v
  %i.x = fptrunc double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load <4 x float>, ptr %i.p, align 4, !tbaa !32
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
  store float %i.al, ptr %i.am, align 4, !tbaa !32
  %i.an = load float, ptr %i.f, align 4, !tbaa !32
  %i.ao = fneg float %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.q, %i.ap
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ar, ptr %i.as, align 4, !tbaa !32
  %i.at = load float, ptr %1, align 4, !tbaa !32
  %i.au = fpext float %i.at to double
  %i.av = fmul double %i.q, %i.au
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aw, ptr %i.ax, align 4, !tbaa !32
  %i.ay = load float, ptr %i.f, align 4, !tbaa !32
  %i.az = fpext float %i.ay to double
  %i.ba = load float, ptr %i.aa, align 4, !tbaa !32
  %i.bb = fpext float %i.ba to double
  %i.bc = load float, ptr %1, align 4, !tbaa !32
  %i.bd = fpext float %i.bc to double
  %i.be = load float, ptr %i.z, align 4, !tbaa !32
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
  store float %.sink, ptr %i.bl, align 4, !tbaa !32
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
  %.03741 = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
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
  %i.l = load ptr, ptr %.03744, align 8, !tbaa !66 ; 8 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !32
  %i.p = load <2 x float>, ptr %i.d, align 4, !tbaa !32 ; 3 uses
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 3 uses
  %i.r = load <2 x float>, ptr %i.e, align 4, !tbaa !32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03744, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64   ; 3 uses
  %i.u = insertelement <2 x float> poison, float %i.o, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, %i.p
  %i.x = insertelement <2 x float> poison, float %i.m, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.q, <2 x float> %i.w)
  %i.aa = fadd <2 x float> %i.r, %i.z
  store <2 x float> %i.aa, ptr %i.a, align 16, !tbaa !32
  %i.ab = icmp sgt i32 %i.t, 1
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ac = add nsw i32 %i.t, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = load <4 x float>, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.ak = fmul <4 x float> %i.aj, %i.af
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ag, <4 x float> %i.ak)
  %i.an = fadd <4 x float> %i.ah, %i.am
  store <4 x float> %i.an, ptr %i.f, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !32
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.p, %i.at
  %i.av = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.q, <2 x float> %i.au)
  %i.ay = fadd <2 x float> %i.r, %i.ax            ; 2 uses
  store <2 x float> %i.ay, ptr %i.g, align 8, !tbaa !32
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %.not38.peel = icmp eq i32 %.043, 0
  br i1 %.not38.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.az = load <4 x float>, ptr %i.b, align 16, !tbaa !32 ; 3 uses
  %i.ba = load float, ptr %i.h, align 4, !tbaa !32
  %i.bb = extractelement <4 x float> %i.az, i64 0
  store float %i.bb, ptr %0, align 4, !tbaa !32
  store float %i.ba, ptr %i.i, align 4, !tbaa !32
  %i.bc = extractelement <4 x float> %i.az, i64 2
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.bd = load <4 x float>, ptr %0, align 4, !tbaa !32 ; 3 uses
  %i.be = load <4 x float>, ptr %i.b, align 16, !tbaa !32 ; 3 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bh = fcmp olt <4 x float> %i.bf, %i.bg
  %i.bi = select <4 x i1> %i.bh, <4 x float> %i.bd, <4 x float> %i.be ; 3 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bj, ptr %0, align 4, !tbaa !32
  %i.bk = extractelement <4 x float> %i.bi, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.bc, %bb.c ], [ %i.bk, %bb.d ]
  %i.bl = phi <4 x float> [ %i.az, %bb.c ], [ %i.bi, %bb.d ] ; 2 uses
  store float %storemerge, ptr %i.j, align 4, !tbaa !32
  %i.bm = extractelement <4 x float> %i.bl, i64 3
  store float %i.bm, ptr %i.k, align 4, !tbaa !32
  store <2 x float> %i.ay, ptr %i.a, align 16, !tbaa !32
  %i.bn = icmp samesign ugt i32 %i.t, 4
  br i1 %i.bn, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.e, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 3, %bb.e ] ; 3 uses
  %i.bo = phi <4 x float> [ %i.cy, %.lr.ph.peel.next ], [ %i.bl, %bb.e ] ; 3 uses
  %i.bp = shl i64 %indvars.iv, 33
  %sext = add i64 %i.bp, 8589934592
  %i.bq = ashr exact i64 %sext, 30
  %i.br = getelementptr inbounds i8, ptr %i.l, i64 %i.bq
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bs = shl i32 %indvars.iv.tr, 1
  %i.bt = add i32 %i.bs, 4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bu
  %i.bw = load <2 x float>, ptr %i.br, align 4, !tbaa !32 ; 2 uses
  %i.bx = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bz = load <2 x float>, ptr %i.d, align 4, !tbaa !32 ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cb = load <2 x float>, ptr %i.e, align 4, !tbaa !32 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cd = load <2 x float>, ptr %i.bv, align 4, !tbaa !32 ; 2 uses
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> %i.cd, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.cf = fmul <4 x float> %i.ca, %i.ce
  %i.cg = shufflevector <2 x float> %i.bw, <2 x float> %i.cd, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.by, <4 x float> %i.cf)
  %i.ci = fadd <4 x float> %i.cc, %i.ch
  store <4 x float> %i.ci, ptr %i.f, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !32
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.bz, %i.co
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bx, <2 x float> %i.cp)
  %i.ct = fadd <2 x float> %i.cb, %i.cs           ; 2 uses
  store <2 x float> %i.ct, ptr %i.g, align 8, !tbaa !32
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.cu = load <4 x float>, ptr %i.b, align 16, !tbaa !32 ; 3 uses
  %i.cv = fcmp olt <4 x float> %i.bo, %i.cu
  %i.cw = fcmp ogt <4 x float> %i.bo, %i.cu
  %i.cx = shufflevector <4 x i1> %i.cv, <4 x i1> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.bo, <4 x float> %i.cu ; 2 uses
  store <4 x float> %i.cy, ptr %0, align 4, !tbaa !32
  store <2 x float> %i.ct, ptr %i.a, align 16, !tbaa !32
  %i.cz = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.cz, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !312

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.e, %bb.b
  %.1.lcssa = phi i32 [ %.043, %bb.b ], [ 0, %bb.e ], [ 0, %.lr.ph.peel.next ]
  %i.da = getelementptr inbounds nuw i8, ptr %.03744, i64 32
  %.037 = load ptr, ptr %i.da, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %._crit_edge47, label %bb.b, !llvm.loop !313

._crit_edge47:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @nsvg__createGradient(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %nsvg__findGradientData.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39984
  %.011.i = load ptr, ptr %i.c, align 8, !tbaa !314 ; 3 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.013.i = phi ptr [ %.0.i, %bb.b ], [ %.011.i, %.preheader.i ] ; 18 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i, ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nsvg__findGradientData.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i, i64 216
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !314 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i, !llvm.loop !315

nsvg__findGradientData.exit:                      ; preds = %.lr.ph.i, %nsvg__findGradientData.exit148
  %.0128 = phi i32 [ %i.x, %nsvg__findGradientData.exit148 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0117 = phi ptr [ %.09.i147, %nsvg__findGradientData.exit148 ], [ %.013.i, %.lr.ph.i ] ; 5 uses
  %.not = icmp eq ptr %.0117, null
  br i1 %.not, label %nsvg__findGradientData.exit.thread, label %bb.c

bb.c:                                             ; preds = %nsvg__findGradientData.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0117, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 2 uses
  %.not136 = icmp eq ptr %i.h, null
  br i1 %.not136, label %bb.d, label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0117, i64 200
  %i.j = load i32, ptr %i.i, align 8, !tbaa !243  ; 3 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 48
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #33 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %nsvg__findGradientData.exit.thread, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0117, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %nsvg__findGradientData.exit148, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.d, %bb.e
  %.013.i144 = phi ptr [ %.0.i145, %bb.e ], [ %.011.i, %bb.d ] ; 3 uses
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i144, ptr noundef nonnull readonly dereferenceable(1) %i.q) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %nsvg__findGradientData.exit148, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i143
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i144, i64 216
  %.0.i145 = load ptr, ptr %i.v, align 8, !tbaa !314 ; 2 uses
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
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !237
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x float>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4, !tbaa !32
  %i.af = fsub <2 x float> %i.ae, %i.ad
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %0, i64 40000
  %i.ai = load <4 x float>, ptr %i.ah, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi <4 x float> [ %i.ag, %bb.g ], [ %i.ai, %bb.h ] ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i, i64 128
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !238 ; 2 uses
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
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !58
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !41
  %i.ax = fmul float %i.au, %i.aw
  br label %nsvg__convertToPixels.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = fdiv float %i.ap, 6.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.ba = load float, ptr %i.az, align 4, !tbaa !41
  %i.bb = fmul float %i.ay, %i.ba
  br label %nsvg__convertToPixels.exit

bb.m:                                             ; preds = %bb.j
  %i.bc = fdiv float %i.ap, 2.540000e+01
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.be = load float, ptr %i.bd, align 4, !tbaa !41
  %i.bf = fmul float %i.bc, %i.be
  br label %nsvg__convertToPixels.exit

bb.n:                                             ; preds = %bb.j
  %i.bg = fdiv float %i.ap, 2.540000e+00
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40028
end_hunk_0
