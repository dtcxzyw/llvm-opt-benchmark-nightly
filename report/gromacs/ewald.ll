Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/ewald?download=true
inline.NumInlined: 216
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z8do_ewaldbff26FreeEnergyPerturbationTypeN3gmx8ArrayRefIKNS0_11BasicVectorIfEEEENS1_IS3_EENS1_IKfEES8_PA3_S7_PK12gmx_domdec_tiPA3_fffPfP15gmx_ewald_tab_t:bb.a
  %.not238 = icmp eq i32 %3, 0                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %13, i8 0, i64 36, i1 false)
  %i.bg = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.k, i64 1
  %i.bi = fpext <2 x float> %i.bh to <2 x double>
  %i.bj = fdiv <2 x double> splat (double f0x401921FB54442D18), %i.bi ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = fptrunc double %i.bk to float           ; 5 uses
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  %i.bn = fptrunc double %i.bm to float           ; 5 uses
  %i.bo = fpext float %spec.select to double
  %i.bp = fdiv double f0x401921FB54442D18, %i.bo
  %i.bq = fptrunc double %i.bp to float           ; 5 uses
  %i.br = load i32, ptr %i.w, align 4, !tbaa !25  ; 4 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.l, label %.preheader54.i

.preheader54.i:                                   ; preds = %_ZNSt6vectorI9t_complexSaIS0_EE6resizeEm.exit241
  %i.bt = icmp sgt i32 %12, 0                     ; 6 uses
  br i1 %i.bt, label %.preheader53.lr.ph.i, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit

.preheader53.lr.ph.i:                             ; preds = %.preheader54.i
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !261 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !261 ; 2 uses
  %i.bx = icmp samesign ugt i32 %i.br, 2
  %wide.trip.count85.i = zext nneg i32 %12 to i64 ; 2 uses
  br i1 %i.bx, label %.preheader53.lr.ph.split.us.i, label %.preheader53.i

.preheader53.lr.ph.split.us.i:                    ; preds = %.preheader53.lr.ph.i
  %wide.trip.count80.i = zext nneg i32 %i.br to i64
  br label %.preheader53.us.i

