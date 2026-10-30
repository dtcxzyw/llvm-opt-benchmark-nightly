Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %xtraiter1209 = and i64 %wide.trip.count648, 3  ; 2 uses
  %lcmp.mod1210.not = icmp eq i64 %xtraiter1209, 0
  br i1 %lcmp.mod1210.not, label %scalar.ph771.prol.loopexit, label %scalar.ph771.prol

scalar.ph771.prol:                                ; preds = %scalar.ph771.preheader, %scalar.ph771.prol
  %indvars.iv645.prol = phi i64 [ %indvars.iv.next646.prol, %scalar.ph771.prol ], [ %indvars.iv645.ph, %scalar.ph771.preheader ] ; 3 uses
  %prol.iter1211 = phi i64 [ %prol.iter1211.next, %scalar.ph771.prol ], [ 0, %scalar.ph771.preheader ]
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv645.prol
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !177
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv645.prol
  store float %i.asb, ptr %i.asc, align 4, !tbaa !177
  %indvars.iv.next646.prol = add nuw nsw i64 %indvars.iv645.prol, 1 ; 2 uses
  %prol.iter1211.next = add i64 %prol.iter1211, 1 ; 2 uses
  %prol.iter1211.cmp.not = icmp eq i64 %prol.iter1211.next, %xtraiter1209
  br i1 %prol.iter1211.cmp.not, label %scalar.ph771.prol.loopexit, label %scalar.ph771.prol, !llvm.loop !328

scalar.ph771.prol.loopexit:                       ; preds = %scalar.ph771.prol, %scalar.ph771.preheader
  %indvars.iv645.unr = phi i64 [ %indvars.iv645.ph, %scalar.ph771.preheader ], [ %indvars.iv.next646.prol, %scalar.ph771.prol ]
  %i.asd = sub nsw i64 %indvars.iv645.ph, %wide.trip.count648
  %i.ase = icmp ugt i64 %i.asd, -4
  br i1 %i.ase, label %._crit_edge595, label %scalar.ph771

._crit_edge595:                                   ; preds = %scalar.ph771.prol.loopexit, %scalar.ph771, %middle.block780, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %i.asf = getelementptr inbounds nuw i8, ptr %i.hv, i64 625
  store i8 1, ptr %i.asf, align 1, !tbaa !184
  %i.asg = load i32, ptr %i.ib, align 4, !tbaa !61
  %i.ash = icmp sgt i32 %i.asg, 0
  br i1 %i.ash, label %.lr.ph598, label %._crit_edge599

.lr.ph598:                                        ; preds = %._crit_edge595
  %i.asi = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  br label %bb.bq

scalar.ph771:                                     ; preds = %scalar.ph771.prol.loopexit, %scalar.ph771
  %indvars.iv645 = phi i64 [ %indvars.iv.next646.3, %scalar.ph771 ], [ %indvars.iv645.unr, %scalar.ph771.prol.loopexit ] ; 6 uses
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv645
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !177
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv645
  store float %i.ask, ptr %i.asl, align 4, !tbaa !177
  %indvars.iv.next646 = add nuw nsw i64 %indvars.iv645, 1 ; 2 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next646
  %i.asn = load float, ptr %i.asm, align 4, !tbaa !177
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.next646
  store float %i.asn, ptr %i.aso, align 4, !tbaa !177
  %indvars.iv.next646.1 = add nuw nsw i64 %indvars.iv645, 2 ; 2 uses
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next646.1
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !177
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.next646.1
  store float %i.asq, ptr %i.asr, align 4, !tbaa !177
  %indvars.iv.next646.2 = add nuw nsw i64 %indvars.iv645, 3 ; 2 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv.next646.2
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !177
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.next646.2
  store float %i.ast, ptr %i.asu, align 4, !tbaa !177
  %indvars.iv.next646.3 = add nuw nsw i64 %indvars.iv645, 4 ; 2 uses
  %exitcond649.not.3 = icmp eq i64 %indvars.iv.next646.3, %wide.trip.count648
  br i1 %exitcond649.not.3, label %._crit_edge595, label %scalar.ph771, !llvm.loop !329

._crit_edge599:                                   ; preds = %bb.br, %._crit_edge595
  %i.asv = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.asw = trunc nuw i8 %i.asv to i1
  %i.asx = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.asy = trunc nuw i8 %i.asx to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.asw, i1 noundef zeroext %i.asy)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bq, %.lr.ph.i441, %._crit_edge599
  %lpad.loopexit.split-lp1130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bz

bb.bq:                                            ; preds = %.lr.ph598, %bb.br
  %indvars.iv650 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next651, %bb.br ] ; 2 uses
  %i.asz = load ptr, ptr %i.asi, align 8, !tbaa !62
  %i.ata = getelementptr inbounds nuw [688 x i8], ptr %i.asz, i64 %indvars.iv650
  invoke void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.ata, ptr noundef null)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.atb = load i32, ptr %i.ib, align 4, !tbaa !61
  %i.atc = sext i32 %i.atb to i64
  %i.atd = icmp slt i64 %indvars.iv.next651, %i.atc
  br i1 %i.atd, label %bb.bq, label %._crit_edge599, !llvm.loop !330

bb.bs:                                            ; preds = %._crit_edge599
  %.not.i.i.i499.not = icmp eq ptr %i.anr, null
  br i1 %.not.i.i.i499.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.anr)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ate = landingpad { ptr, i32 }
          catch ptr null
  %i.atf = extractvalue { ptr, i32 } %i.ate, 0
  call void @__clang_call_terminate(ptr %i.atf) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i.i500.not = icmp eq ptr %i.anq, null
  br i1 %.not.i.i.i500.not, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.anq)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.atg = landingpad { ptr, i32 }
          catch ptr null
  %i.ath = extractvalue { ptr, i32 } %i.atg, 0
  call void @__clang_call_terminate(ptr %i.ath) #20
  unreachable

bb.bx:                                            ; preds = %bb.bv, %_ZN20btAlignedObjectArrayIfED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10521.2)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit505 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ati = landingpad { ptr, i32 }
          catch ptr null
  %i.atj = extractvalue { ptr, i32 } %i.ati, 0
  call void @__clang_call_terminate(ptr %i.atj) #20
  unreachable

bb.bz:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1130, %.loopexit.split-lp.loopexit.split-lp ], [ %i.apd, %bb.bo ]
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread536

.thread536:                                       ; preds = %bb.bz, %bb.bn
  %.pn244.pn.pn = phi { ptr, i32 } [ %i.apc, %bb.bn ], [ %.pn.pn.pn, %bb.bz ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10521.2)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit508 unwind label %bb.ca

