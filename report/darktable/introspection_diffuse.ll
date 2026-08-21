Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_diffuse?download=true
inline.NumInlined: 77
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  %i.py = extractelement <4 x float> %i.pv, i64 1
  %i.pz = fcmp reassoc nsz arcp contract afn oeq float %i.py, 0.000000e+00
  %i.qa = extractelement <4 x float> %i.pv, i64 2
  %i.qb = fcmp reassoc nsz arcp contract afn oeq float %i.qa, 0.000000e+00
  %i.qc = extractelement <4 x float> %i.pv, i64 3
  %i.qd = fcmp reassoc nsz arcp contract afn oeq float %i.qc, 0.000000e+00
  %i.qe = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.pv, zeroinitializer
  %i.qf = select <4 x i1> %i.qe, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2) ; 4 uses
  %i.qg = extractelement <4 x i32> %i.qf, i64 0
  %.0.i.i = select i1 %i.px, i32 0, i32 %i.qg
  %i.qh = extractelement <4 x i32> %i.qf, i64 1
  %.0.i106.i = select i1 %i.pz, i32 0, i32 %i.qh
  %i.qi = extractelement <4 x i32> %i.qf, i64 2
  %.0.i108.i = select i1 %i.qb, i32 0, i32 %i.qi
  %i.qj = extractelement <4 x i32> %i.qf, i64 3
  %.0.i110.i = select i1 %i.qd, i32 0, i32 %i.qj
  %i.qk = load float, ptr %i.js, align 4, !tbaa !110, !noalias !109
  %i.ql = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.qk)
  %i.qm = load float, ptr %i.jt, align 4, !tbaa !111, !noalias !109
  %i.qn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.qm)
  %i.qo = shl nsw i64 %i.pq, 2                    ; 5 uses
  %i.qp = shl nsw i64 %i.pq, 4
  %i.qq = add nsw i64 %i.qp, 48
  %i.qr = and i64 %i.qq, -64
  %i.qs = call ptr @dt_alloc_aligned(i64 noundef %i.qr) #20, !noalias !112 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qs, i64 64) ]
  %.not.i.i103 = icmp eq i32 %i.pr, 0             ; 2 uses
  %invariant.op.i.i = add i32 %i.pr, -1           ; 3 uses
  %i.qt = add nsw i64 %i.ps, -1                   ; 2 uses
  %.not.i40.i.i = icmp eq i32 %i.pp, 0            ; 2 uses
  %i.qu = add nsw i64 %i.pq, -1                   ; 2 uses
  br i1 %.not.i.i103, label %.lr.ph.split.us.i, label %.lr.ph62.i.i.preheader

.lr.ph62.i.i.preheader:                           ; preds = %bb.t
  %min.iters.check307 = icmp ult i32 %i.pp, 4
  %n.vec309 = and i64 %i.pq, -4                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec309, %i.pq
  br label %.lr.ph62.i.i

.lr.ph.split.us.i:                                ; preds = %bb.t
  %i.qv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %decompose_2D_Bspline.exit.us.us.preheader.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !109
  %i.qx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef 0) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.084, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  %i.qy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef 0) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %i.pt, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !109
  br i1 %exitcond176.peel.not.i, label %.lr.ph153.i, label %decompose_2D_Bspline.exit.us.peel.next.i

decompose_2D_Bspline.exit.us.peel.next.i:         ; preds = %bb.u
  %.pre183.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  br label %decompose_2D_Bspline.exit.us.i

decompose_2D_Bspline.exit.us.us.preheader.i:      ; preds = %.lr.ph.split.us.i
  %.096.us.us.le.i = select i1 %.not102.us.us.le.not.i, ptr %i.pu, ptr %i.pt
  br label %.lr.ph153.i

decompose_2D_Bspline.exit.us.i:                   ; preds = %bb.w, %decompose_2D_Bspline.exit.us.peel.next.i
  %i.qz = phi ptr [ %i.rd, %bb.w ], [ %.pre183.i, %decompose_2D_Bspline.exit.us.peel.next.i ]
  %.098146.us.i = phi i32 [ %i.re, %bb.w ], [ 1, %decompose_2D_Bspline.exit.us.peel.next.i ] ; 4 uses
  %i.ra = and i32 %.098146.us.i, 1
  %.not102.us.i = icmp eq i32 %i.ra, 0            ; 2 uses
  %.096.us.i = select i1 %.not102.us.i, ptr %i.pt, ptr %i.pu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %.not103.us.i = icmp eq ptr %i.qz, null
  br i1 %.not103.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %decompose_2D_Bspline.exit.us.i
  %..us.i = select i1 %.not102.us.i, ptr %i.pu, ptr %i.pt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !109
  %i.rb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %.098146.us.i) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %..us.i, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  %i.rc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %.098146.us.i) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.096.us.i, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !109
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %decompose_2D_Bspline.exit.us.i
  %i.rd = phi ptr [ %.pre.i, %bb.v ], [ null, %decompose_2D_Bspline.exit.us.i ]
  %i.re = add nuw nsw i32 %.098146.us.i, 1        ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.re, %.07.lcssa.i
  br i1 %exitcond176.not.i, label %.lr.ph153.i, label %decompose_2D_Bspline.exit.us.i, !llvm.loop !156

.lr.ph153.i:                                      ; preds = %bb.ae, %bb.w, %bb.u, %decompose_2D_Bspline.exit.us.us.preheader.i
  %.099.lcssa.i.sink = phi ptr [ %.096.us.us.le.i, %decompose_2D_Bspline.exit.us.us.preheader.i ], [ %i.pt, %bb.u ], [ %.096.us.i, %bb.w ], [ %.096.i, %bb.ae ] ; 3 uses
  call void @free(ptr noundef %i.qs) #20, !noalias !103
  %i.rf = icmp eq ptr %.099.lcssa.i.sink, %i.pu
  %i.rg = select i1 %i.rf, ptr %i.pt, ptr %i.pu   ; 2 uses
  %i.rh = fmul reassoc nsz arcp contract afn float %i.ql, f0x3DE38E39
  %factor.op.fmul262.i.i = fadd reassoc nsz arcp contract afn float %i.rh, f0xBDE38E39
  %i.ri = add nsw i32 %i.pp, -1
  %i.rj = fmul reassoc nsz arcp contract afn <4 x float> %i.pv, %i.pv
  %i.rk = fmul reassoc nsz arcp contract afn <4 x float> %i.rj, splat (float 1.140130e+07) ; 5 uses
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.rm = shufflevector <4 x float> %i.rk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.rn = shufflevector <4 x float> %i.rk, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ro = shufflevector <4 x float> %i.rk, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rp = shufflevector <4 x float> %i.rk, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.rq = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.af

