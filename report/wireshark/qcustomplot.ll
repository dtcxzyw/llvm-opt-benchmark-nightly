Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN11QCPAxisRect15mousePressEventEP11QMouseEventRK8QVariant:bb.a

_ZN8QPointerI7QCPAxisEC2ERKS1_.exit43.thread:     ; preds = %.lr.ph90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  br label %_ZNK8QPointerI7QCPAxisE6isNullEv.exit44.thread

bb.ae:                                            ; preds = %.lr.ph90
  %i.do = atomicrmw add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.dp = getelementptr i8, ptr %i.dl, i64 4      ; 2 uses
  %i.dq = load atomic i32, ptr %i.dp monotonic, align 4
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = icmp eq ptr %i.dn, null
  %or.cond80 = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond80, label %_ZNK8QPointerI7QCPAxisE6isNullEv.exit44.thread, label %_ZNK8QPointerI7QCPAxisEptEv.exit45

_ZNK8QPointerI7QCPAxisE6isNullEv.exit44.thread:   ; preds = %_ZN8QPointerI7QCPAxisEC2ERKS1_.exit43.thread, %bb.ae
  invoke void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6)
          to label %bb.af unwind label %bb.ai

_ZNK8QPointerI7QCPAxisEptEv.exit45:               ; preds = %bb.ae
  %i.dt = load atomic i32, ptr %i.dp monotonic, align 4
  %i.du = icmp eq i32 %i.dt, 0
  %spec.select81 = select i1 %i.du, ptr null, ptr %i.dn
  %i.dv = getelementptr i8, ptr %spec.select81, i64 304
  %i.dw = load <2 x double>, ptr %i.dv, align 8
  store <2 x double> %i.dw, ptr %6, align 16
  br label %bb.af

bb.af:                                            ; preds = %_ZNK8QPointerI7QCPAxisE6isNullEv.exit44.thread, %_ZNK8QPointerI7QCPAxisEptEv.exit45
  %i.dx = load i64, ptr %i.bd, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI8QCPRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.bc, i64 noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc54 unwind label %bb.ai

.noexc54:                                         ; preds = %bb.af
  %i.dy = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i51, label %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.thread.i.i.i.i.i53, label %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.i.i.i.i.i52

_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.i.i.i.i.i52: ; preds = %.noexc54
  %i.dz = load atomic i32, ptr %i.dy monotonic, align 4
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.thread.i.i.i.i.i53, label %_ZN5QListI8QCPRangeE6appendERKS0_.exit56

_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.thread.i.i.i.i.i53: ; preds = %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.i.i.i.i.i52, %.noexc54
  invoke void @_ZN17QArrayDataPointerI8QCPRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bc, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI8QCPRangeE6appendERKS0_.exit56 unwind label %bb.ai

_ZN5QListI8QCPRangeE6appendERKS0_.exit56:         ; preds = %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.i.i.i.i.i52, %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.thread.i.i.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br i1 %.not.i.i42, label %_ZN8QPointerI7QCPAxisED2Ev.exit59, label %bb.ag

bb.ag:                                            ; preds = %_ZN5QListI8QCPRangeE6appendERKS0_.exit56
  %i.eb = atomicrmw sub ptr %i.dl, i32 1 acq_rel, align 4
  %.not2.i.i58 = icmp eq i32 %i.eb, 1
  br i1 %.not2.i.i58, label %bb.ah, label %_ZN8QPointerI7QCPAxisED2Ev.exit59

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #49
  br label %_ZN8QPointerI7QCPAxisED2Ev.exit59

_ZN8QPointerI7QCPAxisED2Ev.exit59:                ; preds = %_ZN5QListI8QCPRangeE6appendERKS0_.exit56, %bb.ag, %bb.ah
  %i.ec = load ptr, ptr %i.bz, align 8
  %i.ed = getelementptr i8, ptr %i.ec, i64 16     ; 3 uses
  store ptr %i.ed, ptr %i.bz, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.ca, align 8
  %.not84 = icmp eq ptr %i.ed, %.sroa.0.0.copyload
  br i1 %.not84, label %._crit_edge91, label %.lr.ph90, !llvm.loop !1002

