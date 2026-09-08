Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287, %bb.az
  %i.nc = xor i1 %.0192913, true
  br label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread

.loopexit807:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276
  %lpad.loopexit809 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp808:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp810 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread: ; preds = %bb.as, %bb.aq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit, %bb.ar, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290
  %.1193 = phi i1 [ %i.nc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290 ], [ %.0192913, %bb.ar ], [ %.0192913, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit ], [ %.0192913, %bb.aq ], [ %.0192913, %bb.as ]
  %exitcond.not = icmp eq i64 %i.hv, %i.gh
  br i1 %exitcond.not, label %.loopexit796, label %.preheader, !llvm.loop !135

.loopexit796:                                     ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %.loopexit796
  call void @_ZN6Assimp3IFC13FilterPolygonERSt6vectorI10aiVector3tIdESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.nd = load ptr, ptr %11, align 8              ; 4 uses
  %i.ne = load ptr, ptr %.sroa.gep712, align 8
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %.critedge238, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.ng = load <3 x double>, ptr %i.nd, align 8, !noalias !197 ; 5 uses
  %i.nh = load double, ptr %i.nd, align 8, !noalias !197
  %i.ni = load <8 x double>, ptr %9, align 16, !noalias !197 ; 4 uses
  %i.nj = shufflevector <3 x double> %i.ng, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nk = shufflevector <8 x double> %i.ni, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.nl = fmul <2 x double> %i.nj, %i.nk
  %i.nm = shufflevector <8 x double> %i.ni, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.nn = shufflevector <3 x double> %i.ng, <3 x double> poison, <2 x i32> zeroinitializer
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nn, <2 x double> %i.nl)
  %i.np = shufflevector <8 x double> %i.ni, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.nq = shufflevector <3 x double> %i.ng, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nq, <2 x double> %i.no)
  %i.ns = shufflevector <8 x double> %i.ni, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.nt = fadd <2 x double> %i.nr, %i.ns
  store <2 x double> %i.nt, ptr %13, align 16, !alias.scope !197
  %i.nu = load double, ptr %i.fm, align 16, !noalias !197
  %i.nv = load double, ptr %i.fn, align 8, !noalias !197
  %i.nw = extractelement <3 x double> %i.ng, i64 1
  %i.nx = fmul double %i.nw, %i.nv
  %i.ny = call double @llvm.fmuladd.f64(double %i.nu, double %i.nh, double %i.nx)
  %i.nz = load double, ptr %i.fo, align 16, !noalias !197
  %i.oa = extractelement <3 x double> %i.ng, i64 2
  %i.ob = call double @llvm.fmuladd.f64(double %i.nz, double %i.oa, double %i.ny)
  %i.oc = load double, ptr %i.fp, align 8, !noalias !197
  %i.od = fadd double %i.oc, %i.ob
  store double %i.od, ptr %i.fq, align 16, !alias.scope !197
  %i.oe = invoke noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.bf unwind label %.thread   ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.of = load ptr, ptr %.sroa.gep712, align 8    ; 2 uses
  %i.og = load ptr, ptr %11, align 8              ; 3 uses
  %.not981 = icmp eq ptr %i.of, %i.og
  br i1 %.not981, label %._crit_edge929, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader: ; preds = %bb.bf
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = sdiv exact i64 %i.oj, 24
  %i.ol = zext i1 %i.oe to i8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit

._crit_edge929:                                   ; preds = %._crit_edge, %bb.bf
  %.sroa.0611.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.0611.1.lcssa, %._crit_edge ] ; 27 uses
  %.sroa.40.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.40.1.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.72.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.72.1.lcssa, %._crit_edge ] ; 7 uses
  %i.om = ptrtoint ptr %.sroa.40.0.lcssa to i64
  %i.on = ptrtoint ptr %.sroa.0611.0.lcssa to i64 ; 4 uses
  %i.oo = sub i64 %i.om, %i.on
  %i.op = sdiv exact i64 %i.oo, 40                ; 4 uses
  %i.oq = and i64 %i.op, 1
  %.not206 = icmp eq i64 %i.oq, 0
  br i1 %.not206, label %bb.bu, label %bb.br

