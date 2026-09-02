Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull_rotation?download=true
inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb:bb.a
.lr.ph.i27.i.i.i.i:                               ; preds = %bb.g, %bb.m
  %.019.i28.i.i.i.i = phi ptr [ %.0.i37.i.i.i.i, %bb.m ], [ %scevgep.i.i.i.i, %bb.g ] ; 7 uses
  %.pn18.i29.i.i.i.i = phi ptr [ %.019.i28.i.i.i.i, %bb.m ], [ %i.m, %bb.g ] ; 5 uses
  %.0.val.i30.i.i.i.i = load float, ptr %.019.i28.i.i.i.i, align 4, !tbaa !144 ; 4 uses
  %.val.i31.i.i.i.i = load float, ptr %i.m, align 4, !tbaa !144
  %i.bn = fcmp olt float %.0.val.i30.i.i.i.i, %.val.i31.i.i.i.i
  br i1 %i.bn, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i27.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %10, ptr noundef nonnull align 4 dereferenceable(36) %.019.i28.i.i.i.i, i64 36, i1 false), !tbaa.struct !145
  %i.bo = ptrtoint ptr %.019.i28.i.i.i.i to i64
  %i.bp = sub i64 %i.bo, %i.ap                    ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, 36
  br i1 %i.bq, label %bb.i, label %bb.j, !prof !118

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.pn18.i29.i.i.i.i, i64 72
  %.neg24.i45.i.i.i.i = udiv exact i64 %i.bp, 36
  %.neg24.neg.i46.i.i.i.i = sub nsw i64 0, %.neg24.i45.i.i.i.i
  %i.bs = getelementptr inbounds [36 x i8], ptr %i.br, i64 %.neg24.neg.i46.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 4 dereferenceable(1) %i.m, i64 %i.bp, i1 false)
  br label %_ZSt13move_backwardIP16sort_along_vec_tS1_ET0_T_S3_S2_.exit.i44.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp eq i64 %i.bp, 36
  br i1 %i.bt, label %bb.k, label %_ZSt13move_backwardIP16sort_along_vec_tS1_ET0_T_S3_S2_.exit.i44.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn18.i29.i.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.bu, ptr noundef nonnull align 4 dereferenceable(36) %i.m, i64 36, i1 false), !tbaa.struct !145
  br label %_ZSt13move_backwardIP16sort_along_vec_tS1_ET0_T_S3_S2_.exit.i44.i.i.i.i

_ZSt13move_backwardIP16sort_along_vec_tS1_ET0_T_S3_S2_.exit.i44.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.m, ptr noundef nonnull align 4 dereferenceable(36) %10, i64 36, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i27.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i25.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i29.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i25.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i32.i.i.i.i, i64 32, i1 false), !tbaa.struct !594
  %.0.val12.i.i33.i.i.i.i = load float, ptr %.pn18.i29.i.i.i.i, align 4, !tbaa !144
  %i.bv = fcmp olt float %.0.val.i30.i.i.i.i, %.0.val12.i.i33.i.i.i.i
  br i1 %i.bv, label %.lr.ph.i.i39.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP16sort_along_vec_tN9__gnu_cxx5__ops14_Val_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_.exit.i34.i.i.i.i"

.lr.ph.i.i39.i.i.i.i:                             ; preds = %bb.l, %.lr.ph.i.i39.i.i.i.i
  %.014.i.i40.i.i.i.i = phi ptr [ %.0.i.i42.i.i.i.i, %.lr.ph.i.i39.i.i.i.i ], [ %.pn18.i29.i.i.i.i, %bb.l ] ; 4 uses
  %.0913.i.i41.i.i.i.i = phi ptr [ %.014.i.i40.i.i.i.i, %.lr.ph.i.i39.i.i.i.i ], [ %.019.i28.i.i.i.i, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.0913.i.i41.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.014.i.i40.i.i.i.i, i64 36, i1 false), !tbaa.struct !145
  %.0.i.i42.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i40.i.i.i.i, i64 -36 ; 2 uses
  %.0.val.i.i43.i.i.i.i = load float, ptr %.0.i.i42.i.i.i.i, align 4, !tbaa !144
  %i.bw = fcmp olt float %.0.val.i30.i.i.i.i, %.0.val.i.i43.i.i.i.i
  br i1 %i.bw, label %.lr.ph.i.i39.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP16sort_along_vec_tN9__gnu_cxx5__ops14_Val_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_.exit.i34.i.i.i.i", !llvm.loop !542

"_ZSt25__unguarded_linear_insertIP16sort_along_vec_tN9__gnu_cxx5__ops14_Val_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_.exit.i34.i.i.i.i": ; preds = %.lr.ph.i.i39.i.i.i.i, %bb.l
  %.09.lcssa.i.i35.i.i.i.i = phi ptr [ %.019.i28.i.i.i.i, %bb.l ], [ %.014.i.i40.i.i.i.i, %.lr.ph.i.i39.i.i.i.i ] ; 2 uses
  store float %.0.val.i30.i.i.i.i, ptr %.09.lcssa.i.i35.i.i.i.i, align 4, !tbaa !61
  %.sroa.5.0..09.sroa_idx.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i35.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.0..09.sroa_idx.i.i36.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i25.i.i.i.i, i64 32, i1 false), !tbaa.struct !594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i25.i.i.i.i)
  br label %bb.m

bb.m:                                             ; preds = %"_ZSt25__unguarded_linear_insertIP16sort_along_vec_tN9__gnu_cxx5__ops14_Val_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_.exit.i34.i.i.i.i", %_ZSt13move_backwardIP16sort_along_vec_tS1_ET0_T_S3_S2_.exit.i44.i.i.i.i
  %.0.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i28.i.i.i.i, i64 36 ; 2 uses
  %.not.i38.i.i.i.i = icmp eq ptr %.0.i37.i.i.i.i, %i.ao
  br i1 %.not.i38.i.i.i.i, label %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i", label %.lr.ph.i27.i.i.i.i, !llvm.loop !543

"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i": ; preds = %bb.m, %.lr.ph.i.i.i.i.i.prol.loopexit, %"_ZSt25__unguarded_linear_insertIP16sort_along_vec_tN9__gnu_cxx5__ops14_Val_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_.exit.i16.i.i.i.i.1", %bb.g, %._crit_edge.i
  %i.bx = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !120 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !140 ; 8 uses
  br i1 %i.ca, label %.lr.ph49.i, label %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i._ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit_crit_edge"

"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i._ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit_crit_edge": ; preds = %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i"
  %.pre146 = sext i32 %i.bz to i64
  br label %_ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit

.lr.ph49.i:                                       ; preds = %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !595
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !596
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !597
  br label %bb.n

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !61
  %i.cl = load float, ptr %i.s, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !61
  %i.co = load float, ptr %i.t, align 4, !tbaa !61
  %i.cp = fmul float %i.cn, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !61
  %i.ct = load float, ptr %i.u, align 8, !tbaa !61
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ct, float %i.cq)
  %i.cv = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv.i ; 9 uses
  store float %i.cu, ptr %i.cv, align 4, !tbaa !144
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store float %i.cx, ptr %i.cy, align 4, !tbaa !591
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !592
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.dc = load float, ptr %i.cj, align 4, !tbaa !61
  store float %i.dc, ptr %i.db, align 4, !tbaa !61
  %i.dd = load float, ptr %i.cm, align 4, !tbaa !61
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store float %i.dd, ptr %i.de, align 4, !tbaa !61
  %i.df = load float, ptr %i.cr, align 4, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  store float %i.df, ptr %i.dg, align 4, !tbaa !61
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !61
  store float %i.dj, ptr %i.di, align 4, !tbaa !61
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !61
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  store float %i.dl, ptr %i.dm, align 4, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !61
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store float %i.do, ptr %i.dp, align 4, !tbaa !61
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !545

bb.n:                                             ; preds = %bb.n, %.lr.ph49.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next54.i, %bb.n ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv53.i ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv53.i ; 3 uses
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !61
  store float %i.dt, ptr %i.ds, align 4, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = load float, ptr %i.du, align 4, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store float %i.dv, ptr %i.dw, align 4, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !61
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %indvars.iv53.i ; 3 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !61
  store float %i.ec, ptr %i.eb, align 4, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ee, ptr %i.ef, align 4, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !61
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store float %i.eh, ptr %i.ei, align 4, !tbaa !61
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !591
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv53.i
  store float %i.ek, ptr %i.el, align 4, !tbaa !61
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !592
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv53.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !60
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.ep = load i32, ptr %i.by, align 8, !tbaa !120
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next54.i, %i.eq
  br i1 %i.er, label %bb.n, label %_ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit, !llvm.loop !546

_ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit: ; preds = %bb.n, %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i._ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit_crit_edge"
  %.pre-phi = phi i64 [ %.pre146, %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i._ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit_crit_edge" ], [ %i.eq, %bb.n ]
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 6 uses
  %i.et = load float, ptr %i.cc, align 4, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !61
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !61
  %i.ey = getelementptr [12 x i8], ptr %i.cc, i64 %.pre-phi ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -12
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !61
  %i.fb = getelementptr i8, ptr %i.ey, i64 -8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !61
  %i.fd = getelementptr i8, ptr %i.ey, i64 -4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !61
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 18 uses
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !61 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 15 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !61 ; 4 uses
  %i.fj = fmul float %i.ev, %i.fi
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.et, float %i.fg, float %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 14 uses
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !61 ; 4 uses
  %i.fn = tail call noundef float @llvm.fmuladd.f32(float %i.ex, float %i.fm, float %i.fk)
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !126 ; 4 uses
  %i.fq = fsub float %i.fn, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bx, i64 92
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !115 ; 3 uses
  %i.ft = fdiv float %i.fq, %i.fs
  %i.fu = tail call float @llvm.ceil.f32(float %i.ft)
  %i.fv = fptosi float %i.fu to i32               ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 13 uses
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !79
  %i.fx = fmul float %i.fc, %i.fi
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fg, float %i.fx)
  %i.fz = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.fm, float %i.fy)
  %i.ga = fadd float %i.fp, %i.fz
  %i.gb = fdiv float %i.ga, %i.fs
  %i.gc = tail call float @llvm.floor.f32(float %i.gb)
  %i.gd = fptosi float %i.gc to i32               ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 260 ; 9 uses
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !78
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !127 ; 2 uses
  %i.gh = sub nsw i32 %i.fv, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 5 uses
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !598
  %i.gj = icmp sgt i32 %i.gg, %i.fv
  br i1 %i.gj, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(70) @.str.2, i8 noundef zeroext 2)
  %i.gk = load ptr, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !100
  %i.gl = load i32, ptr %i.fw, align 8, !tbaa !79
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2596, ptr noundef nonnull @.str.142, ptr noundef %i.gk, i32 noundef %i.gl) #32
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

