Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/ewald?download=true
inline.NumInlined: 216
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z8do_ewaldbff26FreeEnergyPerturbationTypeN3gmx8ArrayRefIKNS0_11BasicVectorIfEEEENS1_IS3_EENS1_IKfEES8_PA3_S7_PK12gmx_domdec_tiPA3_fffPfP15gmx_ewald_tab_t:bb.a

_ZSt8_DestroyIP9t_complexS0_EvT_S2_RSaIT0_E.exit.i.i240: ; preds = %bb.k
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !39
  br label %_ZNSt6vectorI9t_complexSaIS0_EE6resizeEm.exit241

_ZNSt6vectorI9t_complexSaIS0_EE6resizeEm.exit241: ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIP9t_complexS0_EvT_S2_RSaIT0_E.exit.i.i240
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
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  br i1 %i.fh, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.us, label %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.preheader

_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.preheader: ; preds = %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit
  %i.fn = shl nuw nsw i32 %i.fe, 2
  %i.fo = zext nneg i32 %i.fn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, i8 0, i64 %i.fo, i1 false), !tbaa !37
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
  %i.fs = mul nuw nsw i64 %wide.trip.count, 12
  %scevgep = getelementptr i8, ptr %6, i64 %i.fs
  %i.ft = shl nuw nsw i64 %wide.trip.count, 3
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
  %.0226342.us = phi i32 [ %.0222352.us, %.lr.ph346.us ], [ %i.pg, %bb.q ] ; 5 uses
  %i.gp = sitofp i32 %.0226342.us to float
  %i.gq = fmul float %i.bn, %i.gp                 ; 6 uses
  %i.gr = icmp sgt i32 %.0226342.us, -1
  br i1 %i.gr, label %.preheader310.us, label %.preheader312.us

.lr.ph318.us.new:                                 ; preds = %.lr.ph318.us, %.lr.ph318.us.new
  %indvars.iv369 = phi i64 [ %indvars.iv.next370.1, %.lr.ph318.us.new ], [ 0, %.lr.ph318.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph318.us.new ], [ 0, %.lr.ph318.us ]
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %indvars.iv369
  %.sroa.011.0.copyload.us = load <2 x float>, ptr %i.gs, align 4, !tbaa !37 ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.pl, i64 %indvars.iv369
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
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv369
  store <2 x float> %.sroa.010.4.vec.insert.i248.us, ptr %i.ha, align 4, !tbaa !37
  %indvars.iv.next370 = or disjoint i64 %indvars.iv369, 1 ; 3 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %indvars.iv.next370
  %.sroa.011.0.copyload.us.1 = load <2 x float>, ptr %i.hb, align 4, !tbaa !37 ; 2 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.pl, i64 %indvars.iv.next370
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
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv.next370
  store <2 x float> %.sroa.010.4.vec.insert.i248.us.1, ptr %i.hj, align 4, !tbaa !37
  %indvars.iv.next370.1 = add nuw nsw i64 %indvars.iv369, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit311.us.loopexit460.unr-lcssa, label %.lr.ph318.us.new, !llvm.loop !148

.lr.ph320.us.new:                                 ; preds = %.lr.ph320.us, %.lr.ph320.us.new
  %indvars.iv372 = phi i64 [ %indvars.iv.next373.1, %.lr.ph320.us.new ], [ 0, %.lr.ph320.us ] ; 5 uses
  %niter469 = phi i64 [ %niter469.next.1, %.lr.ph320.us.new ], [ 0, %.lr.ph320.us ]
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %indvars.iv372
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.hk, align 4, !tbaa !37 ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.pq, i64 %indvars.iv372
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
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv372
  store <2 x float> %.sroa.010.4.vec.insert.i.us, ptr %i.hs, align 4, !tbaa !37
  %indvars.iv.next373 = or disjoint i64 %indvars.iv372, 1 ; 3 uses
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %indvars.iv.next373
  %.sroa.014.0.copyload.us.1 = load <2 x float>, ptr %i.ht, align 4, !tbaa !37 ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.pq, i64 %indvars.iv.next373
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
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %indvars.iv.next373
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
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %indvars.iv372.epil.init
  %.sroa.014.0.copyload.us.epil = load <2 x float>, ptr %i.ic, align 4, !tbaa !37 ; 2 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.pq, i64 %indvars.iv372.epil.init
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.sroa.013.0.copyload.us.epil = load <2 x float>, ptr %i.ie, align 4, !tbaa !37 ; 2 uses
  %.sroa.05.0.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.014.0.copyload.us.epil, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.013.0.copyload.us.epil, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i.us.epil = extractelement <2 x float> %.sroa.014.0.copyload.us.epil, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z8do_ewaldbff26FreeEnergyPerturbationTypeN3gmx8ArrayRefIKNS0_11BasicVectorIfEEEENS1_IS3_EENS1_IKfEES8_PA3_S7_PK12gmx_domdec_tiPA3_fffPfP15gmx_ewald_tab_t:bb.a
  %.sroa.010.4.vec.insert.i248.us.epil = insertelement <2 x float> %.sroa.010.0.vec.insert.i247.us.epil, float %i.is, i64 1
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv369.epil.init
  store <2 x float> %.sroa.010.4.vec.insert.i248.us.epil, ptr %i.it, align 4, !tbaa !37
  br label %.loopexit311.us