.lr.ph62.i.i:                                     ; preds = %.lr.ph62.i.i.preheader, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %.lr.ph62.i.i.preheader ] ; 4 uses
  %i.rs = trunc nuw nsw i64 %indvars.iv.i to i32  ; 7 uses
  %i.rt = shl nuw i32 1, %i.rs                    ; 7 uses
  %i.ru = icmp eq i64 %indvars.iv.i, 0
  %i.rv = and i32 %i.rs, 1
  %.not102.i = icmp eq i32 %i.rv, 0               ; 2 uses
  %..i = select i1 %.not102.i, ptr %i.pu, ptr %i.pt
  %.097.i = select i1 %i.ru, ptr %.084, ptr %..i  ; 7 uses
  %.096.i = select i1 %.not102.i, ptr %i.pt, ptr %i.pu ; 3 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !76, !noalias !109 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %.not.i.i.i = icmp slt i32 %i.rt, %i.pr
  %.reass.i.i = add i32 %i.rt, %invariant.op.i.i
  %i.ry = shl i32 2, %i.rs                        ; 3 uses
  %i.rz = sext i32 %i.rt to i64                   ; 2 uses
  %i.sa = sext i32 %i.ry to i64                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %.lr.ph62.i.i
  %.03760.i.i = phi i64 [ 0, %.lr.ph62.i.i ], [ %i.vp, %._crit_edge.i.i ] ; 2 uses
  %i.sb = trunc i64 %.03760.i.i to i32            ; 5 uses
  br i1 %.not.i.i.i, label %bb.y, label %dwt_interleave_rows.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.sc = sdiv i32 %.reass.i.i, %i.rt             ; 4 uses
  %i.sd = srem i32 %i.pr, %i.rt                   ; 3 uses
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sf = mul nsw i32 %i.sd, %i.sc                ; 2 uses
  %i.sg = icmp sgt i32 %i.sf, %i.sb
  br i1 %i.sg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.sh = sdiv i32 %i.sb, %i.sc
  %i.si = srem i32 %i.sb, %i.sc
  %i.sj = shl i32 %i.si, %i.rs
  %i.sk = add nsw i32 %i.sj, %i.sh
  br label %dwt_interleave_rows.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.sl = sub nsw i32 %i.sb, %i.sf                ; 2 uses
  %i.sm = add nsw i32 %i.sc, -1                   ; 2 uses
  %i.sn = sdiv i32 %i.sl, %i.sm
  %i.so = add nsw i32 %i.sn, %i.sd
  %i.sp = srem i32 %i.sl, %i.sm
  %i.sq = shl i32 %i.sp, %i.rs
  %i.sr = add nsw i32 %i.so, %i.sq
  br label %dwt_interleave_rows.exit.i.i

dwt_interleave_rows.exit.i.i:                     ; preds = %bb.ab, %bb.aa, %bb.x
  %.1.i.i.i = phi i32 [ %i.sb, %bb.x ], [ %i.sk, %bb.aa ], [ %i.sr, %bb.ab ] ; 3 uses
  %i.ss = sext i32 %.1.i.i.i to i64               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.st = sub nsw i32 %.1.i.i.i, %i.ry
  %i.su = call i32 @llvm.smax.i32(i32 %i.st, i32 0)
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = mul i64 %i.qo, %i.sv                    ; 2 uses
  %i.sx = sub nsw i32 %.1.i.i.i, %i.rt
  %i.sy = call i32 @llvm.smax.i32(i32 %i.sx, i32 0)
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = mul i64 %i.qo, %i.sz                    ; 2 uses
  %i.tb = mul i64 %i.qo, %i.ss                    ; 2 uses
  %i.tc = add nsw i64 %i.ss, %i.rz
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.tc, i64 %i.qt)
  %i.td = mul i64 %..i.i.i, %i.qo                 ; 2 uses
  %i.te = add nsw i64 %i.ss, %i.sa
  %i.tf = call i64 @llvm.umin.i64(i64 %i.te, i64 %i.qt)
  %i.tg = mul i64 %i.tf, %i.qo                    ; 2 uses
  br i1 %.not.i40.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %dwt_interleave_rows.exit.i.i
  br i1 %min.iters.check307, label %.lr.ph.i.i.i.preheader352, label %vector.body310

