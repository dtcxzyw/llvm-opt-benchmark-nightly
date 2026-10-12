Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a
  %.sroa.0309.0.lcssa = phi <4 x float> [ %i.fmc, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.gjq, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %i.fmp = tail call noundef i32 @llvm.smax.i32(i32 %i.fme, i32 1) ; 5 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fmr = load float, ptr %i.fmq, align 8        ; 3 uses
  %i.fms = fptosi float %i.fmr to i32
  %i.fmt = tail call noundef i32 @llvm.smin.i32(i32 %i.fms, i32 %i.af) ; 2 uses
  %.not5070 = icmp sgt i32 %i.fmp, %i.fmt
  br i1 %.not5070, label %._crit_edge5076, label %.lr.ph5075

.lr.ph5075:                                       ; preds = %._crit_edge
  %i.fmu = fsub float %i.q, %i.o
  %i.fmv = fcmp ogt float %i.cim, 0.000000e+00
  %i.fmw = fcmp ogt float %i.dyh, 0.000000e+00
  %i.fmx = select i1 %i.fmw, float %i.dyh, float 0.000000e+00
  %i.fmy = fsub float 1.000000e+00, %i.fmx        ; 2 uses
  %i.fmz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fna = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.fnb = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.fnc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.fnd = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.fne = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.fnf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fng = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fnh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fni = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fnj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fnk = zext nneg i32 %i.fmp to i64            ; 2 uses
  %i.fnl = add nsw i64 %i.fnk, -1                 ; 2 uses
  %i.fnm = trunc nuw nsw i64 %i.fnl to i32
  %i.fnn = uitofp nneg i32 %i.fnm to float        ; 2 uses
  %i.fno = uitofp nneg i32 %i.fmp to float        ; 2 uses
  %i.fnp = insertelement <2 x float> poison, float %i.fnn, i64 0
  %i.fnq = insertelement <2 x float> %i.fnp, float %i.fno, i64 1
  %i.fnr = insertelement <2 x float> poison, float %5, i64 0
  %i.fns = shufflevector <2 x float> %i.fnr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fnt = fdiv <2 x float> %i.fnq, %i.fns
  %i.fnu = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fnv = fsub <2 x float> %i.fnt, %i.fnu
  %i.fnw = insertelement <2 x float> poison, float %i.fmu, i64 0
  %i.fnx = shufflevector <2 x float> %i.fnw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fny = fdiv <2 x float> %i.fnv, %i.fnx        ; 3 uses
  %i.fnz = select i1 %i.fmv, float %i.cim, float 0.000000e+00
  %i.foa = icmp eq i32 %i.fmp, %i.fmt
  %i.fob = select i1 %i.foa, float %i.fmy, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.foc = load ptr, ptr %i.fmz, align 8, !noalias !1081 ; 3 uses
  %.not.i140.peel = icmp eq ptr %i.foc, null      ; 2 uses
  br i1 %.not.i140.peel, label %_ZNK6embree13InstanceArray5validEm.exit142.peel, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel

_ZNK6embree13InstanceArray5validEm.exit142.peel:  ; preds = %.lr.ph5075
  %i.fod = load ptr, ptr %i.fna, align 16, !noalias !1081
  %i.foe = load i64, ptr %i.fnb, align 16, !noalias !1081
  %i.fof = mul i64 %i.foe, %2
  %i.fog = getelementptr inbounds nuw i8, ptr %i.fod, i64 %i.fof
  %i.foh = load i32, ptr %i.fog, align 4, !noalias !1081 ; 2 uses
  %.not5047.peel = icmp eq i32 %i.foh, -1
  br i1 %.not5047.peel, label %_ZNK6embree13InstanceArray5validEm.exit145.peel.thread, label %bb.cp

bb.cp:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142.peel
  %i.foi = load ptr, ptr %i.fnc, align 16, !noalias !1081
  %i.foj = zext i32 %i.foh to i64
  %i.fok = getelementptr inbounds nuw [8 x i8], ptr %i.foi, i64 %i.foj
  %i.fol = load ptr, ptr %i.fok, align 8, !noalias !1081
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel: ; preds = %bb.cp, %.lr.ph5075
  %.0.i254.peel = phi ptr [ %i.fol, %bb.cp ], [ %i.foc, %.lr.ph5075 ] ; 4 uses
  %i.fom = load float, ptr %i.fnd, align 4, !noalias !1081 ; 3 uses
  %i.fon = load float, ptr %i.fne, align 16, !noalias !1081
  %i.foo = fsub float %i.fon, %i.fom              ; 2 uses
  %i.fop = fmul float %i.foo, %i.fnn
  %i.foq = fdiv float %i.fop, %i.fmr
  %i.for = fadd float %i.fom, %i.foq              ; 2 uses
  %i.fos = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.fot = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 48
  %i.fou = fsub float 1.000000e+00, %i.for
  %i.fov = insertelement <4 x float> poison, float %i.for, i64 0
  %i.fow = shufflevector <4 x float> %i.fov, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fox = load <4 x float>, ptr %i.fot, align 16, !noalias !1083
  %i.foy = fmul <4 x float> %i.fox, %i.fow
  %i.foz = insertelement <4 x float> poison, float %i.fou, i64 0
  %i.fpa = shufflevector <4 x float> %i.foz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fpb = load <4 x float>, ptr %i.fos, align 16, !noalias !1084
  %i.fpc = fmul <4 x float> %i.fpb, %i.fpa
  %i.fpd = fadd <4 x float> %i.foy, %i.fpc
  %i.fpe = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 32
  %i.fpf = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 64
  %i.fpg = load <4 x float>, ptr %i.fpf, align 16, !noalias !1085
  %i.fph = fmul <4 x float> %i.fpg, %i.fow
  %i.fpi = load <4 x float>, ptr %i.fpe, align 16, !noalias !1086
  %i.fpj = fmul <4 x float> %i.fpi, %i.fpa
  %i.fpk = fadd <4 x float> %i.fph, %i.fpj
  store <4 x float> %i.fpd, ptr %12, align 16, !alias.scope !1082
  store <4 x float> %i.fpk, ptr %i.fnf, align 16, !alias.scope !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140.peel, label %_ZNK6embree13InstanceArray5validEm.exit145.peel, label %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel

_ZNK6embree13InstanceArray5validEm.exit145.peel.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel

_ZNK6embree13InstanceArray5validEm.exit145.peel:  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel
  %.pre5128 = load ptr, ptr %i.fna, align 16, !noalias !1087
  %.pre5129 = load i64, ptr %i.fnb, align 16, !noalias !1087
  %.pre5194 = mul i64 %.pre5129, %2
  %.phi.trans.insert5216 = getelementptr inbounds nuw i8, ptr %.pre5128, i64 %.pre5194
  %.pre5217 = load i32, ptr %.phi.trans.insert5216, align 4, !noalias !1087 ; 2 uses
  %.not5048.peel = icmp eq i32 %.pre5217, -1
  br i1 %.not5048.peel, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, label %bb.cq

bb.cq:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.peel
  %i.fpl = load ptr, ptr %i.fnc, align 16, !noalias !1087
  %i.fpm = zext i32 %.pre5217 to i64
  %i.fpn = getelementptr inbounds nuw [8 x i8], ptr %i.fpl, i64 %i.fpm
  %i.fpo = load ptr, ptr %i.fpn, align 8, !noalias !1087
  %.pre5130 = load float, ptr %i.fnd, align 4, !noalias !1087 ; 2 uses
  %.pre5131 = load float, ptr %i.fne, align 16, !noalias !1087
  %.pre5242 = fsub float %.pre5131, %.pre5130
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel

_ZNK6embree13InstanceArray9getObjectEm.exit258.peel: ; preds = %bb.cq, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel
  %.pre-phi5243 = phi float [ %.pre5242, %bb.cq ], [ %i.foo, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ]
  %i.fpp = phi float [ %.pre5130, %bb.cq ], [ %i.fom, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ]
  %.0.i257.peel = phi ptr [ %i.fpo, %bb.cq ], [ %i.foc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ] ; 4 uses
  %i.fpq = fmul float %.pre-phi5243, %i.fno
  %i.fpr = fdiv float %i.fpq, %i.fmr
  %i.fps = fadd float %i.fpp, %i.fpr              ; 2 uses
  %i.fpt = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.fpu = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 48
  %i.fpv = fsub float 1.000000e+00, %i.fps
  %i.fpw = insertelement <4 x float> poison, float %i.fps, i64 0
  %i.fpx = shufflevector <4 x float> %i.fpw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fpy = load <4 x float>, ptr %i.fpu, align 16, !noalias !1089
  %i.fpz = fmul <4 x float> %i.fpy, %i.fpx
  %i.fqa = insertelement <4 x float> poison, float %i.fpv, i64 0
  %i.fqb = shufflevector <4 x float> %i.fqa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqc = load <4 x float>, ptr %i.fpt, align 16, !noalias !1090
  %i.fqd = fmul <4 x float> %i.fqc, %i.fqb
  %i.fqe = fadd <4 x float> %i.fpz, %i.fqd
  %i.fqf = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 32
  %i.fqg = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 64
  %i.fqh = load <4 x float>, ptr %i.fqg, align 16, !noalias !1091
  %i.fqi = fmul <4 x float> %i.fqh, %i.fpx
  %i.fqj = load <4 x float>, ptr %i.fqf, align 16, !noalias !1092
  %i.fqk = fmul <4 x float> %i.fqj, %i.fqb
  %i.fql = fadd <4 x float> %i.fqi, %i.fqk
  store <4 x float> %i.fqe, ptr %13, align 16, !alias.scope !1088
  store <4 x float> %i.fql, ptr %i.fng, align 16, !alias.scope !1088
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.peel.thread, %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel, %_ZNK6embree13InstanceArray5validEm.exit145.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.fqm = fsub <2 x float> splat (float 1.000000e+00), %i.fny ; 2 uses
  %i.fqn = shufflevector <2 x float> %i.fny, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqo = fmul <4 x float> %.sroa.0309.0.lcssa, %i.fqn
  %i.fqp = shufflevector <2 x float> %i.fqm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqq = fmul <4 x float> %.sroa.0352.0.lcssa, %i.fqp
  %i.fqr = fadd <4 x float> %i.fqo, %i.fqq
  %i.fqs = fmul <4 x float> %.sroa.44.0.lcssa, %i.fqn
  %i.fqt = fmul <4 x float> %.sroa.44374.0.lcssa, %i.fqp
  %i.fqu = fadd <4 x float> %i.fqs, %i.fqt
  store <4 x float> %i.fqr, ptr %14, align 16
  store <4 x float> %i.fqu, ptr %i.fnh, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.fqv = shufflevector <2 x float> %i.fny, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fqw = fmul <4 x float> %.sroa.0309.0.lcssa, %i.fqv
  %i.fqx = shufflevector <2 x float> %i.fqm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fqy = fmul <4 x float> %.sroa.0352.0.lcssa, %i.fqx
  %i.fqz = fadd <4 x float> %i.fqw, %i.fqy
  %i.fra = fmul <4 x float> %.sroa.44.0.lcssa, %i.fqv
  %i.frb = fmul <4 x float> %.sroa.44374.0.lcssa, %i.fqx
  %i.frc = fadd <4 x float> %i.fra, %i.frb
  store <4 x float> %i.fqz, ptr %15, align 16
  store <4 x float> %i.frc, ptr %i.fni, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %i.fnl, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef %i.fnz, float noundef %i.fob)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.frd = load <4 x float>, ptr %11, align 16, !noalias !1093
  %i.fre = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> %i.frd) ; 2 uses
  %i.frf = load <4 x float>, ptr %i.fnj, align 16, !noalias !1094
  %i.frg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.frf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.frh = load float, ptr %i.fmq, align 8        ; 2 uses
  %i.fri = fptosi float %i.frh to i32
  %i.frj = tail call noundef i32 @llvm.smin.i32(i32 %i.fri, i32 %i.af) ; 2 uses
  %.not.not.peel = icmp slt i32 %i.fmp, %i.frj
  br i1 %.not.not.peel, label %.peel.next, label %._crit_edge5076