bb.r:                                             ; preds = %_ZL27sort_collective_coordinatesP13gmx_enfrotgrpP16sort_along_vec_t.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !128
  %i.gp = icmp slt i32 %i.go, %i.gd
  br i1 %i.gp, label %bb.s, label %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(70) @.str.2, i8 noundef zeroext 2)
  %i.gq = load ptr, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !100
  %i.gr = load i32, ptr %i.ge, align 4, !tbaa !78
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 2605, ptr noundef nonnull @.str.143, ptr noundef %i.gq, i32 noundef %i.gr) #32
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.q, %bb.u, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %i.bck, %bb.be ], [ %i.gm, %bb.q ], [ %i.gs, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit: ; preds = %bb.r
  %i.gt = fneg float %i.fs                        ; 2 uses
  %i.gu = fneg float %i.fp
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !599
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit
  %.037.i = phi i64 [ 0, %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit ], [ %indvars.iv.i61, %.critedge.i ]
  %.0.i = phi i32 [ %i.fv, %_ZL24get_firstlast_slab_checkP13gmx_enfrotgrpRKN3gmx11BasicVectorIfEES5_.exit ], [ %i.hr, %.critedge.i ] ; 4 uses
  %i.gx = sitofp i32 %.0.i to float
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i62, %bb.x ], [ %.037.i, %bb.v ] ; 4 uses
  %i.gy = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv.i61 ; 3 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !61
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !61
  %i.hc = fmul float %i.fi, %i.hb
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.fg, float %i.hc)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hf = load float, ptr %i.he, align 4, !tbaa !61
  %i.hg = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %i.fm, float %i.hd)
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.gx, float %i.hg)
  %i.hi = fcmp olt float %i.hh, %i.gu
  br i1 %i.hi, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %i.hj = load i32, ptr %i.by, align 8, !tbaa !120
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next.i62, %i.hk
  br i1 %i.hl, label %bb.w, label %.critedge.i, !llvm.loop !547

.critedge.i:                                      ; preds = %bb.x, %bb.w
  %i.hm = trunc nsw i64 %indvars.iv.i61 to i32
  %i.hn = load i32, ptr %i.fw, align 8, !tbaa !79
  %i.ho = sub nsw i32 %.0.i, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.hp
  store i32 %i.hm, ptr %i.hq, align 4, !tbaa !60
  %i.hr = add nsw i32 %.0.i, 1
  %i.hs = load i32, ptr %i.ge, align 4, !tbaa !78 ; 2 uses
  %.not.not.i = icmp slt i32 %.0.i, %i.hs
  br i1 %.not.not.i, label %bb.v, label %bb.y, !llvm.loop !548

bb.y:                                             ; preds = %.critedge.i
  %i.ht = load i32, ptr %i.by, align 8, !tbaa !120
  %i.hu = add nsw i32 %i.ht, -1
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 6 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !600
  %i.hx = sext i32 %i.hu to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.2.i = phi i64 [ %i.hx, %bb.y ], [ %indvars.iv52.i, %bb.ab ]
  %.1.i = phi i32 [ %i.hs, %bb.y ], [ %i.ir, %bb.ab ] ; 4 uses
  %i.hy = sitofp i32 %.1.i to float
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %bb.aa ], [ %.2.i, %bb.z ] ; 5 uses
  %i.hz = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv52.i ; 3 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !61
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !61
  %i.id = fmul float %i.fi, %i.ic
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.fg, float %i.id)
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ig = load float, ptr %i.if, align 4, !tbaa !61
  %i.ih = tail call noundef float @llvm.fmuladd.f32(float %i.ig, float %i.fm, float %i.ie)
  %i.ii = tail call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.hy, float %i.ih)
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, -1
  %i.ij = fcmp ogt float %i.ii, %i.fp
  %i.ik = icmp sgt i64 %indvars.iv52.i, 0
  %i.il = and i1 %i.ik, %i.ij
  br i1 %i.il, label %bb.aa, label %bb.ab, !llvm.loop !549

bb.ab:                                            ; preds = %bb.aa
  %i.im = trunc nsw i64 %indvars.iv52.i to i32
  %i.in = load i32, ptr %i.fw, align 8, !tbaa !79
  %i.io = sub nsw i32 %.1.i, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.ip
  store i32 %i.im, ptr %i.iq, align 4, !tbaa !60
  %i.ir = add nsw i32 %.1.i, -1
  %i.is = load i32, ptr %i.fw, align 8, !tbaa !79
  %.not.not43.i = icmp sgt i32 %.1.i, %i.is
  br i1 %.not.not43.i, label %bb.z, label %_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit, !llvm.loop !550

_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit: ; preds = %bb.ab
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 6 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !596
  %i.iv = fptrunc double %5 to float
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !25
  tail call fastcc void @_ZL16get_slab_centersP13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPffP8_IO_FILEbb(ptr noundef %2, ptr nonnull %i.cc, ptr noundef %i.iu, float noundef %i.iv, ptr noundef %i.ix, i1 noundef zeroext %7, i1 noundef zeroext false)
  %i.iy = load i32, ptr %i.ge, align 4, !tbaa !78 ; 7 uses
  %i.iz = load i32, ptr %i.fw, align 8, !tbaa !79 ; 7 uses
  %.not131 = icmp slt i32 %i.iy, %i.iz            ; 2 uses
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !95
  %i.jc = add i32 %i.iy, 1
  %i.jd = sub i32 %i.jc, %i.iz
  %i.je = zext i32 %i.jd to i64
  %i.jf = shl nuw nsw i64 %i.je, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jb, i8 0, i64 %i.jf, i1 false), !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZL27get_firstlast_atom_per_slabPK13gmx_enfrotgrp.exit
  %i.jg = load ptr, ptr %2, align 8, !tbaa !77    ; 5 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !94
  switch i32 %i.jh, label %bb.bc [
    i32 8, label %bb.ac
    i32 9, label %bb.ac
    i32 10, label %bb.ap
    i32 11, label %bb.ap
  ]

bb.ac:                                            ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
end_hunk_0
begin_hunk_1_@_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb:bb.a
  %i.alr = fmul float %i.alb, %i.alq              ; 2 uses
  %i.als = fmul float %i.alf, %i.alq              ; 2 uses
  %i.alt = fmul float %i.ali, %i.alq              ; 2 uses
  %i.alu = fmul float %i.akq, %i.als
  %i.alv = tail call float @llvm.fmuladd.f32(float %i.alr, float %i.akt, float %i.alu)
  %i.alw = tail call noundef float @llvm.fmuladd.f32(float %i.alt, float %i.akn, float %i.alv) ; 2 uses
  %i.alx = fdiv float %sqrt.i46.i.i, %i.alp       ; 5 uses
  %i.aly = fmul float %i.akt, %i.alx
  %i.alz = fmul float %i.akq, %i.alx
  %i.ama = fmul float %i.akn, %i.alx
  %i.amb = fmul float %i.alx, %i.alx
  %i.amc = fmul float %sqrt.i46.i.i, %i.amb
  %i.amd = fmul float %i.amc, %i.alw              ; 3 uses
  %i.ame = fmul float %i.alr, %i.amd
  %i.amf = fmul float %i.als, %i.amd
  %i.amg = fmul float %i.alt, %i.amd
  %i.amh = fsub float %i.aly, %i.ame
  %i.ami = fsub float %i.alz, %i.amf
  %i.amj = fsub float %i.ama, %i.amg
  %i.amk = fmul float %i.akw, %i.akv
  %i.aml = fmul float %i.amk, %i.alw              ; 3 uses
  %i.amm = fmul float %i.aml, %i.amh
  %i.amn = fmul float %i.aml, %i.ami
  %i.amo = fmul float %i.aml, %i.amj
  %i.amp = fadd float %.sroa.088.0116.i.i, %i.amm
  %i.amq = fadd float %.sroa.6.0115.i.i, %i.amn
  %i.amr = fadd float %.sroa.1091.0114.i.i, %i.amo
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.1091.1.i.i = phi float [ %.sroa.1091.0114.i.i, %bb.ar ], [ %i.amr, %bb.as ] ; 2 uses
  %.sroa.6.1.i.i74 = phi float [ %.sroa.6.0115.i.i, %bb.ar ], [ %i.amq, %bb.as ] ; 2 uses
  %.sroa.088.1.i.i = phi float [ %.sroa.088.0116.i.i, %bb.ar ], [ %i.amp, %bb.as ] ; 2 uses
  %indvars.iv.next.i.i75 = add nsw i64 %indvars.iv.i.i72, 1
  %i.ams = load ptr, ptr %i.hv, align 8, !tbaa !600 ; 2 uses
  %i.amt = getelementptr inbounds [4 x i8], ptr %i.ams, i64 %i.ahc
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !60
  %i.amv = sext i32 %i.amu to i64
  %.not45.not.i.i = icmp slt i64 %indvars.iv.i.i72, %i.amv
  br i1 %.not45.not.i.i, label %bb.ar, label %._crit_edge.loopexit.i.i76, !llvm.loop !563

_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i: ; preds = %._crit_edge.i.i77
  %.pre.pre.i80 = load ptr, ptr %2, align 8, !tbaa !77
  br label %_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.i

_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.i: ; preds = %_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i, %bb.ap
  %.pre.i81 = phi ptr [ %.pre.pre.i80, %_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.loopexit.i ], [ %i.jg, %bb.ap ] ; 2 uses
  %or.cond.i82 = or i1 %6, %7
  br i1 %or.cond.i82, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.i
  %i.amw = getelementptr inbounds nuw i8, ptr %.pre.i81, i64 80
  %i.amx = load i32, ptr %i.amw, align 8, !tbaa !86
  %i.amy = icmp eq i32 %i.amx, 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.i
  %i.amz = phi i1 [ false, %_ZL23flex2_precalc_inner_sumPK13gmx_enfrotgrp.exit.i ], [ %i.amy, %bb.au ]
  %i.ana = getelementptr inbounds nuw i8, ptr %.pre.i81, i64 8
  %i.anb = load i32, ptr %i.ana, align 8, !tbaa !120
  %i.anc = sitofp i32 %i.anb to float
  %i.and = load float, ptr %i.agh, align 8, !tbaa !123
  %i.ane = fmul float %i.and, %i.anc
  %i.anf = fmul float %i.k, %i.k
  %i.ang = fdiv float 1.000000e+00, %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !35
  %i.anj = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ani) ; 2 uses
  %i.ank = extractvalue { ptr, ptr } %i.anj, 0    ; 2 uses
  %i.anl = extractvalue { ptr, ptr } %i.anj, 1
  %i.anm = load ptr, ptr %i.anh, align 8, !tbaa !35
  %i.ann = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anm)
  %i.ano = extractvalue { ptr, ptr } %i.ann, 0
  %i.anp = ptrtoint ptr %i.anl to i64
  %i.anq = ptrtoint ptr %i.ank to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = ashr exact i64 %i.anr, 2               ; 2 uses
  %i.ant = icmp sgt i64 %i.ans, 0
  br i1 %i.ant, label %.lr.ph293.i, label %_ZL17do_flex2_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit

.lr.ph293.i:                                      ; preds = %bb.av
  %i.anu = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.anv = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.anw = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.anx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.any = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.anz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.aob = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.phi.trans.insert.i.i83 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aoc = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.aod = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aof = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.aog = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.aoh = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aoi = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.aoj = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.aok = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aol = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aom = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aon = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aoo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aop = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aoq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aor = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aos = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aot = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.aou = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.aov = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.aow = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.aox = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i87, %.lr.ph293.i
  %.0137291.i = phi i64 [ 0, %.lr.ph293.i ], [ %i.ase, %._crit_edge.i87 ] ; 4 uses
  %.0141290.i = phi float [ 0.000000e+00, %.lr.ph293.i ], [ %.1142.lcssa.i, %._crit_edge.i87 ] ; 2 uses
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %.0137291.i
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !60
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %.0137291.i
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !60
  %i.apc = load ptr, ptr %i.anu, align 8, !tbaa !122
  %i.apd = sext i32 %i.apb to i64                 ; 3 uses
  %i.ape = getelementptr inbounds [4 x i8], ptr %i.apc, i64 %i.apd
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !61 ; 2 uses
  %i.apg = fmul float %i.ane, %i.apf              ; 2 uses
  %i.aph = sext i32 %i.aoz to i64
  %i.api = getelementptr inbounds [12 x i8], ptr %3, i64 %i.aph ; 3 uses
  %i.apj = load float, ptr %i.api, align 4, !tbaa !61
  %i.apk = load float, ptr %i.anv, align 8, !tbaa !61
  %i.apl = fsub float %i.apj, %i.apk              ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.api, i64 4
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !61
  %i.apo = load float, ptr %i.anw, align 4, !tbaa !61
  %i.app = fsub float %i.apn, %i.apo              ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !61
  %i.aps = load float, ptr %i.anx, align 8, !tbaa !61
  %i.apt = fsub float %i.apr, %i.aps
  %i.apu = load ptr, ptr %i.aoa, align 8, !tbaa !141
  %i.apv = getelementptr inbounds [12 x i8], ptr %i.apu, i64 %i.apd ; 3 uses
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !60
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apv, i64 4
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !60 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !60 ; 2 uses
  %i.aqb = load float, ptr %i.aob, align 4, !tbaa !61 ; 2 uses
  %i.aqc = fcmp une float %i.aqb, 0.000000e+00
  %.pre.i143.i = load float, ptr %.phi.trans.insert.i.i83, align 4, !tbaa !61 ; 2 uses
  %i.aqd = fcmp une float %.pre.i143.i, 0.000000e+00
  %or.cond.i.i84 = select i1 %i.aqc, i1 true, i1 %i.aqd
  %.pre335.i = load float, ptr %i.aoc, align 4, !tbaa !61 ; 2 uses
  %i.aqe = fcmp une float %.pre335.i, 0.000000e+00
  %or.cond344.i = select i1 %or.cond.i.i84, i1 true, i1 %i.aqe
  %i.aqf = sitofp i32 %i.apw to float             ; 2 uses
  %i.aqg = load float, ptr %4, align 4, !tbaa !61 ; 2 uses
  br i1 %or.cond344.i, label %._crit_edge.i144.i, label %bb.ax

._crit_edge.i144.i:                               ; preds = %bb.aw
  %i.aqh = sitofp i32 %i.apy to float             ; 2 uses
  %i.aqi = fmul float %i.aqb, %i.aqh
  %i.aqj = tail call float @llvm.fmuladd.f32(float %i.aqf, float %i.aqg, float %i.aqi)
  %i.aqk = sitofp i32 %i.aqa to float             ; 3 uses
  %i.aql = tail call float @llvm.fmuladd.f32(float %i.aqk, float %.pre.i143.i, float %i.aqj)
  %i.aqm = fadd float %i.apl, %i.aql
  %i.aqn = load float, ptr %i.aod, align 4, !tbaa !61
  %i.aqo = fmul float %.pre335.i, %i.aqk
  %i.aqp = tail call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqn, float %i.aqo)
  %i.aqq = fadd float %i.app, %i.aqp
  br label %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85

bb.ax:                                            ; preds = %bb.aw
  %i.aqr = tail call float @llvm.fmuladd.f32(float %i.aqf, float %i.aqg, float %i.apl)
  %i.aqs = sitofp i32 %i.apy to float
  %i.aqt = load float, ptr %i.aod, align 4, !tbaa !61
  %i.aqu = tail call float @llvm.fmuladd.f32(float %i.aqs, float %i.aqt, float %i.app)
  %i.aqv = sitofp i32 %i.aqa to float
  br label %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85

_ZL18shift_single_coordPA3_KfPfPKi.exit.i85:      ; preds = %bb.ax, %._crit_edge.i144.i
  %.sink145 = phi float [ %i.aqm, %._crit_edge.i144.i ], [ %i.aqr, %bb.ax ] ; 3 uses
  %.sink144 = phi float [ %i.aqq, %._crit_edge.i144.i ], [ %i.aqu, %bb.ax ] ; 3 uses
  %.sink30.i.i86 = phi float [ %i.aqk, %._crit_edge.i144.i ], [ %i.aqv, %bb.ax ]
  store float %.sink145, ptr %i.d, align 4, !tbaa !61
  store float %.sink144, ptr %i.any, align 4, !tbaa !61
  %i.aqw = load float, ptr %i.aoe, align 4, !tbaa !61
  %i.aqx = tail call float @llvm.fmuladd.f32(float %.sink30.i.i86, float %i.aqw, float %i.apt) ; 3 uses
  store float %i.aqx, ptr %i.anz, align 4, !tbaa !61
  %i.aqy = call fastcc noundef i32 @_ZL25get_single_atom_gaussiansPfP13gmx_enfrotgrp(ptr noundef %i.d, ptr noundef nonnull readonly %2) ; 2 uses
  %i.aqz = icmp sgt i32 %i.aqy, 0
  br i1 %i.aqz, label %.lr.ph280.i, label %._crit_edge.i87

.lr.ph280.i:                                      ; preds = %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85
  %i.ara = fpext float %i.apg to double           ; 3 uses
  %wide.trip.count304.i = zext nneg i32 %i.aqy to i64
  %broadcast.splatinsert61 = insertelement <8 x double> poison, double %i.ara, i64 0
  %broadcast.splat62 = shufflevector <8 x double> %broadcast.splatinsert61, <8 x double> poison, <8 x i32> zeroinitializer
  br label %bb.ay

._crit_edge.i87:                                  ; preds = %bb.bb, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85
  %.sroa.12181.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.sroa.12181.1.i.a, %bb.bb ] ; 2 uses
  %.sroa.7178.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.sroa.7178.1.i, %bb.bb ] ; 2 uses
  %.sroa.0175.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.sroa.0175.1.i, %bb.bb ] ; 2 uses
  %.sroa.12.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.sroa.12.1.i, %bb.bb ] ; 2 uses
  %.sroa.7.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.sroa.7.1.i, %bb.bb ] ; 2 uses
  %.sroa.0168.0.lcssa.i = phi float [ 0.000000e+00, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.sroa.0168.1.i, %bb.bb ] ; 2 uses
  %.1142.lcssa.i = phi float [ %.0141290.i, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %.2.i90, %bb.bb ] ; 2 uses
  %13 = phi <2 x float> [ zeroinitializer, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i85 ], [ %94, %bb.bb ] ; 4 uses
  %14 = load ptr, ptr %2, align 8, !tbaa !77
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %16 = load ptr, ptr %i.aox, align 8, !tbaa !59
  %17 = getelementptr inbounds nuw [12 x i8], ptr %16, i64 %.0137291.i ; 3 uses
  %i.arb = load float, ptr %15, align 8, !tbaa !131
  %18 = fpext float %i.arb to double
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %20 = load <2 x float>, ptr %i.fh, align 4, !tbaa !61 ; 4 uses
  %i.arc = load float, ptr %i.ff, align 8, !tbaa !61 ; 5 uses
  %21 = extractelement <2 x float> %20, i64 0     ; 3 uses
  %i.ard = fneg float %21                         ; 2 uses
  %i.are = fmul float %.sroa.12181.0.lcssa.i, %i.ard
  %22 = extractelement <2 x float> %20, i64 1     ; 3 uses
  %i.arf = tail call float @llvm.fmuladd.f32(float %.sroa.7178.0.lcssa.i, float %22, float %i.are)
  %i.arg = fneg float %i.arc                      ; 2 uses
  %23 = fneg float %22                            ; 2 uses
  %24 = fmul float %.sroa.7178.0.lcssa.i, %i.arg
  %i.arh = fmul float %.sroa.0175.0.lcssa.i, %23
  %i.ari = tail call float @llvm.fmuladd.f32(float %.sroa.0175.0.lcssa.i, float %21, float %24)
  %i.arj = tail call float @llvm.fmuladd.f32(float %.sroa.12181.0.lcssa.i, float %i.arc, float %i.arh)
  %i.ark = fmul float %.sroa.12.0.lcssa.i, %i.ard
  %i.arl = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.lcssa.i, float %22, float %i.ark)
  %i.arm = fmul float %.sroa.7.0.lcssa.i, %i.arg
  %i.arn = fmul float %.sroa.0168.0.lcssa.i, %23
  %25 = tail call float @llvm.fmuladd.f32(float %.sroa.0168.0.lcssa.i, float %21, float %i.arm)
  %26 = tail call float @llvm.fmuladd.f32(float %.sroa.12.0.lcssa.i, float %i.arc, float %i.arn)
  %27 = extractelement <2 x float> %13, i64 1
  %i.aro = fmul float %27, %i.arc
  %28 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %29 = fmul <2 x float> %28, %20
  %30 = extractelement <2 x float> %13, i64 0
  %31 = fmul float %30, %i.arc
  %32 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %32, %20
  %i.arp = fsub float %i.arl, %i.arf
  %i.arq = fsub float %i.arp, %i.aro
  %i.arr = fpext float %i.arq to double
  %i.ars = fpext float %31 to double
  %i.art = tail call double @llvm.fmuladd.f64(double %i.ars, double 5.000000e-01, double %i.arr)
  %i.aru = fmul double %i.art, %18
  %i.arv = fptrunc double %i.aru to float
  store float %i.arv, ptr %17, align 4, !tbaa !61
  %i.arw = load float, ptr %15, align 8, !tbaa !131
  %i.arx = fpext float %i.arw to double
  %i.ary = fsub float %25, %i.ari
  %i.arz = fsub float %26, %i.arj
  %34 = insertelement <2 x float> poison, float %i.arz, i64 0
  %35 = insertelement <2 x float> %34, float %i.ary, i64 1
  %36 = fsub <2 x float> %35, %29
  %37 = fpext <2 x float> %36 to <2 x double>
  %38 = fpext <2 x float> %33 to <2 x double>
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> splat (double 5.000000e-01), <2 x double> %37) ; 2 uses
  %40 = extractelement <2 x double> %39, i64 0
  %41 = fmul double %40, %i.arx
  %42 = fptrunc double %41 to float
  store float %42, ptr %19, align 4, !tbaa !61
  %43 = load float, ptr %15, align 8, !tbaa !131
  %i.asa = fpext float %43 to double
  %44 = extractelement <2 x double> %39, i64 1
  %i.asb = fmul double %44, %i.asa
  %i.asc = fptrunc double %i.asb to float
  %i.asd = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %i.asc, ptr %i.asd, align 4, !tbaa !61
  %i.ase = add nuw nsw i64 %.0137291.i, 1         ; 2 uses
  %exitcond310.not.i = icmp eq i64 %i.ase, %i.ans
  br i1 %exitcond310.not.i, label %_ZL17do_flex2_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit, label %bb.aw, !llvm.loop !564

