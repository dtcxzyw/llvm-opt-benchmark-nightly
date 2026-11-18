Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hinge?download=true
inline.NumInlined: 1043
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E_clINS_6common7Range1dEEEDaSP_:bb.a
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !75  ; 3 uses
  %i.af = load i64, ptr %i.q, align 8, !tbaa !34  ; 4 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !72  ; 3 uses
  %i.ai = add i64 %i.f, -1                        ; 2 uses
  %i.aj = shl i64 %i.c, 2
  %i.ak = add i64 %i.aj, -4                       ; 2 uses
  %i.al = mul i64 %i.ac, %i.ak
  %i.am = shl i64 %i.f, 2                         ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.am
  %i.ao = mul i64 %i.ac, %i.a
  %i.ap = shl i64 %i.ao, 2
  %scevgep77 = getelementptr i8, ptr %i.ae, i64 %i.ap
  %i.aq = mul i64 %i.z, %i.ak
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.aq
  %scevgep78 = getelementptr i8, ptr %i.ar, i64 %i.am
  %i.as = mul i64 %i.z, %i.a
  %i.at = shl i64 %i.as, 2
  %scevgep79 = getelementptr i8, ptr %i.ab, i64 %i.at
  %scevgep80 = getelementptr i8, ptr %i.h, i64 20
  %i.au = shl i64 %i.c, 3
  %i.av = add i64 %i.au, -8
  %i.aw = mul i64 %i.af, %i.av
  %i.ax = shl i64 %i.f, 3
  %i.ay = getelementptr i8, ptr %i.ah, i64 %i.aw
  %scevgep81 = getelementptr i8, ptr %i.ay, i64 %i.ax ; 3 uses
  %i.az = mul i64 %i.af, %i.a
  %i.ba = shl i64 %i.az, 3
  %scevgep82 = getelementptr i8, ptr %i.ah, i64 %i.ba ; 3 uses
  %min.iters.check84 = icmp ult i64 %i.f, 10
  %ident.check51 = icmp ne i64 %i.ag, 1
  %ident.check52 = icmp ne i64 %i.aa, 1
  %ident.check53 = icmp ne i64 %i.ad, 1
  %mul.result55 = shl i64 %i.ai, 3
  %mul.overflow56 = icmp ugt i64 %i.ai, 2305843009213693951
  %i.bb = or i1 %ident.check51, %ident.check52
  %i.bc = or i1 %i.bb, %ident.check53
  %invariant.op = or i1 %mul.overflow56, %i.bc
  %bound086 = icmp ult ptr %scevgep82, %scevgep80
  %bound187 = icmp ult ptr %i.j, %scevgep81
  %found.conflict88 = and i1 %bound086, %bound187
  %.mask = and i64 %i.af, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.bd = or i1 %found.conflict88, %stride.check
  %bound089 = icmp ult ptr %scevgep82, %scevgep78
  %bound190 = icmp ult ptr %scevgep79, %scevgep81
  %found.conflict91 = and i1 %bound089, %bound190
  %.mask112 = and i64 %i.z, 2305843009213693952
  %stride.check92 = icmp ne i64 %.mask112, 0
  %i.be = or i1 %found.conflict91, %stride.check92
  %conflict.rdx93 = or i1 %i.bd, %i.be
  %bound094 = icmp ult ptr %scevgep82, %scevgep
  %bound195 = icmp ult ptr %scevgep77, %scevgep81
  %found.conflict96 = and i1 %bound094, %bound195
  %.mask113 = and i64 %i.ac, 2305843009213693952
  %stride.check97 = icmp ne i64 %.mask113, 0
  %i.bf = or i1 %found.conflict96, %stride.check97
  %conflict.rdx98 = or i1 %conflict.rdx93, %i.bf
  %n.vec100 = and i64 %i.f, 4611686018427387902   ; 3 uses
  %cmp.n110 = icmp eq i64 %i.f, %n.vec100
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.split.us.us, %.preheader.lr.ph.split.split.us
  %.0810.us = phi i64 [ %i.a, %.preheader.lr.ph.split.split.us ], [ %i.dc, %._crit_edge.split.us.us ] ; 4 uses
  %i.bg = mul i64 %i.z, %.0810.us
  %i.bh = getelementptr [4 x i8], ptr %i.ab, i64 %i.bg ; 2 uses
  %i.bi = mul i64 %i.ac, %.0810.us
  %i.bj = getelementptr [4 x i8], ptr %i.ae, i64 %i.bi ; 2 uses
  %i.bk = mul i64 %i.af, %.0810.us
  %i.bl = getelementptr [8 x i8], ptr %i.ah, i64 %i.bk ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %mul.result55
  %i.bn = icmp ult ptr %i.bm, %i.bl
  %.reass = or i1 %i.bn, %invariant.op
  %or.cond = select i1 %min.iters.check84, i1 true, i1 %.reass
  %brmerge = select i1 %or.cond, i1 true, i1 %conflict.rdx98
  br i1 %brmerge, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %.preheader.us
  %i.bo = load float, ptr %i.j, align 8, !tbaa !58, !alias.scope !239
  %broadcast.splatinsert101 = insertelement <2 x float> poison, float %i.bo, i64 0 ; 2 uses
  %broadcast.splat102 = shufflevector <2 x float> %broadcast.splatinsert101, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fpext <2 x float> %broadcast.splat102 to <2 x double>
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph99
  %index104 = phi i64 [ 0, %vector.ph99 ], [ %index.next108, %vector.body103 ] ; 4 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bh, i64 %index104
  %wide.load105 = load <2 x float>, ptr %i.bq, align 4, !tbaa !58, !alias.scope !240
  %i.br = getelementptr [4 x i8], ptr %i.bj, i64 %index104
  %wide.load106 = load <2 x float>, ptr %i.br, align 4, !tbaa !58, !alias.scope !241
  %i.bs = fpext <2 x float> %wide.load106 to <2 x double>
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.bu = fpext <2 x float> %wide.load105 to <2 x double>
  %i.bv = fmul <2 x double> %i.bt, %i.bu
  %i.bw = fcmp olt <2 x double> %i.bv, splat (double 1.000000e+00)
  %i.bx = fneg <2 x double> %i.bt
  %i.by = fmul <2 x double> %i.bp, %i.bx
  %i.bz = fptrunc <2 x double> %i.by to <2 x float>
  %i.ca = getelementptr [8 x i8], ptr %i.bl, i64 %index104
  %i.cb = shufflevector <2 x i1> %i.bw, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = shufflevector <2 x float> %i.bz, <2 x float> %broadcast.splatinsert101, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.cd = bitcast <4 x float> %i.cc to <4 x i32>
  %interleaved.vec107 = select <4 x i1> %i.cb, <4 x i32> %i.cd, <4 x i32> <i32 0, i32 8388608, i32 0, i32 8388608>
  store <4 x i32> %interleaved.vec107, ptr %i.ca, align 4, !tbaa !58, !alias.scope !242, !noalias !243
  %index.next108 = add nuw i64 %index104, 2       ; 2 uses
  %i.ce = icmp eq i64 %index.next108, %n.vec100
  br i1 %i.ce, label %middle.block109, label %vector.body103, !llvm.loop !227