.loopexit311.us:                                  ; preds = %.epil.preheader, %.loopexit311.us.loopexit460.unr-lcssa, %.epil.preheader464, %.loopexit311.us.loopexit.unr-lcssa, %.preheader312.us, %.preheader310.us
  %i.iu = icmp slt i32 %.1224344.us, %i.tb
  br i1 %i.iu, label %.lr.ph339.us, label %bb.q

bb.o:                                             ; preds = %.lr.ph339.us, %._crit_edge335.us
  %i.iv = phi float [ %.promoted.us, %.lr.ph339.us ], [ %i.nd, %._crit_edge335.us ]
  %.0227336.us = phi i32 [ %.1224344.us, %.lr.ph339.us ], [ %i.pf, %._crit_edge335.us ] ; 5 uses
  %i.iw = sitofp i32 %.0227336.us to float
  %i.ix = fmul float %i.bq, %i.iw                 ; 10 uses
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ix, float %i.sx) ; 3 uses
  %i.iz = fmul float %i.d, %i.iy
  %i.ja = tail call noundef float @expf(float noundef %i.iz) #20
  %i.jb = fdiv float %i.ja, %i.iy                 ; 3 uses
  %i.jc = fpext float %i.jb to double
  %i.jd = fmul double %i.jc, 2.000000e+00
  %i.je = fpext float %i.iy to double
  %i.jf = fdiv double 1.000000e+00, %i.je
  %i.jg = fsub double %i.jf, %i.fj
  %i.jh = fmul double %i.jg, %i.jd
  %i.ji = fptrunc double %i.jh to float
  %i.jj = icmp sgt i32 %.0227336.us, -1
  br i1 %i.jj, label %.preheader.us, label %.preheader308.us

.lr.ph322.us.new:                                 ; preds = %.lr.ph322.us, %.lr.ph322.us.new
  %indvars.iv377 = phi i64 [ %indvars.iv.next378.1, %.lr.ph322.us.new ], [ 0, %.lr.ph322.us ] ; 6 uses
  %niter475 = phi i64 [ %niter475.next.1, %.lr.ph322.us.new ], [ 0, %.lr.ph322.us ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv377
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !37 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv377
  %.sroa.02.0.copyload.us = load <2 x float>, ptr %i.jm, align 4, !tbaa !37 ; 2 uses
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.pw, i64 %indvars.iv377
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %.sroa.0.0.copyload.us = load <2 x float>, ptr %i.jo, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.4.vec.extract.i257.us = extractelement <2 x float> %.sroa.0.0.copyload.us, i64 1 ; 2 uses
  %i.jp = fneg float %.sroa.0.4.vec.extract.i257.us
  %.sroa.05.0.vec.extract.i259.us = extractelement <2 x float> %.sroa.02.0.copyload.us, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i260.us = extractelement <2 x float> %.sroa.0.0.copyload.us, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i261.us = extractelement <2 x float> %.sroa.02.0.copyload.us, i64 1 ; 2 uses
  %i.jq = fmul float %.sroa.05.4.vec.extract.i261.us, %.sroa.0.4.vec.extract.i257.us
  %i.jr = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i259.us, float %.sroa.0.0.vec.extract.i260.us, float %i.jq)
  %i.js = fmul float %.sroa.05.4.vec.extract.i261.us, %.sroa.0.0.vec.extract.i260.us
  %i.jt = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i259.us, float %i.jp, float %i.js)
  %i.ju = fmul float %i.jl, %i.jr
  %.sroa.02.0.vec.insert.i266.us = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.jv = fmul float %i.jl, %i.jt
  %.sroa.02.4.vec.insert.i268.us = insertelement <2 x float> %.sroa.02.0.vec.insert.i266.us, float %i.jv, i64 1
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv377
  store <2 x float> %.sroa.02.4.vec.insert.i268.us, ptr %i.jw, align 4, !tbaa !37
  %indvars.iv.next378 = or disjoint i64 %indvars.iv377, 1 ; 4 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next378
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !37 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next378
  %.sroa.02.0.copyload.us.1 = load <2 x float>, ptr %i.jz, align 4, !tbaa !37 ; 2 uses
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.pw, i64 %indvars.iv.next378
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %.sroa.0.0.copyload.us.1 = load <2 x float>, ptr %i.kb, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.4.vec.extract.i257.us.1 = extractelement <2 x float> %.sroa.0.0.copyload.us.1, i64 1 ; 2 uses
  %i.kc = fneg float %.sroa.0.4.vec.extract.i257.us.1
  %.sroa.05.0.vec.extract.i259.us.1 = extractelement <2 x float> %.sroa.02.0.copyload.us.1, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i260.us.1 = extractelement <2 x float> %.sroa.0.0.copyload.us.1, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i261.us.1 = extractelement <2 x float> %.sroa.02.0.copyload.us.1, i64 1 ; 2 uses
  %i.kd = fmul float %.sroa.05.4.vec.extract.i261.us.1, %.sroa.0.4.vec.extract.i257.us.1
  %i.ke = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i259.us.1, float %.sroa.0.0.vec.extract.i260.us.1, float %i.kd)
  %i.kf = fmul float %.sroa.05.4.vec.extract.i261.us.1, %.sroa.0.0.vec.extract.i260.us.1
  %i.kg = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i259.us.1, float %i.kc, float %i.kf)
  %i.kh = fmul float %i.jy, %i.ke
  %.sroa.02.0.vec.insert.i266.us.1 = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.ki = fmul float %i.jy, %i.kg
  %.sroa.02.4.vec.insert.i268.us.1 = insertelement <2 x float> %.sroa.02.0.vec.insert.i266.us.1, float %i.ki, i64 1
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next378
  store <2 x float> %.sroa.02.4.vec.insert.i268.us.1, ptr %i.kj, align 4, !tbaa !37
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377, 2 ; 2 uses
  %niter475.next.1 = add i64 %niter475, 2         ; 2 uses
  %niter475.ncmp.1 = icmp eq i64 %niter475.next.1, %unroll_iter474
  br i1 %niter475.ncmp.1, label %.lr.ph329.us.loopexit459.unr-lcssa, label %.lr.ph322.us.new, !llvm.loop !150

