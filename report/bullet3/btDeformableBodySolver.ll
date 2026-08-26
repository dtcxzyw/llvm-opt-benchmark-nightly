Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN22btDeformableBodySolver26solveDeformableConstraintsEf:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !142, !range !34, !noundef !46
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !143
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = invoke noundef i32 @_ZN19btConjugateGradientI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(504) %i.ah, ptr noundef nonnull align 8 dereferenceable(25) %i.ag, ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i1 noundef zeroext false)
          to label %.loopexit.sink.split unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 1, ptr %i.al, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 1, ptr %i.ap, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.as, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !143
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_ZN34btDeformableBackwardEulerObjective24addLagrangeMultiplierRHSERK20btAlignedObjectArrayI9btVector3ES4_RS2_(ptr noundef nonnull align 8 dereferenceable(504) %i.at, ptr noundef nonnull align 8 dereferenceable(25) %i.ab, ptr noundef nonnull align 8 dereferenceable(25) %i.au, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !143
  invoke void @_ZN34btDeformableBackwardEulerObjective21addLagrangeMultiplierERK20btAlignedObjectArrayI9btVector3ERS2_(ptr noundef nonnull align 8 dereferenceable(504) %i.av, ptr noundef nonnull align 8 dereferenceable(25) %i.au, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !143
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !146 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ad, align 8, !tbaa !142, !range !34, !noundef !46
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !143 ; 2 uses
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bg = invoke noundef i32 @_ZN19btConjugateGradientI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b(ptr noundef nonnull align 8 dereferenceable(144) %i.bf, ptr noundef nonnull align 8 dereferenceable(504) %i.be, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %3, i1 noundef zeroext false)
          to label %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77 unwind label %bb.q ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bi = invoke noundef i32 @_ZN19btConjugateResidualI34btDeformableBackwardEulerObjectiveE5solveERS0_R20btAlignedObjectArrayI9btVector3ERKS5_b(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, ptr noundef nonnull align 8 dereferenceable(504) %i.be, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %3, i1 noundef zeroext false)
          to label %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77 unwind label %bb.q ; 0 uses

_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77: ; preds = %bb.l, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_ZN22btDeformableBodySolver11computeStepER20btAlignedObjectArrayI9btVector3ERKS2_.exit77
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.bn, null
  %i.bo = load i8, ptr %i.ap, align 8, !range !34
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.bp, i1 false
  br i1 %or.cond.i.i, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.m:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i78 = icmp ne ptr %i.bs, null
  %i.bt = load i8, ptr %i.al, align 8, !range !34
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i.i79 = select i1 %.not.i.i.i78, i1 %i.bu, i1 false
  br i1 %or.cond.i.i79, label %bb.o, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit80

bb.o:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bs)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit80 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit80: ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bd

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.by = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.r, label %._crit_edge, !llvm.loop !187

bb.s:                                             ; preds = %.lr.ph157, %.critedge
  %.053156 = phi i32 [ 0, %.lr.ph157 ], [ %i.mf, %.critedge ] ; 2 uses
  invoke void @_ZN22btDeformableBodySolver11updateStateEv(ptr noundef nonnull align 8 dereferenceable(609) %0)
          to label %.preheader unwind label %bb.t

.preheader:                                       ; preds = %bb.s
  %i.cf = load i32, ptr %i.g, align 4, !tbaa !135 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph152, label %._crit_edge153

._crit_edge153:                                   ; preds = %._crit_edge149, %.preheader
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !143
  invoke void @_ZN34btDeformableBackwardEulerObjective15computeResidualEfR20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.ch, float noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %i.l)
          to label %bb.x unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph152:                                        ; preds = %.preheader, %._crit_edge149
  %i.cj = phi i32 [ %i.ct, %._crit_edge149 ], [ %i.cf, %.preheader ]
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._crit_edge149 ], [ 0, %.preheader ] ; 2 uses
  %.050150 = phi i32 [ %.1.lcssa, %._crit_edge149 ], [ 0, %.preheader ] ; 2 uses
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv171
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !188 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 932 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !190 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %.lr.ph152
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 944
  %i.cr = sext i32 %.050150 to i64
  br label %bb.u

._crit_edge149.loopexit:                          ; preds = %bb.w
  %i.cs = trunc nsw i64 %indvars.iv.next167.a to i32
  %.pre177 = load i32, ptr %i.g, align 4, !tbaa !135
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %.lr.ph152
  %i.ct = phi i32 [ %i.cj, %.lr.ph152 ], [ %.pre177, %._crit_edge149.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.050150, %.lr.ph152 ], [ %i.cs, %._crit_edge149.loopexit ]
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next172, %i.cu
  br i1 %i.cv, label %.lr.ph152, label %._crit_edge153, !llvm.loop !194

bb.u:                                             ; preds = %.lr.ph148, %bb.w
  %i.cw = phi i32 [ %i.co, %.lr.ph148 ], [ %i.do, %bb.w ]
  %indvars.iv166 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next165, %bb.w ] ; 2 uses
  %indvars.iv164 = phi i64 [ %i.cr, %.lr.ph148 ], [ %indvars.iv.next167.a, %bb.w ] ; 3 uses
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !195
  %i.cy = getelementptr inbounds nuw [256 x i8], ptr %i.cx, i64 %indvars.iv166
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %i.da = load float, ptr %i.cz, align 8, !tbaa !196 ; 2 uses
  %i.db = fcmp ogt float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = fdiv float -1.000000e+00, %i.da         ; 2 uses
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %indvars.iv164 ; 2 uses
  %i.df = load <2 x float>, ptr %i.de, align 4, !tbaa !68
  %i.dg = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !68
  %i.dl = fmul float %i.dc, %i.dk
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dl, i64 0
  %i.dm = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dm, i64 %indvars.iv164 ; 2 uses
  store <2 x float> %i.di, ptr %i.dn, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !51
  %.pre = load i32, ptr %i.cn, align 4, !tbaa !190
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.do = phi i32 [ %.pre, %bb.v ], [ %i.cw, %bb.u ] ; 2 uses
  %indvars.iv.next167.a = add nsw i64 %indvars.iv164, 1 ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next165, %i.dp
  br i1 %i.dq, label %bb.u, label %._crit_edge149.loopexit, !llvm.loop !204

bb.x:                                             ; preds = %._crit_edge153
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !143
  %i.ds = invoke noundef float @_ZNK34btDeformableBackwardEulerObjective11computeNormERK20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.dr, ptr noundef nonnull align 8 dereferenceable(25) %i.l)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = load float, ptr %i.m, align 8, !tbaa !140
  %i.du = fcmp olt float %i.ds, %i.dt
  %i.dv = icmp ne i32 %.053156, 0
  %or.cond = and i1 %i.dv, %i.du
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.aa

bb.z:                                             ; preds = %bb.bb, %bb.ba, %bb.aa, %bb.x, %._crit_edge153
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aa:                                            ; preds = %bb.y
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !143
  invoke void @_ZN34btDeformableBackwardEulerObjective20applyDynamicFrictionER20btAlignedObjectArrayI9btVector3E(ptr noundef nonnull align 8 dereferenceable(504) %i.dx, ptr noundef nonnull align 8 dereferenceable(25) %i.l)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load i8, ptr %i.n, align 4, !tbaa !141, !range !34, !noundef !46
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ac, label %bb.az