vector.body310:                                   ; preds = %.lr.ph.i.i.i.preheader, %vector.body310
  %index311 = phi i64 [ %index.next337, %vector.body310 ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.th = shl i64 %index311, 2                    ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.th ; 5 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.th
  %i.tk = getelementptr [4 x i8], ptr %i.ti, i64 %i.sw
  %i.tl = getelementptr [4 x i8], ptr %i.ti, i64 %i.ta
  %i.tm = getelementptr [4 x i8], ptr %i.ti, i64 %i.tb
  %i.tn = getelementptr [4 x i8], ptr %i.ti, i64 %i.td
  %i.to = getelementptr [4 x i8], ptr %i.ti, i64 %i.tg
  %wide.vec312 = load <16 x float>, ptr %i.tk, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec313 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec314 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec315 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec316 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %6 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec313, splat (float 6.250000e-02)
  %wide.vec317 = load <16 x float>, ptr %i.tl, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec318 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec319 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec320 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec321 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec318, splat (float 2.500000e-01)
  %8 = fadd reassoc nsz arcp contract afn <4 x float> %6, %7
  %wide.vec322 = load <16 x float>, ptr %i.tm, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec323 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec324 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec325 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec326 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.tp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec323, splat (float 3.750000e-01)
  %9 = fadd reassoc nsz arcp contract afn <4 x float> %8, %i.tp
  %wide.vec327 = load <16 x float>, ptr %i.tn, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec328 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec329 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec330 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec331 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %10 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec328, splat (float 2.500000e-01)
  %11 = fadd reassoc nsz arcp contract afn <4 x float> %9, %10
  %wide.vec332 = load <16 x float>, ptr %i.to, align 4, !tbaa !27, !alias.scope !164, !noalias !165 ; 4 uses
  %strided.vec333 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec334 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec335 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec336 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %12 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec333, splat (float 6.250000e-02)
  %i.tq = fadd reassoc nsz arcp contract afn <4 x float> %12, %11 ; 2 uses
  %i.tr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec314, splat (float 6.250000e-02)
  %13 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec319, splat (float 2.500000e-01)
  %14 = fadd reassoc nsz arcp contract afn <4 x float> %i.tr, %13
  %15 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec324, splat (float 3.750000e-01)
  %i.ts = fadd reassoc nsz arcp contract afn <4 x float> %14, %15
  %i.tt = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec329, splat (float 2.500000e-01)
  %i.tu = fadd reassoc nsz arcp contract afn <4 x float> %i.ts, %i.tt
  %i.tv = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec334, splat (float 6.250000e-02)
  %i.tw = fadd reassoc nsz arcp contract afn <4 x float> %i.tv, %i.tu ; 2 uses
  %i.tx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec315, splat (float 6.250000e-02)
  %16 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec320, splat (float 2.500000e-01)
  %i.ty = fadd reassoc nsz arcp contract afn <4 x float> %i.tx, %16
  %i.tz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec325, splat (float 3.750000e-01)
  %i.ua = fadd reassoc nsz arcp contract afn <4 x float> %i.ty, %i.tz
  %i.ub = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec330, splat (float 2.500000e-01)
  %i.uc = fadd reassoc nsz arcp contract afn <4 x float> %i.ua, %i.ub
  %i.ud = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec335, splat (float 6.250000e-02)
  %i.ue = fadd reassoc nsz arcp contract afn <4 x float> %i.ud, %i.uc ; 2 uses
  %17 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec316, splat (float 6.250000e-02)
  %i.uf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec321, splat (float 2.500000e-01)
  %i.ug = fadd reassoc nsz arcp contract afn <4 x float> %17, %i.uf
  %i.uh = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec326, splat (float 3.750000e-01)
  %i.ui = fadd reassoc nsz arcp contract afn <4 x float> %i.ug, %i.uh
  %i.uj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec331, splat (float 2.500000e-01)
  %i.uk = fadd reassoc nsz arcp contract afn <4 x float> %i.ui, %i.uj
  %18 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec336, splat (float 6.250000e-02)
  %i.ul = fadd reassoc nsz arcp contract afn <4 x float> %18, %i.uk ; 2 uses
  %i.um = shufflevector <4 x float> %i.tq, <4 x float> %i.tw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.un = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.um, zeroinitializer
  %i.uo = shufflevector <4 x float> %i.tq, <4 x float> %i.tw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.up = select reassoc nsz arcp contract afn <8 x i1> %i.un, <8 x float> zeroinitializer, <8 x float> %i.uo
  %i.uq = shufflevector <4 x float> %i.ue, <4 x float> %i.ul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ur = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.uq, zeroinitializer
  %i.us = shufflevector <4 x float> %i.ue, <4 x float> %i.ul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ut = select reassoc nsz arcp contract afn <8 x i1> %i.ur, <8 x float> zeroinitializer, <8 x float> %i.us
  %interleaved.vec = shufflevector <8 x float> %i.up, <8 x float> %i.ut, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.tj, align 64, !tbaa !27, !alias.scope !162, !noalias !166
  %index.next337 = add nuw i64 %index311, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next337, %n.vec309
  br i1 %i.uu, label %middle.block338, label %vector.body310, !llvm.loop !167

middle.block338:                                  ; preds = %vector.body310
  br i1 %cmp.n, label %.lr.ph.i.i, label %.lr.ph.i.i.i.preheader352

.lr.ph.i.i.i.preheader352:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block338
  %.036.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec309, %middle.block338 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader352, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %i.vn, %.lr.ph.i.i.i ], [ %.036.i.i.i.ph, %.lr.ph.i.i.i.preheader352 ] ; 2 uses
  %i.uv = shl i64 %.036.i.i.i, 2                  ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.uv ; 5 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.uv
  %i.uy = getelementptr [4 x i8], ptr %i.uw, i64 %i.sw
  %i.uz = getelementptr [4 x i8], ptr %i.uw, i64 %i.ta
  %i.va = getelementptr [4 x i8], ptr %i.uw, i64 %i.tb
  %i.vb = getelementptr [4 x i8], ptr %i.uw, i64 %i.td
  %i.vc = getelementptr [4 x i8], ptr %i.uw, i64 %i.tg
  %i.vd = load <4 x float>, ptr %i.uy, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %19 = fmul reassoc nsz arcp contract afn <4 x float> %i.vd, splat (float 6.250000e-02)
  %i.ve = load <4 x float>, ptr %i.uz, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %i.vf = fmul reassoc nsz arcp contract afn <4 x float> %i.ve, splat (float 2.500000e-01)
  %20 = fadd reassoc nsz arcp contract afn <4 x float> %19, %i.vf
  %i.vg = load <4 x float>, ptr %i.va, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %21 = fmul reassoc nsz arcp contract afn <4 x float> %i.vg, splat (float 3.750000e-01)
  %i.vh = fadd reassoc nsz arcp contract afn <4 x float> %20, %21
  %22 = load <4 x float>, ptr %i.vb, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %i.vi = fmul reassoc nsz arcp contract afn <4 x float> %22, splat (float 2.500000e-01)
  %i.vj = fadd reassoc nsz arcp contract afn <4 x float> %i.vh, %i.vi
  %23 = load <4 x float>, ptr %i.vc, align 4, !tbaa !27, !alias.scope !164, !noalias !165
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %23, splat (float 6.250000e-02)
  %i.vk = fadd reassoc nsz arcp contract afn <4 x float> %24, %i.vj ; 2 uses
  %i.vl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.vk, zeroinitializer
  %i.vm = select <4 x i1> %i.vl, <4 x float> zeroinitializer, <4 x float> %i.vk
  store <4 x float> %i.vm, ptr %i.ux, align 16, !tbaa !27, !alias.scope !162, !noalias !166
  %i.vn = add nuw i64 %.036.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.vn, %i.pq
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !llvm.loop !168

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %middle.block338
  %i.vo = mul nsw i64 %i.ss, %i.pq
  br label %bb.ac

._crit_edge.i.i:                                  ; preds = %bb.ac, %dwt_interleave_rows.exit.i.i
  %i.vp = add nuw i64 %.03760.i.i, 1              ; 2 uses
  %exitcond65.not.i.i = icmp eq i64 %i.vp, %i.ps
  br i1 %exitcond65.not.i.i, label %decompose_2D_Bspline.exit.loopexit.i, label %bb.x

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i
  %.03659.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.xr, %bb.ac ] ; 6 uses
  %i.vq = add i64 %.03659.i.i, %i.vo
  %i.vr = shl i64 %i.vq, 2                        ; 6 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.096.i, i64 %i.vr
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.vt = trunc i64 %.03659.i.i to i32            ; 2 uses
  %i.vu = sub nsw i32 %i.vt, %i.ry
  %i.vv = call i32 @llvm.smax.i32(i32 %i.vu, i32 0)
  %i.vw = shl nsw i32 %i.vv, 2
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = sub nsw i32 %i.vt, %i.rt
  %i.vz = call i32 @llvm.smax.i32(i32 %i.vy, i32 0)
  %i.wa = shl nsw i32 %i.vz, 2
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = add i64 %.03659.i.i, %i.rz
  %..i41.i.i = call i64 @llvm.umin.i64(i64 %i.wc, i64 %i.qu)
  %i.wd = add i64 %.03659.i.i, %i.sa
  %i.we = call i64 @llvm.umin.i64(i64 %i.wd, i64 %i.qu)
  %i.wf = getelementptr [4 x i8], ptr %i.qs, i64 %i.vx
  %i.wg = getelementptr [4 x i8], ptr %i.qs, i64 %i.wb
  %.idx.i.i.i = shl i64 %.03659.i.i, 4
  %i.wh = getelementptr i8, ptr %i.qs, i64 %.idx.i.i.i
  %.idx25.i.i.i = shl i64 %..i41.i.i, 4
  %i.wi = getelementptr i8, ptr %i.qs, i64 %.idx25.i.i.i
  %.idx26.i.i.i = shl i64 %i.we, 4
  %i.wj = getelementptr i8, ptr %i.qs, i64 %.idx26.i.i.i
  %i.wk = load <4 x float>, ptr %i.wf, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %25 = fmul reassoc nsz arcp contract afn <4 x float> %i.wk, splat (float 6.250000e-02)
  %i.wl = load <4 x float>, ptr %i.wg, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %i.wm = fmul reassoc nsz arcp contract afn <4 x float> %i.wl, splat (float 2.500000e-01)
  %26 = fadd reassoc nsz arcp contract afn <4 x float> %25, %i.wm
  %i.wn = load <4 x float>, ptr %i.wh, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %27 = fmul reassoc nsz arcp contract afn <4 x float> %i.wn, splat (float 3.750000e-01)
  %i.wo = fadd reassoc nsz arcp contract afn <4 x float> %26, %27
  %28 = load <4 x float>, ptr %i.wi, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %i.wp = fmul reassoc nsz arcp contract afn <4 x float> %28, splat (float 2.500000e-01)
  %i.wq = fadd reassoc nsz arcp contract afn <4 x float> %i.wo, %i.wp
  %29 = load <4 x float>, ptr %i.wj, align 16, !tbaa !27, !alias.scope !169, !noalias !174
  %30 = fmul reassoc nsz arcp contract afn <4 x float> %29, splat (float 6.250000e-02)
  %i.wr = fadd reassoc nsz arcp contract afn <4 x float> %30, %i.wq ; 2 uses
  %i.ws = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wr, zeroinitializer
  %i.wt = select <4 x i1> %i.ws, <4 x float> zeroinitializer, <4 x float> %i.wr ; 5 uses
  store <4 x float> %i.wt, ptr %i.vs, align 4, !tbaa !27, !alias.scope !175, !noalias !176
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.vr
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.ww = extractelement <4 x float> %i.wt, i64 0
  %i.wx = fsub reassoc nsz arcp contract afn float %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.vr
  store float %i.wx, ptr %i.wy, align 4, !tbaa !27, !noalias !179
  %i.wz = or disjoint i64 %i.vr, 1                ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.xc = extractelement <4 x float> %i.wt, i64 1
  %i.xd = fsub reassoc nsz arcp contract afn float %i.xb, %i.xc
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.wz
  store float %i.xd, ptr %i.xe, align 4, !tbaa !27, !noalias !179
  %i.xf = or disjoint i64 %i.vr, 2                ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.xf
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.xi = extractelement <4 x float> %i.wt, i64 2
  %i.xj = fsub reassoc nsz arcp contract afn float %i.xh, %i.xi
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.xf
  store float %i.xj, ptr %i.xk, align 4, !tbaa !27, !noalias !179
  %i.xl = or disjoint i64 %i.vr, 3                ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.xl
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !27, !alias.scope !177, !noalias !178
  %i.xo = extractelement <4 x float> %i.wt, i64 3
  %i.xp = fsub reassoc nsz arcp contract afn float %i.xn, %i.xo
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.xl
  store float %i.xp, ptr %i.xq, align 4, !tbaa !27, !noalias !179
  %i.xr = add nuw i64 %.03659.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.xr, %i.pq
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ac