.lr.ph324.us.new:                                 ; preds = %.lr.ph324.us, %.lr.ph324.us.new
  %indvars.iv382 = phi i64 [ %indvars.iv.next383.1, %.lr.ph324.us.new ], [ 0, %.lr.ph324.us ] ; 6 uses
  %niter481 = phi i64 [ %niter481.next.1, %.lr.ph324.us.new ], [ 0, %.lr.ph324.us ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv382
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !37
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv382
  %.sroa.06.0.copyload.us = load <2 x float>, ptr %i.km, align 4, !tbaa !37 ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.qb, i64 %indvars.iv382
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.sroa.05.0.copyload.us = load <2 x float>, ptr %i.ko, align 4, !tbaa !37 ; 3 uses
  %i.kp = shufflevector <2 x float> %.sroa.06.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kq = fneg <2 x float> %.sroa.05.0.copyload.us
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> %.sroa.05.0.copyload.us, <2 x i32> <i32 1, i32 2>
  %i.ks = fmul <2 x float> %i.kp, %i.kr
  %i.kt = shufflevector <2 x float> %.sroa.06.0.copyload.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %.sroa.05.0.copyload.us, <2 x float> %i.ks)
  %i.kv = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = fmul <2 x float> %i.kw, %i.ku
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv382
  store <2 x float> %i.kx, ptr %i.ky, align 4, !tbaa !37
  %indvars.iv.next383 = or disjoint i64 %indvars.iv382, 1 ; 4 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next383
  %i.la = load float, ptr %i.kz, align 4, !tbaa !37
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv.next383
  %.sroa.06.0.copyload.us.1 = load <2 x float>, ptr %i.lb, align 4, !tbaa !37 ; 2 uses
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.qb, i64 %indvars.iv.next383
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %.sroa.05.0.copyload.us.1 = load <2 x float>, ptr %i.ld, align 4, !tbaa !37 ; 3 uses
  %i.le = shufflevector <2 x float> %.sroa.06.0.copyload.us.1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lf = fneg <2 x float> %.sroa.05.0.copyload.us.1
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> %.sroa.05.0.copyload.us.1, <2 x i32> <i32 1, i32 2>
  %i.lh = fmul <2 x float> %i.le, %i.lg
  %i.li = shufflevector <2 x float> %.sroa.06.0.copyload.us.1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %.sroa.05.0.copyload.us.1, <2 x float> %i.lh)
  %i.lk = insertelement <2 x float> poison, float %i.la, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x float> %i.ll, %i.lj
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.next383
  store <2 x float> %i.lm, ptr %i.ln, align 4, !tbaa !37
  %indvars.iv.next383.1 = add nuw nsw i64 %indvars.iv382, 2 ; 2 uses
  %niter481.next.1 = add i64 %niter481, 2         ; 2 uses
  %niter481.ncmp.1 = icmp eq i64 %niter481.next.1, %unroll_iter480
  br i1 %niter481.ncmp.1, label %.lr.ph329.us.loopexit.unr-lcssa, label %.lr.ph324.us.new, !llvm.loop !151

