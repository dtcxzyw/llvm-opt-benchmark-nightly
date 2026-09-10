Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a

.loopexit807:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276
  %lpad.loopexit809 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp808:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp810 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread: ; preds = %bb.as, %bb.aq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit, %bb.ar, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290
  %.1193 = phi i1 [ %i.nd, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290 ], [ %.0192913, %bb.ar ], [ %.0192913, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit ], [ %.0192913, %bb.aq ], [ %.0192913, %bb.as ]
  %exitcond.not = icmp eq i64 %i.hw, %i.gi
  br i1 %exitcond.not, label %.loopexit796, label %.preheader, !llvm.loop !135

.loopexit796:                                     ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %.loopexit796
  call void @_ZN6Assimp3IFC13FilterPolygonERSt6vectorI10aiVector3tIdESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.ne = load ptr, ptr %11, align 8              ; 5 uses
  %i.nf = load ptr, ptr %.sroa.gep712, align 8
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %.critedge238, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nj = load double, ptr %i.nh, align 8, !noalias !197 ; 2 uses
  %i.nk = load double, ptr %i.ne, align 8, !noalias !197 ; 2 uses
  %i.nl = load double, ptr %i.ni, align 8, !noalias !197 ; 2 uses
  %i.nm = load <8 x double>, ptr %9, align 16, !noalias !197 ; 4 uses
  %i.nn = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.nq = fmul <2 x double> %i.no, %i.np
  %i.nr = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ns = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.nt, <2 x double> %i.nq)
  %i.nv = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.nw = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nx, <2 x double> %i.nu)
  %i.nz = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.oa = fadd <2 x double> %i.ny, %i.nz
  store <2 x double> %i.oa, ptr %13, align 16, !alias.scope !197
  %i.ob = load double, ptr %i.fm, align 16, !noalias !197
  %i.oc = load double, ptr %i.fn, align 8, !noalias !197
  %i.od = fmul double %i.nj, %i.oc
  %i.oe = call double @llvm.fmuladd.f64(double %i.ob, double %i.nk, double %i.od)
  %i.of = load double, ptr %i.fo, align 16, !noalias !197
  %i.og = call double @llvm.fmuladd.f64(double %i.of, double %i.nl, double %i.oe)
  %i.oh = load double, ptr %i.fp, align 8, !noalias !197
  %i.oi = fadd double %i.oh, %i.og
  store double %i.oi, ptr %i.fq, align 16, !alias.scope !197
  %i.oj = invoke noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.bf unwind label %.thread   ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ok = load ptr, ptr %.sroa.gep712, align 8    ; 2 uses
  %i.ol = load ptr, ptr %11, align 8              ; 3 uses
  %.not981 = icmp eq ptr %i.ok, %i.ol
  br i1 %.not981, label %._crit_edge929, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader: ; preds = %bb.bf
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = sdiv exact i64 %i.oo, 24
  %i.oq = zext i1 %i.oj to i8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit

._crit_edge929:                                   ; preds = %._crit_edge, %bb.bf
  %.sroa.0611.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.0611.1.lcssa, %._crit_edge ] ; 27 uses
  %.sroa.40.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.40.1.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.72.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.72.1.lcssa, %._crit_edge ] ; 7 uses
  %i.or = ptrtoint ptr %.sroa.40.0.lcssa to i64
  %i.os = ptrtoint ptr %.sroa.0611.0.lcssa to i64 ; 4 uses
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = sdiv exact i64 %i.ot, 40                ; 4 uses
  %i.ov = and i64 %i.ou, 1
  %.not206 = icmp eq i64 %i.ov, 0
  br i1 %.not206, label %bb.bu, label %bb.br

