Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tpi?download=true
inline.NumInlined: 1973
inline.NumDeleted: 915
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3gmx21TestParticleInsertion22performSingleInsertionEdlbRKNS_11BasicVectorIfEEP7t_statePNS_21MdrunScheduleWorkloadEP13gmx_wallcycleP6t_nrnb:bb.a
  %xtraiter = and i32 %i.hh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph190, %.prol.preheader
  %indvars.iv211.prol = phi i64 [ %indvars.iv.next212.prol, %.prol.preheader ], [ %i.hg, %.lr.ph190 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph190 ]
  %i.hi = getelementptr inbounds [12 x i8], ptr %i.ee, i64 %indvars.iv211.prol ; 3 uses
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !128
  %i.hk = fadd <2 x float> %.sroa.0164.0, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !128
  %i.hn = fadd float %.sroa.10.0, %i.hm
  store <2 x float> %i.hk, ptr %i.hi, align 4
  store float %i.hn, ptr %i.hl, align 4, !tbaa !18
  %indvars.iv.next212.prol = add nsw i64 %indvars.iv211.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !583

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph190
  %indvars.iv211.unr = phi i64 [ %i.hg, %.lr.ph190 ], [ %indvars.iv.next212.prol, %.prol.preheader ]
  %i.ho = sub i32 %i.he, %i.hf
  %i.hp = icmp ugt i32 %i.ho, -4
  br i1 %i.hp, label %.loopexit182, label %.lr.ph190.new

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv208 = phi i64 [ %i.et, %.lr.ph ], [ %indvars.iv.next209, %bb.u ] ; 3 uses
  %i.hq = load i32, ptr %i.el, align 8, !tbaa !176
  %i.hr = sext i32 %i.hq to i64
  %i.hs = sub nsw i64 %indvars.iv208, %i.hr
  %i.ht = load ptr, ptr %i.es, align 8, !tbaa !169
  %i.hu = getelementptr inbounds nuw [12 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = getelementptr inbounds [12 x i8], ptr %i.ee, i64 %indvars.iv208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hv, ptr noundef nonnull align 4 dereferenceable(12) %i.hu, i64 12, i1 false), !tbaa.struct !278
  %indvars.iv.next209 = add nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.hw = load i32, ptr %i.em, align 4, !tbaa !177
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp slt i64 %indvars.iv.next209, %i.hx
  br i1 %i.hy, label %bb.u, label %._crit_edge, !llvm.loop !584

.lr.ph190.new:                                    ; preds = %.prol.loopexit, %.lr.ph190.new
  %indvars.iv211 = phi i64 [ %indvars.iv.next212.3, %.lr.ph190.new ], [ %indvars.iv211.unr, %.prol.loopexit ] ; 5 uses
  %i.hz = getelementptr inbounds [12 x i8], ptr %i.ee, i64 %indvars.iv211 ; 3 uses
  %i.ia = load <2 x float>, ptr %i.hz, align 4, !tbaa !128
  %i.ib = fadd <2 x float> %.sroa.0164.0, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !128
  %i.ie = fadd float %.sroa.10.0, %i.id
  store <2 x float> %i.ib, ptr %i.hz, align 4
  store float %i.ie, ptr %i.ic, align 4, !tbaa !18
  %i.if = getelementptr [12 x i8], ptr %i.ee, i64 %indvars.iv211 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 12     ; 2 uses
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !128
  %i.ii = fadd <2 x float> %.sroa.0164.0, %i.ih
  %i.ij = getelementptr i8, ptr %i.if, i64 20     ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !128
  %i.il = fadd float %.sroa.10.0, %i.ik
  store <2 x float> %i.ii, ptr %i.ig, align 4
  store float %i.il, ptr %i.ij, align 4, !tbaa !18
  %i.im = getelementptr [12 x i8], ptr %i.ee, i64 %indvars.iv211 ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 24     ; 2 uses
  %i.io = load <2 x float>, ptr %i.in, align 4, !tbaa !128
  %i.ip = fadd <2 x float> %.sroa.0164.0, %i.io
  %i.iq = getelementptr i8, ptr %i.im, i64 32     ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !128
  %i.is = fadd float %.sroa.10.0, %i.ir
  store <2 x float> %i.ip, ptr %i.in, align 4
  store float %i.is, ptr %i.iq, align 4, !tbaa !18
  %i.it = getelementptr [12 x i8], ptr %i.ee, i64 %indvars.iv211 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 36     ; 2 uses
  %i.iv = load <2 x float>, ptr %i.iu, align 4, !tbaa !128
  %i.iw = fadd <2 x float> %.sroa.0164.0, %i.iv
  %i.ix = getelementptr i8, ptr %i.it, i64 44     ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !128
  %i.iz = fadd float %.sroa.10.0, %i.iy
  store <2 x float> %i.iw, ptr %i.iu, align 4
  store float %i.iz, ptr %i.ix, align 4, !tbaa !18
  %indvars.iv.next212.3 = add nsw i64 %indvars.iv211, 4 ; 2 uses
  %i.ja = trunc nsw i64 %indvars.iv.next212.3 to i32
  %.not178.3 = icmp eq i32 %i.hf, %i.ja
  br i1 %.not178.3, label %.loopexit182, label %.lr.ph190.new