.lr.ph329.us.new:                                 ; preds = %.lr.ph329.us, %.lr.ph329.us.new
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.7, %.lr.ph329.us.new ], [ 0, %.lr.ph329.us ] ; 9 uses
  %i.lo = phi <2 x float> [ %i.mt, %.lr.ph329.us.new ], [ zeroinitializer, %.lr.ph329.us ]
  %niter488 = phi i64 [ %niter488.next.7, %.lr.ph329.us.new ], [ 0, %.lr.ph329.us ]
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.lq = load <2 x float>, ptr %i.lp, align 4, !tbaa !37
  %i.lr = fadd <2 x float> %i.lo, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load <2 x float>, ptr %i.lt, align 4, !tbaa !37
  %i.lv = fadd <2 x float> %i.lr, %i.lu
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load <2 x float>, ptr %i.lx, align 4, !tbaa !37
  %i.lz = fadd <2 x float> %i.lv, %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load <2 x float>, ptr %i.mb, align 4, !tbaa !37
  %i.md = fadd <2 x float> %i.lz, %i.mc
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mg = load <2 x float>, ptr %i.mf, align 4, !tbaa !37
  %i.mh = fadd <2 x float> %i.md, %i.mg
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mk = load <2 x float>, ptr %i.mj, align 4, !tbaa !37
  %i.ml = fadd <2 x float> %i.mh, %i.mk
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %i.mo = load <2 x float>, ptr %i.mn, align 4, !tbaa !37
  %i.mp = fadd <2 x float> %i.ml, %i.mo
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 56
  %i.ms = load <2 x float>, ptr %i.mr, align 4, !tbaa !37
  %i.mt = fadd <2 x float> %i.mp, %i.ms           ; 3 uses
  %indvars.iv.next388.7 = add nuw nsw i64 %indvars.iv387, 8 ; 2 uses
  %niter488.next.7 = add i64 %niter488, 8         ; 2 uses
  %niter488.ncmp.7 = icmp eq i64 %niter488.next.7, %unroll_iter487
  br i1 %niter488.ncmp.7, label %._crit_edge330.us.loopexit.unr-lcssa, label %.lr.ph329.us.new, !llvm.loop !152

._crit_edge330.us.loopexit.unr-lcssa:             ; preds = %.lr.ph329.us.new
  br i1 %lcmp.mod484.not, label %._crit_edge330.us, label %.epil.preheader482

.epil.preheader482:                               ; preds = %._crit_edge330.us.loopexit.unr-lcssa, %.lr.ph329.us
  %indvars.iv387.epil.init = phi i64 [ 0, %.lr.ph329.us ], [ %indvars.iv.next388.7, %._crit_edge330.us.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph329.us ], [ %i.mt, %._crit_edge330.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader482
  %indvars.iv387.epil = phi i64 [ %indvars.iv387.epil.init, %.epil.preheader482 ], [ %indvars.iv.next388.epil, %bb.p ] ; 2 uses
  %i.mu = phi <2 x float> [ %.epil.init, %.epil.preheader482 ], [ %i.mx, %bb.p ]
  %epil.iter = phi i64 [ 0, %.epil.preheader482 ], [ %epil.iter.next, %bb.p ]
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %indvars.iv387.epil
  %i.mw = load <2 x float>, ptr %i.mv, align 4, !tbaa !37
  %i.mx = fadd <2 x float> %i.mu, %i.mw           ; 2 uses
  %indvars.iv.next388.epil = add nuw nsw i64 %indvars.iv387.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter483
  br i1 %epil.iter.cmp.not, label %._crit_edge330.us, label %bb.p, !llvm.loop !153

._crit_edge330.us:                                ; preds = %._crit_edge330.us.loopexit.unr-lcssa, %bb.p, %.preheader.us, %.preheader308.us
  %i.my = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ zeroinitializer, %.preheader308.us ], [ %i.mt, %._crit_edge330.us.loopexit.unr-lcssa ], [ %i.mx, %bb.p ] ; 4 uses
  %i.mz = extractelement <2 x float> %i.my, i64 1 ; 5 uses
  %i.na = fmul float %i.mz, %i.mz
  %i.nb = extractelement <2 x float> %i.my, i64 0 ; 5 uses
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.nb, float %i.na) ; 2 uses
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.nc, float %i.iv) ; 3 uses
  %i.ne = fmul float %.0235.us, %i.ji
  %i.nf = fmul float %i.ne, %i.nc                 ; 3 uses
  %i.ng = fmul float %i.nf, %i.tc                 ; 2 uses
  %i.nh = load <2 x float>, ptr %13, align 4, !tbaa !37
  %i.ni = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.sz, <2 x float> %i.nh)
  store <2 x float> %i.nk, ptr %13, align 4, !tbaa !37
  %i.nl = load float, ptr %i.fk, align 4, !tbaa !37
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.ix, float %i.nl)
  store float %i.nm, ptr %i.fk, align 4, !tbaa !37
  %20 = load float, ptr %i.fl, align 4, !tbaa !37
  %21 = fmul float %i.nf, %i.sy                   ; 2 uses
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %i.gq, float %20)
  store float %22, ptr %i.fl, align 4, !tbaa !37
  %23 = load float, ptr %19, align 4, !tbaa !37
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %i.ix, float %23)
  store float %24, ptr %19, align 4, !tbaa !37
  %i.nn = load float, ptr %i.fm, align 4, !tbaa !37
  %i.no = fneg float %i.ix
  %i.np = fmul float %i.nf, %i.no
  %i.nq = tail call float @llvm.fmuladd.f32(float %i.np, float %i.ix, float %i.nn)
  store float %i.nq, ptr %i.fm, align 4, !tbaa !37
  br i1 %i.bt, label %.lr.ph334.us, label %._crit_edge335.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv392 = phi i64 [ %indvars.iv.next393.1, %scalar.ph ], [ %indvars.iv392.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv392 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !264
  %i.nu = load float, ptr %i.nr, align 4, !tbaa !263
  %i.nv = fneg float %i.nu
  %i.nw = fmul float %i.mz, %i.nv
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.nt, float %i.nw)
  %i.ny = fmul float %i.rg, %i.nx                 ; 2 uses
  %i.nz = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv392 ; 3 uses
  %i.oa = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x float> %i.sz, %i.ob
  %i.od = fmul <2 x float> %i.oc, splat (float 2.000000e+00)
  %i.oe = load <2 x float>, ptr %i.nz, align 4, !tbaa !37
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> %i.ge, <2 x float> %i.oe)
  store <2 x float> %i.of, ptr %i.nz, align 4, !tbaa !37
  %i.og = fmul float %i.ix, %i.ny
  %i.oh = fmul float %i.og, 2.000000e+00
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !37
  %i.ok = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.v, float %i.oj)
  store float %i.ok, ptr %i.oi, align 4, !tbaa !37
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.next393 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = load float, ptr %i.om, align 4, !tbaa !264
  %i.oo = load float, ptr %i.ol, align 4, !tbaa !263
  %i.op = fneg float %i.oo
  %i.oq = fmul float %i.mz, %i.op
  %i.or = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.on, float %i.oq)
  %i.os = fmul float %i.rg, %i.or                 ; 2 uses
  %i.ot = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv.next393 ; 3 uses
  %i.ou = insertelement <2 x float> poison, float %i.os, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = fmul <2 x float> %i.sz, %i.ov
  %i.ox = fmul <2 x float> %i.ow, splat (float 2.000000e+00)
  %i.oy = load <2 x float>, ptr %i.ot, align 4, !tbaa !37
  %i.oz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ox, <2 x float> %i.gg, <2 x float> %i.oy)
  store <2 x float> %i.oz, ptr %i.ot, align 4, !tbaa !37
  %i.pa = fmul float %i.ix, %i.os
  %i.pb = fmul float %i.pa, 2.000000e+00
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !37
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.v, float %i.pd)
  store float %i.pe, ptr %i.pc, align 4, !tbaa !37
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %exitcond396.not.1 = icmp eq i64 %indvars.iv.next393.1, %wide.trip.count395
  br i1 %exitcond396.not.1, label %._crit_edge335.us, label %scalar.ph, !llvm.loop !154