middle.block109:                                  ; preds = %vector.body103
  br i1 %cmp.n110, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader: ; preds = %.preheader.us, %middle.block109
  %.09.us.us.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec100, %middle.block109 ]
  br label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us: ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us
  %.09.us.us = phi i64 [ %i.db, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us ], [ %.09.us.us.ph, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader ] ; 4 uses
  %i.cf = load float, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %i.cg = mul i64 %i.aa, %.09.us.us
  %i.ch = getelementptr [4 x i8], ptr %i.bh, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !58
  %i.cj = mul i64 %i.ad, %.09.us.us
  %i.ck = getelementptr [4 x i8], ptr %i.bj, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !58
  %i.cm = fpext float %i.cl to double
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.co = fpext float %i.ci to double
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = fcmp olt double %i.cp, 1.000000e+00     ; 2 uses
  %i.cr = fneg double %i.cn
  %i.cs = fpext float %i.cf to double
  %i.ct = fmul double %i.cs, %i.cr
  %i.cu = fptrunc double %i.ct to float
  %i.cv = mul i64 %i.ag, %.09.us.us
  %i.cw = getelementptr [8 x i8], ptr %i.bl, i64 %i.cv ; 2 uses
  %i.cx = bitcast float %i.cu to i32
  %i.cy = select i1 %i.cq, i32 %i.cx, i32 0
  %i.cz = bitcast float %i.cf to i32
  %i.da = select i1 %i.cq, i32 %i.cz, i32 8388608
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !58
  %.sroa_idx9.i.us.us = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.da, ptr %.sroa_idx9.i.us.us, align 4, !tbaa !58
  %i.db = add nuw i64 %.09.us.us, 1               ; 2 uses
  %exitcond18.not = icmp eq i64 %i.db, %i.f
  br i1 %exitcond18.not, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, !llvm.loop !228

