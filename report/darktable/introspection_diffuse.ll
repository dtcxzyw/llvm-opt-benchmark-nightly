inline.NumInlined: 77
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  %i.pq = extractelement <4 x float> %i.pn, i64 1
  %i.pr = fcmp reassoc nsz arcp contract afn oeq float %i.pq, 0.000000e+00
  %i.ps = extractelement <4 x float> %i.pn, i64 2
  %i.pt = fcmp reassoc nsz arcp contract afn oeq float %i.ps, 0.000000e+00
  %i.pu = extractelement <4 x float> %i.pn, i64 3
  %i.pv = fcmp reassoc nsz arcp contract afn oeq float %i.pu, 0.000000e+00
  %i.pw = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.pn, zeroinitializer
  %i.px = select <4 x i1> %i.pw, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2) ; 4 uses
  %i.py = extractelement <4 x i32> %i.px, i64 0
  %.0.i.i = select i1 %i.pp, i32 0, i32 %i.py
  %i.pz = extractelement <4 x i32> %i.px, i64 1
  %.0.i106.i = select i1 %i.pr, i32 0, i32 %i.pz
  %i.qa = extractelement <4 x i32> %i.px, i64 2
  %.0.i108.i = select i1 %i.pt, i32 0, i32 %i.qa
  %i.qb = extractelement <4 x i32> %i.px, i64 3
  %.0.i110.i = select i1 %i.pv, i32 0, i32 %i.qb
  %i.qc = load float, ptr %i.js, align 4, !tbaa !110, !noalias !109
  %i.qd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.qc)
  %i.qe = load float, ptr %i.jt, align 4, !tbaa !111, !noalias !109
  %i.qf = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.qe)
  %i.qg = shl nsw i64 %i.pi, 2                    ; 5 uses
  %i.qh = shl nsw i64 %i.pi, 4
  %i.qi = add nsw i64 %i.qh, 48
  %i.qj = and i64 %i.qi, -64
  %i.qk = call ptr @dt_alloc_aligned(i64 noundef %i.qj) #20, !noalias !112 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qk, i64 64) ]
  %.not.i.i103 = icmp eq i32 %i.pj, 0             ; 2 uses
  %invariant.op.i.i = add i32 %i.pj, -1           ; 3 uses
  %i.ql = add nsw i64 %i.pk, -1                   ; 2 uses
  %.not.i40.i.i = icmp eq i32 %i.ph, 0            ; 2 uses
  %i.qm = add nsw i64 %i.pi, -1                   ; 2 uses
  br i1 %.not.i.i103, label %.lr.ph.split.us.i, label %.lr.ph62.i.i.preheader

.lr.ph62.i.i.preheader:                           ; preds = %bb.t
  %min.iters.check307 = icmp ult i32 %i.ph, 4
  %n.vec309 = and i64 %i.pi, -4                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec309, %i.pi
  br label %.lr.ph62.i.i

.lr.ph.split.us.i:                                ; preds = %bb.t
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %decompose_2D_Bspline.exit.us.us.preheader.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !109
  %i.qp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef 0) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.082, i32 noundef %i.ph, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  %i.qq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef 0) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %i.pl, i32 noundef %i.ph, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !109
  br i1 %exitcond176.peel.not.i, label %.lr.ph153.i, label %decompose_2D_Bspline.exit.us.peel.next.i

decompose_2D_Bspline.exit.us.peel.next.i:         ; preds = %bb.u
  %.pre183.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  br label %decompose_2D_Bspline.exit.us.i

decompose_2D_Bspline.exit.us.us.preheader.i:      ; preds = %.lr.ph.split.us.i
  %.097.us.us.le.i = select i1 %.not102.us.us.le.not.i, ptr %i.pm, ptr %i.pl
  br label %.lr.ph153.i

decompose_2D_Bspline.exit.us.i:                   ; preds = %bb.w, %decompose_2D_Bspline.exit.us.peel.next.i
  %i.qr = phi ptr [ %i.qv, %bb.w ], [ %.pre183.i, %decompose_2D_Bspline.exit.us.peel.next.i ]
  %.095146.us.i = phi i32 [ %i.qw, %bb.w ], [ 1, %decompose_2D_Bspline.exit.us.peel.next.i ] ; 4 uses
  %i.qs = and i32 %.095146.us.i, 1
  %.not102.us.i = icmp eq i32 %i.qs, 0            ; 2 uses
  %.097.us.i = select i1 %.not102.us.i, ptr %i.pl, ptr %i.pm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %.not103.us.i = icmp eq ptr %i.qr, null
  br i1 %.not103.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %decompose_2D_Bspline.exit.us.i
  %.104.us.i = select i1 %.not102.us.i, ptr %i.pm, ptr %i.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !109
  %i.qt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %.095146.us.i) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.104.us.i, i32 noundef %i.ph, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  %i.qu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %.095146.us.i) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.097.us.i, i32 noundef %i.ph, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !109
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %decompose_2D_Bspline.exit.us.i
  %i.qv = phi ptr [ %.pre.i, %bb.v ], [ null, %decompose_2D_Bspline.exit.us.i ]
  %i.qw = add nuw nsw i32 %.095146.us.i, 1        ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.qw, %.07.lcssa.i
  br i1 %exitcond176.not.i, label %.lr.ph153.i, label %decompose_2D_Bspline.exit.us.i, !llvm.loop !156

.lr.ph153.i:                                      ; preds = %bb.ae, %bb.w, %bb.u, %decompose_2D_Bspline.exit.us.us.preheader.i
  %.094.lcssa.i.sink = phi ptr [ %.097.us.us.le.i, %decompose_2D_Bspline.exit.us.us.preheader.i ], [ %i.pl, %bb.u ], [ %.097.us.i, %bb.w ], [ %.097.i, %bb.ae ] ; 3 uses
  call void @free(ptr noundef %i.qk) #20, !noalias !103
  %i.qx = icmp eq ptr %.094.lcssa.i.sink, %i.pm
  %i.qy = select i1 %i.qx, ptr %i.pl, ptr %i.pm   ; 2 uses
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qd, f0x3DE38E39
  %factor.op.fmul262.i.i = fadd reassoc nsz arcp contract afn float %i.qz, f0xBDE38E39
  %i.ra = add nsw i32 %i.ph, -1
  %i.rb = fmul reassoc nsz arcp contract afn <4 x float> %i.pn, %i.pn
  %i.rc = fmul reassoc nsz arcp contract afn <4 x float> %i.rb, splat (float 1.140130e+07) ; 5 uses
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.re = shufflevector <4 x float> %i.rc, <4 x float> poison, <2 x i32> zeroinitializer
  %i.rf = shufflevector <4 x float> %i.rc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.rg = shufflevector <4 x float> %i.rc, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rh = shufflevector <4 x float> %i.rc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ri = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.af