._crit_edge335.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge330.us
  %i.pf = add nsw i32 %.0227336.us, 1             ; 2 uses
  %exitcond397.not = icmp eq i32 %i.pf, %i.tb
  br i1 %exitcond397.not, label %._crit_edge340.us, label %bb.o, !llvm.loop !155

bb.q:                                             ; preds = %._crit_edge340.us, %.loopexit311.us
  %.promoted.us415 = phi float [ %i.nd, %._crit_edge340.us ], [ %.promoted.us, %.loopexit311.us ] ; 2 uses
  %.2.lcssa.us = phi i32 [ %i.td, %._crit_edge340.us ], [ %.1224344.us, %.loopexit311.us ] ; 2 uses
  %i.pg = add nsw i32 %.0226342.us, 1             ; 2 uses
  %exitcond398.not = icmp eq i32 %i.pg, %i.fq
  br i1 %exitcond398.not, label %._crit_edge347.us, label %bb.n, !llvm.loop !156

._crit_edge347.us:                                ; preds = %bb.q, %bb.m
  %.promoted.us413 = phi float [ %.promoted.us412, %bb.m ], [ %.promoted.us415, %bb.q ]
  %.1224.lcssa.us = phi i32 [ %.0223351.us, %bb.m ], [ %.2.lcssa.us, %bb.q ]
  %.1.lcssa.us = phi i32 [ %.0222352.us, %bb.m ], [ %i.fr, %bb.q ]
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count402
  br i1 %exitcond403.not, label %._crit_edge355.us, label %bb.m, !llvm.loop !157

.preheader.us:                                    ; preds = %bb.o
  br i1 %i.bt, label %.lr.ph324.us, label %._crit_edge330.us

.preheader308.us:                                 ; preds = %bb.o
  br i1 %i.bt, label %.lr.ph322.us, label %._crit_edge330.us

.preheader310.us:                                 ; preds = %bb.n
  br i1 %i.bt, label %.lr.ph320.us, label %.loopexit311.us

.preheader312.us:                                 ; preds = %bb.n
  br i1 %i.bt, label %.lr.ph318.us, label %.loopexit311.us

.lr.ph318.us:                                     ; preds = %.preheader312.us
  %i.ph = load ptr, ptr %i.ta, align 8, !tbaa !261 ; 3 uses
  %i.pi = sub nsw i32 0, %.0226342.us
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.pj
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !261 ; 3 uses
  %i.pm = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 3 uses
  br i1 %i.fv, label %.epil.preheader, label %.lr.ph318.us.new

.lr.ph320.us:                                     ; preds = %.preheader310.us
  %i.pn = load ptr, ptr %i.ta, align 8, !tbaa !261 ; 3 uses
  %i.po = zext nneg i32 %.0226342.us to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !261 ; 3 uses
  %i.pr = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 3 uses
  br i1 %i.fw, label %.epil.preheader464, label %.lr.ph320.us.new