.loopexit182:                                     ; preds = %.prol.loopexit, %.lr.ph190.new, %_ZN3gmx23UniformRealDistributionIfEclINS_12ThreeFry2x64ILj16EEEEEfRT_.exit124, %bb.q
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !306, !nonnull !195, !align !196
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 256
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !308
  tail call void @_ZN3gmx18nonbonded_verlet_t18convertCoordinatesENS_12AtomLocalityENS_8ArrayRefIKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(65) %i.je, i32 noundef 1, ptr %i.ee, ptr %i.ek)
  %i.jf = load ptr, ptr %i.jb, align 8, !tbaa !306, !nonnull !195, !align !196
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 504
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !595
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !310, !nonnull !195, !align !196
  tail call void @_ZN24CpuPpLongRangeNonbondeds20updateAfterPartitionERK9t_mdatoms(ptr noundef nonnull align 8 dereferenceable(216) %i.jh, ptr noundef nonnull align 8 dereferenceable(648) %i.jj)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.jk = call i32 @feholdexcept(ptr noundef nonnull %13) #27 ; 0 uses
  %i.jl = zext i1 %3 to i32
  %i.jm = or disjoint i32 %i.jl, 576
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.jn = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !195, !align !196 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 104
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !596 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !597
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 29
  call void @_ZN3gmx17setupStepWorkloadEiNS_8ArrayRefIKNS_8MtsLevelEEElRKNS_22DomainLifetimeWorkloadERKNS_18SimulationWorkloadE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::StepWorkload") align 1 %14, i32 noundef %i.jm, ptr %i.jp, ptr %i.jv, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(10) %i.jw, ptr noundef nonnull align 1 dereferenceable(29) %6)
  %i.jx = getelementptr inbounds nuw i8, ptr %6, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.jx, ptr noundef nonnull align 1 dereferenceable(19) %14, i64 19, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jz = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !195, !align !196
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !599
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !311, !nonnull !195, !align !196
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.kf = load ptr, ptr %i.ed, align 8, !tbaa !305, !noalias !600 ; 4 uses
  %i.kg = load ptr, ptr %i.ef, align 8, !tbaa !277, !noalias !600
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.kf, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 424
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !601, !noalias !600
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.ki
  %i.kp = getelementptr inbounds i8, ptr %i.kf, i64 %i.ko
  store ptr %i.kf, ptr %15, align 8, !tbaa !602, !alias.scope !600
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.kk, ptr %i.kq, align 8, !tbaa !603, !alias.scope !600
  %i.kr = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.kp, ptr %i.kr, align 8, !tbaa !604, !alias.scope !600
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 456 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !305, !noalias !605 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !277, !noalias !605
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.kt, i64 %i.ky
  store ptr %i.kt, ptr %16, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.kz, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 688
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ld = load ptr, ptr %i.ji, align 8, !tbaa !310, !nonnull !195, !align !196
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !606, !nonnull !195, !align !196
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.lg, ptr %17, align 8, !tbaa !313
  %i.lh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ke, ptr %i.lh, align 8, !tbaa !313
  %i.li = load ptr, ptr %i.jb, align 8, !tbaa !306, !nonnull !195, !align !196 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 504
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store i8 0, ptr %18, align 8, !tbaa !608
  %i.ll = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.ll, align 8, !tbaa !609
  call void @_ZN3gmx8do_forceEP8_IO_FILEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_3AwhEP10gmx_enfrotPNS_10ImdSessionEP6pull_tlP6t_nrnbP13gmx_wallcyclePK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISV_EEPK9history_tPNS_16ForceBuffersViewEPA3_fPK9t_mdatomsP14gmx_enerdata_tNSX_ISQ_EEP10t_forcerecRKNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPfdP9gmx_edsamP24CpuPpLongRangeNonbondedsRK22DDBalanceRegionHandler(ptr noundef null, ptr noundef nonnull %i.jy, ptr noundef nonnull align 8 dereferenceable(888) %i.jz, ptr noundef nonnull align 1 %i.kb, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef %2, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %i.kd, ptr noundef nonnull %i.ke, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull byval(%"class.gmx::ArrayRef.333") align 8 %16, ptr noundef nonnull %i.lb, ptr noundef nonnull %i.lc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ld, ptr noundef nonnull %i.lf, ptr noundef nonnull byval(%"class.gmx::ArrayRef.386") align 8 %17, ptr noundef nonnull %i.li, ptr noundef nonnull align 1 dereferenceable(58) %6, ptr noundef null, ptr noundef nonnull %i.b, double noundef 0.000000e+00, ptr noundef null, ptr noundef %i.lk, ptr noundef nonnull align 8 dereferenceable(16) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.lm = call i32 @feclearexcept(i32 noundef 13) #27 ; 0 uses
  %i.ln = call i32 @feupdateenv(ptr noundef nonnull %13) #27 ; 0 uses
  %i.lo = load ptr, ptr %i.jb, align 8, !tbaa !306, !nonnull !195, !align !196 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !315
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  %.val = load i32, ptr %i.lq, align 4, !tbaa !252 ; 2 uses
  switch i32 %.val, label %.loopexit182._ZL7usingRFRK22CoulombInteractionType.exit_crit_edge [
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 11, label %bb.v
    i32 16, label %bb.v
  ]

.loopexit182._ZL7usingRFRK22CoulombInteractionType.exit_crit_edge: ; preds = %.loopexit182
  %.pre229 = load ptr, ptr %i.le, align 8, !tbaa !606 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre229, i64 316
  %.pre230 = load float, ptr %.phi.trans.insert, align 4, !tbaa !128
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

bb.v:                                             ; preds = %.loopexit182, %.loopexit182, %.loopexit182, %.loopexit182
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ls = load float, ptr %i.lr, align 8, !tbaa !179
  %i.lt = load ptr, ptr %i.le, align 8, !tbaa !606, !nonnull !195, !align !196 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 316 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !128
  %i.lw = fadd float %i.ls, %i.lv                 ; 2 uses
  store float %i.lw, ptr %i.lu, align 4, !tbaa !128
  br label %_ZL7usingRFRK22CoulombInteractionType.exit

_ZL7usingRFRK22CoulombInteractionType.exit:       ; preds = %.loopexit182._ZL7usingRFRK22CoulombInteractionType.exit_crit_edge, %bb.v
  %i.lx = phi float [ %.pre230, %.loopexit182._ZL7usingRFRK22CoulombInteractionType.exit_crit_edge ], [ %i.lw, %bb.v ] ; 2 uses
  %i.ly = phi ptr [ %.pre229, %.loopexit182._ZL7usingRFRK22CoulombInteractionType.exit_crit_edge ], [ %i.lt, %bb.v ] ; 5 uses
  %i.lz = fpext float %i.lx to double             ; 7 uses
  %or.cond = fcmp ugt float %i.lx, f0x7F7FFFFF
  br i1 %or.cond, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.ma = load ptr, ptr @debug, align 8, !tbaa !317 ; 2 uses
  %.not = icmp eq ptr %i.ma, null
  br i1 %.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mb = trunc i64 %2 to i32
  %i.mc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ma, ptr noundef nonnull @.str.40, double noundef %1, i32 noundef %i.mb, double noundef %i.lz) #27 ; 0 uses
  br label %bb.ad