.lr.ph62.i.i:                                     ; preds = %.lr.ph62.i.i.preheader, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %.lr.ph62.i.i.preheader ] ; 4 uses
  %i.rk = trunc nuw nsw i64 %indvars.iv.i to i32  ; 7 uses
  %i.rl = shl nuw i32 1, %i.rk                    ; 7 uses
  %i.rm = icmp eq i64 %indvars.iv.i, 0
  %i.rn = and i32 %i.rk, 1
  %.not102.i = icmp eq i32 %i.rn, 0               ; 2 uses
  %.104.i = select i1 %.not102.i, ptr %i.pm, ptr %i.pl
  %.097.i = select i1 %.not102.i, ptr %i.pl, ptr %i.pm ; 3 uses
  %.096.i = select i1 %i.rm, ptr %.082, ptr %.104.i ; 7 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !76, !noalias !109 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %.not.i.i.i = icmp slt i32 %i.rl, %i.pj
  %.reass.i.i = add i32 %i.rl, %invariant.op.i.i
  %i.rq = shl i32 2, %i.rk                        ; 3 uses
  %i.rr = sext i32 %i.rl to i64                   ; 2 uses
  %i.rs = sext i32 %i.rq to i64                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %.lr.ph62.i.i
  %.03660.i.i = phi i64 [ 0, %.lr.ph62.i.i ], [ %i.vh, %._crit_edge.i.i ] ; 2 uses
  %i.rt = trunc i64 %.03660.i.i to i32            ; 5 uses
  br i1 %.not.i.i.i, label %bb.y, label %dwt_interleave_rows.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.ru = sdiv i32 %.reass.i.i, %i.rl             ; 4 uses
  %i.rv = srem i32 %i.pj, %i.rl                   ; 3 uses
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.rx = mul nsw i32 %i.rv, %i.ru                ; 2 uses
  %i.ry = icmp sgt i32 %i.rx, %i.rt
  br i1 %i.ry, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.rz = sdiv i32 %i.rt, %i.ru
  %i.sa = srem i32 %i.rt, %i.ru
  %i.sb = shl i32 %i.sa, %i.rk
  %i.sc = add nsw i32 %i.sb, %i.rz
  br label %dwt_interleave_rows.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.sd = sub nsw i32 %i.rt, %i.rx                ; 2 uses
  %i.se = add nsw i32 %i.ru, -1                   ; 2 uses
  %i.sf = sdiv i32 %i.sd, %i.se
  %i.sg = add nsw i32 %i.sf, %i.rv
  %i.sh = srem i32 %i.sd, %i.se
  %i.si = shl i32 %i.sh, %i.rk
  %i.sj = add nsw i32 %i.sg, %i.si
  br label %dwt_interleave_rows.exit.i.i

dwt_interleave_rows.exit.i.i:                     ; preds = %bb.ab, %bb.aa, %bb.x
  %.1.i.i.i = phi i32 [ %i.rt, %bb.x ], [ %i.sc, %bb.aa ], [ %i.sj, %bb.ab ] ; 3 uses
  %i.sk = sext i32 %.1.i.i.i to i64               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.sl = sub nsw i32 %.1.i.i.i, %i.rq
  %i.sm = call i32 @llvm.smax.i32(i32 %i.sl, i32 0)
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = mul i64 %i.qg, %i.sn                    ; 2 uses
  %i.sp = sub nsw i32 %.1.i.i.i, %i.rl
  %i.sq = call i32 @llvm.smax.i32(i32 %i.sp, i32 0)
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = mul i64 %i.qg, %i.sr                    ; 2 uses
  %i.st = mul i64 %i.qg, %i.sk                    ; 2 uses
  %i.su = add nsw i64 %i.sk, %i.rr
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.su, i64 %i.ql)
  %i.sv = mul i64 %..i.i.i, %i.qg                 ; 2 uses
  %i.sw = add nsw i64 %i.sk, %i.rs
  %i.sx = call i64 @llvm.umin.i64(i64 %i.sw, i64 %i.ql)
  %i.sy = mul i64 %i.sx, %i.qg                    ; 2 uses
  br i1 %.not.i40.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %dwt_interleave_rows.exit.i.i
  br i1 %min.iters.check307, label %.lr.ph.i.i.i.preheader352, label %vector.body310

vector.body310:                                   ; preds = %.lr.ph.i.i.i.preheader, %vector.body310
  %index311 = phi i64 [ %index.next337, %vector.body310 ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.sz = shl i64 %index311, 2                    ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.sz ; 5 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.sz
  %i.tc = getelementptr [4 x i8], ptr %i.ta, i64 %i.so
  %i.td = getelementptr [4 x i8], ptr %i.ta, i64 %i.ss
  %i.te = getelementptr [4 x i8], ptr %i.ta, i64 %i.st
  %i.tf = getelementptr [4 x i8], ptr %i.ta, i64 %i.sv
  %i.tg = getelementptr [4 x i8], ptr %i.ta, i64 %i.sy
  %wide.vec312 = load <16 x float>, ptr %i.tc, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec313 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec314 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec315 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec316 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec317 = load <16 x float>, ptr %i.td, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec318 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec319 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec320 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec321 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec322 = load <16 x float>, ptr %i.te, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec323 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec324 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec325 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec326 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.th = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec323, splat (float 3.750000e-01)
  %wide.vec327 = load <16 x float>, ptr %i.tf, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec328 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec329 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec330 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec331 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec332 = load <16 x float>, ptr %i.tg, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec333 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec334 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec335 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec336 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ti = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec328, %strided.vec318
  %i.tj = fmul reassoc nsz arcp contract afn <4 x float> %i.ti, splat (float 2.500000e-01)
  %6 = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec333, %strided.vec313
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %6, splat (float 6.250000e-02)
  %8 = fadd reassoc nsz arcp contract afn <4 x float> %i.tj, %i.th
  %i.tk = fadd reassoc nsz arcp contract afn <4 x float> %8, %7 ; 2 uses
  %i.tl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec324, splat (float 3.750000e-01)
  %i.tm = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec329, %strided.vec319
  %i.tn = fmul reassoc nsz arcp contract afn <4 x float> %i.tm, splat (float 2.500000e-01)
  %i.to = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec334, %strided.vec314
  %i.tp = fmul reassoc nsz arcp contract afn <4 x float> %i.to, splat (float 6.250000e-02)
  %9 = fadd reassoc nsz arcp contract afn <4 x float> %i.tn, %i.tl
  %i.tq = fadd reassoc nsz arcp contract afn <4 x float> %9, %i.tp ; 2 uses
  %i.tr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec325, splat (float 3.750000e-01)
  %i.ts = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec330, %strided.vec320
  %i.tt = fmul reassoc nsz arcp contract afn <4 x float> %i.ts, splat (float 2.500000e-01)
  %i.tu = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec335, %strided.vec315
  %i.tv = fmul reassoc nsz arcp contract afn <4 x float> %i.tu, splat (float 6.250000e-02)
  %i.tw = fadd reassoc nsz arcp contract afn <4 x float> %i.tt, %i.tr
  %10 = fadd reassoc nsz arcp contract afn <4 x float> %i.tw, %i.tv ; 2 uses
  %i.tx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec326, splat (float 3.750000e-01)
  %i.ty = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec331, %strided.vec321
  %i.tz = fmul reassoc nsz arcp contract afn <4 x float> %i.ty, splat (float 2.500000e-01)
  %i.ua = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec336, %strided.vec316
  %i.ub = fmul reassoc nsz arcp contract afn <4 x float> %i.ua, splat (float 6.250000e-02)
  %i.uc = fadd reassoc nsz arcp contract afn <4 x float> %i.tz, %i.tx
  %i.ud = fadd reassoc nsz arcp contract afn <4 x float> %i.uc, %i.ub ; 2 uses
  %i.ue = shufflevector <4 x float> %i.tk, <4 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ue, zeroinitializer
  %i.ug = shufflevector <4 x float> %i.tk, <4 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uh = select reassoc nsz arcp contract afn <8 x i1> %i.uf, <8 x float> zeroinitializer, <8 x float> %i.ug
  %i.ui = shufflevector <4 x float> %10, <4 x float> %i.ud, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ui, zeroinitializer
  %i.uk = shufflevector <4 x float> %10, <4 x float> %i.ud, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ul = select reassoc nsz arcp contract afn <8 x i1> %i.uj, <8 x float> zeroinitializer, <8 x float> %i.uk
  %interleaved.vec = shufflevector <8 x float> %i.uh, <8 x float> %i.ul, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.tb, align 64, !tbaa !27, !alias.scope !162, !noalias !166
  %index.next337 = add nuw i64 %index311, 4       ; 2 uses
  %i.um = icmp eq i64 %index.next337, %n.vec309
  br i1 %i.um, label %middle.block338, label %vector.body310, !llvm.loop !167

middle.block338:                                  ; preds = %vector.body310
  br i1 %cmp.n, label %.lr.ph.i.i, label %.lr.ph.i.i.i.preheader352

.lr.ph.i.i.i.preheader352:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block338
  %.036.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec309, %middle.block338 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader352, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %i.vf, %.lr.ph.i.i.i ], [ %.036.i.i.i.ph, %.lr.ph.i.i.i.preheader352 ] ; 2 uses
  %i.un = shl i64 %.036.i.i.i, 2                  ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.un ; 5 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.un
  %i.uq = getelementptr [4 x i8], ptr %i.uo, i64 %i.so
  %i.ur = getelementptr [4 x i8], ptr %i.uo, i64 %i.ss
  %i.us = getelementptr [4 x i8], ptr %i.uo, i64 %i.st
  %i.ut = getelementptr [4 x i8], ptr %i.uo, i64 %i.sv
  %i.uu = getelementptr [4 x i8], ptr %i.uo, i64 %i.sy
  %i.uv = load <4 x float>, ptr %i.uq, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %11 = load <4 x float>, ptr %i.ur, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %i.uw = load <4 x float>, ptr %i.us, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %i.ux = fmul reassoc nsz arcp contract afn <4 x float> %i.uw, splat (float 3.750000e-01)
  %i.uy = load <4 x float>, ptr %i.ut, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %12 = load <4 x float>, ptr %i.uu, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %i.uz = fadd reassoc nsz arcp contract afn <4 x float> %i.uy, %11
  %i.va = fmul reassoc nsz arcp contract afn <4 x float> %i.uz, splat (float 2.500000e-01)
  %i.vb = fadd reassoc nsz arcp contract afn <4 x float> %12, %i.uv
  %13 = fmul reassoc nsz arcp contract afn <4 x float> %i.vb, splat (float 6.250000e-02)
  %14 = fadd reassoc nsz arcp contract afn <4 x float> %i.va, %i.ux
  %i.vc = fadd reassoc nsz arcp contract afn <4 x float> %14, %13 ; 2 uses
  %i.vd = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.vc, zeroinitializer
  %i.ve = select <4 x i1> %i.vd, <4 x float> zeroinitializer, <4 x float> %i.vc
  store <4 x float> %i.ve, ptr %i.up, align 16, !tbaa !27, !alias.scope !162, !noalias !166
  %i.vf = add nuw i64 %.036.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.vf, %i.pi
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !llvm.loop !168

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %middle.block338
  %i.vg = mul nsw i64 %i.sk, %i.pi
  br label %bb.ac