.lr.ph322.us:                                     ; preds = %.preheader308.us
  %i.ps = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 3 uses
  %i.pt = sub nsw i32 0, %.0227336.us
  %i.pu = zext nneg i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.pu
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !261 ; 3 uses
  %i.px = load ptr, ptr %i.au, align 8, !tbaa !26 ; 3 uses
  br i1 %i.fx, label %.epil.preheader470, label %.lr.ph322.us.new

.lr.ph324.us:                                     ; preds = %.preheader.us
  %i.py = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 3 uses
  %i.pz = zext nneg i32 %.0227336.us to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.pz
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !261 ; 3 uses
  %i.qc = load ptr, ptr %i.au, align 8, !tbaa !26 ; 3 uses
  br i1 %i.fy, label %.epil.preheader476, label %.lr.ph324.us.new

.lr.ph329.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph324.us.new
  br i1 %lcmp.mod478.not, label %.lr.ph329.us, label %.epil.preheader476

.epil.preheader476:                               ; preds = %.lr.ph329.us.loopexit.unr-lcssa, %.lr.ph324.us
  %indvars.iv382.epil.init = phi i64 [ 0, %.lr.ph324.us ], [ %indvars.iv.next383.1, %.lr.ph329.us.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod479)
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv382.epil.init
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !37
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv382.epil.init
  %.sroa.06.0.copyload.us.epil = load <2 x float>, ptr %i.qf, align 4, !tbaa !37 ; 2 uses
  %i.qg = getelementptr inbounds nuw [24 x i8], ptr %i.qb, i64 %indvars.iv382.epil.init
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %.sroa.05.0.copyload.us.epil = load <2 x float>, ptr %i.qh, align 4, !tbaa !37 ; 3 uses
  %i.qi = shufflevector <2 x float> %.sroa.06.0.copyload.us.epil, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qj = fneg <2 x float> %.sroa.05.0.copyload.us.epil
  %i.qk = shufflevector <2 x float> %i.qj, <2 x float> %.sroa.05.0.copyload.us.epil, <2 x i32> <i32 1, i32 2>
  %i.ql = fmul <2 x float> %i.qi, %i.qk
  %i.qm = shufflevector <2 x float> %.sroa.06.0.copyload.us.epil, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qm, <2 x float> %.sroa.05.0.copyload.us.epil, <2 x float> %i.ql)
  %i.qo = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qq = fmul <2 x float> %i.qp, %i.qn
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv382.epil.init
  store <2 x float> %i.qq, ptr %i.qr, align 4, !tbaa !37
  br label %.lr.ph329.us

.lr.ph329.us.loopexit459.unr-lcssa:               ; preds = %.lr.ph322.us.new
  br i1 %lcmp.mod472.not, label %.lr.ph329.us, label %.epil.preheader470

.epil.preheader470:                               ; preds = %.lr.ph329.us.loopexit459.unr-lcssa, %.lr.ph322.us
  %indvars.iv377.epil.init = phi i64 [ 0, %.lr.ph322.us ], [ %indvars.iv.next378.1, %.lr.ph329.us.loopexit459.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod473)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv377.epil.init
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !37 ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv377.epil.init
  %.sroa.02.0.copyload.us.epil = load <2 x float>, ptr %i.qu, align 4, !tbaa !37 ; 2 uses
  %i.qv = getelementptr inbounds nuw [24 x i8], ptr %i.pw, i64 %indvars.iv377.epil.init
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %.sroa.0.0.copyload.us.epil = load <2 x float>, ptr %i.qw, align 4, !tbaa !37 ; 2 uses
  %.sroa.0.4.vec.extract.i257.us.epil = extractelement <2 x float> %.sroa.0.0.copyload.us.epil, i64 1 ; 2 uses
  %i.qx = fneg float %.sroa.0.4.vec.extract.i257.us.epil
  %.sroa.05.0.vec.extract.i259.us.epil = extractelement <2 x float> %.sroa.02.0.copyload.us.epil, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i260.us.epil = extractelement <2 x float> %.sroa.0.0.copyload.us.epil, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i261.us.epil = extractelement <2 x float> %.sroa.02.0.copyload.us.epil, i64 1 ; 2 uses
  %i.qy = fmul float %.sroa.05.4.vec.extract.i261.us.epil, %.sroa.0.4.vec.extract.i257.us.epil
  %i.qz = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i259.us.epil, float %.sroa.0.0.vec.extract.i260.us.epil, float %i.qy)
  %i.ra = fmul float %.sroa.05.4.vec.extract.i261.us.epil, %.sroa.0.0.vec.extract.i260.us.epil
  %i.rb = tail call float @llvm.fmuladd.f32(float %.sroa.05.0.vec.extract.i259.us.epil, float %i.qx, float %i.ra)
  %i.rc = fmul float %i.qt, %i.qz
  %.sroa.02.0.vec.insert.i266.us.epil = insertelement <2 x float> poison, float %i.rc, i64 0
  %i.rd = fmul float %i.qt, %i.rb
  %.sroa.02.4.vec.insert.i268.us.epil = insertelement <2 x float> %.sroa.02.0.vec.insert.i266.us.epil, float %i.rd, i64 1
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv377.epil.init
  store <2 x float> %.sroa.02.4.vec.insert.i268.us.epil, ptr %i.re, align 4, !tbaa !37
  br label %.lr.ph329.us

