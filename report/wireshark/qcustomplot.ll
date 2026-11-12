Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged:bb.a
  %i.eo = load double, ptr %i.en, align 8         ; 5 uses
  %i.ep = fcmp olt double %i.em, %i.bz
  br i1 %i.ep, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eq = fcmp ogt double %i.eo, %i.da
  br i1 %i.eq, label %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = fcmp olt double %i.eo, %i.cs
  %spec.select385 = select i1 %i.er, i32 3, i32 2
  br label %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4

bb.ag:                                            ; preds = %bb.ad
  %i.es = fcmp ogt double %i.em, %i.ch
  %i.et = fcmp ogt double %i.eo, %i.da            ; 2 uses
  br i1 %i.es, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.et, label %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = fcmp olt double %i.eo, %i.cs
  %spec.select386 = select i1 %i.eu, i32 9, i32 8
  br label %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1

bb.aj:                                            ; preds = %bb.ag
  br i1 %i.et, label %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = fcmp olt double %i.eo, %i.cs
  %spec.select387 = select i1 %i.ev, i32 6, i32 5
  br label %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1

_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1:       ; preds = %bb.ak, %bb.ai, %bb.ae
  %.0.i161.jt1 = phi i32 [ %spec.select387, %bb.ak ], [ %spec.select386, %bb.ai ], [ 1, %bb.ae ] ; 12 uses
  %.not116.jt1 = icmp eq i32 %.0.i161.jt1, %.0104308
  br i1 %.not116.jt1, label %bb.bz, label %bb.al

_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4:       ; preds = %bb.af, %bb.ah, %bb.aj
  %.0.i161.jt4 = phi i32 [ 4, %bb.aj ], [ %spec.select385, %bb.af ], [ 7, %bb.ah ] ; 11 uses
  %.not116.jt4 = icmp eq i32 %.0.i161.jt4, %.0104308
  br i1 %.not116.jt4, label %bb.bz, label %bb.an

bb.al:                                            ; preds = %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1
  %.not117.jt1 = icmp eq i32 %.0.i161.jt1, 5
  br i1 %.not117.jt1, label %bb.br, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %12, i8 0, i64 16, i1 false)
  switch i32 %.0104308, label %default.unreachable349 [
    i32 5, label %bb.ao
    i32 1, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298
    i32 2, label %.split
    i32 3, label %bb.aw
    i32 4, label %_ZNK8QCPCurve11mayTraverseEii.exit
    i32 9, label %bb.ay
    i32 6, label %.split301
    i32 7, label %bb.ax
    i32 8, label %.split300
  ]

bb.an:                                            ; preds = %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %12, i8 0, i64 16, i1 false)
  switch i32 %.0104308, label %default.unreachable349 [
    i32 5, label %bb.ao
    i32 1, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread
    i32 2, label %.split
    i32 3, label %bb.aw
    i32 4, label %_ZNK8QCPCurve11mayTraverseEii.exit
    i32 9, label %bb.ay
    i32 6, label %.split301
    i32 7, label %bb.ax
    i32 8, label %.split300
  ]

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.0.i161357 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.ew = load double, ptr %i.el, align 8
  %i.ex = load double, ptr %i.en, align 8
  %i.ey = getelementptr i8, ptr %.sroa.0.0307, i64 8 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %.sroa.0.0307, i64 16 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8
  %i.fc = call { double, double } @_ZNK8QCPCurve17getOptimizedPointEidddddddd(ptr noundef align 8 dereferenceable_or_null(288) %0, i32 noundef %.0.i161357, double noundef %i.ew, double noundef %i.ex, double noundef %i.ez, double noundef %i.fb, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs) ; 2 uses
  %i.fd = extractvalue { double, double } %i.fc, 0
  store double %i.fd, ptr %13, align 8
  %i.fe = extractvalue { double, double } %i.fc, 1
  store double %i.fe, ptr %i.eg, align 8
  %i.ff = load i64, ptr %i.b, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc165 unwind label %bb.as