bb.ay:                                            ; preds = %bb.bb, %.lr.ph280.i
  %indvars.iv301.i = phi i64 [ 0, %.lr.ph280.i ], [ %indvars.iv.next302.i, %bb.bb ] ; 3 uses
  %.1142276.i.a = phi float [ %.0141290.i, %.lr.ph280.i ], [ %.2.i90, %bb.bb ] ; 2 uses
  %.sroa.0168.0275.i.a = phi float [ 0.000000e+00, %.lr.ph280.i ], [ %.sroa.0168.1.i, %bb.bb ] ; 2 uses
  %.sroa.7.0274.i.a = phi float [ 0.000000e+00, %.lr.ph280.i ], [ %.sroa.7.1.i, %bb.bb ] ; 2 uses
  %.sroa.12.0273.i.a = phi float [ 0.000000e+00, %.lr.ph280.i ], [ %.sroa.12.1.i, %bb.bb ] ; 2 uses
  %.sroa.0175.0272.i.a = phi float [ 0.000000e+00, %.lr.ph280.i ], [ %.sroa.0175.1.i, %bb.bb ] ; 2 uses
  %.sroa.7178.0271.i.a = phi float [ 0.000000e+00, %.lr.ph280.i ], [ %.sroa.7178.1.i, %bb.bb ] ; 2 uses
  %.sroa.12181.0270.i.a = phi float [ 0.000000e+00, %.lr.ph280.i ], [ %.sroa.12181.1.i.a, %bb.bb ] ; 2 uses
  %45 = phi <2 x float> [ zeroinitializer, %.lr.ph280.i ], [ %94, %bb.bb ] ; 2 uses
  %i.asf = load ptr, ptr %i.aof, align 8, !tbaa !146
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv301.i
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !60 ; 2 uses
  %i.asi = load ptr, ptr %i.aog, align 8, !tbaa !147
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.asi, i64 %indvars.iv301.i
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !61 ; 3 uses
  %i.asl = load i32, ptr %i.fw, align 8, !tbaa !79
  %i.asm = sub nsw i32 %i.ash, %i.asl             ; 2 uses
  %i.asn = load ptr, ptr %i.aoh, align 8, !tbaa !32
  %i.aso = getelementptr inbounds nuw [12 x i8], ptr %i.asn, i64 %i.apd ; 3 uses
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !61
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 4
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !61
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !61
  %i.asu = load float, ptr %i.ff, align 8, !tbaa !61
  %i.asv = load float, ptr %i.fh, align 4, !tbaa !61
  %i.asw = fmul float %.sink144, %i.asv
  %i.asx = tail call float @llvm.fmuladd.f32(float %.sink145, float %i.asu, float %i.asw)
  %i.asy = load float, ptr %i.fl, align 8, !tbaa !61
  %i.asz = tail call noundef float @llvm.fmuladd.f32(float %i.aqx, float %i.asy, float %i.asx)
  %i.ata = load ptr, ptr %2, align 8, !tbaa !77
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 92
  %i.atc = load float, ptr %i.atb, align 4, !tbaa !115
  %i.atd = sitofp i32 %i.ash to float
  %i.ate = fneg float %i.atc
  %i.atf = tail call noundef float @llvm.fmuladd.f32(float %i.ate, float %i.atd, float %i.asz)
  %i.atg = load ptr, ptr %i.aoi, align 8, !tbaa !138
  %i.ath = sext i32 %i.asm to i64                 ; 4 uses
  %i.ati = getelementptr inbounds [12 x i8], ptr %i.atg, i64 %i.ath ; 3 uses
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !61
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ati, i64 4
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !61
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !61
  %i.ato = load ptr, ptr %i.aoj, align 8, !tbaa !139
  %i.atp = load i32, ptr %i.gi, align 8, !tbaa !598
  %i.atq = add nsw i32 %i.atp, %i.asm
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr inbounds [12 x i8], ptr %i.ato, i64 %i.atr ; 3 uses
  %i.att = load float, ptr %i.ats, align 4, !tbaa !61
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ats, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !61
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !61
  %i.aty = fsub float %i.asr, %i.atv              ; 7 uses
  %46 = load float, ptr %i.aol, align 4, !tbaa !61
  %47 = fmul float %i.aty, %46
  %i.atz = load float, ptr %i.aon, align 4, !tbaa !61
  %i.aua = load float, ptr %i.aoo, align 8, !tbaa !61
  %i.aub = fmul float %i.aty, %i.aua
  %48 = load float, ptr %i.aor, align 4, !tbaa !61
  %49 = fmul float %i.aty, %48
  %50 = fsub float %i.asp, %i.att                 ; 7 uses
  %51 = fsub float %i.ast, %i.atx                 ; 7 uses
  %i.auc = load float, ptr %i.aoq, align 8, !tbaa !61
  %52 = load float, ptr %i.aop, align 4, !tbaa !61
  %53 = load float, ptr %i.aom, align 8, !tbaa !61
  %i.aud = load float, ptr %i.aok, align 8, !tbaa !61
  %i.aue = tail call float @llvm.fmuladd.f32(float %i.aud, float %50, float %47)
  %54 = tail call float @llvm.fmuladd.f32(float %i.auc, float %50, float %49)
  %55 = tail call float @llvm.fmuladd.f32(float %53, float %51, float %i.aue) ; 3 uses
  %56 = tail call float @llvm.fmuladd.f32(float %i.atz, float %50, float %i.aub)
  %i.auf = tail call float @llvm.fmuladd.f32(float %52, float %51, float %56) ; 3 uses
  %i.aug = load float, ptr %i.aos, align 8, !tbaa !61
  %i.auh = tail call float @llvm.fmuladd.f32(float %i.aug, float %51, float %54) ; 3 uses
  %i.aui = fsub float %.sink145, %i.atj           ; 6 uses
  %i.auj = fsub float %.sink144, %i.atl           ; 6 uses
  %i.auk = fsub float %i.aqx, %i.atn              ; 6 uses
  %i.aul = fmul float %i.auj, %i.auj
  %i.aum = tail call float @llvm.fmuladd.f32(float %i.aui, float %i.aui, float %i.aul)
  %i.aun = tail call noundef float @llvm.fmuladd.f32(float %i.auk, float %i.auk, float %i.aum)
  %sqrt.i.i88 = tail call noundef float @llvm.sqrt.f32(float %i.aun)
  %i.auo = fpext float %sqrt.i.i88 to double
  %i.aup = tail call noundef zeroext i1 @_Z11gmx_numzerod(double noundef %i.auo)
  br i1 %i.aup, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.auq = load float, ptr %i.fl, align 8, !tbaa !61 ; 2 uses
  %i.aur = fneg float %i.auj
  %i.aus = fmul float %i.auq, %i.aur
  %57 = fneg float %i.auk
  %58 = fneg float %i.aui
  %i.aut = load float, ptr %i.fh, align 4, !tbaa !61 ; 2 uses
  %59 = load float, ptr %i.ff, align 8, !tbaa !61 ; 2 uses
  %i.auu = fmul float %59, %57
  %i.auv = tail call float @llvm.fmuladd.f32(float %i.auq, float %i.aui, float %i.auu) ; 6 uses
  %60 = fmul float %i.aut, %58
  %61 = tail call float @llvm.fmuladd.f32(float %i.aut, float %i.auk, float %i.aus) ; 6 uses
  %i.auw = tail call float @llvm.fmuladd.f32(float %59, float %i.auj, float %60) ; 6 uses
  %i.aux = fmul float %i.auv, %i.auv
  %i.auy = tail call float @llvm.fmuladd.f32(float %61, float %61, float %i.aux)
  %i.auz = tail call noundef float @llvm.fmuladd.f32(float %i.auw, float %i.auw, float %i.auy) ; 2 uses
  %i.ava = load ptr, ptr %2, align 8, !tbaa !77   ; 4 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 100
  %i.avc = load float, ptr %i.avb, align 4, !tbaa !132
  %i.avd = fadd float %i.avc, %i.auz              ; 2 uses
  %i.ave = fmul float %i.auf, %i.auv
  %i.avf = tail call float @llvm.fmuladd.f32(float %61, float %55, float %i.ave)
  %i.avg = tail call noundef float @llvm.fmuladd.f32(float %i.auw, float %i.auh, float %i.avf) ; 2 uses
  %i.avh = fmul float %i.avg, %i.avg
  %i.avi = getelementptr inbounds nuw i8, ptr %i.ava, i64 64 ; 5 uses
  %i.avj = load float, ptr %i.avi, align 8, !tbaa !131
  %i.avk = fpext float %i.avj to double
  %i.avl = fmul double %i.avk, 5.000000e-01
  %i.avm = fmul double %i.avl, %i.ara
  %i.avn = fpext float %i.ask to double           ; 3 uses
  %i.avo = fmul double %i.avm, %i.avn
  %i.avp = fpext float %i.avh to double
  %i.avq = fmul double %i.avo, %i.avp
  %i.avr = fpext float %i.avd to double           ; 3 uses
  %i.avs = fdiv double %i.avq, %i.avr
  %i.avt = fpext float %.1142276.i.a to double
  %i.avu = fadd double %i.avs, %i.avt
  %i.avv = fptrunc double %i.avu to float         ; 2 uses
  br i1 %i.amz, label %.preheader.i92, label %.loopexit.i89

.preheader.i92:                                   ; preds = %bb.az
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ava, i64 84
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !87 ; 3 uses
  %i.avy = icmp sgt i32 %i.avx, 0
  br i1 %i.avy, label %.lr.ph.i93, label %.loopexit.i89