.preheader53.us.i:                                ; preds = %._crit_edge.us.i, %.preheader53.lr.ph.split.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %._crit_edge.us.i ], [ 0, %.preheader53.lr.ph.split.us.i ] ; 6 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %indvars.iv82.i ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.by, align 4, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.bz, align 4, !tbaa !37
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv82.i ; 4 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %indvars.iv82.i ; 7 uses
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !37
  %i.cd = fmul float %i.cc, %i.bl
  %i.ce = tail call noundef float @cosf(float noundef %i.cd) #20
  store float %i.ce, ptr %i.cb, align 4, !tbaa !263
  %i.cf = load float, ptr %i.ca, align 4, !tbaa !37
  %i.cg = fmul float %i.cf, %i.bl
  %i.ch = tail call noundef float @sinf(float noundef %i.cg) #20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store float %i.ch, ptr %i.ci, align 4, !tbaa !264
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !37
  %i.cl = fmul float %i.ck, %i.bn
  %i.cm = tail call noundef float @cosf(float noundef %i.cl) #20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store float %i.cm, ptr %i.cn, align 4, !tbaa !263
  %i.co = load float, ptr %i.cj, align 4, !tbaa !37
  %i.cp = fmul float %i.co, %i.bn
  %i.cq = tail call noundef float @sinf(float noundef %i.cp) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.cq, ptr %i.cr, align 4, !tbaa !264
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !37
  %i.cu = fmul float %i.ct, %i.bq
  %i.cv = tail call noundef float @cosf(float noundef %i.cu) #20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  store float %i.cv, ptr %i.cw, align 4, !tbaa !263
  %i.cx = load float, ptr %i.cs, align 4, !tbaa !37
  %i.cy = fmul float %i.cx, %i.bq
  %i.cz = tail call noundef float @sinf(float noundef %i.cy) #20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  store float %i.cz, ptr %i.da, align 4, !tbaa !264
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i, %.preheader53.us.i
  %indvars.iv77.i = phi i64 [ 2, %.preheader53.us.i ], [ %indvars.iv.next78.i, %.preheader.us.i ] ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv77.i ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !261
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv82.i ; 3 uses
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !261
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %indvars.iv82.i ; 3 uses
  %.sroa.01.0.copyload.us.i = load <2 x float>, ptr %i.de, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.0.copyload.us.i = load <2 x float>, ptr %i.cb, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us.i = extractelement <2 x float> %.sroa.01.0.copyload.us.i, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us.i = extractelement <2 x float> %.sroa.0.0.copyload.us.i, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us.i = extractelement <2 x float> %.sroa.01.0.copyload.us.i, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.us.i = extractelement <2 x float> %.sroa.0.0.copyload.us.i, i64 1 ; 2 uses
  %i.dh = fneg float %.sroa.0.4.vec.extract.i.us.i
  %i.di = fmul float %.sroa.05.4.vec.extract.i.us.i, %i.dh
  %i.dj = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.i, float %.sroa.0.0.vec.extract.i.us.i, float %i.di)
  %.sroa.010.0.vec.insert.i.us.i = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dk = fmul float %.sroa.05.4.vec.extract.i.us.i, %.sroa.0.0.vec.extract.i.us.i
  %i.dl = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.i, float %.sroa.0.4.vec.extract.i.us.i, float %i.dk)
  %.sroa.010.4.vec.insert.i.us.i = insertelement <2 x float> %.sroa.010.0.vec.insert.i.us.i, float %i.dl, i64 1
  store <2 x float> %.sroa.010.4.vec.insert.i.us.i, ptr %i.dg, align 4, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.01.0.copyload.us.1.i = load <2 x float>, ptr %i.dm, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.0.copyload.us.1.i = load <2 x float>, ptr %i.cn, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us.1.i = extractelement <2 x float> %.sroa.01.0.copyload.us.1.i, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us.1.i = extractelement <2 x float> %.sroa.0.0.copyload.us.1.i, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us.1.i = extractelement <2 x float> %.sroa.01.0.copyload.us.1.i, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.us.1.i = extractelement <2 x float> %.sroa.0.0.copyload.us.1.i, i64 1 ; 2 uses
  %i.dn = fneg float %.sroa.0.4.vec.extract.i.us.1.i
  %i.do = fmul float %.sroa.05.4.vec.extract.i.us.1.i, %i.dn
  %i.dp = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.1.i, float %.sroa.0.0.vec.extract.i.us.1.i, float %i.do)
  %.sroa.010.0.vec.insert.i.us.1.i = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dq = fmul float %.sroa.05.4.vec.extract.i.us.1.i, %.sroa.0.0.vec.extract.i.us.1.i
  %i.dr = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.1.i, float %.sroa.0.4.vec.extract.i.us.1.i, float %i.dq)
  %.sroa.010.4.vec.insert.i.us.1.i = insertelement <2 x float> %.sroa.010.0.vec.insert.i.us.1.i, float %i.dr, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store <2 x float> %.sroa.010.4.vec.insert.i.us.1.i, ptr %i.ds, align 4, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.01.0.copyload.us.2.i = load <2 x float>, ptr %i.dt, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.0.copyload.us.2.i = load <2 x float>, ptr %i.cw, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us.2.i = extractelement <2 x float> %.sroa.01.0.copyload.us.2.i, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us.2.i = extractelement <2 x float> %.sroa.0.0.copyload.us.2.i, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us.2.i = extractelement <2 x float> %.sroa.01.0.copyload.us.2.i, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.us.2.i = extractelement <2 x float> %.sroa.0.0.copyload.us.2.i, i64 1 ; 2 uses
  %i.du = fneg float %.sroa.0.4.vec.extract.i.us.2.i
  %i.dv = fmul float %.sroa.05.4.vec.extract.i.us.2.i, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.2.i, float %.sroa.0.0.vec.extract.i.us.2.i, float %i.dv)
  %.sroa.010.0.vec.insert.i.us.2.i = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dx = fmul float %.sroa.05.4.vec.extract.i.us.2.i, %.sroa.0.0.vec.extract.i.us.2.i
  %i.dy = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.2.i, float %.sroa.0.4.vec.extract.i.us.2.i, float %i.dx)
  %.sroa.010.4.vec.insert.i.us.2.i = insertelement <2 x float> %.sroa.010.0.vec.insert.i.us.2.i, float %i.dy, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x float> %.sroa.010.4.vec.insert.i.us.2.i, ptr %i.dz, align 4, !tbaa !37
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %._crit_edge.us.i, label %.preheader.us.i, !llvm.loop !146