.noexc165:                                        ; preds = %bb.ao
  %i.fg = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc165
  %i.fh = load atomic i32, ptr %i.fg monotonic, align 4
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI7QPointFE6appendEOS0_.exit

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i, %.noexc165
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFE6appendEOS0_.exit unwind label %bb.as

_ZN5QListI7QPointFE6appendEOS0_.exit:             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %i.fj = load double, ptr %i.ey, align 8
  %i.fk = load double, ptr %i.fa, align 8
  %i.fl = load double, ptr %i.el, align 8
  %i.fm = load double, ptr %i.en, align 8
  invoke void @_ZNK8QCPCurve24getOptimizedCornerPointsEiidddddddd(ptr dead_on_unwind nonnull writable sret(%class.QList.197) align 8 %14, ptr noundef align 8 dereferenceable_or_null(288) %0, i32 noundef 5, i32 noundef %.0.i161357, double noundef %i.fj, double noundef %i.fk, double noundef %i.fl, double noundef %i.fm, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %_ZN5QListI7QPointFE6appendEOS0_.exit
  invoke void @_ZN5QListI7QPointFE6appendEOS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZN5QListI7QPointFElsEOS1_.exit unwind label %bb.au

_ZN5QListI7QPointFElsEOS1_.exit:                  ; preds = %bb.ap
  %i.fn = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i168, label %_ZN5QListI7QPointFED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i169

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i169: ; preds = %_ZN5QListI7QPointFElsEOS1_.exit
  %i.fo = atomicrmw add ptr %i.fn, i32 -1 acq_rel, align 4
  %.not.i.i170 = icmp eq i32 %i.fo, 1
  br i1 %.not.i.i170, label %bb.aq, label %_ZN5QListI7QPointFED2Ev.exit

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i169
  %i.fp = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fp, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit

_ZN5QListI7QPointFED2Ev.exit:                     ; preds = %_ZN5QListI7QPointFElsEOS1_.exit, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i169, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  br label %bb.bp

bb.ar:                                            ; preds = %._crit_edge
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.as:                                            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %bb.bq

bb.at:                                            ; preds = %_ZN5QListI7QPointFE6appendEOS0_.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI7QPointFED2Ev.exit174

bb.au:                                            ; preds = %bb.ap
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fu = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i171, label %_ZN5QListI7QPointFED2Ev.exit174, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i172

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i172: ; preds = %bb.au
  %i.fv = atomicrmw add ptr %i.fu, i32 -1 acq_rel, align 4
  %.not.i.i173 = icmp eq i32 %i.fv, 1
  br i1 %.not.i.i173, label %bb.av, label %_ZN5QListI7QPointFED2Ev.exit174

bb.av:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i172
  %i.fw = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fw, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit174

_ZN5QListI7QPointFED2Ev.exit174:                  ; preds = %bb.av, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i172, %bb.au, %bb.at
  %.pn119 = phi { ptr, i32 } [ %i.fs, %bb.at ], [ %i.ft, %bb.au ], [ %i.ft, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i172 ], [ %i.ft, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  br label %bb.bq

.split:                                           ; preds = %bb.am, %bb.an
  %.0.i161358 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 3 uses
  %i.fx = add nsw i32 %.0.i161358, -1
  %switch.and.i = and i32 %i.fx, -3
  %switch.selectcmp.i.not = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298

bb.aw:                                            ; preds = %bb.am, %bb.an
  %.0.i161359 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 2 uses
  %switch.tableidx = add nsw i32 %.0.i161359, -1  ; 3 uses
  %i.fy = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 291, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond408 = select i1 %i.fy, i1 %switch.lobit, i1 false
  br i1 %or.cond408, label %switch.lookup401, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298

.split301:                                        ; preds = %bb.am, %bb.an
  %.0.i161362 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 4 uses
  switch i32 %.0.i161362, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298 [
    i32 9, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread
    i32 3, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread
  ]

bb.ax:                                            ; preds = %bb.am, %bb.an
  %.0.i161363 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 2 uses
  %switch.tableidx388 = add nsw i32 %.0.i161363, -1 ; 3 uses
  %i.fz = icmp ult i32 %switch.tableidx388, 9
  %switch.maskindex392 = trunc nsw i32 %switch.tableidx388 to i16
  %switch.shifted393 = lshr i16 393, %switch.maskindex392
  %switch.lobit394 = trunc i16 %switch.shifted393 to i1
  %or.cond409 = select i1 %i.fz, i1 %switch.lobit394, i1 false
  br i1 %or.cond409, label %switch.lookup401, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298

.split300:                                        ; preds = %bb.am, %bb.an
  %.0.i161364 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 3 uses
  %i.ga = add nsw i32 %.0.i161364, -7
  %switch.and13.i = and i32 %i.ga, -3
  %switch.selectcmp14.i.not = icmp eq i32 %switch.and13.i, 0
  br i1 %switch.selectcmp14.i.not, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298

bb.ay:                                            ; preds = %bb.am, %bb.an
  %.0.i161361 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 2 uses
  %switch.tableidx398 = add nsw i32 %.0.i161361, -3 ; 3 uses
  %i.gb = icmp ult i32 %switch.tableidx398, 6
  %switch.maskindex402 = trunc nsw i32 %switch.tableidx398 to i8
  %switch.shifted403 = lshr i8 57, %switch.maskindex402
  %switch.lobit404 = trunc i8 %switch.shifted403 to i1
  %or.cond410 = select i1 %i.gb, i1 %switch.lobit404, i1 false
  br i1 %or.cond410, label %switch.lookup401, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298

_ZNK8QCPCurve11mayTraverseEii.exit:               ; preds = %bb.am, %bb.an
  %.0.i161360 = phi i32 [ %.0.i161.jt1, %bb.am ], [ %.0.i161.jt4, %bb.an ] ; 4 uses
  switch i32 %.0.i161360, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread298 [
    i32 7, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread
    i32 1, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread
  ]

default.unreachable349:                           ; preds = %bb.am, %bb.an
  unreachable

_ZNK8QCPCurve11mayTraverseEii.exit.thread298:     ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.am, %_ZNK8QCPCurve11mayTraverseEii.exit, %.split301, %.split300, %.split
  %.0.i161366 = phi i32 [ %.0.i161358, %.split ], [ %.0.i161360, %_ZNK8QCPCurve11mayTraverseEii.exit ], [ %.0.i161362, %.split301 ], [ %.0.i161361, %bb.ay ], [ %.0.i161363, %bb.ax ], [ %.0.i161359, %bb.aw ], [ %.0.i161.jt1, %bb.am ], [ %.0.i161364, %.split300 ] ; 3 uses
  %i.gc = getelementptr i8, ptr %.sroa.0.0307, i64 8
  %i.gd = load double, ptr %i.gc, align 8
  %i.ge = getelementptr i8, ptr %.sroa.0.0307, i64 16
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = load double, ptr %i.el, align 8
  %i.gh = load double, ptr %i.en, align 8
  %i.gi = invoke noundef zeroext i1 @_ZNK8QCPCurve11getTraverseEddddddddR7QPointFS1_(ptr noundef align 8 dereferenceable_or_null(288) %0, double noundef %i.gd, double noundef %i.gf, double noundef %i.gg, double noundef %i.gh, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %_ZNK8QCPCurve11mayTraverseEii.exit.thread298
  br i1 %i.gi, label %bb.ba, label %_ZNK8QCPCurve11mayTraverseEii.exit.thread

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %16, i8 0, i64 24, i1 false)
  invoke void @_ZNK8QCPCurve23getTraverseCornerPointsEiiddddR5QListI7QPointFES3_(ptr noundef align 8 dereferenceable_or_null(288) %0, i32 noundef %.0104308, i32 noundef %.0.i161366, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %.sroa.02.0.copyload = load ptr, ptr %8, align 8
  %.not303 = icmp eq ptr %.sroa.0274.0306, %.sroa.02.0.copyload
  br i1 %.not303, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gj = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.gk = load i64, ptr %i.ec, align 8
  %i.gl = getelementptr [16 x i8], ptr %i.gj, i64 %i.gk
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI7QPointFE10growAppendEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, ptr noundef %i.gj, ptr noundef %i.gl)
          to label %_ZN5QListI7QPointFElsERKS1_.exit unwind label %bb.be

_ZN5QListI7QPointFElsERKS1_.exit:                 ; preds = %bb.bc
  %i.gm = load i64, ptr %i.b, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc180 unwind label %bb.be

.noexc180:                                        ; preds = %_ZN5QListI7QPointFElsERKS1_.exit
  %i.gn = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i177 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i177, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i179, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i178

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i178: ; preds = %.noexc180
  %i.go = load atomic i32, ptr %i.gn monotonic, align 4
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i179, label %_ZN5QListI7QPointFE6appendERKS0_.exit

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i179: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i178, %.noexc180
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFE6appendERKS0_.exit unwind label %bb.be

_ZN5QListI7QPointFE6appendERKS0_.exit:            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i178, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i179
  %i.gq = load i64, ptr %i.b, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc185 unwind label %bb.be

.noexc185:                                        ; preds = %_ZN5QListI7QPointFE6appendERKS0_.exit
  %i.gr = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i182 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i182, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i184, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i183

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i183: ; preds = %.noexc185
  %i.gs = load atomic i32, ptr %i.gr monotonic, align 4
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i184, label %_ZN5QListI7QPointFE6appendERKS0_.exit187

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i184: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i183, %.noexc185
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFE6appendERKS0_.exit187 unwind label %bb.be

_ZN5QListI7QPointFE6appendERKS0_.exit187:         ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i183, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i184
  %i.gu = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.gv = load i64, ptr %i.ee, align 8
  %i.gw = getelementptr [16 x i8], ptr %i.gu, i64 %i.gv
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI7QPointFE10growAppendEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, ptr noundef %i.gu, ptr noundef %i.gw)
          to label %_ZN5QListI7QPointFElsERKS1_.exit189 unwind label %bb.be

bb.bd:                                            ; preds = %_ZNK8QCPCurve11mayTraverseEii.exit.thread298
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.be:                                            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZN5QListI7QPointFElsERKS1_.exit207, %_ZN5QListI7QPointFElsERKS1_.exit205, %_ZN5QListI7QPointFE6appendERKS0_.exit203, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i200, %bb.bh, %_ZN5QListI7QPointFE6appendERKS0_.exit187, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i184, %_ZN5QListI7QPointFE6appendERKS0_.exit, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i179, %_ZN5QListI7QPointFElsERKS1_.exit, %bb.bc, %bb.ba
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i.i.i190 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i190, label %_ZN5QListI7QPointFED2Ev.exit193, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i191

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i191: ; preds = %bb.be
  %i.ha = atomicrmw add ptr %i.gz, i32 -1 acq_rel, align 4
  %.not.i.i192 = icmp eq i32 %i.ha, 1
  br i1 %.not.i.i192, label %bb.bf, label %_ZN5QListI7QPointFED2Ev.exit193

bb.bf:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i191
  %i.hb = load ptr, ptr %16, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hb, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit193

_ZN5QListI7QPointFED2Ev.exit193:                  ; preds = %bb.be, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i191, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  %i.hc = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i194, label %_ZN5QListI7QPointFED2Ev.exit197, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i195

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i195: ; preds = %_ZN5QListI7QPointFED2Ev.exit193
  %i.hd = atomicrmw add ptr %i.hc, i32 -1 acq_rel, align 4
  %.not.i.i196 = icmp eq i32 %i.hd, 1
  br i1 %.not.i.i196, label %bb.bg, label %_ZN5QListI7QPointFED2Ev.exit197

bb.bg:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i195
  %i.he = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.he, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit197

_ZN5QListI7QPointFED2Ev.exit197:                  ; preds = %_ZN5QListI7QPointFED2Ev.exit193, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i195, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %bb.bq

bb.bh:                                            ; preds = %bb.bb
  %i.hf = load i64, ptr %i.b, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc201 unwind label %bb.be

.noexc201:                                        ; preds = %bb.bh
  %i.hg = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i198 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i198, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i200, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i199

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i199: ; preds = %.noexc201
  %i.hh = load atomic i32, ptr %i.hg monotonic, align 4
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i200, label %_ZN5QListI7QPointFE6appendERKS0_.exit203

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i200: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i199, %.noexc201
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFE6appendERKS0_.exit203 unwind label %bb.be

_ZN5QListI7QPointFE6appendERKS0_.exit203:         ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i199, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i200
  %i.hj = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.hk = load i64, ptr %i.ee, align 8
  %i.hl = getelementptr [16 x i8], ptr %i.hj, i64 %i.hk
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI7QPointFE10growAppendEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, ptr noundef %i.hj, ptr noundef %i.hl)
          to label %_ZN5QListI7QPointFElsERKS1_.exit205 unwind label %bb.be