._crit_edge.i.i:                                  ; preds = %bb.ac, %dwt_interleave_rows.exit.i.i
  %i.vh = add nuw i64 %.03660.i.i, 1              ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %i.vh, %i.pk
  br i1 %exitcond65.not.i.i, label %decompose_2D_Bspline.exit.loopexit.i, label %bb.x

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i
  %.03759.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.xj, %bb.ac ] ; 6 uses
  %i.vi = add i64 %.03759.i.i, %i.vg
  %i.vj = shl i64 %i.vi, 2                        ; 6 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.vj
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.vl = trunc i64 %.03759.i.i to i32            ; 2 uses
  %i.vm = sub nsw i32 %i.vl, %i.rq
  %i.vn = call i32 @llvm.smax.i32(i32 %i.vm, i32 0)
  %i.vo = shl nsw i32 %i.vn, 2
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = sub nsw i32 %i.vl, %i.rl
  %i.vr = call i32 @llvm.smax.i32(i32 %i.vq, i32 0)
  %i.vs = shl nsw i32 %i.vr, 2
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = add i64 %.03759.i.i, %i.rr
  %..i41.i.i = call i64 @llvm.umin.i64(i64 %i.vu, i64 %i.qm)
  %i.vv = add i64 %.03759.i.i, %i.rs
  %i.vw = call i64 @llvm.umin.i64(i64 %i.vv, i64 %i.qm)
  %i.vx = getelementptr [4 x i8], ptr %i.qk, i64 %i.vp
  %i.vy = getelementptr [4 x i8], ptr %i.qk, i64 %i.vt
  %.idx.i.i.i = shl i64 %.03759.i.i, 4
  %i.vz = getelementptr i8, ptr %i.qk, i64 %.idx.i.i.i
  %.idx25.i.i.i = shl i64 %..i41.i.i, 4
  %i.wa = getelementptr i8, ptr %i.qk, i64 %.idx25.i.i.i
  %.idx26.i.i.i = shl i64 %i.vw, 4
  %i.wb = getelementptr i8, ptr %i.qk, i64 %.idx26.i.i.i
  %i.wc = load <4 x float>, ptr %i.vx, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %15 = load <4 x float>, ptr %i.vy, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %i.wd = load <4 x float>, ptr %i.vz, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %i.we = fmul reassoc nsz arcp contract afn <4 x float> %i.wd, splat (float 3.750000e-01)
  %i.wf = load <4 x float>, ptr %i.wa, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %16 = load <4 x float>, ptr %i.wb, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %i.wg = fadd reassoc nsz arcp contract afn <4 x float> %i.wf, %15
  %i.wh = fmul reassoc nsz arcp contract afn <4 x float> %i.wg, splat (float 2.500000e-01)
  %i.wi = fadd reassoc nsz arcp contract afn <4 x float> %16, %i.wc
  %17 = fmul reassoc nsz arcp contract afn <4 x float> %i.wi, splat (float 6.250000e-02)
  %18 = fadd reassoc nsz arcp contract afn <4 x float> %i.wh, %i.we
  %i.wj = fadd reassoc nsz arcp contract afn <4 x float> %18, %17 ; 2 uses
  %i.wk = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wj, zeroinitializer
  %i.wl = select <4 x i1> %i.wk, <4 x float> zeroinitializer, <4 x float> %i.wj ; 5 uses
  store <4 x float> %i.wl, ptr %i.vk, align 4, !tbaa !27, !alias.scope !175, !noalias !176
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.vj
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.wo = extractelement <4 x float> %i.wl, i64 0
  %i.wp = fsub reassoc nsz arcp contract afn float %i.wn, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.vj
  store float %i.wp, ptr %i.wq, align 4, !tbaa !27, !noalias !179
  %i.wr = or disjoint i64 %i.vj, 1                ; 2 uses
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.wr
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.wu = extractelement <4 x float> %i.wl, i64 1
  %i.wv = fsub reassoc nsz arcp contract afn float %i.wt, %i.wu
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.wr
  store float %i.wv, ptr %i.ww, align 4, !tbaa !27, !noalias !179
  %i.wx = or disjoint i64 %i.vj, 2                ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.wx
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.xa = extractelement <4 x float> %i.wl, i64 2
  %i.xb = fsub reassoc nsz arcp contract afn float %i.wz, %i.xa
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.wx
  store float %i.xb, ptr %i.xc, align 4, !tbaa !27, !noalias !179
  %i.xd = or disjoint i64 %i.vj, 3                ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.xd
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.xg = extractelement <4 x float> %i.wl, i64 3
  %i.xh = fsub reassoc nsz arcp contract afn float %i.xf, %i.xg
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.xd
  store float %i.xh, ptr %i.xi, align 4, !tbaa !27, !noalias !179
  %i.xj = add nuw i64 %.03759.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.xj, %i.pi
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ac