._crit_edge.us.i:                                 ; preds = %.preheader.us.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit, label %.preheader53.us.i, !llvm.loop !147

bb.l:                                             ; preds = %_ZNSt6vectorI9t_complexSaIS0_EE6resizeEm.exit241
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.br) ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.preheader53.i:                                   ; preds = %.preheader53.lr.ph.i, %.preheader53.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader53.i ], [ 0, %.preheader53.lr.ph.i ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %indvars.iv.i ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.eb, align 4, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ec, align 4, !tbaa !37
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %indvars.iv.i ; 6 uses
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !37
  %i.eg = fmul float %i.ef, %i.bl
  %i.eh = tail call noundef float @cosf(float noundef %i.eg) #20
  store float %i.eh, ptr %i.ee, align 4, !tbaa !263
  %i.ei = load float, ptr %i.ed, align 4, !tbaa !37
  %i.ej = fmul float %i.ei, %i.bl
  %i.ek = tail call noundef float @sinf(float noundef %i.ej) #20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store float %i.ek, ptr %i.el, align 4, !tbaa !264
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !37
  %i.eo = fmul float %i.en, %i.bn
  %i.ep = tail call noundef float @cosf(float noundef %i.eo) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store float %i.ep, ptr %i.eq, align 4, !tbaa !263
  %i.er = load float, ptr %i.em, align 4, !tbaa !37
  %i.es = fmul float %i.er, %i.bn
  %i.et = tail call noundef float @sinf(float noundef %i.es) #20
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store float %i.et, ptr %i.eu, align 4, !tbaa !264
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !37
  %i.ex = fmul float %i.ew, %i.bq
  %i.ey = tail call noundef float @cosf(float noundef %i.ex) #20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store float %i.ey, ptr %i.ez, align 4, !tbaa !263
  %i.fa = load float, ptr %i.ev, align 4, !tbaa !37
  %i.fb = fmul float %i.fa, %i.bq
  %i.fc = tail call noundef float @sinf(float noundef %i.fb) #20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  store float %i.fc, ptr %i.fd, align 4, !tbaa !264
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count85.i
  br i1 %exitcond.not.i, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit, label %.preheader53.i, !llvm.loop !147

_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit: ; preds = %.preheader53.i, %._crit_edge.us.i, %.preheader54.i
  %i.fe = select i1 %.not238, i32 1, i32 2        ; 2 uses
  %i.ff = fsub float 1.000000e+00, %15
  %i.fg = load i32, ptr %17, align 8, !tbaa !22   ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fj = fpext float %i.d to double
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  br i1 %i.fh, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.us, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.preheader

_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.preheader: ; preds = %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit
  %i.fn = shl nuw nsw i32 %i.fe, 2
  %i.fo = zext nneg i32 %i.fn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, i8 0, i64 range(i64 0, 13) %i.fo, i1 false), !tbaa !37
  br label %.split.us

_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.us: ; preds = %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23 ; 3 uses
  %i.fr = sub nsw i32 1, %i.fq
  %wide.trip.count407 = zext nneg i32 %i.fe to i64
  %.val.pre = load i64, ptr %8, align 8
  %.val357.pre = load i64, ptr %9, align 8
  %wide.trip.count402 = zext nneg i32 %i.fg to i64
  %wide.trip.count = zext i32 %12 to i64          ; 17 uses
  %wide.trip.count395 = zext nneg i32 %12 to i64
  %i.fs = shl nuw nsw i64 %wide.trip.count, 3
  %i.ft = mul nuw nsw i64 %wide.trip.count, 12
  %scevgep = getelementptr i8, ptr %6, i64 %i.ft
  %i.fu = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fv = icmp eq i64 %i.fu, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod463 = trunc i32 %12 to i1
  %xtraiter465 = and i64 %wide.trip.count, 1
  %i.fw = icmp eq i64 %i.fu, 0
  %unroll_iter468 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod466.not = icmp eq i64 %xtraiter465, 0
  %lcmp.mod467 = trunc i32 %12 to i1
  %xtraiter471 = and i64 %wide.trip.count, 1
  %i.fx = icmp eq i64 %i.fu, 0
  %unroll_iter474 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod472.not = icmp eq i64 %xtraiter471, 0
  %lcmp.mod473 = trunc i32 %12 to i1
  %xtraiter477 = and i64 %wide.trip.count, 1
  %i.fy = icmp eq i64 %i.fu, 0
  %unroll_iter480 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  %lcmp.mod479 = trunc i32 %12 to i1
  %xtraiter483 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.fz = icmp ult i64 %i.fu, 7
  %unroll_iter487 = and i64 %wide.trip.count, 4294967288
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  %lcmp.mod486 = icmp ne i64 %xtraiter483, 0
  %min.iters.check = icmp ult i32 %12, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert448 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat449 = shufflevector <8 x float> %broadcast.splatinsert448, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter489 = and i64 %wide.trip.count, 1
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  %i.ga = insertelement <2 x float> poison, float %i.v, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = add nsw i64 %wide.trip.count, -1
  %i.gd = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = insertelement <2 x float> poison, float %i.v, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph354.us