._crit_edge.split.us.us:                          ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, %middle.block109
  %i.dc = add nuw i64 %.0810.us, 1                ; 2 uses
  %exitcond19.not = icmp eq i64 %i.dc, %i.c
  br i1 %exitcond19.not, label %._crit_edge12.split, label %.preheader.us, !llvm.loop !229

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge.split ] ; 3 uses
  %.0810 = phi i64 [ %i.a, %.preheader.preheader ], [ %i.fd, %._crit_edge.split ] ; 6 uses
  %exitcond16.not = icmp eq i64 %.0810, %umax
  br i1 %exitcond16.not, label %bb.b, label %.lr.ph.split.split, !prof !246

.lr.ph.split.split:                               ; preds = %.preheader
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !98  ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0810 ; 3 uses
  %i.df = load i64, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.dg = mul i64 %i.df, %.0810
  %i.dh = load i64, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !75  ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.dg ; 3 uses
  %i.dk = load i64, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.dl = mul i64 %i.dk, %.0810
  %i.dm = load i64, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !75  ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.dq = mul i64 %i.dp, %.0810
  %i.dr = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.ds = load ptr, ptr %i.s, align 8, !tbaa !72  ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.dq ; 7 uses
  br i1 %min.iters.check, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.split
  %ident.check = icmp ne i64 %i.dr, 1
  %ident.check27 = icmp ne i64 %i.dh, 1
  %ident.check28 = icmp ne i64 %i.dm, 1
  %i.du = getelementptr i8, ptr %i.dt, i64 %mul.result
  %i.dv = icmp ult ptr %i.du, %i.dt
  %i.dw = or i1 %i.dv, %mul.overflow
  %i.dx = or i1 %ident.check, %ident.check27
  %i.dy = or i1 %i.dx, %ident.check28
  %i.dz = or i1 %i.dy, %i.dw
  br i1 %i.dz, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ea = add i64 %i.a, %indvar
  %i.eb = shl i64 %i.ea, 3
  %i.ec = mul i64 %i.dp, %i.eb
  %i.ed = getelementptr i8, ptr %i.ds, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.y   ; 3 uses
  %i.ef = shl i64 %indvar, 2                      ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dd, i64 %i.x
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %bound0 = icmp ult ptr %i.dt, %i.ei
  %bound1 = icmp ult ptr %i.de, %i.ee
  %found.conflict = and i1 %bound0, %bound1
  %2 = add i64 %i.x, %i.ef                        ; 2 uses
  %i.ej = mul i64 %i.df, %2
  %i.ek = getelementptr i8, ptr %i.di, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.w
  %bound0.a = icmp ult ptr %i.dt, %i.el
  %bound1.a = icmp ult ptr %i.dj, %i.ee
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %3 = mul i64 %i.dk, %2
  %4 = getelementptr i8, ptr %i.dn, i64 %3
  %5 = getelementptr i8, ptr %4, i64 %i.w
  %bound045 = icmp ult ptr %i.dt, %5
  %bound146 = icmp ult ptr %i.do, %i.ee
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.em = load float, ptr %i.de, align 4, !tbaa !58, !alias.scope !247
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.em, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fpext <2 x float> %broadcast.splat to <2 x double>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.eo = getelementptr [4 x i8], ptr %i.dj, i64 %index
  %wide.load = load <2 x float>, ptr %i.eo, align 4, !tbaa !58, !alias.scope !248
  %i.ep = getelementptr [4 x i8], ptr %i.do, i64 %index
  %wide.load49 = load <2 x float>, ptr %i.ep, align 4, !tbaa !58, !alias.scope !249
  %i.eq = fpext <2 x float> %wide.load49 to <2 x double>
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.es = fpext <2 x float> %wide.load to <2 x double>
  %i.et = fmul <2 x double> %i.er, %i.es
  %i.eu = fcmp olt <2 x double> %i.et, splat (double 1.000000e+00)
  %i.ev = fneg <2 x double> %i.er
  %i.ew = fmul <2 x double> %i.en, %i.ev
  %i.ex = fptrunc <2 x double> %i.ew to <2 x float>
  %i.ey = getelementptr [8 x i8], ptr %i.dt, i64 %index
  %i.ez = shufflevector <2 x i1> %i.eu, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fa = shufflevector <2 x float> %i.ex, <2 x float> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.fb = bitcast <4 x float> %i.fa to <4 x i32>
  %interleaved.vec = select <4 x i1> %i.ez, <4 x i32> %i.fb, <4 x i32> <i32 0, i32 8388608, i32 0, i32 8388608>
  store <4 x i32> %interleaved.vec, ptr %i.ey, align 4, !tbaa !58, !alias.scope !250, !noalias !251
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.split, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.split ], [ %n.vec, %middle.block ]
  br label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i