bb.ac:                                            ; preds = %bb.ab
  %i.ea = invoke noundef float @_ZN22btDeformableBodySolver18computeDescentStepER20btAlignedObjectArrayI9btVector3ERKS2_b(ptr noundef nonnull align 8 dereferenceable(609) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.o, ptr noundef nonnull align 8 dereferenceable(25) %i.l, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !143
  %i.ec = invoke noundef float @_ZN34btDeformableBackwardEulerObjective11totalEnergyEf(ptr noundef nonnull align 8 dereferenceable(504) %i.eb, float noundef %1)
          to label %bb.ae unwind label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load i32, ptr %i.g, align 4, !tbaa !135 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph20.i, label %_ZN22btDeformableBodySolver13kineticEnergyEv.exit

.lr.ph20.i:                                       ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.h, align 8, !tbaa !134
  %wide.trip.count27.i = zext nneg i32 %i.ed to i64
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i, %.lr.ph20.i
  %indvars.iv24.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 2 uses
  %.01417.i = phi float [ 0.000000e+00, %.lr.ph20.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv24.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !188 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 932
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !190 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 944
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !195
  %wide.trip.count.i = zext nneg i32 %i.ej to i64
  br label %bb.ag

._crit_edge.i:                                    ; preds = %bb.ai, %bb.af
  %.1.lcssa.i = phi float [ %.01417.i, %bb.af ], [ %.2.i, %bb.ai ] ; 2 uses
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %_ZN22btDeformableBodySolver13kineticEnergyEv.exit, label %bb.af, !llvm.loop !205

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %.115.i = phi float [ %.01417.i, %.lr.ph.i ], [ %.2.i, %bb.ai ] ; 2 uses
  %i.en = getelementptr inbounds nuw [256 x i8], ptr %i.em, i64 %indvars.iv.i ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !196 ; 2 uses
  %i.eq = fcmp ogt float %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 136
  %i.es = load i32, ptr %i.er, align 8, !tbaa !206
  %i.et = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.eu ; 3 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !68 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !68 ; 2 uses
  %i.ez = fmul float %i.ey, %i.ey
  %i.fa = call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ez)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !68 ; 2 uses
  %i.fd = call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fa)
  %i.fe = fpext float %i.fd to double
  %i.ff = fmul double %i.fe, 5.000000e-01
  %i.fg = fpext float %i.ep to double
  %i.fh = fdiv double %i.ff, %i.fg
  %i.fi = fpext float %.115.i to double
  %i.fj = fadd double %i.fh, %i.fi
  %i.fk = fptrunc double %i.fj to float
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.i = phi float [ %i.fk, %bb.ah ], [ %.115.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ag, !llvm.loop !207

_ZN22btDeformableBodySolver13kineticEnergyEv.exit: ; preds = %._crit_edge.i, %bb.ae
  %.014.lcssa.i = phi float [ 0.000000e+00, %bb.ae ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.fl = fadd float %i.ec, %.014.lcssa.i
  %i.fm = load i32, ptr %i.u, align 4, !tbaa !32  ; 7 uses
  %i.fn = load i32, ptr %i.v, align 4, !tbaa !32  ; 2 uses
  %i.fo = icmp sgt i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.aj, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.aj:                                            ; preds = %_ZN22btDeformableBodySolver13kineticEnergyEv.exit
  %i.fp = load i32, ptr %i.w, align 8, !tbaa !33
  %i.fq = icmp slt i32 %i.fp, %i.fm
  br i1 %i.fq, label %bb.ak, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fr = sext i32 %i.fm to i64
  %i.fs = shl nsw i64 %i.fr, 4
  %i.ft = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fs, i32 noundef 16)
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %bb.al
  %.pre.i.i = load i32, ptr %i.v, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i: ; preds = %.noexc85, %bb.ak
  %i.fu = phi i32 [ %.pre.i.i, %.noexc85 ], [ %i.fn, %bb.ak ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.ft, %.noexc85 ], [ null, %bb.ak ] ; 4 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.fu to i64 ; 2 uses
  %xtraiter207 = and i64 %wide.trip.count.i.i.i.i, 1
  %i.fw = icmp eq i32 %i.fu, 1
  br i1 %i.fw, label %.epil.preheader206, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter210 = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.am ] ; 4 uses
  %niter211 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter211.next.1, %bb.am ]
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.fy = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.gb = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv.next.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ga, ptr noundef nonnull align 4 dereferenceable(16) %i.gc, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter211.next.1 = add i64 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i64 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !52

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i, label %.epil.preheader206