.lr.ph354.us:                                     ; preds = %._crit_edge355.us, %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.us
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %._crit_edge355.us ], [ 0, %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.us ] ; 3 uses
  %i.gh = icmp eq i64 %indvars.iv404, 0           ; 2 uses
  %spec.select307.us = select i1 %i.gh, float %i.ff, float %15
  %i.gi = or i1 %.not238, %i.gh
  %.0235.us = select i1 %.not238, float 1.000000e+00, float %spec.select307.us ; 2 uses
  %.sroa.0.0.us = select i1 %i.gi, i64 %.val.pre, i64 %.val357.pre
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404 ; 2 uses
  store float 0.000000e+00, ptr %i.gj, align 4, !tbaa !37
  %i.gk = inttoptr i64 %.sroa.0.0.us to ptr       ; 6 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph354.us, %._crit_edge347.us
  %.promoted.us412 = phi float [ 0.000000e+00, %.lr.ph354.us ], [ %.promoted.us413, %._crit_edge347.us ] ; 2 uses
  %indvars.iv399 = phi i64 [ 0, %.lr.ph354.us ], [ %indvars.iv.next400, %._crit_edge347.us ] ; 3 uses
  %.0222352.us = phi i32 [ 0, %.lr.ph354.us ], [ %.1.lcssa.us, %._crit_edge347.us ] ; 3 uses
  %.0223351.us = phi i32 [ 1, %.lr.ph354.us ], [ %.1224.lcssa.us, %._crit_edge347.us ] ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv399 to i32
  %i.gm = uitofp nneg i32 %i.gl to float
  %i.gn = fmul float %i.bl, %i.gm                 ; 5 uses
  %i.go = icmp slt i32 %.0222352.us, %i.fq
  br i1 %i.go, label %.lr.ph346.us, label %._crit_edge347.us

bb.n:                                             ; preds = %.lr.ph346.us, %bb.q
  %.promoted.us = phi float [ %.promoted.us412, %.lr.ph346.us ], [ %.promoted.us415, %bb.q ] ; 2 uses
  %.1224344.us = phi i32 [ %.0223351.us, %.lr.ph346.us ], [ %.2.lcssa.us, %bb.q ] ; 3 uses
  %.0226342.us = phi i32 [ %.0222352.us, %.lr.ph346.us ], [ %i.pm, %bb.q ] ; 5 uses
  %i.gp = sitofp i32 %.0226342.us to float
  %i.gq = fmul float %i.bn, %i.gp                 ; 6 uses
  %i.gr = icmp sgt i32 %.0226342.us, -1
  br i1 %i.gr, label %.preheader310.us, label %.preheader312.us

