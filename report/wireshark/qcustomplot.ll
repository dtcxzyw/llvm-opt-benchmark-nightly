Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK28QCPSelectionDecoratorBracket15getTangentAngleEPK23QCPPlottableInterface1Dii:bb.a

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink120 = phi i32 [ %i.o, %bb.d ], [ %2, %bb.c ]
  %i.p = load i32, ptr %i.i, align 8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %.sink120) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store i32 2, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.r, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.s = load ptr, ptr %4, align 8
  %i.t = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.s, i32 noundef %.sroa.speculated)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !175, !noundef !176
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN6QDebuglsEi.exit

bb.f:                                             ; preds = %.noexc
  %i.y = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.u, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.g ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc, %bb.f
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.z = sext i32 %.sroa.speculated to i64        ; 3 uses
  %i.aa = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %6, i64 noundef 16, i64 noundef 8, i64 noundef %i.z, i32 noundef 1) #49 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 8) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8
  %.not.i = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i, label %._crit_edge96, label %_ZN5QListI7QPointFEC2Ex.exit

_ZN5QListI7QPointFEC2Ex.exit:                     ; preds = %_ZN6QDebuglsEi.exit
  store i64 %i.z, ptr %i.ac, align 8
  %.idx6.i.i = shl nsw i64 %i.z, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx6.i.i, i1 false)
  %i.ad = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge96

.lr.ph.preheader:                                 ; preds = %_ZN5QListI7QPointFEC2Ex.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  %i.ae = sitofp i32 %.sroa.speculated to double
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.bf, %i.ag          ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ai = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.ai, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.04088 = phi i32 [ %2, %.lr.ph.preheader ], [ %i.bg, %bb.j ] ; 2 uses
  %i.ak = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bf, %bb.j ]
  %i.al = invoke { double, double } @_ZNK28QCPSelectionDecoratorBracket19getPixelCoordinatesEPK23QCPPlottableInterface1Di(ptr noundef align 8 dereferenceable_or_null(148) %0, ptr noundef nonnull %1, i32 noundef %.04088)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI7QPointFE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i: ; preds = %bb.h
  %i.an = load atomic i32, ptr %i.am monotonic, align 4
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %_ZN5QListI7QPointFE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i

_ZN5QListI7QPointFE6detachEv.exit.i:              ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %bb.h
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc53 unwind label %bb.k

.noexc53:                                         ; preds = %_ZN5QListI7QPointFE6detachEv.exit.i
  %.pre.i = load ptr, ptr %6, align 8             ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc53, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i
  %i.ap = phi ptr [ %.pre.i, %.noexc53 ], [ %i.am, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i ]
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, label %bb.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i, %.noexc53
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i
  %i.as = load ptr, ptr %i.ab, align 8
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = extractvalue { double, double } %i.al, 1
  %i.av = extractvalue { double, double } %i.al, 0
  store double %i.av, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.au, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i55, label %_ZN5QListI7QPointFE6detachEv.exit.i59, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56: ; preds = %bb.i
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %_ZN5QListI7QPointFE6detachEv.exit.i59, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57

_ZN5QListI7QPointFE6detachEv.exit.i59:            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56, %bb.i
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc62 unwind label %bb.k

.noexc62:                                         ; preds = %_ZN5QListI7QPointFE6detachEv.exit.i59
  %.pre.i60 = load ptr, ptr %6, align 8           ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre.i60, null
  br i1 %.not.i.i.i.i.i61, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57: ; preds = %.noexc62, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56
  %i.az = phi ptr [ %.pre.i60, %.noexc62 ], [ %i.aw, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56 ]
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58, label %bb.j

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57, %.noexc62
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58
  %i.bc = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.bd = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load <2 x double>, ptr %i.bd, align 8
  %i.bf = fadd <2 x double> %i.ak, %i.be          ; 2 uses
  %i.bg = add i32 %.04088, %i.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !873

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58, %_ZN5QListI7QPointFE6detachEv.exit.i59, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, %_ZN5QListI7QPointFE6detachEv.exit.i, %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QPointFED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i: ; preds = %bb.k
  %i.bj = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i, label %bb.l, label %_ZN5QListI7QPointFED2Ev.exit

bb.l:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i
  %i.bk = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bk, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit

_ZN5QListI7QPointFED2Ev.exit:                     ; preds = %bb.k, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.q

bb.m:                                             ; preds = %bb.m, %._crit_edge.new
  %indvars.iv103 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next104.1, %bb.m ] ; 3 uses
  %i.bl = phi <2 x double> [ zeroinitializer, %._crit_edge.new ], [ %i.bw, %bb.m ]
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.m ]
  %i.bm = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv103
  %i.bn = load <2 x double>, ptr %i.bm, align 8
  %i.bo = fsub <2 x double> %i.bn, %i.ah          ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bo, <2 x double> %i.bl)
  %i.br = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv103
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %i.bt = load <2 x double>, ptr %i.bs, align 8
  %i.bu = fsub <2 x double> %i.bt, %i.ah          ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bu, <2 x double> %i.bq) ; 3 uses
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge96.loopexit.unr-lcssa, label %bb.m, !llvm.loop !874

._crit_edge96.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge96.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge96.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv103.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next104.1, %._crit_edge96.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.bw, %._crit_edge96.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i32 %.sroa.speculated to i1
  call void @llvm.assume(i1 %lcmp.mod128)
  %i.bx = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv103.epil.init
  %i.by = load <2 x double>, ptr %i.bx, align 8
  %i.bz = fsub <2 x double> %i.by, %i.ah          ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bz, <2 x double> %.epil.init)
  br label %._crit_edge96.loopexit

._crit_edge96.loopexit:                           ; preds = %._crit_edge96.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi <2 x double> [ %i.bw, %._crit_edge96.loopexit.unr-lcssa ], [ %i.cb, %.epil.preheader ]
  %7 = freeze <2 x double> %.lcssa
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %_ZN6QDebuglsEi.exit, %_ZN5QListI7QPointFEC2Ex.exit
  %.fr125 = phi <2 x double> [ zeroinitializer, %_ZN5QListI7QPointFEC2Ex.exit ], [ zeroinitializer, %_ZN6QDebuglsEi.exit ], [ %7, %._crit_edge96.loopexit ] ; 3 uses
  %i.cc = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr125)
  %i.cd = fcmp ole <2 x double> %i.cc, splat (double f0x3D719799812DEA11)
  %8 = bitcast <2 x i1> %i.cd to i2
  %or.cond83.not = icmp eq i2 %8, 0
  br i1 %or.cond83.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge96
  %i.ce = extractelement <2 x double> %.fr125, i64 0
  %i.cf = extractelement <2 x double> %.fr125, i64 1
  %i.cg = call noundef double @atan2(double noundef %i.cf, double noundef %i.ce) #49
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge96, %bb.n
  %.0 = phi double [ %i.cg, %bb.n ], [ 0.000000e+00, %._crit_edge96 ]
  %i.ch = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i65, label %_ZN5QListI7QPointFED2Ev.exit68, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66: ; preds = %bb.o
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %.not.i.i67 = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i67, label %bb.p, label %_ZN5QListI7QPointFED2Ev.exit68

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66
  %i.cj = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cj, i64 noundef 16, i64 noundef 8) #49
  br label %_ZN5QListI7QPointFED2Ev.exit68

_ZN5QListI7QPointFED2Ev.exit68:                   ; preds = %bb.o, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.r

bb.q:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %_ZN5QListI7QPointFED2Ev.exit ], [ %i.aj, %bb.g ]
  resume { ptr, i32 } %.pn.pn.pn

bb.r:                                             ; preds = %bb.a, %bb.b, %_ZN5QListI7QPointFED2Ev.exit68
  %.1 = phi double [ %.0, %_ZN5QListI7QPointFED2Ev.exit68 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 8 dereferenceable(16) ptr @_ZN5QListI7QPointFEixEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QPointFE6detachEv.exit, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZN5QListI7QPointFE6detachEv.exit, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZN5QListI7QPointFE6detachEv.exit:                ; preds = %bb.a, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i
  tail call void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i, %_ZN5QListI7QPointFE6detachEv.exit
  %i.d = phi ptr [ %.pre, %_ZN5QListI7QPointFE6detachEv.exit ], [ %i.a, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i ]
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListI7QPointFE4dataEv.exit

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %_ZN5QListI7QPointFE6detachEv.exit
  tail call void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI7QPointFE4dataEv.exit

_ZN5QListI7QPointFE4dataEv.exit:                  ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr [16 x i8], ptr %i.h, i64 %1
  ret ptr %i.i
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPAxisRectC2EP11QCustomPlotb(ptr noundef align 8 dereferenceable_or_null(432) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.QList.143, align 8           ; 9 uses
  %4 = alloca %class.QList.143, align 8           ; 9 uses
  %5 = alloca %class.QList.143, align 8           ; 9 uses
  %6 = alloca %class.QList.143, align 8           ; 9 uses
  %7 = alloca %class.QPen, align 8                ; 6 uses
  %8 = alloca %class.QPen, align 8                ; 6 uses
  tail call void @_ZN16QCPLayoutElementC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(168) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV11QCPAxisRect, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  invoke void @_ZN6QBrushC1EN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.e, i32 noundef 0)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.f)
          to label %bb.c unwind label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.g)
          to label %bb.d unwind label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 2, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 232        ; 3 uses
  %i.k = invoke noalias noundef dereferenceable_or_null(264) ptr @_Znwm(i64 noundef 264) #52
          to label %bb.e unwind label %bb.ak      ; 4 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14QCPLayoutInsetC1Ev(ptr noundef align 8 dereferenceable_or_null(264) %i.k)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 3, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, i8 0, i64 96, i1 false)
  store <2 x double> splat (double 8.500000e-01), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.s, i8 0, i64 57, i1 false)
  %i.w = load ptr, ptr %i.v, align 8
  invoke void @_ZN12QCPLayerable20initializeParentPlotEP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(57) %i.k, ptr noundef %i.w)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i, label %_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef ptr @_ZN15QtSharedPointer20ExternalRefCountData9getAndRefEPK7QObject(ptr noundef nonnull %0)
          to label %_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aa = phi ptr [ null, %bb.g ], [ %i.z, %bb.h ]
  %i.ab = load ptr, ptr %i.y, align 8             ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8
  %i.ac = getelementptr i8, ptr %i.x, i64 40
  store ptr %0, ptr %i.ac, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN12QCPLayerable18setParentLayerableEPS_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i
  %i.ad = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %.not2.i.i.i.i.i = icmp eq i32 %i.ad, 1
  br i1 %.not2.i.i.i.i.i, label %bb.j, label %_ZN12QCPLayerable18setParentLayerableEPS_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #49
  br label %_ZN12QCPLayerable18setParentLayerableEPS_.exit