.lr.ph.i93:                                       ; preds = %.preheader.i92
  %i.avz = load ptr, ptr %i.aot, align 8, !tbaa !88 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 16
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !142 ; 4 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !90 ; 5 uses
  %wide.trip.count.i94 = zext nneg i32 %i.avx to i64 ; 5 uses
  %min.iters.check56 = icmp ult i32 %i.avx, 8
  br i1 %min.iters.check56, label %scalar.ph55.preheader, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.lr.ph.i93
  %i.awe = shl nuw nsw i64 %wide.trip.count.i94, 2
  %scevgep45 = getelementptr i8, ptr %i.awd, i64 %i.awe ; 2 uses
  %i.awf = mul nuw nsw i64 %wide.trip.count.i94, 36
  %scevgep46 = getelementptr i8, ptr %i.awb, i64 %i.awf
  %scevgep47 = getelementptr i8, ptr %i.ava, i64 68
  %bound048 = icmp ult ptr %i.awd, %scevgep46
  %bound149 = icmp ult ptr %i.awb, %scevgep45
  %found.conflict50 = and i1 %bound048, %bound149
  %bound051 = icmp ult ptr %i.awd, %scevgep47
  %bound152 = icmp ult ptr %i.avi, %scevgep45
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %found.conflict50, %found.conflict53
  br i1 %conflict.rdx54, label %scalar.ph55.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck44
  %n.vec58 = and i64 %wide.trip.count.i94, 2147483640 ; 3 uses
  %broadcast.splatinsert59 = insertelement <8 x double> poison, double %i.avn, i64 0
  %broadcast.splat60 = shufflevector <8 x double> %broadcast.splatinsert59, <8 x double> poison, <8 x i32> zeroinitializer
  %i.awg = load float, ptr %i.avi, align 8, !tbaa !131, !alias.scope !607
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %i.awg, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awh = fpext <8 x float> %broadcast.splat64 to <8 x double>
  %i.awi = fmul <8 x double> %i.awh, splat (double 5.000000e-01)
  %i.awj = fmul <8 x double> %i.awi, %broadcast.splat62
  %i.awk = fmul <8 x double> %i.awj, %broadcast.splat60
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %i.aty, i64 0
  %broadcast.splat66 = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %50, i64 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %51, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.auv, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %61, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %i.auw, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <8 x double> poison, double %i.avr, i64 0
  %broadcast.splat78 = shufflevector <8 x double> %broadcast.splatinsert77, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph57
  %index80 = phi i64 [ 0, %vector.ph57 ], [ %index.next100, %vector.body79 ] ; 2 uses
  %vec.ind81 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph57 ], [ %vec.ind.next101, %vector.body79 ] ; 2 uses
  %wide.gep82 = getelementptr inbounds nuw [36 x i8], ptr %i.awb, <8 x i64> %vec.ind81 ; 9 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep82, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %wide.gep83 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 4
  %wide.masked.gather84 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep83, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %i.awl = fmul <8 x float> %broadcast.splat66, %wide.masked.gather84
  %i.awm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %broadcast.splat68, <8 x float> %i.awl)
  %wide.gep85 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 8
  %wide.masked.gather86 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep85, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %i.awn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather86, <8 x float> %broadcast.splat70, <8 x float> %i.awm)
  %wide.gep87 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 12
  %wide.masked.gather88 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep87, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %wide.gep89 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 16
  %wide.masked.gather90 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep89, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %i.awo = fmul <8 x float> %broadcast.splat66, %wide.masked.gather90
  %i.awp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather88, <8 x float> %broadcast.splat68, <8 x float> %i.awo)
  %wide.gep91 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 20
  %wide.masked.gather92 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %i.awq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather92, <8 x float> %broadcast.splat70, <8 x float> %i.awp)
  %wide.gep93 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 24
  %wide.masked.gather94 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep93, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %wide.gep95 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 28
  %wide.masked.gather96 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep95, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %i.awr = fmul <8 x float> %broadcast.splat66, %wide.masked.gather96
  %i.aws = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather94, <8 x float> %broadcast.splat68, <8 x float> %i.awr)
  %wide.gep97 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep82, i64 32
  %wide.masked.gather98 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep97, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !61, !alias.scope !608
  %i.awt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather98, <8 x float> %broadcast.splat70, <8 x float> %i.aws)
  %i.awu = fmul <8 x float> %broadcast.splat72, %i.awq
  %i.awv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat74, <8 x float> %i.awn, <8 x float> %i.awu)
  %i.aww = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat76, <8 x float> %i.awt, <8 x float> %i.awv) ; 2 uses
  %i.awx = fmul <8 x float> %i.aww, %i.aww
  %i.awy = fpext <8 x float> %i.awx to <8 x double>
  %i.awz = fmul <8 x double> %i.awk, %i.awy
  %i.axa = fdiv <8 x double> %i.awz, %broadcast.splat78
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %index80 ; 2 uses
  %wide.load99 = load <8 x float>, ptr %i.axb, align 4, !tbaa !61, !alias.scope !609, !noalias !610
  %i.axc = fpext <8 x float> %wide.load99 to <8 x double>
  %i.axd = fadd <8 x double> %i.axa, %i.axc
  %i.axe = fptrunc <8 x double> %i.axd to <8 x float>
  store <8 x float> %i.axe, ptr %i.axb, align 4, !tbaa !61, !alias.scope !609, !noalias !610
  %index.next100 = add nuw i64 %index80, 8        ; 2 uses
  %vec.ind.next101 = add nuw nsw <8 x i64> %vec.ind81, splat (i64 8)
  %i.axf = icmp eq i64 %index.next100, %n.vec58
  br i1 %i.axf, label %middle.block102, label %vector.body79, !llvm.loop !569

middle.block102:                                  ; preds = %vector.body79
  %cmp.n103 = icmp eq i64 %n.vec58, %wide.trip.count.i94
  br i1 %cmp.n103, label %.loopexit.i89, label %scalar.ph55.preheader

scalar.ph55.preheader:                            ; preds = %vector.memcheck44, %.lr.ph.i93, %middle.block102
  %indvars.iv.i95.ph = phi i64 [ 0, %vector.memcheck44 ], [ 0, %.lr.ph.i93 ], [ %n.vec58, %middle.block102 ]
  br label %scalar.ph55

scalar.ph55:                                      ; preds = %scalar.ph55.preheader, %scalar.ph55
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i96, %scalar.ph55 ], [ %indvars.iv.i95.ph, %scalar.ph55.preheader ] ; 3 uses
  %i.axg = getelementptr inbounds nuw [36 x i8], ptr %i.awb, i64 %indvars.iv.i95 ; 9 uses
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !61
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axg, i64 4
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !61
  %i.axk = fmul float %i.aty, %i.axj
  %i.axl = tail call float @llvm.fmuladd.f32(float %i.axh, float %50, float %i.axk)
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !61
  %i.axo = tail call float @llvm.fmuladd.f32(float %i.axn, float %51, float %i.axl)
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axg, i64 12
  %i.axq = load float, ptr %i.axp, align 4, !tbaa !61
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axg, i64 16
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !61
  %i.axt = fmul float %i.aty, %i.axs
  %i.axu = tail call float @llvm.fmuladd.f32(float %i.axq, float %50, float %i.axt)
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axg, i64 20
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !61
  %i.axx = tail call float @llvm.fmuladd.f32(float %i.axw, float %51, float %i.axu)
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !61
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axg, i64 28
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !61
  %i.ayc = fmul float %i.aty, %i.ayb
  %i.ayd = tail call float @llvm.fmuladd.f32(float %i.axz, float %50, float %i.ayc)
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axg, i64 32
  %i.ayf = load float, ptr %i.aye, align 4, !tbaa !61
  %i.ayg = tail call float @llvm.fmuladd.f32(float %i.ayf, float %51, float %i.ayd)
  %i.ayh = fmul float %i.auv, %i.axx
  %i.ayi = tail call float @llvm.fmuladd.f32(float %61, float %i.axo, float %i.ayh)
  %i.ayj = tail call noundef float @llvm.fmuladd.f32(float %i.auw, float %i.ayg, float %i.ayi) ; 2 uses
  %i.ayk = fmul float %i.ayj, %i.ayj
  %i.ayl = load float, ptr %i.avi, align 8, !tbaa !131
  %i.aym = fpext float %i.ayl to double
  %i.ayn = fmul double %i.aym, 5.000000e-01
  %i.ayo = fmul double %i.ayn, %i.ara
  %i.ayp = fmul double %i.ayo, %i.avn
  %i.ayq = fpext float %i.ayk to double
  %i.ayr = fmul double %i.ayp, %i.ayq
  %i.ays = fdiv double %i.ayr, %i.avr
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %indvars.iv.i95 ; 2 uses
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !61
  %i.ayv = fpext float %i.ayu to double
  %i.ayw = fadd double %i.ays, %i.ayv
  %i.ayx = fptrunc double %i.ayw to float
  store float %i.ayx, ptr %i.ayt, align 4, !tbaa !61
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next.i96, %wide.trip.count.i94
  br i1 %exitcond.not.i97, label %.loopexit.i89, label %scalar.ph55, !llvm.loop !570