.epil.preheader206:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod209 = trunc i32 %i.fu to i1
  call void @llvm.assume(i1 %lcmp.mod209)
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.ge = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %indvars.iv.i.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader206, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.gg = load ptr, ptr %i.x, align 8, !tbaa !31  ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.gh = load i8, ptr %i.y, align 8, !tbaa !30, !range !34, !noundef !46
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.ao, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gg)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i unwind label %.loopexit.split-lp

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i: ; preds = %bb.ao, %bb.an, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.y, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN22btDeformableBodySolver15applyTransformsEf:bb.a
  %i.it = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = shufflevector <2 x float> %i.ir, <2 x float> %i.is, <2 x i32> <i32 1, i32 3>
  %i.iw = fmul <2 x float> %i.iu, %i.iv
  %i.ix = shufflevector <2 x float> %i.ir, <2 x float> %i.is, <2 x i32> <i32 0, i32 2>
  %i.iy = insertelement <2 x float> poison, float %i.im, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.iz, <2 x float> %i.iw)
  %i.jb = insertelement <2 x float> poison, float %i.io, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.iq, i64 1
  %i.jd = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.je, <2 x float> %i.ja)
  %i.jg = load float, ptr %i.ho, align 8, !tbaa !68
  %i.jh = load float, ptr %i.hp, align 4, !tbaa !68
  %i.ji = fmul float %i.in, %i.jh
  %i.jj = call float @llvm.fmuladd.f32(float %i.jg, float %i.im, float %i.ji)
  %i.jk = load float, ptr %i.hs, align 8, !tbaa !68
  %i.jl = call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.ip, float %i.jj)
  %.sroa.3.12.vec.insert.i108 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jl, i64 0
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  store <2 x float> %i.jf, ptr %i.jm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i108, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i64 16, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.jn = load float, ptr %4, align 8, !tbaa !68  ; 5 uses
  %i.jo = load <2 x float>, ptr %i.h, align 4, !tbaa !68 ; 5 uses
  %i.jp = call noundef float @llvm.fabs.f32(float %i.jn) ; 3 uses
  %i.jq = extractelement <2 x float> %i.jo, i64 0 ; 3 uses
  %i.jr = call noundef float @llvm.fabs.f32(float %i.jq) ; 3 uses
  %i.js = extractelement <2 x float> %i.jo, i64 1 ; 3 uses
  %i.jt = call noundef float @llvm.fabs.f32(float %i.js) ; 2 uses
  %i.ju = fcmp ugt float %i.jp, %i.jr
  %i.jv = fcmp ugt float %i.jp, %i.jt
  %or.cond.i = or i1 %i.ju, %i.jv
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jw = fneg <2 x float> %i.jo
  %.sroa.035.4.vec.insert50.i322 = insertelement <2 x float> %i.jw, float 0.000000e+00, i64 0
  %i.jx = insertelement <2 x float> %i.jo, float 0.000000e+00, i64 1
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.jy = fcmp ugt float %i.jr, %i.jp
  %i.jz = fcmp ugt float %i.jr, %i.jt
  %or.cond15.i = or i1 %i.jy, %i.jz
  br i1 %or.cond15.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ka = fneg float %i.js
  %.sroa.035.4.vec.insert48.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ka, i64 0
  %.sroa.11.12.vec.insert60.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jn, i64 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.kb = fneg float %i.jq
  %.sroa.035.0.vec.insert39.i = insertelement <2 x float> poison, float %i.kb, i64 0
  %.sroa.035.4.vec.insert46.i = insertelement <2 x float> %.sroa.035.0.vec.insert39.i, float %i.jn, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.035.0.i = phi <2 x float> [ %.sroa.035.4.vec.insert46.i, %bb.o ], [ %.sroa.035.4.vec.insert48.i, %bb.n ], [ %.sroa.035.4.vec.insert50.i322, %bb.l ] ; 4 uses
  %.sroa.11.0.i = phi <2 x float> [ zeroinitializer, %bb.o ], [ %.sroa.11.12.vec.insert60.i, %bb.n ], [ %i.jx, %bb.l ] ; 2 uses
  %.sroa.035.0.vec.extract.i = extractelement <2 x float> %.sroa.035.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.035.0.i, %.sroa.035.0.i
  %i.kc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.kd = call float @llvm.fmuladd.f32(float %.sroa.035.0.vec.extract.i, float %.sroa.035.0.vec.extract.i, float %i.kc)
  %.sroa.11.8.vec.extract.i = extractelement <2 x float> %.sroa.11.0.i, i64 0 ; 3 uses
  %i.ke = call noundef float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract.i, float %.sroa.11.8.vec.extract.i, float %i.kd)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ke)
  %i.kf = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.kg = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x float> %.sroa.035.0.i, %i.kh  ; 4 uses
  %i.kj = fmul float %.sroa.11.8.vec.extract.i, %i.kf ; 3 uses
  %.sroa.11.8.vec.insert.i = insertelement <2 x float> %.sroa.11.0.i, float %i.kj, i64 0
  store <2 x float> %i.ki, ptr %5, align 8
  store <2 x float> %.sroa.11.8.vec.insert.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.kk = extractelement <2 x float> %i.ki, i64 1 ; 2 uses
  %i.kl = extractelement <2 x float> %i.ki, i64 0
  %i.km = fneg float %i.kj
  %i.kn = fneg float %i.kk
  %i.ko = fmul float %i.jn, %i.km
  %i.kp = fmul float %i.js, %i.kn
  %i.kq = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kr = insertelement <2 x float> %i.kq, float %i.kj, i64 0
  %i.ks = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.ko, i64 1
  %i.ku = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.kr, <2 x float> %i.kt)
  %i.kv = fneg float %i.kl
  %i.kw = fmul float %i.jq, %i.kv
  %i.kx = call float @llvm.fmuladd.f32(float %i.jn, float %i.kk, float %i.kw)
  %.sroa.3.12.vec.insert.i.i115 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kx, i64 0
  store <2 x float> %i.ku, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i115, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.l, align 8, !tbaa !350
  store ptr null, ptr %i.m, align 8, !tbaa !417
  store i32 0, ptr %i.n, align 4, !tbaa !351
  store i32 0, ptr %i.o, align 8, !tbaa !418
  store i8 1, ptr %i.p, align 8, !tbaa !350
  store ptr null, ptr %i.q, align 8, !tbaa !417
  store i32 0, ptr %i.r, align 4, !tbaa !351
  store i32 0, ptr %i.s, align 8, !tbaa !418
  store i8 1, ptr %i.t, align 8, !tbaa !350
  store ptr null, ptr %i.u, align 8, !tbaa !417
  store i32 0, ptr %i.v, align 4, !tbaa !351
  store i32 0, ptr %i.w, align 8, !tbaa !418
  store i8 1, ptr %i.x, align 8, !tbaa !350
  store ptr null, ptr %i.y, align 8, !tbaa !417
  store i32 0, ptr %i.z, align 4, !tbaa !351
  store i32 0, ptr %i.aa, align 8, !tbaa !418
  store i8 1, ptr %i.ab, align 8, !tbaa !30
  store ptr null, ptr %i.ac, align 8, !tbaa !31
  store i32 0, ptr %i.ad, align 4, !tbaa !32
  store i32 0, ptr %i.ae, align 8, !tbaa !33
  store i8 1, ptr %i.af, align 8, !tbaa !352
  store ptr null, ptr %i.ag, align 8, !tbaa !419
  store i32 0, ptr %i.ah, align 4, !tbaa !356
  store i32 0, ptr %i.ai, align 8, !tbaa !420
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i8 1, ptr %i.aj, align 8, !tbaa !350
  store ptr null, ptr %i.ak, align 8, !tbaa !417
  store i32 0, ptr %i.al, align 4, !tbaa !351
  store i32 0, ptr %i.am, align 8, !tbaa !418
  store i8 1, ptr %i.an, align 8, !tbaa !350
  store ptr null, ptr %i.ao, align 8, !tbaa !417
  store i32 0, ptr %i.ap, align 4, !tbaa !351
  store i32 0, ptr %i.aq, align 8, !tbaa !418
  store i8 1, ptr %i.ar, align 8, !tbaa !350
  store ptr null, ptr %i.as, align 8, !tbaa !417
  store i32 0, ptr %i.at, align 4, !tbaa !351
  store i32 0, ptr %i.au, align 8, !tbaa !418
  store i8 1, ptr %i.av, align 8, !tbaa !350
  store ptr null, ptr %i.aw, align 8, !tbaa !417
  store i32 0, ptr %i.ax, align 4, !tbaa !351
  store i32 0, ptr %i.ay, align 8, !tbaa !418
  store i8 1, ptr %i.az, align 8, !tbaa !30
  store ptr null, ptr %i.ba, align 8, !tbaa !31
  store i32 0, ptr %i.bb, align 4, !tbaa !32
  store i32 0, ptr %i.bc, align 8, !tbaa !33
  store i8 1, ptr %i.bd, align 8, !tbaa !352
  store ptr null, ptr %i.be, align 8, !tbaa !419
  store i32 0, ptr %i.bf, align 4, !tbaa !356
  store i32 0, ptr %i.bg, align 8, !tbaa !420
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i8 1, ptr %i.bh, align 8, !tbaa !350
  store ptr null, ptr %i.bi, align 8, !tbaa !417
  store i32 0, ptr %i.bj, align 4, !tbaa !351
  store i32 0, ptr %i.bk, align 8, !tbaa !418
  store i8 1, ptr %i.bl, align 8, !tbaa !350
  store ptr null, ptr %i.bm, align 8, !tbaa !417
  store i32 0, ptr %i.bn, align 4, !tbaa !351
  store i32 0, ptr %i.bo, align 8, !tbaa !418
  store i8 1, ptr %i.bp, align 8, !tbaa !350
  store ptr null, ptr %i.bq, align 8, !tbaa !417
  store i32 0, ptr %i.br, align 4, !tbaa !351
  store i32 0, ptr %i.bs, align 8, !tbaa !418
  store i8 1, ptr %i.bt, align 8, !tbaa !350
  store ptr null, ptr %i.bu, align 8, !tbaa !417
  store i32 0, ptr %i.bv, align 4, !tbaa !351
  store i32 0, ptr %i.bw, align 8, !tbaa !418
  store i8 1, ptr %i.bx, align 8, !tbaa !30
  store ptr null, ptr %i.by, align 8, !tbaa !31
  store i32 0, ptr %i.bz, align 4, !tbaa !32
  store i32 0, ptr %i.ca, align 8, !tbaa !33
  store i8 1, ptr %i.cb, align 8, !tbaa !352
  store ptr null, ptr %i.cc, align 8, !tbaa !419
  store i32 0, ptr %i.cd, align 4, !tbaa !356
  store i32 0, ptr %i.ce, align 8, !tbaa !420
  %i.ky = load ptr, ptr %i.ex, align 8, !tbaa !371
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(204) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.kz, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.bg