decompose_2D_Bspline.exit.loopexit.i:             ; preds = %._crit_edge.i.i
  %i.xk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  %.not103.i = icmp eq ptr %i.xk, null
  br i1 %.not103.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %decompose_2D_Bspline.exit.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !109
  %i.xl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.rk) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.096.i, i32 noundef %i.ph, i32 noundef %i.pj, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  %i.xm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %i.rk) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.097.i, i32 noundef %i.ph, i32 noundef %i.pj, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !109
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %decompose_2D_Bspline.exit.loopexit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not.i104, label %.lr.ph153.i, label %.lr.ph62.i.i

bb.af:                                            ; preds = %bb.az, %.lr.ph153.i
  %indvars.iv179.i = phi i64 [ %wide.trip.count, %.lr.ph153.i ], [ %indvars.iv.next180.i, %bb.az ]
  %.098150.i = phi i32 [ 0, %.lr.ph153.i ], [ %i.ayp, %bb.az ] ; 2 uses
  %indvars.iv.next180.i = add nsw i64 %indvars.iv179.i, -1 ; 4 uses
  %i.xn = trunc nuw nsw i64 %indvars.iv.next180.i to i32 ; 5 uses
  %i.xo = shl nuw i32 1, %i.xn                    ; 8 uses
  %i.xp = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.xn) ; 3 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, %i.am
  %i.xr = load i32, ptr %i.ap, align 4, !tbaa !29, !noalias !109
  %i.xs = sitofp reassoc nsz arcp contract afn i32 %i.xr to float
  %i.xt = fsub reassoc nsz arcp contract afn float %i.xq, %i.xs ; 2 uses
  %i.xu = fneg reassoc nsz arcp contract afn float %i.xt
  %i.xv = fmul reassoc nsz arcp contract afn float %i.xt, %i.xu
  %i.xw = load i32, ptr %i.an, align 4, !tbaa !26, !noalias !109
  %i.xx = sitofp reassoc nsz arcp contract afn i32 %i.xw to float ; 2 uses
  %i.xy = fmul reassoc nnan nsz arcp contract afn float %i.xx, %i.xx
  %i.xz = fdiv reassoc nsz arcp contract afn float %i.xv, %i.xy
  %i.ya = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.xz) ; 2 uses
  %i.yb = fmul reassoc nsz arcp contract afn float %i.ya, 2.500000e-01 ; 3 uses
  %i.yc = load <2 x float>, ptr %i.jv, align 4, !tbaa !27, !noalias !109
  %i.yd = insertelement <2 x float> poison, float %i.yb, i64 0
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yf = fmul reassoc nsz arcp contract afn <2 x float> %i.ye, %i.yc ; 2 uses
  %19 = shufflevector <2 x float> %i.yf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.yg = load float, ptr %i.jw, align 4, !tbaa !180, !noalias !109
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yb, %i.yg
  %i.yi = load float, ptr %i.jx, align 4, !tbaa !28, !noalias !109
  %i.yj = fmul reassoc nsz arcp contract afn float %i.yb, %i.yi
  %i.yk = load float, ptr %i.jy, align 4, !tbaa !25, !noalias !109
  %i.yl = fmul reassoc nsz arcp contract afn float %i.yk, %i.ya
  %i.ym = fadd reassoc nsz arcp contract afn float %i.yl, 1.000000e+00
  %i.yn = and i32 %.098150.i, 1
  %.not.i105 = icmp eq i32 %i.yn, 0               ; 2 uses
  %.093.i = select i1 %.not.i105, ptr %.094.lcssa.i.sink, ptr %i.qy ; 12 uses
  %.0.i = select i1 %.not.i105, ptr %i.qy, ptr %.094.lcssa.i.sink
  %i.yo = icmp eq i64 %indvars.iv.next180.i, 0
  %.1.i = select i1 %i.yo, ptr %spec.select98, ptr %.0.i ; 4 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next180.i
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !76, !noalias !109 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.assume(i1 true) [ "align"(ptr %.1.i, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.093.i, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yq, i64 64) ]
  br i1 %.not.i.i103, label %heat_PDE_diffusion.exit.i, label %.lr.ph265.i.i

.lr.ph265.i.i:                                    ; preds = %bb.af
  %.not.i.i112.i = icmp slt i32 %i.xo, %i.pj
  %.reass261.i.i = add i32 %i.xo, %invariant.op.i.i
  %i.yr = fmul reassoc nsz arcp contract afn float %i.xp, %i.xp
  %factor.op.fmul.reass.i.i = fmul reassoc nsz arcp contract afn float %i.yr, %factor.op.fmul262.i.i
  %i.ys = insertelement <4 x float> poison, float %factor.op.fmul.reass.i.i, i64 0
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> poison, <4 x i32> zeroinitializer
  %20 = shufflevector <2 x float> %i.yf, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.yu = insertelement <4 x float> poison, float %i.yh, i64 0
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yw = insertelement <4 x float> poison, float %i.yj, i64 0
  %i.yx = shufflevector <4 x float> %i.yw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yy = insertelement <4 x float> poison, float %i.ym, i64 0
  %i.yz = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i118.i, %.lr.ph265.i.i
  %.0200263.i.i = phi i64 [ 0, %.lr.ph265.i.i ], [ %i.aac, %._crit_edge.i118.i ] ; 2 uses
  %i.za = trunc i64 %.0200263.i.i to i32          ; 5 uses
  br i1 %.not.i.i112.i, label %bb.ah, label %dwt_interleave_rows.exit.i114.i

bb.ah:                                            ; preds = %bb.ag
  %i.zb = sdiv i32 %.reass261.i.i, %i.xo          ; 4 uses
  %i.zc = srem i32 %i.pj, %i.xo                   ; 3 uses
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ze = mul nsw i32 %i.zc, %i.zb                ; 2 uses
  %i.zf = icmp sgt i32 %i.ze, %i.za
  br i1 %i.zf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.zg = sdiv i32 %i.za, %i.zb
  %i.zh = srem i32 %i.za, %i.zb
  %i.zi = shl i32 %i.zh, %i.xn
  %i.zj = add nsw i32 %i.zi, %i.zg
  br label %dwt_interleave_rows.exit.i114.i

bb.ak:                                            ; preds = %bb.ai
  %i.zk = sub nsw i32 %i.za, %i.ze                ; 2 uses
  %i.zl = add nsw i32 %i.zb, -1                   ; 2 uses
  %i.zm = sdiv i32 %i.zk, %i.zl
  %i.zn = add nsw i32 %i.zm, %i.zc
  %i.zo = srem i32 %i.zk, %i.zl
  %i.zp = shl i32 %i.zo, %i.xn
  %i.zq = add nsw i32 %i.zn, %i.zp
  br label %dwt_interleave_rows.exit.i114.i

dwt_interleave_rows.exit.i114.i:                  ; preds = %bb.ak, %bb.aj, %bb.ag
  %.1.i.i115.i = phi i32 [ %i.za, %bb.ag ], [ %i.zj, %bb.aj ], [ %i.zq, %bb.ak ] ; 3 uses
  %i.zr = sext i32 %.1.i.i115.i to i64
  %i.zs = sub i32 %.1.i.i115.i, %i.xo             ; 2 uses
  %i.zt = icmp sgt i32 %i.zs, 0
  %i.zu = zext nneg i32 %i.zs to i64
  %i.zv = mul nsw i64 %i.zu, %i.pi
  %i.zw = select i1 %i.zt, i64 %i.zv, i64 0       ; 3 uses
  %i.zx = mul nsw i64 %i.zr, %i.pi                ; 3 uses
  %i.zy = add i32 %.1.i.i115.i, %i.xo
  %i.zz = call i32 @llvm.smin.i32(i32 %i.zy, i32 %invariant.op.i.i)
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = mul nsw i64 %i.aaa, %i.pi              ; 3 uses
  br i1 %.not.i40.i.i, label %._crit_edge.i118.i, label %.lr.ph.i116.i