bb.y:                                             ; preds = %_ZL7usingRFRK22CoulombInteractionType.exit
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.me = load float, ptr %i.md, align 8, !tbaa !175
  %i.mf = fneg float %i.me
  %i.mg = fpext float %i.mf to double
  %i.mh = fmul double %i.lz, %i.mg
  %i.mi = call double @exp(double noundef %i.mh) #27 ; 13 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !182 ; 11 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !184
  %i.mm = call double @llvm.fmuladd.f64(double %i.lz, double %i.mi, double %i.ml)
  store double %i.mm, ptr %i.mk, align 8, !tbaa !184
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lo, i64 344
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !610, !range !251, !noundef !195
  %i.mp = trunc nuw i8 %i.mo to i1
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !174 ; 20 uses
  %i.ms = icmp sgt i32 %i.mr, 0                   ; 2 uses
  br i1 %i.mp, label %.preheader179, label %.preheader180

.preheader180:                                    ; preds = %bb.y
  br i1 %i.ms, label %.lr.ph193, label %.loopexit

.lr.ph193:                                        ; preds = %.preheader180
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ly, i64 416
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !249 ; 4 uses
  %i.mw = mul nsw i32 %i.mv, %i.mr                ; 2 uses
  %i.mx = load ptr, ptr %i.mt, align 8, !tbaa !270 ; 2 uses
  %i.my = zext nneg i32 %i.mr to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.mr, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph193
  %n.vec = and i64 %i.my, 2147483644              ; 4 uses
  %i.mz = or disjoint i64 %n.vec, 1               ; 2 uses
  %i.na = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.mv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.mw, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.mr, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <4 x double> poison, double %i.mi, i64 0
  %broadcast.splat264 = shufflevector <4 x double> %broadcast.splatinsert263, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.nb = icmp slt <4 x i32> %vec.ind, %broadcast.splat
  %i.nc = mul nuw nsw <4 x i32> %broadcast.splat262, %vec.ind
  %i.nd = add nsw <4 x i32> %broadcast.splat, %i.nc
  %i.ne = add nsw <4 x i32> %broadcast.splat260, %vec.ind
  %i.nf = select <4 x i1> %i.nb, <4 x i32> %i.nd, <4 x i32> %i.ne
  %i.ng = sext <4 x i32> %i.nf to <4 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.mx, <4 x i64> %i.ng
  %wide.masked.gather = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !128
  %i.nh = fpext <4 x float> %wide.masked.gather to <4 x double>
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %index
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.nj, align 8, !tbaa !184
  %i.nk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nh, <4 x double> %broadcast.splat264, <4 x double> %wide.load)
  store <4 x double> %i.nk, ptr %i.nj, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.nl = icmp eq i64 %index.next, %n.vec
  br i1 %i.nl, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.my
  br i1 %cmp.n, label %.loopexit.loopexit203, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph193, %middle.block
  %indvars.iv214.ph = phi i64 [ 1, %.lr.ph193 ], [ %i.mz, %middle.block ]
  %.081192.ph = phi i32 [ 0, %.lr.ph193 ], [ %i.na, %middle.block ]
  br label %scalar.ph