bb.q:                                             ; preds = %bb.p
  %i.la = load ptr, ptr %i.ex, align 8, !tbaa !371
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(204) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.lb, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.bg

bb.r:                                             ; preds = %bb.q
  %i.lc = load ptr, ptr %i.ex, align 8, !tbaa !371
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(204) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.ld, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.s unwind label %bb.bg

bb.s:                                             ; preds = %bb.r
  %i.le = load ptr, ptr %i.m, align 8, !tbaa !417 ; 15 uses
  %i.lf = load ptr, ptr %i.ak, align 8, !tbaa !417 ; 15 uses
  %i.lg = load ptr, ptr %i.bi, align 8, !tbaa !417 ; 15 uses
  %i.lh = load ptr, ptr %i.q, align 8, !tbaa !417 ; 15 uses
  %i.li = load ptr, ptr %i.ao, align 8, !tbaa !417 ; 15 uses
  %i.lj = load ptr, ptr %i.bm, align 8, !tbaa !417 ; 15 uses
  %i.lk = load <2 x float>, ptr %6, align 8, !tbaa !68 ; 5 uses
  %i.ll = load <2 x float>, ptr %4, align 8, !tbaa !68 ; 3 uses
  %i.lm = load <2 x float>, ptr %i.h, align 4, !tbaa !68 ; 4 uses
  %i.ln = load <2 x float>, ptr %i.j, align 4, !tbaa !68 ; 6 uses
  %i.lo = load float, ptr %5, align 8, !tbaa !68  ; 4 uses
  %i.lp = load <2 x float>, ptr %i.cf, align 4, !tbaa !68 ; 3 uses
  %i.lq = load float, ptr %i.k, align 8, !tbaa !68 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gr, i64 376
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !421
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 628
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !424 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ey, i64 112
  %i.lw = load float, ptr %i.lv, align 8, !tbaa !196 ; 3 uses
  %i.lx = icmp sgt i32 %i.lu, -6
  br i1 %i.lx, label %.lr.ph.preheader.i.i, label %.loopexit

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %i.ly = add nsw i32 %i.lu, 6
  %wide.trip.count.i.i = zext nneg i32 %i.ly to i64 ; 19 uses
  %i.lz = add nsw i64 %wide.trip.count.i.i, -1    ; 9 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.ma = icmp ult i64 %i.lz, 3
  br i1 %i.ma, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %.089.i.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.mu, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !68, !noalias !433
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i
  %i.me = load float, ptr %i.md, align 4, !tbaa !68, !noalias !433
  %i.mf = call float @llvm.fmuladd.f32(float %i.mc, float %i.me, float %.089.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i.i
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !68, !noalias !433
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !68, !noalias !433
  %i.mk = call float @llvm.fmuladd.f32(float %i.mh, float %i.mj, float %i.mf)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i.i.1
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !68, !noalias !433
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i.1
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !68, !noalias !433
  %i.mp = call float @llvm.fmuladd.f32(float %i.mm, float %i.mo, float %i.mk)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i.i.2
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !68, !noalias !433
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i.2
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !68, !noalias !433
  %i.mu = call float @llvm.fmuladd.f32(float %i.mr, float %i.mt, float %i.mp) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i29.i.preheader.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !436

.lr.ph.i29.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.i.preheader, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i29.i.preheader.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %.lr.ph.i29.i.preheader.unr-lcssa ]
  %.089.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.mu, %.lr.ph.i29.i.preheader.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod332)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %.089.i.i.epil = phi float [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.mz, %.lr.ph.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i.i.epil
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !68, !noalias !433
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i.epil
  %i.my = load float, ptr %i.mx, align 4, !tbaa !68, !noalias !433
  %i.mz = call float @llvm.fmuladd.f32(float %i.mw, float %i.my, float %.089.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i29.i.preheader, label %.lr.ph.i.i.epil, !llvm.loop !437

.lr.ph.i29.i.preheader:                           ; preds = %.lr.ph.i.i.epil, %.lr.ph.i29.i.preheader.unr-lcssa
  %.lcssa = phi float [ %i.mu, %.lr.ph.i29.i.preheader.unr-lcssa ], [ %i.mz, %.lr.ph.i.i.epil ]
  %xtraiter333 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.na = icmp ult i64 %i.lz, 3
  br i1 %i.na, label %.lr.ph.i29.i.epil.preheader, label %.lr.ph.i29.i.preheader.new

.lr.ph.i29.i.preheader.new:                       ; preds = %.lr.ph.i29.i.preheader
  %unroll_iter338 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.lr.ph.i29.i, %.lr.ph.i29.i.preheader.new
  %indvars.iv.i30.i = phi i64 [ 0, %.lr.ph.i29.i.preheader.new ], [ %indvars.iv.next.i32.i.3, %.lr.ph.i29.i ] ; 6 uses
  %.089.i31.i = phi float [ 0.000000e+00, %.lr.ph.i29.i.preheader.new ], [ %i.nu, %.lr.ph.i29.i ]
  %niter339 = phi i64 [ 0, %.lr.ph.i29.i.preheader.new ], [ %niter339.next.3, %.lr.ph.i29.i ]
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i30.i
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !68, !noalias !433
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.i30.i
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !68, !noalias !433
  %i.nf = call float @llvm.fmuladd.f32(float %i.nc, float %i.ne, float %.089.i31.i)
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i30.i, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i32.i
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !68, !noalias !433
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.next.i32.i
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !68, !noalias !433
  %i.nk = call float @llvm.fmuladd.f32(float %i.nh, float %i.nj, float %i.nf)
  %indvars.iv.next.i32.i.1 = or disjoint i64 %indvars.iv.i30.i, 2 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i32.i.1
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !68, !noalias !433
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.next.i32.i.1
  %i.no = load float, ptr %i.nn, align 4, !tbaa !68, !noalias !433
  %i.np = call float @llvm.fmuladd.f32(float %i.nm, float %i.no, float %i.nk)
  %indvars.iv.next.i32.i.2 = or disjoint i64 %indvars.iv.i30.i, 3 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i32.i.2
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !68, !noalias !433
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.next.i32.i.2
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !68, !noalias !433
  %i.nu = call float @llvm.fmuladd.f32(float %i.nr, float %i.nt, float %i.np) ; 3 uses
  %indvars.iv.next.i32.i.3 = add nuw nsw i64 %indvars.iv.i30.i, 4 ; 2 uses
  %niter339.next.3 = add i64 %niter339, 4         ; 2 uses
  %niter339.ncmp.3 = icmp eq i64 %niter339.next.3, %unroll_iter338
  br i1 %niter339.ncmp.3, label %.lr.ph.i38.i.preheader.unr-lcssa, label %.lr.ph.i29.i, !llvm.loop !436

.lr.ph.i38.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i29.i
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %.lr.ph.i38.i.preheader, label %.lr.ph.i29.i.epil.preheader

.lr.ph.i29.i.epil.preheader:                      ; preds = %.lr.ph.i38.i.preheader.unr-lcssa, %.lr.ph.i29.i.preheader
  %indvars.iv.i30.i.epil.init = phi i64 [ 0, %.lr.ph.i29.i.preheader ], [ %indvars.iv.next.i32.i.3, %.lr.ph.i38.i.preheader.unr-lcssa ]
  %.089.i31.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i29.i.preheader ], [ %i.nu, %.lr.ph.i38.i.preheader.unr-lcssa ]
  %lcmp.mod337 = icmp ne i64 %xtraiter333, 0
  call void @llvm.assume(i1 %lcmp.mod337)
  br label %.lr.ph.i29.i.epil

.lr.ph.i29.i.epil:                                ; preds = %.lr.ph.i29.i.epil, %.lr.ph.i29.i.epil.preheader
  %indvars.iv.i30.i.epil = phi i64 [ %indvars.iv.next.i32.i.epil, %.lr.ph.i29.i.epil ], [ %indvars.iv.i30.i.epil.init, %.lr.ph.i29.i.epil.preheader ] ; 3 uses
  %.089.i31.i.epil = phi float [ %i.nz, %.lr.ph.i29.i.epil ], [ %.089.i31.i.epil.init, %.lr.ph.i29.i.epil.preheader ]
  %epil.iter334 = phi i64 [ %epil.iter334.next, %.lr.ph.i29.i.epil ], [ 0, %.lr.ph.i29.i.epil.preheader ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i30.i.epil
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !68, !noalias !433
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv.i30.i.epil
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !68, !noalias !433
  %i.nz = call float @llvm.fmuladd.f32(float %i.nw, float %i.ny, float %.089.i31.i.epil) ; 2 uses
  %indvars.iv.next.i32.i.epil = add nuw nsw i64 %indvars.iv.i30.i.epil, 1
  %epil.iter334.next = add i64 %epil.iter334, 1   ; 2 uses
  %epil.iter334.cmp.not = icmp eq i64 %epil.iter334.next, %xtraiter333
  br i1 %epil.iter334.cmp.not, label %.lr.ph.i38.i.preheader, label %.lr.ph.i29.i.epil, !llvm.loop !438

.lr.ph.i38.i.preheader:                           ; preds = %.lr.ph.i29.i.epil, %.lr.ph.i38.i.preheader.unr-lcssa
  %.lcssa323 = phi float [ %i.nu, %.lr.ph.i38.i.preheader.unr-lcssa ], [ %i.nz, %.lr.ph.i29.i.epil ]
  %xtraiter340 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.oa = icmp ult i64 %i.lz, 3
  br i1 %i.oa, label %.lr.ph.i38.i.epil.preheader, label %.lr.ph.i38.i.preheader.new

.lr.ph.i38.i.preheader.new:                       ; preds = %.lr.ph.i38.i.preheader
  %unroll_iter345 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.i38.i.preheader.new
  %indvars.iv.i39.i = phi i64 [ 0, %.lr.ph.i38.i.preheader.new ], [ %indvars.iv.next.i41.i.3, %.lr.ph.i38.i ] ; 6 uses
  %.089.i40.i = phi float [ 0.000000e+00, %.lr.ph.i38.i.preheader.new ], [ %i.ou, %.lr.ph.i38.i ]
  %niter346 = phi i64 [ 0, %.lr.ph.i38.i.preheader.new ], [ %niter346.next.3, %.lr.ph.i38.i ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.i39.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !68, !noalias !433
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i39.i
  %i.oe = load float, ptr %i.od, align 4, !tbaa !68, !noalias !433
  %i.of = call float @llvm.fmuladd.f32(float %i.oc, float %i.oe, float %.089.i40.i)
  %indvars.iv.next.i41.i = or disjoint i64 %indvars.iv.i39.i, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i41.i
  %i.oh = load float, ptr %i.og, align 4, !tbaa !68, !noalias !433
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i41.i
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !68, !noalias !433
  %i.ok = call float @llvm.fmuladd.f32(float %i.oh, float %i.oj, float %i.of)
  %indvars.iv.next.i41.i.1 = or disjoint i64 %indvars.iv.i39.i, 2 ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i41.i.1
  %i.om = load float, ptr %i.ol, align 4, !tbaa !68, !noalias !433
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i41.i.1
  %i.oo = load float, ptr %i.on, align 4, !tbaa !68, !noalias !433
  %i.op = call float @llvm.fmuladd.f32(float %i.om, float %i.oo, float %i.ok)
  %indvars.iv.next.i41.i.2 = or disjoint i64 %indvars.iv.i39.i, 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next.i41.i.2
  %i.or = load float, ptr %i.oq, align 4, !tbaa !68, !noalias !433
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i41.i.2
  %i.ot = load float, ptr %i.os, align 4, !tbaa !68, !noalias !433
  %i.ou = call float @llvm.fmuladd.f32(float %i.or, float %i.ot, float %i.op) ; 3 uses
  %indvars.iv.next.i41.i.3 = add nuw nsw i64 %indvars.iv.i39.i, 4 ; 2 uses
  %niter346.next.3 = add i64 %niter346, 4         ; 2 uses
  %niter346.ncmp.3 = icmp eq i64 %niter346.next.3, %unroll_iter345
  br i1 %niter346.ncmp.3, label %.lr.ph.i47.i.preheader.unr-lcssa, label %.lr.ph.i38.i, !llvm.loop !436

.lr.ph.i47.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i38.i
  %lcmp.mod342.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod342.not, label %.lr.ph.i47.i.preheader, label %.lr.ph.i38.i.epil.preheader

.lr.ph.i38.i.epil.preheader:                      ; preds = %.lr.ph.i47.i.preheader.unr-lcssa, %.lr.ph.i38.i.preheader
  %indvars.iv.i39.i.epil.init = phi i64 [ 0, %.lr.ph.i38.i.preheader ], [ %indvars.iv.next.i41.i.3, %.lr.ph.i47.i.preheader.unr-lcssa ]
  %.089.i40.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.preheader ], [ %i.ou, %.lr.ph.i47.i.preheader.unr-lcssa ]
  %lcmp.mod344 = icmp ne i64 %xtraiter340, 0
  call void @llvm.assume(i1 %lcmp.mod344)
end_hunk_1
begin_hunk_2_@_ZN22btDeformableBodySolver15applyTransformsEf:bb.a
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter376.next = add i64 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i64 %epil.iter376.next, %xtraiter375
  br i1 %epil.iter376.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !444

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa329 = phi float [ %i.tu, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.tz, %.lr.ph.i83.i.epil ]
  %xtraiter382 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ua = icmp ult i64 %i.lz, 3
  br i1 %i.ua, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter387 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.uu, %.lr.ph.i92.i ]
  %niter388 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter388.next.3, %.lr.ph.i92.i ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.i93.i
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !68, !noalias !433
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i93.i
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !68, !noalias !433
  %i.uf = call float @llvm.fmuladd.f32(float %i.uc, float %i.ue, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.next.i95.i
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !68, !noalias !433
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i95.i
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !68, !noalias !433
  %i.uk = call float @llvm.fmuladd.f32(float %i.uh, float %i.uj, float %i.uf)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.next.i95.i.1
  %i.um = load float, ptr %i.ul, align 4, !tbaa !68, !noalias !433
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i95.i.1
  %i.uo = load float, ptr %i.un, align 4, !tbaa !68, !noalias !433
  %i.up = call float @llvm.fmuladd.f32(float %i.um, float %i.uo, float %i.uk)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.next.i95.i.2
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !68, !noalias !433
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.next.i95.i.2
  %i.ut = load float, ptr %i.us, align 4, !tbaa !68, !noalias !433
  %i.uu = call float @llvm.fmuladd.f32(float %i.ur, float %i.ut, float %i.up) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter388.next.3 = add i64 %niter388, 4         ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !436

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.uu, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter382, 0
  call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.uz, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter383 = phi i64 [ %epil.iter383.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.i93.i.epil
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !68, !noalias !433
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i93.i.epil
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !68, !noalias !433
  %i.uz = call float @llvm.fmuladd.f32(float %i.uw, float %i.uy, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter383.next = add i64 %epil.iter383, 1   ; 2 uses
  %epil.iter383.cmp.not = icmp eq i64 %epil.iter383.next, %xtraiter382
  br i1 %epil.iter383.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !445

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa330 = phi float [ %i.uu, %.loopexit.loopexit.unr-lcssa ], [ %i.uz, %.lr.ph.i92.i.epil ]
  %i.va = insertelement <4 x float> poison, float %.lcssa326, i64 0
  %i.vb = insertelement <4 x float> %i.va, float %.lcssa327, i64 1
  %i.vc = insertelement <4 x float> %i.vb, float %.lcssa323, i64 2
  %i.vd = insertelement <4 x float> %i.vc, float %.lcssa324, i64 3
  %i.ve = fadd <4 x float> %i.vd, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.vf = fadd float %.lcssa325, 0.000000e+00
  %i.vg = fadd float %.lcssa328, 0.000000e+00
  %i.vh = fadd float %.lcssa329, 0.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %.08.lcssa.i80220.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vh, %.loopexit.loopexit ] ; 2 uses
  %.08.lcssa.i44142149173186216.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vf, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa, %.loopexit.loopexit ]
  %.08.lcssa.i71196206.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vg, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i89.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa330, %.loopexit.loopexit ]
  %i.vi = phi <4 x float> [ zeroinitializer, %bb.s ], [ %i.ve, %.loopexit.loopexit ] ; 5 uses
  %i.vj = fadd float %i.lw, %.08.lcssa.i115119128138153169190212.i ; 5 uses
  %i.vk = fadd float %i.lw, %.08.lcssa.i89.i      ; 2 uses
  %i.vl = extractelement <4 x float> %i.vi, i64 1 ; 2 uses
  %i.vm = fneg float %i.vl
  %i.vn = fmul float %i.vj, %i.vm
  %i.vo = extractelement <4 x float> %i.vi, i64 3 ; 3 uses
  %i.vp = call noundef float @llvm.fmuladd.f32(float %i.vo, float %.08.lcssa.i44142149173186216.i, float %i.vn)
  %i.vq = fneg float %.08.lcssa.i44142149173186216.i
  %i.vr = extractelement <4 x float> %i.vi, i64 2 ; 3 uses
  %i.vs = fmul float %i.vr, %i.vq
  %i.vt = extractelement <2 x float> %i.ln, i64 0 ; 2 uses
  %i.vu = extractelement <2 x float> %i.lk, i64 0
  %i.vv = extractelement <2 x float> %i.lp, i64 0 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.vx = extractelement <2 x float> %i.ll, i64 0 ; 2 uses
  %i.vy = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vz = insertelement <4 x float> %i.vy, float 0.000000e+00, i64 3
  %i.wa = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.wb = shufflevector <4 x float> %i.vz, <4 x float> %i.wa, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.wd = extractelement <2 x float> %i.lm, i64 0 ; 3 uses
  %i.we = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.lw, i64 0
  %i.wf = fadd <4 x float> %i.we, %i.vi           ; 4 uses
  %i.wg = fneg float %.08.lcssa.i80220.i
  %i.wh = insertelement <4 x float> poison, float %.08.lcssa.i71196206.i, i64 0
  %i.wi = insertelement <4 x float> %i.wh, float %.08.lcssa.i80220.i, i64 1
  %i.wj = insertelement <4 x float> %i.wi, float %i.vk, i64 2 ; 2 uses
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> %i.wf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wl = fneg <4 x float> %i.wk                  ; 3 uses
  %i.wm = extractelement <4 x float> %i.wl, i64 2
  %i.wn = fmul float %.08.lcssa.i44142149173186216.i, %i.wm
  %i.wo = call noundef float @llvm.fmuladd.f32(float %i.vl, float %.08.lcssa.i71196206.i, float %i.wn) ; 2 uses
  %i.wp = fmul float %i.vr, %i.wo
  %i.wq = fmul <4 x float> %i.wf, %i.wl
  %i.wr = insertelement <4 x float> poison, float %.08.lcssa.i44142149173186216.i, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> %i.wf, <4 x i32> <i32 0, i32 4, i32 7, i32 6>
  %i.wt = shufflevector <4 x float> %i.wj, <4 x float> %i.vi, <4 x i32> <i32 1, i32 2, i32 1, i32 5>
  %i.wu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ws, <4 x float> %i.wt, <4 x float> %i.wq) ; 3 uses
  %i.wv = extractelement <4 x float> %i.wu, i64 1
  %i.ww = call float @llvm.fmuladd.f32(float %i.vj, float %i.wv, float %i.wp)
  %i.wx = extractelement <4 x float> %i.wu, i64 0
  %i.wy = call noundef float @llvm.fmuladd.f32(float %i.vo, float %i.wx, float %i.ww)
  %i.wz = fdiv float 1.000000e+00, %i.wy          ; 6 uses
  %i.xa = extractelement <4 x float> %i.wl, i64 0
  %i.xb = fmul float %i.vo, %i.xa
  %i.xc = call noundef float @llvm.fmuladd.f32(float %i.vj, float %i.vk, float %i.xb)
  %i.xd = insertelement <4 x float> poison, float %i.wz, i64 0
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xf = fmul <4 x float> %i.wu, %i.xe           ; 6 uses
  %i.xg = fmul float %i.vj, %i.wg
  %i.xh = call noundef float @llvm.fmuladd.f32(float %i.vr, float %.08.lcssa.i71196206.i, float %i.xg)
  %i.xi = fmul float %i.xh, %i.wz                 ; 2 uses
  %i.xj = extractelement <4 x float> %i.wf, i64 0
  %i.xk = call noundef float @llvm.fmuladd.f32(float %i.vj, float %i.xj, float %i.vs)
  %i.xl = fmul float %i.xk, %i.wz                 ; 3 uses
  %i.xm = extractelement <4 x float> %i.xf, i64 1
  %i.xn = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.xo = shufflevector <2 x float> %i.lk, <2 x float> %i.ll, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %i.xp = insertelement <4 x float> %i.xo, float %i.wd, i64 1
  %i.xq = extractelement <4 x float> %i.xf, i64 0 ; 2 uses
  %i.xr = extractelement <4 x float> %i.xf, i64 2
  %i.xs = extractelement <4 x float> %i.xf, i64 3
  %i.xt = shufflevector <2 x float> %i.lk, <2 x float> %i.lp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.xu = insertelement <4 x float> %i.xt, float 0.000000e+00, i64 3 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.xw = fmul float %i.wo, %i.wz                 ; 3 uses
  %i.xx = fmul float %i.xc, %i.wz                 ; 3 uses
  %i.xy = fmul float %i.vp, %i.wz                 ; 3 uses
  %i.xz = fmul float %i.lo, %i.xw
  %i.ya = fmul float %i.vt, %i.xx
  %i.yb = fmul float %i.vt, %i.xy
  %i.yc = call float @llvm.fmuladd.f32(float %i.xm, float %i.vx, float %i.xz)
  %i.yd = insertelement <4 x float> %i.xn, float %i.yc, i64 0
  %i.ye = insertelement <4 x float> %i.yd, float %i.lo, i64 2
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.yg = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.xw, i64 1
  %i.yh = insertelement <4 x float> %i.yg, float %i.xx, i64 2
  %i.yi = insertelement <4 x float> %i.yh, float %i.xy, i64 3
  %i.yj = fmul <4 x float> %i.yf, %i.yi
  %i.yk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xf, <4 x float> %i.xp, <4 x float> %i.yj) ; 5 uses
  %i.yl = extractelement <4 x float> %i.yk, i64 3
  %i.ym = call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.vu, float %i.yl)
  %i.yn = shufflevector <4 x float> %i.yk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.yo = extractelement <4 x float> %i.yk, i64 0
  %i.yp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ym, i64 0
  %i.yq = shufflevector <4 x float> %i.yp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yr = extractelement <4 x float> %i.yk, i64 1
  %i.ys = call noundef float @llvm.fmuladd.f32(float %i.xq, float %i.vv, float %i.yr) ; 2 uses
  %i.yt = call float @llvm.fmuladd.f32(float %i.xr, float %i.wd, float %i.ya)
  %i.yu = call noundef float @llvm.fmuladd.f32(float %i.xi, float %i.vv, float %i.yt) ; 2 uses
  %i.yv = call float @llvm.fmuladd.f32(float %i.xs, float %i.wd, float %i.yb)
  %i.yw = call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.vv, float %i.yv)
  %i.yx = insertelement <2 x float> %i.ln, float %i.lo, i64 0
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.yz = insertelement <4 x float> poison, float %i.yu, i64 0
  %i.za = insertelement <4 x float> %i.yz, float %i.xw, i64 1
  %i.zb = insertelement <4 x float> %i.za, float %i.xx, i64 2
  %i.zc = insertelement <4 x float> %i.zb, float %i.xy, i64 3
  %i.zd = fmul <4 x float> %i.yy, %i.zc
  %i.ze = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zg = fmul <2 x float> %i.ln, %i.zf
  %i.zh = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.zi, <2 x float> %i.zg)
  %i.zk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.yw, i64 0
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zm = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zn = shufflevector <4 x float> %i.zm, <4 x float> %i.xf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %10 = shufflevector <2 x float> %i.lm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %11 = insertelement <4 x float> %10, float %i.ys, i64 0
  %i.zo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zn, <4 x float> %11, <4 x float> %i.zd) ; 4 uses
  %i.zp = insertelement <4 x float> %i.zo, float 0.000000e+00, i64 3
  %i.zq = shufflevector <2 x float> %i.zj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zr = shufflevector <4 x float> %i.zp, <4 x float> %i.zq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.zs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.zl, <4 x float> %i.zr)
  store <4 x float> %i.zs, ptr %i.wc, align 8
  %i.zt = extractelement <4 x float> %i.zo, i64 1
  %i.zu = call noundef float @llvm.fmuladd.f32(float %i.xq, float %i.lq, float %i.zt)
  %i.zv = extractelement <4 x float> %i.zo, i64 3
  %i.zw = call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.lq, float %i.zv)
  %i.zx = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = insertelement <2 x float> %i.lk, float %i.lq, i64 1
  %i.aaa = shufflevector <4 x float> %i.yk, <4 x float> %i.zo, <2 x i32> <i32 2, i32 6>
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.zz, <2 x float> %i.aaa) ; 3 uses
  %i.aac = shufflevector <2 x float> %i.aab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = fmul <2 x float> %i.ln, %i.aac
  %i.aae = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.yn, <2 x float> %i.aad)
  %i.aaf = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.aag = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aah = fmul <2 x float> %i.aag, %i.aab        ; 2 uses
  %i.aai = extractelement <2 x float> %i.aah, i64 0
  %i.aaj = call float @llvm.fmuladd.f32(float %i.vx, float %i.yo, float %i.aai)
  %i.aak = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aaj, i64 0
  %i.aal = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aam = shufflevector <4 x float> %i.aak, <4 x float> %i.aal, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aan = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wb, <4 x float> %i.yq, <4 x float> %i.aam)
  store <4 x float> %i.aan, ptr %i.vw, align 8
  %i.aao = insertelement <4 x float> %i.zm, float 0.000000e+00, i64 3
  %i.aap = shufflevector <4 x float> %i.aao, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aaq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.zu, i64 0
  %i.aar = shufflevector <4 x float> %i.aaq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aas = shufflevector <2 x float> %i.aah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aat = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aas, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aau = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aav = shufflevector <2 x float> %i.aab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.aaw = fmul <4 x float> %i.aau, %i.aav
  %i.aax = shufflevector <4 x float> %i.aat, <4 x float> %i.aaw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aap, <4 x float> %i.aar, <4 x float> %i.aax)
  %i.aaz = insertelement <4 x float> %i.xu, float %i.lq, i64 2
  %i.aba = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.zw, i64 0
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaz, <4 x float> %i.abb, <4 x float> %i.aay)
  store <4 x float> %i.abc, ptr %i.xv, align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.ew, i64 192
  %i.abe = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.abd, ptr noundef nonnull align 8 dereferenceable(204) %7)
          to label %bb.t unwind label %bb.bh      ; 0 uses