bb.ca:                                            ; preds = %.thread536
  %i.atk = landingpad { ptr, i32 }
          catch ptr null
  %i.atl = extractvalue { ptr, i32 } %i.atk, 0
  call void @__clang_call_terminate(ptr %i.atl) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit505:         ; preds = %bb.bx, %bb.bd, %._crit_edge580
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.atm = load i32, ptr %i.a, align 4, !tbaa !20
  %i.atn = sext i32 %i.atm to i64
  %i.ato = icmp slt i64 %indvars.iv.next654, %i.atn
  br i1 %i.ato, label %bb.ad, label %._crit_edge602, !llvm.loop !331

_ZN20btAlignedObjectArrayIfED2Ev.exit508:         ; preds = %.thread531, %.thread536
  %.pn251 = phi { ptr, i32 } [ %i.qi, %.thread531 ], [ %.pn244.pn.pn, %.thread536 ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit508, %bb.ac
  %.pn251.pn = phi { ptr, i32 } [ %.pn251, %_ZN20btAlignedObjectArrayIfED2Ev.exit508 ], [ %i.hs, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.split-lp560

.loopexit.split-lp560:                            ; preds = %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %bb.cb, %bb.ab
  %.pn251.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.t ], [ %i.hr, %bb.ab ], [ %.pn251.pn, %bb.cb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn251.pn.pn.pn.pn.pn
}

declare void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640), float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = select i1 %.not, ptr %i.a, ptr %1        ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.f = load i32, ptr %i.e, align 4, !tbaa !185
  switch i32 %i.f, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load float, ptr %i.b, align 4, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = fmul float %i.h, -5.000000e-01           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load <2 x float>, ptr %i.g, align 8, !tbaa !177 ; 2 uses
  %i.s = load <2 x float>, ptr %i.i, align 4, !tbaa !177 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.s
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %2 = tail call noundef float @sqrtf(float noundef %i.x) #18
  %i.y = tail call noundef float @sinf(float noundef %i.j) #18
  %i.z = fdiv float %i.y, %2
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul <2 x float> %i.r, %i.ab            ; 4 uses
  %i.ad = fmul <2 x float> %i.s, %i.ab            ; 3 uses
  %i.ae = tail call noundef float @cosf(float noundef %i.j) #18 ; 2 uses
  %i.af = load float, ptr %i.l, align 4, !tbaa !177 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.k, align 8, !tbaa !177 ; 5 uses
  %i.ah = load <2 x float>, ptr %i.m, align 4, !tbaa !177 ; 4 uses
  %3 = shufflevector <2 x float> %i.ad, <2 x float> %i.ac, <2 x i32> <i32 1, i32 2> ; 2 uses
  %4 = insertelement <2 x float> poison, float %i.af, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul <2 x float> %3, %5
  %i.aj = fmul <2 x float> %i.ad, %5
  %i.ak = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.am, <2 x float> %i.ai)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ah, <2 x float> %i.aj)
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ah, <2 x float> %i.an)
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> %i.ag, <2 x float> %i.ao)
  %i.ar = fneg <2 x float> %i.ad                  ; 3 uses
  %i.as = fneg <2 x float> %i.ac
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ag, <2 x float> %i.ap) ; 5 uses
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.am, <2 x float> %i.aq) ; 3 uses
  %i.av = extractelement <2 x float> %i.ag, i64 0
  %i.aw = fneg float %i.av
  %i.ax = extractelement <2 x float> %i.ac, i64 0
  %i.ay = fmul float %i.ax, %i.aw
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %i.ay)
  %i.ba = extractelement <2 x float> %i.ar, i64 0
  %i.bb = extractelement <2 x float> %i.ag, i64 1
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bb, float %i.az)
  %i.bd = extractelement <2 x float> %i.ar, i64 1
  %i.be = extractelement <2 x float> %i.ah, i64 1
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.be, float %i.bc) ; 6 uses
  %i.bg = shufflevector <2 x float> %i.at, <2 x float> %i.au, <2 x i32> <i32 1, i32 2>
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %i.at, float %i.bf, i64 1
  store <2 x float> %i.bg, ptr %i.c, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.414.0..sroa_idx, align 8
  %i.bh = load <2 x float>, ptr %i.p, align 4, !tbaa !177 ; 5 uses
  %i.bi = load <2 x float>, ptr %i.o, align 8, !tbaa !177 ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.bk = fmul <2 x float> %i.au, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bi, <2 x float> %i.bk)
  %i.bo = fneg <2 x float> %i.at                  ; 3 uses
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bh, <2 x float> %i.bn) ; 3 uses
  %i.bq = extractelement <2 x float> %i.bh, i64 0
  %shift = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fmul <2 x float> %i.bh, %shift
  %i.br = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.bs = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bs, float %i.br)
  %i.bu = extractelement <2 x float> %i.au, i64 0 ; 3 uses
  %i.bv = fneg float %i.bu                        ; 3 uses
  %i.bw = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.bt) ; 3 uses
  %i.by = fneg float %i.bq
  %i.bz = fmul float %i.bu, %i.by
  %i.ca = extractelement <2 x float> %i.bo, i64 1 ; 3 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bw, float %i.bz)
  %i.cc = extractelement <2 x float> %i.bo, i64 0 ; 3 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.bs, float %i.cb) ; 3 uses
  %i.ce = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.cf = fmul float %i.bf, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ca, float %i.cf)
  %i.ch = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.cc, float %i.cg)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bu, float %i.ci)
  %i.ck = fmul float %i.bf, %i.ch
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bv, float %i.ck)
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.ca, float %i.cl)
  %i.cn = fmul float %i.bf, %i.bx
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cc, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bv, float %i.co)
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.at, <2 x float> %i.cr)
  %i.ct = load float, ptr %i.n, align 8, !tbaa !177
  %i.cu = fadd float %i.ct, %i.cj
  %i.cv = load <2 x float>, ptr %i.q, align 4, !tbaa !177
  %i.cw = fadd <2 x float> %i.cv, %i.cs
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.da = load float, ptr %i.cz, align 4, !tbaa !177 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.de = load float, ptr %i.cx, align 8, !tbaa !177
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !177
  %i.di = load float, ptr %i.b, align 4, !tbaa !177 ; 2 uses
  %i.dj = fmul float %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dl = load float, ptr %i.db, align 4, !tbaa !177 ; 4 uses
  %i.dm = load float, ptr %i.dc, align 8, !tbaa !177 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dd, align 4, !tbaa !177 ; 4 uses
  %i.do = load <2 x float>, ptr %i.cy, align 8, !tbaa !177 ; 3 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dq = insertelement <2 x float> %i.dp, float %i.dl, i64 0
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dm, i64 1
  %i.dt = fmul <2 x float> %i.dq, %i.ds
  %i.du = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.do, <2 x float> %i.dt)
  %i.dx = load float, ptr %i.c, align 8, !tbaa !177 ; 3 uses
  %i.dy = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dx, i64 1 ; 2 uses
  %i.ea = fneg <2 x float> %i.dz                  ; 4 uses
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dl, i64 1
  %i.ed = fneg <2 x float> %i.ec                  ; 3 uses
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.dn, <2 x float> %i.dw) ; 5 uses
  %i.ef = extractelement <2 x float> %i.dn, i64 0 ; 2 uses
  %i.eg = fmul float %i.ef, %i.dx
  %i.eh = extractelement <2 x float> %i.dn, i64 1 ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.da, float %i.eh, float %i.eg)
  %i.ej = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.ek = extractelement <2 x float> %i.ed, i64 1
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ej, float %i.ei) ; 3 uses
  %i.em = fneg float %i.ef
  %i.en = fmul float %i.dl, %i.em
  %i.eo = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ej, float %i.en)
  %i.eq = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eh, float %i.ep) ; 2 uses
  %i.es = extractelement <2 x float> %i.ee, i64 0
  %i.et = fmul float %i.da, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.er, float %i.eo, float %i.et)
  %i.ev = extractelement <2 x float> %i.ee, i64 1
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.eq, float %i.eu)
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.el, float %i.dl, float %i.ew)
  %i.ey = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ez = insertelement <2 x float> %i.ey, float %i.el, i64 1
  %i.fa = fmul <2 x float> %i.dv, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = shufflevector <2 x float> %i.ed, <2 x float> %i.ea, <2 x i32> <i32 1, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fd, <2 x float> %i.fa)
  %i.ff = insertelement <2 x float> poison, float %i.el, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.ed, <2 x float> %i.fe)
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.dz, <2 x float> %i.fh)
  %i.fj = fadd float %i.de, %i.ex
  %i.fk = load <2 x float>, ptr %i.df, align 4, !tbaa !177
  %i.fl = fadd <2 x float> %i.fk, %i.fi
  %i.fm = load <2 x float>, ptr %i.dk, align 4, !tbaa !177
  %i.fn = insertelement <2 x float> poison, float %i.di, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.fo, %i.fm
  %i.fq = fadd float %i.fj, %i.dj
  %i.fr = fadd <2 x float> %i.fl, %i.fp
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !177
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gb = load float, ptr %i.fy, align 8, !tbaa !177
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gd = fneg float %i.fu                        ; 2 uses
  %i.ge = load <2 x float>, ptr %i.b, align 4, !tbaa !177 ; 4 uses
  %i.gf = load <2 x float>, ptr %i.fs, align 4, !tbaa !177 ; 3 uses
  %i.gg = load float, ptr %i.fw, align 4, !tbaa !177 ; 2 uses
  %i.gh = load <2 x float>, ptr %i.fv, align 8, !tbaa !177 ; 5 uses
  %i.gi = load <2 x float>, ptr %i.fx, align 4, !tbaa !177 ; 4 uses
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> %i.ge, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gk = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul <2 x float> %i.gj, %i.gl
  %i.gn = fmul <2 x float> %i.gf, %i.gl
  %i.go = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = shufflevector <2 x float> %i.gi, <2 x float> %i.gh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gq, <2 x float> %i.gm)
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gi, <2 x float> %i.gn)
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gi, <2 x float> %i.gr)
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gh, <2 x float> %i.gs)
  %i.gv = fneg <2 x float> %i.gf                  ; 3 uses
  %i.gw = fneg <2 x float> %i.ge
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.gh, <2 x float> %i.gt) ; 5 uses
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.gq, <2 x float> %i.gu) ; 3 uses
  %i.gz = extractelement <2 x float> %i.gh, i64 0
  %i.ha = fneg float %i.gz
  %i.hb = extractelement <2 x float> %i.ge, i64 0
  %i.hc = fmul float %i.hb, %i.ha
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gg, float %i.hc)
  %i.he = extractelement <2 x float> %i.gv, i64 0
  %i.hf = extractelement <2 x float> %i.gh, i64 1
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hf, float %i.hd)
  %i.hh = extractelement <2 x float> %i.gv, i64 1
  %i.hi = extractelement <2 x float> %i.gi, i64 1
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hi, float %i.hg) ; 6 uses
  %i.hk = shufflevector <2 x float> %i.gx, <2 x float> %i.gy, <2 x i32> <i32 1, i32 2>
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> %i.gx, float %i.hj, i64 1
  store <2 x float> %i.hk, ptr %i.c, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %.sroa.48.0..sroa_idx, align 8
  %i.hl = load <2 x float>, ptr %i.ga, align 4, !tbaa !177 ; 5 uses
  %i.hm = load <2 x float>, ptr %i.fz, align 8, !tbaa !177 ; 3 uses
  %i.hn = shufflevector <2 x float> %i.hl, <2 x float> %i.hm, <2 x i32> <i32 1, i32 2>
  %i.ho = fmul <2 x float> %i.gy, %i.hn
  %i.hp = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hm, <2 x float> %i.ho)
  %i.hs = fneg <2 x float> %i.gx                  ; 3 uses
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.hl, <2 x float> %i.hr) ; 3 uses
  %i.hu = extractelement <2 x float> %i.hl, i64 0
  %shift165 = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop166 = fmul <2 x float> %i.hl, %shift165
  %i.hv = extractelement <2 x float> %foldExtExtBinop166, i64 0
  %i.hw = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.hw, float %i.hv)
  %i.hy = extractelement <2 x float> %i.gy, i64 0 ; 3 uses
  %i.hz = fneg float %i.hy                        ; 3 uses
  %i.ia = extractelement <2 x float> %i.hm, i64 0 ; 2 uses
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ia, float %i.hx) ; 3 uses
  %i.ic = fneg float %i.hu
  %i.id = fmul float %i.hy, %i.ic
  %i.ie = extractelement <2 x float> %i.hs, i64 1 ; 3 uses
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.ia, float %i.id)
  %i.ig = extractelement <2 x float> %i.hs, i64 0 ; 3 uses
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.hw, float %i.if) ; 3 uses
  %i.ii = extractelement <2 x float> %i.ht, i64 0 ; 2 uses
  %i.ij = fmul float %i.hj, %i.ii
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ie, float %i.ij)
  %i.il = extractelement <2 x float> %i.ht, i64 1 ; 2 uses
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.ig, float %i.ik)
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.hy, float %i.im)
  %i.io = fmul float %i.hj, %i.il
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.hz, float %i.io)
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.ie, float %i.ip)
  %i.ir = fmul float %i.hj, %i.ib
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ig, float %i.ir)
  %i.it = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.hz, float %i.is)
  %i.iu = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %i.it, i64 1
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.gx, <2 x float> %i.iv)
  %i.ix = fadd float %i.gb, %i.in
  %i.iy = load <2 x float>, ptr %i.gc, align 4, !tbaa !177
  %i.iz = fadd <2 x float> %i.iy, %i.iw
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jb = load float, ptr %i.b, align 4, !tbaa !177
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.jd = fmul float %i.jb, -5.000000e-01         ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.jp = load float, ptr %i.ja, align 8, !tbaa !177 ; 4 uses
  %i.jq = load <2 x float>, ptr %i.jc, align 4, !tbaa !177 ; 6 uses
  %foldExtExtBinop168 = fmul <2 x float> %i.jq, %i.jq
  %i.jr = extractelement <2 x float> %foldExtExtBinop168, i64 0
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.jr)
  %i.jt = extractelement <2 x float> %i.jq, i64 1 ; 2 uses
  %i.ju = tail call noundef float @llvm.fmuladd.f32(float %i.jt, float %i.jt, float %i.js) ; 2 uses
  %6 = tail call noundef float @sqrtf(float noundef %i.ju) #18
  %i.jv = tail call noundef float @sinf(float noundef %i.jd) #18
  %i.jw = fdiv float %i.jv, %6
  %i.jx = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jy = insertelement <2 x float> %i.jx, float %i.jp, i64 0
  %i.jz = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kb = fmul <2 x float> %i.jy, %i.ka           ; 4 uses
  %i.kc = fmul <2 x float> %i.jq, %i.ka           ; 3 uses
  %7 = tail call noundef float @cosf(float noundef %i.jd) #18 ; 2 uses
  %8 = load float, ptr %i.jf, align 4, !tbaa !177 ; 2 uses
  %i.kd = load <2 x float>, ptr %i.je, align 8, !tbaa !177 ; 5 uses
  %i.ke = load <2 x float>, ptr %i.jg, align 4, !tbaa !177 ; 4 uses
  %9 = shufflevector <2 x float> %i.kc, <2 x float> %i.kb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %10 = insertelement <2 x float> poison, float %8, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kf = fmul <2 x float> %9, %11
  %i.kg = fmul <2 x float> %i.kc, %11
  %i.kh = insertelement <2 x float> poison, float %7, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = shufflevector <2 x float> %i.ke, <2 x float> %i.kd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> %i.kj, <2 x float> %i.kf)
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> %i.ke, <2 x float> %i.kg)
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.ke, <2 x float> %i.kk)
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.kd, <2 x float> %i.kl)
  %i.ko = fneg <2 x float> %i.kc                  ; 3 uses
  %i.kp = fneg <2 x float> %i.kb
  %i.kq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.kd, <2 x float> %i.km) ; 5 uses
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kj, <2 x float> %i.kn) ; 4 uses
  %i.ks = extractelement <2 x float> %i.kd, i64 0
  %i.kt = fneg float %i.ks
  %i.ku = extractelement <2 x float> %i.kb, i64 0
  %i.kv = fmul float %i.ku, %i.kt
  %i.kw = tail call float @llvm.fmuladd.f32(float %7, float %8, float %i.kv)
  %i.kx = extractelement <2 x float> %i.ko, i64 0
  %i.ky = extractelement <2 x float> %i.kd, i64 1
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.ky, float %i.kw)
  %i.la = extractelement <2 x float> %i.ko, i64 1
  %i.lb = extractelement <2 x float> %i.ke, i64 1
  %i.lc = shufflevector <2 x float> %i.kq, <2 x float> %i.kr, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.lc, ptr %i.c, align 8
  %12 = tail call noundef float @sqrtf(float noundef %i.ju) #18
  %i.ld = insertelement <2 x float> %i.jx, float %i.jp, i64 1
  %i.le = fneg <2 x float> %i.kq                  ; 4 uses
  %i.lf = extractelement <2 x float> %i.kr, i64 0
  %i.lg = fneg float %i.lf                        ; 3 uses
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.la, float %i.lb, float %i.kz) ; 3 uses
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> %i.kq, float %i.lh, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %.sroa.44.0..sroa_idx, align 8
  %i.li = load float, ptr %i.b, align 4, !tbaa !177
  %i.lj = fmul float %i.li, -5.000000e-01         ; 2 uses
  %i.lk = tail call noundef float @sinf(float noundef %i.lj) #18
  %i.ll = fdiv float %i.lk, %12
  %i.lm = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lo = fmul <2 x float> %i.ld, %i.ln           ; 4 uses
  %i.lp = fmul <2 x float> %i.jq, %i.ln           ; 3 uses
  %i.lq = tail call noundef float @cosf(float noundef %i.lj) #18
  %i.lr = load float, ptr %i.ji, align 8, !tbaa !177
  %i.ls = load float, ptr %i.jh, align 4, !tbaa !177 ; 2 uses
  %i.lt = fmul float %i.lr, %i.ls
  %i.lu = load <2 x float>, ptr %i.jj, align 4, !tbaa !177
  %i.lv = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x float> %i.lw, %i.lu
  %i.ly = load float, ptr %i.jl, align 8, !tbaa !177
  %i.lz = load float, ptr %i.jk, align 4, !tbaa !177 ; 2 uses
  %i.ma = fmul float %i.ly, %i.lz
  %i.mb = load <2 x float>, ptr %i.jm, align 4, !tbaa !177
  %i.mc = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x float> %i.md, %i.mb
  %i.mf = fadd float %i.lt, %i.ma                 ; 3 uses
  %i.mg = fadd <2 x float> %i.lx, %i.me           ; 6 uses
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mi = insertelement <2 x float> %i.mh, float %i.mf, i64 1
  %i.mj = fmul <2 x float> %i.lp, %i.mi
  %i.mk = insertelement <2 x float> poison, float %i.lq, i64 0 ; 2 uses
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mm = insertelement <2 x float> poison, float %i.mf, i64 0 ; 2 uses
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.mo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.mn, <2 x float> %i.mj)
  %i.mp = fneg <2 x float> %i.lo                  ; 4 uses
  %i.mq = shufflevector <2 x float> %i.lo, <2 x float> %i.lp, <2 x i32> <i32 1, i32 2>
  %i.mr = fneg <2 x float> %i.mq                  ; 3 uses
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %i.mg, <2 x float> %i.mo) ; 5 uses
  %i.mt = load <2 x float>, ptr %i.jo, align 4, !tbaa !177 ; 5 uses
  %i.mu = load <2 x float>, ptr %i.jn, align 8, !tbaa !177 ; 4 uses
  %i.mv = shufflevector <2 x float> %i.lo, <2 x float> %i.mt, <2 x i32> <i32 1, i32 2>
  %i.mw = shufflevector <2 x float> %i.mg, <2 x float> %i.kq, <2 x i32> <i32 0, i32 3>
  %i.mx = fmul <2 x float> %i.mv, %i.mw
  %i.my = insertelement <2 x float> %i.mk, float %i.lh, i64 1 ; 2 uses
  %i.mz = shufflevector <2 x float> %i.mg, <2 x float> %i.mt, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.mz, <2 x float> %i.mx)
  %i.nb = shufflevector <2 x float> %i.mr, <2 x float> %i.mu, <2 x i32> <i32 1, i32 2>
  %i.nc = insertelement <2 x float> %i.mm, float %i.lg, i64 1
  %i.nd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nb, <2 x float> %i.nc, <2 x float> %i.na) ; 5 uses
  %i.ne = shufflevector <2 x float> %i.ms, <2 x float> %i.nd, <2 x i32> <i32 1, i32 2>
  %i.nf = fmul <2 x float> %i.ml, %i.ne
  %i.ng = shufflevector <2 x float> %i.mg, <2 x float> %i.mt, <2 x i32> <i32 0, i32 2>
  %i.nh = fneg <2 x float> %i.ng
  %i.ni = shufflevector <2 x float> %i.lp, <2 x float> %i.kr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nj = fmul <2 x float> %i.ni, %i.nh
  %i.nk = shufflevector <2 x float> %i.mp, <2 x float> %i.le, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nl = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nm = insertelement <2 x float> %i.nl, float %i.mf, i64 0
  %i.nn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nk, <2 x float> %i.nm, <2 x float> %i.nj)
  %i.no = shufflevector <2 x float> %i.mp, <2 x float> %i.le, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.np = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> %i.mz, <2 x float> %i.nn) ; 3 uses
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nr = shufflevector <2 x float> %i.mr, <2 x float> %i.mp, <2 x i32> <i32 1, i32 2>
  %i.ns = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.nr, <2 x float> %i.nf)
  %i.nt = shufflevector <2 x float> %i.nd, <2 x float> %i.ms, <2 x i32> <i32 0, i32 2>
  %i.nu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nt, <2 x float> %i.mr, <2 x float> %i.ns)
  %i.nv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.lo, <2 x float> %i.nu)
  %i.nw = shufflevector <2 x float> %i.mt, <2 x float> %i.mu, <2 x i32> <i32 1, i32 2>
  %i.nx = fmul <2 x float> %i.kr, %i.nw
  %i.ny = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> %i.mu, <2 x float> %i.nx)
  %i.ob = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.mt, <2 x float> %i.oa) ; 5 uses
  %i.oc = shufflevector <2 x float> %i.ms, <2 x float> %i.ob, <2 x i32> <i32 0, i32 2>
  %i.od = fmul <2 x float> %i.my, %i.oc
  %i.oe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> %i.nk, <2 x float> %i.od)
  %i.of = shufflevector <2 x float> %i.ms, <2 x float> %i.ob, <2 x i32> <i32 1, i32 3>
  %i.og = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.of, <2 x float> %i.no, <2 x float> %i.oe)
  %i.oh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> %i.ni, <2 x float> %i.og)
  %i.oi = shufflevector <2 x float> %i.ob, <2 x float> %i.nd, <2 x i32> <i32 1, i32 3>
  %i.oj = fmul <2 x float> %i.nz, %i.oi
  %i.ok = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.om = insertelement <2 x float> %i.ol, float %i.lg, i64 0
  %i.on = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ok, <2 x float> %i.om, <2 x float> %i.oj)
  %i.oo = shufflevector <2 x float> %i.nd, <2 x float> %i.ob, <2 x i32> <i32 1, i32 2>
  %i.op = insertelement <2 x float> %i.ol, float %i.lg, i64 1
  %i.oq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oo, <2 x float> %i.op, <2 x float> %i.on)
  %i.or = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> %i.kq, <2 x float> %i.oq)
  %i.os = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.oh)
  %i.ot = fadd <2 x float> %i.nv, %i.or
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.ou, i64 16, i1 false)
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !177 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pc = load float, ptr %i.ov, align 8, !tbaa !177
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pe = load float, ptr %i.oz, align 4, !tbaa !177 ; 4 uses
  %i.pf = load float, ptr %i.pa, align 8, !tbaa !177 ; 2 uses
  %i.pg = load <2 x float>, ptr %i.pb, align 4, !tbaa !177 ; 4 uses
  %i.ph = load <2 x float>, ptr %i.ow, align 8, !tbaa !177 ; 3 uses
  %i.pi = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pj = insertelement <2 x float> %i.pi, float %i.pe, i64 0
  %i.pk = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pl = insertelement <2 x float> %i.pk, float %i.pf, i64 1
  %i.pm = fmul <2 x float> %i.pj, %i.pl
  %i.pn = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.ph, <2 x float> %i.pm)
  %i.pq = load float, ptr %i.c, align 8, !tbaa !177 ; 3 uses
  %i.pr = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %i.pq, i64 1 ; 2 uses
  %i.pt = fneg <2 x float> %i.ps                  ; 4 uses
  %i.pu = insertelement <2 x float> poison, float %i.pq, i64 0
  %i.pv = insertelement <2 x float> %i.pu, float %i.pe, i64 1
  %i.pw = fneg <2 x float> %i.pv                  ; 3 uses
  %i.px = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pt, <2 x float> %i.pg, <2 x float> %i.pp) ; 5 uses
  %i.py = extractelement <2 x float> %i.pg, i64 0 ; 2 uses
  %i.pz = fmul float %i.py, %i.pq
  %i.qa = extractelement <2 x float> %i.pg, i64 1 ; 2 uses
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.qa, float %i.pz)
  %i.qc = extractelement <2 x float> %i.ph, i64 0 ; 2 uses
  %i.qd = extractelement <2 x float> %i.pw, i64 1
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.qc, float %i.qb) ; 3 uses
  %i.qf = fneg float %i.py
  %i.qg = fmul float %i.pe, %i.qf
  %i.qh = extractelement <2 x float> %i.pt, i64 1 ; 2 uses
  %i.qi = tail call float @llvm.fmuladd.f32(float %i.qh, float %i.qc, float %i.qg)
  %i.qj = extractelement <2 x float> %i.pt, i64 0 ; 2 uses
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.qa, float %i.qi) ; 2 uses
  %i.ql = extractelement <2 x float> %i.px, i64 0
  %i.qm = fmul float %i.oy, %i.ql
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qh, float %i.qm)
  %i.qo = extractelement <2 x float> %i.px, i64 1
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.qj, float %i.qn)
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.qe, float %i.pe, float %i.qp)
  %i.qr = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qs = insertelement <2 x float> %i.qr, float %i.qe, i64 1
  %i.qt = fmul <2 x float> %i.po, %i.qs
  %i.qu = insertelement <2 x float> poison, float %i.qk, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qw = shufflevector <2 x float> %i.pw, <2 x float> %i.pt, <2 x i32> <i32 1, i32 2>
  %i.qx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qv, <2 x float> %i.qw, <2 x float> %i.qt)
  %i.qy = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qz = shufflevector <2 x float> %i.qy, <2 x float> %i.px, <2 x i32> <i32 0, i32 2>
  %i.ra = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qz, <2 x float> %i.pw, <2 x float> %i.qx)
  %i.rb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.px, <2 x float> %i.ps, <2 x float> %i.ra)
  %i.rc = fadd float %i.pc, %i.qq
  %i.rd = load <2 x float>, ptr %i.pd, align 4, !tbaa !177
  %i.re = fadd <2 x float> %i.rd, %i.rb
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sink161 = phi float [ %i.rc, %bb.f ], [ %i.os, %bb.e ], [ %i.ix, %bb.d ], [ %i.fq, %bb.c ], [ %i.cu, %bb.b ]
  %i.rf = phi <2 x float> [ %i.re, %bb.f ], [ %i.ot, %bb.e ], [ %i.iz, %bb.d ], [ %i.fr, %bb.c ], [ %i.cw, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.insert.i119 = insertelement <2 x float> poison, float %.sink161, i64 0
  %i.rg = shufflevector <2 x float> %.sroa.0.0.vec.insert.i119, <2 x float> %i.rf, <2 x i32> <i32 0, i32 2>
  %i.rh = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.rf, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.rg, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store <2 x float> %i.rh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ri, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rj, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !79
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btMultiBodyDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(508) %0, float noundef %1)
  tail call void @_ZN24btMultiBodyDynamicsWorld28integrateMultiBodyTransformsEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1)
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(508), float noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btMultiBodyDynamicsWorld28integrateMultiBodyTransformsEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI34btSortConstraintOnIslandPredicate2EEvRKT_ii:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.bl, label %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i, label %.preheader.split, !llvm.loop !409