.lr.ph329.us:                                     ; preds = %.epil.preheader470, %.lr.ph329.us.loopexit459.unr-lcssa, %.epil.preheader476, %.lr.ph329.us.loopexit.unr-lcssa
  %i.rf = load ptr, ptr %i.au, align 8, !tbaa !26 ; 9 uses
  br i1 %i.fz, label %.epil.preheader482, label %.lr.ph329.us.new

.lr.ph334.us:                                     ; preds = %._crit_edge330.us
  %i.rg = fmul float %.0235.us, %i.jb             ; 4 uses
  %i.rh = load ptr, ptr %i.au, align 8, !tbaa !26 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph334.us
  %scevgep441 = getelementptr i8, ptr %i.rh, i64 %i.ft
  %bound0 = icmp ult ptr %6, %scevgep441
  %bound1 = icmp ult ptr %i.rh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.rg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat443 = shufflevector <2 x float> %i.my, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat445 = shufflevector <2 x float> %i.my, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert452 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat453 = shufflevector <8 x float> %broadcast.splatinsert452, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %index
  %wide.vec = load <16 x float>, ptr %i.ri, align 4, !tbaa !37, !alias.scope !266 ; 2 uses
  %strided.vec454 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.rj = fneg <16 x float> %wide.vec
  %i.rk = shufflevector <16 x float> %i.rj, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.rl = fmul <8 x float> %broadcast.splat443, %i.rk
  %i.rm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat445, <8 x float> %strided.vec454, <8 x float> %i.rl)
  %i.rn = fmul <8 x float> %broadcast.splat, %i.rm ; 3 uses
  %i.ro = fmul <8 x float> %broadcast.splat447, %i.rn
  %i.rp = fmul <8 x float> %i.ro, splat (float 2.000000e+00)
  %i.rq = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %index ; 2 uses
  %wide.vec455 = load <24 x float>, ptr %i.rq, align 4, !tbaa !37, !alias.scope !267, !noalias !266 ; 3 uses
  %strided.vec456 = shufflevector <24 x float> %wide.vec455, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec457 = shufflevector <24 x float> %wide.vec455, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec458 = shufflevector <24 x float> %wide.vec455, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.rr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rp, <8 x float> %broadcast.splat449, <8 x float> %strided.vec456)
  %i.rs = fmul <8 x float> %broadcast.splat451, %i.rn
  %i.rt = fmul <8 x float> %i.rs, splat (float 2.000000e+00)
  %i.ru = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rt, <8 x float> %broadcast.splat449, <8 x float> %strided.vec457)
  %i.rv = fmul <8 x float> %broadcast.splat453, %i.rn
  %i.rw = fmul <8 x float> %i.rv, splat (float 2.000000e+00)
  %i.rx = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rw, <8 x float> %broadcast.splat449, <8 x float> %strided.vec458)
  %i.ry = shufflevector <8 x float> %i.rr, <8 x float> %i.ru, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rz = shufflevector <8 x float> %i.rx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.ry, <16 x float> %i.rz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.rq, align 4, !tbaa !37, !alias.scope !267, !noalias !266
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sa = icmp eq i64 %index.next, %n.vec
  br i1 %i.sa, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge335.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph334.us, %middle.block
  %indvars.iv392.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph334.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod490.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv392.ph ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !264
  %i.se = load float, ptr %i.sb, align 4, !tbaa !263
  %i.sf = fneg float %i.se
  %i.sg = fmul float %i.mz, %i.sf
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.sd, float %i.sg)
  %i.si = fmul float %i.rg, %i.sh                 ; 2 uses
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv392.ph ; 3 uses
  %i.sk = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sm = fmul <2 x float> %i.sz, %i.sl
  %i.sn = fmul <2 x float> %i.sm, splat (float 2.000000e+00)
  %i.so = load <2 x float>, ptr %i.sj, align 4, !tbaa !37
  %i.sp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sn, <2 x float> %i.gb, <2 x float> %i.so)
  store <2 x float> %i.sp, ptr %i.sj, align 4, !tbaa !37
  %i.sq = fmul float %i.ix, %i.si
  %i.sr = fmul float %i.sq, 2.000000e+00
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  %i.st = load float, ptr %i.ss, align 4, !tbaa !37
  %i.su = tail call float @llvm.fmuladd.f32(float %i.sr, float %i.v, float %i.st)
  store float %i.su, ptr %i.ss, align 4, !tbaa !37
  %indvars.iv.next393.prol = or disjoint i64 %indvars.iv392.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv392.unr = phi i64 [ %indvars.iv392.ph, %scalar.ph.preheader ], [ %indvars.iv.next393.prol, %scalar.ph.prol ]
  %i.sv = icmp eq i64 %indvars.iv392.ph, %i.gc
  br i1 %i.sv, label %._crit_edge335.us, label %scalar.ph