bb.t:                                             ; preds = %.loopexit
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ew, i64 400
  %i.abg = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.abf, ptr noundef nonnull align 8 dereferenceable(204) %8)
          to label %bb.u unwind label %bb.bh      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ew, i64 608
  %i.abi = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.abh, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.v unwind label %bb.bh      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ew, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abj, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !50
  %i.abk = getelementptr inbounds nuw i8, ptr %i.ew, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abk, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !50
  %i.abl = load ptr, ptr %i.cc, align 8, !tbaa !419 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.abl, null
  %i.abm = load i8, ptr %i.cb, align 8, !range !34
  %i.abn = trunc nuw i8 %i.abm to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.abn, i1 false
  br i1 %or.cond.i.i.i, label %bb.w, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.abl)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.abo = landingpad { ptr, i32 }
          catch ptr null
  %i.abp = extractvalue { ptr, i32 } %i.abo, 0
  call void @__clang_call_terminate(ptr %i.abp) #26
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i: ; preds = %bb.w, %bb.v
  %i.abq = load ptr, ptr %i.by, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.abq, null
  %i.abr = load i8, ptr %i.bx, align 8, !range !34
  %i.abs = trunc nuw i8 %i.abr to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.abs, i1 false
  br i1 %or.cond.i.i2.i, label %bb.y, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.abq)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.abt = landingpad { ptr, i32 }
          catch ptr null
  %i.abu = extractvalue { ptr, i32 } %i.abt, 0
  call void @__clang_call_terminate(ptr %i.abu) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i: ; preds = %bb.y, %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  %i.abv = load ptr, ptr %i.bu, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i3.i = icmp ne ptr %i.abv, null
  %i.abw = load i8, ptr %i.bt, align 8, !range !34
  %i.abx = trunc nuw i8 %i.abw to i1
  %or.cond.i.i4.i = select i1 %.not.i.i.i3.i, i1 %i.abx, i1 false
  br i1 %or.cond.i.i4.i, label %bb.aa, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.aa:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.abv)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aby = landingpad { ptr, i32 }
          catch ptr null
  %i.abz = extractvalue { ptr, i32 } %i.aby, 0
  call void @__clang_call_terminate(ptr %i.abz) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.aa, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  %i.aca = load ptr, ptr %i.bq, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i5.i = icmp ne ptr %i.aca, null
  %i.acb = load i8, ptr %i.bp, align 8, !range !34
  %i.acc = trunc nuw i8 %i.acb to i1
  %or.cond.i.i6.i = select i1 %.not.i.i.i5.i, i1 %i.acc, i1 false
  br i1 %or.cond.i.i6.i, label %bb.ac, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aca)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.acd = landingpad { ptr, i32 }
          catch ptr null
  %i.ace = extractvalue { ptr, i32 } %i.acd, 0
  call void @__clang_call_terminate(ptr %i.ace) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit7.i:         ; preds = %bb.ac, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  %i.acf = load ptr, ptr %i.bm, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i8.i = icmp ne ptr %i.acf, null
  %i.acg = load i8, ptr %i.bl, align 8, !range !34
  %i.ach = trunc nuw i8 %i.acg to i1
  %or.cond.i.i9.i = select i1 %.not.i.i.i8.i, i1 %i.ach, i1 false
  br i1 %or.cond.i.i9.i, label %bb.ae, label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i