_ZN12QCPLayerable18setParentLayerableEPS_.exit:   ; preds = %bb.j, %bb.i, %_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i
  %i.ae = load ptr, ptr %i.j, align 8
  invoke void @_ZN7QObject9setParentEPS_(ptr noundef align 8 dereferenceable_or_null(16) %i.ae, ptr noundef %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_ZN12QCPLayerable18setParentLayerableEPS_.exit
  %i.af = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %.not.i.i.i = icmp ne i32 %i.ag, 50
  %i.ah = getelementptr i8, ptr %0, i64 76
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp ne i32 %i.ai, 50
  %i.ak = select i1 %.not.i.i.i, i1 true, i1 %i.aj
  br i1 %i.ak, label %bb.l, label %_ZN16QCPLayoutElement14setMinimumSizeEii.exit

bb.l:                                             ; preds = %bb.k
  store i64 214748364850, ptr %i.af, align 8
  %i.al = getelementptr i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN16QCPLayoutElement14setMinimumSizeEii.exit, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.l, %.noexc44
  %.tr.i.i.i = phi ptr [ %i.aw, %.noexc44 ], [ %i.am, %bb.l ]
  %i.an = getelementptr i8, ptr %.tr.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %tailrecurse.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %i.au = load i32, ptr %i.at, align 8
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %_Z12qobject_castIP7QWidgetET_P7QObject.exit.i.i.i, label %bb.n

_Z12qobject_castIP7QWidgetET_P7QObject.exit.i.i.i: ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZNK11QCPColorMap11getKeyRangeERbN3QCP10SignDomainE:_ZN8QCPRange9normalizeEv.exit
  br i1 %or.cond8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = fmul nnan double %.sroa.0.1, 1.000000e-03
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = fcmp oge double %.sroa.0.1, 0.000000e+00
  %or.cond11 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %1, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN8QCPRange9normalizeEv.exit, %bb.g, %bb.h, %bb.f, %bb.b, %bb.d, %bb.c
  %.sroa.7.0 = phi double [ %.sroa.7.1, %_ZN8QCPRange9normalizeEv.exit ], [ %.sroa.7.1, %bb.b ], [ %.sroa.7.1, %bb.d ], [ %.sroa.7.1, %bb.c ], [ %i.k, %bb.f ], [ %.sroa.7.1, %bb.h ], [ %.sroa.7.1, %bb.g ]
  %.sroa.0.0 = phi double [ %.sroa.0.1, %_ZN8QCPRange9normalizeEv.exit ], [ %i.g, %bb.b ], [ %.sroa.0.1, %bb.d ], [ %.sroa.0.1, %bb.c ], [ %.sroa.0.1, %bb.f ], [ %.sroa.0.1, %bb.h ], [ %.sroa.0.1, %bb.g ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK11QCPColorMap13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(393) %0, ptr nofree noundef writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.QCPRange, align 8            ; 3 uses
  %5 = alloca %class.QCPRange, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5)
  %i.a = load double, ptr %3, align 8             ; 2 uses
  %i.b = load double, ptr %5, align 8
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %_ZNK8QCPRangeneERKS_.exit, label %_ZNK8QCPRangeneERKS_.exit.thread

_ZNK8QCPRangeneERKS_.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.b

_ZNK8QCPRangeneERKS_.exit:                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = fcmp une double %i.e, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br i1 %i.h, label %bb.b, label %_ZN8QCPRange9normalizeEv.exit

bb.b:                                             ; preds = %_ZNK8QCPRangeneERKS_.exit.thread, %_ZNK8QCPRangeneERKS_.exit
  %i.i = getelementptr i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 16
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.k = fcmp olt double %.sroa.2.0.copyload.i, %i.a
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i = load double, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load double, ptr %i.m, align 8
  %i.o = fcmp ogt double %.sroa.0.0.copyload.i, %i.n
  br i1 %i.o, label %.critedge, label %_ZN8QCPRange9normalizeEv.exit

.critedge:                                        ; preds = %bb.b, %bb.c
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4)
  %.fca.0.load.pre = load double, ptr %4, align 8
  %.fca.1.gep.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.pre = load double, ptr %.fca.1.gep.phi.trans.insert, align 8
  br label %bb.l

_ZN8QCPRange9normalizeEv.exit:                    ; preds = %bb.c, %_ZNK8QCPRangeneERKS_.exit
  store i8 1, ptr %1, align 1
  %i.p = getelementptr i8, ptr %0, i64 208
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i28 = load double, ptr %i.r, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i29 = getelementptr i8, ptr %i.q, i64 32
  %.sroa.2.0.copyload.i30 = load double, ptr %.sroa.2.0..sroa_idx.i29, align 8 ; 3 uses
  %i.s = fcmp ogt double %.sroa.0.0.copyload.i28, %.sroa.2.0.copyload.i30 ; 2 uses
  %i.t = select i1 %i.s, double %.sroa.2.0.copyload.i30, double %.sroa.0.0.copyload.i28 ; 10 uses
  %i.u = select i1 %i.s, double %.sroa.0.0.copyload.i28, double %.sroa.2.0.copyload.i30 ; 10 uses
  switch i32 %2, label %bb.l [
    i32 2, label %bb.d
    i32 0, label %bb.h
  ]

bb.d:                                             ; preds = %_ZN8QCPRange9normalizeEv.exit
  %i.v = fcmp ole double %i.t, 0.000000e+00       ; 2 uses
  %i.w = fcmp ogt double %i.u, 0.000000e+00
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fmul nnan double %i.u, 1.000000e-03
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.y = fcmp ole double %i.u, 0.000000e+00
  %or.cond5 = and i1 %i.v, %i.y
  br i1 %or.cond5, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %1, align 1
  br label %bb.l

bb.h:                                             ; preds = %_ZN8QCPRange9normalizeEv.exit
  %i.z = fcmp oge double %i.u, 0.000000e+00       ; 2 uses
  %i.aa = fcmp olt double %i.t, 0.000000e+00
  %or.cond8 = and i1 %i.z, %i.aa
  br i1 %or.cond8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = fmul nnan double %i.t, 1.000000e-03
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ac = fcmp oge double %i.t, 0.000000e+00
  %or.cond11 = and i1 %i.z, %i.ac
  br i1 %or.cond11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %1, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN8QCPRange9normalizeEv.exit, %bb.f, %bb.g, %bb.e, %bb.i, %bb.k, %bb.j, %.critedge
  %.fca.1.load = phi double [ %i.u, %_ZN8QCPRange9normalizeEv.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %bb.e ], [ %i.ab, %bb.i ], [ %i.u, %bb.k ], [ %i.u, %bb.j ], [ %.fca.1.load.pre, %.critedge ]
  %.fca.0.load = phi double [ %i.t, %_ZN8QCPRange9normalizeEv.exit ], [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.x, %bb.e ], [ %i.t, %bb.i ], [ %i.t, %bb.k ], [ %i.t, %bb.j ], [ %.fca.0.load.pre, %.critedge ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPColorMap14updateMapImageEv(ptr noundef align 8 dereferenceable_or_null(393) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QImage, align 8              ; 6 uses
  %2 = alloca %class.QSize, align 8               ; 4 uses
  %3 = alloca %class.QImage, align 8              ; 6 uses
  %4 = alloca %class.QSize, align 8               ; 4 uses
  %5 = alloca %class.QImage, align 8              ; 6 uses
  %6 = alloca %class.QImage, align 8              ; 6 uses
  %7 = alloca %class.QImage, align 8              ; 6 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QImage, align 8             ; 6 uses
  %11 = alloca %class.QImage, align 8             ; 6 uses
  %12 = alloca %class.QImage, align 8             ; 5 uses
  %13 = alloca %class.QSize, align 4              ; 5 uses
  %14 = alloca %class.QImage, align 8             ; 5 uses
  %15 = alloca %class.QSize, align 4              ; 5 uses
  %16 = alloca %class.QDebug, align 8             ; 10 uses
  %17 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %18 = alloca %class.QImage, align 8             ; 5 uses
  %19 = alloca %class.QSize, align 4              ; 5 uses
  %20 = alloca %class.QImage, align 8             ; 5 uses
  %21 = alloca %class.QSize, align 8              ; 4 uses
  %22 = alloca %class.QImage, align 8             ; 5 uses
  %23 = alloca %class.QSize, align 8              ; 4 uses
  %24 = alloca %class.QImage, align 8             ; 5 uses
  %25 = alloca %class.QImage, align 8             ; 5 uses
  %26 = alloca %class.QImage, align 8             ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisE4dataEv.exit:              ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit
  %i.i = getelementptr i8, ptr %0, i64 208        ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %i.l = load i8, ptr %i.k, align 8, !range !175, !noundef !176
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 296
  %i.o = load i8, ptr %i.n, align 8, !range !175, !noundef !176
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load <2 x i32>, ptr %i.j, align 8        ; 14 uses
  %i.r = extractelement <2 x i32> %i.q, i64 0     ; 15 uses
  %i.s = sitofp <2 x i32> %i.q to <2 x double>
  %i.t = fdiv <2 x double> splat (double 1.000000e+02), %i.s
  %i.u = fadd <2 x double> %i.t, splat (double 1.000000e+00)
  %i.v = fptosi <2 x double> %i.u to <2 x i32>
  %i.w = insertelement <2 x i1> poison, i1 %i.p, i64 0
  %i.x = shufflevector <2 x i1> %i.w, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x i32> splat (i32 1), <2 x i32> %i.v
  %.fr171 = freeze <2 x i32> %i.y                 ; 9 uses
  %i.z = getelementptr i8, ptr %i.h, i64 76       ; 6 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %0, i64 320       ; 2 uses
  %i.ad = tail call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ac)
  %i.ae = extractelement <2 x i32> %.fr171, i64 0
  %i.af = mul i32 %i.ae, %i.r                     ; 2 uses
  %.not99 = icmp eq i32 %i.ad, %i.af
  br i1 %.not99, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.ag = extractelement <2 x i32> %.fr171, i64 1
  %i.ah = extractelement <2 x i32> %i.q, i64 1
  %.pre152 = mul i32 %i.ag, %i.ah
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call noundef i32 @_ZNK6QImage6heightEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ac)
  %i.aj = extractelement <2 x i32> %.fr171, i64 1
  %i.ak = extractelement <2 x i32> %i.q, i64 1
  %i.al = mul i32 %i.aj, %i.ak                    ; 2 uses
  %.not100 = icmp eq i32 %i.ai, %i.al
  br i1 %.not100, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi153 = phi i32 [ %.pre152, %._crit_edge ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  store i32 %i.af, ptr %13, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %.pre-phi153, ptr %i.am, align 4
  call void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %11, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr null, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  store ptr %i.ar, ptr %i.an, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %bb.l

thread-pre-split:                                 ; preds = %bb.f
  %.pr = load i32, ptr %i.z, align 4
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.d
  %i.as = phi i32 [ %.pr, %thread-pre-split ], [ %i.aa, %bb.d ]
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %0, i64 320       ; 2 uses
  %i.av = tail call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %i.au)
  %i.aw = extractelement <2 x i32> %.fr171, i64 1
  %i.ax = extractelement <2 x i32> %i.q, i64 1
  %i.ay = mul i32 %i.aw, %i.ax                    ; 2 uses
  %.not101 = icmp eq i32 %i.av, %i.ay
  br i1 %.not101, label %bb.j, label %._crit_edge150