decompose_2D_Bspline.exit.loopexit.i:             ; preds = %._crit_edge.i.i
  %i.xs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  %.not103.i = icmp eq ptr %i.xs, null
  br i1 %.not103.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %decompose_2D_Bspline.exit.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !109
  %i.xt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.rs) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.097.i, i32 noundef %i.pp, i32 noundef %i.pr, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  %i.xu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %i.rs) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.096.i, i32 noundef %i.pp, i32 noundef %i.pr, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !109
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %decompose_2D_Bspline.exit.loopexit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not.i104, label %.lr.ph153.i, label %.lr.ph62.i.i

bb.af:                                            ; preds = %bb.az, %.lr.ph153.i
  %indvars.iv179.i = phi i64 [ %wide.trip.count, %.lr.ph153.i ], [ %indvars.iv.next180.i, %bb.az ]
  %.095150.i = phi i32 [ 0, %.lr.ph153.i ], [ %i.ayx, %bb.az ] ; 2 uses
  %indvars.iv.next180.i = add nsw i64 %indvars.iv179.i, -1 ; 4 uses
  %i.xv = trunc nuw nsw i64 %indvars.iv.next180.i to i32 ; 5 uses
  %i.xw = shl nuw i32 1, %i.xv                    ; 8 uses
  %i.xx = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.xv) ; 3 uses
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xx, %i.am
  %i.xz = load i32, ptr %i.ap, align 4, !tbaa !29, !noalias !109
  %i.ya = sitofp reassoc nsz arcp contract afn i32 %i.xz to float
  %i.yb = fsub reassoc nsz arcp contract afn float %i.xy, %i.ya ; 2 uses
  %i.yc = fneg reassoc nsz arcp contract afn float %i.yb
  %i.yd = fmul reassoc nsz arcp contract afn float %i.yb, %i.yc
  %i.ye = load i32, ptr %i.an, align 4, !tbaa !26, !noalias !109
  %i.yf = sitofp reassoc nsz arcp contract afn i32 %i.ye to float ; 2 uses
  %i.yg = fmul reassoc nnan nsz arcp contract afn float %i.yf, %i.yf
  %i.yh = fdiv reassoc nsz arcp contract afn float %i.yd, %i.yg
  %i.yi = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.yh) ; 2 uses
  %i.yj = fmul reassoc nsz arcp contract afn float %i.yi, 2.500000e-01 ; 3 uses
  %i.yk = load <2 x float>, ptr %i.jv, align 4, !tbaa !27, !noalias !109
  %i.yl = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yn = fmul reassoc nsz arcp contract afn <2 x float> %i.ym, %i.yk ; 2 uses
  %31 = shufflevector <2 x float> %i.yn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.yo = load float, ptr %i.jw, align 4, !tbaa !180, !noalias !109
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yj, %i.yo
  %i.yq = load float, ptr %i.jx, align 4, !tbaa !28, !noalias !109
  %i.yr = fmul reassoc nsz arcp contract afn float %i.yj, %i.yq
  %i.ys = load float, ptr %i.jy, align 4, !tbaa !25, !noalias !109
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, %i.yi
  %i.yu = fadd reassoc nsz arcp contract afn float %i.yt, 1.000000e+00
  %i.yv = and i32 %.095150.i, 1
  %.not.i105 = icmp eq i32 %i.yv, 0               ; 2 uses
  %.093.i = select i1 %.not.i105, ptr %.099.lcssa.i.sink, ptr %i.rg ; 12 uses
  %.0.i = select i1 %.not.i105, ptr %i.rg, ptr %.099.lcssa.i.sink
  %i.yw = icmp eq i64 %indvars.iv.next180.i, 0
  %.1.i = select i1 %i.yw, ptr %spec.select98, ptr %.0.i ; 4 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next180.i
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !76, !noalias !109 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.assume(i1 true) [ "align"(ptr %.1.i, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.093.i, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yy, i64 64) ]
  br i1 %.not.i.i103, label %heat_PDE_diffusion.exit.i, label %.lr.ph265.i.i

.lr.ph265.i.i:                                    ; preds = %bb.af
  %.not.i.i112.i = icmp slt i32 %i.xw, %i.pr
  %.reass261.i.i = add i32 %i.xw, %invariant.op.i.i
  %i.yz = fmul reassoc nsz arcp contract afn float %i.xx, %i.xx
  %factor.op.fmul.reass.i.i = fmul reassoc nsz arcp contract afn float %i.yz, %factor.op.fmul262.i.i
  %i.za = insertelement <4 x float> poison, float %factor.op.fmul.reass.i.i, i64 0
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> zeroinitializer
  %32 = shufflevector <2 x float> %i.yn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.zc = insertelement <4 x float> poison, float %i.yp, i64 0
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ze = insertelement <4 x float> poison, float %i.yr, i64 0
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zg = insertelement <4 x float> poison, float %i.yu, i64 0
  %i.zh = shufflevector <4 x float> %i.zg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i118.i, %.lr.ph265.i.i
  %.0206263.i.i = phi i64 [ 0, %.lr.ph265.i.i ], [ %i.aak, %._crit_edge.i118.i ] ; 2 uses
  %i.zi = trunc i64 %.0206263.i.i to i32          ; 5 uses
  br i1 %.not.i.i112.i, label %bb.ah, label %dwt_interleave_rows.exit.i114.i