_ZN5QListI7QPointFElsERKS1_.exit205:              ; preds = %_ZN5QListI7QPointFE6appendERKS0_.exit203
  %i.hm = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.hn = load i64, ptr %i.ec, align 8
  %i.ho = getelementptr [16 x i8], ptr %i.hm, i64 %i.hn
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI7QPointFE10growAppendEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef %i.hm, ptr noundef %i.ho)
          to label %_ZN5QListI7QPointFElsERKS1_.exit207 unwind label %bb.be

_ZN5QListI7QPointFElsERKS1_.exit207:              ; preds = %_ZN5QListI7QPointFElsERKS1_.exit205
  %i.hp = load i64, ptr %i.ef, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i64 noundef %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc208 unwind label %bb.be

.noexc208:                                        ; preds = %_ZN5QListI7QPointFElsERKS1_.exit207
  %i.hq = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc208
  %i.hr = load atomic i32, ptr %i.hq monotonic, align 4
  %i.hs = icmp sgt i32 %i.hr, 1
  br i1 %i.hs, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListI7QPointFElsERKS1_.exit189

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc208
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFElsERKS1_.exit189 unwind label %bb.be

_ZN5QListI7QPointFElsERKS1_.exit189:              ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZN5QListI7QPointFE6appendERKS0_.exit187
  %i.ht = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i210, label %_ZN5QListI7QPointFED2Ev.exit213, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i211

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i211: ; preds = %_ZN5QListI7QPointFElsERKS1_.exit189
  %i.hu = atomicrmw add ptr %i.ht, i32 -1 acq_rel, align 4
  %.not.i.i212 = icmp eq i32 %i.hu, 1
  br i1 %.not.i.i212, label %bb.bi, label %_ZN5QListI7QPointFED2Ev.exit213