._crit_edge150:                                   ; preds = %bb.i
  %i.az = extractelement <2 x i32> %.fr171, i64 0
  %.pre151 = mul i32 %i.az, %i.r
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call noundef i32 @_ZNK6QImage6heightEv(ptr noundef align 8 dereferenceable_or_null(24) %i.au)
  %i.bb = extractelement <2 x i32> %.fr171, i64 0
  %i.bc = mul i32 %i.bb, %i.r                     ; 2 uses
  %.not102 = icmp eq i32 %i.ba, %i.bc
  br i1 %.not102, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge150, %bb.j
  %.pre-phi = phi i32 [ %.pre151, %._crit_edge150 ], [ %i.bc, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  store i32 %i.ay, ptr %15, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %.pre-phi, ptr %i.bd, align 4
  call void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %10, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  store ptr null, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  store ptr %i.bg, ptr %i.bh, align 8
  store ptr %i.bi, ptr %i.be, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %10) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %14) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k, %bb.g
  %i.bj = getelementptr i8, ptr %0, i64 320       ; 4 uses
  %i.bk = call noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.bj)
  br i1 %i.bk, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  store i32 2, ptr %17, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.bm, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %16, ptr noundef nonnull align 8 dereferenceable_or_null(32) %17)
  %i.bn = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, i64 42, ptr @__PRETTY_FUNCTION__._ZN11QCPColorMap14updateMapImageEv)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.m
  %i.bo = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %.noexc
  %i.bp = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.n
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i.i, label %bb.o, label %_ZN7QStringD2Ev.exit.i

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.br = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  %i.bs = load ptr, ptr %16, align 8              ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = load i8, ptr %i.bt, align 8, !range !175, !noundef !176
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.p, label %_ZN6QDebuglsEPKc.exit

bb.p:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.bw = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bs, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.x ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.p
  %.pre = load ptr, ptr %16, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.q:                                             ; preds = %.noexc
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.q
  %i.bz = atomicrmw add ptr %i.by, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.bz, 1
  br i1 %.not.i.i4.i, label %bb.r, label %_ZN7QStringD2Ev.exit5.i

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.ca = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ca, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.cb = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.bs, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 57, ptr @.str.188)
          to label %.noexc118 unwind label %bb.x

.noexc118:                                        ; preds = %_ZN6QDebuglsEPKc.exit
  %i.cc = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.s unwind label %bb.v       ; 0 uses

bb.s:                                             ; preds = %.noexc118
  %i.cd = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i114, label %_ZN7QStringD2Ev.exit.i117, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i115

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i115: ; preds = %bb.s
  %i.ce = atomicrmw add ptr %i.cd, i32 -1 acq_rel, align 4
  %.not.i.i.i116 = icmp eq i32 %i.ce, 1
  br i1 %.not.i.i.i116, label %bb.t, label %_ZN7QStringD2Ev.exit.i117

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i115
  %i.cf = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cf, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i117

_ZN7QStringD2Ev.exit.i117:                        ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i115, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.cg = load ptr, ptr %16, align 8              ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 48
  %i.ci = load i8, ptr %i.ch, align 8, !range !175, !noundef !176
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.u, label %_ZN6QDebuglsEPKc.exit122

bb.u:                                             ; preds = %_ZN7QStringD2Ev.exit.i117
  %i.ck = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.cg, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit122 unwind label %bb.x ; 0 uses

bb.v:                                             ; preds = %.noexc118
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i2.i110 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i2.i110, label %_ZN7QStringD2Ev.exit5.i113, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i111

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i111: ; preds = %bb.v
  %i.cn = atomicrmw add ptr %i.cm, i32 -1 acq_rel, align 4
  %.not.i.i4.i112 = icmp eq i32 %i.cn, 1
  br i1 %.not.i.i4.i112, label %bb.w, label %_ZN7QStringD2Ev.exit5.i113

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i111
  %i.co = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.co, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i113

_ZN7QStringD2Ev.exit5.i113:                       ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i111, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %.body

_ZN6QDebuglsEPKc.exit122:                         ; preds = %_ZN7QStringD2Ev.exit.i117, %bb.u
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %16) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #49
  store i32 10, ptr %19, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 10, ptr %i.cp, align 4
  call void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %7, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  store ptr null, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  store ptr %i.cs, ptr %i.ct, align 8
  store ptr %i.cu, ptr %i.cq, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %18) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #49
  call void @_ZN6QImage4fillEN2Qt11GlobalColorE(ptr noundef align 8 dereferenceable_or_null(24) %i.bj, i32 noundef 2)
  br label %bb.ao

bb.x:                                             ; preds = %bb.u, %_ZN6QDebuglsEPKc.exit, %bb.p, %bb.m
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %_ZN7QStringD2Ev.exit5.i113, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %_ZN7QStringD2Ev.exit5.i ], [ %i.cv, %bb.x ], [ %i.cl, %_ZN7QStringD2Ev.exit5.i113 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %16) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  resume { ptr, i32 } %eh.lpad-body

bb.y:                                             ; preds = %bb.l
  %i.cw = icmp sgt <2 x i32> %.fr171, splat (i32 1)
  %27 = bitcast <2 x i1> %i.cw to i2
  %or.cond.not = icmp eq i2 %27, 0                ; 2 uses
  br i1 %or.cond.not, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load i32, ptr %i.z, align 4             ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr i8, ptr %0, i64 344       ; 2 uses
  %i.da = call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %i.cz)
  %.not103 = icmp eq i32 %i.da, %i.r
  br i1 %.not103, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = call noundef i32 @_ZNK6QImage6heightEv(ptr noundef align 8 dereferenceable_or_null(24) %i.cz)
  %i.dc = extractelement <2 x i32> %i.q, i64 1
  %.not104 = icmp eq i32 %i.db, %i.dc
  br i1 %.not104, label %thread-pre-split124, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #49
  store <2 x i32> %i.q, ptr %21, align 8
  call void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %20, ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %6, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8
  store ptr null, ptr %i.de, align 8
  %i.dg = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  store ptr %i.df, ptr %i.dg, align 8
  store ptr %i.dh, ptr %i.dd, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %20) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  br label %bb.ah

thread-pre-split124:                              ; preds = %bb.ab
  %.pr125 = load i32, ptr %i.z, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split124, %bb.z
  %i.di = phi i32 [ %.pr125, %thread-pre-split124 ], [ %i.cx, %bb.z ]
  %i.dj = icmp eq i32 %i.di, 2
  br i1 %i.dj, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr i8, ptr %0, i64 344       ; 3 uses
  %i.dl = call noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24) %i.dk)
  %i.dm = extractelement <2 x i32> %i.q, i64 1
  %.not105 = icmp eq i32 %i.dl, %i.dm
  br i1 %.not105, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = call noundef i32 @_ZNK6QImage6heightEv(ptr noundef align 8 dereferenceable_or_null(24) %i.dk)
  %.not106 = icmp eq i32 %i.dn, %i.r
  br i1 %.not106, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #49
  %i.do = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.do, ptr %23, align 8
  call void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, i32 noundef 6)
  %i.dp = call noundef align 8 dereferenceable(24) ptr @_ZN6QImageaSEOS_(ptr noundef align 8 dereferenceable_or_null(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %22) #49 ; 0 uses
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %22) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ac
  %i.dq = getelementptr i8, ptr %0, i64 344
  br label %bb.ak