bb.cr:                                            ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit
  %indvars.iv = phi i64 [ %i.fmo, %.lr.ph ], [ %indvars.iv.next, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 3 uses
  %.sroa.0309.05065 = phi <4 x float> [ %i.fmc, %.lr.ph ], [ %i.gjq, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.44.05064 = phi <4 x float> [ %i.fmd, %.lr.ph ], [ %i.gjs, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.0352.05063 = phi <4 x float> [ %.sroa.0352.1, %.lr.ph ], [ %i.gjp, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.44374.05062 = phi <4 x float> [ %.sroa.44374.1, %.lr.ph ], [ %i.gjr, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %i.frk = trunc nsw i64 %indvars.iv to i32
  %16 = uitofp nneg i32 %i.frk to float           ; 2 uses
  %i.frl = fdiv float %16, %5
  %i.frm = fsub float %i.frl, %i.o
  %i.frn = fdiv float %i.frm, %i.fmg              ; 2 uses
  %i.fro = fsub float 1.000000e+00, %i.frn
  %i.frp = insertelement <4 x float> poison, float %i.frn, i64 0
  %i.frq = shufflevector <4 x float> %i.frp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.frr = fmul <4 x float> %.sroa.0309.05065, %i.frq
  %i.frs = insertelement <4 x float> poison, float %i.fro, i64 0
  %i.frt = shufflevector <4 x float> %i.frs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fru = fmul <4 x float> %.sroa.0352.05063, %i.frt
  %i.frv = fadd <4 x float> %i.frr, %i.fru
  %i.frw = fmul <4 x float> %.sroa.44.05064, %i.frq
  %i.frx = fmul <4 x float> %.sroa.44374.05062, %i.frt
  %i.fry = fadd <4 x float> %i.frw, %i.frx
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit133, label %_ZNK6embree13InstanceArray5validEm.exit133.thread

_ZNK6embree13InstanceArray5validEm.exit133:       ; preds = %bb.cr
  %i.frz = load ptr, ptr %i.fmh, align 16, !noalias !1095
  %i.fsa = load i64, ptr %i.fmi, align 16, !noalias !1095
  %i.fsb = mul i64 %i.fsa, %2
  %i.fsc = getelementptr inbounds nuw i8, ptr %i.frz, i64 %i.fsb
  %i.fsd = load i32, ptr %i.fsc, align 4, !noalias !1095
  %.not5049 = icmp eq i32 %i.fsd, -1
  br i1 %.not5049, label %_ZNK6embree13InstanceArray6boundsEmm.exit, label %_ZNK6embree13InstanceArray5validEm.exit133.thread

_ZNK6embree13InstanceArray5validEm.exit133.thread: ; preds = %bb.cr, %_ZNK6embree13InstanceArray5validEm.exit133
  %i.fse = load i32, ptr %i.cin, align 4, !noalias !1095
  %i.fsf = and i32 %i.fse, 65280
  %i.fsg = icmp eq i32 %i.fsf, 256
  %i.fsh = load ptr, ptr %i.fmj, align 8, !noalias !1095
  %i.fsi = getelementptr inbounds nuw [56 x i8], ptr %i.fsh, i64 %indvars.iv ; 17 uses
  %i.fsj = getelementptr inbounds nuw i8, ptr %i.fsi, i64 32
  %i.fsk = load i32, ptr %i.fsj, align 8, !noalias !1095 ; 2 uses
  br i1 %i.fsg, label %bb.cs, label %bb.cx, !prof !8

bb.cs:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit133.thread
  switch i32 %i.fsk, label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i [
    i32 37444, label %bb.ct
    i32 45057, label %bb.cu
    i32 37428, label %bb.cv
    i32 37172, label %bb.cw
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.fsl = load ptr, ptr %i.fsi, align 8, !noalias !1096
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.fsi, i64 16
  %i.fsn = load i64, ptr %i.fsm, align 8, !noalias !1096
  %i.fso = mul i64 %i.fsn, %2
  %i.fsp = getelementptr inbounds nuw i8, ptr %i.fsl, i64 %i.fso ; 4 uses
  %i.fsq = load <4 x float>, ptr %i.fsp, align 16, !noalias !1095
  %i.fsr = getelementptr inbounds nuw i8, ptr %i.fsp, i64 16
  %i.fss = load <4 x float>, ptr %i.fsr, align 16, !noalias !1095
  %i.fst = getelementptr inbounds nuw i8, ptr %i.fsp, i64 32
  %i.fsu = load <4 x float>, ptr %i.fst, align 16, !noalias !1095
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.fsp, i64 48
  %i.fsw = load <4 x float>, ptr %i.fsv, align 16, !noalias !1095
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cu:                                            ; preds = %bb.cs
  %i.fsx = load ptr, ptr %i.fsi, align 8, !noalias !1095
  %i.fsy = getelementptr inbounds nuw i8, ptr %i.fsi, i64 16
  %i.fsz = load i64, ptr %i.fsy, align 8, !noalias !1095
  %i.fta = mul i64 %i.fsz, %2
  %i.ftb = getelementptr inbounds nuw i8, ptr %i.fsx, i64 %i.fta ; 12 uses
  %i.ftc = load float, ptr %i.ftb, align 16, !noalias !1095
  %.sroa.01881.0.vec.insert = insertelement <4 x float> poison, float %i.ftc, i64 0
  %i.ftd = getelementptr inbounds nuw i8, ptr %i.ftb, i64 4
  %i.fte = load float, ptr %i.ftd, align 4, !noalias !1095
  %i.ftf = getelementptr inbounds nuw i8, ptr %i.ftb, i64 8
  %i.ftg = load float, ptr %i.ftf, align 8, !noalias !1095
  %i.fth = getelementptr inbounds nuw i8, ptr %i.ftb, i64 12
  %i.fti = load float, ptr %i.fth, align 4, !noalias !1095
  %i.ftj = insertelement <4 x float> poison, float %i.fti, i64 0
  %.sroa.111884.16.vec.insert = insertelement <4 x float> %i.ftj, float %i.fte, i64 1
  %i.ftk = getelementptr inbounds nuw i8, ptr %i.ftb, i64 16
  %i.ftl = load <2 x float>, ptr %i.ftk, align 16, !noalias !1095
  %i.ftm = shufflevector <2 x float> %i.ftl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.201887.36.vec.insert = insertelement <4 x float> %i.ftm, float %i.ftg, i64 2
  %i.ftn = getelementptr inbounds nuw i8, ptr %i.ftb, i64 52
  %i.fto = load <2 x float>, ptr %i.ftn, align 4, !noalias !1095
  %i.ftp = shufflevector <2 x float> %i.fto, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.01881.8.vec.insert5597 = shufflevector <4 x float> %.sroa.01881.0.vec.insert, <4 x float> %i.ftp, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ftq = getelementptr inbounds nuw i8, ptr %i.ftb, i64 60
  %i.ftr = load float, ptr %i.ftq, align 4, !noalias !1095
  %.sroa.111884.24.vec.insert = insertelement <4 x float> %.sroa.111884.16.vec.insert, float %i.ftr, i64 2
  %i.fts = getelementptr inbounds nuw i8, ptr %i.ftb, i64 24
  %i.ftt = getelementptr inbounds nuw i8, ptr %i.ftb, i64 36
  %i.ftu = getelementptr inbounds nuw i8, ptr %i.ftb, i64 40
  %i.ftv = getelementptr inbounds nuw i8, ptr %i.ftb, i64 44
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.ftb, i64 48
  %i.ftx = load float, ptr %i.ftw, align 16, !noalias !1095 ; 3 uses
  %i.fty = load float, ptr %i.ftt, align 4, !noalias !1095 ; 2 uses
  %i.ftz = load <4 x float>, ptr %i.fts, align 8, !noalias !1095
  %i.fua = load float, ptr %i.ftu, align 8, !noalias !1095 ; 3 uses
  %i.fub = load float, ptr %i.ftv, align 4, !noalias !1095 ; 3 uses
  %i.fuc = fmul float %i.fua, %i.fua
  %i.fud = tail call float @llvm.fmuladd.f32(float %i.fty, float %i.fty, float %i.fuc)
  %i.fue = tail call float @llvm.fmuladd.f32(float %i.fub, float %i.fub, float %i.fud)
  %i.fuf = tail call float @llvm.fmuladd.f32(float %i.ftx, float %i.ftx, float %i.fue) ; 2 uses
  %i.fug = insertelement <4 x float> poison, float %i.fuf, i64 0
  %i.fuh = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.fug) ; 3 uses
  %i.fui = extractelement <4 x float> %i.fuh, i64 0 ; 2 uses
  %i.fuj = fmul float %i.fui, 1.500000e+00
  %i.fuk = fmul float %i.fuf, 5.000000e-01
  %i.ful = fmul float %i.fui, %i.fuk
  %foldExtExtBinop5662 = fmul <4 x float> %i.fuh, %i.fuh
  %i.fum = extractelement <4 x float> %foldExtExtBinop5662, i64 0
  %i.fun = fmul float %i.fum, %i.ful
  %i.fuo = fsub float %i.fuj, %i.fun              ; 4 uses
  %i.fup = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fuo, i64 3
  %i.fuq = fmul <4 x float> %i.ftz, %i.fup
  %i.fur = fmul float %i.fua, %i.fuo
  %i.fus = fmul float %i.fub, %i.fuo
  %i.fut = fmul float %i.ftx, %i.fuo
  %.sroa.01881.12.vec.insert = insertelement <4 x float> %.sroa.01881.8.vec.insert5597, float %i.fur, i64 3
  %.sroa.111884.28.vec.insert = insertelement <4 x float> %.sroa.111884.24.vec.insert, float %i.fus, i64 3
  %.sroa.201887.44.vec.insert = insertelement <4 x float> %.sroa.201887.36.vec.insert, float %i.fut, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cv:                                            ; preds = %bb.cs
  %i.fuu = load ptr, ptr %i.fsi, align 8, !noalias !1096
  %i.fuv = getelementptr inbounds nuw i8, ptr %i.fsi, i64 16
  %i.fuw = load i64, ptr %i.fuv, align 8, !noalias !1096
  %i.fux = mul i64 %i.fuw, %2
  %i.fuy = getelementptr inbounds nuw i8, ptr %i.fuu, i64 %i.fux ; 8 uses
  %i.fuz = getelementptr inbounds nuw i8, ptr %i.fuy, i64 4
  %i.fva = load <2 x float>, ptr %i.fuz, align 4, !noalias !1095
  %i.fvb = load float, ptr %i.fuy, align 4, !noalias !1095
  %i.fvc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvb, i64 0
  %i.fvd = shufflevector <2 x float> %i.fva, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fve = shufflevector <4 x float> %i.fvc, <4 x float> %i.fvd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fvf = getelementptr inbounds nuw i8, ptr %i.fuy, i64 12
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fuy, i64 16
  %i.fvh = load <2 x float>, ptr %i.fvg, align 4, !noalias !1095
  %i.fvi = load float, ptr %i.fvf, align 4, !noalias !1095
  %i.fvj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvi, i64 0
  %i.fvk = shufflevector <2 x float> %i.fvh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvl = shufflevector <4 x float> %i.fvj, <4 x float> %i.fvk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fvm = getelementptr inbounds nuw i8, ptr %i.fuy, i64 24
  %i.fvn = getelementptr inbounds nuw i8, ptr %i.fuy, i64 28
  %i.fvo = load <2 x float>, ptr %i.fvn, align 4, !noalias !1095
  %i.fvp = load float, ptr %i.fvm, align 4, !noalias !1095
  %i.fvq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvp, i64 0
  %i.fvr = shufflevector <2 x float> %i.fvo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvs = shufflevector <4 x float> %i.fvq, <4 x float> %i.fvr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fvt = getelementptr inbounds nuw i8, ptr %i.fuy, i64 36
  %i.fvu = getelementptr inbounds nuw i8, ptr %i.fuy, i64 40
  %i.fvv = load <2 x float>, ptr %i.fvu, align 4, !noalias !1095
  %i.fvw = load float, ptr %i.fvt, align 4, !noalias !1095
  %i.fvx = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvw, i64 0
  %i.fvy = shufflevector <2 x float> %i.fvv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvz = shufflevector <4 x float> %i.fvx, <4 x float> %i.fvy, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cw:                                            ; preds = %bb.cs
  %i.fwa = load ptr, ptr %i.fsi, align 8, !noalias !1096
  %i.fwb = getelementptr inbounds nuw i8, ptr %i.fsi, i64 16
  %i.fwc = load i64, ptr %i.fwb, align 8, !noalias !1096
  %i.fwd = mul i64 %i.fwc, %2
  %i.fwe = getelementptr inbounds nuw i8, ptr %i.fwa, i64 %i.fwd ; 12 uses
  %i.fwf = load float, ptr %i.fwe, align 4, !noalias !1096
  %i.fwg = getelementptr inbounds nuw i8, ptr %i.fwe, i64 4
  %i.fwh = load float, ptr %i.fwg, align 4, !noalias !1096
  %i.fwi = getelementptr inbounds nuw i8, ptr %i.fwe, i64 8
  %i.fwj = load float, ptr %i.fwi, align 4, !noalias !1096
  %i.fwk = getelementptr inbounds nuw i8, ptr %i.fwe, i64 12
  %i.fwl = load float, ptr %i.fwk, align 4, !noalias !1096
  %i.fwm = getelementptr inbounds nuw i8, ptr %i.fwe, i64 16
  %i.fwn = load float, ptr %i.fwm, align 4, !noalias !1096
  %i.fwo = getelementptr inbounds nuw i8, ptr %i.fwe, i64 20
  %i.fwp = load float, ptr %i.fwo, align 4, !noalias !1096
  %i.fwq = getelementptr inbounds nuw i8, ptr %i.fwe, i64 24
  %i.fwr = load float, ptr %i.fwq, align 4, !noalias !1096
  %i.fws = getelementptr inbounds nuw i8, ptr %i.fwe, i64 28
  %i.fwt = load float, ptr %i.fws, align 4, !noalias !1096
  %i.fwu = getelementptr inbounds nuw i8, ptr %i.fwe, i64 32
  %i.fwv = load float, ptr %i.fwu, align 4, !noalias !1096
  %i.fww = getelementptr inbounds nuw i8, ptr %i.fwe, i64 36
  %i.fwx = load float, ptr %i.fww, align 4, !noalias !1096
  %i.fwy = getelementptr inbounds nuw i8, ptr %i.fwe, i64 40
  %i.fwz = load float, ptr %i.fwy, align 4, !noalias !1096
  %i.fxa = getelementptr inbounds nuw i8, ptr %i.fwe, i64 44
  %i.fxb = load float, ptr %i.fxa, align 4, !noalias !1096
  %i.fxc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwf, i64 0
  %i.fxd = insertelement <4 x float> %i.fxc, float %i.fwn, i64 1
  %i.fxe = insertelement <4 x float> %i.fxd, float %i.fwv, i64 2
  %i.fxf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwh, i64 0
  %i.fxg = insertelement <4 x float> %i.fxf, float %i.fwp, i64 1
  %i.fxh = insertelement <4 x float> %i.fxg, float %i.fwx, i64 2
  %i.fxi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwj, i64 0
  %i.fxj = insertelement <4 x float> %i.fxi, float %i.fwr, i64 1
  %i.fxk = insertelement <4 x float> %i.fxj, float %i.fwz, i64 2
  %i.fxl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwl, i64 0
  %i.fxm = insertelement <4 x float> %i.fxl, float %i.fwt, i64 1
  %i.fxn = insertelement <4 x float> %i.fxm, float %i.fxb, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

_ZNK6embree13InstanceArray3l2wEmm.exit9.i:        ; preds = %bb.cs, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.sroa.01881.0 = phi <4 x float> [ %i.fsq, %bb.ct ], [ %.sroa.01881.12.vec.insert, %bb.cu ], [ %i.fve, %bb.cv ], [ %i.fxe, %bb.cw ], [ undef, %bb.cs ] ; 5 uses
  %.sroa.111884.0 = phi <4 x float> [ %i.fss, %bb.ct ], [ %.sroa.111884.28.vec.insert, %bb.cu ], [ %i.fvl, %bb.cv ], [ %i.fxh, %bb.cw ], [ undef, %bb.cs ] ; 6 uses
end_hunk_0