bb.ah:                                            ; preds = %bb.ag
  %i.zj = sdiv i32 %.reass261.i.i, %i.xw          ; 4 uses
  %i.zk = srem i32 %i.pr, %i.xw                   ; 3 uses
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.zm = mul nsw i32 %i.zk, %i.zj                ; 2 uses
  %i.zn = icmp sgt i32 %i.zm, %i.zi
  br i1 %i.zn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.zo = sdiv i32 %i.zi, %i.zj
  %i.zp = srem i32 %i.zi, %i.zj
  %i.zq = shl i32 %i.zp, %i.xv
  %i.zr = add nsw i32 %i.zq, %i.zo
  br label %dwt_interleave_rows.exit.i114.i

bb.ak:                                            ; preds = %bb.ai
  %i.zs = sub nsw i32 %i.zi, %i.zm                ; 2 uses
  %i.zt = add nsw i32 %i.zj, -1                   ; 2 uses
  %i.zu = sdiv i32 %i.zs, %i.zt
  %i.zv = add nsw i32 %i.zu, %i.zk
  %i.zw = srem i32 %i.zs, %i.zt
  %i.zx = shl i32 %i.zw, %i.xv
  %i.zy = add nsw i32 %i.zv, %i.zx
  br label %dwt_interleave_rows.exit.i114.i

dwt_interleave_rows.exit.i114.i:                  ; preds = %bb.ak, %bb.aj, %bb.ag
  %.1.i.i115.i = phi i32 [ %i.zi, %bb.ag ], [ %i.zr, %bb.aj ], [ %i.zy, %bb.ak ] ; 3 uses
  %i.zz = sext i32 %.1.i.i115.i to i64
  %i.aaa = sub i32 %.1.i.i115.i, %i.xw            ; 2 uses
  %i.aab = icmp sgt i32 %i.aaa, 0
  %i.aac = zext nneg i32 %i.aaa to i64
  %i.aad = mul nsw i64 %i.aac, %i.pq
  %i.aae = select i1 %i.aab, i64 %i.aad, i64 0    ; 3 uses
  %i.aaf = mul nsw i64 %i.zz, %i.pq               ; 3 uses
  %i.aag = add i32 %.1.i.i115.i, %i.xw
  %i.aah = call i32 @llvm.smin.i32(i32 %i.aag, i32 %invariant.op.i.i)
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = mul nsw i64 %i.aai, %i.pq              ; 3 uses
  br i1 %.not.i40.i.i, label %._crit_edge.i118.i, label %.lr.ph.i116.i

._crit_edge.i118.i:                               ; preds = %.loopexit.i.i, %dwt_interleave_rows.exit.i114.i
  %i.aak = add nuw i64 %.0206263.i.i, 1           ; 2 uses
  %exitcond279.not.i.i = icmp eq i64 %i.aak, %i.ps
  br i1 %exitcond279.not.i.i, label %heat_PDE_diffusion.exit.i, label %bb.ag

.lr.ph.i116.i:                                    ; preds = %dwt_interleave_rows.exit.i114.i, %.loopexit.i.i
  %.0205260.i.i = phi i64 [ %i.ayu, %.loopexit.i.i ], [ 0, %dwt_interleave_rows.exit.i114.i ] ; 5 uses
  %i.aal = add i64 %.0205260.i.i, %i.aaf          ; 3 uses
  %i.aam = shl i64 %i.aal, 2                      ; 6 uses
  br i1 %i.bt, label %.critedge.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i116.i
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aal
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !83, !alias.scope !190, !noalias !191
  %i.aap = icmp eq i8 %i.aao, 0
  br i1 %i.aap, label %.preheader246.preheader.i.i, label %.critedge.i.i