bb.ai:                                            ; preds = %bb.y
  %i.dr = getelementptr i8, ptr %0, i64 344
  %i.ds = call noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.dr)
  br i1 %i.ds, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #49
  call void @_ZN6QImageC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %24) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %5, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  store ptr null, ptr %i.du, align 8
  %i.dw = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  store ptr %i.dv, ptr %i.dw, align 8
  store ptr %i.dx, ptr %i.dt, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %24) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.094 = phi ptr [ %i.dq, %bb.ah ], [ %i.bj, %bb.ai ], [ %i.bj, %bb.aj ] ; 4 uses
  %i.dy = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8            ; 4 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8
  %.fr = freeze ptr %i.ec                         ; 4 uses
  %i.ed = load i32, ptr %i.z, align 4
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %.preheader, label %.preheader126

.preheader126:                                    ; preds = %bb.ak
  %i.ef = icmp sgt i32 %i.r, 0
  br i1 %i.ef, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader126
  %.not107 = icmp eq ptr %.fr, null
  %i.eg = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.eh = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.ei = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %wide.trip.count138 = zext nneg i32 %i.r to i64 ; 2 uses
  br i1 %.not107, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ej = extractelement <2 x i32> %i.q, i64 1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ek = extractelement <2 x i32> %i.q, i64 1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.el = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.em = xor i32 %i.el, -1
  %i.en = add nsw i32 %i.r, %i.em
  %i.eo = call noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %.094, i32 noundef %i.en)
  %i.ep = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv135
  %i.eq = load i32, ptr %i.ei, align 8
  %i.er = icmp eq i32 %i.eq, 1
  call void @_ZN16QCPColorGradient8colorizeEPKdRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %i.eg, ptr noundef %i.ep, ptr noundef align 8 dereferenceable(16) %i.eh, ptr noundef %i.eo, i32 noundef %i.ek, i32 noundef %i.r, i1 noundef zeroext %i.er)
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !1284

.preheader:                                       ; preds = %bb.ak
  %i.es = extractelement <2 x i32> %i.q, i64 1    ; 4 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %.preheader
  %.not108 = icmp eq ptr %.fr, null
  %i.eu = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.ev = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %wide.trip.count148 = zext nneg i32 %i.es to i64 ; 2 uses
  br i1 %.not108, label %.lr.ph130.split.us, label %.lr.ph130.split

.lr.ph130.split.us:                               ; preds = %.lr.ph130, %.lr.ph130.split.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph130.split.us ], [ 0, %.lr.ph130 ] ; 3 uses
  %i.ex = trunc i64 %indvars.iv145 to i32
  %i.ey = xor i32 %i.ex, -1
  %i.ez = add i32 %i.es, %i.ey
  %i.fa = call noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %.094, i32 noundef %i.ez)
  %i.fb = trunc nuw nsw i64 %indvars.iv145 to i32
  %i.fc = mul i32 %i.r, %i.fb
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.ea, i64 %i.fd
  %i.ff = load i32, ptr %i.ew, align 8
  %i.fg = icmp eq i32 %i.ff, 1
  call void @_ZN16QCPColorGradient8colorizeEPKdRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %i.eu, ptr noundef %i.fe, ptr noundef align 8 dereferenceable(16) %i.ev, ptr noundef %i.fa, i32 noundef %i.r, i32 noundef 1, i1 noundef zeroext %i.fg)
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %.loopexit, label %.lr.ph130.split.us, !llvm.loop !1285

.lr.ph130.split:                                  ; preds = %.lr.ph130, %.lr.ph130.split
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.lr.ph130.split ], [ 0, %.lr.ph130 ] ; 3 uses
  %i.fh = trunc i64 %indvars.iv140 to i32
  %i.fi = xor i32 %i.fh, -1
  %i.fj = add i32 %i.es, %i.fi
  %i.fk = call noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %.094, i32 noundef %i.fj)
  %i.fl = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.fm = mul i32 %i.r, %i.fl
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %i.ea, i64 %i.fn
  %i.fp = getelementptr i8, ptr %.fr, i64 %i.fn
  %i.fq = load i32, ptr %i.ew, align 8
  %i.fr = icmp eq i32 %i.fq, 1
  call void @_ZN16QCPColorGradient8colorizeEPKdPKhRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %i.eu, ptr noundef %i.fo, ptr noundef %i.fp, ptr noundef align 8 dereferenceable(16) %i.ev, ptr noundef %i.fk, i32 noundef %i.r, i32 noundef 1, i1 noundef zeroext %i.fr)
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count148
  br i1 %exitcond144.not, label %.loopexit, label %.lr.ph130.split, !llvm.loop !1285

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.fs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ft = xor i32 %i.fs, -1
  %i.fu = add nsw i32 %i.r, %i.ft
  %i.fv = call noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %.094, i32 noundef %i.fu)
  %i.fw = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv
  %i.fx = getelementptr i8, ptr %.fr, i64 %indvars.iv
  %i.fy = load i32, ptr %i.ei, align 8
  %i.fz = icmp eq i32 %i.fy, 1
  call void @_ZN16QCPColorGradient8colorizeEPKdPKhRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %i.eg, ptr noundef %i.fw, ptr noundef %i.fx, ptr noundef align 8 dereferenceable(16) %i.eh, ptr noundef %i.fv, i32 noundef %i.ej, i32 noundef %i.r, i1 noundef zeroext %i.fz)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count138
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !1284

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph130.split, %.lr.ph130.split.us, %.preheader126, %.preheader
  br i1 %or.cond.not, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.loopexit
  %i.ga = load i32, ptr %i.z, align 4
  %i.gb = icmp eq i32 %i.ga, 1
  %i.gc = getelementptr i8, ptr %0, i64 344       ; 2 uses
  %i.gd = getelementptr i8, ptr %0, i64 336       ; 4 uses
  br i1 %i.gb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #49
  %i.ge = mul <2 x i32> %.fr171, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49, !noalias !1290
  store <2 x i32> %i.ge, ptr %4, align 8, !noalias !1290
  call void @_ZNK6QImage6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %25, ptr noundef align 8 dereferenceable_or_null(24) %i.gc, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49, !noalias !1290
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %3, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  store ptr null, ptr %i.gg, align 8
  %i.gi = load ptr, ptr %i.gd, align 8
  store ptr %i.gh, ptr %i.gd, align 8
  store ptr %i.gi, ptr %i.gf, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %25) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #49
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49, !noalias !1291
  %i.gj = mul <2 x i32> %.fr171, %i.q
  %i.gk = shufflevector <2 x i32> %i.gj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gk, ptr %2, align 8, !noalias !1291
  call void @_ZNK6QImage6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %26, ptr noundef align 8 dereferenceable_or_null(24) %i.gc, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49, !noalias !1291
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %1, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  store ptr null, ptr %i.gm, align 8
  %i.go = load ptr, ptr %i.gd, align 8
  store ptr %i.gn, ptr %i.gd, align 8
  store ptr %i.go, ptr %i.gl, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %1) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %26) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #49
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.an, %bb.am, %_ZN6QDebuglsEPKc.exit122
  %i.gp = load ptr, ptr %i.i, align 8
  %i.gq = getelementptr i8, ptr %i.gp, i64 80
  store i8 0, ptr %i.gq, align 8
  %i.gr = getelementptr i8, ptr %0, i64 392
  store i8 0, ptr %i.gr, align 8
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread

_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread:       ; preds = %bb.a, %bb.b, %bb.c, %_ZNK8QPointerI7QCPAxisE4dataEv.exit, %bb.ao
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK6QImage5widthEv(ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK6QImage6heightEv(ptr noundef align 8 dereferenceable_or_null(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QImageC1ERK5QSizeNS_6FormatE(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 4 dereferenceable(8), i32 noundef) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QImage4fillEN2Qt11GlobalColorE(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPColorMap4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(393) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QRectF, align 8              ; 6 uses
  %3 = alloca %class.QRectF, align 8              ; 4 uses
  %4 = alloca %class.QRectF, align 8              ; 6 uses
  %5 = alloca %class.QPixmap, align 8             ; 6 uses
  %6 = alloca %class.QPixmap, align 8             ; 10 uses
  %7 = alloca %class.QRegion, align 8             ; 6 uses
  %8 = alloca %class.QPixmap, align 8             ; 6 uses
  %9 = alloca %class.QSize, align 8               ; 5 uses
  %10 = alloca %class.QColor, align 4             ; 5 uses
  %11 = alloca %class.QPointF, align 16           ; 5 uses
  %12 = alloca %class.QRectF, align 16            ; 12 uses
  %13 = alloca %class.QRectF, align 8             ; 8 uses
  %14 = alloca %class.QRegion, align 8            ; 9 uses
  %15 = alloca %class.QRegion, align 8            ; 7 uses
  %16 = alloca %class.QRectF, align 8             ; 5 uses
  %17 = alloca %class.QRectF, align 8             ; 8 uses
  %18 = alloca %class.QImage, align 8             ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 208        ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8, !range !175, !noundef !176
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 120        ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.n = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit76

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit76:           ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 136        ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not57 = icmp eq ptr %i.u, null
  br i1 %.not57, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit76
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1)
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 80
  %i.aa = load i8, ptr %i.z, align 8, !range !175, !noundef !176
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 392
  %i.ad = load i8, ptr %i.ac, align 8, !range !175, !noundef !176
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef align 8 dereferenceable_or_null(393) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 8
  %i.aj = and i32 %.sroa.0.0.copyload.i, 1
  %.not172 = icmp eq i32 %i.aj, 0                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6)
  br i1 %.not172, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  invoke void @_ZNK8QPainter10clipRegionEv(ptr dead_on_unwind nonnull writable sret(%class.QRegion) align 8 %7, ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ak = call { i64, i64 } @_ZNK7QRegion12boundingRectEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7) #49 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 2 uses
  %.sroa.0153.4.extract.shift = lshr i64 %i.al, 32
  %.sroa.8.12.extract.shift = lshr i64 %i.am, 32
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %.sroa.0153.0.extract.trunc = trunc i64 %i.al to i32 ; 2 uses
  %i.an = sitofp i32 %.sroa.0153.0.extract.trunc to double ; 2 uses
  %.sroa.0153.4.extract.trunc = trunc nuw i64 %.sroa.0153.4.extract.shift to i32 ; 2 uses
  %i.ao = sitofp i32 %.sroa.0153.4.extract.trunc to double ; 2 uses
  %.sroa.8.8.extract.trunc = trunc i64 %i.am to i32
  %i.ap = add i32 %.sroa.8.8.extract.trunc, 1
  %i.aq = sub i32 %i.ap, %.sroa.0153.0.extract.trunc
  %i.ar = sitofp i32 %i.aq to double              ; 2 uses
  %.sroa.8.12.extract.trunc = trunc nuw i64 %.sroa.8.12.extract.shift to i32
  %i.as = add i32 %.sroa.8.12.extract.trunc, 1
  %i.at = sub i32 %i.as, %.sroa.0153.4.extract.trunc
  %i.au = sitofp i32 %i.at to double              ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.ar, i64 1
  %i.ax = fmul nnan <2 x double> %i.aw, splat (double 3.000000e+00) ; 2 uses
  %i.ay = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ax)
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fptosi <2 x double> %i.az to <2 x i32>  ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ba, i64 0
  %i.bc = zext i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %i.bc, 32
  %i.bd = extractelement <2 x i32> %i.ba, i64 1
  %i.be = zext i32 %i.bd to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %i.be
  store i64 %.sroa.0.0.insert.insert.i, ptr %9, align 8
  invoke void @_ZN7QPixmapC1ERK5QSize(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr null, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bh, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bf, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
end_hunk_1
begin_hunk_2_@_ZN5QListI9QPolygonFED2Ev:bb.a
  br label %_ZN17QArrayDataPointerI9QPolygonFED2Ev.exit

_ZN17QArrayDataPointerI9QPolygonFED2Ev.exit:      ; preds = %bb.a, %_ZN17QArrayDataPointerI9QPolygonFE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI9QPolygonFE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN12QCPItemCurve4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QCPVector2D, align 8         ; 4 uses
  %3 = alloca %class.QCPVector2D, align 8         ; 4 uses
  %4 = alloca %class.QCPVector2D, align 8         ; 5 uses
  %5 = alloca %class.QCPVector2D, align 16        ; 7 uses
  %6 = alloca %class.QPointF, align 8             ; 5 uses
  %7 = alloca %class.QCPVector2D, align 16        ; 5 uses
  %8 = alloca %class.QPointF, align 8             ; 5 uses
  %9 = alloca %class.QCPVector2D, align 16        ; 5 uses
  %10 = alloca %class.QPointF, align 8            ; 5 uses
  %11 = alloca %class.QCPVector2D, align 16       ; 7 uses
  %12 = alloca %class.QPointF, align 8            ; 5 uses
  %13 = alloca %class.QPainterPath, align 8       ; 11 uses
  %14 = alloca %class.QPointF, align 16           ; 4 uses
  %15 = alloca %class.QPointF, align 16           ; 5 uses
  %16 = alloca %class.QPointF, align 16           ; 5 uses
  %17 = alloca %class.QPointF, align 16           ; 5 uses
  %18 = alloca %class.QPen, align 8               ; 7 uses
  %19 = alloca %class.QRect, align 8              ; 6 uses
  %20 = alloca %class.QRect, align 8              ; 6 uses
  %21 = alloca %class.QRectF, align 16            ; 6 uses
  %22 = alloca %class.QPen, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { double, double } %i.e(ptr noundef align 8 dereferenceable_or_null(160) %i.b) ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0
  store double %i.g, ptr %6, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = extractvalue { double, double } %i.f, 1
  store double %i.i, ptr %i.h, align 8
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.j = getelementptr i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call { double, double } %i.n(ptr noundef align 8 dereferenceable_or_null(160) %i.k) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0
  store double %i.p, ptr %8, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = extractvalue { double, double } %i.o, 1
  store double %i.r, ptr %i.q, align 8
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.s = getelementptr i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call { double, double } %i.w(ptr noundef align 8 dereferenceable_or_null(160) %i.t) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  store double %i.y, ptr %10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = extractvalue { double, double } %i.x, 1
  store double %i.aa, ptr %i.z, align 8
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  %i.ab = getelementptr i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call { double, double } %i.af(ptr noundef align 8 dereferenceable_or_null(160) %i.ac) ; 2 uses
  %i.ah = extractvalue { double, double } %i.ag, 0
  store double %i.ah, ptr %12, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aj = extractvalue { double, double } %i.ag, 1
  store double %i.aj, ptr %i.ai, align 8
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ak = load <2 x double>, ptr %11, align 16
  %i.al = load <2 x double>, ptr %5, align 16
  %i.am = fsub <2 x double> %i.ak, %i.al          ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = extractelement <2 x double> %i.am, i64 1
  call void @_ZN11QCPVector2DC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.an, double noundef %i.ao)
  %.fca.0.load.i = load double, ptr %4, align 8   ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i = load double, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ap = fmul double %.fca.1.load.i, %.fca.1.load.i
  %i.aq = call double @llvm.fmuladd.f64(double %.fca.0.load.i, double %.fca.0.load.i, double %i.ap)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.aq)
  %i.ar = fcmp ogt double %sqrt.i, 1.000000e+10
  br i1 %i.ar, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %i.as = load <2 x double>, ptr %5, align 16
  store <2 x double> %i.as, ptr %14, align 16
  call void @_ZN12QPainterPathC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  %i.at = load <2 x double>, ptr %7, align 16
  store <2 x double> %i.at, ptr %15, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  %i.au = load <2 x double>, ptr %9, align 16
  store <2 x double> %i.au, ptr %16, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  %i.av = load <2 x double>, ptr %11, align 16
  store <2 x double> %i.av, ptr %17, align 16
  invoke void @_ZN12QPainterPath7cubicToERK7QPointFS2_S2_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #49
  %i.aw = getelementptr i8, ptr %0, i64 129       ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !range !175, !noalias !1429, !noundef !176
  %i.ay = trunc nuw i8 %i.ax to i1
  %.v.i = select i1 %i.ay, i64 176, i64 168
  %i.az = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, ptr noundef align 8 dereferenceable(8) %i.az) #49
  %i.ba = invoke noundef double @_ZNK4QPen6widthFEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %18)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #49
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke { i64, i64 } %i.bd(ptr noundef align 8 dereferenceable_or_null(130) %0)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.bf = call double @llvm.ceil.f64(double %i.ba)
  %i.bg = fptosi double %i.bf to i32              ; 4 uses
  %i.bh = extractvalue { i64, i64 } %i.be, 0      ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bh to i32
  %i.bj = sub i32 %.sroa.0.0.extract.trunc, %i.bg
  %.sroa.0.4.extract.shift = lshr i64 %i.bh, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.bk = sub i32 %.sroa.0.4.extract.trunc, %i.bg
  %.sroa.6.8.extract.trunc = trunc i64 %i.bi to i32
  %i.bl = add i32 %.sroa.6.8.extract.trunc, %i.bg
  %.sroa.6.12.extract.shift = lshr i64 %i.bi, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %i.bm = add i32 %.sroa.6.12.extract.trunc, %i.bg
  %.sroa.2.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.06.0.insert.ext.i = zext i32 %i.bj to i64
  %.sroa.06.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.06.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.bm to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %.sroa.06.0.insert.insert.i, ptr %19, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #49
  invoke void @_ZNK12QPainterPath16controlPointRectEv(ptr dead_on_unwind nonnull writable sret(%class.QRectF) align 8 %21, ptr noundef nonnull align 8 dereferenceable_or_null(8) %13)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bp = load <2 x double>, ptr %21, align 16    ; 3 uses
  %i.bq = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bp)
  %i.br = fadd <2 x double> %i.bp, %i.bq
  %i.bs = fptosi <2 x double> %i.br to <2 x i32>  ; 5 uses
  %i.bt = load <2 x double>, ptr %i.bo, align 16
  %i.bu = sitofp <2 x i32> %i.bs to <2 x double>
  %i.bv = fsub <2 x double> %i.bp, %i.bu
  %i.bw = fmul <2 x double> %i.bv, splat (double 5.000000e-01)
  %i.bx = fadd <2 x double> %i.bt, %i.bw          ; 2 uses
  %i.by = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bx)
  %i.bz = fadd <2 x double> %i.bx, %i.by
  %i.ca = fptosi <2 x double> %i.bz to <2 x i32>  ; 2 uses
  store <2 x i32> %i.bs, ptr %20, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  %i.cc = add <2 x i32> %i.bs, splat (i32 -1)
  %i.cd = add <2 x i32> %i.cc, %i.ca              ; 2 uses
  %i.ce = icmp slt <2 x i32> %i.cd, %i.bs
  %23 = freeze <2 x i1> %i.ce
  %24 = bitcast <2 x i1> %23 to i2
  %or.cond.not = icmp eq i2 %24, 0
  %i.cf = add <2 x i32> %i.bs, %i.ca
  %storemerge = select i1 %or.cond.not, <2 x i32> %i.cd, <2 x i32> %i.cf
  store <2 x i32> %storemerge, ptr %i.cb, align 8
  %i.cg = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20) #49
  br i1 %i.cg, label %bb.k, label %bb.v