.preheader179:                                    ; preds = %bb.y
  br i1 %i.ms, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.preheader179
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ly, i64 440
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !249 ; 4 uses
  %i.np = mul nsw i32 %i.no, %i.mr                ; 2 uses
  %i.nq = load ptr, ptr %i.nm, align 8, !tbaa !270 ; 2 uses
  %i.nr = zext nneg i32 %i.mr to i64              ; 2 uses
  %min.iters.check267 = icmp ult i32 %i.mr, 4
  br i1 %min.iters.check267, label %scalar.ph266.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph196
  %n.vec269 = and i64 %i.nr, 2147483644           ; 4 uses
  %i.ns = or disjoint i64 %n.vec269, 1            ; 2 uses
  %i.nt = trunc nuw nsw i64 %n.vec269 to i32
  %broadcast.splatinsert270 = insertelement <4 x i32> poison, i32 %i.no, i64 0
  %broadcast.splat271 = shufflevector <4 x i32> %broadcast.splatinsert270, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert272 = insertelement <4 x i32> poison, i32 %i.np, i64 0
  %broadcast.splat273 = shufflevector <4 x i32> %broadcast.splatinsert272, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert274 = insertelement <4 x i32> poison, i32 %i.mr, i64 0
  %broadcast.splat275 = shufflevector <4 x i32> %broadcast.splatinsert274, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <4 x double> poison, double %i.mi, i64 0
  %broadcast.splat277 = shufflevector <4 x double> %broadcast.splatinsert276, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph268
  %index279 = phi i64 [ 0, %vector.ph268 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %vec.ind280 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph268 ], [ %vec.ind.next285, %vector.body278 ] ; 4 uses
  %i.nu = icmp slt <4 x i32> %vec.ind280, %broadcast.splat271
  %i.nv = mul nuw nsw <4 x i32> %broadcast.splat275, %vec.ind280
  %i.nw = add nsw <4 x i32> %broadcast.splat271, %i.nv
  %i.nx = add nsw <4 x i32> %broadcast.splat273, %vec.ind280
  %i.ny = select <4 x i1> %i.nu, <4 x i32> %i.nw, <4 x i32> %i.nx
  %i.nz = sext <4 x i32> %i.ny to <4 x i64>
  %wide.gep281 = getelementptr inbounds nuw [4 x i8], ptr %i.nq, <4 x i64> %i.nz
  %wide.masked.gather282 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep281, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !128
  %i.oa = fpext <4 x float> %wide.masked.gather282 to <4 x double>
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %index279
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 2 uses
  %wide.load283 = load <4 x double>, ptr %i.oc, align 8, !tbaa !184
  %i.od = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.oa, <4 x double> %broadcast.splat277, <4 x double> %wide.load283)
  store <4 x double> %i.od, ptr %i.oc, align 8, !tbaa !184
  %index.next284 = add nuw i64 %index279, 4       ; 2 uses
  %vec.ind.next285 = add nuw nsw <4 x i32> %vec.ind280, splat (i32 4)
  %i.oe = icmp eq i64 %index.next284, %n.vec269
  br i1 %i.oe, label %middle.block286, label %vector.body278, !llvm.loop !590