._crit_edge12.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.split:                                ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, %middle.block
  %i.fd = add i64 %.0810, 1                       ; 2 uses
  %exitcond17.not = icmp eq i64 %i.fd, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond17.not, label %._crit_edge12.split, label %.preheader, !llvm.loop !229

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.09 = phi i64 [ %i.ga, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ], [ %.09.ph, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader ] ; 4 uses
  %i.fe = load float, ptr %i.de, align 4, !tbaa !58 ; 2 uses
  %i.ff = mul i64 %i.dh, %.09
  %i.fg = getelementptr [4 x i8], ptr %i.dj, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !58
  %i.fi = mul i64 %i.dm, %.09
  %i.fj = getelementptr [4 x i8], ptr %i.do, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !58
  %i.fl = fpext float %i.fk to double
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.fn = fpext float %i.fh to double
  %i.fo = fmul double %i.fm, %i.fn
  %i.fp = fcmp olt double %i.fo, 1.000000e+00     ; 2 uses
  %i.fq = fneg double %i.fm
  %i.fr = fpext float %i.fe to double
  %i.fs = fmul double %i.fr, %i.fq
  %i.ft = fptrunc double %i.fs to float
  %i.fu = mul i64 %i.dr, %.09
  %i.fv = getelementptr [8 x i8], ptr %i.dt, i64 %i.fu ; 2 uses
  %i.fw = bitcast float %i.ft to i32
  %i.fx = select i1 %i.fp, i32 %i.fw, i32 0
  %i.fy = bitcast float %i.fe to i32
  %i.fz = select i1 %i.fp, i32 %i.fy, i32 8388608
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !58
  %.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %i.fz, ptr %.sroa_idx9.i, align 4, !tbaa !58
  %i.ga = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ga, %i.f
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, !llvm.loop !236

bb.b:                                             ; preds = %.preheader
  tail call void @_ZSt9terminatev() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !34
  store i64 %2, ptr %i.b, align 8, !tbaa !34
  store i64 %1, ptr %0, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = icmp ult i64 %1, %2
  br i1 %i.d, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !28
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.39, i32 noundef 44)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.41, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pr12 = load ptr, ptr %3, align 8, !tbaa !28   ; 4 uses
  %.not.i = icmp eq ptr %.pr12, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.pr12, align 8, !tbaa !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr12, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #32
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