bb.g:                                             ; preds = %bb.b
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %bb.z

bb.h:                                             ; preds = %bb.c
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #49
  br label %bb.z

bb.i:                                             ; preds = %bb.d
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  br label %bb.x

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #49
  %i.cl = load i8, ptr %i.aw, align 1, !range !175, !noalias !1430, !noundef !176
  %i.cm = trunc nuw i8 %i.cl to i1
  %.v.i38 = select i1 %i.cm, i64 176, i64 168
  %i.cn = getelementptr i8, ptr %0, i64 %.v.i38
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %22, ptr noundef align 8 dereferenceable(8) %i.cn) #49
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.k
  %i.co = getelementptr i8, ptr %1, i64 8
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 4
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.q

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.l
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %22) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  invoke void @_ZN8QPainter8drawPathERK12QPainterPath(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  invoke void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = invoke noundef double @_ZNK12QPainterPath14angleAtPercentEd(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, double noundef 0.000000e+00)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cu = fdiv double %i.ct, -1.800000e+02
  %i.cv = call double @llvm.fmuladd.f64(double %i.cu, double f0x400921FB54442D18, double f0x400921FB54442D18) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.cw = call noundef double @cos(double noundef %i.cv) #49
  %i.cx = call noundef double @sin(double noundef %i.cv) #49
  invoke void @_ZN11QCPVector2DC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3, double noundef %i.cw, double noundef %i.cx)
          to label %.noexc40 unwind label %bb.r

.noexc40:                                         ; preds = %bb.p
  invoke void @_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2DS4_(ptr noundef readonly align 8 dereferenceable_or_null(25) %i.cr, ptr noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2Dd.exit unwind label %bb.r

_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2Dd.exit: ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %22) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  br label %bb.x

bb.r:                                             ; preds = %.noexc42, %bb.u, %.noexc40, %bb.p, %bb.t, %bb.o, %bb.m, %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2Dd.exit, %bb.n
  %i.da = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.db = load i32, ptr %i.da, align 8
  %.not15 = icmp eq i32 %i.db, 0
  br i1 %.not15, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = invoke noundef double @_ZNK12QPainterPath14angleAtPercentEd(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, double noundef 1.000000e+00)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  %i.dd = fdiv double %i.dc, -1.800000e+02
  %i.de = fmul double %i.dd, f0x400921FB54442D18  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.df = call noundef double @cos(double noundef %i.de) #49
  %i.dg = call noundef double @sin(double noundef %i.de) #49
  invoke void @_ZN11QCPVector2DC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %2, double noundef %i.df, double noundef %i.dg)
          to label %.noexc42 unwind label %bb.r