middle.block286:                                  ; preds = %vector.body278
  %cmp.n287 = icmp eq i64 %n.vec269, %i.nr
  br i1 %cmp.n287, label %.loopexit.loopexit, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %.lr.ph196, %middle.block286
  %indvars.iv218.ph = phi i64 [ 1, %.lr.ph196 ], [ %i.ns, %middle.block286 ]
  %.082195.ph = phi i32 [ 0, %.lr.ph196 ], [ %i.nt, %middle.block286 ]
  br label %scalar.ph266

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %scalar.ph266 ], [ %indvars.iv218.ph, %scalar.ph266.preheader ] ; 2 uses
  %.082195 = phi i32 [ %i.or, %scalar.ph266 ], [ %.082195.ph, %scalar.ph266.preheader ] ; 4 uses
  %i.of = icmp slt i32 %.082195, %i.no
  %i.og = mul nuw nsw i32 %i.mr, %.082195
  %i.oh = add nsw i32 %i.no, %i.og
  %i.oi = add nsw i32 %i.np, %.082195
  %i.oj = select i1 %i.of, i32 %i.oh, i32 %i.oi
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.ok
  %i.om = load float, ptr %i.ol, align 4, !tbaa !128
  %i.on = fpext float %i.om to double
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv218 ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !184
  %i.oq = call double @llvm.fmuladd.f64(double %i.on, double %i.mi, double %i.op)
  store double %i.oq, ptr %i.oo, align 8, !tbaa !184
  %i.or = add nuw nsw i32 %.082195, 1             ; 2 uses
  %exitcond221.not = icmp eq i32 %i.or, %i.mr
  br i1 %exitcond221.not, label %.loopexit.loopexit, label %scalar.ph266, !llvm.loop !591

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %scalar.ph ], [ %indvars.iv214.ph, %scalar.ph.preheader ] ; 2 uses
  %.081192 = phi i32 [ %i.pe, %scalar.ph ], [ %.081192.ph, %scalar.ph.preheader ] ; 4 uses
  %i.os = icmp slt i32 %.081192, %i.mv
  %i.ot = mul nuw nsw i32 %i.mr, %.081192
  %i.ou = add nsw i32 %i.mv, %i.ot
  %i.ov = add nsw i32 %i.mw, %.081192
  %i.ow = select i1 %i.os, i32 %i.ou, i32 %i.ov
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ox
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !128
  %i.pa = fpext float %i.oz to double
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv214 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !184
  %i.pd = call double @llvm.fmuladd.f64(double %i.pa, double %i.mi, double %i.pc)
  store double %i.pd, ptr %i.pb, align 8, !tbaa !184
  %i.pe = add nuw nsw i32 %.081192, 1             ; 2 uses
  %exitcond217.not = icmp eq i32 %i.pe, %i.mr
  br i1 %exitcond217.not, label %.loopexit.loopexit203, label %scalar.ph, !llvm.loop !592

.loopexit.loopexit:                               ; preds = %scalar.ph266, %middle.block286
  %indvars.iv.next219.lcssa = phi i64 [ %i.ns, %middle.block286 ], [ %indvars.iv.next219, %scalar.ph266 ]
  %i.pf = trunc nuw i64 %indvars.iv.next219.lcssa to i32
  br label %.loopexit

.loopexit.loopexit203:                            ; preds = %scalar.ph, %middle.block
  %indvars.iv.next215.lcssa = phi i64 [ %i.mz, %middle.block ], [ %indvars.iv.next215, %scalar.ph ]
  %i.pg = trunc nuw i64 %indvars.iv.next215.lcssa to i32
  br label %.loopexit

end_hunk_0