bb.ae:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acf)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aci = landingpad { ptr, i32 }
          catch ptr null
  %i.acj = extractvalue { ptr, i32 } %i.aci, 0
  call void @__clang_call_terminate(ptr %i.acj) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit10.i:        ; preds = %bb.ae, %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  %i.ack = load ptr, ptr %i.bi, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i11.i = icmp ne ptr %i.ack, null
  %i.acl = load i8, ptr %i.bh, align 8, !range !34
  %i.acm = trunc nuw i8 %i.acl to i1
  %or.cond.i.i12.i = select i1 %.not.i.i.i11.i, i1 %i.acm, i1 false
  br i1 %or.cond.i.i12.i, label %bb.ag, label %_ZN23btMultiBodyJacobianDataD2Ev.exit

bb.ag:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ack)
          to label %_ZN23btMultiBodyJacobianDataD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.acn = landingpad { ptr, i32 }
          catch ptr null
  %i.aco = extractvalue { ptr, i32 } %i.acn, 0
  call void @__clang_call_terminate(ptr %i.aco) #26
  unreachable

_ZN23btMultiBodyJacobianDataD2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.acp = load ptr, ptr %i.be, align 8, !tbaa !419 ; 2 uses
  %.not.i.i.i.i120 = icmp ne ptr %i.acp, null
  %i.acq = load i8, ptr %i.bd, align 8, !range !34
  %i.acr = trunc nuw i8 %i.acq to i1
  %or.cond.i.i.i121 = select i1 %.not.i.i.i.i120, i1 %i.acr, i1 false
  br i1 %or.cond.i.i.i121, label %bb.ai, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122