.noexc42:                                         ; preds = %bb.u
  invoke void @_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2DS4_(ptr noundef readonly align 8 dereferenceable_or_null(25) %i.da, ptr noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2Dd.exit44 unwind label %bb.r

_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2Dd.exit44: ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.v

bb.v:                                             ; preds = %_ZNK13QCPLineEnding4drawEP10QCPPainterRK11QCPVector2Dd.exit44, %bb.s, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret void

bb.x:                                             ; preds = %bb.r, %bb.q, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %i.cy, %bb.q ], [ %i.ck, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #49
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.cj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #49
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %bb.y, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.g ], [ %.pn.pn, %bb.y ], [ %i.ci, %bb.h ]
  call void @_ZN12QPainterPathD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK12QCPItemCurve7mainPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(248) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 176, i64 168
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK12QPainterPath16controlPointRectEv(ptr dead_on_unwind writable sret(%class.QRectF) align 8, ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef align 4 dereferenceable_or_null(16), ptr noundef align 4 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noundef double @_ZNK12QPainterPath14angleAtPercentEd(ptr noundef align 8 dereferenceable_or_null(8), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPItemRectC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(232) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_Z7qstrlenPKc.exit.i.i:
  %2 = alloca %class.QString, align 16            ; 8 uses
  %3 = alloca %class.QString, align 16            ; 8 uses
  %4 = alloca %class.QString, align 16            ; 8 uses
  %5 = alloca %class.QString, align 16            ; 8 uses
  %6 = alloca %class.QString, align 16            ; 8 uses
  %7 = alloca %class.QString, align 16            ; 8 uses
  %8 = alloca %class.QString, align 16            ; 8 uses
  %9 = alloca %class.QString, align 16            ; 8 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QString, align 16           ; 14 uses
  %12 = alloca %class.QString, align 16           ; 14 uses
  %13 = alloca %class.QString, align 16           ; 14 uses
  %14 = alloca %class.QString, align 16           ; 14 uses
  %15 = alloca %class.QString, align 16           ; 14 uses
end_hunk_2
begin_hunk_3_@_ZN13QCPItemPixmap9setPixmapERK7QPixmap:bb.a
bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.p = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.l, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.m ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.e
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.f
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.s, 1
  br i1 %.not.i.i4.i, label %bb.g, label %_ZN7QStringD2Ev.exit5.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.t = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.t, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.u = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.l, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 14, ptr @.str.217)
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.v = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc12
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i8, label %_ZN7QStringD2Ev.exit.i11, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i9

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i9:   ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %.not.i.i.i10 = icmp eq i32 %i.x, 1
  br i1 %.not.i.i.i10, label %bb.i, label %_ZN7QStringD2Ev.exit.i11

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i9
  %i.y = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i11

_ZN7QStringD2Ev.exit.i11:                         ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i9, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !175, !noundef !176
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %_ZN6QDebuglsEPKc.exit16

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit.i11
  %i.ad = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.z, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit16 unwind label %bb.m ; 0 uses

bb.k:                                             ; preds = %.noexc12
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i4 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i2.i4, label %_ZN7QStringD2Ev.exit5.i7, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i5

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i5:  ; preds = %bb.k
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %.not.i.i4.i6 = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i4.i6, label %bb.l, label %_ZN7QStringD2Ev.exit5.i7

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i5
  %i.ah = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i7

_ZN7QStringD2Ev.exit5.i7:                         ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i5, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %.body

_ZN6QDebuglsEPKc.exit16:                          ; preds = %_ZN7QStringD2Ev.exit.i11, %bb.j
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %_ZN6QDebuglsEPKc.exit, %bb.e, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %_ZN7QStringD2Ev.exit5.i7, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %_ZN7QStringD2Ev.exit5.i ], [ %i.ai, %bb.m ], [ %i.ae, %_ZN7QStringD2Ev.exit5.i7 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  resume { ptr, i32 } %eh.lpad-body

bb.n:                                             ; preds = %_ZN6QDebuglsEPKc.exit16, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN13QCPItemPixmap9setScaledEbN2Qt15AspectRatioModeENS0_18TransformationModeE(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(280) initializes((248, 250), (252, 260)) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 248
  store i8 %i.a, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 252
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 256
  store i32 %3, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 249
  store i8 1, ptr %i.e, align 1
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK13QCPItemPixmap10selectTestERK7QPointFbP8QVariant(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree readnone captures(none) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.QRectF, align 16             ; 6 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.d = tail call { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef null, ptr noundef null) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %i.e, 32
  %.sroa.0.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.g = bitcast i64 %i.e to <2 x i32>
  %i.h = sitofp <2 x i32> %i.g to <2 x double>
  store <2 x double> %i.h, ptr %4, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.7.8.extract.trunc = trunc i64 %i.f to i32
  %i.j = add i32 %.sroa.7.8.extract.trunc, 1
  %i.k = sub i32 %i.j, %.sroa.0.0.extract.trunc
  %i.l = sitofp i32 %i.k to double
  store double %i.l, ptr %i.i, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.7.12.extract.shift = lshr i64 %i.f, 32
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.n = add i32 %.sroa.7.12.extract.trunc, 1
  %i.o = sub i32 %i.n, %.sroa.0.4.extract.trunc
  %i.p = sitofp i32 %i.o to double
  store double %i.p, ptr %i.m, align 8
  %i.q = call noundef double @_ZNK15QCPAbstractItem12rectDistanceERK6QRectFRK7QPointFb(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi double [ %i.q, %bb.c ], [ -1.000000e+00, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QSize, align 8               ; 4 uses
  %4 = alloca %class.QSize, align 8               ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { double, double } %i.e(ptr noundef align 8 dereferenceable_or_null(160) %i.b) ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  %i.i = getelementptr i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call { double, double } %i.m(ptr noundef align 8 dereferenceable_or_null(160) %i.j) ; 2 uses
  %i.o = extractvalue { double, double } %i.n, 0
  %i.p = extractvalue { double, double } %i.n, 1
  %i.q = insertelement <2 x double> poison, double %i.g, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.h, i64 1 ; 2 uses
  %i.s = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.r)
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = fptosi <2 x double> %i.t to <2 x i32>    ; 8 uses
  %i.v = insertelement <2 x double> poison, double %i.o, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.p, i64 1 ; 2 uses
  %i.x = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.w)
  %i.y = fadd <2 x double> %i.w, %i.x
  %i.z = fptosi <2 x double> %i.y to <2 x i32>    ; 3 uses
  %i.aa = icmp eq <2 x i32> %i.u, %i.z
  %5 = freeze <2 x i1> %i.aa
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, -1
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = add <2 x i32> %i.u, splat (i32 -1)
  %i.ac = extractelement <2 x i32> %i.u, i64 0
  %i.ad = extractelement <2 x i32> %i.u, i64 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 248
  %i.af = load i8, ptr %i.ae, align 8, !range !175, !noundef !176
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = sub <2 x i32> %i.z, %i.u                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.ai = getelementptr i8, ptr %0, i64 200       ; 3 uses
  %i.aj = tail call i64 @_ZNK7QPixmap4sizeEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ai)
  %i.ak = tail call noundef double @_ZNK7QPixmap16devicePixelRatioEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ai)
  %i.al = bitcast i64 %i.aj to <2 x i32>
  %i.am = sitofp <2 x i32> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x double> %i.am, %i.ao          ; 2 uses
  %i.aq = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ap)
  %i.ar = fadd <2 x double> %i.ap, %i.aq
  %i.as = fptosi <2 x double> %i.ar to <2 x i32>
  store <2 x i32> %i.as, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.at = tail call noundef double @_ZNK7QPixmap16devicePixelRatioEv(ptr noundef align 8 dereferenceable_or_null(24) %i.ai)
  %i.au = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ah, i1 false)
  %i.av = sitofp <2 x i32> %i.au to <2 x double>
  %i.aw = insertelement <2 x double> poison, double %i.at, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.ax, %i.av          ; 2 uses
  %i.az = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ay)
  %i.ba = fadd <2 x double> %i.ay, %i.az
  %i.bb = fptosi <2 x double> %i.ba to <2 x i32>
  store <2 x i32> %i.bb, ptr %4, align 8
  %i.bc = getelementptr i8, ptr %0, i64 252
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = call i64 @_ZNK5QSize6scaledERKS_N2Qt15AspectRatioModeE(ptr noundef nonnull align 4 dereferenceable_or_null(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.bd) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.bf = icmp slt <2 x i32> %i.ah, zeroinitializer
  %i.bg = select <2 x i1> %i.bf, <2 x i32> %i.z, <2 x i32> %i.u ; 2 uses
  %i.bh = add <2 x i32> %i.bg, splat (i32 -1)
  %i.bi = bitcast i64 %i.be to <2 x i32>
  %i.bj = add <2 x i32> %i.bh, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.bk = extractelement <2 x i32> %i.ah, i64 0
  %.lobit = lshr i32 %i.bk, 31
  %i.bl = trunc nuw nsw i32 %.lobit to i8
  %i.bm = extractelement <2 x i32> %i.ah, i64 1
  %.lobit11 = lshr i32 %i.bm, 31
  %i.bn = trunc nuw nsw i32 %.lobit11 to i8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bo = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %i.bp = tail call i64 @_ZNK7QPixmap4sizeEv(ptr noundef align 8 dereferenceable_or_null(24) %i.bo)
  %i.bq = tail call noundef double @_ZNK7QPixmap16devicePixelRatioEv(ptr noundef align 8 dereferenceable_or_null(24) %i.bo)
  %i.br = bitcast i64 %i.bp to <2 x i32>
  %i.bs = sitofp <2 x i32> %i.br to <2 x double>
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x double> %i.bs, %i.bu          ; 2 uses
  %i.bw = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bv)
  %i.bx = fadd <2 x double> %i.bv, %i.bw
  %i.by = fptosi <2 x double> %i.bx to <2 x i32>
  %i.bz = add <2 x i32> %i.u, splat (i32 -1)
  %i.ca = add <2 x i32> %i.bz, %i.by
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.17 = phi i8 [ %i.bl, %bb.d ], [ 0, %bb.e ]
  %.1 = phi i8 [ %i.bn, %bb.d ], [ 0, %bb.e ]
  %i.cb = phi <2 x i32> [ %i.bj, %bb.d ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cc = phi <2 x i32> [ %i.bg, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %.17, ptr %1, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not10 = icmp eq ptr %2, null
  %i.cd = extractelement <2 x i32> %i.cc, i64 0   ; 2 uses
  %i.ce = extractelement <2 x i32> %i.cc, i64 1   ; 2 uses
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %.1, ptr %2, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  %.sroa.067.0 = phi i32 [ %i.ac, %bb.b ], [ %i.cd, %bb.i ], [ %i.cd, %bb.h ]
  %.sroa.3.0 = phi i32 [ %i.ad, %bb.b ], [ %i.ce, %bb.i ], [ %i.ce, %bb.h ]
  %i.cf = phi <2 x i32> [ %i.ab, %bb.b ], [ %i.cb, %bb.i ], [ %i.cb, %bb.h ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.067.0.insert.ext = zext i32 %.sroa.067.0 to i64
  %.sroa.067.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.067.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.067.0.insert.insert, 0
  %.sroa.568.8.insert.insert = bitcast <2 x i32> %i.cf to i64
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.568.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13QCPItemPixmap4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPointF, align 16            ; 4 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %class.QRect, align 8               ; 6 uses
  %4 = alloca %class.QPen, align 8                ; 7 uses
  %5 = alloca %class.QPen, align 8                ; 7 uses
  %6 = alloca %class.QRect, align 8               ; 6 uses
  %7 = alloca %class.QRect, align 8               ; 5 uses
  %8 = alloca %class.QPen, align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.c = call { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  store i64 %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = extractvalue { i64, i64 } %i.c, 1        ; 4 uses
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.g = getelementptr i8, ptr %0, i64 129        ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !range !175, !noalias !1485, !noundef !176
  %i.i = trunc nuw i8 %i.h to i1
  %.v.i = select i1 %i.i, i64 272, i64 264
  %i.j = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4, ptr noundef align 8 dereferenceable(8) %i.j) #49
  %i.k = trunc i64 %i.d to i32
  %i.l = lshr i64 %i.d, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = trunc i64 %i.f to i32
  %i.o = lshr i64 %i.f, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = invoke noundef i32 @_ZNK4QPen5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.r = load i8, ptr %i.g, align 1, !range !175, !noalias !1486, !noundef !176
  %i.s = trunc nuw i8 %i.r to i1
  %.v.i22 = select i1 %i.s, i64 272, i64 264
  %i.t = getelementptr i8, ptr %0, i64 %.v.i22
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 8 dereferenceable(8) %i.t) #49
  %i.u = invoke noundef double @_ZNK4QPen6widthFEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.v = call double @llvm.ceil.f64(double %i.u)
  %i.w = fptosi double %i.v to i32
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d
  %i.x = phi i32 [ %i.w, %bb.d ], [ 0, %bb.b ]    ; 4 uses
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.y = sub i32 %i.k, %i.x
  %i.z = sub i32 %i.m, %i.x
  %i.aa = add i32 %i.x, %i.n
  %i.ab = add i32 %i.x, %i.p
  %.sroa.2.0.insert.ext.i = zext i32 %i.z to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.06.0.insert.ext.i = zext i32 %i.y to i64
  %.sroa.06.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.06.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %.sroa.06.0.insert.insert.i, ptr %6, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call { i64, i64 } %i.af(ptr noundef align 8 dereferenceable_or_null(130) %0) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  store i64 %i.ah, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = extractvalue { i64, i64 } %i.ag, 1
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br i1 %i.ak, label %bb.e, label %bb.n

bb.e:                                             ; preds = %.critedge
  %i.al = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = load i8, ptr %i.b, align 1, !range !175, !noundef !176
  %i.ao = trunc nuw i8 %i.an to i1
  call void @_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb(ptr noundef align 8 dereferenceable_or_null(280) %0, i64 %i.d, i64 %i.f, i1 noundef zeroext %i.am, i1 noundef zeroext %i.ao)
  %i.ap = getelementptr i8, ptr %0, i64 248
  %i.aq = load i8, ptr %i.ap, align 8, !range !175, !noundef !176
  %i.ar = trunc nuw i8 %i.aq to i1
  %.v = select i1 %i.ar, i64 224, i64 200
  %i.as = getelementptr i8, ptr %0, i64 %.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.at = bitcast i64 %i.d to <2 x i32>
  %i.au = sitofp <2 x i32> %i.at to <2 x double>
  store <2 x double> %i.au, ptr %2, align 16
  call void @_ZN8QPainter10drawPixmapERK7QPointFRK7QPixmap(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(24) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.av = load i8, ptr %i.g, align 1, !range !175, !noalias !1487, !noundef !176
  %i.aw = trunc nuw i8 %i.av to i1
  %.v.i23 = select i1 %i.aw, i64 272, i64 264
  %i.ax = getelementptr i8, ptr %0, i64 %.v.i23
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef align 8 dereferenceable(8) %i.ax) #49
  %i.ay = invoke noundef i32 @_ZNK4QPen5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %.not19 = icmp eq i32 %i.ay, 0
  br i1 %.not19, label %_ZN8QPainter8drawRectERK5QRect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  %i.az = getelementptr i8, ptr %1, i64 8
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 4
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.h

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.m

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.h
  invoke void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  invoke void @_ZN8QPainter9drawRectsEPK5QRecti(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
          to label %_ZN8QPainter8drawRectERK5QRect.exit unwind label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.bc, %bb.j ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.g, %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.o

_ZN8QPainter8drawRectERK5QRect.exit:              ; preds = %bb.i, %bb.f
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %bb.n

bb.n:                                             ; preds = %_ZN8QPainter8drawRectERK5QRect.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l
  %.pn20 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPItemPixmap7mainPenEv(ptr dead_on_unwind noalias writable sret(%class.QPen) align 8 %0, ptr noundef align 8 dereferenceable_or_null(280) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 129
  %i.b = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  %.v = select i1 %i.c, i64 272, i64 264
  %i.d = getelementptr i8, ptr %1, i64 %.v
  tail call void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 8 dereferenceable(8) %i.d) #49
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13QCPItemPixmap18updateScaledPixmapE5QRectbb(ptr noundef align 8 dereferenceable_or_null(280) %0, i64 %1, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.QPixmap, align 8             ; 6 uses
  %6 = alloca %class.QPixmap, align 8             ; 6 uses
  %7 = alloca %class.QPixmap, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %8 = alloca %class.QPixmap, align 8             ; 5 uses
  %9 = alloca %class.QSize, align 8               ; 4 uses
  %10 = alloca %class.QPixmap, align 8            ; 6 uses
  %11 = alloca %class.QImage, align 8             ; 9 uses
  %12 = alloca %class.QImage, align 8             ; 8 uses
  %13 = alloca %class.QPixmap, align 8            ; 5 uses
  %.sroa.026.0.extract.trunc29 = trunc i64 %1 to i32 ; 2 uses
  %.sroa.530.0.extract.shift31 = lshr i64 %1, 32
  %.sroa.530.0.extract.trunc32 = trunc nuw i64 %.sroa.530.0.extract.shift31 to i32 ; 2 uses
  %.sroa.8.8.extract.trunc37 = trunc i64 %2 to i32 ; 2 uses
  %.sroa.13.8.extract.shift38 = lshr i64 %2, 32
  %.sroa.13.8.extract.trunc39 = trunc nuw i64 %.sroa.13.8.extract.shift38 to i32 ; 2 uses
  %i.c = zext i1 %3 to i8
  store i8 %i.c, ptr %i.a, align 1
  %i.d = zext i1 %4 to i8
  store i8 %i.d, ptr %i.b, align 1
  %i.e = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.f = tail call noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.e)
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 248
  %i.h = load i8, ptr %i.g, align 8, !range !175, !noundef !176
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7QPixmap16devicePixelRatioEv(ptr noundef align 8 dereferenceable_or_null(24) %i.e) ; 3 uses
  %i.k = add i32 %.sroa.026.0.extract.trunc29, -1
  %i.l = icmp eq i32 %i.k, %.sroa.8.8.extract.trunc37
  %i.m = add i32 %.sroa.530.0.extract.trunc32, -1
  %i.n = icmp eq i32 %i.m, %.sroa.13.8.extract.trunc39
  %or.cond43 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond43, label %bb.d, label %_ZNK5QRect6isNullEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = call { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %.sroa.026.0.extract.trunc = trunc i64 %i.p to i32
  %.sroa.530.0.extract.shift = lshr i64 %i.p, 32
  %.sroa.530.0.extract.trunc = trunc nuw i64 %.sroa.530.0.extract.shift to i32
  %.sroa.8.8.extract.trunc = trunc i64 %i.q to i32
  %.sroa.13.8.extract.shift = lshr i64 %i.q, 32
  %.sroa.13.8.extract.trunc = trunc nuw i64 %.sroa.13.8.extract.shift to i32
  br label %_ZNK5QRect6isNullEv.exit.thread

_ZNK5QRect6isNullEv.exit.thread:                  ; preds = %bb.c, %bb.d
  %.sroa.026.0 = phi i32 [ %.sroa.026.0.extract.trunc, %bb.d ], [ %.sroa.026.0.extract.trunc29, %bb.c ] ; 2 uses
  %.sroa.530.0 = phi i32 [ %.sroa.530.0.extract.trunc, %bb.d ], [ %.sroa.530.0.extract.trunc32, %bb.c ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %.sroa.8.8.extract.trunc, %bb.d ], [ %.sroa.8.8.extract.trunc37, %bb.c ] ; 2 uses
  %.sroa.13.0 = phi i32 [ %.sroa.13.8.extract.trunc, %bb.d ], [ %.sroa.13.8.extract.trunc39, %bb.c ] ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 249
  %i.s = load i8, ptr %i.r, align 1, !range !175, !noundef !176
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK5QRect6isNullEv.exit.thread
  %reass.sub = sub i32 %.sroa.8.0, %.sroa.026.0
  %reass.sub44 = sub i32 %.sroa.13.0, %.sroa.530.0
  %i.u = getelementptr i8, ptr %0, i64 224
  %i.v = call i64 @_ZNK7QPixmap4sizeEv(ptr noundef align 8 dereferenceable_or_null(24) %i.u)
  %i.w = insertelement <2 x i32> poison, i32 %reass.sub44, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %reass.sub, i64 1
  %i.y = add <2 x i32> %i.x, splat (i32 1)
  %i.z = bitcast i64 %i.v to <2 x i32>
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = sitofp <2 x i32> %i.aa to <2 x double>
  %i.ac = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ae)
  %i.ag = fadd <2 x double> %i.ae, %i.af
  %i.ah = fptosi <2 x double> %i.ag to <2 x i32>
  %i.ai = icmp ne <2 x i32> %i.y, %i.ah
  %14 = freeze <2 x i1> %i.ai
  %15 = bitcast <2 x i1> %14 to i2
  %.not = icmp eq i2 %15, 0
  br i1 %.not, label %bb.n, label %.critedge

.critedge:                                        ; preds = %_ZNK5QRect6isNullEv.exit.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.aj = add i32 %.sroa.8.0, 1
  %i.ak = add i32 %.sroa.13.0, 1
  %i.al = sub i32 %i.aj, %.sroa.026.0
  %i.am = sub i32 %i.ak, %.sroa.530.0
  %i.an = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %i.al, i64 1
  %i.ap = sitofp <2 x i32> %i.ao to <2 x double>
  %i.aq = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.ar, %i.ap          ; 2 uses
  %i.at = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.as)
  %i.au = fadd <2 x double> %i.as, %i.at
  %i.av = fptosi <2 x double> %i.au to <2 x i32>  ; 2 uses
  %i.aw = extractelement <2 x i32> %i.av, i64 0
  %i.ax = zext i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i17 = shl nuw i64 %i.ax, 32
  %i.ay = extractelement <2 x i32> %i.av, i64 1
  %i.az = zext i32 %i.ay to i64
  %.sroa.0.0.insert.insert.i19 = or disjoint i64 %.sroa.2.0.insert.shift.i17, %i.az
  store i64 %.sroa.0.0.insert.insert.i19, ptr %9, align 8
  %i.ba = getelementptr i8, ptr %0, i64 252
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %0, i64 256
  %i.bd = load i32, ptr %i.bc, align 8
  call void @_ZNK7QPixmap6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %8, ptr noundef align 8 dereferenceable_or_null(24) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %i.bb, i32 noundef %i.bd)
  %i.be = getelementptr i8, ptr %0, i64 224       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %7, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr null, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %0, i64 240       ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bh, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bf, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.bk = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.bl = trunc nuw i8 %i.bk to i1                ; 2 uses
  %i.bm = load i8, ptr %i.b, align 1, !range !175
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  call void @_ZNK7QPixmap7toImageEv(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %12, ptr noundef align 8 dereferenceable_or_null(24) %i.be)
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  invoke void @_ZN6QImage16mirrored_inplaceEbb(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i1 noundef zeroext %i.bl, i1 noundef zeroext %i.bn)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %11, align 8, !alias.scope !1490
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !1490
  store ptr null, ptr %i.bp, align 8, !noalias !1490
  store ptr %i.bq, ptr %i.bo, align 8, !alias.scope !1490
  invoke void @_ZN7QPixmap16fromImageInPlaceER6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 0)
          to label %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit unwind label %bb.i