.lr.ph318.us.new:                                 ; preds = %.lr.ph318.us, %.lr.ph318.us.new
  %indvars.iv369 = phi i64 [ %indvars.iv.next370.1, %.lr.ph318.us.new ], [ 0, %.lr.ph318.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph318.us.new ], [ 0, %.lr.ph318.us ]
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %indvars.iv369
  %.sroa.011.0.copyload.us = load <2 x float>, ptr %i.gs, align 4, !tbaa !37 ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %indvars.iv369
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.09.0.copyload.us = load <2 x float>, ptr %i.gu, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.4.vec.extract.i242.us = extractelement <2 x float> %.sroa.09.0.copyload.us, i64 1 ; 2 uses
  %i.gv = fneg float %.sroa.0.4.vec.extract.i242.us
  %.sroa.05.0.vec.extract.i243.us = extractelement <2 x float> %.sroa.011.0.copyload.us, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i244.us = extractelement <2 x float> %.sroa.09.0.copyload.us, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i245.us = extractelement <2 x float> %.sroa.011.0.copyload.us, i64 1 ; 2 uses
  %i.gw = fmul float %.sroa.05.4.vec.extract.i245.us, %.sroa.0.4.vec.extract.i242.us
  %i.gx = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i243.us, float %.sroa.0.0.vec.extract.i244.us, float %i.gw)
  %.sroa.010.0.vec.insert.i247.us = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.gy = fmul float %.sroa.05.4.vec.extract.i245.us, %.sroa.0.0.vec.extract.i244.us
  %i.gz = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i243.us, float %i.gv, float %i.gy)
  %.sroa.010.4.vec.insert.i248.us = insertelement <2 x float> %.sroa.010.0.vec.insert.i247.us, float %i.gz, i64 1
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv369
  store <2 x float> %.sroa.010.4.vec.insert.i248.us, ptr %i.ha, align 4, !tbaa !37
  %indvars.iv.next370 = or disjoint i64 %indvars.iv369, 1 ; 3 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %indvars.iv.next370
  %.sroa.011.0.copyload.us.1 = load <2 x float>, ptr %i.hb, align 4, !tbaa !37 ; 2 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %indvars.iv.next370
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.09.0.copyload.us.1 = load <2 x float>, ptr %i.hd, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.4.vec.extract.i242.us.1 = extractelement <2 x float> %.sroa.09.0.copyload.us.1, i64 1 ; 2 uses
  %i.he = fneg float %.sroa.0.4.vec.extract.i242.us.1
  %.sroa.05.0.vec.extract.i243.us.1 = extractelement <2 x float> %.sroa.011.0.copyload.us.1, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i244.us.1 = extractelement <2 x float> %.sroa.09.0.copyload.us.1, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i245.us.1 = extractelement <2 x float> %.sroa.011.0.copyload.us.1, i64 1 ; 2 uses
  %i.hf = fmul float %.sroa.05.4.vec.extract.i245.us.1, %.sroa.0.4.vec.extract.i242.us.1
  %i.hg = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i243.us.1, float %.sroa.0.0.vec.extract.i244.us.1, float %i.hf)
  %.sroa.010.0.vec.insert.i247.us.1 = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hh = fmul float %.sroa.05.4.vec.extract.i245.us.1, %.sroa.0.0.vec.extract.i244.us.1
  %i.hi = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i243.us.1, float %i.he, float %i.hh)
  %.sroa.010.4.vec.insert.i248.us.1 = insertelement <2 x float> %.sroa.010.0.vec.insert.i247.us.1, float %i.hi, i64 1
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next370
  store <2 x float> %.sroa.010.4.vec.insert.i248.us.1, ptr %i.hj, align 4, !tbaa !37
  %indvars.iv.next370.1 = add nuw nsw i64 %indvars.iv369, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit311.us.loopexit460.unr-lcssa, label %.lr.ph318.us.new, !llvm.loop !148