bb.bg:                                            ; preds = %.loopexit807, %.loopexit.split-lp808, %.loopexit802, %.loopexit.split-lp803, %.loopexit797, %.loopexit.split-lp798, %bb.ak, %bb.aj
  %.pn202.pn = phi { ptr, i32 } [ %i.ht, %bb.aj ], [ %lpad.loopexit.split-lp805, %.loopexit.split-lp803 ], [ %i.hu, %bb.ak ], [ %lpad.loopexit.split-lp800, %.loopexit.split-lp798 ], [ %lpad.loopexit799, %.loopexit797 ], [ %lpad.loopexit804, %.loopexit802 ], [ %lpad.loopexit809, %.loopexit807 ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp808 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

bb.bh:                                            ; preds = %.loopexit796
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

.thread:                                          ; preds = %bb.be
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader, %._crit_edge
  %i.oy = phi ptr [ %i.sx, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.oz = phi ptr [ %i.sy, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.pa = phi i64 [ %i.te, %._crit_edge ], [ %i.op, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ]
  %i.pb = phi ptr [ %i.ta, %._crit_edge ], [ %i.ol, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.0189928 = phi i8 [ %.lcssa820, %._crit_edge ], [ %i.oq, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %storemerge927 = phi i64 [ %i.qf, %._crit_edge ], [ 0, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 4 uses
  %.sroa.72.0926 = phi ptr [ %.sroa.72.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %.sroa.40.0925 = phi ptr [ %.sroa.40.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.sroa.0611.0924 = phi ptr [ %.sroa.0611.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %storemerge927 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.pd = load double, ptr %i.pc, align 8, !noalias !198
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pf = load double, ptr %i.pe, align 8, !noalias !198
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.ph = load double, ptr %i.pg, align 8, !noalias !198
  %i.pi = load <12 x double>, ptr %9, align 16, !noalias !198 ; 8 uses
  %i.pj = load double, ptr %i.fp, align 8, !noalias !198
  %i.pk = load double, ptr %i.fn, align 8, !noalias !198
  %i.pl = load double, ptr %i.fl, align 8, !noalias !198
  %i.pm = load double, ptr %i.fj, align 8, !noalias !198
  %i.pn = load <2 x double>, ptr %i.fh, align 8
  %i.po = load <2 x double>, ptr %i.ff, align 8
  %i.pp = insertelement <3 x double> poison, double %i.pf, i64 0
  %i.pq = shufflevector <3 x double> %i.pp, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pr = shufflevector <12 x double> %i.pi, <12 x double> poison, <3 x i32> <i32 9, i32 1, i32 5>
  %i.ps = fmul <3 x double> %i.pq, %i.pr
  %i.pt = shufflevector <12 x double> %i.pi, <12 x double> poison, <3 x i32> <i32 8, i32 0, i32 4>
  %i.pu = insertelement <3 x double> poison, double %i.pd, i64 0
  %i.pv = shufflevector <3 x double> %i.pu, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pw = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pt, <3 x double> %i.pv, <3 x double> %i.ps)
  %i.px = shufflevector <12 x double> %i.pi, <12 x double> poison, <3 x i32> <i32 10, i32 2, i32 6>
  %i.py = insertelement <3 x double> poison, double %i.ph, i64 0
  %i.pz = shufflevector <3 x double> %i.py, <3 x double> poison, <3 x i32> zeroinitializer
  %i.qa = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.px, <3 x double> %i.pz, <3 x double> %i.pw)
  %i.qb = shufflevector <12 x double> %i.pi, <12 x double> poison, <3 x i32> <i32 11, i32 3, i32 7>
  %i.qc = fadd <3 x double> %i.qa, %i.qb          ; 5 uses
  %i.qd = shufflevector <3 x double> %i.qc, <3 x double> poison, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qd, ptr %15, align 16, !alias.scope !198
  %i.qe = extractelement <3 x double> %i.qc, i64 0
  store double %i.qe, ptr %i.fr, align 16, !alias.scope !198
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.qf = add nuw i64 %storemerge927, 1           ; 4 uses
  %i.qg = icmp eq i64 %i.qf, %i.pa
  %i.qh = select i1 %i.qg, i64 0, i64 %i.qf
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %i.qh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.ql = load double, ptr %i.qj, align 8, !noalias !199 ; 2 uses
  %i.qm = load double, ptr %i.qi, align 8, !noalias !199 ; 2 uses
  %i.qn = load double, ptr %i.qk, align 8, !noalias !199 ; 2 uses
  %i.qo = insertelement <2 x double> %i.po, double %i.pm, i64 1
  %i.qp = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = fmul <2 x double> %i.qo, %i.qq
  %i.qs = shufflevector <12 x double> %i.pi, <12 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.qt = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qu = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qs, <2 x double> %i.qu, <2 x double> %i.qr)
  %i.qw = shufflevector <12 x double> %i.pi, <12 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.qx = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.qy, <2 x double> %i.qv)
  %i.ra = insertelement <2 x double> %i.pn, double %i.pl, i64 1
  %i.rb = fadd <2 x double> %i.ra, %i.qz
  store <2 x double> %i.rb, ptr %16, align 16, !alias.scope !199
  %i.rc = fmul double %i.pk, %i.ql
  %i.rd = extractelement <12 x double> %i.pi, i64 8
  %i.re = call double @llvm.fmuladd.f64(double %i.rd, double %i.qm, double %i.rc)
  %i.rf = extractelement <12 x double> %i.pi, i64 10
  %i.rg = call double @llvm.fmuladd.f64(double %i.rf, double %i.qn, double %i.re)
  %i.rh = fadd double %i.pj, %i.rg
  store double %i.rh, ptr %i.fs, align 16, !alias.scope !199
  %.not.i.i = icmp eq ptr %i.oy, %i.oz
  %spec.store.select = select i1 %.not.i.i, ptr %i.oy, ptr %i.oz
  store ptr %spec.store.select, ptr %i.ft, align 8
  %i.ri = trunc i8 %.0189928 to i1
  %i.rj = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i1 noundef zeroext %i.ri, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.rk = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.rl = load ptr, ptr %14, align 8              ; 6 uses
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = sub i64 %i.rm, %i.rn
  %i.rp = ashr exact i64 %i.ro, 5                 ; 2 uses
  %i.rq = icmp ugt i64 %i.rp, 1
  br i1 %i.rq, label %.preheader791, label %.loopexit792

.preheader791:                                    ; preds = %bb.bi
  %19 = add nsw i64 %i.rp, -1                     ; 2 uses
  %.not982 = icmp eq i64 %19, 0
  br i1 %.not982, label %.loopexit792, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader791
  %i.rr = shufflevector <3 x double> %i.qc, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rs = shufflevector <3 x double> %i.qc, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %20 = shufflevector <3 x double> %i.qc, <3 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.bk
  %.0185916.us = phi i64 [ %.mux, %bb.bk ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.1187915.us = phi i1 [ %.2188.us.mux, %bb.bk ], [ false, %.preheader.us.preheader ]
  %i.rt = add nuw i64 %.0185916.us, 1             ; 3 uses
  %i.ru = getelementptr inbounds nuw [32 x i8], ptr %i.rl, i64 %i.rt ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.rx = load double, ptr %i.rw, align 8, !noalias !200
  %i.ry = getelementptr inbounds nuw [32 x i8], ptr %i.rl, i64 %.0185916.us ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sb = load double, ptr %i.sa, align 8, !noalias !201
  %i.sc = load <2 x double>, ptr %i.rv, align 8, !noalias !200 ; 2 uses
  %i.sd = load <2 x double>, ptr %i.rz, align 8, !noalias !201 ; 2 uses
  %i.se = shufflevector <2 x double> %i.sc, <2 x double> %i.sd, <2 x i32> <i32 0, i32 2>
  %i.sf = fsub <2 x double> %i.se, %i.rr          ; 2 uses
  %i.sg = shufflevector <2 x double> %i.sc, <2 x double> %i.sd, <2 x i32> <i32 1, i32 3>
  %i.sh = fsub <2 x double> %i.sg, %i.rs          ; 2 uses
  %i.si = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.sj = insertelement <2 x double> %i.si, double %i.sb, i64 1
  %i.sk = fsub <2 x double> %i.sj, %20            ; 2 uses
  %i.sl = fmul <2 x double> %i.sh, %i.sh
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sf, <2 x double> %i.sl)
  %i.sn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sk, <2 x double> %i.sm) ; 2 uses
  %i.so = extractelement <2 x double> %i.sn, i64 0
  %i.sp = extractelement <2 x double> %i.sn, i64 1
  %i.sq = fcmp olt double %i.so, %i.sp
  br i1 %i.sq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader.us
  %i.sr = load i64, ptr %i.ru, align 8
  %i.ss = load i64, ptr %i.ry, align 8
  store i64 %i.ss, ptr %i.ru, align 8
  store i64 %i.sr, ptr %i.ry, align 8
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.rv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rv, ptr noundef nonnull align 8 dereferenceable(24) %i.rz, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.rz, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader.us
  %.2188.us = phi i1 [ true, %bb.bj ], [ %.1187915.us, %.preheader.us ] ; 2 uses
  %exitcond1065.not.a = icmp ne i64 %i.rt, %19    ; 3 uses
  %brmerge = select i1 %exitcond1065.not.a, i1 true, i1 %.2188.us
  %.mux = select i1 %exitcond1065.not.a, i64 %i.rt, i64 0
  %.2188.us.mux = select i1 %exitcond1065.not.a, i1 %.2188.us, i1 false
  br i1 %brmerge, label %.preheader.us, label %.loopexit792, !llvm.loop !146

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit792:                                     ; preds = %bb.bk, %.preheader791, %bb.bi
  %.not983 = icmp eq ptr %i.rk, %i.rl
  br i1 %.not983, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.su = trunc i64 %i.vr to i8
  %i.sv = lshr i8 %i.su, 5
  %i.sw = xor i8 %i.sv, %.0189928
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit792
  %i.sx = phi ptr [ %i.rk, %.loopexit792 ], [ %i.vn, %._crit_edge.loopexit ]
  %i.sy = phi ptr [ %i.rl, %.loopexit792 ], [ %i.vo, %._crit_edge.loopexit ]
  %.sroa.0611.1.lcssa = phi ptr [ %.sroa.0611.0924, %.loopexit792 ], [ %.sroa.0611.5, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.40.1.lcssa = phi ptr [ %.sroa.40.0925, %.loopexit792 ], [ %.sroa.40.7, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.72.1.lcssa = phi ptr [ %.sroa.72.0926, %.loopexit792 ], [ %.sroa.72.5, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa820 = phi i8 [ %.0189928, %.loopexit792 ], [ %i.sw, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.sz = load ptr, ptr %.sroa.gep712, align 8
  %i.ta = load ptr, ptr %11, align 8              ; 2 uses
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = sdiv exact i64 %i.td, 24                ; 2 uses
  %i.tf = icmp ult i64 %i.qf, %i.te
  br i1 %i.tf, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit, label %._crit_edge929, !llvm.loop !147

.lr.ph:                                           ; preds = %.loopexit792, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.tg = phi ptr [ %i.vo, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %i.rl, %.loopexit792 ]
  %.0184920 = phi i64 [ %i.vm, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ 0, %.loopexit792 ] ; 2 uses
  %.sroa.72.1919 = phi ptr [ %.sroa.72.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.72.0926, %.loopexit792 ] ; 7 uses
  %.sroa.40.1918 = phi ptr [ %.sroa.40.7, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.40.0925, %.loopexit792 ] ; 6 uses
  %.sroa.0611.1917 = phi ptr [ %.sroa.0611.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.0611.0924, %.loopexit792 ] ; 8 uses
  %i.th = getelementptr inbounds nuw [32 x i8], ptr %i.tg, i64 %.0184920 ; 5 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  %i.tl = load double, ptr %i.tj, align 8, !noalias !202 ; 2 uses
  %i.tm = load double, ptr %i.ti, align 8, !noalias !202 ; 2 uses
  %i.tn = load double, ptr %i.tk, align 8, !noalias !202 ; 2 uses
  %i.to = load <8 x double>, ptr %8, align 8, !noalias !202 ; 4 uses
  %i.tp = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.tq = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = shufflevector <8 x double> %i.to, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ts = fmul <2 x double> %i.tq, %i.tr
  %i.tt = shufflevector <8 x double> %i.to, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.tu = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> %i.tv, <2 x double> %i.ts)
  %i.tx = shufflevector <8 x double> %i.to, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ty = insertelement <2 x double> poison, double %i.tn, i64 0
  %i.tz = shufflevector <2 x double> %i.ty, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ua = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %i.tz, <2 x double> %i.tw)
  %i.ub = shufflevector <8 x double> %i.to, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.uc = fadd <2 x double> %i.ua, %i.ub          ; 2 uses
  %i.ud = load double, ptr %i.fu, align 8, !noalias !202
  %i.ue = load double, ptr %i.fv, align 8, !noalias !202
  %i.uf = fmul double %i.tl, %i.ue
  %i.ug = call double @llvm.fmuladd.f64(double %i.ud, double %i.tm, double %i.uf)
  %i.uh = load double, ptr %i.cl, align 8, !noalias !202
  %i.ui = call double @llvm.fmuladd.f64(double %i.uh, double %i.tn, double %i.ug)
  %i.uj = load double, ptr %i.cm, align 8, !noalias !202
  %i.uk = fadd double %i.uj, %i.ui                ; 2 uses
  %.not.i291 = icmp eq ptr %.sroa.40.1918, %.sroa.72.1919
  br i1 %.not.i291, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.ul = load i64, ptr %i.th, align 8
  store i64 %i.ul, ptr %.sroa.40.1918, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 8
  store <2 x double> %i.uc, ptr %i.um, align 8
  %.sroa.7597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 24
  store double %i.uk, ptr %.sroa.7597.0..sroa_idx, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 32
  store i64 %storemerge927, ptr %i.un, align 8
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.uo = ptrtoint ptr %.sroa.72.1919 to i64
  %i.up = ptrtoint ptr %.sroa.0611.1917 to i64
  %i.uq = sub i64 %i.uo, %i.up                    ; 4 uses
  %i.ur = icmp eq i64 %i.uq, 9223372036854775800
  br i1 %i.ur, label %bb.bo, label %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc428 unwind label %.loopexit.split-lp787

.noexc428:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bn
  %i.us = sdiv exact i64 %i.uq, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.us, i64 1)
  %i.ut = add nsw i64 %.sroa.speculated.i.i, %i.us ; 2 uses
  %i.uu = icmp ult i64 %i.ut, %i.us
  %i.uv = call i64 @llvm.umin.i64(i64 %i.ut, i64 230584300921369395)
  %i.uw = select i1 %i.uu, i64 230584300921369395, i64 %i.uv ; 3 uses
  %.not.i.i422 = icmp ne i64 %i.uw, 0
  call void @llvm.assume(i1 %.not.i.i422)
  %i.ux = mul nuw nsw i64 %i.uw, 40
  %i.uy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #23
          to label %.noexc429 unwind label %.loopexit786 ; 5 uses

.noexc429:                                        ; preds = %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.uq ; 4 uses
  %i.va = load i64, ptr %i.th, align 8
  store i64 %i.va, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store <2 x double> %i.uc, ptr %i.vb, align 8
  %.sroa.7597.0..sroa_idx598 = getelementptr inbounds nuw i8, ptr %i.uz, i64 24
  store double %i.uk, ptr %.sroa.7597.0..sroa_idx598, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  store i64 %storemerge927, ptr %i.vc, align 8
  %.not10.i.i.i.i423 = icmp eq ptr %.sroa.0611.1917, %.sroa.72.1919
  br i1 %.not10.i.i.i.i423, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424

.lr.ph.i.i.i.i424:                                ; preds = %.noexc429, %.lr.ph.i.i.i.i424
  %.012.i.i.i.i425 = phi ptr [ %i.vk, %.lr.ph.i.i.i.i424 ], [ %i.uy, %.noexc429 ] ; 4 uses
  %.0911.i.i.i.i426 = phi ptr [ %i.vj, %.lr.ph.i.i.i.i424 ], [ %.sroa.0611.1917, %.noexc429 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.vd = load i64, ptr %.0911.i.i.i.i426, align 8, !alias.scope !204, !noalias !203
  store i64 %i.vd, ptr %.012.i.i.i.i425, align 8, !alias.scope !203, !noalias !204
  %i.ve = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ve, ptr noundef nonnull align 8 dereferenceable(24) %i.vf, i64 24, i1 false), !alias.scope !205
  %i.vg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 32
  %i.vh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 32
  %i.vi = load i64, ptr %i.vh, align 8, !alias.scope !204, !noalias !203
  store i64 %i.vi, ptr %i.vg, align 8, !alias.scope !203, !noalias !204
  %i.vj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 40 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 40 ; 2 uses
  %.not.i.i.i.i427 = icmp eq ptr %i.vj, %.sroa.72.1919
  br i1 %.not.i.i.i.i427, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424, !llvm.loop !153

_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i: ; preds = %.lr.ph.i.i.i.i424, %.noexc429
  %.0.lcssa.i.i.i.i = phi ptr [ %i.uy, %.noexc429 ], [ %i.vk, %.lr.ph.i.i.i.i424 ]
  %.not.i25.i = icmp eq ptr %.sroa.0611.1917, null
  br i1 %.not.i25.i, label %.noexc292, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0611.1917, i64 noundef %i.uq) #24
  br label %.noexc292

.noexc292:                                        ; preds = %bb.bp, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i
  %i.vl = getelementptr inbounds nuw [40 x i8], ptr %i.uy, i64 %i.uw
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit: ; preds = %.noexc292, %bb.bm
  %.sroa.0611.5 = phi ptr [ %i.uy, %.noexc292 ], [ %.sroa.0611.1917, %bb.bm ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc292 ], [ %.sroa.40.1918, %bb.bm ]
  %.sroa.72.5 = phi ptr [ %i.vl, %.noexc292 ], [ %.sroa.72.1919, %bb.bm ] ; 2 uses
  %.sroa.40.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 40 ; 2 uses
  %i.vm = add nuw i64 %.0184920, 1                ; 2 uses
  %i.vn = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.vo = load ptr, ptr %14, align 8              ; 3 uses
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = ptrtoint ptr %i.vo to i64
  %i.vr = sub i64 %i.vp, %i.vq                    ; 2 uses
  %i.vs = ashr exact i64 %i.vr, 5
  %i.vt = icmp ult i64 %i.vm, %i.vs
  br i1 %i.vt, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !154

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
  %.pn224.pn = phi { ptr, i32 } [ %i.st, %bb.bl ], [ %lpad.loopexit788, %.loopexit786 ], [ %lpad.loopexit.split-lp789, %.loopexit.split-lp787 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ei

bb.br:                                            ; preds = %._crit_edge929
  %i.vu = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc293 unwind label %bb.bt

.noexc293:                                        ; preds = %bb.br
  br i1 %i.vu, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA87_KcEEEvDpOT_.exit, label %bb.bs

bb.bs:                                            ; preds = %.noexc293
  %i.vv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc294 unwind label %bb.bt

.noexc294:                                        ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.vw = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc295 unwind label %bb.bt

.noexc295:                                        ; preds = %.noexc294
  store ptr %i.vw, ptr %i.c, align 8
end_hunk_0