.preheader246.preheader.i.i:                      ; preds = %bb.al
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.aam
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.093.i, i64 %i.aam
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.aam
  %i.aat = load <4 x float>, ptr %i.aaq, align 16, !tbaa !27, !alias.scope !181, !noalias !192
  %i.aau = load <4 x float>, ptr %i.aar, align 16, !tbaa !27, !alias.scope !193, !noalias !194
  %i.aav = fadd reassoc nsz arcp contract afn <4 x float> %i.aau, %i.aat
  store <4 x float> %i.aav, ptr %i.aas, align 16, !tbaa !27, !alias.scope !195, !noalias !196
  br label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %bb.al, %.lr.ph.i116.i
  %i.aaw = trunc i64 %.0205260.i.i to i32         ; 2 uses
  %i.aax = sub i32 %i.aaw, %i.xw
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.aax, i32 0)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 3 uses
  %i.aay = add i32 %i.xw, %i.aaw
  %i.aaz = call i32 @llvm.smin.i32(i32 %i.aay, i32 %i.ri)
  %i.aba = sext i32 %i.aaz to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !197
  %i.abb = add nsw i64 %i.aae, %spec.select.i.i
  %i.abc = shl i64 %i.abb, 4                      ; 2 uses
  %scevgep.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abd = add i64 %.0205260.i.i, %i.aae
  %i.abe = shl i64 %i.abd, 4                      ; 2 uses
  %scevgep.1.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ki, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ka, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abf = add nsw i64 %i.aae, %i.aba
  %i.abg = shl i64 %i.abf, 4                      ; 2 uses
  %scevgep.2.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pb, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pc, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abh = add nsw i64 %i.aaf, %spec.select.i.i
  %i.abi = shl i64 %i.abh, 4                      ; 2 uses
  %scevgep.1270.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kk, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.1270.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.1271.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kc, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1271.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abj = shl i64 %i.aal, 4                      ; 2 uses
  %scevgep.1.1.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pd, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.1.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.1.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pe, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abk = add nsw i64 %i.aaf, %i.aba
  %i.abl = shl i64 %i.abk, 4                      ; 2 uses
  %scevgep.2.1.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kj, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.2.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kb, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.1.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abm = add nsw i64 %i.aaj, %spec.select.i.i
  %i.abn = shl i64 %i.abm, 4                      ; 2 uses
  %scevgep.2272.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pf, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2272.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.2273.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pg, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2273.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abo = add i64 %.0205260.i.i, %i.aaj
  %i.abp = shl i64 %i.abo, 4                      ; 2 uses
  %scevgep.1.2.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kh, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.1.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.1.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jz, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abq = add nsw i64 %i.aaj, %i.aba
  %i.abr = shl i64 %i.abq, 4                      ; 2 uses
  %scevgep.2.2.i.i = getelementptr nuw i8, ptr %i.yy, i64 %i.abr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ph, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !192
  %scevgep269.2.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pi, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.2.i.i, i64 16, i1 false), !tbaa !27, !noalias !194
  %i.abs = load float, ptr %i.kl, align 8, !tbaa !27, !noalias !197
  %i.abt = load float, ptr %i.km, align 8, !tbaa !27, !noalias !197
  %i.abu = fsub reassoc nsz arcp contract afn float %i.abs, %i.abt
  %i.abv = load float, ptr %i.kn, align 8, !tbaa !27, !noalias !197
  %i.abw = load float, ptr %i.ko, align 8, !tbaa !27, !noalias !197
  %i.abx = fsub reassoc nsz arcp contract afn float %i.abv, %i.abw
  %i.aby = load float, ptr %i.kp, align 4, !tbaa !27, !noalias !197
  %i.abz = load float, ptr %i.kq, align 4, !tbaa !27, !noalias !197
  %i.aca = fsub reassoc nsz arcp contract afn float %i.aby, %i.abz
  %i.acb = fmul reassoc nsz arcp contract afn float %i.aca, 5.000000e-01 ; 3 uses
  %i.acc = load float, ptr %i.kr, align 4, !tbaa !27, !noalias !197
  %i.acd = load float, ptr %i.ks, align 4, !tbaa !27, !noalias !197
  %i.ace = fsub reassoc nsz arcp contract afn float %i.acc, %i.acd
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, 5.000000e-01 ; 3 uses
  %i.acg = load <2 x float>, ptr %i.kd, align 8, !tbaa !27, !noalias !197
  %i.ach = load <2 x float>, ptr %i.ke, align 8, !tbaa !27, !noalias !197
  %i.aci = fsub reassoc nsz arcp contract afn <2 x float> %i.acg, %i.ach
  %i.acj = fmul reassoc nsz arcp contract afn <2 x float> %i.aci, splat (float 5.000000e-01) ; 4 uses
  %i.ack = load <2 x float>, ptr %i.kf, align 8, !tbaa !27, !noalias !197
  %i.acl = load <2 x float>, ptr %i.kg, align 8, !tbaa !27, !noalias !197
  %i.acm = fsub reassoc nsz arcp contract afn <2 x float> %i.ack, %i.acl
  %i.acn = fmul reassoc nsz arcp contract afn <2 x float> %i.acm, splat (float 5.000000e-01) ; 4 uses
  %i.aco = fmul reassoc nsz arcp contract afn <2 x float> %i.acj, %i.acj
  %i.acp = fmul reassoc nsz arcp contract afn <2 x float> %i.acn, %i.acn
  %i.acq = fadd reassoc nsz arcp contract afn <2 x float> %i.acp, %i.aco ; 3 uses
  %i.acr = fcmp reassoc nsz arcp contract afn une <2 x float> %i.acq, zeroinitializer ; 2 uses
  %i.acs = extractelement <2 x i1> %i.acr, i64 0  ; 2 uses
  %i.act = extractelement <2 x float> %i.acq, i64 1
  %i.acu = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.act) ; 3 uses
  %i.acv = extractelement <2 x float> %i.acj, i64 1
  %i.acw = fdiv reassoc nsz arcp contract afn float %i.acv, %i.acu
  %i.acx = extractelement <2 x float> %i.acn, i64 1
  %i.acy = fdiv reassoc nsz arcp contract afn float %i.acx, %i.acu
  %i.acz = extractelement <2 x i1> %i.acr, i64 1  ; 2 uses
  %.sroa.17433.0.i.i = select nsz i1 %i.acz, float %i.acw, float 1.000000e+00 ; 3 uses
  %i.ada = select reassoc nsz arcp contract afn i1 %i.acz, float %i.acy, float 0.000000e+00 ; 3 uses
  %i.adb = fmul reassoc nsz arcp contract afn float %.sroa.17433.0.i.i, %.sroa.17433.0.i.i ; 8 uses
  %i.adc = fmul reassoc nsz arcp contract afn float %i.ada, %i.ada ; 8 uses
  %i.add = fmul reassoc nsz arcp contract afn float %.sroa.17433.0.i.i, %i.ada ; 4 uses
  %i.ade = shufflevector <2 x float> %i.acj, <2 x float> %i.acn, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.adf = insertelement <4 x float> %i.ade, float %i.abu, i64 2
  %i.adg = insertelement <4 x float> %i.adf, float %i.abx, i64 3
  %i.adh = fmul reassoc nsz arcp contract afn <4 x float> %i.adg, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.adh, %i.adh
  %foldExtExtBinop341 = fmul reassoc nsz arcp contract afn <4 x float> %i.adh, %i.adh
  %shift = shufflevector <4 x float> %foldExtExtBinop341, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop343 = fadd reassoc nsz arcp contract afn <4 x float> %shift, %foldExtExtBinop
  %i.adi = extractelement <4 x float> %foldExtExtBinop343, i64 2 ; 2 uses
  %i.adj = insertelement <2 x float> %i.acq, float %i.adi, i64 1
  %i.adk = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.adj)
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.adm = fdiv reassoc nsz arcp contract afn <4 x float> %i.adh, %i.adl ; 4 uses
  %i.adn = extractelement <4 x float> %i.adm, i64 0
  %.sroa.12431.0.i.i = select nsz i1 %i.acs, float %i.adn, float 1.000000e+00 ; 3 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %wide.masked.gather284 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asi = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284, %wide.masked.gather282
  %wide.masked.gather286 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather288 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.asj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288, %wide.masked.gather286
  %wide.masked.gather290 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.ask = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290, %wide.masked.gather288
  %i.asl = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288, %wide.masked.gather288
  %wide.masked.gather292 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather294 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.asm = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294, %wide.masked.gather292
  %wide.masked.gather296 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asn = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296, %wide.masked.gather294
  %wide.masked.gather298 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather300 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.aso = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, %wide.masked.gather298
  %wide.masked.gather302 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asp = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302, %wide.masked.gather300
  %i.asq = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, %wide.masked.gather300
  %wide.masked.gather261.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep255.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather262.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep256.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.asr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather262.1, %wide.masked.gather261.1
  %i.ass = fadd reassoc nsz arcp contract afn <4 x float> %i.asr, %i.arx ; 2 uses
  %wide.masked.gather263.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep257.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.ast = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather263.1, %wide.masked.gather262.1
  %i.asu = fadd reassoc nsz arcp contract afn <4 x float> %i.ast, %i.ary ; 2 uses
  %wide.masked.gather264.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep258.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather265.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep259.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.asv = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.1, %wide.masked.gather264.1
  %i.asw = fadd reassoc nsz arcp contract afn <4 x float> %i.asv, %i.arz ; 2 uses
  %wide.masked.gather266.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep260.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.asx = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather266.1, %wide.masked.gather265.1
  %i.asy = fadd reassoc nsz arcp contract afn <4 x float> %i.asx, %i.asa ; 2 uses
  %i.asz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.1, %wide.masked.gather265.1
  %i.ata = fadd reassoc nsz arcp contract afn <4 x float> %i.asz, %i.asb ; 2 uses
  %wide.masked.gather268.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep267.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather270.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep269.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.atb = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather270.1, %wide.masked.gather268.1
  %i.atc = fadd reassoc nsz arcp contract afn <4 x float> %i.atb, %i.asc ; 2 uses
  %wide.masked.gather272.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep271.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atd = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather272.1, %wide.masked.gather270.1
  %i.ate = fadd reassoc nsz arcp contract afn <4 x float> %i.atd, %i.asd ; 2 uses
  %wide.masked.gather274.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep273.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather276.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep275.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.atf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.1, %wide.masked.gather274.1
  %i.atg = fadd reassoc nsz arcp contract afn <4 x float> %i.atf, %i.ase ; 2 uses
  %wide.masked.gather278.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep277.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.ath = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather278.1, %wide.masked.gather276.1
  %i.ati = fadd reassoc nsz arcp contract afn <4 x float> %i.ath, %i.asf ; 2 uses
  %i.atj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.1, %wide.masked.gather276.1
  %i.atk = fadd reassoc nsz arcp contract afn <4 x float> %i.atj, %i.asg ; 2 uses
  %wide.masked.gather280.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep279.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather282.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep281.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.atl = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather282.1, %wide.masked.gather280.1
  %i.atm = fadd reassoc nsz arcp contract afn <4 x float> %i.atl, %i.ash ; 2 uses
  %wide.masked.gather284.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atn = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284.1, %wide.masked.gather282.1
  %i.ato = fadd reassoc nsz arcp contract afn <4 x float> %i.atn, %i.asi ; 2 uses
  %wide.masked.gather286.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather288.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.atp = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.1, %wide.masked.gather286.1
  %i.atq = fadd reassoc nsz arcp contract afn <4 x float> %i.atp, %i.asj ; 2 uses
  %wide.masked.gather290.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290.1, %wide.masked.gather288.1
  %i.ats = fadd reassoc nsz arcp contract afn <4 x float> %i.atr, %i.ask ; 2 uses
  %i.att = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.1, %wide.masked.gather288.1
  %i.atu = fadd reassoc nsz arcp contract afn <4 x float> %i.att, %i.asl ; 2 uses
  %wide.masked.gather292.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather294.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.atv = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294.1, %wide.masked.gather292.1
  %i.atw = fadd reassoc nsz arcp contract afn <4 x float> %i.atv, %i.asm ; 2 uses
  %wide.masked.gather296.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.atx = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296.1, %wide.masked.gather294.1
  %i.aty = fadd reassoc nsz arcp contract afn <4 x float> %i.atx, %i.asn ; 2 uses
  %wide.masked.gather298.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather300.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.atz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.1, %wide.masked.gather298.1
  %i.aua = fadd reassoc nsz arcp contract afn <4 x float> %i.atz, %i.aso ; 2 uses
  %wide.masked.gather302.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !27, !noalias !197
  %i.aub = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302.1, %wide.masked.gather300.1
  %i.auc = fadd reassoc nsz arcp contract afn <4 x float> %i.aub, %i.asp ; 2 uses
  %i.aud = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.1, %wide.masked.gather300.1
  %i.aue = fadd reassoc nsz arcp contract afn <4 x float> %i.aud, %i.asq ; 2 uses
  %wide.masked.gather261.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep255.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather262.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep256.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.auf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather262.2, %wide.masked.gather261.2
  %i.aug = fadd reassoc nsz arcp contract afn <4 x float> %i.auf, %i.ass
  %wide.masked.gather263.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep257.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.auh = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather263.2, %wide.masked.gather262.2
  %i.aui = fadd reassoc nsz arcp contract afn <4 x float> %i.auh, %i.asu
  %wide.masked.gather264.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep258.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather265.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep259.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.auj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.2, %wide.masked.gather264.2
  %i.auk = fadd reassoc nsz arcp contract afn <4 x float> %i.auj, %i.asw
  %wide.masked.gather266.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep260.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.aul = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather266.2, %wide.masked.gather265.2
  %i.aum = fadd reassoc nsz arcp contract afn <4 x float> %i.aul, %i.asy
  %i.aun = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265.2, %wide.masked.gather265.2
  %i.auo = fadd reassoc nsz arcp contract afn <4 x float> %i.aun, %i.ata
  %wide.masked.gather268.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep267.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather270.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep269.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.aup = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather270.2, %wide.masked.gather268.2
  %i.auq = fadd reassoc nsz arcp contract afn <4 x float> %i.aup, %i.atc
  %wide.masked.gather272.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep271.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.aur = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather272.2, %wide.masked.gather270.2
  %i.aus = fadd reassoc nsz arcp contract afn <4 x float> %i.aur, %i.ate
  %wide.masked.gather274.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep273.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather276.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep275.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.aut = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.2, %wide.masked.gather274.2
  %i.auu = fadd reassoc nsz arcp contract afn <4 x float> %i.aut, %i.atg
  %wide.masked.gather278.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep277.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.auv = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather278.2, %wide.masked.gather276.2
  %i.auw = fadd reassoc nsz arcp contract afn <4 x float> %i.auv, %i.ati
  %i.aux = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276.2, %wide.masked.gather276.2
  %i.auy = fadd reassoc nsz arcp contract afn <4 x float> %i.aux, %i.atk
  %wide.masked.gather280.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep279.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather282.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep281.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.auz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather282.2, %wide.masked.gather280.2
  %i.ava = fadd reassoc nsz arcp contract afn <4 x float> %i.auz, %i.atm
  %wide.masked.gather284.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.avb = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284.2, %wide.masked.gather282.2
  %i.avc = fadd reassoc nsz arcp contract afn <4 x float> %i.avb, %i.ato
  %wide.masked.gather286.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather288.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.avd = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.2, %wide.masked.gather286.2
  %i.ave = fadd reassoc nsz arcp contract afn <4 x float> %i.avd, %i.atq
  %wide.masked.gather290.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.avf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290.2, %wide.masked.gather288.2
  %i.avg = fadd reassoc nsz arcp contract afn <4 x float> %i.avf, %i.ats
  %i.avh = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288.2, %wide.masked.gather288.2
  %i.avi = fadd reassoc nsz arcp contract afn <4 x float> %i.avh, %i.atu
  %wide.masked.gather292.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather294.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 2 uses
  %i.avj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294.2, %wide.masked.gather292.2
  %i.avk = fadd reassoc nsz arcp contract afn <4 x float> %i.avj, %i.atw
  %wide.masked.gather296.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.avl = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296.2, %wide.masked.gather294.2
  %i.avm = fadd reassoc nsz arcp contract afn <4 x float> %i.avl, %i.aty
  %wide.masked.gather298.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %wide.masked.gather300.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197 ; 4 uses
  %i.avn = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.2, %wide.masked.gather298.2
  %i.avo = fadd reassoc nsz arcp contract afn <4 x float> %i.avn, %i.aua
  %wide.masked.gather302.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301.2, <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> poison), !tbaa !27, !noalias !197
  %i.avp = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302.2, %wide.masked.gather300.2
  %i.avq = fadd reassoc nsz arcp contract afn <4 x float> %i.avp, %i.auc
  %i.avr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300.2, %wide.masked.gather300.2
  %i.avs = fadd reassoc nsz arcp contract afn <4 x float> %i.avr, %i.aue
  %i.avt = shufflevector <4 x float> %i.avs, <4 x float> %i.aue, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avt)
  %i.avv = shufflevector <4 x float> %i.avi, <4 x float> %i.atu, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avv)
  %i.avx = shufflevector <4 x float> %i.auy, <4 x float> %i.atk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.avy = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avx)
  %i.avz = shufflevector <4 x float> %i.auo, <4 x float> %i.ata, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awa = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.avz)
  %i.awb = shufflevector <4 x float> %i.avq, <4 x float> %i.auc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awb)
  %i.awd = shufflevector <4 x float> %i.avg, <4 x float> %i.ats, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awe = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awd)
  %i.awf = shufflevector <4 x float> %i.auw, <4 x float> %i.ati, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awf)
  %i.awh = shufflevector <4 x float> %i.aum, <4 x float> %i.asy, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awi = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awh)
  %i.awj = shufflevector <4 x float> %i.avo, <4 x float> %i.aua, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awj)
  %i.awl = shufflevector <4 x float> %i.ave, <4 x float> %i.atq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awl)
  %i.awn = shufflevector <4 x float> %i.auu, <4 x float> %i.atg, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awo = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awn)
  %i.awp = shufflevector <4 x float> %i.auk, <4 x float> %i.asw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awq = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awp)
  %i.awr = shufflevector <4 x float> %i.avm, <4 x float> %i.aty, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aws = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awr)
  %i.awt = shufflevector <4 x float> %i.avc, <4 x float> %i.ato, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awt)
  %i.awv = shufflevector <4 x float> %i.aus, <4 x float> %i.ate, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aww = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awv)
  %i.awx = shufflevector <4 x float> %i.aui, <4 x float> %i.asu, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awy = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awx)
  %i.awz = shufflevector <4 x float> %i.avk, <4 x float> %i.atw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.axa = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awz)
  %i.axb = shufflevector <4 x float> %i.ava, <4 x float> %i.atm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.axc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.axb)
  %i.axd = shufflevector <4 x float> %i.auq, <4 x float> %i.atc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.axe = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.axd)
  %i.axf = shufflevector <4 x float> %i.aug, <4 x float> %i.ass, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.axg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.axf)
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.aam
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.093.i, i64 %i.aam
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.aam
  %i.axk = insertelement <4 x float> poison, float %i.awa, i64 0
  %i.axl = insertelement <4 x float> %i.axk, float %i.avy, i64 1
  %i.axm = insertelement <4 x float> %i.axl, float %i.avw, i64 2
  %i.axn = insertelement <4 x float> %i.axm, float %i.avu, i64 3
  %i.axo = fmul reassoc nsz arcp contract afn <4 x float> %i.axn, %i.zb
  %i.axp = fadd reassoc nsz arcp contract afn <4 x float> %i.axo, %i.rr
  %i.axq = insertelement <4 x float> poison, float %i.awy, i64 0
  %i.axr = insertelement <4 x float> %i.axq, float %i.axe, i64 1
  %i.axs = insertelement <4 x float> %i.axr, float %i.awu, i64 2
  %i.axt = insertelement <4 x float> %i.axs, float %i.axa, i64 3
  %i.axu = fmul reassoc nsz arcp contract afn <4 x float> %i.axt, %31
  %i.axv = insertelement <4 x float> poison, float %i.axg, i64 0
  %i.axw = insertelement <4 x float> %i.axv, float %i.aww, i64 1
  %i.axx = insertelement <4 x float> %i.axw, float %i.axc, i64 2
  %i.axy = insertelement <4 x float> %i.axx, float %i.aws, i64 3
  %i.axz = fmul reassoc nsz arcp contract afn <4 x float> %i.axy, %32
  %i.aya = fadd reassoc nsz arcp contract afn <4 x float> %i.axu, %i.axz
  %i.ayb = insertelement <4 x float> poison, float %i.awq, i64 0
  %i.ayc = insertelement <4 x float> %i.ayb, float %i.awo, i64 1
  %i.ayd = insertelement <4 x float> %i.ayc, float %i.awm, i64 2
  %i.aye = insertelement <4 x float> %i.ayd, float %i.awk, i64 3
  %i.ayf = fmul reassoc nsz arcp contract afn <4 x float> %i.aye, %i.zd
  %i.ayg = fadd reassoc nsz arcp contract afn <4 x float> %i.aya, %i.ayf
  %i.ayh = insertelement <4 x float> poison, float %i.awi, i64 0
  %i.ayi = insertelement <4 x float> %i.ayh, float %i.awg, i64 1
  %i.ayj = insertelement <4 x float> %i.ayi, float %i.awe, i64 2
  %i.ayk = insertelement <4 x float> %i.ayj, float %i.awc, i64 3
  %i.ayl = fmul reassoc nsz arcp contract afn <4 x float> %i.ayk, %i.zf
  %i.aym = fadd reassoc nsz arcp contract afn <4 x float> %i.ayg, %i.ayl
  %i.ayn = load <4 x float>, ptr %i.axh, align 16, !tbaa !27, !alias.scope !181, !noalias !192
  %i.ayo = fmul reassoc nsz arcp contract afn <4 x float> %i.ayn, %i.zh
  %i.ayp = fdiv reassoc nsz arcp contract afn <4 x float> %i.aym, %i.axp
  %i.ayq = fadd reassoc nsz arcp contract afn <4 x float> %i.ayp, %i.ayo
  %i.ayr = load <4 x float>, ptr %i.axi, align 16, !tbaa !27, !alias.scope !193, !noalias !194
  %i.ays = fadd reassoc nsz arcp contract afn <4 x float> %i.ayq, %i.ayr
  %i.ayt = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ays, <4 x float> zeroinitializer)
  store <4 x float> %i.ayt, ptr %i.axj, align 16, !tbaa !27, !alias.scope !195, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !197
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %compute_kernel.exit240.i.i, %.preheader246.preheader.i.i
  %i.ayu = add nuw i64 %.0205260.i.i, 1           ; 2 uses
  %exitcond278.not.i.i = icmp eq i64 %i.ayu, %i.pq
  br i1 %exitcond278.not.i.i, label %._crit_edge.i118.i, label %.lr.ph.i116.i