bb.bi:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i211
  %i.hv = load ptr, ptr %16, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hv, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit213

_ZN5QListI7QPointFED2Ev.exit213:                  ; preds = %_ZN5QListI7QPointFElsERKS1_.exit189, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i211, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  %i.hw = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i214, label %_ZN5QListI7QPointFED2Ev.exit217, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i215

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i215: ; preds = %_ZN5QListI7QPointFED2Ev.exit213
  %i.hx = atomicrmw add ptr %i.hw, i32 -1 acq_rel, align 4
  %.not.i.i216 = icmp eq i32 %i.hx, 1
  br i1 %.not.i.i216, label %bb.bj, label %_ZN5QListI7QPointFED2Ev.exit217

bb.bj:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i215
  %i.hy = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hy, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit217

_ZN5QListI7QPointFED2Ev.exit217:                  ; preds = %_ZN5QListI7QPointFED2Ev.exit213, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i215, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %bb.bp

switch.lookup401:                                 ; preds = %bb.ay, %bb.ax, %bb.aw
  %switch.tableidx398.sink = phi i32 [ %switch.tableidx388, %bb.ax ], [ %switch.tableidx, %bb.aw ], [ %switch.tableidx398, %bb.ay ]
  %switch.table._ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged.6.sink = phi ptr [ @switch.table._ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged.5, %bb.ax ], [ @switch.table._ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged, %bb.aw ], [ @switch.table._ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged.6, %bb.ay ]
  %i.hz = zext nneg i32 %switch.tableidx398.sink to i64
  %switch.gep405 = getelementptr inbounds nuw i8, ptr %switch.table._ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged.6.sink, i64 %i.hz
  %switch.load406 = load i8, ptr %switch.gep405, align 1
  %switch.ext407 = zext i8 %switch.load406 to i32
  br label %_ZNK8QCPCurve11mayTraverseEii.exit.thread