bb.ai:                                            ; preds = %_ZNK17QArrayDataPointerI8QCPRangeE11needsDetachEv.exit.thread.i.i.i.i.i53, %bb.af, %_ZNK8QPointerI7QCPAxisE6isNullEv.exit44.thread
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br i1 %.not.i.i42, label %_ZN8QPointerI7QCPAxisED2Ev.exit62, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = atomicrmw sub ptr %i.dl, i32 1 acq_rel, align 4
  %.not2.i.i61 = icmp eq i32 %i.ef, 1
  br i1 %.not2.i.i61, label %bb.ak, label %_ZN8QPointerI7QCPAxisED2Ev.exit62

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #49
  br label %_ZN8QPointerI7QCPAxisED2Ev.exit62

_ZN8QPointerI7QCPAxisED2Ev.exit62:                ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @_ZN9QtPrivate17QForeachContainerI5QListI8QPointerI7QCPAxisEEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.am

bb.al:                                            ; preds = %bb.d, %_ZN9QtPrivate17QForeachContainerI5QListI8QPointerI7QCPAxisEEED2Ev.exit41, %bb.a
  ret void

bb.am:                                            ; preds = %_ZN8QPointerI7QCPAxisED2Ev.exit62, %_ZN8QPointerI7QCPAxisED2Ev.exit28
  %.pn = phi { ptr, i32 } [ %i.cx, %_ZN8QPointerI7QCPAxisED2Ev.exit28 ], [ %i.ee, %_ZN8QPointerI7QCPAxisED2Ev.exit62 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPAxisRect14mouseMoveEventEP11QMouseEventRK7QPointF(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(432) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 416
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 224
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8
  %i.g = and i32 %.sroa.0.0.copyload.i, 1
  %.not90 = icmp eq i32 %i.g, 0
  br i1 %.not90, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 240        ; 3 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = and i32 %i.i, 1
  %.not91 = icmp eq i32 %i.j, 0
  br i1 %.not91, label %.loopexit, label %.preheader93

.preheader93:                                     ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 376
  %i.l = getelementptr i8, ptr %0, i64 264        ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader93
  %i.o = getelementptr i8, ptr %0, i64 256
  %i.p = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 368        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread
  %i.r = phi i64 [ 0, %.lr.ph ], [ %i.bk, %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread ] ; 4 uses
  %.094 = phi i32 [ 0, %.lr.ph ], [ %i.bj, %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread ]
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = getelementptr [16 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.u, i64 4
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisE4dataEv.exit:              ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.t, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 8 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit
  %i.ab = load i64, ptr %i.k, align 8
  %.not60 = icmp sgt i64 %i.ab, %i.r
  br i1 %.not60, label %bb.g, label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.aa, i64 324
  %i.ad = load i32, ptr %i.ac, align 4
  switch i32 %i.ad, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = load double, ptr %2, align 8
  %i.af = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.aa, double noundef %i.ae)
  %i.ag = load ptr, ptr %i.p, align 8
  %i.ah = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.ag)
  %i.ai = extractvalue { double, double } %i.ah, 0 ; 2 uses
  %i.aj = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.ai)
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fptosi double %i.ak to i32
  %i.am = sitofp i32 %i.al to double
  %i.an = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.aa, double noundef %i.am)
  %i.ao = fsub double %i.af, %i.an                ; 2 uses
  %i.ap = load ptr, ptr %i.q, align 8
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %i.r ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fadd double %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load double, ptr %i.at, align 8
  %i.av = fadd double %i.ao, %i.au
  tail call void @_ZN7QCPAxis8setRangeEdd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.aa, double noundef %i.as, double noundef %i.av)
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.aw = load double, ptr %2, align 8
  %i.ax = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.aa, double noundef %i.aw)
  %i.ay = load ptr, ptr %i.p, align 8
  %i.az = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.ay)
  %i.ba = extractvalue { double, double } %i.az, 0 ; 2 uses
  %i.bb = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.ba)
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fptosi double %i.bc to i32
  %i.be = sitofp i32 %i.bd to double
  %i.bf = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.aa, double noundef %i.be)
  %i.bg = fdiv double %i.ax, %i.bf
  %i.bh = load ptr, ptr %i.q, align 8
  %i.bi = getelementptr [16 x i8], ptr %i.bh, i64 %i.r
  %3 = load <2 x double>, ptr %i.bi, align 8
  %4 = insertelement <2 x double> poison, double %i.bg, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %5, %3                   ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %8 = extractelement <2 x double> %6, i64 1
  tail call void @_ZN7QCPAxis8setRangeEdd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.aa, double noundef %7, double noundef %8)
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread

_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread:       ; preds = %bb.d, %bb.e, %_ZNK8QPointerI7QCPAxisE4dataEv.exit, %bb.g, %bb.i, %bb.h
  %i.bj = add i32 %.094, 1                        ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = load i64, ptr %i.l, align 8
  %i.bm = icmp sgt i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.d, label %.loopexit.loopexit, !llvm.loop !1005

.loopexit.loopexit:                               ; preds = %bb.f, %_ZNK8QPointerI7QCPAxisE4dataEv.exit.thread
  %.pre = load i32, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader93, %bb.c
  %i.bn = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.i, %.preheader93 ], [ %i.i, %bb.c ] ; 2 uses
  %i.bo = and i32 %i.bn, 2
  %.not92 = icmp eq i32 %i.bo, 0
  br i1 %.not92, label %thread-pre-split, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.bp = getelementptr i8, ptr %0, i64 400
  %i.bq = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph97, label %thread-pre-split.thread

.lr.ph97:                                         ; preds = %.preheader
  %i.bt = getelementptr i8, ptr %0, i64 280
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bv = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 392       ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph97, %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread
  %i.bx = phi i64 [ 0, %.lr.ph97 ], [ %i.dq, %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread ] ; 4 uses
  %.05396 = phi i32 [ 0, %.lr.ph97 ], [ %i.dp, %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread ]
  %i.by = load ptr, ptr %i.bt, align 8
  %i.bz = getelementptr [16 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr i8, ptr %i.ca, i64 4
  %i.cd = load atomic i32, ptr %i.cc monotonic, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68

_ZNK8QPointerI7QCPAxisE4dataEv.exit68:            ; preds = %bb.k
  %i.cf = getelementptr i8, ptr %i.bz, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 8 uses
  %.not61 = icmp eq ptr %i.cg, null
  br i1 %.not61, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit68
  %i.ch = load i64, ptr %i.bp, align 8
  %.not62 = icmp sgt i64 %i.ch, %i.bx
  br i1 %.not62, label %bb.m, label %thread-pre-split.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr i8, ptr %i.cg, i64 324
  %i.cj = load i32, ptr %i.ci, align 4
  switch i32 %i.cj, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ck = load double, ptr %i.bu, align 8
  %i.cl = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.cg, double noundef %i.ck)
  %i.cm = load ptr, ptr %i.bv, align 8
  %i.cn = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.cm)
  %i.co = extractvalue { double, double } %i.cn, 1 ; 2 uses
  %i.cp = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.co)
  %i.cq = fadd double %i.co, %i.cp
  %i.cr = fptosi double %i.cq to i32
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.cg, double noundef %i.cs)
  %i.cu = fsub double %i.cl, %i.ct                ; 2 uses
  %i.cv = load ptr, ptr %i.bw, align 8
  %i.cw = getelementptr [16 x i8], ptr %i.cv, i64 %i.bx ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8
  %i.cy = fadd double %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load double, ptr %i.cz, align 8
  %i.db = fadd double %i.cu, %i.da
  tail call void @_ZN7QCPAxis8setRangeEdd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.cg, double noundef %i.cy, double noundef %i.db)
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread

bb.o:                                             ; preds = %bb.m
  %i.dc = load double, ptr %i.bu, align 8
  %i.dd = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.cg, double noundef %i.dc)
  %i.de = load ptr, ptr %i.bv, align 8
  %i.df = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.de)
  %i.dg = extractvalue { double, double } %i.df, 1 ; 2 uses
  %i.dh = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.dg)
  %i.di = fadd double %i.dg, %i.dh
  %i.dj = fptosi double %i.di to i32
  %i.dk = sitofp i32 %i.dj to double
  %i.dl = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.cg, double noundef %i.dk)
  %i.dm = fdiv double %i.dd, %i.dl
  %i.dn = load ptr, ptr %i.bw, align 8
  %i.do = getelementptr [16 x i8], ptr %i.dn, i64 %i.bx
  %9 = load <2 x double>, ptr %i.do, align 8
  %10 = insertelement <2 x double> poison, double %i.dm, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x double> %11, %9                 ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  tail call void @_ZN7QCPAxis8setRangeEdd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.cg, double noundef %13, double noundef %14)
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread

_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread:     ; preds = %bb.j, %bb.k, %_ZNK8QPointerI7QCPAxisE4dataEv.exit68, %bb.m, %bb.o, %bb.n
  %i.dp = add i32 %.05396, 1                      ; 2 uses
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = load i64, ptr %i.bq, align 8
  %i.ds = icmp sgt i64 %i.dr, %i.dq
  br i1 %i.ds, label %bb.j, label %thread-pre-split.loopexit, !llvm.loop !1006

thread-pre-split.loopexit:                        ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit68.thread, %bb.l
  %.pr.pre = load i32, ptr %i.h, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %.loopexit
  %i.dt = phi i32 [ %i.bn, %.loopexit ], [ %.pr.pre, %thread-pre-split.loopexit ]
  %.not63 = icmp eq i32 %i.dt, 0
  br i1 %.not63, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %.preheader, %thread-pre-split
  %i.du = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 232
  %i.dw = load i8, ptr %i.dv, align 8, !range !175, !noundef !176
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.p, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

bb.p:                                             ; preds = %thread-pre-split.thread
  %i.dy = getelementptr i8, ptr %i.du, i64 220
  store i32 65535, ptr %i.dy, align 4
  %i.dz = getelementptr i8, ptr %i.du, i64 216    ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.dz, align 8 ; 2 uses
  %i.ea = and i32 %.sroa.01.0.copyload.i, 65535
  %.not.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eb = or i32 %.sroa.01.0.copyload.i, -65536
  store i32 %i.eb, ptr %i.dz, align 8
  br label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.q, %bb.p, %thread-pre-split.thread
  %i.ec = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 481    ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !range !175, !noundef !176
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit
  store i8 1, ptr %i.ed, align 1
  tail call void @_ZN6QTimer10singleShotEiPK7QObjectPKc(i32 noundef 0, ptr noundef align 8 dereferenceable_or_null(513) %i.ec, ptr noundef nonnull @.str.125)
  br label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit: ; preds = %bb.a, %bb.r, %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, %thread-pre-split, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11QCPAxisRect17mouseReleaseEventEP11QMouseEventRK7QPointF(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(432) initializes((416, 417)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #33 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 416
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 232
  %i.e = load i8, ptr %i.d, align 8, !range !175, !noundef !176
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 408
  %i.h = getelementptr i8, ptr %i.c, i64 216
  %i.i = load i32, ptr %i.g, align 8              ; 3 uses
  store i32 %i.i, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.c, i64 220      ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, %i.i
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = xor i32 %i.i, -1
  %i.n = or i32 %i.k, %i.m
  store i32 %i.n, ptr %i.j, align 4
  br label %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 412
  %i.q = getelementptr i8, ptr %i.o, i64 220
  %i.r = load i32, ptr %i.p, align 4              ; 3 uses
  store i32 %i.r, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.o, i64 216      ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.s, align 8 ; 2 uses
  %i.t = and i32 %.sroa.01.0.copyload.i, %i.r
  %.not.i1 = icmp eq i32 %i.t, 0
  br i1 %.not.i1, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit
  %i.u = xor i32 %i.r, -1
  %i.v = or i32 %.sroa.01.0.copyload.i, %i.u
  store i32 %i.v, ptr %i.s, align 8
  br label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.d, %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPAxisRect10wheelEventEP11QWheelEvent(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(432) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.QtPrivate::QForeachContainer.204", align 8 ; 12 uses
  %3 = alloca %"class.QtPrivate::QForeachContainer.204", align 8 ; 12 uses
  %i.a = getelementptr i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = sitofp i32 %.sroa.3.0.extract.trunc to double
  %i.c = getelementptr i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.d) ; 2 uses
  %i.f = extractvalue { double, double } %i.e, 0
  %i.g = extractvalue { double, double } %i.e, 1
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 224
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 8
  %i.k = and i32 %.sroa.0.0.copyload.i12, 2
  %.not71 = icmp eq i32 %i.k, 0
  br i1 %.not71, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 244        ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fdiv double %i.b, 1.200000e+02           ; 2 uses
  %i.o = and i32 %i.m, 1
  %.not72 = icmp eq i32 %i.o, 0
  br i1 %.not72, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 344
  %i.q = load double, ptr %i.p, align 8
  %i.r = tail call noundef double @pow(double noundef %i.q, double noundef %i.n) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.s = getelementptr i8, ptr %0, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1013 ; 3 uses
  store ptr %i.t, ptr %2, align 8, !alias.scope !1013
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 304
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1013 ; 4 uses
  store ptr %i.w, ptr %i.u, align 8, !alias.scope !1013
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 312
  %i.z = load i64, ptr %i.y, align 8, !noalias !1013 ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !alias.scope !1013
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListI8QPointerI7QCPAxisEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = atomicrmw add ptr %i.t, i32 1 acq_rel, align 4, !noalias !1013 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListI8QPointerI7QCPAxisEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListI8QPointerI7QCPAxisEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit: ; preds = %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.ab, align 8, !alias.scope !1013
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.idx = shl i64 %i.z, 4                         ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %.idx
  store ptr %i.ad, ptr %i.ac, align 8, !alias.scope !1013
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.ae, align 8, !alias.scope !1013
  %.not7378 = icmp eq i64 %.idx, 0
  br i1 %.not7378, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8QPointerI7QCPAxisED2Ev.exit17, %_ZN9QtPrivate21qMakeForeachContainerIR5QListI8QPointerI7QCPAxisEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS9_.exit
  %i.af = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI8QPointerI7QCPAxisEEED2Ev.exit, label %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN9QtPrivate17QForeachContainerI5QListI8QPointerI7QCPAxisEEED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i.i
  %i.ah = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ai = load i64, ptr %i.x, align 8
  %.idx.i.i.i.i = shl i64 %i.ai, 4                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN19QCPPolarAxisAngular14mouseMoveEventEP11QMouseEventRK7QPointF:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr i8, ptr %0, i64 592       ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.an = getelementptr i8, ptr %0, i64 584
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr i8, ptr %0, i64 800       ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.w, %bb.e
  %.1.lcssa = phi i1 [ %i.n, %bb.e ], [ %.2, %bb.w ]
  br i1 %.1.lcssa, label %bb.x, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

bb.f:                                             ; preds = %.lr.ph, %bb.w
  %i.as = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.w ] ; 3 uses
  %.149 = phi i1 [ %i.n, %.lr.ph ], [ %.2, %bb.w ]
  %.02848 = phi i32 [ 0, %.lr.ph ], [ %i.fl, %bb.w ]
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8            ; 26 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 57
  %i.ax = load i8, ptr %i.aw, align 1, !range !175, !noundef !176
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.az = getelementptr i8, ptr %i.av, i64 376    ; 2 uses
  %i.ba = load <2 x double>, ptr %2, align 8
  %i.bb = load <2 x double>, ptr %i.az, align 8
  %i.bc = fsub <2 x double> %i.ba, %i.bb
  store <2 x double> %i.bc, ptr %6, align 16
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.bd = load double, ptr %5, align 8            ; 3 uses
  %i.be = load double, ptr %i.ao, align 8         ; 3 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.bf)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.bg) ; 4 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 372    ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = getelementptr i8, ptr %i.av, i64 368    ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !175, !noundef !176
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %i.av, i64 392
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fdiv double %sqrt.i.i, %i.bo
  %i.bq = getelementptr i8, ptr %i.av, i64 352
  %i.br = getelementptr i8, ptr %i.av, i64 360
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = load double, ptr %i.bq, align 8         ; 2 uses
  %i.bu = fsub double %i.bs, %i.bt
  %i.bv = call double @llvm.fmuladd.f64(double %i.bp, double %i.bu, double %i.bt)
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = fneg double %sqrt.i.i
  %i.bx = getelementptr i8, ptr %i.av, i64 392
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = fdiv double %i.bw, %i.by
  %i.ca = getelementptr i8, ptr %i.av, i64 352
  %i.cb = getelementptr i8, ptr %i.av, i64 360
  %i.cc = load double, ptr %i.cb, align 8         ; 2 uses
  %i.cd = load double, ptr %i.ca, align 8
  %i.ce = fsub double %i.cc, %i.cd
  %i.cf = call double @llvm.fmuladd.f64(double %i.bz, double %i.ce, double %i.cc)
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit

bb.k:                                             ; preds = %bb.g
  %i.cg = getelementptr i8, ptr %i.av, i64 352
  %i.ch = getelementptr i8, ptr %i.av, i64 360
  %i.ci = load double, ptr %i.ch, align 8         ; 2 uses
  %i.cj = load double, ptr %i.cg, align 8         ; 2 uses
  %i.ck = fdiv double %i.ci, %i.cj                ; 2 uses
  br i1 %i.bm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr i8, ptr %i.av, i64 392
  %i.cm = load double, ptr %i.cl, align 8
  %i.cn = fdiv double %sqrt.i.i, %i.cm
  %i.co = call noundef double @pow(double noundef %i.ck, double noundef %i.cn) #49
  %i.cp = fmul double %i.cj, %i.co
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.cq = fneg double %sqrt.i.i
  %i.cr = getelementptr i8, ptr %i.av, i64 392
  %i.cs = load double, ptr %i.cr, align 8
  %i.ct = fdiv double %i.cq, %i.cs
  %i.cu = call noundef double @pow(double noundef %i.ck, double noundef %i.ct) #49
  %i.cv = fmul double %i.ci, %i.cu
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit

_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit: ; preds = %bb.i, %bb.j, %bb.l, %bb.m
  %.0.i.i = phi double [ %i.cf, %bb.j ], [ %i.bv, %bb.i ], [ %i.cv, %bb.m ], [ %i.cp, %bb.l ] ; 2 uses
  %i.cw = call noundef double @atan2(double noundef %i.be, double noundef %i.bd) #49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.cx = load ptr, ptr %i.ap, align 8
  %i.cy = call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.cx) ; 2 uses
  %i.cz = extractvalue { double, double } %i.cy, 0
  %i.da = extractvalue { double, double } %i.cy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1 ; 2 uses
  %i.dd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.dc)
  %i.de = fadd <2 x double> %i.dc, %i.dd
  %i.df = fptosi <2 x double> %i.de to <2 x i32>
  %i.dg = sitofp <2 x i32> %i.df to <2 x double>
  %i.dh = load <2 x double>, ptr %i.az, align 8
  %i.di = fsub <2 x double> %i.dg, %i.dh
  store <2 x double> %i.di, ptr %4, align 16
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.dj = load double, ptr %3, align 8            ; 3 uses
  %i.dk = load double, ptr %i.aq, align 8         ; 3 uses
  %i.dl = fmul double %i.dk, %i.dk
  %i.dm = call double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.dl)
  %sqrt.i.i35 = call noundef double @llvm.sqrt.f64(double %i.dm) ; 4 uses
  %i.dn = load i32, ptr %i.bh, align 4
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = load i8, ptr %i.bk, align 8, !range !175, !noundef !176
  %i.dq = trunc nuw i8 %i.dp to i1                ; 2 uses
  br i1 %i.do, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit
  br i1 %i.dq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = getelementptr i8, ptr %i.av, i64 392
  %i.ds = load double, ptr %i.dr, align 8
  %i.dt = fdiv double %sqrt.i.i35, %i.ds
  %i.du = getelementptr i8, ptr %i.av, i64 352
  %i.dv = getelementptr i8, ptr %i.av, i64 360
  %i.dw = load double, ptr %i.dv, align 8
  %i.dx = load double, ptr %i.du, align 8         ; 2 uses
  %i.dy = fsub double %i.dw, %i.dx
  %i.dz = call double @llvm.fmuladd.f64(double %i.dt, double %i.dy, double %i.dx)
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37