.loopexit.i89:                                    ; preds = %scalar.ph55, %middle.block102, %.preheader.i92, %bb.az
  %sqrt.i145.i = tail call float @llvm.sqrt.f32(float %i.auz) ; 4 uses
  %62 = fmul float %i.ang, %i.atf
  %i.ayy = fmul float %i.apf, %i.ask
  %63 = load ptr, ptr %i.aou, align 8, !tbaa !105
  %64 = getelementptr inbounds [4 x i8], ptr %63, i64 %i.ath
  %65 = load float, ptr %64, align 4, !tbaa !61
  %66 = load ptr, ptr %i.aov, align 8, !tbaa !601
  %67 = getelementptr inbounds [12 x i8], ptr %66, i64 %i.ath ; 3 uses
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %70 = load float, ptr %69, align 4, !tbaa !61
  %i.ayz = fdiv float 1.000000e+00, %sqrt.i145.i  ; 3 uses
  %i.aza = fmul float %i.auv, %i.ayz              ; 3 uses
  %i.azb = fmul float %61, %i.ayz                 ; 3 uses
  %i.azc = fmul float %i.auw, %i.ayz              ; 3 uses
  %71 = fdiv float %sqrt.i145.i, %i.avd           ; 6 uses
  %i.azd = fmul float %i.auf, %71
  %i.aze = fmul float %55, %71
  %i.azf = fmul float %i.auh, %71
  %i.azg = fmul float %71, %71
  %i.azh = fmul float %sqrt.i145.i, %i.azg
  %i.azi = fmul float %i.apg, %i.ask              ; 2 uses
  %72 = fdiv float %i.ayy, %65                    ; 3 uses
  %73 = load float, ptr %68, align 4, !tbaa !61
  %74 = load float, ptr %67, align 4, !tbaa !61
  %i.azj = fmul float %72, %73                    ; 4 uses
  %i.azk = fmul float %72, %74                    ; 4 uses
  %i.azl = fmul float %72, %70                    ; 4 uses
  %i.azm = fmul float %i.aza, %i.azj
  %i.azn = fmul float %i.auf, %i.aza
  %75 = tail call float @llvm.fmuladd.f32(float %i.azb, float %i.azk, float %i.azm)
  %76 = tail call float @llvm.fmuladd.f32(float %i.azb, float %55, float %i.azn)
  %77 = tail call noundef float @llvm.fmuladd.f32(float %i.azc, float %i.azl, float %75)
  %78 = tail call noundef float @llvm.fmuladd.f32(float %i.azc, float %i.auh, float %76) ; 4 uses
  %i.azo = fmul float %i.azh, %78                 ; 3 uses
  %i.azp = fmul float %i.azi, %78                 ; 3 uses
  %i.azq = fmul float %i.aza, %i.azo
  %i.azr = fmul float %i.azb, %i.azo
  %i.azs = fmul float %i.azc, %i.azo
  %79 = fsub float %i.azd, %i.azq
  %80 = fsub float %i.aze, %i.azr
  %81 = fsub float %i.azf, %i.azs
  %82 = fmul float %i.azp, %79                    ; 3 uses
  %83 = fmul float %i.azp, %80                    ; 3 uses
  %84 = fmul float %i.azp, %81                    ; 3 uses
  %85 = fadd float %.sroa.0175.0272.i.a, %83      ; 2 uses
  %86 = fadd float %.sroa.7178.0271.i.a, %82      ; 2 uses
  %87 = fadd float %.sroa.12181.0270.i.a, %84     ; 2 uses
  %88 = fmul float %62, %sqrt.i145.i              ; 2 uses
  %89 = fmul float %i.azi, %88
  %90 = fmul float %71, %89
  %i.azt = fmul float %90, %78
  %i.azu = fmul float %88, %77                    ; 4 uses
  %i.azv = fmul float %78, %i.azt                 ; 4 uses
  %i.azw = fadd float %.sroa.0168.0275.i.a, %i.azk ; 2 uses
  %i.azx = fadd float %.sroa.7.0274.i.a, %i.azj   ; 2 uses
  %i.azy = fadd float %.sroa.12.0273.i.a, %i.azl  ; 2 uses
  %91 = insertelement <2 x float> poison, float %i.azv, i64 0
  %92 = insertelement <2 x float> %91, float %i.azu, i64 1
  %93 = fadd <2 x float> %45, %92                 ; 2 uses
  br i1 %6, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.loopexit.i89
  %i.azz = load float, ptr %i.fl, align 8, !tbaa !61 ; 6 uses
  %i.baa = load float, ptr %i.fh, align 4, !tbaa !61 ; 6 uses
  %i.bab = fneg float %i.baa                      ; 2 uses
  %i.bac = fmul float %84, %i.bab
  %i.bad = tail call float @llvm.fmuladd.f32(float %82, float %i.azz, float %i.bac)
  %i.bae = load float, ptr %i.ff, align 8, !tbaa !61 ; 6 uses
  %i.baf = fneg float %i.azz                      ; 2 uses
  %i.bag = fmul float %83, %i.baf
  %i.bah = tail call float @llvm.fmuladd.f32(float %84, float %i.bae, float %i.bag)
  %i.bai = fneg float %i.bae                      ; 2 uses
  %i.baj = fmul float %82, %i.bai
  %i.bak = tail call float @llvm.fmuladd.f32(float %83, float %i.baa, float %i.baj)
  %i.bal = fmul float %i.azl, %i.bab
  %i.bam = tail call float @llvm.fmuladd.f32(float %i.azj, float %i.azz, float %i.bal)
  %i.ban = fmul float %i.azk, %i.baf
  %i.bao = tail call float @llvm.fmuladd.f32(float %i.azl, float %i.bae, float %i.ban)
  %i.bap = fmul float %i.azj, %i.bai
  %i.baq = tail call float @llvm.fmuladd.f32(float %i.azk, float %i.baa, float %i.bap)
  %i.bar = fmul float %i.azu, %i.bae
  %i.bas = fmul float %i.azu, %i.baa
  %i.bat = fmul float %i.azu, %i.azz
  %i.bau = fmul float %i.azv, %i.bae
  %i.bav = fmul float %i.azv, %i.baa
  %i.baw = fmul float %i.azv, %i.azz
  %i.bax = load float, ptr %i.avi, align 8, !tbaa !131
  %i.bay = fpext float %i.bax to double           ; 3 uses
  %i.baz = fsub float %i.bam, %i.bad
  %i.bba = fsub float %i.baz, %i.bar
  %i.bbb = fpext float %i.bba to double
  %i.bbc = fpext float %i.bau to double
  %i.bbd = tail call double @llvm.fmuladd.f64(double %i.bbc, double 5.000000e-01, double %i.bbb)
  %i.bbe = fmul double %i.bbd, %i.bay
  %i.bbf = fptrunc double %i.bbe to float         ; 2 uses
  %i.bbg = fsub float %i.bao, %i.bah
  %i.bbh = fsub float %i.bbg, %i.bas
  %i.bbi = fpext float %i.bbh to double
  %i.bbj = fpext float %i.bav to double
  %i.bbk = tail call double @llvm.fmuladd.f64(double %i.bbj, double 5.000000e-01, double %i.bbi)
  %i.bbl = fmul double %i.bbk, %i.bay
  %i.bbm = fptrunc double %i.bbl to float         ; 2 uses
  %i.bbn = fsub float %i.baq, %i.bak
  %i.bbo = fsub float %i.bbn, %i.bat
  %i.bbp = fpext float %i.bbo to double
  %i.bbq = fpext float %i.baw to double
  %i.bbr = tail call double @llvm.fmuladd.f64(double %i.bbq, double 5.000000e-01, double %i.bbp)
  %i.bbs = fmul double %i.bbr, %i.bay
  %i.bbt = fptrunc double %i.bbs to float         ; 2 uses
  %i.bbu = fneg float %i.bbm
  %i.bbv = fmul float %i.auk, %i.bbu
  %i.bbw = tail call float @llvm.fmuladd.f32(float %i.auj, float %i.bbt, float %i.bbv)
  %i.bbx = fneg float %i.bbt
  %i.bby = fmul float %i.aui, %i.bbx
  %i.bbz = tail call float @llvm.fmuladd.f32(float %i.auk, float %i.bbf, float %i.bby)
  %i.bca = fneg float %i.bbf
  %i.bcb = fmul float %i.auj, %i.bca
  %i.bcc = tail call float @llvm.fmuladd.f32(float %i.aui, float %i.bbm, float %i.bcb)
  %i.bcd = fmul float %i.baa, %i.bbz
  %i.bce = tail call float @llvm.fmuladd.f32(float %i.bbw, float %i.bae, float %i.bcd)
  %i.bcf = tail call noundef float @llvm.fmuladd.f32(float %i.bcc, float %i.azz, float %i.bce)
  %i.bcg = load ptr, ptr %i.aow, align 8, !tbaa !95
  %i.bch = getelementptr inbounds [4 x i8], ptr %i.bcg, i64 %i.ath ; 2 uses
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !61
  %i.bcj = fadd float %i.bci, %i.bcf
  store float %i.bcj, ptr %i.bch, align 4, !tbaa !61
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit.i89, %bb.ay
  %.sroa.12181.1.i.a = phi float [ %.sroa.12181.0270.i.a, %bb.ay ], [ %87, %bb.ba ], [ %87, %.loopexit.i89 ] ; 2 uses
  %.sroa.7178.1.i = phi float [ %.sroa.7178.0271.i.a, %bb.ay ], [ %86, %bb.ba ], [ %86, %.loopexit.i89 ] ; 2 uses
  %.sroa.0175.1.i = phi float [ %.sroa.0175.0272.i.a, %bb.ay ], [ %85, %bb.ba ], [ %85, %.loopexit.i89 ] ; 2 uses
  %.sroa.12.1.i = phi float [ %.sroa.12.0273.i.a, %bb.ay ], [ %i.azy, %bb.ba ], [ %i.azy, %.loopexit.i89 ] ; 2 uses
  %.sroa.7.1.i = phi float [ %.sroa.7.0274.i.a, %bb.ay ], [ %i.azx, %bb.ba ], [ %i.azx, %.loopexit.i89 ] ; 2 uses
  %.sroa.0168.1.i = phi float [ %.sroa.0168.0275.i.a, %bb.ay ], [ %i.azw, %bb.ba ], [ %i.azw, %.loopexit.i89 ] ; 2 uses
  %.2.i90 = phi float [ %.1142276.i.a, %bb.ay ], [ %i.avv, %bb.ba ], [ %i.avv, %.loopexit.i89 ] ; 2 uses
  %94 = phi <2 x float> [ %45, %bb.ay ], [ %93, %bb.ba ], [ %93, %.loopexit.i89 ] ; 2 uses
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count304.i
  br i1 %exitcond305.not.i, label %._crit_edge.i87, label %bb.ay, !llvm.loop !571

_ZL17do_flex2_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit: ; preds = %._crit_edge.i87, %bb.av
  %.0141.lcssa.i = phi float [ 0.000000e+00, %bb.av ], [ %.1142.lcssa.i, %._crit_edge.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.bf

bb.bc:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(70) @.str.2, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 2670, ptr noundef nonnull @.str.141) #32
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.bck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %common.resume

bb.bf:                                            ; preds = %_ZL17do_flex2_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit, %_ZL16do_flex_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit
  %.0141.lcssa.i.sink = phi float [ %.0141.lcssa.i, %_ZL17do_flex2_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit ], [ %.0100.lcssa.i, %_ZL16do_flex_lowlevelP13gmx_enfrotgrpfN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEbbPA3_Kf.exit ]
  %i.bcl = getelementptr inbounds nuw i8, ptr %2, i64 76
  store float %.0141.lcssa.i.sink, ptr %i.bcl, align 4, !tbaa !58
  br i1 %0, label %bb.bg, label %bb.bs