bb.ai:                                            ; preds = %_ZN23btMultiBodyJacobianDataD2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acp)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.acs = landingpad { ptr, i32 }
          catch ptr null
  %i.act = extractvalue { ptr, i32 } %i.acs, 0
  call void @__clang_call_terminate(ptr %i.act) #26
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122: ; preds = %bb.ai, %_ZN23btMultiBodyJacobianDataD2Ev.exit
  %i.acu = load ptr, ptr %i.ba, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i1.i123 = icmp ne ptr %i.acu, null
  %i.acv = load i8, ptr %i.az, align 8, !range !34
  %i.acw = trunc nuw i8 %i.acv to i1
  %or.cond.i.i2.i124 = select i1 %.not.i.i.i1.i123, i1 %i.acw, i1 false
  br i1 %or.cond.i.i2.i124, label %bb.ak, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125

bb.ak:                                            ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acu)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.acx = landingpad { ptr, i32 }
          catch ptr null
  %i.acy = extractvalue { ptr, i32 } %i.acx, 0
  call void @__clang_call_terminate(ptr %i.acy) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125: ; preds = %bb.ak, %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122
  %i.acz = load ptr, ptr %i.aw, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i3.i126 = icmp ne ptr %i.acz, null
  %i.ada = load i8, ptr %i.av, align 8, !range !34
  %i.adb = trunc nuw i8 %i.ada to i1
  %or.cond.i.i4.i127 = select i1 %.not.i.i.i3.i126, i1 %i.adb, i1 false
  br i1 %or.cond.i.i4.i127, label %bb.am, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i128

bb.am:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acz)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i128 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.adc = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