._crit_edge.i118.i:                               ; preds = %.loopexit.i.i, %dwt_interleave_rows.exit.i114.i
  %i.aac = add nuw i64 %.0200263.i.i, 1           ; 2 uses
  %exitcond285.not.i.i = icmp eq i64 %i.aac, %i.pk
  br i1 %exitcond285.not.i.i, label %heat_PDE_diffusion.exit.i, label %bb.ag

.lr.ph.i116.i:                                    ; preds = %dwt_interleave_rows.exit.i114.i, %.loopexit.i.i
  %.0204260.i.i = phi i64 [ %i.aym, %.loopexit.i.i ], [ 0, %dwt_interleave_rows.exit.i114.i ] ; 5 uses
  %i.aad = add i64 %.0204260.i.i, %i.zx           ; 3 uses
  %i.aae = shl i64 %i.aad, 2                      ; 6 uses
  br i1 %i.bt, label %.critedge.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i116.i
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aad
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !83, !alias.scope !190, !noalias !191
  %i.aah = icmp eq i8 %i.aag, 0
  br i1 %i.aah, label %.preheader246.preheader.i.i, label %.critedge.i.i

.preheader246.preheader.i.i:                      ; preds = %bb.al
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.aae
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %.093.i, i64 %i.aae
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.aae
  %i.aal = load <4 x float>, ptr %i.aai, align 16, !tbaa !27, !alias.scope !181, !noalias !192
  %i.aam = load <4 x float>, ptr %i.aaj, align 16, !tbaa !27, !alias.scope !193, !noalias !194
  %i.aan = fadd reassoc nsz arcp contract afn <4 x float> %i.aam, %i.aal
  store <4 x float> %i.aan, ptr %i.aak, align 16, !tbaa !27, !alias.scope !195, !noalias !196
  br label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %bb.al, %.lr.ph.i116.i
  %i.aao = trunc i64 %.0204260.i.i to i32         ; 2 uses
  %i.aap = sub i32 %i.aao, %i.xo
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.aap, i32 0)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 3 uses
  %i.aaq = add i32 %i.xo, %i.aao
  %i.aar = call i32 @llvm.smin.i32(i32 %i.aaq, i32 %i.ra)
  %i.aas = sext i32 %i.aar to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !197
  %i.aat = add nsw i64 %i.zw, %spec.select.i.i
  %i.aau = shl i64 %i.aat, 4                      ; 2 uses
  %scevgep269.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.aau
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.aau
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.aav = add i64 %.0204260.i.i, %i.zw
  %i.aaw = shl i64 %i.aav, 4                      ; 2 uses
  %scevgep269.1.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.aaw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ki, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.aaw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ka, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.aax = add nsw i64 %i.zw, %i.aas
  %i.aay = shl i64 %i.aax, 4                      ; 2 uses
  %scevgep269.2.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.aay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep.2.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.aay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep270.2.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.aaz = add nsw i64 %i.zx, %spec.select.i.i
  %i.aba = shl i64 %i.aaz, 4                      ; 2 uses
  %scevgep269.1274.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.aba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kk, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1274.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.1275.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.aba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kc, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.1275.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abb = shl i64 %i.aad, 4                      ; 2 uses
  %scevgep269.1.1.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.abb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep.1.1.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.1.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep270.1.1.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.1.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abc = add nsw i64 %i.zx, %i.aas
  %i.abd = shl i64 %i.abc, 4                      ; 2 uses
  %scevgep269.2.1.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.abd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kj, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.2.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kb, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.2.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abe = add nsw i64 %i.aab, %spec.select.i.i
  %i.abf = shl i64 %i.abe, 4                      ; 2 uses
  %scevgep269.2278.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.abf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep.2277.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2278.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.2279.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep270.2276.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.2279.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abg = add i64 %.0204260.i.i, %i.aab
  %i.abh = shl i64 %i.abg, 4                      ; 2 uses
  %scevgep269.1.2.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.abh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kh, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.1.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jz, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.1.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abi = add nsw i64 %i.aab, %i.aas
  %i.abj = shl i64 %i.abi, 4                      ; 2 uses
  %scevgep269.2.2.i.i = getelementptr nuw i8, ptr %i.yq, i64 %i.abj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep.2.2.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep271.2.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep270.2.2.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep271.2.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abk = load float, ptr %i.kl, align 8, !tbaa !27, !noalias !197
  %i.abl = load float, ptr %i.km, align 8, !tbaa !27, !noalias !197
  %i.abm = fsub reassoc nsz arcp contract afn float %i.abk, %i.abl
  %i.abn = load float, ptr %i.kn, align 8, !tbaa !27, !noalias !197
  %i.abo = load float, ptr %i.ko, align 8, !tbaa !27, !noalias !197
  %i.abp = fsub reassoc nsz arcp contract afn float %i.abn, %i.abo
  %i.abq = load float, ptr %i.kp, align 4, !tbaa !27, !noalias !197
  %i.abr = load float, ptr %i.kq, align 4, !tbaa !27, !noalias !197
  %i.abs = fsub reassoc nsz arcp contract afn float %i.abq, %i.abr
  %i.abt = fmul reassoc nsz arcp contract afn float %i.abs, 5.000000e-01 ; 3 uses
  %i.abu = load float, ptr %i.kr, align 4, !tbaa !27, !noalias !197
  %i.abv = load float, ptr %i.ks, align 4, !tbaa !27, !noalias !197
  %i.abw = fsub reassoc nsz arcp contract afn float %i.abu, %i.abv
  %i.abx = fmul reassoc nsz arcp contract afn float %i.abw, 5.000000e-01 ; 3 uses
  %i.aby = load <2 x float>, ptr %i.kd, align 8, !tbaa !27, !noalias !197
  %i.abz = load <2 x float>, ptr %i.ke, align 8, !tbaa !27, !noalias !197
  %i.aca = fsub reassoc nsz arcp contract afn <2 x float> %i.aby, %i.abz
  %i.acb = fmul reassoc nsz arcp contract afn <2 x float> %i.aca, splat (float 5.000000e-01) ; 4 uses
  %i.acc = load <2 x float>, ptr %i.kf, align 8, !tbaa !27, !noalias !197
  %i.acd = load <2 x float>, ptr %i.kg, align 8, !tbaa !27, !noalias !197
  %i.ace = fsub reassoc nsz arcp contract afn <2 x float> %i.acc, %i.acd
  %i.acf = fmul reassoc nsz arcp contract afn <2 x float> %i.ace, splat (float 5.000000e-01) ; 4 uses
  %i.acg = fmul reassoc nsz arcp contract afn <2 x float> %i.acb, %i.acb
  %i.ach = fmul reassoc nsz arcp contract afn <2 x float> %i.acf, %i.acf
  %i.aci = fadd reassoc nsz arcp contract afn <2 x float> %i.ach, %i.acg ; 3 uses
  %i.acj = fcmp reassoc nsz arcp contract afn une <2 x float> %i.aci, zeroinitializer ; 2 uses
  %i.ack = extractelement <2 x i1> %i.acj, i64 0  ; 2 uses
  %i.acl = extractelement <2 x float> %i.aci, i64 1
  %i.acm = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.acl) ; 3 uses
  %i.acn = extractelement <2 x float> %i.acb, i64 1
  %i.aco = fdiv reassoc nsz arcp contract afn float %i.acn, %i.acm
  %i.acp = extractelement <2 x float> %i.acf, i64 1
  %i.acq = fdiv reassoc nsz arcp contract afn float %i.acp, %i.acm
  %i.acr = extractelement <2 x i1> %i.acj, i64 1  ; 2 uses
  %.sroa.17439.0.i.i = select nsz i1 %i.acr, float %i.aco, float 1.000000e+00 ; 3 uses
  %i.acs = select reassoc nsz arcp contract afn i1 %i.acr, float %i.acq, float 0.000000e+00 ; 3 uses
  %i.act = fmul reassoc nsz arcp contract afn float %.sroa.17439.0.i.i, %.sroa.17439.0.i.i ; 8 uses
  %i.acu = fmul reassoc nsz arcp contract afn float %i.acs, %i.acs ; 8 uses
  %i.acv = fmul reassoc nsz arcp contract afn float %.sroa.17439.0.i.i, %i.acs ; 4 uses
  %i.acw = shufflevector <2 x float> %i.acb, <2 x float> %i.acf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.acx = insertelement <4 x float> %i.acw, float %i.abm, i64 2
  %i.acy = insertelement <4 x float> %i.acx, float %i.abp, i64 3
  %i.acz = fmul reassoc nsz arcp contract afn <4 x float> %i.acy, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.acz, %i.acz
  %foldExtExtBinop341 = fmul reassoc nsz arcp contract afn <4 x float> %i.acz, %i.acz
  %shift = shufflevector <4 x float> %foldExtExtBinop341, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop343 = fadd reassoc nsz arcp contract afn <4 x float> %shift, %foldExtExtBinop
  %i.ada = extractelement <4 x float> %foldExtExtBinop343, i64 2 ; 2 uses
  %i.adb = insertelement <2 x float> %i.aci, float %i.ada, i64 1
  %i.adc = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.adb)
  %i.add = shufflevector <2 x float> %i.adc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ade = fdiv reassoc nsz arcp contract afn <4 x float> %i.acz, %i.add ; 4 uses
  %i.adf = extractelement <4 x float> %i.ade, i64 0
  %.sroa.12437.0.i.i = select nsz i1 %i.ack, float %i.adf, float 1.000000e+00 ; 3 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %wide.masked.gather284 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asa = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284, %wide.masked.gather282
  %wide.masked.gather286 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather288 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.asb = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288, %wide.masked.gather286
  %wide.masked.gather290 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asc = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290, %wide.masked.gather288
  %i.asd = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288, %wide.masked.gather288
  %wide.masked.gather292 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather294 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.ase = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294, %wide.masked.gather292
  %wide.masked.gather296 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296, %wide.masked.gather294
  %wide.masked.gather298 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather300 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.asg = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, %wide.masked.gather298
  %wide.masked.gather302 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.ash = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302, %wide.masked.gather300
  %i.asi = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, %wide.masked.gather300
  %wide.masked.gather261.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep255.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather262.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep256.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.asj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather262.1, %wide.masked.gather261.1
  %i.ask = fadd reassoc nsz arcp contract afn <4 x float> %i.asj, %i.arp ; 2 uses
  %wide.masked.gather263.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep257.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asl = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather263.1, %wide.masked.gather262.1
  %i.asm = fadd reassoc nsz arcp contract afn <4 x float> %i.asl, %i.arq ; 2 uses
  %wide.masked.gather264.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep258.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather265.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep259.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.asn = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.1, %wide.masked.gather264.1
  %i.aso = fadd reassoc nsz arcp contract afn <4 x float> %i.asn, %i.arr ; 2 uses
  %wide.masked.gather266.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep260.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asp = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather266.1, %wide.masked.gather265.1
  %i.asq = fadd reassoc nsz arcp contract afn <4 x float> %i.asp, %i.ars ; 2 uses
  %i.asr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.1, %wide.masked.gather265.1
  %i.ass = fadd reassoc nsz arcp contract afn <4 x float> %i.asr, %i.art ; 2 uses
  %wide.masked.gather268.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep267.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather270.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep269.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.ast = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather270.1, %wide.masked.gather268.1
  %i.asu = fadd reassoc nsz arcp contract afn <4 x float> %i.ast, %i.aru ; 2 uses
  %wide.masked.gather272.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep271.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asv = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather272.1, %wide.masked.gather270.1
  %i.asw = fadd reassoc nsz arcp contract afn <4 x float> %i.asv, %i.arv ; 2 uses
  %wide.masked.gather274.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep273.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather276.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep275.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.asx = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.1, %wide.masked.gather274.1
  %i.asy = fadd reassoc nsz arcp contract afn <4 x float> %i.asx, %i.arw ; 2 uses
  %wide.masked.gather278.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep277.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather278.1, %wide.masked.gather276.1
  %i.ata = fadd reassoc nsz arcp contract afn <4 x float> %i.asz, %i.arx ; 2 uses
  %i.atb = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.1, %wide.masked.gather276.1
  %i.atc = fadd reassoc nsz arcp contract afn <4 x float> %i.atb, %i.ary ; 2 uses
  %wide.masked.gather280.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep279.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather282.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep281.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.atd = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather282.1, %wide.masked.gather280.1
  %i.ate = fadd reassoc nsz arcp contract afn <4 x float> %i.atd, %i.arz ; 2 uses
  %wide.masked.gather284.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284.1, %wide.masked.gather282.1
  %i.atg = fadd reassoc nsz arcp contract afn <4 x float> %i.atf, %i.asa ; 2 uses
  %wide.masked.gather286.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather288.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.ath = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.1, %wide.masked.gather286.1
  %i.ati = fadd reassoc nsz arcp contract afn <4 x float> %i.ath, %i.asb ; 2 uses
  %wide.masked.gather290.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290.1, %wide.masked.gather288.1
  %i.atk = fadd reassoc nsz arcp contract afn <4 x float> %i.atj, %i.asc ; 2 uses
  %i.atl = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.1, %wide.masked.gather288.1
  %i.atm = fadd reassoc nsz arcp contract afn <4 x float> %i.atl, %i.asd ; 2 uses
  %wide.masked.gather292.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather294.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.atn = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294.1, %wide.masked.gather292.1
  %i.ato = fadd reassoc nsz arcp contract afn <4 x float> %i.atn, %i.ase ; 2 uses
  %wide.masked.gather296.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atp = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296.1, %wide.masked.gather294.1
  %i.atq = fadd reassoc nsz arcp contract afn <4 x float> %i.atp, %i.asf ; 2 uses
  %wide.masked.gather298.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather300.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.atr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.1, %wide.masked.gather298.1
  %i.ats = fadd reassoc nsz arcp contract afn <4 x float> %i.atr, %i.asg ; 2 uses
  %wide.masked.gather302.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.att = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302.1, %wide.masked.gather300.1
  %i.atu = fadd reassoc nsz arcp contract afn <4 x float> %i.att, %i.ash ; 2 uses
  %i.atv = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.1, %wide.masked.gather300.1
  %i.atw = fadd reassoc nsz arcp contract afn <4 x float> %i.atv, %i.asi ; 2 uses
  %wide.masked.gather261.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep255.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather262.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep256.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.atx = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather262.2, %wide.masked.gather261.2
  %i.aty = fadd reassoc nsz arcp contract afn <4 x float> %i.atx, %i.ask
  %wide.masked.gather263.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep257.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.atz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather263.2, %wide.masked.gather262.2
  %i.aua = fadd reassoc nsz arcp contract afn <4 x float> %i.atz, %i.asm
  %wide.masked.gather264.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep258.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather265.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep259.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.aub = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.2, %wide.masked.gather264.2
  %i.auc = fadd reassoc nsz arcp contract afn <4 x float> %i.aub, %i.aso
  %wide.masked.gather266.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep260.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.aud = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather266.2, %wide.masked.gather265.2
  %i.aue = fadd reassoc nsz arcp contract afn <4 x float> %i.aud, %i.asq
  %i.auf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.2, %wide.masked.gather265.2
  %i.aug = fadd reassoc nsz arcp contract afn <4 x float> %i.auf, %i.ass
  %wide.masked.gather268.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep267.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather270.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep269.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.auh = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather270.2, %wide.masked.gather268.2
  %i.aui = fadd reassoc nsz arcp contract afn <4 x float> %i.auh, %i.asu
  %wide.masked.gather272.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep271.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.auj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather272.2, %wide.masked.gather270.2
  %i.auk = fadd reassoc nsz arcp contract afn <4 x float> %i.auj, %i.asw
  %wide.masked.gather274.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep273.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather276.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep275.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.aul = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.2, %wide.masked.gather274.2
  %i.aum = fadd reassoc nsz arcp contract afn <4 x float> %i.aul, %i.asy
  %wide.masked.gather278.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep277.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.aun = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather278.2, %wide.masked.gather276.2
  %i.auo = fadd reassoc nsz arcp contract afn <4 x float> %i.aun, %i.ata
  %i.aup = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.2, %wide.masked.gather276.2
  %i.auq = fadd reassoc nsz arcp contract afn <4 x float> %i.aup, %i.atc
  %wide.masked.gather280.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep279.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather282.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep281.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.aur = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather282.2, %wide.masked.gather280.2
  %i.aus = fadd reassoc nsz arcp contract afn <4 x float> %i.aur, %i.ate
  %wide.masked.gather284.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.aut = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284.2, %wide.masked.gather282.2
  %i.auu = fadd reassoc nsz arcp contract afn <4 x float> %i.aut, %i.atg
  %wide.masked.gather286.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather288.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.auv = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.2, %wide.masked.gather286.2
  %i.auw = fadd reassoc nsz arcp contract afn <4 x float> %i.auv, %i.ati
  %wide.masked.gather290.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.aux = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290.2, %wide.masked.gather288.2
  %i.auy = fadd reassoc nsz arcp contract afn <4 x float> %i.aux, %i.atk
  %i.auz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.2, %wide.masked.gather288.2
  %i.ava = fadd reassoc nsz arcp contract afn <4 x float> %i.auz, %i.atm
  %wide.masked.gather292.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather294.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.avb = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294.2, %wide.masked.gather292.2
  %i.avc = fadd reassoc nsz arcp contract afn <4 x float> %i.avb, %i.ato
  %wide.masked.gather296.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.avd = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296.2, %wide.masked.gather294.2
  %i.ave = fadd reassoc nsz arcp contract afn <4 x float> %i.avd, %i.atq
  %wide.masked.gather298.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather300.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.avf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.2, %wide.masked.gather298.2
  %i.avg = fadd reassoc nsz arcp contract afn <4 x float> %i.avf, %i.ats
  %wide.masked.gather302.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.avh = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302.2, %wide.masked.gather300.2
  %i.avi = fadd reassoc nsz arcp contract afn <4 x float> %i.avh, %i.atu
  %i.avj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.2, %wide.masked.gather300.2
  %i.avk = fadd reassoc nsz arcp contract afn <4 x float> %i.avj, %i.atw
  %i.avl = shufflevector <4 x float> %i.avk, <4 x float> %i.atw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avl)
  %i.avn = shufflevector <4 x float> %i.ava, <4 x float> %i.atm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avo = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avn)
  %i.avp = shufflevector <4 x float> %i.auq, <4 x float> %i.atc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avq = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avp)
  %i.avr = shufflevector <4 x float> %i.aug, <4 x float> %i.ass, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avs = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avr)
  %i.avt = shufflevector <4 x float> %i.avi, <4 x float> %i.atu, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avt)
  %i.avv = shufflevector <4 x float> %i.auy, <4 x float> %i.atk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avv)
  %i.avx = shufflevector <4 x float> %i.auo, <4 x float> %i.ata, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avy = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avx)
  %i.avz = shufflevector <4 x float> %i.aue, <4 x float> %i.asq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awa = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avz)
  %i.awb = shufflevector <4 x float> %i.avg, <4 x float> %i.ats, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awb)
  %i.awd = shufflevector <4 x float> %i.auw, <4 x float> %i.ati, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awe = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awd)
  %i.awf = shufflevector <4 x float> %i.aum, <4 x float> %i.asy, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awf)
  %i.awh = shufflevector <4 x float> %i.auc, <4 x float> %i.aso, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awi = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awh)
  %i.awj = shufflevector <4 x float> %i.ave, <4 x float> %i.atq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awj)
  %i.awl = shufflevector <4 x float> %i.auu, <4 x float> %i.atg, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awl)
  %i.awn = shufflevector <4 x float> %i.auk, <4 x float> %i.asw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awo = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awn)
  %i.awp = shufflevector <4 x float> %i.aua, <4 x float> %i.asm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awq = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awp)
  %i.awr = shufflevector <4 x float> %i.avc, <4 x float> %i.ato, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aws = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awr)
  %i.awt = shufflevector <4 x float> %i.aus, <4 x float> %i.ate, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awt)
  %i.awv = shufflevector <4 x float> %i.aui, <4 x float> %i.asu, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aww = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awv)
  %i.awx = shufflevector <4 x float> %i.aty, <4 x float> %i.ask, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awy = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awx)
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.aae
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %.093.i, i64 %i.aae
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.aae
  %i.axc = insertelement <4 x float> poison, float %i.avs, i64 0
  %i.axd = insertelement <4 x float> %i.axc, float %i.avq, i64 1
  %i.axe = insertelement <4 x float> %i.axd, float %i.avo, i64 2
  %i.axf = insertelement <4 x float> %i.axe, float %i.avm, i64 3
  %i.axg = fmul reassoc nsz arcp contract afn <4 x float> %i.axf, %i.yt
  %i.axh = fadd reassoc nsz arcp contract afn <4 x float> %i.axg, %i.rj
  %i.axi = insertelement <4 x float> poison, float %i.awq, i64 0
  %i.axj = insertelement <4 x float> %i.axi, float %i.aww, i64 1
  %i.axk = insertelement <4 x float> %i.axj, float %i.awm, i64 2
  %i.axl = insertelement <4 x float> %i.axk, float %i.aws, i64 3
  %i.axm = fmul reassoc nsz arcp contract afn <4 x float> %i.axl, %20
  %i.axn = insertelement <4 x float> poison, float %i.awy, i64 0
  %i.axo = insertelement <4 x float> %i.axn, float %i.awo, i64 1
  %i.axp = insertelement <4 x float> %i.axo, float %i.awu, i64 2
  %i.axq = insertelement <4 x float> %i.axp, float %i.awk, i64 3
  %i.axr = fmul reassoc nsz arcp contract afn <4 x float> %i.axq, %19
  %i.axs = fadd reassoc nsz arcp contract afn <4 x float> %i.axr, %i.axm
  %i.axt = insertelement <4 x float> poison, float %i.awi, i64 0
  %i.axu = insertelement <4 x float> %i.axt, float %i.awg, i64 1
  %i.axv = insertelement <4 x float> %i.axu, float %i.awe, i64 2
  %i.axw = insertelement <4 x float> %i.axv, float %i.awc, i64 3
  %i.axx = fmul reassoc nsz arcp contract afn <4 x float> %i.axw, %i.yv
  %i.axy = fadd reassoc nsz arcp contract afn <4 x float> %i.axs, %i.axx
  %i.axz = insertelement <4 x float> poison, float %i.awa, i64 0
  %i.aya = insertelement <4 x float> %i.axz, float %i.avy, i64 1
  %i.ayb = insertelement <4 x float> %i.aya, float %i.avw, i64 2
  %i.ayc = insertelement <4 x float> %i.ayb, float %i.avu, i64 3
  %i.ayd = fmul reassoc nsz arcp contract afn <4 x float> %i.ayc, %i.yx
  %i.aye = fadd reassoc nsz arcp contract afn <4 x float> %i.axy, %i.ayd
  %i.ayf = load <4 x float>, ptr %i.awz, align 16, !tbaa !27, !alias.scope !181, !noalias !192
  %i.ayg = fmul reassoc nsz arcp contract afn <4 x float> %i.ayf, %i.yz
  %i.ayh = fdiv reassoc nsz arcp contract afn <4 x float> %i.aye, %i.axh
  %i.ayi = fadd reassoc nsz arcp contract afn <4 x float> %i.ayg, %i.ayh
  %i.ayj = load <4 x float>, ptr %i.axa, align 16, !tbaa !27, !alias.scope !193, !noalias !194
  %i.ayk = fadd reassoc nsz arcp contract afn <4 x float> %i.ayi, %i.ayj
  %i.ayl = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ayk, <4 x float> zeroinitializer)
  store <4 x float> %i.ayl, ptr %i.axb, align 16, !tbaa !27, !alias.scope !195, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !197
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %compute_kernel.exit240.i.i, %.preheader246.preheader.i.i
  %i.aym = add nuw i64 %.0204260.i.i, 1           ; 2 uses
  %exitcond284.not.i.i = icmp eq i64 %i.aym, %i.pi
  br i1 %exitcond284.not.i.i, label %._crit_edge.i118.i, label %.lr.ph.i116.i