_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %6, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  store ptr null, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bi, align 8
  store ptr %i.bt, ptr %i.bi, align 8
  store ptr %i.bu, ptr %i.br, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %10) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #49
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %11) #49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %i.bv, %bb.h ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %.critedge, %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit
  call void @_ZN7QPixmap19setDevicePixelRatioEd(ptr noundef align 8 dereferenceable_or_null(24) %i.be, double noundef %i.j)
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.bx = getelementptr i8, ptr %0, i64 224
  %i.by = tail call noundef zeroext i1 @_ZNK7QPixmap6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.bx)
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  call void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5) #49
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %5, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  store ptr null, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cb, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.bz, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.k, %bb.l, %bb.m
  %i.ce = getelementptr i8, ptr %0, i64 249
  store i8 0, ptr %i.ce, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK13QCPItemPixmap19anchorPixelPositionEi(ptr noundef align 8 dereferenceable_or_null(280) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %4 = alloca %class.QDebug, align 8              ; 12 uses
  %5 = alloca %class.QMessageLogger, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  store i8 0, ptr %i.b, align 1
  %i.c = call { i64, i64 } @_ZNK13QCPItemPixmap12getFinalRectEPbS0_(ptr noundef align 8 dereferenceable_or_null(280) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 3 uses
  %i.f = load i8, ptr %i.a, align 1, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.e, 1
  %.sroa.0106.4.extract.shift = and i64 %i.d, -4294967296
  %i.i = add i64 %i.d, 4294967295
  %.sroa.0106.0.insert.ext = and i64 %i.h, 4294967295
  %.sroa.0106.4.insert.insert = or disjoint i64 %.sroa.0106.0.insert.ext, %.sroa.0106.4.extract.shift
  %.sroa.24.8.insert.ext = and i64 %i.i, 4294967295
  %.sroa.24.12.extract.shift = and i64 %i.e, -4294967296
  %.sroa.24.12.insert.insert = or disjoint i64 %.sroa.24.8.insert.ext, %.sroa.24.12.extract.shift
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0106.0 = phi i64 [ %.sroa.0106.4.insert.insert, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.24.0 = phi i64 [ %.sroa.24.12.insert.insert, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.j = load i8, ptr %i.b, align 1, !range !175, !noundef !176
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %.sroa.24.0, -4294967296
  %.sroa.0106.4.insert.mask137 = and i64 %.sroa.0106.0, 4294967295
  %.sroa.0106.4.insert.shift136 = add i64 %i.l, 4294967296
  %.sroa.0106.4.insert.insert138 = or disjoint i64 %.sroa.0106.4.insert.shift136, %.sroa.0106.4.insert.mask137
  %i.m = and i64 %.sroa.0106.0, -4294967296
  %i.n = or i64 %.sroa.24.0, -4294967296
  %.sroa.24.12.insert.insert179 = add i64 %i.m, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_3