_ZNK8QCPCurve11mayTraverseEii.exit.thread:        ; preds = %switch.lookup401, %bb.an, %_ZNK8QCPCurve11mayTraverseEii.exit, %_ZNK8QCPCurve11mayTraverseEii.exit, %.split301, %.split301, %.split300, %.split, %bb.az
  %.0.i161365 = phi i32 [ %.0.i161366, %bb.az ], [ %.0.i161360, %_ZNK8QCPCurve11mayTraverseEii.exit ], [ %.0.i161360, %_ZNK8QCPCurve11mayTraverseEii.exit ], [ %.0.i161362, %.split301 ], [ %.0.i161362, %.split301 ], [ %.0.i161364, %.split300 ], [ %.0.i161.jt4, %bb.an ], [ %.0.i161358, %.split ], [ %switch.ext407, %switch.lookup401 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  %i.ia = getelementptr i8, ptr %.sroa.0.0307, i64 8
  %i.ib = load double, ptr %i.ia, align 8
  %i.ic = getelementptr i8, ptr %.sroa.0.0307, i64 16
  %i.id = load double, ptr %i.ic, align 8
  %i.ie = load double, ptr %i.el, align 8
  %i.if = load double, ptr %i.en, align 8
  invoke void @_ZNK8QCPCurve24getOptimizedCornerPointsEiidddddddd(ptr dead_on_unwind nonnull writable sret(%class.QList.197) align 8 %17, ptr noundef align 8 dereferenceable_or_null(288) %0, i32 noundef %.0104308, i32 noundef %.0.i161365, double noundef %i.ib, double noundef %i.id, double noundef %i.ie, double noundef %i.if, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %_ZNK8QCPCurve11mayTraverseEii.exit.thread
  invoke void @_ZN5QListI7QPointFE6appendEOS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5QListI7QPointFElsEOS1_.exit219 unwind label %bb.bn

_ZN5QListI7QPointFElsEOS1_.exit219:               ; preds = %bb.bk
  %i.ig = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i220, label %_ZN5QListI7QPointFED2Ev.exit223, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i221

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i221: ; preds = %_ZN5QListI7QPointFElsEOS1_.exit219
  %i.ih = atomicrmw add ptr %i.ig, i32 -1 acq_rel, align 4
  %.not.i.i222 = icmp eq i32 %i.ih, 1
  br i1 %.not.i.i222, label %bb.bl, label %_ZN5QListI7QPointFED2Ev.exit223

bb.bl:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i221
  %i.ii = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ii, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit223

_ZN5QListI7QPointFED2Ev.exit223:                  ; preds = %_ZN5QListI7QPointFElsEOS1_.exit219, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i221, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  br label %bb.bp

bb.bm:                                            ; preds = %_ZNK8QCPCurve11mayTraverseEii.exit.thread
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI7QPointFED2Ev.exit227

bb.bn:                                            ; preds = %bb.bk
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.il = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i224, label %_ZN5QListI7QPointFED2Ev.exit227, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i225

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i225: ; preds = %bb.bn
  %i.im = atomicrmw add ptr %i.il, i32 -1 acq_rel, align 4
  %.not.i.i226 = icmp eq i32 %i.im, 1
  br i1 %.not.i.i226, label %bb.bo, label %_ZN5QListI7QPointFED2Ev.exit227

bb.bo:                                            ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i225
  %i.in = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.in, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit227

_ZN5QListI7QPointFED2Ev.exit227:                  ; preds = %bb.bo, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i225, %bb.bn, %bb.bm
  %.pn = phi { ptr, i32 } [ %i.ij, %bb.bm ], [ %i.ik, %bb.bn ], [ %i.ik, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i225 ], [ %i.ik, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  br label %bb.bq

bb.bp:                                            ; preds = %_ZN5QListI7QPointFED2Ev.exit217, %_ZN5QListI7QPointFED2Ev.exit223, %_ZN5QListI7QPointFED2Ev.exit
  %.0.i161367 = phi i32 [ %.0.i161366, %_ZN5QListI7QPointFED2Ev.exit217 ], [ %.0.i161365, %_ZN5QListI7QPointFED2Ev.exit223 ], [ %.0.i161357, %_ZN5QListI7QPointFED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %bb.cd

bb.bq:                                            ; preds = %_ZN5QListI7QPointFED2Ev.exit227, %_ZN5QListI7QPointFED2Ev.exit197, %bb.bd, %_ZN5QListI7QPointFED2Ev.exit174, %bb.as
  %.pn119.pn = phi { ptr, i32 } [ %.pn119, %_ZN5QListI7QPointFED2Ev.exit174 ], [ %i.fr, %bb.as ], [ %i.gy, %_ZN5QListI7QPointFED2Ev.exit197 ], [ %.pn, %_ZN5QListI7QPointFED2Ev.exit227 ], [ %i.gx, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %bb.ch

bb.br:                                            ; preds = %bb.al
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8
  %i.io = icmp eq ptr %.sroa.0274.0306, %.sroa.0.0.copyload
  %i.ip = getelementptr i8, ptr %.sroa.0.0307, i64 8 ; 2 uses
  %i.iq = getelementptr i8, ptr %.sroa.0.0307, i64 16 ; 2 uses
  br i1 %i.io, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #49
  %i.ir = load double, ptr %i.ip, align 8
  %i.is = load double, ptr %i.iq, align 8
  %i.it = load double, ptr %i.el, align 8
  %i.iu = load double, ptr %i.en, align 8
  %i.iv = call { double, double } @_ZNK8QCPCurve17getOptimizedPointEidddddddd(ptr noundef align 8 dereferenceable_or_null(288) %0, i32 noundef %.0104308, double noundef %i.ir, double noundef %i.is, double noundef %i.it, double noundef %i.iu, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs) ; 2 uses
  %i.iw = extractvalue { double, double } %i.iv, 0
  store double %i.iw, ptr %18, align 8
  %i.ix = extractvalue { double, double } %i.iv, 1
  store double %i.ix, ptr %i.ei, align 8
  %i.iy = load i64, ptr %i.ef, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i64 noundef %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %.noexc231 unwind label %bb.bt

.noexc231:                                        ; preds = %bb.bs
  %i.iz = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i228 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i.i.i.i.i228, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i230, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i229

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i229: ; preds = %.noexc231
  %i.ja = load atomic i32, ptr %i.iz monotonic, align 4
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i230, label %_ZN5QListI7QPointFElsEOS0_.exit

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i230: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i229, %.noexc231
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFElsEOS0_.exit unwind label %bb.bt

_ZN5QListI7QPointFElsEOS0_.exit:                  ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i.i229, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #49
  br label %bb.bw

bb.bt:                                            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i.i230, %bb.bs
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #49
  br label %bb.ch

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #49
  %i.jd = load double, ptr %i.ip, align 8
  %i.je = load double, ptr %i.iq, align 8
  %i.jf = load double, ptr %i.el, align 8
  %i.jg = load double, ptr %i.en, align 8
  %i.jh = call { double, double } @_ZNK8QCPCurve17getOptimizedPointEidddddddd(ptr noundef align 8 dereferenceable_or_null(288) %0, i32 noundef %.0104308, double noundef %i.jd, double noundef %i.je, double noundef %i.jf, double noundef %i.jg, double noundef %i.bz, double noundef %i.da, double noundef %i.ch, double noundef %i.cs) ; 2 uses
  %i.ji = extractvalue { double, double } %i.jh, 0
  store double %i.ji, ptr %19, align 8
  %i.jj = extractvalue { double, double } %i.jh, 1
  store double %i.jj, ptr %i.eh, align 8
  %i.jk = load i64, ptr %i.b, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.jk, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %.noexc236 unwind label %bb.bv

.noexc236:                                        ; preds = %bb.bu
  %i.jl = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i233 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i.i.i233, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i235, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i234

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i234: ; preds = %.noexc236
  %i.jm = load atomic i32, ptr %i.jl monotonic, align 4
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i235, label %_ZN5QListI7QPointFE6appendEOS0_.exit238

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i235: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i234, %.noexc236
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFE6appendEOS0_.exit238 unwind label %bb.bv

_ZN5QListI7QPointFE6appendEOS0_.exit238:          ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i234, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  br label %bb.bw

bb.bv:                                            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i235, %bb.bu
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  br label %bb.ch

bb.bw:                                            ; preds = %_ZN5QListI7QPointFE6appendEOS0_.exit238, %_ZN5QListI7QPointFElsEOS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #49
  %i.jp = load double, ptr %i.el, align 8
  %i.jq = load double, ptr %i.en, align 8
  %i.jr = invoke { double, double } @_ZNK20QCPAbstractPlottable14coordsToPixelsEdd(ptr noundef align 8 dereferenceable_or_null(184) %0, double noundef %i.jp, double noundef %i.jq)
          to label %bb.bx unwind label %bb.by     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.js = extractvalue { double, double } %i.jr, 0
  store double %i.js, ptr %20, align 8
  %i.jt = extractvalue { double, double } %i.jr, 1
  store double %i.jt, ptr %i.ej, align 8
  %i.ju = load i64, ptr %i.b, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsI7QPointFE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %.noexc242 unwind label %bb.by

.noexc242:                                        ; preds = %bb.bx
  %i.jv = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i239 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i239, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i241, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i240

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i240: ; preds = %.noexc242
  %i.jw = load atomic i32, ptr %i.jv monotonic, align 4
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i241, label %_ZN5QListI7QPointFE6appendERKS0_.exit244

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i241: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i240, %.noexc242
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QPointFE6appendERKS0_.exit244 unwind label %bb.by

_ZN5QListI7QPointFE6appendERKS0_.exit244:         ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i.i240, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  br label %bb.cd

bb.by:                                            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i.i241, %bb.bx, %bb.bw
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  br label %bb.ch

bb.bz:                                            ; preds = %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1, %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4
  %.0.i161355 = phi i32 [ %.0.i161.jt1, %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt1 ], [ %.0.i161.jt4, %_ZNK8QCPCurve9getRegionEdddddd.exit164.jt4 ] ; 2 uses
  %i.jz = icmp eq i32 %.0104308, 5
end_hunk_0