bb.p:                                             ; preds = %bb.n
  %i.ea = fneg double %sqrt.i.i35
  %i.eb = getelementptr i8, ptr %i.av, i64 392
  %i.ec = load double, ptr %i.eb, align 8
  %i.ed = fdiv double %i.ea, %i.ec
  %i.ee = getelementptr i8, ptr %i.av, i64 352
  %i.ef = getelementptr i8, ptr %i.av, i64 360
  %i.eg = load double, ptr %i.ef, align 8         ; 2 uses
  %i.eh = load double, ptr %i.ee, align 8
  %i.ei = fsub double %i.eg, %i.eh
  %i.ej = call double @llvm.fmuladd.f64(double %i.ed, double %i.ei, double %i.eg)
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37

bb.q:                                             ; preds = %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit
  %i.ek = getelementptr i8, ptr %i.av, i64 352
  %i.el = getelementptr i8, ptr %i.av, i64 360
  %i.em = load double, ptr %i.el, align 8         ; 2 uses
  %i.en = load double, ptr %i.ek, align 8         ; 2 uses
  %i.eo = fdiv double %i.em, %i.en                ; 2 uses
  br i1 %i.dq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr i8, ptr %i.av, i64 392
  %i.eq = load double, ptr %i.ep, align 8
  %i.er = fdiv double %sqrt.i.i35, %i.eq
  %i.es = call noundef double @pow(double noundef %i.eo, double noundef %i.er) #49
  %i.et = fmul double %i.en, %i.es
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37