.lr.ph320.us.new:                                 ; preds = %.lr.ph320.us, %.lr.ph320.us.new
  %indvars.iv372 = phi i64 [ %indvars.iv.next373.1, %.lr.ph320.us.new ], [ 0, %.lr.ph320.us ] ; 5 uses
  %niter469 = phi i64 [ %niter469.next.1, %.lr.ph320.us.new ], [ 0, %.lr.ph320.us ]
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.pt, i64 %indvars.iv372
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.hk, align 4, !tbaa !37 ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.pw, i64 %indvars.iv372
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.sroa.013.0.copyload.us = load <2 x float>, ptr %i.hm, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us = extractelement <2 x float> %.sroa.014.0.copyload.us, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <2 x float> %.sroa.013.0.copyload.us, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us = extractelement <2 x float> %.sroa.014.0.copyload.us, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.us = extractelement <2 x float> %.sroa.013.0.copyload.us, i64 1 ; 2 uses
  %i.hn = fneg float %.sroa.0.4.vec.extract.i.us
  %i.ho = fmul float %.sroa.05.4.vec.extract.i.us, %i.hn
  %i.hp = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us, float %.sroa.0.0.vec.extract.i.us, float %i.ho)
  %.sroa.010.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hq = fmul float %.sroa.05.4.vec.extract.i.us, %.sroa.0.0.vec.extract.i.us
  %i.hr = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us, float %.sroa.0.4.vec.extract.i.us, float %i.hq)
  %.sroa.010.4.vec.insert.i.us = insertelement <2 x float> %.sroa.010.0.vec.insert.i.us, float %i.hr, i64 1
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv372
  store <2 x float> %.sroa.010.4.vec.insert.i.us, ptr %i.hs, align 4, !tbaa !37
  %indvars.iv.next373 = or disjoint i64 %indvars.iv372, 1 ; 3 uses
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.pt, i64 %indvars.iv.next373
  %.sroa.014.0.copyload.us.1 = load <2 x float>, ptr %i.ht, align 4, !tbaa !37 ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.pw, i64 %indvars.iv.next373
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.sroa.013.0.copyload.us.1 = load <2 x float>, ptr %i.hv, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us.1 = extractelement <2 x float> %.sroa.014.0.copyload.us.1, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us.1 = extractelement <2 x float> %.sroa.013.0.copyload.us.1, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us.1 = extractelement <2 x float> %.sroa.014.0.copyload.us.1, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.us.1 = extractelement <2 x float> %.sroa.013.0.copyload.us.1, i64 1 ; 2 uses
  %i.hw = fneg float %.sroa.0.4.vec.extract.i.us.1
  %i.hx = fmul float %.sroa.05.4.vec.extract.i.us.1, %i.hw
  %i.hy = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.1, float %.sroa.0.0.vec.extract.i.us.1, float %i.hx)
  %.sroa.010.0.vec.insert.i.us.1 = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.hz = fmul float %.sroa.05.4.vec.extract.i.us.1, %.sroa.0.0.vec.extract.i.us.1
  %i.ia = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.1, float %.sroa.0.4.vec.extract.i.us.1, float %i.hz)
  %.sroa.010.4.vec.insert.i.us.1 = insertelement <2 x float> %.sroa.010.0.vec.insert.i.us.1, float %i.ia, i64 1
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next373
  store <2 x float> %.sroa.010.4.vec.insert.i.us.1, ptr %i.ib, align 4, !tbaa !37
  %indvars.iv.next373.1 = add nuw nsw i64 %indvars.iv372, 2 ; 2 uses
  %niter469.next.1 = add i64 %niter469, 2         ; 2 uses
  %niter469.ncmp.1 = icmp eq i64 %niter469.next.1, %unroll_iter468
  br i1 %niter469.ncmp.1, label %.loopexit311.us.loopexit.unr-lcssa, label %.lr.ph320.us.new, !llvm.loop !149

.loopexit311.us.loopexit.unr-lcssa:               ; preds = %.lr.ph320.us.new
  br i1 %lcmp.mod466.not, label %.loopexit311.us, label %.epil.preheader464

.epil.preheader464:                               ; preds = %.loopexit311.us.loopexit.unr-lcssa, %.lr.ph320.us
  %indvars.iv372.epil.init = phi i64 [ 0, %.lr.ph320.us ], [ %indvars.iv.next373.1, %.loopexit311.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod467)
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.pt, i64 %indvars.iv372.epil.init
  %.sroa.014.0.copyload.us.epil = load <2 x float>, ptr %i.ic, align 4, !tbaa !37 ; 2 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.pw, i64 %indvars.iv372.epil.init
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.sroa.013.0.copyload.us.epil = load <2 x float>, ptr %i.ie, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.014.0.copyload.us.epil, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.013.0.copyload.us.epil, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.014.0.copyload.us.epil, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.013.0.copyload.us.epil, i64 1 ; 2 uses
  %i.if = fneg float %.sroa.0.4.vec.extract.i.us.epil
  %i.ig = fmul float %.sroa.05.4.vec.extract.i.us.epil, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.epil, float %.sroa.0.0.vec.extract.i.us.epil, float %i.ig)
  %.sroa.010.0.vec.insert.i.us.epil = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ii = fmul float %.sroa.05.4.vec.extract.i.us.epil, %.sroa.0.0.vec.extract.i.us.epil
  %i.ij = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i.us.epil, float %.sroa.0.4.vec.extract.i.us.epil, float %i.ii)
end_hunk_0