.lr.ph339.us:                                     ; preds = %.loopexit311.us
  %i.sw = fmul float %i.gq, %i.gq
  %i.sx = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gn, float %i.sw)
  %i.sy = fneg float %i.gq
  %i.sz = insertelement <2 x float> %i.te, float %i.gq, i64 1 ; 4 uses
  %broadcast.splatinsert450 = insertelement <8 x float> poison, float %i.gq, i64 0
  %broadcast.splat451 = shufflevector <8 x float> %broadcast.splatinsert450, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.o

._crit_edge340.us:                                ; preds = %._crit_edge335.us
  store float %i.nd, ptr %i.gj, align 4, !tbaa !37
  br label %bb.q

.lr.ph346.us:                                     ; preds = %bb.m
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv399 ; 2 uses
  %i.tb = load i32, ptr %i.fi, align 8, !tbaa !24 ; 3 uses
  %i.tc = fneg float %i.gn
  %i.td = sub nsw i32 1, %i.tb
  %i.te = insertelement <2 x float> poison, float %i.gn, i64 0
  %broadcast.splatinsert446 = insertelement <8 x float> poison, float %i.gn, i64 0
  %broadcast.splat447 = shufflevector <8 x float> %broadcast.splatinsert446, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.n

._crit_edge355.us:                                ; preds = %._crit_edge347.us
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next405, %wide.trip.count407
  br i1 %exitcond408.not, label %.split.us, label %.lr.ph354.us, !llvm.loop !162

.split.us:                                        ; preds = %._crit_edge355.us, %_ZL24tabulateStructureFactorsiN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEiPPSt5arrayI9t_complexLm3EEPKf.exit.split.preheader
  br i1 %.not238, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.split.us
  %i.tf = load float, ptr %i.a, align 4, !tbaa !37
  br label %bb.t

bb.s:                                             ; preds = %.split.us
  %i.tg = fpext float %15 to double
  %i.th = fsub double 1.000000e+00, %i.tg
  %i.ti = load float, ptr %i.a, align 4, !tbaa !37 ; 2 uses
  %i.tj = fpext float %i.ti to double
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !37 ; 2 uses
  %i.tm = fmul float %15, %i.tl
  %i.tn = fpext float %i.tm to double
  %i.to = tail call double @llvm.fmuladd.f64(double %i.th, double %i.tj, double %i.tn)
  %i.tp = fptrunc double %i.to to float
  %i.tq = fsub float %i.tl, %i.ti
  %i.tr = load float, ptr %16, align 4, !tbaa !37
  %i.ts = tail call float @llvm.fmuladd.f32(float %i.v, float %i.tq, float %i.tr)
  store float %i.ts, ptr %16, align 4, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi float [ %i.tp, %bb.s ], [ %i.tf, %bb.r ] ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.tu = fpext float %i.v to double
  %i.tv = fmul double %i.tu, -5.000000e-01        ; 3 uses
  %i.tw = load float, ptr %13, align 4, !tbaa !37
  %i.tx = fadd float %.0, %i.tw
  %i.ty = load float, ptr %i.fl, align 4, !tbaa !37
  %i.tz = fadd float %.0, %i.ty
  %i.ua = load float, ptr %19, align 4, !tbaa !37
  %i.ub = load float, ptr %i.fm, align 4, !tbaa !37
  %i.uc = fadd float %.0, %i.ub
  %i.ud = fpext float %i.uc to double
  %i.ue = fmul double %i.tv, %i.ud
  %i.uf = fptrunc double %i.ue to float
  store float %i.uf, ptr %i.fm, align 4, !tbaa !37
  %i.ug = load <2 x float>, ptr %i.tt, align 4, !tbaa !37
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ui = insertelement <4 x float> %i.uh, float %i.tx, i64 0
  %i.uj = insertelement <4 x float> %i.ui, float %i.tz, i64 3
  %i.uk = fpext <4 x float> %i.uj to <4 x double>
  %i.ul = insertelement <4 x double> poison, double %i.tv, i64 0
  %i.um = shufflevector <4 x double> %i.ul, <4 x double> poison, <4 x i32> zeroinitializer
  %i.un = fmul <4 x double> %i.um, %i.uk
  %i.uo = fptrunc <4 x double> %i.un to <4 x float>
  %i.up = fpext float %i.ua to double
  %i.uq = fmul double %i.tv, %i.up
  %i.ur = fptrunc double %i.uq to float
  %i.us = shufflevector <4 x float> %i.uo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ut = insertelement <8 x float> %i.us, float %i.ur, i64 4
  %i.uu = shufflevector <8 x float> %i.ut, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 3, i32 4, i32 2, i32 4>
  store <8 x float> %i.uu, ptr %13, align 4, !tbaa !37
  %i.uv = fmul float %.0, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret float %i.uv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(60) %1, i8 noundef zeroext %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %1) #20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.b, ptr %i.a, align 8, !tbaa !269
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !45
  %i.f = load i64, ptr %i.a, align 8, !tbaa !269
  store i64 %i.f, ptr %i.c, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.h, ptr %i.g, align 1, !tbaa !46
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !269  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !270
  %i.k = load ptr, ptr %0, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !46
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI9t_complexSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

end_hunk_1