heat_PDE_diffusion.exit.i:                        ; preds = %._crit_edge.i118.i, %bb.af
  %i.ayn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  %.not101.i = icmp eq ptr %i.ayn, null
  br i1 %.not101.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %heat_PDE_diffusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20, !noalias !109
  %i.ayo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %i.xn) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.h, ptr noundef %.1.i, i32 noundef %i.ph, i32 noundef %i.pj, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !109
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %heat_PDE_diffusion.exit.i
  %i.ayp = add nuw nsw i32 %.098150.i, 1          ; 2 uses
  %exitcond182.not.i = icmp eq i32 %i.ayp, %.07.lcssa.i
  br i1 %exitcond182.not.i, label %wavelets_process.exit, label %bb.af

wavelets_process.exit:                            ; preds = %bb.az
  %i.ayq = add nuw nsw i32 %.079128, 1            ; 2 uses
  %exitcond151.not = icmp eq i32 %i.ayq, %spec.select
  br i1 %exitcond151.not, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %wavelets_process.exit, %bb.j
  call void @free(ptr noundef %i.ad) #20
  %i.ayr = load ptr, ptr %i.i, align 8, !tbaa !76
  call void @free(ptr noundef %i.ayr) #20
  %i.ays = load ptr, ptr %i.j, align 8, !tbaa !76
  call void @free(ptr noundef %i.ays) #20
  %i.ayt = load ptr, ptr %i.l, align 8, !tbaa !76
  call void @free(ptr noundef %i.ayt) #20
  %i.ayu = load ptr, ptr %i.k, align 8, !tbaa !76
  call void @free(ptr noundef %i.ayu) #20
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.be