.preheader.split:                                 ; preds = %_ZNK34btSortConstraintOnIslandPredicate2clEPK17btTypedConstraintS2_.exit
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.bn = sext i32 %.0 to i64
  br label %bb.h

bb.h:                                             ; preds = %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36, %.preheader.split
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36 ], [ %i.bn, %.preheader.split ] ; 5 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv78
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !122 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !126, !nonnull !31, !align !127
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !120 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !128, !nonnull !31, !align !127
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 228
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !120
  br label %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36

_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36: ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ %i.bt, %bb.h ]
  %i.ca = icmp slt i32 %i.ax, %i.bz
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1
  br i1 %i.ca, label %bb.h, label %.split54, !llvm.loop !410

.split54:                                         ; preds = %_Z24btGetConstraintIslandId2PK17btTypedConstraint.exit.i36
  %i.cb = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cc = trunc nsw i64 %indvars.iv78 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv78
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split54
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv78
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !122
  store ptr %i.ba, ptr %i.cd, align 8, !tbaa !122
  %i.ce = add nsw i32 %i.cb, 1
  %i.cf = add nsw i32 %i.cc, -1
  br label %bb.k

bb.k:                                             ; preds = %.split54, %bb.j
  %.232 = phi i32 [ %i.ce, %bb.j ], [ %i.cb, %.split54 ] ; 3 uses
  %.2 = phi i32 [ %i.cf, %bb.j ], [ %i.cc, %.split54 ] ; 3 uses
  %.not35 = icmp sgt i32 %.232, %.2
  br i1 %.not35, label %.split66.us, label %.split, !llvm.loop !411