heat_PDE_diffusion.exit.i:                        ; preds = %._crit_edge.i118.i, %bb.af
  %i.ayv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !113, !noalias !109
  %.not101.i = icmp eq ptr %i.ayv, null
  br i1 %.not101.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %heat_PDE_diffusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20, !noalias !109
  %i.ayw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %i.xv) #20, !noalias !103 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.h, ptr noundef %.1.i, i32 noundef %i.pp, i32 noundef %i.pr, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !109
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %heat_PDE_diffusion.exit.i
  %i.ayx = add nuw nsw i32 %.095150.i, 1          ; 2 uses
  %exitcond182.not.i = icmp eq i32 %i.ayx, %.07.lcssa.i
  br i1 %exitcond182.not.i, label %wavelets_process.exit, label %bb.af

wavelets_process.exit:                            ; preds = %bb.az
  %i.ayy = add nuw nsw i32 %.079128, 1            ; 2 uses
  %exitcond151.not = icmp eq i32 %i.ayy, %spec.select
  br i1 %exitcond151.not, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %wavelets_process.exit, %bb.j
  call void @free(ptr noundef %i.ad) #20
  %i.ayz = load ptr, ptr %i.i, align 8, !tbaa !76
  call void @free(ptr noundef %i.ayz) #20
  %i.aza = load ptr, ptr %i.j, align 8, !tbaa !76
  call void @free(ptr noundef %i.aza) #20
  %i.azb = load ptr, ptr %i.l, align 8, !tbaa !76
  call void @free(ptr noundef %i.azb) #20
  %i.azc = load ptr, ptr %i.k, align 8, !tbaa !76
  call void @free(ptr noundef %i.azc) #20
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
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv152
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !76 ; 2 uses
  %.not94 = icmp eq ptr %i.aze, null
  br i1 %.not94, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.aze) #20
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