bb.bg:                                            ; preds = %bb.bf
  %i.bcm = load ptr, ptr %2, align 8, !tbaa !77   ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 80
  %i.bco = load i32, ptr %i.bcn, align 8, !tbaa !86
  %.not59 = icmp eq i32 %i.bco, 2
  br i1 %.not59, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %6, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bcp = load ptr, ptr %i.es, align 8, !tbaa !140
  %i.bcq = load ptr, ptr %i.it, align 8, !tbaa !596
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcm, i64 8
  %i.bcs = load i32, ptr %i.bcr, align 8, !tbaa !120
  call void @_Z10get_centerPA3_KfPfiS2_(ptr noundef %i.bcp, ptr noundef %i.bcq, i32 noundef %i.bcs, ptr noundef nonnull %i.c)
  %i.bct = load ptr, ptr %2, align 8, !tbaa !77   ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 80
  %i.bcv = load i32, ptr %i.bcu, align 8, !tbaa !86
  %i.bcw = icmp eq i32 %i.bcv, 1
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bct, i64 8
  %i.bcy = load i32, ptr %i.bcx, align 8, !tbaa !120 ; 5 uses
  br i1 %i.bcw, label %.preheader.i98, label %_ZL14flex_fit_angleP13gmx_enfrotgrp.exit

.preheader.i98:                                   ; preds = %bb.bi
  %i.bcz = icmp sgt i32 %i.bcy, 0
  br i1 %i.bcz, label %.lr.ph.i100, label %._crit_edge.i99

.lr.ph.i100:                                      ; preds = %.preheader.i98
  %i.bda = load ptr, ptr %i.es, align 8, !tbaa !140 ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !130 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !597 ; 3 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !611 ; 3 uses
  %wide.trip.count.i101 = zext nneg i32 %i.bcy to i64 ; 2 uses
  %xtraiter245 = and i64 %wide.trip.count.i101, 1
  %i.bdi = icmp eq i32 %i.bcy, 1
  br i1 %i.bdi, label %.epil.preheader, label %.lr.ph.i100.new

.lr.ph.i100.new:                                  ; preds = %.lr.ph.i100
  %unroll_iter = and i64 %wide.trip.count.i101, 2147483646
  br label %bb.bj

._crit_edge.i99.loopexit.unr-lcssa:               ; preds = %bb.bj
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %._crit_edge.i99, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i99.loopexit.unr-lcssa, %.lr.ph.i100
  %indvars.iv.i102.epil.init = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104.1, %._crit_edge.i99.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i32 %i.bcy to i1
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.bdj = getelementptr inbounds nuw [12 x i8], ptr %i.bda, i64 %indvars.iv.i102.epil.init ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 8
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !61
  %i.bdm = load float, ptr %i.bdb, align 8, !tbaa !61
  %i.bdn = fsub float %i.bdl, %i.bdm              ; 3 uses
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.bdf, i64 %indvars.iv.i102.epil.init
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !60
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds [4 x i8], ptr %i.bdd, i64 %i.bdq
  %i.bds = load float, ptr %i.bdr, align 4, !tbaa !61
  %i.bdt = getelementptr inbounds nuw [12 x i8], ptr %i.bdh, i64 %indvars.iv.i102.epil.init ; 2 uses
  %i.bdu = load <2 x float>, ptr %i.bdj, align 4, !tbaa !61
  %i.bdv = load <2 x float>, ptr %i.c, align 8, !tbaa !61
  %i.bdw = fsub <2 x float> %i.bdu, %i.bdv        ; 4 uses
  %foldExtExtBinop.epil = fmul <2 x float> %i.bdw, %i.bdw
  %i.bdx = extractelement <2 x float> %foldExtExtBinop.epil, i64 1
  %i.bdy = extractelement <2 x float> %i.bdw, i64 0 ; 2 uses
  %i.bdz = call float @llvm.fmuladd.f32(float %i.bdy, float %i.bdy, float %i.bdx)
  %i.bea = call noundef float @llvm.fmuladd.f32(float %i.bdn, float %i.bdn, float %i.bdz)
  %sqrt.i.i103.epil = call noundef float @llvm.sqrt.f32(float %i.bea)
  %i.beb = fdiv float %i.bds, %sqrt.i.i103.epil   ; 2 uses
  %i.bec = insertelement <2 x float> poison, float %i.beb, i64 0
  %i.bed = shufflevector <2 x float> %i.bec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bee = fmul <2 x float> %i.bdw, %i.bed
  store <2 x float> %i.bee, ptr %i.bdt, align 4, !tbaa !61
  %i.bef = fmul float %i.bdn, %i.beb
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8
  store float %i.bef, ptr %i.beg, align 4, !tbaa !61
  br label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %.epil.preheader, %._crit_edge.i99.loopexit.unr-lcssa, %.preheader.i98
  %i.beh = getelementptr inbounds nuw i8, ptr %2, i64 176
  br label %_ZL14flex_fit_angleP13gmx_enfrotgrp.exit

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i100.new
  %indvars.iv.i102 = phi i64 [ 0, %.lr.ph.i100.new ], [ %indvars.iv.next.i104.1, %bb.bj ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i100.new ], [ %niter.next.1, %bb.bj ]
  %i.bei = getelementptr inbounds nuw [12 x i8], ptr %i.bda, i64 %indvars.iv.i102 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8
  %i.bek = load float, ptr %i.bej, align 4, !tbaa !61
  %i.bel = load float, ptr %i.bdb, align 8, !tbaa !61
  %i.bem = fsub float %i.bek, %i.bel              ; 3 uses
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bdf, i64 %indvars.iv.i102
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !60
  %i.bep = sext i32 %i.beo to i64
  %i.beq = getelementptr inbounds [4 x i8], ptr %i.bdd, i64 %i.bep
  %i.ber = load float, ptr %i.beq, align 4, !tbaa !61
  %i.bes = getelementptr inbounds nuw [12 x i8], ptr %i.bdh, i64 %indvars.iv.i102 ; 2 uses
  %i.bet = load <2 x float>, ptr %i.bei, align 4, !tbaa !61
  %i.beu = load <2 x float>, ptr %i.c, align 8, !tbaa !61
  %i.bev = fsub <2 x float> %i.bet, %i.beu        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bev, %i.bev
  %i.bew = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bex = extractelement <2 x float> %i.bev, i64 0 ; 2 uses
  %i.bey = call float @llvm.fmuladd.f32(float %i.bex, float %i.bex, float %i.bew)
  %i.bez = call noundef float @llvm.fmuladd.f32(float %i.bem, float %i.bem, float %i.bey)
  %sqrt.i.i103 = call noundef float @llvm.sqrt.f32(float %i.bez)
  %i.bfa = fdiv float %i.ber, %sqrt.i.i103        ; 2 uses
  %i.bfb = insertelement <2 x float> poison, float %i.bfa, i64 0
  %i.bfc = shufflevector <2 x float> %i.bfb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfd = fmul <2 x float> %i.bev, %i.bfc
  store <2 x float> %i.bfd, ptr %i.bes, align 4, !tbaa !61
  %i.bfe = fmul float %i.bem, %i.bfa
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bes, i64 8
  store float %i.bfe, ptr %i.bff, align 4, !tbaa !61
  %indvars.iv.next.i104 = or disjoint i64 %indvars.iv.i102, 1 ; 3 uses
  %i.bfg = getelementptr inbounds nuw [12 x i8], ptr %i.bda, i64 %indvars.iv.next.i104 ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 8
  %i.bfi = load float, ptr %i.bfh, align 4, !tbaa !61
  %i.bfj = load float, ptr %i.bdb, align 8, !tbaa !61
  %i.bfk = fsub float %i.bfi, %i.bfj              ; 3 uses
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %i.bdf, i64 %indvars.iv.next.i104
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !60
  %i.bfn = sext i32 %i.bfm to i64
  %i.bfo = getelementptr inbounds [4 x i8], ptr %i.bdd, i64 %i.bfn
  %i.bfp = load float, ptr %i.bfo, align 4, !tbaa !61
  %i.bfq = getelementptr inbounds nuw [12 x i8], ptr %i.bdh, i64 %indvars.iv.next.i104 ; 2 uses
  %i.bfr = load <2 x float>, ptr %i.bfg, align 4, !tbaa !61
  %i.bfs = load <2 x float>, ptr %i.c, align 8, !tbaa !61
  %i.bft = fsub <2 x float> %i.bfr, %i.bfs        ; 4 uses
  %foldExtExtBinop.1 = fmul <2 x float> %i.bft, %i.bft
  %i.bfu = extractelement <2 x float> %foldExtExtBinop.1, i64 1
  %i.bfv = extractelement <2 x float> %i.bft, i64 0 ; 2 uses
  %i.bfw = call float @llvm.fmuladd.f32(float %i.bfv, float %i.bfv, float %i.bfu)
  %i.bfx = call noundef float @llvm.fmuladd.f32(float %i.bfk, float %i.bfk, float %i.bfw)
  %sqrt.i.i103.1 = call noundef float @llvm.sqrt.f32(float %i.bfx)
  %i.bfy = fdiv float %i.bfp, %sqrt.i.i103.1      ; 2 uses
  %i.bfz = insertelement <2 x float> poison, float %i.bfy, i64 0
  %i.bga = shufflevector <2 x float> %i.bfz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgb = fmul <2 x float> %i.bft, %i.bga
  store <2 x float> %i.bgb, ptr %i.bfq, align 4, !tbaa !61
  %i.bgc = fmul float %i.bfk, %i.bfy
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfq, i64 8
  store float %i.bgc, ptr %i.bgd, align 4, !tbaa !61
  %indvars.iv.next.i104.1 = add nuw nsw i64 %indvars.iv.i102, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i99.loopexit.unr-lcssa, label %bb.bj, !llvm.loop !572

_ZL14flex_fit_angleP13gmx_enfrotgrp.exit:         ; preds = %bb.bi, %._crit_edge.i99
  %.023.in.i = phi ptr [ %i.beh, %._crit_edge.i99 ], [ %i.es, %bb.bi ]
  %.023.i = load ptr, ptr %.023.in.i, align 8, !tbaa !121
  %i.bge = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !595
  %i.bgg = load ptr, ptr %i.it, align 8, !tbaa !596
  %i.bgh = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bgi = call fastcc noundef float @_ZL18opt_angle_analyticPA3_fS0_PfiPKfS3_S1_(ptr noundef %i.bgf, ptr noundef %.023.i, ptr noundef %i.bgg, i32 noundef %i.bcy, ptr noundef %i.bgh, ptr noundef %i.c, ptr noundef %i.ff)
  %i.bgj = fneg float %i.bgi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bgk = getelementptr inbounds nuw i8, ptr %2, i64 224
  store float %i.bgj, ptr %i.bgk, align 8, !tbaa !81
  br label %bb.bk

bb.bk:                                            ; preds = %_ZL14flex_fit_angleP13gmx_enfrotgrp.exit, %bb.bh
end_hunk_1
begin_hunk_2_@_ZL12align_with_zPA3_fiPf:bb.a
vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body111 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %index112
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index112
  %wide.vec113 = load <24 x float>, ptr %i.cu, align 4, !tbaa !61, !alias.scope !681
  store <24 x float> %wide.vec113, ptr %i.cv, align 4, !tbaa !61, !alias.scope !682, !noalias !681
  %index.next118 = add nuw i64 %index112, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next118, %n.vec110
  br i1 %i.cw, label %middle.block119, label %vector.body111, !llvm.loop !676