.split66.us:                                      ; preds = %bb.k, %bb.f
  %.us-phi67 = phi i32 [ %.232.us, %bb.f ], [ %.232, %bb.k ] ; 2 uses
  %.us-phi68 = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.k ] ; 2 uses
  %i.cg = icmp slt i32 %.tr39, %.us-phi68
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split66.us
  tail call void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI34btSortConstraintOnIslandPredicate2EEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr39, i32 noundef %.us-phi68)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split66.us
  %i.ch = icmp slt i32 %.us-phi67, %3
  br i1 %i.ch, label %tailrecurse, label %bb.n

bb.n:                                             ; preds = %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIP21btMultiBodyConstraintE17quickSortInternalI42btSortMultiBodyConstraintOnIslandPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr37 = phi i32 [ %2, %bb.a ], [ %.232, %bb.j ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.c = add nsw i32 %.tr37, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %tailrecurse
  %.030 = phi i32 [ %.tr37, %tailrecurse ], [ %.232, %bb.g ]
  %.0 = phi i32 [ %3, %tailrecurse ], [ %.2, %bb.g ]
  %i.h = sext i32 %.030 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135  ; 4 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412 ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412
  %i.t = icmp slt i32 %i.o, 0
  %i.u = select i1 %i.t, i32 %i.s, i32 %i.o
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.k), !inline_history !412 ; 2 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.k), !inline_history !412
  %i.ad = icmp slt i32 %i.y, 0
  %i.ae = select i1 %i.ad, i32 %i.ac, i32 %i.y
  %i.af = icmp slt i32 %i.ae, %i.u
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.af, label %bb.c, label %.preheader, !llvm.loop !413