bb.bb:                                            ; preds = %.loopexit, %bb.bd
  %indvars.iv152 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next153, %bb.bd ] ; 2 uses
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv152
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !76 ; 2 uses
  %.not94 = icmp eq ptr %i.ayw, null
  br i1 %.not94, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.ayw) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count
  br i1 %exitcond156.not, label %bb.ba, label %bb.bb

bb.be:                                            ; preds = %bb.ba, %bb.b
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [2 x ptr], align 8                ; 3 uses
  %i.e = alloca [2 x ptr], align 8                ; 3 uses
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef 128) #20 ; 19 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.f, ptr %i.g, align 16, !tbaa !198
  %i.h = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #20
  %i.i = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.29, i64 noundef 8) #20
  %i.j = tail call ptr @gtk_label_new(ptr noundef %i.i) #20 ; 5 uses
  tail call void @gtk_widget_set_halign(ptr noundef %i.j, i32 noundef 0) #20
  tail call void @gtk_label_set_xalign(ptr noundef %i.j, float noundef 5.000000e-01) #20
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.j, i32 noundef 3) #20
  tail call void @dt_gui_add_class(ptr noundef %i.j, ptr noundef nonnull @.str.70) #20
  store ptr %i.j, ptr %i.a, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.k, align 8, !tbaa !14
  %i.l = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.28, i32 noundef 1762, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.h, ptr noundef nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !206
  %i.n = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.30) #20 ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !207
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.n, float noundef 1.000000e+00, float noundef 1.280000e+02) #20
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !207
  %i.p = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.o, ptr noundef %i.p) #20
  %i.q = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.32) #20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !209
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.q, float noundef 0.000000e+00, float noundef 5.120000e+02) #20
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209
  %i.t = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #20
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.s, ptr noundef %i.t) #20
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !209
  %i.v = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.u, ptr noundef %i.v) #20
  %i.w = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.35) #20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !210
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.w, float noundef 1.000000e+00, float noundef 5.120000e+02) #20
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !210
  %i.z = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #20
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.y, ptr noundef %i.z) #20
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !210
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aa, ptr noundef %i.ab) #20
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.ad = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.37, i64 noundef 8) #20
  %i.ae = call ptr @gtk_label_new(ptr noundef %i.ad) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ae, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.ae, float noundef 5.000000e-01) #20
  call void @gtk_label_set_ellipsize(ptr noundef %i.ae, i32 noundef 3) #20
  call void @dt_gui_add_class(ptr noundef %i.ae, ptr noundef nonnull @.str.70) #20
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.af, align 8, !tbaa !14
  %i.ag = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.28, i32 noundef 1793, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ac, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.ah = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.38) #20 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !211
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ah, i32 noundef 4) #20
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !211
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.aj, ptr noundef nonnull @.str.39) #20
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !211
  %i.al = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ak, ptr noundef %i.al) #20
  %i.am = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.41) #20 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !212
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.am, i32 noundef 4) #20
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !212
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ao, ptr noundef nonnull @.str.39) #20
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !212
  %i.aq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ap, ptr noundef %i.aq) #20
  %i.ar = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.43) #20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !213
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ar, i32 noundef 4) #20
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !213
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.at, ptr noundef nonnull @.str.39) #20
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !213
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.av) #20
  %i.aw = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.45) #20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !214
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.aw, i32 noundef 4) #20
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !214
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ay, ptr noundef nonnull @.str.39) #20
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !214
  %i.ba = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.az, ptr noundef %i.ba) #20
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.bc = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.47, i64 noundef 8) #20
  %i.bd = call ptr @gtk_label_new(ptr noundef %i.bc) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.bd, i32 noundef 0) #20
end_hunk_1