bb.s:                                             ; preds = %bb.q
  %i.eu = fneg double %sqrt.i.i35
  %i.ev = getelementptr i8, ptr %i.av, i64 392
  %i.ew = load double, ptr %i.ev, align 8
  %i.ex = fdiv double %i.eu, %i.ew
  %i.ey = call noundef double @pow(double noundef %i.eo, double noundef %i.ex) #49
  %i.ez = fmul double %i.em, %i.ey
  br label %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37

_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37: ; preds = %bb.o, %bb.p, %bb.r, %bb.s
  %.0.i.i36 = phi double [ %i.ej, %bb.p ], [ %i.dz, %bb.o ], [ %i.ez, %bb.s ], [ %i.et, %bb.r ] ; 3 uses
  %i.fa = call noundef double @atan2(double noundef %i.dk, double noundef %i.dj) #49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.fb = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37
  %i.fd = fsub double %.0.i.i, %.0.i.i36
  %i.fe = load ptr, ptr %i.ar, align 8
  %i.ff = getelementptr [16 x i8], ptr %i.fe, i64 %i.as
  %7 = load <2 x double>, ptr %i.ff, align 8
  %8 = insertelement <2 x double> poison, double %i.fd, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fadd <2 x double> %9, %7                  ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %12 = extractelement <2 x double> %10, i64 1
  call void @_ZN18QCPPolarAxisRadial8setRangeEdd(ptr noundef align 8 dereferenceable_or_null(776) %i.av, double noundef %11, double noundef %12)
  br label %bb.w

bb.u:                                             ; preds = %_ZNK18QCPPolarAxisRadial12pixelToCoordE7QPointFRdS1_.exit37
  %i.fg = icmp eq i32 %i.fb, 1
  %i.fh = fcmp une double %.0.i.i36, 0.000000e+00
  %or.cond = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fi = fdiv double %.0.i.i, %.0.i.i36
  %i.fj = load ptr, ptr %i.ar, align 8
  %i.fk = getelementptr [16 x i8], ptr %i.fj, i64 %i.as
  %13 = load <2 x double>, ptr %i.fk, align 8
  %14 = insertelement <2 x double> poison, double %i.fi, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x double> %15, %13                ; 2 uses
  %17 = extractelement <2 x double> %16, i64 0
  %18 = extractelement <2 x double> %16, i64 1
  call void @_ZN18QCPPolarAxisRadial8setRangeEdd(ptr noundef align 8 dereferenceable_or_null(776) %i.av, double noundef %17, double noundef %18)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %bb.f
  %.2 = phi i1 [ %.149, %bb.f ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.t ] ; 2 uses
  %i.fl = add i32 %.02848, 1                      ; 2 uses
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = load i64, ptr %i.ak, align 8
  %i.fo = icmp sgt i64 %i.fn, %i.fm
  br i1 %i.fo, label %bb.f, label %._crit_edge, !llvm.loop !1573

bb.x:                                             ; preds = %._crit_edge
  %i.fp = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 232
  %i.fr = load i8, ptr %i.fq, align 8, !range !175, !noundef !176
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.y, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr i8, ptr %i.fp, i64 220
  store i32 65535, ptr %i.ft, align 4
  %i.fu = getelementptr i8, ptr %i.fp, i64 216    ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.fu, align 8 ; 2 uses
  %i.fv = and i32 %.sroa.01.0.copyload.i, 65535
  %.not.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = or i32 %.sroa.01.0.copyload.i, -65536
  store i32 %i.fw, ptr %i.fu, align 8
  br label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.z, %bb.y, %bb.x
  %i.fx = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 481    ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !range !175, !noundef !176
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit
  store i8 1, ptr %i.fy, align 1
  call void @_ZN6QTimer10singleShotEiPK7QObjectPKc(i32 noundef 0, ptr noundef align 8 dereferenceable_or_null(513) %i.fx, ptr noundef nonnull @.str.125)
  br label %_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit

_ZN11QCustomPlot6replotENS_15RefreshPriorityE.exit: ; preds = %bb.a, %bb.aa, %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN19QCPPolarAxisAngular17mouseReleaseEventEP11QMouseEventRK7QPointF(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(1080) initializes((768, 769)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #33 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 768
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 232
  %i.e = load i8, ptr %i.d, align 8, !range !175, !noundef !176
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 816
  %i.h = getelementptr i8, ptr %i.c, i64 216
  %i.i = load i32, ptr %i.g, align 8              ; 3 uses
  store i32 %i.i, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.c, i64 220      ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, %i.i
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = xor i32 %i.i, -1
  %i.n = or i32 %i.k, %i.m
  store i32 %i.n, ptr %i.j, align 4
  br label %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 820
  %i.q = getelementptr i8, ptr %i.o, i64 220
  %i.r = load i32, ptr %i.p, align 4              ; 3 uses
  store i32 %i.r, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.o, i64 216      ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.s, align 8 ; 2 uses
  %i.t = and i32 %.sroa.01.0.copyload.i, %i.r
  %.not.i1 = icmp eq i32 %i.t, 0
  br i1 %.not.i1, label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit
  %i.u = xor i32 %i.r, -1
  %i.v = or i32 %.sroa.01.0.copyload.i, %i.u
  store i32 %i.v, ptr %i.s, align 8
  br label %_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit

_ZN11QCustomPlot25setNotAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit: ; preds = %bb.d, %_ZN11QCustomPlot22setAntialiasedElementsERK6QFlagsIN3QCP18AntialiasedElementEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19QCPPolarAxisAngular10wheelEventEP11QWheelEvent(ptr noundef align 8 dereferenceable_or_null(1080) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QCPVector2D, align 8         ; 5 uses
  %3 = alloca %class.QPointF, align 16            ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 224
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 8
  %i.f = and i32 %.sroa.0.0.copyload.i, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.g, align 8
  %.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i18, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.h = sitofp i32 %.sroa.3.0.extract.trunc to double
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8) %i.j) ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0  ; 2 uses
  %i.m = extractvalue { double, double } %i.k, 1  ; 2 uses
  %i.n = fdiv double %i.h, 1.200000e+02           ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 241
  %i.p = load i8, ptr %i.o, align 1, !range !175, !noundef !176
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store double 0.000000e+00, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @_ZNK19QCPPolarAxisAngular12pixelToCoordE7QPointFRdS1_(ptr noundef align 8 dereferenceable_or_null(1080) %0, double %i.l, double %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.r = getelementptr i8, ptr %0, i64 248
  %i.s = load double, ptr %i.r, align 8
  %i.t = tail call noundef double @pow(double noundef %i.s, double noundef %i.n) #49
  %i.u = load double, ptr %i.a, align 8
  tail call void @_ZN19QCPPolarAxisAngular10scaleRangeEdd(ptr noundef align 8 dereferenceable_or_null(1080) %0, double noundef %i.t, double noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr i8, ptr %0, i64 592        ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.y = getelementptr i8, ptr %0, i64 584
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.m, i64 1
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.ph = phi i64 [ %.pre, %.thread ], [ %i.w, %.lr.ph ]
  %.ph27 = phi i64 [ %i.cn, %.thread ], [ 0, %.lr.ph ]
  %.021.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph ]
  %.01620.ph = phi i32 [ %i.cm, %.thread ], [ 0, %.lr.ph ]
  %i.ac = load ptr, ptr %i.y, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.m
  br i1 %.021.ph, label %._crit_edge.thread, label %.critedge

bb.e:                                             ; preds = %.outer, %bb.m
  %i.ad = phi i64 [ %i.cg, %bb.m ], [ %.ph27, %.outer ]
  %.01620 = phi i32 [ %i.cf, %bb.m ], [ %.01620.ph, %.outer ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 16 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 58
  %i.ah = load i8, ptr %i.ag, align 2, !range !175, !noundef !176
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.aj = getelementptr i8, ptr %i.af, i64 376
  %i.ak = load <2 x double>, ptr %i.aj, align 8
  %i.al = fsub <2 x double> %i.ab, %i.ak
  store <2 x double> %i.al, ptr %3, align 16
  call void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.am = load double, ptr %2, align 8            ; 3 uses
  %i.an = load double, ptr %i.z, align 8          ; 3 uses
  %i.ao = fmul double %i.an, %i.an
  %i.ap = call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.ao)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ap) ; 4 uses
  %i.aq = getelementptr i8, ptr %i.af, i64 372
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = getelementptr i8, ptr %i.af, i64 368
  %i.au = load i8, ptr %i.at, align 8, !range !175, !noundef !176
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.j

end_hunk_1