.preheader:                                       ; preds = %bb.c
  %i.ag = sext i32 %.0 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %bb.d ], [ %i.ag, %.preheader ] ; 5 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv42
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !135 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj), !inline_history !412 ; 2 uses
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj), !inline_history !412
  %i.as = icmp slt i32 %i.an, 0
  %i.at = select i1 %i.as, i32 %i.ar, i32 %i.an
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(96) %i.g), !inline_history !412
  %i.bc = icmp slt i32 %i.ax, 0
  %i.bd = select i1 %i.bc, i32 %i.bb, i32 %i.ax
  %i.be = icmp slt i32 %i.bd, %i.at
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  br i1 %i.be, label %bb.d, label %bb.e, !llvm.loop !414

bb.e:                                             ; preds = %bb.d
  %i.bf = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv42 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv42
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv42 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !135
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !135
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !135
  %i.bm = add nsw i32 %i.bf, 1
  %i.bn = add nsw i32 %i.bg, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.232 = phi i32 [ %i.bm, %bb.f ], [ %i.bf, %bb.e ] ; 4 uses
  %.2 = phi i32 [ %i.bn, %bb.f ], [ %i.bg, %bb.e ] ; 4 uses
  %.not35 = icmp sgt i32 %.232, %.2
  br i1 %.not35, label %bb.h, label %bb.b, !llvm.loop !415