middle.block119:                                  ; preds = %vector.body111
  %cmp.n120 = icmp eq i64 %n.vec110, %wide.trip.count
  br i1 %cmp.n120, label %._crit_edge, label %.preheader.preheader122

.preheader.preheader122:                          ; preds = %vector.memcheck101, %.preheader.preheader, %middle.block119
  %indvars.iv62.ph = phi i64 [ 0, %vector.memcheck101 ], [ 0, %.preheader.preheader ], [ %n.vec110, %middle.block119 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader122, %.preheader.prol
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.preheader.prol ], [ %indvars.iv62.ph, %.preheader.preheader122 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader122 ]
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv62.prol ; 3 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv62.prol ; 3 uses
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !61
  store float %i.cz, ptr %i.cy, align 4, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !61
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.db, ptr %i.dc, align 4, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !61
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store float %i.de, ptr %i.df, align 4, !tbaa !61
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !677

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader122
  %indvars.iv62.unr = phi i64 [ %indvars.iv62.ph, %.preheader.preheader122 ], [ %indvars.iv.next63.prol, %.preheader.prol ]
  %i.dg = sub nsw i64 %indvars.iv62.ph, %wide.trip.count
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %.preheader ], [ %indvars.iv62.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv62 ; 3 uses
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv62 ; 3 uses
  %i.dk = load float, ptr %i.di, align 4, !tbaa !61
  store float %i.dk, ptr %i.dj, align 4, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store float %i.dm, ptr %i.dn, align 4, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store float %i.dp, ptr %i.dq, align 4, !tbaa !61
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.next63 ; 3 uses
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next63 ; 3 uses
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !61
  store float %i.dt, ptr %i.ds, align 4, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store float %i.dv, ptr %i.dw, align 4, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !61
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.next63.1 ; 3 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next63.1 ; 3 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !61
  store float %i.ec, ptr %i.eb, align 4, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ee, ptr %i.ef, align 4, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !61
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store float %i.eh, ptr %i.ei, align 4, !tbaa !61
  %indvars.iv.next63.2 = add nuw nsw i64 %indvars.iv62, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.next63.2 ; 3 uses
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next63.2 ; 3 uses
  %i.el = load float, ptr %i.ej, align 4, !tbaa !61
  store float %i.el, ptr %i.ek, align 4, !tbaa !61
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !61
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store float %i.en, ptr %i.eo, align 4, !tbaa !61
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !61
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store float %i.eq, ptr %i.er, align 4, !tbaa !61
  %indvars.iv.next63.3 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %indvars.iv.next63.3, %wide.trip.count65
  br i1 %exitcond66.not.3, label %._crit_edge, label %.preheader, !llvm.loop !678

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block119, %bb.a
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 1398, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #18

declare void @_Z6jacobiPPdiS_S0_Pi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pull_rotation.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL6RotStrB5cxx11, i64 16), ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 18, ptr %i.a, align 8, !tbaa !109
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL6RotStrB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !100
  %i.c = load i64, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL6RotStrB5cxx11, i64 16), align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.b, ptr noundef nonnull align 1 dereferenceable(18) @.str, i64 18, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL6RotStrB5cxx11, i64 8), align 8, !tbaa !111
  %i.d = load ptr, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL6RotStrB5cxx11, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS5t_rot", !12, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!15 = !{!"p1 float", !12, i64 0}
!16 = !{!"p1 _ZTS16sort_along_vec_t", !12, i64 0}
!17 = !{!"bool", !8, i64 0}
!18 = !{!"p1 _ZTS13gmx_enfrotgrp", !12, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseI13gmx_enfrotgrpSaIS0_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseI13gmx_enfrotgrpSaIS0_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseI13gmx_enfrotgrpSaIS0_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorI13gmx_enfrotgrpSaIS0_EE", !21, i64 0}
!23 = !{!"_ZTS10gmx_enfrot", !13, i64 0, !9, i64 8, !9, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !17, i64 100, !17, i64 101, !22, i64 104}
!24 = !{!23, !14, i64 16}
!25 = !{!23, !14, i64 40}
!26 = !{!23, !14, i64 32}
!27 = !{!23, !14, i64 24}
!28 = !{!19, !18, i64 0}
!29 = !{!19, !18, i64 8}
!30 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !12, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 16}
!34 = !{!"p1 _ZTSN3gmx12LocalAtomSetE", !12, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!19, !18, i64 16}
!38 = !{!23, !13, i64 0}
!39 = !{!"p1 _ZTSN3gmx16EnforcedRotation4ImplE", !12, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!18, !18, i64 0}
!42 = !{!23, !9, i64 8}
!43 = !{!"p1 _ZTS8t_rotgrp", !12, i64 0}
!44 = !{!"float", !8, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12LocalAtomSetELb0EE", !34, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12LocalAtomSetESt14default_deleteIS1_EEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN3gmx12LocalAtomSetESt14default_deleteIS1_EEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12LocalAtomSetESt14default_deleteIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12LocalAtomSetESt14default_deleteIS1_ELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !31, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !52, i64 0}
!54 = !{!"p1 int", !12, i64 0}
!55 = !{!"p1 _ZTS12gmx_slabdata", !12, i64 0}
!56 = !{!"p1 _ZTS10gmx_potfit", !12, i64 0}
!57 = !{!"_ZTS13gmx_enfrotgrp", !43, i64 0, !9, i64 8, !44, i64 12, !8, i64 16, !50, i64 56, !8, i64 64, !44, i64 76, !15, i64 80, !15, i64 88, !8, i64 96, !8, i64 108, !53, i64 120, !15, i64 144, !54, i64 152, !54, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !54, i64 192, !15, i64 200, !15, i64 208, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !15, i64 232, !15, i64 240, !15, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !54, i64 280, !54, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !44, i64 328, !15, i64 336, !54, i64 344, !15, i64 352, !55, i64 360, !56, i64 368}
!58 = !{!57, !44, i64 76}
!59 = !{!57, !15, i64 80}
!60 = !{!9, !9, i64 0}
!61 = !{!44, !44, i64 0}
!62 = !{!23, !9, i64 12}
!63 = !{!23, !17, i64 101}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"p1 _ZTS10tmpi_comm_", !12, i64 0}
!67 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !12, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !72, i64 0}
!74 = !{!"_ZTSN3gmx7MpiCommE", !66, i64 0, !9, i64 8, !9, i64 12, !73, i64 16}
!75 = !{!74, !9, i64 8}
!76 = !{!23, !9, i64 96}
!77 = !{!57, !43, i64 0}
!78 = !{!57, !9, i64 260}
!79 = !{!57, !9, i64 256}
!80 = !{!57, !44, i64 220}
!81 = !{!57, !44, i64 224}
!82 = !{!57, !44, i64 228}
!83 = !{!"_ZTS25EnforcedRotationGroupType", !8, i64 0}
!84 = !{!"_ZTS20RotationGroupFitting", !8, i64 0}
!85 = !{!"_ZTS8t_rotgrp", !83, i64 0, !17, i64 4, !9, i64 8, !54, i64 16, !53, i64 24, !8, i64 48, !44, i64 60, !44, i64 64, !8, i64 68, !84, i64 80, !9, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100}
!86 = !{!85, !84, i64 80}
!87 = !{!85, !9, i64 84}
!88 = !{!57, !56, i64 368}
!89 = !{!"_ZTS10gmx_potfit", !15, i64 0, !15, i64 8, !15, i64 16}
!90 = !{!89, !15, i64 8}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!85, !83, i64 0}
!95 = !{!57, !15, i64 320}
!96 = !{!"p1 omnipotent char", !12, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !96, i64 0}
!98 = !{!"long", !8, i64 0}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !97, i64 0, !98, i64 8, !8, i64 16}
!100 = !{!99, !96, i64 0}
!101 = !{!74, !66, i64 0}
!102 = !{!74, !9, i64 12}
!103 = !{!89, !15, i64 0}
!104 = !{!57, !9, i64 8}
!105 = !{!57, !15, i64 312}
!106 = !{!85, !44, i64 96}
!107 = !{!57, !44, i64 12}
!108 = !{!97, !96, i64 0}
!109 = !{!98, !98, i64 0}
!110 = !{!8, !8, i64 0}
!111 = !{!99, !98, i64 8}
!112 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!96, !96, i64 0}
!115 = !{!85, !44, i64 92}
!116 = !{!"double", !8, i64 0}
!117 = !{!30, !30, i64 0}
!118 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!119 = !{i64 0, i64 12, !110}
!120 = !{!85, !9, i64 8}
!121 = !{!15, !15, i64 0}
!122 = !{!57, !15, i64 200}
!123 = !{!57, !44, i64 216}
!124 = !{!85, !44, i64 60}
!125 = !{!57, !15, i64 168}
!126 = !{!57, !44, i64 328}
!127 = !{!57, !9, i64 264}
!128 = !{!57, !9, i64 268}
!129 = !{!57, !55, i64 360}
!130 = !{!57, !15, i64 88}
!131 = !{!85, !44, i64 64}
!132 = !{!85, !44, i64 100}
!133 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!134, !133, i64 8}
!136 = !{!134, !133, i64 16}
!137 = !{!134, !133, i64 0}
!138 = !{!57, !15, i64 296}
!139 = !{!57, !15, i64 304}
!140 = !{!57, !15, i64 144}
!141 = !{!57, !54, i64 152}
!142 = !{!89, !15, i64 16}
!143 = !{!"_ZTS16sort_along_vec_t", !44, i64 0, !9, i64 4, !44, i64 8, !8, i64 12, !8, i64 24}
!144 = !{!143, !44, i64 0}
!145 = !{i64 0, i64 4, !61, i64 4, i64 4, !60, i64 8, i64 4, !61, i64 12, i64 12, !110, i64 24, i64 12, !110}
!146 = !{!57, !54, i64 344}
!147 = !{!57, !15, i64 336}
!148 = distinct !{!148, !36}
!149 = distinct !{!149, !36, !91, !92}
!150 = distinct !{!150, !36, !91, !92}
!151 = distinct !{!151, !93}
!152 = distinct !{!152, !36, !91}
!153 = distinct !{!153, !36, !91, !92}
!154 = distinct !{!154, !36, !91, !92}
!155 = distinct !{!155, !93}
!156 = distinct !{!156, !36, !91}
!157 = distinct !{!157, !36, !91, !92}
!158 = distinct !{!158, !36, !91, !92}
!159 = distinct !{!159, !93}
!160 = distinct !{!160, !36, !91}
end_hunk_2