bb.bg:                                            ; preds = %.loopexit807, %.loopexit.split-lp808, %.loopexit802, %.loopexit.split-lp803, %.loopexit797, %.loopexit.split-lp798, %bb.ak, %bb.aj
  %.pn202.pn = phi { ptr, i32 } [ %i.hs, %bb.aj ], [ %lpad.loopexit.split-lp805, %.loopexit.split-lp803 ], [ %i.ht, %bb.ak ], [ %lpad.loopexit.split-lp800, %.loopexit.split-lp798 ], [ %lpad.loopexit799, %.loopexit797 ], [ %lpad.loopexit804, %.loopexit802 ], [ %lpad.loopexit809, %.loopexit807 ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp808 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

bb.bh:                                            ; preds = %.loopexit796
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

.thread:                                          ; preds = %bb.be
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader, %._crit_edge
  %i.ot = phi ptr [ %i.ss, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.ou = phi ptr [ %i.st, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.ov = phi i64 [ %i.sz, %._crit_edge ], [ %i.ok, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ]
  %i.ow = phi ptr [ %i.sv, %._crit_edge ], [ %i.og, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.0189928 = phi i8 [ %.lcssa820, %._crit_edge ], [ %i.ol, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %storemerge927 = phi i64 [ %i.qa, %._crit_edge ], [ 0, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 4 uses
  %.sroa.72.0926 = phi ptr [ %.sroa.72.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %.sroa.40.0925 = phi ptr [ %.sroa.40.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.sroa.0611.0924 = phi ptr [ %.sroa.0611.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %i.ow, i64 %storemerge927 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.oy = load double, ptr %i.ox, align 8, !noalias !198
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load double, ptr %i.oz, align 8, !noalias !198
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pc = load double, ptr %i.pb, align 8, !noalias !198
  %i.pd = load <12 x double>, ptr %9, align 16, !noalias !198 ; 8 uses
  %i.pe = load double, ptr %i.fp, align 8, !noalias !198
  %i.pf = load double, ptr %i.fn, align 8, !noalias !198
  %i.pg = load double, ptr %i.fl, align 8, !noalias !198
  %i.ph = load double, ptr %i.fj, align 8, !noalias !198
  %i.pi = load <2 x double>, ptr %i.fh, align 8
  %i.pj = load <2 x double>, ptr %i.ff, align 8
  %i.pk = insertelement <3 x double> poison, double %i.pa, i64 0
  %i.pl = shufflevector <3 x double> %i.pk, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pm = shufflevector <12 x double> %i.pd, <12 x double> poison, <3 x i32> <i32 9, i32 1, i32 5>
  %i.pn = fmul <3 x double> %i.pl, %i.pm
  %i.po = shufflevector <12 x double> %i.pd, <12 x double> poison, <3 x i32> <i32 8, i32 0, i32 4>
  %i.pp = insertelement <3 x double> poison, double %i.oy, i64 0
  %i.pq = shufflevector <3 x double> %i.pp, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pr = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.po, <3 x double> %i.pq, <3 x double> %i.pn)
  %i.ps = shufflevector <12 x double> %i.pd, <12 x double> poison, <3 x i32> <i32 10, i32 2, i32 6>
  %i.pt = insertelement <3 x double> poison, double %i.pc, i64 0
  %i.pu = shufflevector <3 x double> %i.pt, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pv = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ps, <3 x double> %i.pu, <3 x double> %i.pr)
  %i.pw = shufflevector <12 x double> %i.pd, <12 x double> poison, <3 x i32> <i32 11, i32 3, i32 7>
  %i.px = fadd <3 x double> %i.pv, %i.pw          ; 5 uses
  %i.py = shufflevector <3 x double> %i.px, <3 x double> poison, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.py, ptr %15, align 16, !alias.scope !198
  %i.pz = extractelement <3 x double> %i.px, i64 0
  store double %i.pz, ptr %i.fr, align 16, !alias.scope !198
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.qa = add nuw i64 %storemerge927, 1           ; 4 uses
  %i.qb = icmp eq i64 %i.qa, %i.ov
  %i.qc = select i1 %i.qb, i64 0, i64 %i.qa
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.ow, i64 %i.qc ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qg = load double, ptr %i.qe, align 8, !noalias !199 ; 2 uses
  %i.qh = load double, ptr %i.qd, align 8, !noalias !199 ; 2 uses
  %i.qi = load double, ptr %i.qf, align 8, !noalias !199 ; 2 uses
  %i.qj = insertelement <2 x double> %i.pj, double %i.ph, i64 1
  %i.qk = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = fmul <2 x double> %i.qj, %i.ql
  %i.qn = shufflevector <12 x double> %i.pd, <12 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.qo = insertelement <2 x double> poison, double %i.qh, i64 0
  %i.qp = shufflevector <2 x double> %i.qo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> %i.qp, <2 x double> %i.qm)
  %i.qr = shufflevector <12 x double> %i.pd, <12 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.qs = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qt = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> %i.qt, <2 x double> %i.qq)
  %i.qv = insertelement <2 x double> %i.pi, double %i.pg, i64 1
  %i.qw = fadd <2 x double> %i.qv, %i.qu
  store <2 x double> %i.qw, ptr %16, align 16, !alias.scope !199
  %i.qx = fmul double %i.pf, %i.qg
  %i.qy = extractelement <12 x double> %i.pd, i64 8
  %i.qz = call double @llvm.fmuladd.f64(double %i.qy, double %i.qh, double %i.qx)
  %i.ra = extractelement <12 x double> %i.pd, i64 10
  %i.rb = call double @llvm.fmuladd.f64(double %i.ra, double %i.qi, double %i.qz)
  %i.rc = fadd double %i.pe, %i.rb
  store double %i.rc, ptr %i.fs, align 16, !alias.scope !199
  %.not.i.i = icmp eq ptr %i.ot, %i.ou
  %spec.store.select = select i1 %.not.i.i, ptr %i.ot, ptr %i.ou
  store ptr %spec.store.select, ptr %i.ft, align 8
  %i.rd = trunc i8 %.0189928 to i1
  %i.re = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i1 noundef zeroext %i.rd, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.rf = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.rg = load ptr, ptr %14, align 8              ; 6 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = ashr exact i64 %i.rj, 5                 ; 2 uses
  %i.rl = icmp ugt i64 %i.rk, 1
  br i1 %i.rl, label %.preheader791, label %.loopexit792

.preheader791:                                    ; preds = %bb.bi
  %19 = add nsw i64 %i.rk, -1                     ; 2 uses
  %.not982 = icmp eq i64 %19, 0
  br i1 %.not982, label %.loopexit792, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader791
  %i.rm = shufflevector <3 x double> %i.px, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rn = shufflevector <3 x double> %i.px, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %20 = shufflevector <3 x double> %i.px, <3 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.bk
  %.0185916.us = phi i64 [ %.mux, %bb.bk ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.1187915.us = phi i1 [ %.2188.us.mux, %bb.bk ], [ false, %.preheader.us.preheader ]
  %i.ro = add nuw i64 %.0185916.us, 1             ; 3 uses
  %i.rp = getelementptr inbounds nuw [32 x i8], ptr %i.rg, i64 %i.ro ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rs = load double, ptr %i.rr, align 8, !noalias !200
  %i.rt = getelementptr inbounds nuw [32 x i8], ptr %i.rg, i64 %.0185916.us ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.rw = load double, ptr %i.rv, align 8, !noalias !201
  %i.rx = load <2 x double>, ptr %i.rq, align 8, !noalias !200 ; 2 uses
  %i.ry = load <2 x double>, ptr %i.ru, align 8, !noalias !201 ; 2 uses
  %i.rz = shufflevector <2 x double> %i.rx, <2 x double> %i.ry, <2 x i32> <i32 0, i32 2>
  %i.sa = fsub <2 x double> %i.rz, %i.rm          ; 2 uses
  %i.sb = shufflevector <2 x double> %i.rx, <2 x double> %i.ry, <2 x i32> <i32 1, i32 3>
  %i.sc = fsub <2 x double> %i.sb, %i.rn          ; 2 uses
  %i.sd = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.se = insertelement <2 x double> %i.sd, double %i.rw, i64 1
  %i.sf = fsub <2 x double> %i.se, %20            ; 2 uses
  %i.sg = fmul <2 x double> %i.sc, %i.sc
  %i.sh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.sa, <2 x double> %i.sg)
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sf, <2 x double> %i.sh) ; 2 uses
  %i.sj = extractelement <2 x double> %i.si, i64 0
  %i.sk = extractelement <2 x double> %i.si, i64 1
  %i.sl = fcmp olt double %i.sj, %i.sk
  br i1 %i.sl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader.us
  %i.sm = load i64, ptr %i.rp, align 8
  %i.sn = load i64, ptr %i.rt, align 8
  store i64 %i.sn, ptr %i.rp, align 8
  store i64 %i.sm, ptr %i.rt, align 8
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.rq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rq, ptr noundef nonnull align 8 dereferenceable(24) %i.ru, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.ru, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader.us
  %.2188.us = phi i1 [ true, %bb.bj ], [ %.1187915.us, %.preheader.us ] ; 2 uses
  %exitcond1065.not = icmp ne i64 %i.ro, %19      ; 3 uses
  %brmerge = select i1 %exitcond1065.not, i1 true, i1 %.2188.us
  %.mux = select i1 %exitcond1065.not, i64 %i.ro, i64 0
  %.2188.us.mux = select i1 %exitcond1065.not, i1 %.2188.us, i1 false
  br i1 %brmerge, label %.preheader.us, label %.loopexit792, !llvm.loop !146

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit792:                                     ; preds = %bb.bk, %.preheader791, %bb.bi
  %.not983 = icmp eq ptr %i.rf, %i.rg
  br i1 %.not983, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.sp = trunc i64 %i.vi to i8
  %i.sq = lshr i8 %i.sp, 5
  %i.sr = xor i8 %i.sq, %.0189928
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit792
  %i.ss = phi ptr [ %i.rf, %.loopexit792 ], [ %i.ve, %._crit_edge.loopexit ]
  %i.st = phi ptr [ %i.rg, %.loopexit792 ], [ %i.vf, %._crit_edge.loopexit ]
  %.sroa.0611.1.lcssa = phi ptr [ %.sroa.0611.0924, %.loopexit792 ], [ %.sroa.0611.5, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.40.1.lcssa = phi ptr [ %.sroa.40.0925, %.loopexit792 ], [ %.sroa.40.7, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.72.1.lcssa = phi ptr [ %.sroa.72.0926, %.loopexit792 ], [ %.sroa.72.5, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa820 = phi i8 [ %.0189928, %.loopexit792 ], [ %i.sr, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.su = load ptr, ptr %.sroa.gep712, align 8
  %i.sv = load ptr, ptr %11, align 8              ; 2 uses
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = sdiv exact i64 %i.sy, 24                ; 2 uses
  %i.ta = icmp ult i64 %i.qa, %i.sz
  br i1 %i.ta, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit, label %._crit_edge929, !llvm.loop !147

.lr.ph:                                           ; preds = %.loopexit792, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.tb = phi ptr [ %i.vf, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %i.rg, %.loopexit792 ]
  %.0184920 = phi i64 [ %i.vd, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ 0, %.loopexit792 ] ; 2 uses
  %.sroa.72.1919 = phi ptr [ %.sroa.72.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.72.0926, %.loopexit792 ] ; 7 uses
  %.sroa.40.1918 = phi ptr [ %.sroa.40.7, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.40.0925, %.loopexit792 ] ; 6 uses
  %.sroa.0611.1917 = phi ptr [ %.sroa.0611.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.0611.0924, %.loopexit792 ] ; 8 uses
  %i.tc = getelementptr inbounds nuw [32 x i8], ptr %i.tb, i64 %.0184920 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8 ; 2 uses
  %i.te = load <3 x double>, ptr %i.td, align 8, !noalias !202 ; 5 uses
  %i.tf = load double, ptr %i.td, align 8, !noalias !202
  %i.tg = load <8 x double>, ptr %8, align 8, !noalias !202 ; 4 uses
  %i.th = shufflevector <3 x double> %i.te, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ti = shufflevector <8 x double> %i.tg, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.tj = fmul <2 x double> %i.th, %i.ti
  %i.tk = shufflevector <8 x double> %i.tg, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.tl = shufflevector <3 x double> %i.te, <3 x double> poison, <2 x i32> zeroinitializer
  %i.tm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %i.tl, <2 x double> %i.tj)
  %i.tn = shufflevector <8 x double> %i.tg, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.to = shufflevector <3 x double> %i.te, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.tp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tn, <2 x double> %i.to, <2 x double> %i.tm)
  %i.tq = shufflevector <8 x double> %i.tg, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.tr = fadd <2 x double> %i.tp, %i.tq          ; 2 uses
  %i.ts = load double, ptr %i.fu, align 8, !noalias !202
  %i.tt = load double, ptr %i.fv, align 8, !noalias !202
  %i.tu = extractelement <3 x double> %i.te, i64 1
  %i.tv = fmul double %i.tu, %i.tt
  %i.tw = call double @llvm.fmuladd.f64(double %i.ts, double %i.tf, double %i.tv)
  %i.tx = load double, ptr %i.cl, align 8, !noalias !202
  %i.ty = extractelement <3 x double> %i.te, i64 2
  %i.tz = call double @llvm.fmuladd.f64(double %i.tx, double %i.ty, double %i.tw)
  %i.ua = load double, ptr %i.cm, align 8, !noalias !202
  %i.ub = fadd double %i.ua, %i.tz                ; 2 uses
  %.not.i291 = icmp eq ptr %.sroa.40.1918, %.sroa.72.1919
  br i1 %.not.i291, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.uc = load i64, ptr %i.tc, align 8
  store i64 %i.uc, ptr %.sroa.40.1918, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 8
  store <2 x double> %i.tr, ptr %i.ud, align 8
  %.sroa.7597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 24
  store double %i.ub, ptr %.sroa.7597.0..sroa_idx, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 32
  store i64 %storemerge927, ptr %i.ue, align 8
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.uf = ptrtoint ptr %.sroa.72.1919 to i64
  %i.ug = ptrtoint ptr %.sroa.0611.1917 to i64
  %i.uh = sub i64 %i.uf, %i.ug                    ; 4 uses
  %i.ui = icmp eq i64 %i.uh, 9223372036854775800
  br i1 %i.ui, label %bb.bo, label %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc428 unwind label %.loopexit.split-lp787

.noexc428:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bn
  %i.uj = sdiv exact i64 %i.uh, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.uj, i64 1)
  %i.uk = add nsw i64 %.sroa.speculated.i.i, %i.uj ; 2 uses
  %i.ul = icmp ult i64 %i.uk, %i.uj
  %i.um = call i64 @llvm.umin.i64(i64 %i.uk, i64 230584300921369395)
  %i.un = select i1 %i.ul, i64 230584300921369395, i64 %i.um ; 3 uses
  %.not.i.i422 = icmp ne i64 %i.un, 0
  call void @llvm.assume(i1 %.not.i.i422)
  %i.uo = mul nuw nsw i64 %i.un, 40
  %i.up = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uo) #23
          to label %.noexc429 unwind label %.loopexit786 ; 5 uses

.noexc429:                                        ; preds = %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uh ; 4 uses
  %i.ur = load i64, ptr %i.tc, align 8
  store i64 %i.ur, ptr %i.uq, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store <2 x double> %i.tr, ptr %i.us, align 8
  %.sroa.7597.0..sroa_idx598 = getelementptr inbounds nuw i8, ptr %i.uq, i64 24
  store double %i.ub, ptr %.sroa.7597.0..sroa_idx598, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  store i64 %storemerge927, ptr %i.ut, align 8
  %.not10.i.i.i.i423 = icmp eq ptr %.sroa.0611.1917, %.sroa.72.1919
  br i1 %.not10.i.i.i.i423, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424

.lr.ph.i.i.i.i424:                                ; preds = %.noexc429, %.lr.ph.i.i.i.i424
  %.012.i.i.i.i425 = phi ptr [ %i.vb, %.lr.ph.i.i.i.i424 ], [ %i.up, %.noexc429 ] ; 4 uses
  %.0911.i.i.i.i426 = phi ptr [ %i.va, %.lr.ph.i.i.i.i424 ], [ %.sroa.0611.1917, %.noexc429 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.uu = load i64, ptr %.0911.i.i.i.i426, align 8, !alias.scope !204, !noalias !203
  store i64 %i.uu, ptr %.012.i.i.i.i425, align 8, !alias.scope !203, !noalias !204
  %i.uv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uv, ptr noundef nonnull align 8 dereferenceable(24) %i.uw, i64 24, i1 false), !alias.scope !205
  %i.ux = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 32
  %i.uy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 32
  %i.uz = load i64, ptr %i.uy, align 8, !alias.scope !204, !noalias !203
  store i64 %i.uz, ptr %i.ux, align 8, !alias.scope !203, !noalias !204
  %i.va = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 40 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 40 ; 2 uses
  %.not.i.i.i.i427 = icmp eq ptr %i.va, %.sroa.72.1919
  br i1 %.not.i.i.i.i427, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424, !llvm.loop !153

_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i: ; preds = %.lr.ph.i.i.i.i424, %.noexc429
  %.0.lcssa.i.i.i.i = phi ptr [ %i.up, %.noexc429 ], [ %i.vb, %.lr.ph.i.i.i.i424 ]
  %.not.i25.i = icmp eq ptr %.sroa.0611.1917, null
  br i1 %.not.i25.i, label %.noexc292, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0611.1917, i64 noundef %i.uh) #24
  br label %.noexc292

.noexc292:                                        ; preds = %bb.bp, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i
  %i.vc = getelementptr inbounds nuw [40 x i8], ptr %i.up, i64 %i.un
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit: ; preds = %.noexc292, %bb.bm
  %.sroa.0611.5 = phi ptr [ %i.up, %.noexc292 ], [ %.sroa.0611.1917, %bb.bm ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc292 ], [ %.sroa.40.1918, %bb.bm ]
  %.sroa.72.5 = phi ptr [ %i.vc, %.noexc292 ], [ %.sroa.72.1919, %bb.bm ] ; 2 uses
  %.sroa.40.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 40 ; 2 uses
  %i.vd = add nuw i64 %.0184920, 1                ; 2 uses
  %i.ve = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.vf = load ptr, ptr %14, align 8              ; 3 uses
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = ptrtoint ptr %i.vf to i64
  %i.vi = sub i64 %i.vg, %i.vh                    ; 2 uses
  %i.vj = ashr exact i64 %i.vi, 5
  %i.vk = icmp ult i64 %i.vd, %i.vj
  br i1 %i.vk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !154

.loopexit786:                                     ; preds = %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit788 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp787:                            ; preds = %bb.bo
  %lpad.loopexit.split-lp789 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit786, %.loopexit.split-lp787, %bb.bl
  %.sroa.0611.2 = phi ptr [ %.sroa.0611.0924, %bb.bl ], [ %.sroa.0611.1917, %.loopexit786 ], [ %.sroa.0611.1917, %.loopexit.split-lp787 ]
  %.sroa.72.2 = phi ptr [ %.sroa.72.0926, %bb.bl ], [ %.sroa.72.1919, %.loopexit786 ], [ %.sroa.72.1919, %.loopexit.split-lp787 ]
  %.pn224.pn = phi { ptr, i32 } [ %i.so, %bb.bl ], [ %lpad.loopexit788, %.loopexit786 ], [ %lpad.loopexit.split-lp789, %.loopexit.split-lp787 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ei

bb.br:                                            ; preds = %._crit_edge929
  %i.vl = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc293 unwind label %bb.bt

.noexc293:                                        ; preds = %bb.br
  br i1 %i.vl, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA87_KcEEEvDpOT_.exit, label %bb.bs

bb.bs:                                            ; preds = %.noexc293
  %i.vm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc294 unwind label %bb.bt

.noexc294:                                        ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.vn = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc295 unwind label %bb.bt

.noexc295:                                        ; preds = %.noexc294
  store ptr %i.vn, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA87_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.vm, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(87) @.str.3)
          to label %.noexc296 unwind label %bb.bt

.noexc296:                                        ; preds = %.noexc295
end_hunk_0