bb.h:                                             ; preds = %bb.g
  %i.bo = icmp slt i32 %.tr37, %.2
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN20btAlignedObjectArrayIP21btMultiBodyConstraintE17quickSortInternalI42btSortMultiBodyConstraintOnIslandPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr37, i32 noundef %.2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bp = icmp slt i32 %.232, %3
  br i1 %i.bp, label %tailrecurse, label %bb.k

bb.k:                                             ; preds = %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = distinct !{!4, !25}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTS18btAlignedAllocatorIP11btMultiBodyLj16EE"}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 _ZTS11btMultiBody", !16, i64 0}
!18 = !{!"bool", !10, i64 0}
!19 = !{!"_ZTS20btAlignedObjectArrayIP11btMultiBodyE", !14, i64 0, !11, i64 4, !11, i64 8, !17, i64 16, !18, i64 24}
!20 = !{!19, !11, i64 4}
!21 = !{!19, !11, i64 8}
!22 = !{!19, !17, i64 16}
!23 = !{!"p1 _ZTS11btMultiBody", !15, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!19, !18, i64 24}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"p1 _ZTS23btMultiBodyLinkCollider", !15, i64 0}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!"_ZTS9btVector3", !10, i64 0}
!35 = !{!"_ZTS10btQuadWord", !10, i64 0}
!36 = !{!"_ZTS12btQuaternion", !35, i64 0}
!37 = !{!"float", !10, i64 0}
!38 = !{!"_ZTS18btAlignedAllocatorI15btMultibodyLinkLj16EE"}
!39 = !{!"p1 _ZTS15btMultibodyLink", !15, i64 0}
!40 = !{!"_ZTS20btAlignedObjectArrayI15btMultibodyLinkE", !38, i64 0, !11, i64 4, !11, i64 8, !39, i64 16, !18, i64 24}
!41 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!42 = !{!"p1 float", !15, i64 0}
!43 = !{!"_ZTS20btAlignedObjectArrayIfE", !41, i64 0, !11, i64 4, !11, i64 8, !42, i64 16, !18, i64 24}
!44 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!45 = !{!"p1 _ZTS9btVector3", !15, i64 0}
!46 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !44, i64 0, !11, i64 4, !11, i64 8, !45, i64 16, !18, i64 24}
!47 = !{!"_ZTS18btAlignedAllocatorI11btMatrix3x3Lj16EE"}
!48 = !{!"p1 _ZTS11btMatrix3x3", !15, i64 0}
!49 = !{!"_ZTS20btAlignedObjectArrayI11btMatrix3x3E", !47, i64 0, !11, i64 4, !11, i64 8, !48, i64 16, !18, i64 24}
!50 = !{!"_ZTS11btMatrix3x3", !10, i64 0}
!51 = !{!"_ZTS11btMultiBody", !32, i64 8, !33, i64 16, !34, i64 24, !34, i64 40, !36, i64 56, !36, i64 72, !37, i64 88, !34, i64 92, !34, i64 108, !34, i64 124, !34, i64 140, !34, i64 156, !40, i64 176, !43, i64 208, !43, i64 240, !43, i64 272, !46, i64 304, !49, i64 336, !50, i64 368, !50, i64 416, !50, i64 464, !50, i64 512, !18, i64 560, !18, i64 561, !18, i64 562, !18, i64 563, !18, i64 564, !37, i64 568, !37, i64 572, !37, i64 576, !15, i64 584, !11, i64 592, !11, i64 596, !11, i64 600, !37, i64 604, !37, i64 608, !18, i64 612, !37, i64 616, !37, i64 620, !18, i64 624, !18, i64 625, !11, i64 628, !11, i64 632, !18, i64 636, !18, i64 637, !18, i64 638, !18, i64 639}
!52 = !{!51, !32, i64 8}
!53 = !{!"_ZTS11btTransform", !50, i64 0, !34, i64 48}
!54 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!55 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!56 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!57 = !{!"p2 _ZTS17btCollisionObject", !16, i64 0}
!58 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !56, i64 0, !11, i64 4, !11, i64 8, !57, i64 16, !18, i64 24}
!59 = !{!"_ZTS17btCollisionObject", !53, i64 8, !53, i64 72, !34, i64 136, !34, i64 152, !34, i64 168, !11, i64 184, !37, i64 188, !54, i64 192, !55, i64 200, !15, i64 208, !55, i64 216, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !37, i64 244, !37, i64 248, !37, i64 252, !37, i64 256, !37, i64 260, !37, i64 264, !37, i64 268, !11, i64 272, !15, i64 280, !11, i64 288, !11, i64 292, !11, i64 296, !37, i64 300, !37, i64 304, !37, i64 308, !11, i64 312, !58, i64 320, !11, i64 352, !34, i64 356}
!60 = !{!59, !11, i64 240}
!61 = !{!40, !11, i64 4}
!62 = !{!40, !39, i64 16}
!63 = !{!"_ZTS21btSpatialMotionVector", !34, i64 0, !34, i64 16}
!64 = !{!"_ZTSN15btMultibodyLink22eFeatherstoneJointTypeE", !10, i64 0}
!65 = !{!"p1 _ZTS24btMultiBodyJointFeedback", !15, i64 0}
!66 = !{!"_ZTS15btMultibodyLink", !37, i64 0, !34, i64 4, !11, i64 20, !36, i64 24, !34, i64 40, !34, i64 56, !63, i64 72, !63, i64 104, !10, i64 136, !11, i64 328, !11, i64 332, !36, i64 336, !34, i64 352, !36, i64 368, !34, i64 384, !34, i64 400, !34, i64 416, !34, i64 432, !34, i64 448, !10, i64 464, !10, i64 492, !10, i64 520, !32, i64 544, !11, i64 552, !11, i64 556, !11, i64 560, !64, i64 564, !65, i64 568, !53, i64 576, !33, i64 640, !33, i64 648, !15, i64 656, !37, i64 664, !37, i64 668, !37, i64 672, !37, i64 676, !37, i64 680, !37, i64 684}
!67 = !{!66, !32, i64 544}
!68 = !{!"_ZTS18btAlignedAllocatorI12btQuaternionLj16EE"}
!69 = !{!"p1 _ZTS12btQuaternion", !15, i64 0}
!70 = !{!"_ZTS20btAlignedObjectArrayI12btQuaternionE", !68, i64 0, !11, i64 4, !11, i64 8, !69, i64 16, !18, i64 24}
!71 = !{!70, !11, i64 4}
!72 = !{!70, !11, i64 8}
!73 = !{!70, !69, i64 16}
!74 = !{!70, !18, i64 24}
!75 = !{!46, !11, i64 4}
!76 = !{!46, !11, i64 8}
!77 = !{!46, !45, i64 16}
!78 = !{!10, !10, i64 0}
!79 = !{i64 0, i64 16, !78}
!80 = !{!46, !18, i64 24}
!81 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!82 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !81, i64 0, !11, i64 4, !11, i64 8, !57, i64 16, !18, i64 24}
!83 = !{!"p1 _ZTS12btDispatcher", !15, i64 0}
!84 = !{!"p1 _ZTS12btIDebugDraw", !15, i64 0}
!85 = !{!"_ZTS16btDispatcherInfo", !37, i64 0, !11, i64 4, !11, i64 8, !37, i64 12, !18, i64 16, !84, i64 24, !18, i64 32, !18, i64 33, !18, i64 34, !37, i64 36, !18, i64 40, !37, i64 44, !18, i64 48}
!86 = !{!"p1 _ZTS21btBroadphaseInterface", !15, i64 0}
!87 = !{!"_ZTS16btCollisionWorld", !82, i64 8, !83, i64 40, !85, i64 48, !86, i64 104, !84, i64 112, !18, i64 120}
!88 = !{!"_ZTS23btContactSolverInfoData", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !11, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !11, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !37, i64 100, !37, i64 104, !37, i64 108, !37, i64 112, !18, i64 116, !18, i64 117, !11, i64 120, !11, i64 124}
!89 = !{!"_ZTS19btContactSolverInfo", !88, i64 0}
!90 = !{!"_ZTS15btDynamicsWorld", !87, i64 0, !15, i64 128, !15, i64 136, !15, i64 144, !89, i64 152}
!91 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!92 = !{!"p2 _ZTS17btTypedConstraint", !16, i64 0}
!93 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !91, i64 0, !11, i64 4, !11, i64 8, !92, i64 16, !18, i64 24}
!94 = !{!"p1 _ZTS27InplaceSolverIslandCallback", !15, i64 0}
!95 = !{!"p1 _ZTS18btConstraintSolver", !15, i64 0}
!96 = !{!"p1 _ZTS25btSimulationIslandManager", !15, i64 0}
!97 = !{!"_ZTS18btAlignedAllocatorIP11btRigidBodyLj16EE"}
!98 = !{!"p2 _ZTS11btRigidBody", !16, i64 0}
!99 = !{!"_ZTS20btAlignedObjectArrayIP11btRigidBodyE", !97, i64 0, !11, i64 4, !11, i64 8, !98, i64 16, !18, i64 24}
!100 = !{!"_ZTS18btAlignedAllocatorIP17btActionInterfaceLj16EE"}
!101 = !{!"p2 _ZTS17btActionInterface", !16, i64 0}
!102 = !{!"_ZTS20btAlignedObjectArrayIP17btActionInterfaceE", !100, i64 0, !11, i64 4, !11, i64 8, !101, i64 16, !18, i64 24}
!103 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!104 = !{!"p2 _ZTS20btPersistentManifold", !16, i64 0}
!105 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !103, i64 0, !11, i64 4, !11, i64 8, !104, i64 16, !18, i64 24}
!106 = !{!"_ZTS11btSpinMutex", !11, i64 0}
!107 = !{!"_ZTS23btDiscreteDynamicsWorld", !90, i64 0, !93, i64 280, !94, i64 312, !95, i64 320, !96, i64 328, !93, i64 336, !99, i64 368, !34, i64 400, !37, i64 416, !37, i64 420, !18, i64 424, !18, i64 425, !18, i64 426, !18, i64 427, !102, i64 432, !11, i64 464, !18, i64 468, !105, i64 472, !106, i64 504}
!108 = !{!107, !96, i64 328}
!109 = !{!87, !83, i64 40}
!110 = !{!"vtable pointer", !9, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!105, !11, i64 4}
!113 = !{!105, !104, i64 16}
!114 = !{!93, !11, i64 4}
!115 = !{!93, !92, i64 16}
!116 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTS13btTypedObject", !11, i64 0}
!119 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!120 = !{!59, !11, i64 228}
!121 = !{!"p1 _ZTS17btTypedConstraint", !15, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"p1 _ZTS11btRigidBody", !15, i64 0}
!124 = !{!"p1 _ZTS15btJointFeedback", !15, i64 0}
!125 = !{!"_ZTS17btTypedConstraint", !118, i64 8, !11, i64 12, !10, i64 16, !37, i64 24, !18, i64 28, !18, i64 29, !11, i64 32, !123, i64 40, !123, i64 48, !37, i64 56, !37, i64 60, !124, i64 64}
!126 = !{!125, !123, i64 40}
!127 = !{i64 8}
!128 = !{!125, !123, i64 48}
!129 = !{!"_ZTS18btAlignedAllocatorIP21btMultiBodyConstraintLj16EE"}
!130 = !{!"p2 _ZTS21btMultiBodyConstraint", !16, i64 0}
!131 = !{!"_ZTS20btAlignedObjectArrayIP21btMultiBodyConstraintE", !129, i64 0, !11, i64 4, !11, i64 8, !130, i64 16, !18, i64 24}
!132 = !{!131, !11, i64 4}
!133 = !{!131, !130, i64 16}
!134 = !{!"p1 _ZTS21btMultiBodyConstraint", !15, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"p1 _ZTS27btMultiBodyConstraintSolver", !15, i64 0}
!137 = !{!"p1 _ZTS36MultiBodyInplaceSolverIslandCallback", !15, i64 0}
!138 = !{!"_ZTS24btMultiBodyDynamicsWorld", !107, i64 0, !19, i64 512, !131, i64 544, !131, i64 576, !136, i64 608, !137, i64 616, !70, i64 624, !46, i64 656, !70, i64 688, !46, i64 720, !43, i64 752, !46, i64 784, !49, i64 816}
!139 = !{!138, !137, i64 616}
!140 = !{!131, !18, i64 24}
!141 = !{!131, !11, i64 8}
!142 = !{!138, !136, i64 608}
!143 = !{!43, !18, i64 24}
!144 = !{!43, !42, i64 16}
!145 = !{!43, !11, i64 4}
!146 = !{!43, !11, i64 8}
!147 = !{!49, !18, i64 24}
!148 = !{!49, !48, i64 16}
!149 = !{!49, !11, i64 4}
!150 = !{!49, !11, i64 8}
!151 = !{!"_ZTSN25btSimulationIslandManager14IslandCallbackE"}
!152 = !{!"p1 _ZTS19btContactSolverInfo", !15, i64 0}
!153 = !{!"_ZTS18btAlignedAllocatorI21btSolverAnalyticsDataLj16EE"}
!154 = !{!"p1 _ZTS21btSolverAnalyticsData", !15, i64 0}
!155 = !{!"_ZTS20btAlignedObjectArrayI21btSolverAnalyticsDataE", !153, i64 0, !11, i64 4, !11, i64 8, !154, i64 16, !18, i64 24}
!156 = !{!"_ZTS36MultiBodyInplaceSolverIslandCallback", !151, i64 0, !152, i64 8, !136, i64 16, !130, i64 24, !11, i64 32, !92, i64 40, !11, i64 48, !84, i64 56, !83, i64 64, !82, i64 72, !82, i64 104, !105, i64 136, !93, i64 168, !131, i64 200, !155, i64 232}
!157 = !{!156, !152, i64 8}
end_hunk_1
